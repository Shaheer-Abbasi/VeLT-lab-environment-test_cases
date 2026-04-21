; ModuleID = 'src/expand.bc'
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
@.str.2 = private unnamed_addr constant [66 x i8] c"Convert tabs in each FILE to spaces, writing to standard output.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [7 x i8] c"expand\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [63 x i8] c"  -i, --initial\0A         do not convert tabs after non blanks\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [61 x i8] c"  -t, --tabs=N\0A         have tabs N characters apart, not 8\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !42
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !52
@shortopts = internal constant [34 x i8] c"it:0::1::2::3::4::5::6::7::8::9::\00", align 16, !dbg !57
@longopts = internal constant [5 x %struct.option] [%struct.option { ptr @.str.50, i32 1, ptr null, i32 116 }, %struct.option { ptr @.str.51, i32 0, ptr null, i32 105 }, %struct.option { ptr @.str.52, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !327
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
@expand.line_in = internal global [262144 x i8] zeroinitializer, align 16, !dbg !339
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
@stdin_argv = internal global [2 x ptr] [ptr @.str.6.34, ptr null], align 16, !dbg !562
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !672
@.str.64 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !664
@.str.1.65 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !666
@.str.2.66 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !668
@.str.3.67 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !670
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !674
@stderr = external local_unnamed_addr global ptr, align 8
@.str.68 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !680
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !711
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !682
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !701
@.str.1.74 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !703
@.str.2.76 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !705
@.str.3.75 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !707
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !709
@.str.4.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !713
@.str.5.70 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !715
@.str.6.71 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !717
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !720
@.str.95 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !726
@.str.1.96 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !728
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !730
@.str.99 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !757
@.str.1.100 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !760
@.str.2.101 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !762
@.str.3.102 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !767
@.str.4.103 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !769
@.str.5.104 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !771
@.str.6.105 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !773
@.str.7.106 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !775
@.str.8.107 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !777
@.str.9.108 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !779
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.99, ptr @.str.1.100, ptr @.str.2.101, ptr @.str.3.102, ptr @.str.4.103, ptr @.str.5.104, ptr @.str.6.105, ptr @.str.7.106, ptr @.str.8.107, ptr @.str.9.108, ptr null], align 16, !dbg !781
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !794
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !808
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !846
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !853
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !810
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !855
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !798
@.str.10.111 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !815
@.str.11.109 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !817
@.str.12.112 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !819
@.str.13.110 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !821
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !823
@.str.119 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !859
@.str.1.120 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !862
@.str.2.121 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !864
@.str.3.122 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !866
@.str.4.123 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !868
@.str.5.124 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !870
@.str.6.125 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !875
@.str.7.126 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !878
@.str.8.127 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !880
@.str.9.128 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !882
@.str.10.129 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !884
@.str.11.130 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !889
@.str.12.131 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !894
@.str.13.132 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !896
@.str.14.133 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !901
@.str.15.134 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !906
@.str.16.135 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !911
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.140 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !916
@.str.18.141 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !918
@.str.19.142 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !920
@.str.20.143 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !922
@.str.21.144 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !924
@.str.22.145 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !926
@.str.23.146 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !928
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !933
@exit_failure = dso_local global i32 1, align 4, !dbg !939
@.str.161 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !945
@.str.1.159 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !948
@.str.2.160 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !950
@.str.168 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !952
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !955
@.str.1.173 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !970

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1052 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1056, metadata !DIExpression()), !dbg !1057
  %2 = icmp eq i32 %0, 0, !dbg !1058
  br i1 %2, label %8, label %3, !dbg !1060

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1061, !tbaa !1063
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !1061
  %6 = load ptr, ptr @program_name, align 8, !dbg !1061, !tbaa !1063
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !1061
  br label %39, !dbg !1061

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !1067
  %10 = load ptr, ptr @program_name, align 8, !dbg !1067, !tbaa !1063
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !1067
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !1069
  %13 = load ptr, ptr @stdout, align 8, !dbg !1069, !tbaa !1063
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1069
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #38, !dbg !1070
  %16 = load ptr, ptr @stdout, align 8, !dbg !1070, !tbaa !1063
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1070
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #38, !dbg !1073
  %19 = load ptr, ptr @stdout, align 8, !dbg !1073, !tbaa !1063
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !1073
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !1076
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1076
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !1077
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1077
  tail call void @emit_tab_list_info(ptr noundef nonnull @.str.3) #38, !dbg !1078
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !1079
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1079
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !1080
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1080
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1081, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata !1100, metadata !1094, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata ptr poison, metadata !1093, metadata !DIExpression()), !dbg !1098
  tail call void @emit_bug_reporting_address() #38, !dbg !1101
  %25 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !1102
  call void @llvm.dbg.value(metadata ptr %25, metadata !1096, metadata !DIExpression()), !dbg !1098
  %26 = icmp eq ptr %25, null, !dbg !1103
  br i1 %26, label %34, label %27, !dbg !1105

27:                                               ; preds = %8
  %28 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(4) @.str.45, i64 noundef 3) #39, !dbg !1106
  %29 = icmp eq i32 %28, 0, !dbg !1106
  br i1 %29, label %34, label %30, !dbg !1107

30:                                               ; preds = %27
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #38, !dbg !1108
  %32 = load ptr, ptr @stdout, align 8, !dbg !1108, !tbaa !1063
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !1108
  br label %34, !dbg !1110

34:                                               ; preds = %8, %27, %30
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1093, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1097, metadata !DIExpression()), !dbg !1098
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #38, !dbg !1111
  %36 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %35, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3) #38, !dbg !1111
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #38, !dbg !1112
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.49) #38, !dbg !1112
  br label %39

39:                                               ; preds = %34, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !1113
  unreachable, !dbg !1113
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1114 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1118 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1124 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1127 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !126 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !130, metadata !DIExpression()), !dbg !1131
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !131, metadata !DIExpression()), !dbg !1131
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1132, !tbaa !1133
  %3 = icmp eq i32 %2, -1, !dbg !1135
  br i1 %3, label %4, label %16, !dbg !1136

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #38, !dbg !1137
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !132, metadata !DIExpression()), !dbg !1138
  %6 = icmp eq ptr %5, null, !dbg !1139
  br i1 %6, label %14, label %7, !dbg !1140

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1141, !tbaa !1142
  %9 = icmp eq i8 %8, 0, !dbg !1141
  br i1 %9, label %14, label %10, !dbg !1143

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1144, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !1150, metadata !DIExpression()), !dbg !1151
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.16) #39, !dbg !1153
  %12 = icmp eq i32 %11, 0, !dbg !1154
  %13 = zext i1 %12 to i32, !dbg !1143
  br label %14, !dbg !1143

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1155, !tbaa !1133
  br label %16, !dbg !1156

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1157
  %18 = icmp eq i32 %17, 0, !dbg !1157
  br i1 %18, label %22, label %19, !dbg !1159

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1160, !tbaa !1063
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1160
  br label %124, !dbg !1162

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !135, metadata !DIExpression()), !dbg !1131
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.17) #39, !dbg !1163
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1164
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !137, metadata !DIExpression()), !dbg !1131
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !1165
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !138, metadata !DIExpression()), !dbg !1131
  %26 = icmp eq ptr %25, null, !dbg !1166
  br i1 %26, label %54, label %27, !dbg !1167

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1168
  br i1 %28, label %54, label %29, !dbg !1169

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !139, metadata !DIExpression()), !dbg !1170
  tail call void @llvm.dbg.value(metadata i64 0, metadata !143, metadata !DIExpression()), !dbg !1170
  %30 = icmp ult ptr %24, %25, !dbg !1171
  br i1 %30, label %31, label %54, !dbg !1172

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !1131
  %33 = load ptr, ptr %32, align 8, !tbaa !1063
  br label %34, !dbg !1172

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !139, metadata !DIExpression()), !dbg !1170
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !143, metadata !DIExpression()), !dbg !1170
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1173
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !139, metadata !DIExpression()), !dbg !1170
  %38 = load i8, ptr %35, align 1, !dbg !1173, !tbaa !1142
  %39 = sext i8 %38 to i64, !dbg !1173
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1173
  %41 = load i16, ptr %40, align 2, !dbg !1173, !tbaa !1174
  %42 = freeze i16 %41, !dbg !1176
  %43 = lshr i16 %42, 13, !dbg !1176
  %44 = and i16 %43, 1, !dbg !1176
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1177
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !143, metadata !DIExpression()), !dbg !1170
  %47 = icmp ult ptr %37, %25, !dbg !1171
  %48 = icmp ult i64 %46, 2, !dbg !1178
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1178
  br i1 %49, label %34, label %50, !dbg !1172, !llvm.loop !1179

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1181
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1183
  %53 = zext i1 %51 to i8, !dbg !1183
  br label %54, !dbg !1183

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1131
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !1131
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !135, metadata !DIExpression()), !dbg !1131
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !138, metadata !DIExpression()), !dbg !1131
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.18) #39, !dbg !1184
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !144, metadata !DIExpression()), !dbg !1131
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1185
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !145, metadata !DIExpression()), !dbg !1131
  br label %59, !dbg !1186

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !1131
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !1131
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !135, metadata !DIExpression()), !dbg !1131
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !145, metadata !DIExpression()), !dbg !1131
  %62 = load i8, ptr %60, align 1, !dbg !1187, !tbaa !1142
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !1188

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1189
  %65 = load i8, ptr %64, align 1, !dbg !1192, !tbaa !1142
  %66 = icmp eq i8 %65, 45, !dbg !1193
  %67 = select i1 %66, i8 0, i8 %61, !dbg !1194
  br label %68, !dbg !1194

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !1131
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !135, metadata !DIExpression()), !dbg !1131
  %70 = tail call ptr @__ctype_b_loc() #41, !dbg !1195
  %71 = load ptr, ptr %70, align 8, !dbg !1195, !tbaa !1063
  %72 = sext i8 %62 to i64, !dbg !1195
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1195
  %74 = load i16, ptr %73, align 2, !dbg !1195, !tbaa !1174
  %75 = and i16 %74, 8192, !dbg !1195
  %76 = icmp eq i16 %75, 0, !dbg !1195
  br i1 %76, label %92, label %77, !dbg !1197

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1198
  br i1 %78, label %94, label %79, !dbg !1201

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1202
  %81 = load i8, ptr %80, align 1, !dbg !1202, !tbaa !1142
  %82 = sext i8 %81 to i64, !dbg !1202
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1202
  %84 = load i16, ptr %83, align 2, !dbg !1202, !tbaa !1174
  %85 = and i16 %84, 8192, !dbg !1202
  %86 = icmp eq i16 %85, 0, !dbg !1202
  br i1 %86, label %87, label %94, !dbg !1203

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1204
  %89 = icmp ne i8 %88, 0, !dbg !1204
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1206
  br i1 %91, label %92, label %94, !dbg !1206

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1207
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !145, metadata !DIExpression()), !dbg !1131
  br label %59, !dbg !1186, !llvm.loop !1208

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1210
  %96 = load ptr, ptr @stdout, align 8, !dbg !1210, !tbaa !1063
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1210
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1144, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata !1100, metadata !1150, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1144, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata !1100, metadata !1150, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1144, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata !1100, metadata !1150, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1144, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata !1100, metadata !1150, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1144, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata !1100, metadata !1150, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1144, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata !1100, metadata !1150, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1144, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata !1100, metadata !1150, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1144, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata !1100, metadata !1150, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1144, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata !1100, metadata !1150, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1144, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata !1100, metadata !1150, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !202, metadata !DIExpression()), !dbg !1131
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #39, !dbg !1231
  %99 = icmp eq i32 %98, 0, !dbg !1231
  br i1 %99, label %103, label %100, !dbg !1233

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.33, i64 noundef 9) #39, !dbg !1234
  %102 = icmp eq i32 %101, 0, !dbg !1234
  br i1 %102, label %103, label %106, !dbg !1235

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1236
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #38, !dbg !1236
  br label %109, !dbg !1238

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1239
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #38, !dbg !1239
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1241, !tbaa !1063
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %110), !dbg !1241
  %112 = load ptr, ptr @stdout, align 8, !dbg !1242, !tbaa !1063
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %112), !dbg !1242
  %114 = ptrtoint ptr %60 to i64, !dbg !1243
  %115 = sub i64 %114, %95, !dbg !1243
  %116 = load ptr, ptr @stdout, align 8, !dbg !1243, !tbaa !1063
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1243
  %118 = load ptr, ptr @stdout, align 8, !dbg !1244, !tbaa !1063
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %118), !dbg !1244
  %120 = load ptr, ptr @stdout, align 8, !dbg !1245, !tbaa !1063
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %120), !dbg !1245
  %122 = load ptr, ptr @stdout, align 8, !dbg !1246, !tbaa !1063
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1246
  br label %124, !dbg !1247

124:                                              ; preds = %109, %19
  ret void, !dbg !1247
}

; Function Attrs: nounwind
declare !dbg !1248 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1252 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1256 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1258 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1261 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1264 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1267 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1270 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1276 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1277 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1283 {
  %3 = alloca %struct.__mbstate_t, align 4, !DIAssignID !1295
  %4 = alloca i32, align 4, !DIAssignID !1296
  %5 = alloca i64, align 8, !DIAssignID !1297
  %6 = alloca i8, align 1, !DIAssignID !1298
  %7 = alloca [2 x i8], align 1, !DIAssignID !1299
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1290, metadata !DIExpression(), metadata !1299, metadata ptr %7, metadata !DIExpression()), !dbg !1300
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1287, metadata !DIExpression()), !dbg !1301
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1288, metadata !DIExpression()), !dbg !1301
  %8 = load ptr, ptr %1, align 8, !dbg !1302, !tbaa !1063
  tail call void @set_program_name(ptr noundef %8) #38, !dbg !1303
  %9 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #38, !dbg !1304
  %10 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #38, !dbg !1305
  %11 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #38, !dbg !1306
  %12 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1307
  store i8 1, ptr @convert_entire_line, align 1, !dbg !1308, !tbaa !1309
  %13 = getelementptr inbounds [2 x i8], ptr %7, i64 0, i64 1
  br label %14, !dbg !1311

14:                                               ; preds = %24, %2
  %15 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @shortopts, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1312
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1289, metadata !DIExpression()), !dbg !1301
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
    i32 -130, label %27
    i32 -131, label %28
  ], !dbg !1311

16:                                               ; preds = %14
  store i8 0, ptr @convert_entire_line, align 1, !dbg !1313, !tbaa !1309
  br label %24, !dbg !1314

17:                                               ; preds = %14
  %18 = load ptr, ptr @optarg, align 8, !dbg !1315, !tbaa !1063
  call void @parse_tab_stops(ptr noundef %18) #38, !dbg !1316
  br label %24, !dbg !1317

19:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %20 = load ptr, ptr @optarg, align 8, !dbg !1318, !tbaa !1063
  %21 = icmp eq ptr %20, null, !dbg !1318
  br i1 %21, label %25, label %22, !dbg !1319

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %20, i64 -1, !dbg !1320
  call void @parse_tab_stops(ptr noundef nonnull %23) #38, !dbg !1321
  br label %24, !dbg !1321

24:                                               ; preds = %22, %25, %17, %16
  br label %14, !dbg !1312, !llvm.loop !1322

25:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #38, !dbg !1324
  %26 = trunc i32 %15 to i8, !dbg !1325
  store i8 %26, ptr %7, align 1, !dbg !1326, !tbaa !1142, !DIAssignID !1327
  call void @llvm.dbg.assign(metadata i8 %26, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8), metadata !1327, metadata ptr %7, metadata !DIExpression()), !dbg !1300
  store i8 0, ptr %13, align 1, !dbg !1328, !tbaa !1142, !DIAssignID !1329
  call void @llvm.dbg.assign(metadata i8 0, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8), metadata !1329, metadata ptr %13, metadata !DIExpression()), !dbg !1300
  call void @parse_tab_stops(ptr noundef nonnull %7) #38, !dbg !1330
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #38, !dbg !1331
  br label %24

27:                                               ; preds = %14
  call void @usage(i32 noundef 0) #42, !dbg !1332
  unreachable, !dbg !1332

28:                                               ; preds = %14
  %29 = load ptr, ptr @stdout, align 8, !dbg !1333, !tbaa !1063
  %30 = load ptr, ptr @Version, align 8, !dbg !1333, !tbaa !1063
  %31 = call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #38, !dbg !1333
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef %30, ptr noundef %31, ptr noundef null) #38, !dbg !1333
  call void @exit(i32 noundef 0) #40, !dbg !1333
  unreachable, !dbg !1333

32:                                               ; preds = %14
  call void @usage(i32 noundef 1) #42, !dbg !1334
  unreachable, !dbg !1334

33:                                               ; preds = %14
  call void @finalize_tab_stops() #38, !dbg !1335
  %34 = load i32, ptr @optind, align 4, !dbg !1336
  %35 = icmp slt i32 %34, %0, !dbg !1337
  %36 = sext i32 %34 to i64, !dbg !1336
  %37 = getelementptr inbounds ptr, ptr %1, i64 %36, !dbg !1336
  %38 = select i1 %35, ptr %37, ptr null, !dbg !1336
  call void @set_file_list(ptr noundef %38) #38, !dbg !1338
  call void @llvm.dbg.assign(metadata i1 undef, metadata !379, metadata !DIExpression(), metadata !1297, metadata ptr %5, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.assign(metadata i1 undef, metadata !380, metadata !DIExpression(), metadata !1298, metadata ptr %6, metadata !DIExpression()), !dbg !1341
  %39 = call ptr @next_file(ptr noundef null) #38, !dbg !1342
  call void @llvm.dbg.value(metadata ptr %39, metadata !345, metadata !DIExpression()), !dbg !1343
  %40 = icmp eq ptr %39, null, !dbg !1344
  br i1 %40, label %305, label %41, !dbg !1346

41:                                               ; preds = %33, %303
  %42 = phi i64 [ %182, %303 ], [ 0, %33 ], !dbg !1343
  %43 = phi i64 [ %183, %303 ], [ 0, %33 ], !dbg !1343
  %44 = phi ptr [ %187, %303 ], [ %39, %33 ], !dbg !1347
  %45 = phi ptr [ %188, %303 ], [ %39, %33 ], !dbg !1343
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata ptr %44, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 262144, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %43, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %42, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata ptr %45, metadata !345, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata i8 1, metadata !372, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i64 0, metadata !373, metadata !DIExpression()), !dbg !1339
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !1358
  store i64 0, ptr %5, align 8, !dbg !1359, !tbaa !1360, !DIAssignID !1362
  call void @llvm.dbg.assign(metadata i64 0, metadata !379, metadata !DIExpression(), metadata !1362, metadata ptr %5, metadata !DIExpression()), !dbg !1339
  br label %46, !dbg !1363

46:                                               ; preds = %299, %41
  %47 = phi i64 [ %42, %41 ], [ %182, %299 ], !dbg !1343
  %48 = phi i64 [ %43, %41 ], [ %183, %299 ], !dbg !1343
  %49 = phi ptr [ %44, %41 ], [ %187, %299 ], !dbg !1347
  %50 = phi i64 [ 0, %41 ], [ %300, %299 ], !dbg !1339
  %51 = phi i8 [ 1, %41 ], [ %301, %299 ], !dbg !1339
  %52 = phi ptr [ %45, %41 ], [ %188, %299 ], !dbg !1343
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata ptr %49, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 262144, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %48, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %47, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata ptr %52, metadata !345, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata i8 %51, metadata !372, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i64 %50, metadata !373, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata ptr %49, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 262144, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %48, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %47, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata ptr %52, metadata !345, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata ptr undef, metadata !1364, metadata !DIExpression()), !dbg !1374
  %53 = sub nsw i64 %47, %48, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %53, metadata !1369, metadata !DIExpression()), !dbg !1374
  %54 = icmp slt i64 %53, 4, !dbg !1377
  br i1 %54, label %55, label %75, !dbg !1378

55:                                               ; preds = %46
  call void @llvm.dbg.value(metadata ptr %49, metadata !1379, metadata !DIExpression()), !dbg !1385
  %56 = load i32, ptr %49, align 8, !dbg !1387, !tbaa !1388
  %57 = and i32 %56, 16, !dbg !1390
  %58 = icmp eq i32 %57, 0, !dbg !1390
  br i1 %58, label %59, label %70, !dbg !1391

59:                                               ; preds = %55
  %60 = icmp sgt i64 %53, 0, !dbg !1392
  br i1 %60, label %61, label %64, !dbg !1394

61:                                               ; preds = %59
  %62 = getelementptr inbounds i8, ptr @expand.line_in, i64 %48, !dbg !1395
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !1397, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata ptr %62, metadata !1403, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %53, metadata !1404, metadata !DIExpression()), !dbg !1405
  %63 = call ptr @__memmove_chk(ptr noundef nonnull @expand.line_in, ptr noundef nonnull %62, i64 noundef %53, i64 noundef 262144) #38, !dbg !1407
  call void @llvm.dbg.value(metadata i64 %53, metadata !1370, metadata !DIExpression()), !dbg !1408
  br label %64

64:                                               ; preds = %61, %59
  %65 = phi i64 [ %53, %61 ], [ 0, %59 ], !dbg !1409
  call void @llvm.dbg.value(metadata i64 %65, metadata !1370, metadata !DIExpression()), !dbg !1408
  %66 = getelementptr inbounds i8, ptr @expand.line_in, i64 %65, !dbg !1410
  %67 = sub nuw nsw i64 262144, %65, !dbg !1410
  %68 = call i64 @fread_unlocked(ptr noundef nonnull %66, i64 noundef 1, i64 noundef %67, ptr noundef nonnull %49), !dbg !1410
  %69 = add i64 %68, %65, !dbg !1411
  call void @llvm.dbg.value(metadata i64 %69, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %69, metadata !1369, metadata !DIExpression()), !dbg !1374
  br label %70, !dbg !1412

70:                                               ; preds = %64, %55
  %71 = phi i64 [ %69, %64 ], [ %47, %55 ], !dbg !1343
  %72 = phi i64 [ 0, %64 ], [ %48, %55 ], !dbg !1343
  %73 = phi i64 [ %69, %64 ], [ %53, %55 ], !dbg !1374
  call void @llvm.dbg.value(metadata i64 %72, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %71, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %73, metadata !1369, metadata !DIExpression()), !dbg !1374
  %74 = icmp slt i64 %73, 1, !dbg !1413
  br i1 %74, label %123, label %75, !dbg !1415

75:                                               ; preds = %70, %46
  %76 = phi i64 [ %71, %70 ], [ %47, %46 ], !dbg !1343
  %77 = phi i64 [ %72, %70 ], [ %48, %46 ], !dbg !1343
  call void @llvm.dbg.value(metadata i64 %77, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %76, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1343
  %78 = getelementptr inbounds i8, ptr @expand.line_in, i64 %77, !dbg !1416
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1417, metadata !DIExpression(), metadata !1295, metadata ptr %3, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1425, metadata !DIExpression(), metadata !1296, metadata ptr %4, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata ptr %78, metadata !1422, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1423, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1437
  %79 = load i8, ptr %78, align 1, !dbg !1439, !tbaa !1142
  call void @llvm.dbg.value(metadata i8 %79, metadata !1424, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %79, metadata !1440, metadata !DIExpression()), !dbg !1445
  %80 = icmp sgt i8 %79, -1, !dbg !1448
  br i1 %80, label %102, label %81, !dbg !1449

81:                                               ; preds = %75
  call void @llvm.dbg.value(metadata !DIArgList(ptr @expand.line_in, i64 %76), metadata !1423, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1437
  %82 = getelementptr inbounds i8, ptr @expand.line_in, i64 %76, !dbg !1450
  call void @llvm.dbg.value(metadata ptr %82, metadata !1423, metadata !DIExpression()), !dbg !1437
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1451
  store i32 0, ptr %3, align 4, !dbg !1452, !tbaa !1453, !DIAssignID !1455
  call void @llvm.dbg.assign(metadata i32 0, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1455, metadata ptr %3, metadata !DIExpression()), !dbg !1437
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #38, !dbg !1456
  %83 = ptrtoint ptr %82 to i64, !dbg !1457
  %84 = ptrtoint ptr %78 to i64, !dbg !1457
  %85 = sub i64 %83, %84, !dbg !1457
  %86 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %78, i64 noundef %85, ptr noundef nonnull %3) #38, !dbg !1458
  call void @llvm.dbg.value(metadata i64 %86, metadata !1426, metadata !DIExpression()), !dbg !1437
  %87 = icmp slt i64 %86, 0, !dbg !1459
  br i1 %87, label %96, label %88, !dbg !1461, !prof !1462

88:                                               ; preds = %81
  %89 = load i32, ptr %4, align 4, !dbg !1463, !tbaa !1133
  call void @llvm.dbg.value(metadata i32 %89, metadata !1464, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %86, metadata !1469, metadata !DIExpression()), !dbg !1470
  %90 = icmp ne i64 %86, 0, !dbg !1472
  call void @llvm.assume(i1 %90), !dbg !1472
  %91 = icmp ult i64 %86, 5, !dbg !1473
  call void @llvm.assume(i1 %91), !dbg !1473
  %92 = icmp ult i32 %89, 1114112, !dbg !1474
  call void @llvm.assume(i1 %92), !dbg !1474
  %93 = shl nuw nsw i64 %86, 40, !dbg !1475
  %94 = zext nneg i32 %89 to i64, !dbg !1475
  %95 = or disjoint i64 %93, %94, !dbg !1475
  br label %100, !dbg !1476

96:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i8 %79, metadata !1477, metadata !DIExpression()), !dbg !1482
  %97 = zext i8 %79 to i64, !dbg !1484
  %98 = shl nuw nsw i64 %97, 32, !dbg !1484
  %99 = or disjoint i64 %98, 1099511627776, !dbg !1484
  br label %100, !dbg !1485

100:                                              ; preds = %96, %88
  %101 = phi i64 [ %99, %96 ], [ %95, %88 ], !dbg !1437
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #38, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1486
  br label %105

102:                                              ; preds = %75
  call void @llvm.dbg.value(metadata i64 1, metadata !1469, metadata !DIExpression()), !dbg !1487
  %103 = zext nneg i8 %79 to i64, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %103, metadata !1464, metadata !DIExpression()), !dbg !1487
  %104 = or disjoint i64 %103, 1099511627776, !dbg !1489
  br label %105, !dbg !1490

105:                                              ; preds = %102, %100
  %106 = phi i64 [ %104, %102 ], [ %101, %100 ], !dbg !1437
  call void @llvm.dbg.value(metadata i64 %106, metadata !1373, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %106, metadata !1373, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %106, metadata !1373, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %106, metadata !1373, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1374
  %107 = and i64 %106, 1095216660480, !dbg !1491
  %108 = icmp eq i64 %107, 0, !dbg !1491
  br i1 %108, label %112, label %109, !dbg !1493

109:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i64 %77, metadata !346, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1343
  %110 = load i8, ptr %78, align 1, !dbg !1494, !tbaa !1142
  %111 = zext i8 %110 to i64, !dbg !1496
  call void @llvm.dbg.value(metadata i8 %110, metadata !1373, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1374
  br label %114

112:                                              ; preds = %105
  %113 = lshr i64 %106, 40, !dbg !1497
  call void @llvm.dbg.value(metadata i64 %113, metadata !1373, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %106, metadata !1373, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1374
  call void @llvm.dbg.value(metadata !DIArgList(i64 %77, i64 %113), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1343
  br label %114, !dbg !1498

114:                                              ; preds = %112, %109
  %115 = phi i64 [ %113, %112 ], [ 1, %109 ]
  %116 = phi i64 [ %106, %112 ], [ %111, %109 ], !dbg !1374
  %117 = add nsw i64 %115, %77, !dbg !1499
  call void @llvm.dbg.value(metadata i64 %117, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i32 poison, metadata !1373, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1374
  %118 = and i64 %106, -4294967296, !dbg !1500
  %119 = and i64 %116, 4294967295, !dbg !1501
  %120 = or disjoint i64 %119, %118, !dbg !1500
  call void @llvm.dbg.value(metadata i64 %76, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 poison, metadata !1373, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1374
  call void @llvm.dbg.value(metadata i64 poison, metadata !1373, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1374
  call void @llvm.dbg.value(metadata i64 poison, metadata !1373, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1374
  call void @llvm.dbg.value(metadata i64 poison, metadata !1373, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1374
  %121 = trunc i64 %116 to i32, !dbg !1502
  call void @llvm.dbg.value(metadata i32 %121, metadata !360, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1339
  call void @llvm.dbg.value(metadata !DIArgList(i64 %116, i64 %118), metadata !360, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1339
  call void @llvm.dbg.value(metadata !DIArgList(i64 %116, i64 %118), metadata !360, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1339
  call void @llvm.dbg.value(metadata i64 poison, metadata !360, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1339
  %122 = icmp eq i32 %121, -1, !dbg !1503
  br i1 %122, label %123, label %181, !dbg !1504

123:                                              ; preds = %114, %70
  %124 = phi i64 [ %120, %114 ], [ 4294967295, %70 ]
  %125 = phi i64 [ %117, %114 ], [ %72, %70 ]
  %126 = phi i64 [ %76, %114 ], [ %71, %70 ]
  %127 = call ptr @next_file(ptr noundef %52) #38, !dbg !1505
  call void @llvm.dbg.value(metadata ptr %127, metadata !345, metadata !DIExpression()), !dbg !1343
  %128 = icmp eq ptr %127, null, !dbg !1504
  br i1 %128, label %181, label %129, !dbg !1506

129:                                              ; preds = %123, %175
  %130 = phi ptr [ %179, %175 ], [ %127, %123 ], !dbg !1507
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata ptr %130, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 262144, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata ptr %130, metadata !345, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata ptr undef, metadata !1364, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i64 0, metadata !1369, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata ptr %130, metadata !1379, metadata !DIExpression()), !dbg !1385
  %131 = load i32, ptr %130, align 8, !dbg !1387, !tbaa !1388
  %132 = and i32 %131, 16, !dbg !1390
  %133 = icmp eq i32 %132, 0, !dbg !1390
  br i1 %133, label %134, label %175, !dbg !1391

134:                                              ; preds = %129
  call void @llvm.dbg.value(metadata i64 0, metadata !1370, metadata !DIExpression()), !dbg !1408
  %135 = call i64 @fread_unlocked(ptr noundef nonnull @expand.line_in, i64 noundef 1, i64 noundef 262144, ptr noundef nonnull %130), !dbg !1410
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %135, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %135, metadata !1369, metadata !DIExpression()), !dbg !1374
  %136 = icmp slt i64 %135, 1, !dbg !1413
  br i1 %136, label %175, label %137, !dbg !1415

137:                                              ; preds = %134
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %135, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1343
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1417, metadata !DIExpression(), metadata !1295, metadata ptr %3, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1425, metadata !DIExpression(), metadata !1296, metadata ptr %4, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !1422, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1423, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1437
  %138 = load i8, ptr @expand.line_in, align 16, !dbg !1439
  call void @llvm.dbg.value(metadata i8 %138, metadata !1424, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %138, metadata !1440, metadata !DIExpression()), !dbg !1445
  %139 = icmp sgt i8 %138, -1, !dbg !1448
  br i1 %139, label %140, label %143, !dbg !1449

140:                                              ; preds = %137
  call void @llvm.dbg.value(metadata i64 1, metadata !1469, metadata !DIExpression()), !dbg !1487
  %141 = zext nneg i8 %138 to i64, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %141, metadata !1464, metadata !DIExpression()), !dbg !1487
  %142 = or disjoint i64 %141, 1099511627776, !dbg !1489
  br label %162, !dbg !1490

143:                                              ; preds = %137
  call void @llvm.dbg.value(metadata !DIArgList(ptr @expand.line_in, i64 %135), metadata !1423, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1437
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1451
  store i32 0, ptr %3, align 4, !dbg !1452, !tbaa !1453, !DIAssignID !1455
  call void @llvm.dbg.assign(metadata i32 0, metadata !1417, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1455, metadata ptr %3, metadata !DIExpression()), !dbg !1437
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #38, !dbg !1456
  %144 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull @expand.line_in, i64 noundef %135, ptr noundef nonnull %3) #38, !dbg !1458
  call void @llvm.dbg.value(metadata i64 %144, metadata !1426, metadata !DIExpression()), !dbg !1437
  %145 = icmp slt i64 %144, 0, !dbg !1459
  br i1 %145, label %146, label %150, !dbg !1461, !prof !1462

146:                                              ; preds = %143
  call void @llvm.dbg.value(metadata i8 %138, metadata !1477, metadata !DIExpression()), !dbg !1482
  %147 = zext i8 %138 to i64, !dbg !1484
  %148 = shl nuw nsw i64 %147, 32, !dbg !1484
  %149 = or disjoint i64 %148, 1099511627776, !dbg !1484
  br label %158, !dbg !1485

150:                                              ; preds = %143
  %151 = load i32, ptr %4, align 4, !dbg !1463, !tbaa !1133
  call void @llvm.dbg.value(metadata i32 %151, metadata !1464, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %144, metadata !1469, metadata !DIExpression()), !dbg !1470
  %152 = icmp ne i64 %144, 0, !dbg !1472
  call void @llvm.assume(i1 %152), !dbg !1472
  %153 = icmp ult i64 %144, 5, !dbg !1473
  call void @llvm.assume(i1 %153), !dbg !1473
  %154 = icmp ult i32 %151, 1114112, !dbg !1474
  call void @llvm.assume(i1 %154), !dbg !1474
  %155 = shl nuw nsw i64 %144, 40, !dbg !1475
  %156 = zext nneg i32 %151 to i64, !dbg !1475
  %157 = or disjoint i64 %155, %156, !dbg !1475
  br label %158, !dbg !1476

158:                                              ; preds = %150, %146
  %159 = phi i64 [ %149, %146 ], [ %157, %150 ], !dbg !1437
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #38, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1486
  %160 = load i8, ptr @expand.line_in, align 16, !dbg !1493
  %161 = zext i8 %160 to i64, !dbg !1493
  br label %162

162:                                              ; preds = %158, %140
  %163 = phi i64 [ %161, %158 ], [ %141, %140 ], !dbg !1493
  %164 = phi i64 [ %159, %158 ], [ %142, %140 ], !dbg !1437
  call void @llvm.dbg.value(metadata i64 %164, metadata !1373, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %164, metadata !1373, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %164, metadata !1373, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %164, metadata !1373, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1374
  %165 = and i64 %164, 1095216660480, !dbg !1491
  %166 = icmp eq i64 %165, 0, !dbg !1491
  %167 = lshr i64 %164, 40, !dbg !1493
  %168 = select i1 %166, i64 %167, i64 1, !dbg !1493
  %169 = select i1 %166, i64 %164, i64 %163, !dbg !1493
  call void @llvm.dbg.value(metadata i64 %168, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i32 poison, metadata !1373, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1374
  %170 = and i64 %164, -4294967296, !dbg !1500
  %171 = and i64 %169, 4294967295, !dbg !1501
  %172 = or disjoint i64 %171, %170, !dbg !1500
  call void @llvm.dbg.value(metadata i64 %135, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 poison, metadata !1373, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1374
  call void @llvm.dbg.value(metadata i64 poison, metadata !1373, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1374
  call void @llvm.dbg.value(metadata i64 poison, metadata !1373, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1374
  call void @llvm.dbg.value(metadata i64 poison, metadata !1373, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1374
  %173 = trunc i64 %169 to i32, !dbg !1502
  call void @llvm.dbg.value(metadata i32 %173, metadata !360, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1339
  call void @llvm.dbg.value(metadata !DIArgList(i64 %169, i64 %170), metadata !360, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1339
  call void @llvm.dbg.value(metadata !DIArgList(i64 %169, i64 %170), metadata !360, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1339
  call void @llvm.dbg.value(metadata i64 poison, metadata !360, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1339
  %174 = icmp eq i32 %173, -1, !dbg !1503
  br i1 %174, label %175, label %181, !dbg !1504

175:                                              ; preds = %162, %134, %129
  %176 = phi i64 [ %172, %162 ], [ 4294967295, %134 ], [ 4294967295, %129 ]
  %177 = phi i64 [ %168, %162 ], [ 0, %134 ], [ 0, %129 ]
  %178 = phi i64 [ %135, %162 ], [ %135, %134 ], [ 0, %129 ]
  %179 = call ptr @next_file(ptr noundef nonnull %130) #38, !dbg !1505
  call void @llvm.dbg.value(metadata ptr %179, metadata !345, metadata !DIExpression()), !dbg !1343
  %180 = icmp eq ptr %179, null, !dbg !1504
  br i1 %180, label %181, label %129, !dbg !1506, !llvm.loop !1509

181:                                              ; preds = %175, %162, %123, %114
  %182 = phi i64 [ %76, %114 ], [ %126, %123 ], [ %178, %175 ], [ %135, %162 ], !dbg !1512
  %183 = phi i64 [ %117, %114 ], [ %125, %123 ], [ %177, %175 ], [ %168, %162 ], !dbg !1374
  %184 = phi i64 [ %120, %114 ], [ %124, %123 ], [ %176, %175 ], [ %172, %162 ], !dbg !1501
  %185 = phi i32 [ %121, %114 ], [ -1, %123 ], [ -1, %175 ], [ %173, %162 ], !dbg !1502
  %186 = phi i1 [ false, %114 ], [ true, %123 ], [ true, %175 ], [ false, %162 ], !dbg !1503
  %187 = phi ptr [ %49, %114 ], [ %49, %123 ], [ %130, %162 ], [ %130, %175 ], !dbg !1507
  %188 = phi ptr [ %52, %114 ], [ null, %123 ], [ null, %175 ], [ %130, %162 ], !dbg !1343
  %189 = lshr i64 %184, 40
  %190 = lshr i64 %184, 40
  %191 = and i64 %189, 16776960
  %192 = and i64 %190, 255
  %193 = or disjoint i64 %192, %191
  call void @llvm.dbg.value(metadata ptr %188, metadata !345, metadata !DIExpression()), !dbg !1343
  %194 = and i8 %51, 1, !dbg !1513
  %195 = icmp eq i8 %194, 0, !dbg !1513
  br i1 %195, label %276, label %196, !dbg !1514

196:                                              ; preds = %181
  %197 = load i8, ptr @convert_entire_line, align 1, !dbg !1515, !tbaa !1309, !range !1516, !noundef !1100
  %198 = icmp eq i8 %197, 0, !dbg !1515
  br i1 %198, label %199, label %202, !dbg !1517

199:                                              ; preds = %196
  call void @llvm.dbg.value(metadata i32 %185, metadata !1518, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 %185, metadata !1525, metadata !DIExpression()), !dbg !1533
  %200 = call i32 @iswblank(i32 noundef %185) #38, !dbg !1535
  %201 = icmp ne i32 %200, 0, !dbg !1536
  br label %202, !dbg !1517

202:                                              ; preds = %199, %196
  %203 = phi i1 [ true, %196 ], [ %201, %199 ]
  %204 = zext i1 %203 to i8, !dbg !1537
  call void @llvm.dbg.value(metadata i8 %204, metadata !372, metadata !DIExpression()), !dbg !1339
  switch i32 %185, label %265 [
    i32 9, label %205
    i32 8, label %257
  ], !dbg !1538

205:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #38, !dbg !1539
  %206 = call i64 @get_next_tab_column(i64 noundef %50, ptr noundef nonnull %5, ptr noundef nonnull %6) #38, !dbg !1540
  call void @llvm.dbg.value(metadata i64 %206, metadata !386, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i64 %50, metadata !373, metadata !DIExpression()), !dbg !1339
  %207 = add nsw i64 %50, 1, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %207, metadata !373, metadata !DIExpression()), !dbg !1339
  %208 = icmp slt i64 %207, %206, !dbg !1542
  br i1 %208, label %209, label %234, !dbg !1543

209:                                              ; preds = %205, %231
  %210 = phi i64 [ %232, %231 ], [ %207, %205 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1544, metadata !DIExpression()), !dbg !1549
  %211 = load ptr, ptr @stdout, align 8, !dbg !1552, !tbaa !1063
  %212 = getelementptr inbounds %struct._IO_FILE, ptr %211, i64 0, i32 5, !dbg !1552
  %213 = load ptr, ptr %212, align 8, !dbg !1552, !tbaa !1553
  %214 = getelementptr inbounds %struct._IO_FILE, ptr %211, i64 0, i32 6, !dbg !1552
  %215 = load ptr, ptr %214, align 8, !dbg !1552, !tbaa !1554
  %216 = icmp ult ptr %213, %215, !dbg !1552
  br i1 %216, label %217, label %219, !dbg !1552, !prof !1555

217:                                              ; preds = %209
  %218 = getelementptr inbounds i8, ptr %213, i64 1, !dbg !1552
  store ptr %218, ptr %212, align 8, !dbg !1552, !tbaa !1553
  store i8 32, ptr %213, align 1, !dbg !1552, !tbaa !1142
  br label %231, !dbg !1556

219:                                              ; preds = %209
  %220 = call i32 @__overflow(ptr noundef nonnull %211, i32 noundef 32) #38, !dbg !1552
  %221 = icmp slt i32 %220, 0, !dbg !1557
  br i1 %221, label %222, label %231, !dbg !1556

222:                                              ; preds = %219
  %223 = tail call ptr @__errno_location() #41, !dbg !1558
  %224 = load i32, ptr %223, align 4, !dbg !1558, !tbaa !1133
  call void @llvm.dbg.value(metadata i32 %224, metadata !1561, metadata !DIExpression()), !dbg !1563
  %225 = load ptr, ptr @stdout, align 8, !dbg !1564, !tbaa !1063
  %226 = call i32 @fflush_unlocked(ptr noundef %225) #38, !dbg !1564
  %227 = load ptr, ptr @stdout, align 8, !dbg !1565, !tbaa !1063
  %228 = call i32 @fpurge(ptr noundef %227) #38, !dbg !1566
  %229 = load ptr, ptr @stdout, align 8, !dbg !1567, !tbaa !1063
  call void @clearerr_unlocked(ptr noundef %229) #38, !dbg !1567
  %230 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #38, !dbg !1568
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %224, ptr noundef %230) #38, !dbg !1568
  unreachable, !dbg !1568

231:                                              ; preds = %219, %217
  call void @llvm.dbg.value(metadata i64 %210, metadata !373, metadata !DIExpression()), !dbg !1339
  %232 = add i64 %210, 1, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %232, metadata !373, metadata !DIExpression()), !dbg !1339
  %233 = icmp eq i64 %232, %206, !dbg !1542
  br i1 %233, label %234, label %209, !dbg !1543, !llvm.loop !1569

234:                                              ; preds = %231, %205
  %235 = phi i64 [ %207, %205 ], [ %206, %231 ], !dbg !1541
  call void @llvm.dbg.value(metadata i32 32, metadata !1544, metadata !DIExpression()), !dbg !1571
  %236 = load ptr, ptr @stdout, align 8, !dbg !1574, !tbaa !1063
  %237 = getelementptr inbounds %struct._IO_FILE, ptr %236, i64 0, i32 5, !dbg !1574
  %238 = load ptr, ptr %237, align 8, !dbg !1574, !tbaa !1553
  %239 = getelementptr inbounds %struct._IO_FILE, ptr %236, i64 0, i32 6, !dbg !1574
  %240 = load ptr, ptr %239, align 8, !dbg !1574, !tbaa !1554
  %241 = icmp ult ptr %238, %240, !dbg !1574
  br i1 %241, label %242, label %244, !dbg !1574, !prof !1555

242:                                              ; preds = %234
  %243 = getelementptr inbounds i8, ptr %238, i64 1, !dbg !1574
  store ptr %243, ptr %237, align 8, !dbg !1574, !tbaa !1553
  store i8 32, ptr %238, align 1, !dbg !1574, !tbaa !1142
  br label %256, !dbg !1575

244:                                              ; preds = %234
  %245 = call i32 @__overflow(ptr noundef nonnull %236, i32 noundef 32) #38, !dbg !1574
  %246 = icmp slt i32 %245, 0, !dbg !1576
  br i1 %246, label %247, label %256, !dbg !1575

247:                                              ; preds = %244
  %248 = tail call ptr @__errno_location() #41, !dbg !1577
  %249 = load i32, ptr %248, align 4, !dbg !1577, !tbaa !1133
  call void @llvm.dbg.value(metadata i32 %249, metadata !1561, metadata !DIExpression()), !dbg !1579
  %250 = load ptr, ptr @stdout, align 8, !dbg !1580, !tbaa !1063
  %251 = call i32 @fflush_unlocked(ptr noundef %250) #38, !dbg !1580
  %252 = load ptr, ptr @stdout, align 8, !dbg !1581, !tbaa !1063
  %253 = call i32 @fpurge(ptr noundef %252) #38, !dbg !1582
  %254 = load ptr, ptr @stdout, align 8, !dbg !1583, !tbaa !1063
  call void @clearerr_unlocked(ptr noundef %254) #38, !dbg !1583
  %255 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #38, !dbg !1584
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %249, ptr noundef %255) #38, !dbg !1584
  unreachable, !dbg !1584

256:                                              ; preds = %244, %242
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #38, !dbg !1585
  br label %299

257:                                              ; preds = %202
  %258 = icmp ne i64 %50, 0, !dbg !1586
  %259 = sext i1 %258 to i64
  %260 = add i64 %50, %259, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %260, metadata !373, metadata !DIExpression()), !dbg !1339
  %261 = load i64, ptr %5, align 8, !dbg !1589, !tbaa !1360
  %262 = icmp ne i64 %261, 0, !dbg !1590
  %263 = sext i1 %262 to i64
  %264 = add i64 %261, %263, !dbg !1591
  store i64 %264, ptr %5, align 8, !dbg !1591, !tbaa !1360, !DIAssignID !1592
  call void @llvm.dbg.assign(metadata i64 %264, metadata !379, metadata !DIExpression(), metadata !1592, metadata ptr %5, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i8 %204, metadata !372, metadata !DIExpression()), !dbg !1339
  br label %279, !dbg !1593

265:                                              ; preds = %202
  call void @llvm.dbg.value(metadata i32 %185, metadata !1594, metadata !DIExpression()), !dbg !1599
  %266 = call i32 @wcwidth(i32 noundef %185) #38, !dbg !1601
  call void @llvm.dbg.value(metadata i32 %266, metadata !387, metadata !DIExpression()), !dbg !1602
  %267 = icmp slt i32 %266, 0, !dbg !1603
  %268 = select i1 %267, i32 1, i32 %266, !dbg !1603
  %269 = sext i32 %268 to i64, !dbg !1603
  %270 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %50, i64 %269), !dbg !1603
  %271 = extractvalue { i64, i1 } %270, 1, !dbg !1603
  call void @llvm.dbg.value(metadata i64 poison, metadata !373, metadata !DIExpression()), !dbg !1339
  br i1 %271, label %272, label %274, !dbg !1605

272:                                              ; preds = %265
  %273 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #38, !dbg !1606
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %273) #38, !dbg !1606
  unreachable, !dbg !1606

274:                                              ; preds = %265
  %275 = extractvalue { i64, i1 } %270, 0, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %275, metadata !373, metadata !DIExpression()), !dbg !1339
  br label %276

276:                                              ; preds = %274, %181
  %277 = phi i64 [ %275, %274 ], [ %50, %181 ], !dbg !1339
  %278 = phi i8 [ %204, %274 ], [ %51, %181 ], !dbg !1339
  call void @llvm.dbg.value(metadata i8 %278, metadata !372, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i64 %277, metadata !373, metadata !DIExpression()), !dbg !1339
  br i1 %186, label %304, label %279, !dbg !1593

279:                                              ; preds = %257, %276
  %280 = phi i8 [ %204, %257 ], [ %278, %276 ]
  %281 = phi i64 [ %260, %257 ], [ %277, %276 ]
  call void @llvm.dbg.value(metadata !DIArgList(i64 %190, i64 0, i64 %189), metadata !1607, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 65280, DW_OP_and, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709486080, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1613
  call void @llvm.dbg.value(metadata !DIArgList(i64 %190, i64 0, i64 %189), metadata !1607, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 65280, DW_OP_and, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709486080, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1615
  call void @llvm.dbg.value(metadata i64 %193, metadata !1607, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1613
  call void @llvm.dbg.value(metadata i64 %193, metadata !1607, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1615
  call void @llvm.dbg.value(metadata !DIArgList(i64 %190, i64 0, i64 %189), metadata !1607, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 65280, DW_OP_and, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709486080, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1613
  call void @llvm.dbg.value(metadata !DIArgList(i64 %190, i64 0, i64 %189), metadata !1607, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 65280, DW_OP_and, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709486080, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1615
  call void @llvm.dbg.value(metadata ptr undef, metadata !1612, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata ptr undef, metadata !1612, metadata !DIExpression()), !dbg !1615
  %282 = icmp sge i64 %183, %193, !dbg !1617
  call void @llvm.assume(i1 %282), !dbg !1620
  %283 = sub nsw i64 %183, %193, !dbg !1621
  %284 = getelementptr inbounds i8, ptr @expand.line_in, i64 %283, !dbg !1622
  %285 = load ptr, ptr @stdout, align 8, !dbg !1623, !tbaa !1063
  %286 = call i64 @fwrite_unlocked(ptr noundef nonnull %284, i64 noundef 1, i64 noundef %190, ptr noundef %285), !dbg !1623
  %287 = load ptr, ptr @stdout, align 8, !dbg !1624, !tbaa !1063
  call void @llvm.dbg.value(metadata ptr %287, metadata !1626, metadata !DIExpression()), !dbg !1629
  %288 = load i32, ptr %287, align 8, !dbg !1631, !tbaa !1388
  %289 = and i32 %288, 32, !dbg !1624
  %290 = icmp eq i32 %289, 0, !dbg !1624
  br i1 %290, label %299, label %291, !dbg !1632

291:                                              ; preds = %279
  %292 = tail call ptr @__errno_location() #41, !dbg !1633
  %293 = load i32, ptr %292, align 4, !dbg !1633, !tbaa !1133
  call void @llvm.dbg.value(metadata i32 %293, metadata !1561, metadata !DIExpression()), !dbg !1635
  %294 = call i32 @fflush_unlocked(ptr noundef nonnull %287) #38, !dbg !1636
  %295 = load ptr, ptr @stdout, align 8, !dbg !1637, !tbaa !1063
  %296 = call i32 @fpurge(ptr noundef %295) #38, !dbg !1638
  %297 = load ptr, ptr @stdout, align 8, !dbg !1639, !tbaa !1063
  call void @clearerr_unlocked(ptr noundef %297) #38, !dbg !1639
  %298 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #38, !dbg !1640
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %293, ptr noundef %298) #38, !dbg !1640
  unreachable, !dbg !1640

299:                                              ; preds = %279, %256
  %300 = phi i64 [ %235, %256 ], [ %281, %279 ], !dbg !1641
  %301 = phi i8 [ %204, %256 ], [ %280, %279 ], !dbg !1537
  call void @llvm.dbg.value(metadata i8 %301, metadata !372, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i64 %300, metadata !373, metadata !DIExpression()), !dbg !1339
  %302 = icmp eq i32 %185, 10, !dbg !1642
  br i1 %302, label %303, label %46, !dbg !1643, !llvm.loop !1644

303:                                              ; preds = %299
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !1646
  br label %41, !llvm.loop !1647

304:                                              ; preds = %276
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !1646
  br label %305

305:                                              ; preds = %33, %304
  call void @cleanup_file_list_stdin() #38, !dbg !1649
  %306 = load i32, ptr @exit_status, align 4, !dbg !1650, !tbaa !1133
  ret i32 %306, !dbg !1651
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
  %2 = load i64, ptr @first_free_tab, align 8, !dbg !1703, !tbaa !1360
  %3 = icmp eq i64 %2, 0, !dbg !1703
  %4 = load ptr, ptr @tab_list, align 8, !dbg !1704, !tbaa !1063
  br i1 %3, label %9, label %5, !dbg !1703

5:                                                ; preds = %1
  %6 = getelementptr i64, ptr %4, i64 %2, !dbg !1705
  %7 = getelementptr i64, ptr %6, i64 -1, !dbg !1705
  %8 = load i64, ptr %7, align 8, !dbg !1705, !tbaa !1360
  br label %9, !dbg !1703

9:                                                ; preds = %1, %5
  %10 = phi i64 [ %8, %5 ], [ 0, %1 ], !dbg !1703
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1700, metadata !DIExpression()), !dbg !1702
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1701, metadata !DIExpression()), !dbg !1702
  %11 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1706, !tbaa !1360
  %12 = icmp eq i64 %2, %11, !dbg !1708
  br i1 %12, label %13, label %16, !dbg !1709

13:                                               ; preds = %9
  %14 = tail call nonnull ptr @xpalloc(ptr noundef %4, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #38, !dbg !1710
  store ptr %14, ptr @tab_list, align 8, !dbg !1711, !tbaa !1063
  %15 = load i64, ptr @first_free_tab, align 8, !dbg !1712, !tbaa !1360
  br label %16, !dbg !1713

16:                                               ; preds = %13, %9
  %17 = phi i64 [ %15, %13 ], [ %2, %9 ], !dbg !1712
  %18 = phi ptr [ %14, %13 ], [ %4, %9 ], !dbg !1704
  %19 = icmp sgt i64 %10, %0, !dbg !1714
  %20 = sub nsw i64 %0, %10, !dbg !1715
  %21 = select i1 %19, i64 0, i64 %20, !dbg !1715
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1701, metadata !DIExpression()), !dbg !1702
  %22 = add nsw i64 %17, 1, !dbg !1712
  store i64 %22, ptr @first_free_tab, align 8, !dbg !1712, !tbaa !1360
  %23 = getelementptr inbounds i64, ptr %18, i64 %17, !dbg !1704
  store i64 %0, ptr %23, align 8, !dbg !1716, !tbaa !1360
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1717, metadata !DIExpression()), !dbg !1720
  %24 = load i64, ptr @max_column_width, align 8, !dbg !1722, !tbaa !1360
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

2:                                                ; preds = %117, %1
  %3 = phi i64 [ 0, %1 ], [ %118, %117 ], !dbg !1753
  %4 = phi i8 [ 0, %1 ], [ %119, %117 ], !dbg !1754
  %5 = phi i8 [ 0, %1 ], [ %120, %117 ], !dbg !1755
  %6 = phi ptr [ null, %1 ], [ %121, %117 ], !dbg !1756
  %7 = phi i8 [ 1, %1 ], [ %122, %117 ], !dbg !1757
  %8 = phi i8 [ 0, %1 ], [ %123, %117 ], !dbg !1751
  %9 = phi ptr [ %0, %1 ], [ %125, %117 ]
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1732, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 %8, metadata !1733, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 %7, metadata !1738, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1737, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !1736, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 %4, metadata !1735, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1734, metadata !DIExpression()), !dbg !1751
  %10 = load i8, ptr %9, align 1, !dbg !1758, !tbaa !1142
  switch i8 %10, label %11 [
    i8 0, label %126
    i8 44, label %19
  ], !dbg !1759

11:                                               ; preds = %2
  %12 = tail call ptr @__ctype_b_loc() #41, !dbg !1760
  %13 = load ptr, ptr %12, align 8, !dbg !1760, !tbaa !1063
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds i16, ptr %13, i64 %14, !dbg !1760
  %16 = load i16, ptr %15, align 2, !dbg !1760, !tbaa !1174
  %17 = and i16 %16, 1, !dbg !1760
  %18 = icmp eq i16 %17, 0, !dbg !1760
  br i1 %18, label %74, label %19, !dbg !1761

19:                                               ; preds = %2, %11
  %20 = and i8 %8, 1, !dbg !1762
  %21 = icmp eq i8 %20, 0, !dbg !1762
  br i1 %21, label %117, label %22, !dbg !1765

22:                                               ; preds = %19
  %23 = and i8 %4, 1, !dbg !1766
  %24 = icmp eq i8 %23, 0, !dbg !1766
  br i1 %24, label %35, label %25, !dbg !1769

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 %3, metadata !1770, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i8 1, metadata !1775, metadata !DIExpression()), !dbg !1776
  %26 = load i64, ptr @extend_size, align 8, !dbg !1780, !tbaa !1360
  %27 = icmp eq i64 %26, 0, !dbg !1780
  br i1 %27, label %30, label %28, !dbg !1782

28:                                               ; preds = %25
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12.7, i32 noundef 5) #38, !dbg !1783
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %29) #38, !dbg !1783
  call void @llvm.dbg.value(metadata i8 0, metadata !1775, metadata !DIExpression()), !dbg !1776
  br label %30, !dbg !1785

30:                                               ; preds = %28, %25
  call void @llvm.dbg.value(metadata i8 poison, metadata !1775, metadata !DIExpression()), !dbg !1776
  store i64 %3, ptr @extend_size, align 8, !dbg !1786, !tbaa !1360
  call void @llvm.dbg.value(metadata i64 %3, metadata !1717, metadata !DIExpression()), !dbg !1787
  %31 = load i64, ptr @max_column_width, align 8, !dbg !1789, !tbaa !1360
  %32 = icmp slt i64 %31, %3, !dbg !1790
  br i1 %32, label %33, label %34, !dbg !1791

33:                                               ; preds = %30
  store i64 %3, ptr @max_column_width, align 8, !dbg !1792
  br label %34

34:                                               ; preds = %30, %33
  br i1 %27, label %117, label %190, !dbg !1793

35:                                               ; preds = %22
  %36 = and i8 %5, 1, !dbg !1794
  %37 = icmp eq i8 %36, 0, !dbg !1794
  br i1 %37, label %48, label %38, !dbg !1796

38:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %3, metadata !1797, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i8 1, metadata !1800, metadata !DIExpression()), !dbg !1801
  %39 = load i64, ptr @increment_size, align 8, !dbg !1805, !tbaa !1360
  %40 = icmp eq i64 %39, 0, !dbg !1805
  br i1 %40, label %43, label %41, !dbg !1807

41:                                               ; preds = %38
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13.8, i32 noundef 5) #38, !dbg !1808
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %42) #38, !dbg !1808
  call void @llvm.dbg.value(metadata i8 0, metadata !1800, metadata !DIExpression()), !dbg !1801
  br label %43, !dbg !1810

43:                                               ; preds = %41, %38
  call void @llvm.dbg.value(metadata i8 poison, metadata !1800, metadata !DIExpression()), !dbg !1801
  store i64 %3, ptr @increment_size, align 8, !dbg !1811, !tbaa !1360
  call void @llvm.dbg.value(metadata i64 %3, metadata !1717, metadata !DIExpression()), !dbg !1812
  %44 = load i64, ptr @max_column_width, align 8, !dbg !1814, !tbaa !1360
  %45 = icmp slt i64 %44, %3, !dbg !1815
  br i1 %45, label %46, label %47, !dbg !1816

46:                                               ; preds = %43
  store i64 %3, ptr @max_column_width, align 8, !dbg !1817
  br label %47

47:                                               ; preds = %43, %46
  br i1 %40, label %117, label %190, !dbg !1818

48:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %3, metadata !1699, metadata !DIExpression()), !dbg !1819
  %49 = load i64, ptr @first_free_tab, align 8, !dbg !1821, !tbaa !1360
  %50 = icmp eq i64 %49, 0, !dbg !1821
  %51 = load ptr, ptr @tab_list, align 8, !dbg !1822, !tbaa !1063
  br i1 %50, label %56, label %52, !dbg !1821

52:                                               ; preds = %48
  %53 = getelementptr i64, ptr %51, i64 %49, !dbg !1823
  %54 = getelementptr i64, ptr %53, i64 -1, !dbg !1823
  %55 = load i64, ptr %54, align 8, !dbg !1823, !tbaa !1360
  br label %56, !dbg !1821

56:                                               ; preds = %52, %48
  %57 = phi i64 [ %55, %52 ], [ 0, %48 ], !dbg !1821
  call void @llvm.dbg.value(metadata i64 %57, metadata !1700, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i64 poison, metadata !1701, metadata !DIExpression()), !dbg !1819
  %58 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1824, !tbaa !1360
  %59 = icmp eq i64 %49, %58, !dbg !1825
  br i1 %59, label %60, label %63, !dbg !1826

60:                                               ; preds = %56
  %61 = tail call nonnull ptr @xpalloc(ptr noundef %51, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #38, !dbg !1827
  store ptr %61, ptr @tab_list, align 8, !dbg !1828, !tbaa !1063
  %62 = load i64, ptr @first_free_tab, align 8, !dbg !1829, !tbaa !1360
  br label %63, !dbg !1830

63:                                               ; preds = %60, %56
  %64 = phi i64 [ %62, %60 ], [ %49, %56 ], !dbg !1829
  %65 = phi ptr [ %61, %60 ], [ %51, %56 ], !dbg !1822
  %66 = icmp sgt i64 %57, %3, !dbg !1831
  %67 = sub nsw i64 %3, %57, !dbg !1832
  %68 = select i1 %66, i64 0, i64 %67, !dbg !1832
  call void @llvm.dbg.value(metadata i64 %68, metadata !1701, metadata !DIExpression()), !dbg !1819
  %69 = add nsw i64 %64, 1, !dbg !1829
  store i64 %69, ptr @first_free_tab, align 8, !dbg !1829, !tbaa !1360
  %70 = getelementptr inbounds i64, ptr %65, i64 %64, !dbg !1822
  store i64 %3, ptr %70, align 8, !dbg !1833, !tbaa !1360
  call void @llvm.dbg.value(metadata i64 %68, metadata !1717, metadata !DIExpression()), !dbg !1834
  %71 = load i64, ptr @max_column_width, align 8, !dbg !1836, !tbaa !1360
  %72 = icmp slt i64 %71, %68, !dbg !1837
  br i1 %72, label %73, label %117, !dbg !1838

73:                                               ; preds = %63
  store i64 %68, ptr @max_column_width, align 8, !dbg !1839
  br label %117

74:                                               ; preds = %11
  switch i8 %10, label %87 [
    i8 47, label %75
    i8 43, label %81
  ], !dbg !1840

75:                                               ; preds = %74
  %76 = and i8 %8, 1, !dbg !1841
  %77 = icmp eq i8 %76, 0, !dbg !1841
  br i1 %77, label %117, label %78, !dbg !1844

78:                                               ; preds = %75
  %79 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #38, !dbg !1845
  %80 = tail call ptr @quote(ptr noundef nonnull %9) #38, !dbg !1845
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %79, ptr noundef %80) #38, !dbg !1845
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1738, metadata !DIExpression()), !dbg !1751
  br label %117, !dbg !1847

81:                                               ; preds = %74
  %82 = and i8 %8, 1, !dbg !1848
  %83 = icmp eq i8 %82, 0, !dbg !1848
  br i1 %83, label %117, label %84, !dbg !1851

84:                                               ; preds = %81
  %85 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.20, i32 noundef 5) #38, !dbg !1852
  %86 = tail call ptr @quote(ptr noundef nonnull %9) #38, !dbg !1852
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %85, ptr noundef %86) #38, !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1738, metadata !DIExpression()), !dbg !1751
  br label %117, !dbg !1854

87:                                               ; preds = %74
  %88 = sext i8 %10 to i32, !dbg !1855
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !1856, metadata !DIExpression()), !dbg !1862
  %89 = add nsw i32 %88, -48, !dbg !1864
  %90 = icmp ult i32 %89, 10, !dbg !1864
  br i1 %90, label %91, label %114, !dbg !1865

91:                                               ; preds = %87
  %92 = and i8 %8, 1, !dbg !1866
  %93 = icmp eq i8 %92, 0, !dbg !1866
  %94 = select i1 %93, i64 0, i64 %3, !dbg !1868
  %95 = select i1 %93, ptr %9, ptr %6, !dbg !1868
  %96 = select i1 %93, i8 1, i8 %8, !dbg !1868
  tail call void @llvm.dbg.value(metadata i8 %96, metadata !1733, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata ptr %95, metadata !1737, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1734, metadata !DIExpression()), !dbg !1751
  %97 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %94, i64 10), !dbg !1869
  %98 = extractvalue { i64, i1 } %97, 1, !dbg !1869
  %99 = extractvalue { i64, i1 } %97, 0, !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !1734, metadata !DIExpression()), !dbg !1751
  br i1 %98, label %106, label %100, !dbg !1869

100:                                              ; preds = %91
  %101 = sext i8 %10 to i64, !dbg !1869
  %102 = add nsw i64 %101, -48, !dbg !1869
  %103 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %99, i64 %102), !dbg !1869
  %104 = extractvalue { i64, i1 } %103, 1, !dbg !1869
  %105 = extractvalue { i64, i1 } %103, 0, !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1734, metadata !DIExpression()), !dbg !1751
  br i1 %104, label %106, label %117, !dbg !1870

106:                                              ; preds = %100, %91
  %107 = phi i64 [ %99, %91 ], [ %105, %100 ], !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1734, metadata !DIExpression()), !dbg !1751
  %108 = tail call i64 @strspn(ptr noundef %95, ptr noundef nonnull @.str.2.21) #39, !dbg !1871
  tail call void @llvm.dbg.value(metadata i64 %108, metadata !1739, metadata !DIExpression()), !dbg !1872
  %109 = tail call noalias nonnull ptr @ximemdup0(ptr noundef %95, i64 noundef %108) #38, !dbg !1873
  tail call void @llvm.dbg.value(metadata ptr %109, metadata !1750, metadata !DIExpression()), !dbg !1872
  %110 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3.22, i32 noundef 5) #38, !dbg !1874
  %111 = tail call ptr @quote(ptr noundef nonnull %109) #38, !dbg !1874
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %110, ptr noundef %111) #38, !dbg !1874
  tail call void @free(ptr noundef nonnull %109) #38, !dbg !1875
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1738, metadata !DIExpression()), !dbg !1751
  %112 = getelementptr inbounds i8, ptr %95, i64 %108, !dbg !1876
  %113 = getelementptr inbounds i8, ptr %112, i64 -1, !dbg !1877
  tail call void @llvm.dbg.value(metadata ptr %113, metadata !1732, metadata !DIExpression()), !dbg !1751
  br label %117, !dbg !1878

114:                                              ; preds = %87
  %115 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4.23, i32 noundef 5) #38, !dbg !1879
  %116 = tail call ptr @quote(ptr noundef nonnull %9) #38, !dbg !1879
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %115, ptr noundef %116) #38, !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1738, metadata !DIExpression()), !dbg !1751
  br label %190, !dbg !1881

117:                                              ; preds = %73, %63, %81, %84, %75, %78, %19, %47, %34, %100, %106
  %118 = phi i64 [ %107, %106 ], [ %105, %100 ], [ %3, %34 ], [ %3, %47 ], [ %3, %19 ], [ %3, %78 ], [ %3, %75 ], [ %3, %84 ], [ %3, %81 ], [ %3, %63 ], [ %3, %73 ], !dbg !1751
  %119 = phi i8 [ %4, %106 ], [ %4, %100 ], [ %4, %34 ], [ %4, %47 ], [ %4, %19 ], [ 1, %78 ], [ 1, %75 ], [ 0, %84 ], [ 0, %81 ], [ %4, %63 ], [ %4, %73 ], !dbg !1751
  %120 = phi i8 [ %5, %106 ], [ %5, %100 ], [ %5, %34 ], [ %5, %47 ], [ %5, %19 ], [ 0, %78 ], [ 0, %75 ], [ 1, %84 ], [ 1, %81 ], [ %5, %63 ], [ %5, %73 ], !dbg !1751
  %121 = phi ptr [ %95, %106 ], [ %95, %100 ], [ %6, %34 ], [ %6, %47 ], [ %6, %19 ], [ %6, %78 ], [ %6, %75 ], [ %6, %84 ], [ %6, %81 ], [ %6, %63 ], [ %6, %73 ], !dbg !1756
  %122 = phi i8 [ 0, %106 ], [ %7, %100 ], [ %7, %34 ], [ %7, %47 ], [ %7, %19 ], [ 0, %78 ], [ %7, %75 ], [ 0, %84 ], [ %7, %81 ], [ %7, %63 ], [ %7, %73 ], !dbg !1751
  %123 = phi i8 [ %96, %106 ], [ %96, %100 ], [ 0, %34 ], [ 0, %47 ], [ 0, %19 ], [ %8, %78 ], [ %8, %75 ], [ %8, %84 ], [ %8, %81 ], [ 0, %63 ], [ 0, %73 ], !dbg !1751
  %124 = phi ptr [ %113, %106 ], [ %9, %100 ], [ %9, %34 ], [ %9, %47 ], [ %9, %19 ], [ %9, %78 ], [ %9, %75 ], [ %9, %84 ], [ %9, %81 ], [ %9, %63 ], [ %9, %73 ]
  tail call void @llvm.dbg.value(metadata ptr %124, metadata !1732, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 %123, metadata !1733, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1738, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata ptr %121, metadata !1737, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 %120, metadata !1736, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 %119, metadata !1735, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1734, metadata !DIExpression()), !dbg !1751
  %125 = getelementptr inbounds i8, ptr %124, i64 1, !dbg !1882
  tail call void @llvm.dbg.value(metadata ptr %125, metadata !1732, metadata !DIExpression()), !dbg !1751
  br label %2, !dbg !1883, !llvm.loop !1884

126:                                              ; preds = %2
  tail call void @llvm.dbg.value(metadata i8 %7, metadata !1738, metadata !DIExpression()), !dbg !1751
  %127 = and i8 %7, 1, !dbg !1886
  %128 = icmp eq i8 %127, 0, !dbg !1886
  %129 = and i8 %8, 1
  %130 = icmp eq i8 %129, 0
  %131 = select i1 %128, i1 true, i1 %130, !dbg !1888
  br i1 %131, label %186, label %132, !dbg !1888

132:                                              ; preds = %126
  %133 = and i8 %4, 1, !dbg !1889
  %134 = icmp eq i8 %133, 0, !dbg !1889
  br i1 %134, label %146, label %135, !dbg !1892

135:                                              ; preds = %132
  call void @llvm.dbg.value(metadata i64 %3, metadata !1770, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8 1, metadata !1775, metadata !DIExpression()), !dbg !1893
  %136 = load i64, ptr @extend_size, align 8, !dbg !1895, !tbaa !1360
  %137 = icmp eq i64 %136, 0, !dbg !1895
  br i1 %137, label %140, label %138, !dbg !1896

138:                                              ; preds = %135
  %139 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12.7, i32 noundef 5) #38, !dbg !1897
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %139) #38, !dbg !1897
  call void @llvm.dbg.value(metadata i8 0, metadata !1775, metadata !DIExpression()), !dbg !1893
  br label %140, !dbg !1898

140:                                              ; preds = %138, %135
  call void @llvm.dbg.value(metadata i8 poison, metadata !1775, metadata !DIExpression()), !dbg !1893
  store i64 %3, ptr @extend_size, align 8, !dbg !1899, !tbaa !1360
  call void @llvm.dbg.value(metadata i64 %3, metadata !1717, metadata !DIExpression()), !dbg !1900
  %141 = load i64, ptr @max_column_width, align 8, !dbg !1902, !tbaa !1360
  %142 = icmp slt i64 %141, %3, !dbg !1903
  br i1 %142, label %143, label %144, !dbg !1904

143:                                              ; preds = %140
  store i64 %3, ptr @max_column_width, align 8, !dbg !1905
  br label %144

144:                                              ; preds = %140, %143
  %145 = zext i1 %137 to i8, !dbg !1906
  tail call void @llvm.dbg.value(metadata i8 %145, metadata !1738, metadata !DIExpression()), !dbg !1751
  br label %186, !dbg !1907

146:                                              ; preds = %132
  %147 = and i8 %5, 1, !dbg !1908
  %148 = icmp eq i8 %147, 0, !dbg !1908
  br i1 %148, label %160, label %149, !dbg !1910

149:                                              ; preds = %146
  call void @llvm.dbg.value(metadata i64 %3, metadata !1797, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 1, metadata !1800, metadata !DIExpression()), !dbg !1911
  %150 = load i64, ptr @increment_size, align 8, !dbg !1913, !tbaa !1360
  %151 = icmp eq i64 %150, 0, !dbg !1913
  br i1 %151, label %154, label %152, !dbg !1914

152:                                              ; preds = %149
  %153 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13.8, i32 noundef 5) #38, !dbg !1915
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %153) #38, !dbg !1915
  call void @llvm.dbg.value(metadata i8 0, metadata !1800, metadata !DIExpression()), !dbg !1911
  br label %154, !dbg !1916

154:                                              ; preds = %152, %149
  call void @llvm.dbg.value(metadata i8 poison, metadata !1800, metadata !DIExpression()), !dbg !1911
  store i64 %3, ptr @increment_size, align 8, !dbg !1917, !tbaa !1360
  call void @llvm.dbg.value(metadata i64 %3, metadata !1717, metadata !DIExpression()), !dbg !1918
  %155 = load i64, ptr @max_column_width, align 8, !dbg !1920, !tbaa !1360
  %156 = icmp slt i64 %155, %3, !dbg !1921
  br i1 %156, label %157, label %158, !dbg !1922

157:                                              ; preds = %154
  store i64 %3, ptr @max_column_width, align 8, !dbg !1923
  br label %158

158:                                              ; preds = %154, %157
  %159 = zext i1 %151 to i8, !dbg !1924
  tail call void @llvm.dbg.value(metadata i8 %159, metadata !1738, metadata !DIExpression()), !dbg !1751
  br label %186, !dbg !1925

160:                                              ; preds = %146
  call void @llvm.dbg.value(metadata i64 %3, metadata !1699, metadata !DIExpression()), !dbg !1926
  %161 = load i64, ptr @first_free_tab, align 8, !dbg !1928, !tbaa !1360
  %162 = icmp eq i64 %161, 0, !dbg !1928
  %163 = load ptr, ptr @tab_list, align 8, !dbg !1929, !tbaa !1063
  br i1 %162, label %168, label %164, !dbg !1928

164:                                              ; preds = %160
  %165 = getelementptr i64, ptr %163, i64 %161, !dbg !1930
  %166 = getelementptr i64, ptr %165, i64 -1, !dbg !1930
  %167 = load i64, ptr %166, align 8, !dbg !1930, !tbaa !1360
  br label %168, !dbg !1928

168:                                              ; preds = %164, %160
  %169 = phi i64 [ %167, %164 ], [ 0, %160 ], !dbg !1928
  call void @llvm.dbg.value(metadata i64 %169, metadata !1700, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i64 poison, metadata !1701, metadata !DIExpression()), !dbg !1926
  %170 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1931, !tbaa !1360
  %171 = icmp eq i64 %161, %170, !dbg !1932
  br i1 %171, label %172, label %175, !dbg !1933

172:                                              ; preds = %168
  %173 = tail call nonnull ptr @xpalloc(ptr noundef %163, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #38, !dbg !1934
  store ptr %173, ptr @tab_list, align 8, !dbg !1935, !tbaa !1063
  %174 = load i64, ptr @first_free_tab, align 8, !dbg !1936, !tbaa !1360
  br label %175, !dbg !1937

175:                                              ; preds = %172, %168
  %176 = phi i64 [ %174, %172 ], [ %161, %168 ], !dbg !1936
  %177 = phi ptr [ %173, %172 ], [ %163, %168 ], !dbg !1929
  %178 = icmp sgt i64 %169, %3, !dbg !1938
  %179 = sub nsw i64 %3, %169, !dbg !1939
  %180 = select i1 %178, i64 0, i64 %179, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %180, metadata !1701, metadata !DIExpression()), !dbg !1926
  %181 = add nsw i64 %176, 1, !dbg !1936
  store i64 %181, ptr @first_free_tab, align 8, !dbg !1936, !tbaa !1360
  %182 = getelementptr inbounds i64, ptr %177, i64 %176, !dbg !1929
  store i64 %3, ptr %182, align 8, !dbg !1940, !tbaa !1360
  call void @llvm.dbg.value(metadata i64 %180, metadata !1717, metadata !DIExpression()), !dbg !1941
  %183 = load i64, ptr @max_column_width, align 8, !dbg !1943, !tbaa !1360
  %184 = icmp slt i64 %183, %180, !dbg !1944
  br i1 %184, label %185, label %186, !dbg !1945

185:                                              ; preds = %175
  store i64 %180, ptr @max_column_width, align 8, !dbg !1946
  br label %186

186:                                              ; preds = %185, %175, %144, %158, %126
  %187 = phi i8 [ %145, %144 ], [ %159, %158 ], [ %7, %126 ], [ %7, %175 ], [ %7, %185 ], !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 %187, metadata !1738, metadata !DIExpression()), !dbg !1751
  %188 = and i8 %187, 1, !dbg !1947
  %189 = icmp eq i8 %188, 0, !dbg !1947
  br i1 %189, label %190, label %191, !dbg !1949

190:                                              ; preds = %34, %47, %114, %186
  tail call void @exit(i32 noundef 1) #40, !dbg !1950
  unreachable, !dbg !1950

191:                                              ; preds = %186
  ret void, !dbg !1951
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1952 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @finalize_tab_stops() local_unnamed_addr #10 !dbg !1955 {
  %1 = load ptr, ptr @tab_list, align 8, !dbg !1956, !tbaa !1063
  %2 = load i64, ptr @first_free_tab, align 8, !dbg !1957, !tbaa !1360
  call void @llvm.dbg.value(metadata ptr %1, metadata !1958, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %2, metadata !1965, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 0, metadata !1966, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 0, metadata !1967, metadata !DIExpression()), !dbg !1971
  %3 = icmp sgt i64 %2, 0, !dbg !1972
  br i1 %3, label %13, label %7, !dbg !1974

4:                                                ; preds = %21
  %5 = add nuw nsw i64 %14, 1, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %5, metadata !1967, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %5, metadata !1967, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %17, metadata !1966, metadata !DIExpression()), !dbg !1969
  %6 = icmp eq i64 %5, %2, !dbg !1972
  br i1 %6, label %7, label %13, !dbg !1974, !llvm.loop !1976

7:                                                ; preds = %4, %0
  %8 = load i64, ptr @increment_size, align 8, !dbg !1978
  %9 = icmp ne i64 %8, 0, !dbg !1978
  %10 = load i64, ptr @extend_size, align 8
  %11 = icmp ne i64 %10, 0
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1980
  br i1 %12, label %25, label %27, !dbg !1980

13:                                               ; preds = %0, %4
  %14 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %15 = phi i64 [ %17, %4 ], [ 0, %0 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !1967, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %15, metadata !1966, metadata !DIExpression()), !dbg !1969
  %16 = getelementptr inbounds i64, ptr %1, i64 %14, !dbg !1981
  %17 = load i64, ptr %16, align 8, !dbg !1981, !tbaa !1360
  %18 = icmp eq i64 %17, 0, !dbg !1984
  br i1 %18, label %19, label %21, !dbg !1985

19:                                               ; preds = %13
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14.26, i32 noundef 5) #38, !dbg !1986
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %20) #38, !dbg !1986
  unreachable, !dbg !1986

21:                                               ; preds = %13
  %22 = icmp sgt i64 %17, %15, !dbg !1987
  call void @llvm.dbg.value(metadata i64 %17, metadata !1966, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %14, metadata !1967, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1971
  br i1 %22, label %4, label %23, !dbg !1989

23:                                               ; preds = %21
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15.27, i32 noundef 5) #38, !dbg !1990
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %24) #38, !dbg !1990
  unreachable, !dbg !1990

25:                                               ; preds = %7
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16.28, i32 noundef 5) #38, !dbg !1991
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %26) #38, !dbg !1991
  unreachable, !dbg !1991

27:                                               ; preds = %7
  %28 = icmp eq i64 %2, 0, !dbg !1992
  br i1 %28, label %29, label %34, !dbg !1994

29:                                               ; preds = %27
  %30 = icmp eq i64 %10, 0, !dbg !1995
  %31 = icmp eq i64 %8, 0, !dbg !1995
  %32 = select i1 %31, i64 8, i64 %8, !dbg !1995
  %33 = select i1 %30, i64 %32, i64 %10, !dbg !1995
  store i64 %33, ptr @max_column_width, align 8, !dbg !1996, !tbaa !1360
  br label %41, !dbg !1997

34:                                               ; preds = %27
  %35 = icmp ne i64 %2, 1, !dbg !1998
  %36 = or i64 %10, %8, !dbg !2000
  %37 = icmp ne i64 %36, 0, !dbg !2000
  %38 = select i1 %35, i1 true, i1 %37, !dbg !2000
  br i1 %38, label %41, label %39, !dbg !2000

39:                                               ; preds = %34
  %40 = load i64, ptr %1, align 8, !dbg !2001, !tbaa !1360
  br label %41, !dbg !2002

41:                                               ; preds = %34, %39, %29
  %42 = phi i64 [ %40, %39 ], [ %33, %29 ], [ 0, %34 ]
  store i64 %42, ptr @tab_size, align 8, !dbg !2003, !tbaa !1360
  ret void, !dbg !2004
}

; Function Attrs: nounwind uwtable
define dso_local i64 @get_next_tab_column(i64 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef nonnull writeonly %2) local_unnamed_addr #10 !dbg !2005 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2011, metadata !DIExpression()), !dbg !2026
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2012, metadata !DIExpression()), !dbg !2026
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2013, metadata !DIExpression()), !dbg !2026
  store i8 0, ptr %2, align 1, !dbg !2027, !tbaa !1309
  %4 = load i64, ptr @tab_size, align 8, !dbg !2028, !tbaa !1360
  %5 = icmp eq i64 %4, 0, !dbg !2028
  br i1 %5, label %6, label %12, !dbg !2029

6:                                                ; preds = %3
  %7 = load i64, ptr @first_free_tab, align 8, !tbaa !1360
  %8 = load i64, ptr %1, align 8, !tbaa !1360
  %9 = icmp slt i64 %8, %7, !dbg !2030
  br i1 %9, label %10, label %23, !dbg !2031

10:                                               ; preds = %6
  %11 = load ptr, ptr @tab_list, align 8, !tbaa !1063
  br label %15, !dbg !2031

12:                                               ; preds = %3
  %13 = srem i64 %0, %4, !dbg !2032
  %14 = sub nsw i64 %4, %13, !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2014, metadata !DIExpression()), !dbg !2026
  br label %41, !dbg !2034

15:                                               ; preds = %10, %20
  %16 = phi i64 [ %8, %10 ], [ %21, %20 ]
  %17 = getelementptr inbounds i64, ptr %11, i64 %16, !dbg !2035
  %18 = load i64, ptr %17, align 8, !dbg !2035, !tbaa !1360
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2015, metadata !DIExpression()), !dbg !2036
  %19 = icmp sgt i64 %18, %0, !dbg !2037
  br i1 %19, label %49, label %20

20:                                               ; preds = %15
  %21 = add i64 %16, 1, !dbg !2039
  store i64 %21, ptr %1, align 8, !dbg !2039, !tbaa !1360
  %22 = icmp eq i64 %21, %7, !dbg !2030
  br i1 %22, label %23, label %15, !dbg !2031, !llvm.loop !2040

23:                                               ; preds = %20, %6
  %24 = load i64, ptr @extend_size, align 8, !dbg !2042, !tbaa !1360
  %25 = icmp eq i64 %24, 0, !dbg !2042
  br i1 %25, label %29, label %26, !dbg !2043

26:                                               ; preds = %23
  %27 = srem i64 %0, %24, !dbg !2044
  %28 = sub nsw i64 %24, %27, !dbg !2045
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !2014, metadata !DIExpression()), !dbg !2026
  br label %41, !dbg !2046

29:                                               ; preds = %23
  %30 = load i64, ptr @increment_size, align 8, !dbg !2047, !tbaa !1360
  %31 = icmp eq i64 %30, 0, !dbg !2047
  br i1 %31, label %40, label %32, !dbg !2048

32:                                               ; preds = %29
  %33 = load ptr, ptr @tab_list, align 8, !dbg !2049, !tbaa !1063
  %34 = getelementptr i64, ptr %33, i64 %7, !dbg !2049
  %35 = getelementptr i64, ptr %34, i64 -1, !dbg !2049
  %36 = load i64, ptr %35, align 8, !dbg !2049, !tbaa !1360
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2021, metadata !DIExpression()), !dbg !2050
  %37 = sub nsw i64 %0, %36, !dbg !2051
  %38 = srem i64 %37, %30, !dbg !2052
  %39 = sub nsw i64 %30, %38, !dbg !2053
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2014, metadata !DIExpression()), !dbg !2026
  br label %41, !dbg !2054

40:                                               ; preds = %29
  store i8 1, ptr %2, align 1, !dbg !2055, !tbaa !1309
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2014, metadata !DIExpression()), !dbg !2026
  br label %41

41:                                               ; preds = %26, %40, %32, %12
  %42 = phi i64 [ %14, %12 ], [ %28, %26 ], [ %39, %32 ], [ 1, %40 ], !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !2014, metadata !DIExpression()), !dbg !2026
  %43 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 %42), !dbg !2058
  %44 = extractvalue { i64, i1 } %43, 1, !dbg !2058
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !2025, metadata !DIExpression()), !dbg !2026
  br i1 %44, label %45, label %47, !dbg !2060

45:                                               ; preds = %41
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5.31, i32 noundef 5) #38, !dbg !2061
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %46) #38, !dbg !2061
  unreachable, !dbg !2061

47:                                               ; preds = %41
  %48 = extractvalue { i64, i1 } %43, 0, !dbg !2058
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2025, metadata !DIExpression()), !dbg !2026
  br label %49

49:                                               ; preds = %15, %47
  %50 = phi i64 [ %48, %47 ], [ %18, %15 ], !dbg !2026
  ret i64 %50, !dbg !2062
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_file_list(ptr noundef %0) local_unnamed_addr #14 !dbg !2063 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2067, metadata !DIExpression()), !dbg !2068
  store i1 false, ptr @have_read_stdin, align 1, !dbg !2069
  %2 = icmp eq ptr %0, null, !dbg !2070
  %3 = select i1 %2, ptr @stdin_argv, ptr %0
  store ptr %3, ptr @file_list, align 8, !dbg !2072, !tbaa !1063
  ret void, !dbg !2073
}

; Function Attrs: nounwind uwtable
define dso_local ptr @next_file(ptr noundef %0) local_unnamed_addr #10 !dbg !465 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !503, metadata !DIExpression()), !dbg !2074
  %2 = icmp eq ptr %0, null, !dbg !2075
  br i1 %2, label %25, label %3, !dbg !2076

3:                                                ; preds = %1
  %4 = tail call ptr @__errno_location() #41, !dbg !2077
  %5 = load i32, ptr %4, align 4, !dbg !2077, !tbaa !1133
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !505, metadata !DIExpression()), !dbg !2078
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2079, metadata !DIExpression()), !dbg !2084
  %6 = load i32, ptr %0, align 8, !dbg !2087, !tbaa !1388
  %7 = and i32 %6, 32, !dbg !2088
  %8 = icmp eq i32 %7, 0, !dbg !2088
  %9 = select i1 %8, i32 0, i32 %5, !dbg !2089
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !505, metadata !DIExpression()), !dbg !2078
  %10 = load ptr, ptr @next_file.prev_file, align 8, !dbg !2090, !tbaa !1063
  call void @llvm.dbg.value(metadata ptr %10, metadata !2092, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata ptr @.str.6.34, metadata !2095, metadata !DIExpression()), !dbg !2096
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.6.34) #39, !dbg !2098
  %12 = icmp eq i32 %11, 0, !dbg !2099
  br i1 %12, label %13, label %14, !dbg !2100

13:                                               ; preds = %3
  tail call void @clearerr_unlocked(ptr noundef nonnull %0) #38, !dbg !2101
  br label %19, !dbg !2101

14:                                               ; preds = %3
  %15 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !2102
  %16 = icmp eq i32 %15, 0, !dbg !2104
  br i1 %16, label %19, label %17, !dbg !2105

17:                                               ; preds = %14
  %18 = load i32, ptr %4, align 4, !dbg !2106, !tbaa !1133
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !505, metadata !DIExpression()), !dbg !2078
  br label %19, !dbg !2107

19:                                               ; preds = %14, %17, %13
  %20 = phi i32 [ %9, %13 ], [ %18, %17 ], [ %9, %14 ], !dbg !2078
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !505, metadata !DIExpression()), !dbg !2078
  %21 = icmp eq i32 %20, 0, !dbg !2108
  br i1 %21, label %25, label %22, !dbg !2110

22:                                               ; preds = %19
  %23 = load ptr, ptr @next_file.prev_file, align 8, !dbg !2111, !tbaa !1063
  %24 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %23) #38, !dbg !2111
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %20, ptr noundef nonnull @.str.7.37, ptr noundef %24) #38, !dbg !2111
  store i32 1, ptr @exit_status, align 4, !dbg !2113, !tbaa !1133
  br label %25, !dbg !2114

25:                                               ; preds = %19, %22, %1
  %26 = load ptr, ptr @file_list, align 8, !dbg !2115, !tbaa !1063
  %27 = getelementptr inbounds ptr, ptr %26, i64 1, !dbg !2115
  store ptr %27, ptr @file_list, align 8, !dbg !2115, !tbaa !1063
  %28 = load ptr, ptr %26, align 8, !dbg !2116, !tbaa !1063
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !504, metadata !DIExpression()), !dbg !2074
  %29 = icmp eq ptr %28, null, !dbg !2117
  br i1 %29, label %50, label %30, !dbg !2118

30:                                               ; preds = %25, %42
  %31 = phi ptr [ %48, %42 ], [ %28, %25 ]
  call void @llvm.dbg.value(metadata ptr %31, metadata !2092, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata ptr @.str.6.34, metadata !2095, metadata !DIExpression()), !dbg !2119
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(2) @.str.6.34) #39, !dbg !2123
  %33 = icmp eq i32 %32, 0, !dbg !2124
  br i1 %33, label %34, label %36, !dbg !2125

34:                                               ; preds = %30
  store i1 true, ptr @have_read_stdin, align 1, !dbg !2126
  %35 = load ptr, ptr @stdin, align 8, !dbg !2128, !tbaa !1063
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !503, metadata !DIExpression()), !dbg !2074
  br label %38, !dbg !2129

36:                                               ; preds = %30
  %37 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull %31, ptr noundef nonnull @.str.8.38) #38, !dbg !2130
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !503, metadata !DIExpression()), !dbg !2074
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %35, %34 ], [ %37, %36 ], !dbg !2131
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !503, metadata !DIExpression()), !dbg !2074
  %40 = icmp eq ptr %39, null, !dbg !2132
  br i1 %40, label %42, label %41, !dbg !2134

41:                                               ; preds = %38
  store ptr %31, ptr @next_file.prev_file, align 8, !dbg !2135, !tbaa !1063
  tail call void @fadvise(ptr noundef nonnull %39, i32 noundef 2) #38, !dbg !2137
  br label %50, !dbg !2138

42:                                               ; preds = %38
  %43 = tail call ptr @__errno_location() #41, !dbg !2139
  %44 = load i32, ptr %43, align 4, !dbg !2139, !tbaa !1133
  %45 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %31) #38, !dbg !2139
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %44, ptr noundef nonnull @.str.7.37, ptr noundef %45) #38, !dbg !2139
  store i32 1, ptr @exit_status, align 4, !dbg !2140, !tbaa !1133
  %46 = load ptr, ptr @file_list, align 8, !dbg !2115, !tbaa !1063
  %47 = getelementptr inbounds ptr, ptr %46, i64 1, !dbg !2115
  store ptr %47, ptr @file_list, align 8, !dbg !2115, !tbaa !1063
  %48 = load ptr, ptr %46, align 8, !dbg !2116, !tbaa !1063
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !504, metadata !DIExpression()), !dbg !2074
  %49 = icmp eq ptr %48, null, !dbg !2117
  br i1 %49, label %50, label %30, !dbg !2118, !llvm.loop !2141

50:                                               ; preds = %42, %25, %41
  %51 = phi ptr [ %39, %41 ], [ null, %25 ], [ null, %42 ], !dbg !2074
  ret ptr %51, !dbg !2143
}

; Function Attrs: nounwind uwtable
define dso_local void @cleanup_file_list_stdin() local_unnamed_addr #10 !dbg !2144 {
  %1 = load i1, ptr @have_read_stdin, align 1, !dbg !2145
  br i1 %1, label %2, label %9, !dbg !2147

2:                                                ; preds = %0
  %3 = load ptr, ptr @stdin, align 8, !dbg !2148, !tbaa !1063
  %4 = tail call i32 @rpl_fclose(ptr noundef %3) #38, !dbg !2149
  %5 = icmp eq i32 %4, 0, !dbg !2150
  br i1 %5, label %9, label %6, !dbg !2151

6:                                                ; preds = %2
  %7 = tail call ptr @__errno_location() #41, !dbg !2152
  %8 = load i32, ptr %7, align 4, !dbg !2152, !tbaa !1133
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %8, ptr noundef nonnull @.str.6.34) #38, !dbg !2152
  unreachable, !dbg !2152

9:                                                ; preds = %2, %0
  ret void, !dbg !2153
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_tab_list_info(ptr noundef %0) local_unnamed_addr #10 !dbg !2154 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2156, metadata !DIExpression()), !dbg !2157
  %2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9.43, i32 noundef 5) #38, !dbg !2158
  call void @llvm.dbg.value(metadata ptr %0, metadata !573, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata ptr %2, metadata !574, metadata !DIExpression()), !dbg !2159
  %3 = load i32, ptr @oputs_.help_no_sgr.44, align 4, !dbg !2161, !tbaa !1133
  %4 = icmp eq i32 %3, -1, !dbg !2162
  br i1 %4, label %5, label %17, !dbg !2163

5:                                                ; preds = %1
  %6 = tail call ptr @getenv(ptr noundef nonnull @.str.17.45) #38, !dbg !2164
  call void @llvm.dbg.value(metadata ptr %6, metadata !575, metadata !DIExpression()), !dbg !2165
  %7 = icmp eq ptr %6, null, !dbg !2166
  br i1 %7, label %15, label %8, !dbg !2167

8:                                                ; preds = %5
  %9 = load i8, ptr %6, align 1, !dbg !2168, !tbaa !1142
  %10 = icmp eq i8 %9, 0, !dbg !2168
  br i1 %10, label %15, label %11, !dbg !2169

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata ptr %6, metadata !2092, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata ptr @.str.18.46, metadata !2095, metadata !DIExpression()), !dbg !2170
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.18.46) #39, !dbg !2172
  %13 = icmp eq i32 %12, 0, !dbg !2173
  %14 = zext i1 %13 to i32, !dbg !2169
  br label %15, !dbg !2169

15:                                               ; preds = %11, %8, %5
  %16 = phi i32 [ 1, %8 ], [ 1, %5 ], [ %14, %11 ]
  store i32 %16, ptr @oputs_.help_no_sgr.44, align 4, !dbg !2174, !tbaa !1133
  br label %17, !dbg !2175

17:                                               ; preds = %15, %1
  %18 = phi i32 [ %16, %15 ], [ %3, %1 ], !dbg !2176
  %19 = icmp eq i32 %18, 0, !dbg !2176
  br i1 %19, label %23, label %20, !dbg !2178

20:                                               ; preds = %17
  %21 = load ptr, ptr @stdout, align 8, !dbg !2179, !tbaa !1063
  %22 = tail call i32 @fputs_unlocked(ptr noundef %2, ptr noundef %21), !dbg !2179
  br label %158, !dbg !2181

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 1, metadata !578, metadata !DIExpression()), !dbg !2159
  %24 = tail call i64 @strspn(ptr noundef %2, ptr noundef nonnull @.str.19.47) #39, !dbg !2182
  %25 = getelementptr inbounds i8, ptr %2, i64 %24, !dbg !2183
  call void @llvm.dbg.value(metadata ptr %25, metadata !579, metadata !DIExpression()), !dbg !2159
  %26 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 45) #39, !dbg !2184
  call void @llvm.dbg.value(metadata ptr %26, metadata !580, metadata !DIExpression()), !dbg !2159
  %27 = icmp eq ptr %26, null, !dbg !2185
  br i1 %27, label %56, label %28, !dbg !2186

28:                                               ; preds = %23
  %29 = icmp eq ptr %26, %25, !dbg !2187
  br i1 %29, label %56, label %30, !dbg !2188

30:                                               ; preds = %28
  call void @llvm.dbg.value(metadata ptr %25, metadata !581, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i64 0, metadata !585, metadata !DIExpression()), !dbg !2189
  %31 = icmp ult ptr %25, %26, !dbg !2190
  br i1 %31, label %32, label %52, !dbg !2191

32:                                               ; preds = %30
  %33 = tail call ptr @__ctype_b_loc() #41, !dbg !2159
  %34 = load ptr, ptr %33, align 8, !tbaa !1063
  br label %35, !dbg !2191

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %25, %32 ], [ %38, %35 ]
  %37 = phi i64 [ 0, %32 ], [ %46, %35 ]
  call void @llvm.dbg.value(metadata ptr %36, metadata !581, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i64 %37, metadata !585, metadata !DIExpression()), !dbg !2189
  %38 = getelementptr inbounds i8, ptr %36, i64 1, !dbg !2192
  call void @llvm.dbg.value(metadata ptr %38, metadata !581, metadata !DIExpression()), !dbg !2189
  %39 = load i8, ptr %36, align 1, !dbg !2192, !tbaa !1142
  %40 = sext i8 %39 to i64, !dbg !2192
  %41 = getelementptr inbounds i16, ptr %34, i64 %40, !dbg !2192
  %42 = load i16, ptr %41, align 2, !dbg !2192, !tbaa !1174
  %43 = lshr i16 %42, 13, !dbg !2193
  %44 = and i16 %43, 1, !dbg !2193
  %45 = zext nneg i16 %44 to i64
  %46 = add nuw nsw i64 %37, %45, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %46, metadata !585, metadata !DIExpression()), !dbg !2189
  %47 = icmp ult ptr %38, %26, !dbg !2190
  %48 = icmp ult i64 %46, 2, !dbg !2195
  %49 = select i1 %47, i1 %48, i1 false, !dbg !2195
  br i1 %49, label %35, label %50, !dbg !2191, !llvm.loop !2196

50:                                               ; preds = %35
  %51 = icmp ne i64 %46, 2, !dbg !2197
  br label %52, !dbg !2197

52:                                               ; preds = %50, %30
  %53 = phi i1 [ true, %30 ], [ %51, %50 ], !dbg !2189
  %54 = select i1 %53, ptr %26, ptr %25, !dbg !2199
  %55 = zext i1 %53 to i8, !dbg !2199
  call void @llvm.dbg.value(metadata i8 %55, metadata !578, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata ptr %54, metadata !580, metadata !DIExpression()), !dbg !2159
  br label %56, !dbg !2200

56:                                               ; preds = %52, %28, %23
  %57 = phi ptr [ %54, %52 ], [ %25, %28 ], [ %25, %23 ], !dbg !2159
  %58 = phi i8 [ %55, %52 ], [ 1, %28 ], [ 0, %23 ], !dbg !2159
  call void @llvm.dbg.value(metadata i8 %58, metadata !578, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata ptr %57, metadata !580, metadata !DIExpression()), !dbg !2159
  %59 = tail call i64 @strcspn(ptr noundef %57, ptr noundef nonnull @.str.20) #39, !dbg !2201
  call void @llvm.dbg.value(metadata i64 %59, metadata !586, metadata !DIExpression()), !dbg !2159
  %60 = getelementptr inbounds i8, ptr %57, i64 %59, !dbg !2202
  call void @llvm.dbg.value(metadata ptr %60, metadata !587, metadata !DIExpression()), !dbg !2159
  br label %61, !dbg !2203

61:                                               ; preds = %94, %56
  %62 = phi ptr [ %60, %56 ], [ %95, %94 ], !dbg !2159
  %63 = phi i8 [ %58, %56 ], [ %71, %94 ], !dbg !2159
  call void @llvm.dbg.value(metadata i8 %63, metadata !578, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata ptr %62, metadata !587, metadata !DIExpression()), !dbg !2159
  %64 = load i8, ptr %62, align 1, !dbg !2204, !tbaa !1142
  switch i8 %64, label %70 [
    i8 0, label %96
    i8 10, label %96
    i8 45, label %65
  ], !dbg !2205

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !2206
  %67 = load i8, ptr %66, align 1, !dbg !2209, !tbaa !1142
  %68 = icmp eq i8 %67, 45, !dbg !2210
  %69 = select i1 %68, i8 0, i8 %63, !dbg !2211
  br label %70, !dbg !2211

70:                                               ; preds = %65, %61
  %71 = phi i8 [ %63, %61 ], [ %69, %65 ], !dbg !2159
  call void @llvm.dbg.value(metadata i8 %71, metadata !578, metadata !DIExpression()), !dbg !2159
  %72 = tail call ptr @__ctype_b_loc() #41, !dbg !2212
  %73 = load ptr, ptr %72, align 8, !dbg !2212, !tbaa !1063
  %74 = sext i8 %64 to i64, !dbg !2212
  %75 = getelementptr inbounds i16, ptr %73, i64 %74, !dbg !2212
  %76 = load i16, ptr %75, align 2, !dbg !2212, !tbaa !1174
  %77 = and i16 %76, 8192, !dbg !2212
  %78 = icmp eq i16 %77, 0, !dbg !2212
  br i1 %78, label %94, label %79, !dbg !2214

79:                                               ; preds = %70
  %80 = icmp eq i8 %64, 9, !dbg !2215
  br i1 %80, label %96, label %81, !dbg !2218

81:                                               ; preds = %79
  %82 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !2219
  %83 = load i8, ptr %82, align 1, !dbg !2219, !tbaa !1142
  %84 = sext i8 %83 to i64, !dbg !2219
  %85 = getelementptr inbounds i16, ptr %73, i64 %84, !dbg !2219
  %86 = load i16, ptr %85, align 2, !dbg !2219, !tbaa !1174
  %87 = and i16 %86, 8192, !dbg !2219
  %88 = icmp eq i16 %87, 0, !dbg !2219
  br i1 %88, label %89, label %96, !dbg !2220

89:                                               ; preds = %81
  %90 = and i8 %71, 1, !dbg !2221
  %91 = icmp ne i8 %90, 0, !dbg !2221
  %92 = icmp eq i8 %83, 45
  %93 = or i1 %91, %92, !dbg !2223
  br i1 %93, label %94, label %96, !dbg !2223

94:                                               ; preds = %89, %70
  %95 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !2224
  call void @llvm.dbg.value(metadata ptr %95, metadata !587, metadata !DIExpression()), !dbg !2159
  br label %61, !dbg !2203, !llvm.loop !2225

96:                                               ; preds = %89, %81, %79, %61, %61
  %97 = ptrtoint ptr %25 to i64, !dbg !2227
  %98 = load ptr, ptr @stdout, align 8, !dbg !2227, !tbaa !1063
  %99 = tail call i64 @fwrite_unlocked(ptr noundef %2, i64 noundef 1, i64 noundef %24, ptr noundef %98), !dbg !2227
  call void @llvm.dbg.value(metadata ptr %0, metadata !2092, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata ptr @.str.21, metadata !2095, metadata !DIExpression()), !dbg !2228
  %100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.21) #39, !dbg !2230
  %101 = icmp eq i32 %100, 0, !dbg !2231
  br i1 %101, label %130, label %102, !dbg !2232

102:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %0, metadata !2092, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !2095, metadata !DIExpression()), !dbg !2233
  %103 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.23) #39, !dbg !2235
  %104 = icmp eq i32 %103, 0, !dbg !2236
  br i1 %104, label %130, label %105, !dbg !2237

105:                                              ; preds = %102
  call void @llvm.dbg.value(metadata ptr %0, metadata !2092, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata ptr @.str.25, metadata !2095, metadata !DIExpression()), !dbg !2238
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.25) #39, !dbg !2240
  %107 = icmp eq i32 %106, 0, !dbg !2241
  br i1 %107, label %130, label %108, !dbg !2242

108:                                              ; preds = %105
  call void @llvm.dbg.value(metadata ptr %0, metadata !2092, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !2095, metadata !DIExpression()), !dbg !2243
  %109 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.26) #39, !dbg !2245
  %110 = icmp eq i32 %109, 0, !dbg !2246
  br i1 %110, label %130, label %111, !dbg !2247

111:                                              ; preds = %108
  call void @llvm.dbg.value(metadata ptr %0, metadata !2092, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !2095, metadata !DIExpression()), !dbg !2248
  %112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.28) #39, !dbg !2250
  %113 = icmp eq i32 %112, 0, !dbg !2251
  br i1 %113, label %130, label %114, !dbg !2252

114:                                              ; preds = %111
  call void @llvm.dbg.value(metadata ptr %0, metadata !2092, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata ptr @.str.29, metadata !2095, metadata !DIExpression()), !dbg !2253
  %115 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.29) #39, !dbg !2255
  %116 = icmp eq i32 %115, 0, !dbg !2256
  br i1 %116, label %130, label %117, !dbg !2257

117:                                              ; preds = %114
  call void @llvm.dbg.value(metadata ptr %0, metadata !2092, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !2095, metadata !DIExpression()), !dbg !2258
  %118 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.30) #39, !dbg !2260
  %119 = icmp eq i32 %118, 0, !dbg !2261
  br i1 %119, label %130, label %120, !dbg !2262

120:                                              ; preds = %117
  call void @llvm.dbg.value(metadata ptr %0, metadata !2092, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !2095, metadata !DIExpression()), !dbg !2263
  %121 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.31) #39, !dbg !2265
  %122 = icmp eq i32 %121, 0, !dbg !2266
  br i1 %122, label %130, label %123, !dbg !2267

123:                                              ; preds = %120
  call void @llvm.dbg.value(metadata ptr %0, metadata !2092, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata ptr @.str.32.48, metadata !2095, metadata !DIExpression()), !dbg !2268
  %124 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.32.48) #39, !dbg !2270
  %125 = icmp eq i32 %124, 0, !dbg !2271
  br i1 %125, label %130, label %126, !dbg !2272

126:                                              ; preds = %123
  call void @llvm.dbg.value(metadata ptr %0, metadata !2092, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata ptr @.str.33.49, metadata !2095, metadata !DIExpression()), !dbg !2273
  %127 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.33.49) #39, !dbg !2275
  %128 = icmp eq i32 %127, 0, !dbg !2276
  %129 = select i1 %128, ptr @.str.27, ptr %0, !dbg !2277
  br label %130, !dbg !2272

130:                                              ; preds = %126, %123, %120, %117, %114, %111, %108, %105, %102, %96
  %131 = phi ptr [ @.str.22, %96 ], [ @.str.24, %102 ], [ @.str.24, %105 ], [ @.str.27, %108 ], [ @.str.27, %111 ], [ @.str.27, %114 ], [ @.str.27, %117 ], [ @.str.27, %120 ], [ %129, %126 ], [ @.str.27, %123 ], !dbg !2232
  call void @llvm.dbg.value(metadata ptr %131, metadata !592, metadata !DIExpression()), !dbg !2159
  %132 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(7) @.str.34.50, i64 noundef 6) #39, !dbg !2278
  %133 = icmp eq i32 %132, 0, !dbg !2278
  br i1 %133, label %137, label %134, !dbg !2280

134:                                              ; preds = %130
  %135 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(10) @.str.35.51, i64 noundef 9) #39, !dbg !2281
  %136 = icmp eq i32 %135, 0, !dbg !2281
  br i1 %136, label %137, label %140, !dbg !2282

137:                                              ; preds = %134, %130
  %138 = trunc i64 %59 to i32, !dbg !2283
  %139 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36.52, ptr noundef nonnull @.str.37.53, ptr noundef %131, ptr noundef %131, i32 noundef %138, ptr noundef %57) #38, !dbg !2283
  br label %143, !dbg !2285

140:                                              ; preds = %134
  %141 = trunc i64 %59 to i32, !dbg !2286
  %142 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38.54, ptr noundef nonnull @.str.39.55, ptr noundef %131, i32 noundef %141, ptr noundef %57) #38, !dbg !2286
  br label %143

143:                                              ; preds = %140, %137
  %144 = load ptr, ptr @stdout, align 8, !dbg !2288, !tbaa !1063
  %145 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40.56, ptr noundef %144), !dbg !2288
  %146 = load ptr, ptr @stdout, align 8, !dbg !2289, !tbaa !1063
  %147 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41.57, ptr noundef %146), !dbg !2289
  %148 = ptrtoint ptr %62 to i64, !dbg !2290
  %149 = sub i64 %148, %97, !dbg !2290
  %150 = load ptr, ptr @stdout, align 8, !dbg !2290, !tbaa !1063
  %151 = tail call i64 @fwrite_unlocked(ptr noundef %25, i64 noundef 1, i64 noundef %149, ptr noundef %150), !dbg !2290
  %152 = load ptr, ptr @stdout, align 8, !dbg !2291, !tbaa !1063
  %153 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %152), !dbg !2291
  %154 = load ptr, ptr @stdout, align 8, !dbg !2292, !tbaa !1063
  %155 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %154), !dbg !2292
  %156 = load ptr, ptr @stdout, align 8, !dbg !2293, !tbaa !1063
  %157 = tail call i32 @fputs_unlocked(ptr noundef nonnull %62, ptr noundef %156), !dbg !2293
  br label %158, !dbg !2294

158:                                              ; preds = %20, %143
  %159 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10.58, i32 noundef 5) #38, !dbg !2295
  %160 = load ptr, ptr @stdout, align 8, !dbg !2295, !tbaa !1063
  %161 = tail call i32 @fputs_unlocked(ptr noundef %159, ptr noundef %160), !dbg !2295
  ret void, !dbg !2296
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #14 !dbg !2297 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2299, metadata !DIExpression()), !dbg !2300
  store ptr %0, ptr @file_name, align 8, !dbg !2301, !tbaa !1063
  ret void, !dbg !2302
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #14 !dbg !2303 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2307, metadata !DIExpression()), !dbg !2308
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !2309, !tbaa !1309
  ret void, !dbg !2310
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2311 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2316, !tbaa !1063
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !2317
  %3 = icmp eq i32 %2, 0, !dbg !2318
  br i1 %3, label %22, label %4, !dbg !2319

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2320, !tbaa !1309, !range !1516, !noundef !1100
  %6 = icmp eq i8 %5, 0, !dbg !2320
  br i1 %6, label %11, label %7, !dbg !2321

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !2322
  %9 = load i32, ptr %8, align 4, !dbg !2322, !tbaa !1133
  %10 = icmp eq i32 %9, 32, !dbg !2323
  br i1 %10, label %22, label %11, !dbg !2324

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1.65, i32 noundef 5) #38, !dbg !2325
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2313, metadata !DIExpression()), !dbg !2326
  %13 = load ptr, ptr @file_name, align 8, !dbg !2327, !tbaa !1063
  %14 = icmp eq ptr %13, null, !dbg !2327
  %15 = tail call ptr @__errno_location() #41, !dbg !2329
  %16 = load i32, ptr %15, align 4, !dbg !2329, !tbaa !1133
  br i1 %14, label %19, label %17, !dbg !2330

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !2331
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.66, ptr noundef %18, ptr noundef %12) #38, !dbg !2331
  br label %20, !dbg !2331

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.67, ptr noundef %12) #38, !dbg !2332
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2333, !tbaa !1133
  tail call void @_exit(i32 noundef %21) #40, !dbg !2334
  unreachable, !dbg !2334

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2335, !tbaa !1063
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !2337
  %25 = icmp eq i32 %24, 0, !dbg !2338
  br i1 %25, label %28, label %26, !dbg !2339

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2340, !tbaa !1133
  tail call void @_exit(i32 noundef %27) #40, !dbg !2341
  unreachable, !dbg !2341

28:                                               ; preds = %22
  ret void, !dbg !2342
}

; Function Attrs: noreturn
declare !dbg !2343 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #16 !dbg !2345 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2349, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2350, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2351, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2352, metadata !DIExpression()), !dbg !2353
  tail call fastcc void @flush_stdout(), !dbg !2354
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2355, !tbaa !1063
  %6 = icmp eq ptr %5, null, !dbg !2355
  br i1 %6, label %8, label %7, !dbg !2357

7:                                                ; preds = %4
  tail call void %5() #38, !dbg !2358
  br label %12, !dbg !2358

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2359, !tbaa !1063
  %10 = tail call ptr @getprogname() #39, !dbg !2359
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.68, ptr noundef %10) #38, !dbg !2359
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2361
  ret void, !dbg !2362
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2363 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2365, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i32 1, metadata !2367, metadata !DIExpression()), !dbg !2370
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !2373
  %2 = icmp slt i32 %1, 0, !dbg !2374
  br i1 %2, label %6, label %3, !dbg !2375

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2376, !tbaa !1063
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !2376
  br label %6, !dbg !2376

6:                                                ; preds = %3, %0
  ret void, !dbg !2377
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2378 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !2384
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2380, metadata !DIExpression()), !dbg !2385
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2381, metadata !DIExpression()), !dbg !2385
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2382, metadata !DIExpression()), !dbg !2385
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2383, metadata !DIExpression()), !dbg !2385
  %6 = load ptr, ptr @stderr, align 8, !dbg !2386, !tbaa !1063
  call void @llvm.dbg.value(metadata ptr %6, metadata !2387, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata ptr %2, metadata !2427, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata ptr %3, metadata !2428, metadata !DIExpression()), !dbg !2429
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #38, !dbg !2431
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2432, !tbaa !1133
  %9 = add i32 %8, 1, !dbg !2432
  store i32 %9, ptr @error_message_count, align 4, !dbg !2432, !tbaa !1133
  %10 = icmp eq i32 %1, 0, !dbg !2433
  br i1 %10, label %20, label %11, !dbg !2435

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2436, metadata !DIExpression(), metadata !2384, metadata ptr %5, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i32 %1, metadata !2439, metadata !DIExpression()), !dbg !2444
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !2446
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !2447
  call void @llvm.dbg.value(metadata ptr %12, metadata !2440, metadata !DIExpression()), !dbg !2444
  %13 = icmp eq ptr %12, null, !dbg !2448
  br i1 %13, label %14, label %16, !dbg !2450

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.69, ptr noundef nonnull @.str.5.70, i32 noundef 5) #38, !dbg !2451
  call void @llvm.dbg.value(metadata ptr %15, metadata !2440, metadata !DIExpression()), !dbg !2444
  br label %16, !dbg !2452

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2444
  call void @llvm.dbg.value(metadata ptr %17, metadata !2440, metadata !DIExpression()), !dbg !2444
  %18 = load ptr, ptr @stderr, align 8, !dbg !2453, !tbaa !1063
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.71, ptr noundef %17) #38, !dbg !2453
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !2454
  br label %20, !dbg !2455

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2456, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 10, metadata !2457, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata ptr %21, metadata !2462, metadata !DIExpression()), !dbg !2463
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2465
  %23 = load ptr, ptr %22, align 8, !dbg !2465, !tbaa !1553
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2465
  %25 = load ptr, ptr %24, align 8, !dbg !2465, !tbaa !1554
  %26 = icmp ult ptr %23, %25, !dbg !2465
  br i1 %26, label %29, label %27, !dbg !2465, !prof !1555

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #38, !dbg !2465
  br label %31, !dbg !2465

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2465
  store ptr %30, ptr %22, align 8, !dbg !2465, !tbaa !1553
  store i8 10, ptr %23, align 1, !dbg !2465, !tbaa !1142
  br label %31, !dbg !2465

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2466, !tbaa !1063
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #38, !dbg !2466
  %34 = icmp eq i32 %0, 0, !dbg !2467
  br i1 %34, label %36, label %35, !dbg !2469

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #40, !dbg !2470
  unreachable, !dbg !2470

36:                                               ; preds = %31
  ret void, !dbg !2471
}

declare !dbg !2472 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2475 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2478 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2482 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2495
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2489, metadata !DIExpression(), metadata !2495, metadata ptr %4, metadata !DIExpression()), !dbg !2496
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2486, metadata !DIExpression()), !dbg !2496
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2487, metadata !DIExpression()), !dbg !2496
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2488, metadata !DIExpression()), !dbg !2496
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #38, !dbg !2497
  call void @llvm.va_start(ptr nonnull %4), !dbg !2498
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #43, !dbg !2499
  call void @llvm.va_end(ptr nonnull %4), !dbg !2500
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #38, !dbg !2501
  ret void, !dbg !2501
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #16 !dbg !684 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !695, metadata !DIExpression()), !dbg !2502
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !696, metadata !DIExpression()), !dbg !2502
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !697, metadata !DIExpression()), !dbg !2502
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !698, metadata !DIExpression()), !dbg !2502
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !699, metadata !DIExpression()), !dbg !2502
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !700, metadata !DIExpression()), !dbg !2502
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2503, !tbaa !1133
  %8 = icmp eq i32 %7, 0, !dbg !2503
  br i1 %8, label %23, label %9, !dbg !2505

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2506, !tbaa !1133
  %11 = icmp eq i32 %10, %3, !dbg !2509
  br i1 %11, label %12, label %22, !dbg !2510

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2511, !tbaa !1063
  %14 = icmp eq ptr %13, %2, !dbg !2512
  br i1 %14, label %36, label %15, !dbg !2513

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2514
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2515
  br i1 %18, label %19, label %22, !dbg !2515

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2516
  %21 = icmp eq i32 %20, 0, !dbg !2517
  br i1 %21, label %36, label %22, !dbg !2518

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2519, !tbaa !1063
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2520, !tbaa !1133
  br label %23, !dbg !2521

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2522
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2523, !tbaa !1063
  %25 = icmp eq ptr %24, null, !dbg !2523
  br i1 %25, label %27, label %26, !dbg !2525

26:                                               ; preds = %23
  tail call void %24() #38, !dbg !2526
  br label %31, !dbg !2526

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2527, !tbaa !1063
  %29 = tail call ptr @getprogname() #39, !dbg !2527
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.74, ptr noundef %29) #38, !dbg !2527
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2529, !tbaa !1063
  %33 = icmp eq ptr %2, null, !dbg !2529
  %34 = select i1 %33, ptr @.str.3.75, ptr @.str.2.76, !dbg !2529
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #38, !dbg !2529
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2530
  br label %36, !dbg !2531

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2531
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2532 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2542
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2541, metadata !DIExpression(), metadata !2542, metadata ptr %6, metadata !DIExpression()), !dbg !2543
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2536, metadata !DIExpression()), !dbg !2543
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2537, metadata !DIExpression()), !dbg !2543
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2538, metadata !DIExpression()), !dbg !2543
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2539, metadata !DIExpression()), !dbg !2543
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2540, metadata !DIExpression()), !dbg !2543
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #38, !dbg !2544
  call void @llvm.va_start(ptr nonnull %6), !dbg !2545
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #43, !dbg !2546
  call void @llvm.va_end(ptr nonnull %6), !dbg !2547
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #38, !dbg !2548
  ret void, !dbg !2548
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2549 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2555, metadata !DIExpression()), !dbg !2559
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2556, metadata !DIExpression()), !dbg !2559
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2557, metadata !DIExpression()), !dbg !2559
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2558, metadata !DIExpression()), !dbg !2559
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #38, !dbg !2560
  ret void, !dbg !2561
}

; Function Attrs: nounwind
declare !dbg !2562 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2565 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2603, metadata !DIExpression()), !dbg !2605
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2604, metadata !DIExpression()), !dbg !2605
  %3 = icmp eq ptr %0, null, !dbg !2606
  br i1 %3, label %7, label %4, !dbg !2608

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2609
  call void @llvm.dbg.value(metadata i32 %5, metadata !2555, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 0, metadata !2556, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 0, metadata !2557, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 %1, metadata !2558, metadata !DIExpression()), !dbg !2610
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #38, !dbg !2612
  br label %7, !dbg !2613

7:                                                ; preds = %4, %2
  ret void, !dbg !2614
}

; Function Attrs: nofree nounwind
declare !dbg !2615 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2618 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2656, metadata !DIExpression()), !dbg !2660
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2657, metadata !DIExpression()), !dbg !2660
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2661
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2658, metadata !DIExpression()), !dbg !2660
  %3 = icmp slt i32 %2, 0, !dbg !2662
  br i1 %3, label %4, label %6, !dbg !2664

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2665
  br label %24, !dbg !2666

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2667
  %8 = icmp eq i32 %7, 0, !dbg !2667
  br i1 %8, label %13, label %9, !dbg !2669

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2670
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !2671
  %12 = icmp eq i64 %11, -1, !dbg !2672
  br i1 %12, label %16, label %13, !dbg !2673

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !2674
  %15 = icmp eq i32 %14, 0, !dbg !2674
  br i1 %15, label %16, label %18, !dbg !2675

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2657, metadata !DIExpression()), !dbg !2660
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2659, metadata !DIExpression()), !dbg !2660
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2676
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !2659, metadata !DIExpression()), !dbg !2660
  br label %24, !dbg !2677

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !2678
  %20 = load i32, ptr %19, align 4, !dbg !2678, !tbaa !1133
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2657, metadata !DIExpression()), !dbg !2660
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2659, metadata !DIExpression()), !dbg !2660
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2676
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !2659, metadata !DIExpression()), !dbg !2660
  %22 = icmp eq i32 %20, 0, !dbg !2679
  br i1 %22, label %24, label %23, !dbg !2677

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2681, !tbaa !1133
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !2659, metadata !DIExpression()), !dbg !2660
  br label %24, !dbg !2683

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2660
  ret i32 %25, !dbg !2684
}

; Function Attrs: nofree nounwind
declare !dbg !2685 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2686 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2688 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2691 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2729, metadata !DIExpression()), !dbg !2730
  %2 = icmp eq ptr %0, null, !dbg !2731
  br i1 %2, label %6, label %3, !dbg !2733

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2734
  %5 = icmp eq i32 %4, 0, !dbg !2734
  br i1 %5, label %6, label %8, !dbg !2735

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2736
  br label %16, !dbg !2737

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2738, metadata !DIExpression()), !dbg !2743
  %9 = load i32, ptr %0, align 8, !dbg !2745, !tbaa !1388
  %10 = and i32 %9, 256, !dbg !2747
  %11 = icmp eq i32 %10, 0, !dbg !2747
  br i1 %11, label %14, label %12, !dbg !2748

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !2749
  br label %14, !dbg !2749

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2750
  br label %16, !dbg !2751

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2730
  ret i32 %17, !dbg !2752
}

; Function Attrs: nofree nounwind
declare !dbg !2753 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2754 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2792, metadata !DIExpression()), !dbg !2793
  tail call void @__fpurge(ptr noundef nonnull %0) #38, !dbg !2794
  ret i32 0, !dbg !2795
}

; Function Attrs: nounwind
declare !dbg !2796 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2799 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2837, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2838, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2839, metadata !DIExpression()), !dbg !2843
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2844
  %5 = load ptr, ptr %4, align 8, !dbg !2844, !tbaa !2845
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2846
  %7 = load ptr, ptr %6, align 8, !dbg !2846, !tbaa !2847
  %8 = icmp eq ptr %5, %7, !dbg !2848
  br i1 %8, label %9, label %27, !dbg !2849

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2850
  %11 = load ptr, ptr %10, align 8, !dbg !2850, !tbaa !1553
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2851
  %13 = load ptr, ptr %12, align 8, !dbg !2851, !tbaa !2852
  %14 = icmp eq ptr %11, %13, !dbg !2853
  br i1 %14, label %15, label %27, !dbg !2854

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2855
  %17 = load ptr, ptr %16, align 8, !dbg !2855, !tbaa !2856
  %18 = icmp eq ptr %17, null, !dbg !2857
  br i1 %18, label %19, label %27, !dbg !2858

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2859
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !2860
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2840, metadata !DIExpression()), !dbg !2861
  %22 = icmp eq i64 %21, -1, !dbg !2862
  br i1 %22, label %29, label %23, !dbg !2864

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2865, !tbaa !1388
  %25 = and i32 %24, -17, !dbg !2865
  store i32 %25, ptr %0, align 8, !dbg !2865, !tbaa !1388
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2866
  store i64 %21, ptr %26, align 8, !dbg !2867, !tbaa !2868
  br label %29, !dbg !2869

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2870
  br label %29, !dbg !2871

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2843
  ret i32 %30, !dbg !2872
}

; Function Attrs: nofree nounwind
declare !dbg !2873 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !2876 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2879, !tbaa !1063
  ret ptr %1, !dbg !2880
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !2881 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2883, metadata !DIExpression()), !dbg !2886
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !2887
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2884, metadata !DIExpression()), !dbg !2886
  %3 = icmp eq ptr %2, null, !dbg !2888
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2888
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2888
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2885, metadata !DIExpression()), !dbg !2886
  %6 = ptrtoint ptr %5 to i64, !dbg !2889
  %7 = ptrtoint ptr %0 to i64, !dbg !2889
  %8 = sub i64 %6, %7, !dbg !2889
  %9 = icmp sgt i64 %8, 6, !dbg !2891
  br i1 %9, label %10, label %19, !dbg !2892

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2893
  call void @llvm.dbg.value(metadata ptr %11, metadata !2894, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata ptr @.str.95, metadata !2899, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i64 7, metadata !2900, metadata !DIExpression()), !dbg !2901
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.95, i64 7), !dbg !2903
  %13 = icmp eq i32 %12, 0, !dbg !2904
  br i1 %13, label %14, label %19, !dbg !2905

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2883, metadata !DIExpression()), !dbg !2886
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.96, i64 noundef 3) #39, !dbg !2906
  %16 = icmp eq i32 %15, 0, !dbg !2909
  %17 = select i1 %16, i64 3, i64 0, !dbg !2910
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2910
  br label %19, !dbg !2910

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2886
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2885, metadata !DIExpression()), !dbg !2886
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2883, metadata !DIExpression()), !dbg !2886
  store ptr %20, ptr @program_name, align 8, !dbg !2911, !tbaa !1063
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2912, !tbaa !1063
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2913, !tbaa !1063
  ret void, !dbg !2914
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2915 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !732 {
  %3 = alloca i32, align 4, !DIAssignID !2916
  call void @llvm.dbg.assign(metadata i1 undef, metadata !742, metadata !DIExpression(), metadata !2916, metadata ptr %3, metadata !DIExpression()), !dbg !2917
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2918
  call void @llvm.dbg.assign(metadata i1 undef, metadata !743, metadata !DIExpression(), metadata !2918, metadata ptr %4, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !739, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !740, metadata !DIExpression()), !dbg !2917
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !2919
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !741, metadata !DIExpression()), !dbg !2917
  %6 = icmp eq ptr %5, %0, !dbg !2920
  br i1 %6, label %7, label %14, !dbg !2922

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !2923
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !2924
  call void @llvm.dbg.value(metadata ptr %4, metadata !2925, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %4, metadata !2934, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 0, metadata !2939, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i64 8, metadata !2940, metadata !DIExpression()), !dbg !2941
  store i64 0, ptr %4, align 8, !dbg !2943
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !2944
  %9 = icmp eq i64 %8, 2, !dbg !2946
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2947
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2917
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !2948
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !2948
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2917
  ret ptr %15, !dbg !2948
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2949 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2954, metadata !DIExpression()), !dbg !2957
  %2 = tail call ptr @__errno_location() #41, !dbg !2958
  %3 = load i32, ptr %2, align 4, !dbg !2958, !tbaa !1133
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2955, metadata !DIExpression()), !dbg !2957
  %4 = icmp eq ptr %0, null, !dbg !2959
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2959
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #44, !dbg !2960
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2956, metadata !DIExpression()), !dbg !2957
  store i32 %3, ptr %2, align 4, !dbg !2961, !tbaa !1133
  ret ptr %6, !dbg !2962
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !2963 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2969, metadata !DIExpression()), !dbg !2970
  %2 = icmp eq ptr %0, null, !dbg !2971
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2971
  %4 = load i32, ptr %3, align 8, !dbg !2972, !tbaa !2973
  ret i32 %4, !dbg !2975
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2976 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2980, metadata !DIExpression()), !dbg !2982
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2981, metadata !DIExpression()), !dbg !2982
  %3 = icmp eq ptr %0, null, !dbg !2983
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2983
  store i32 %1, ptr %4, align 8, !dbg !2984, !tbaa !2973
  ret void, !dbg !2985
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #23 !dbg !2986 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2990, metadata !DIExpression()), !dbg !2998
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2991, metadata !DIExpression()), !dbg !2998
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2992, metadata !DIExpression()), !dbg !2998
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2993, metadata !DIExpression()), !dbg !2998
  %4 = icmp eq ptr %0, null, !dbg !2999
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2999
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3000
  %7 = lshr i8 %1, 5, !dbg !3001
  %8 = zext nneg i8 %7 to i64, !dbg !3001
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !3002
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2994, metadata !DIExpression()), !dbg !2998
  %10 = and i8 %1, 31, !dbg !3003
  %11 = zext nneg i8 %10 to i32, !dbg !3003
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2996, metadata !DIExpression()), !dbg !2998
  %12 = load i32, ptr %9, align 4, !dbg !3004, !tbaa !1133
  %13 = lshr i32 %12, %11, !dbg !3005
  %14 = and i32 %13, 1, !dbg !3006
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2997, metadata !DIExpression()), !dbg !2998
  %15 = xor i32 %13, %2, !dbg !3007
  %16 = and i32 %15, 1, !dbg !3007
  %17 = shl nuw i32 %16, %11, !dbg !3008
  %18 = xor i32 %17, %12, !dbg !3009
  store i32 %18, ptr %9, align 4, !dbg !3009, !tbaa !1133
  ret i32 %14, !dbg !3010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !3011 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3015, metadata !DIExpression()), !dbg !3018
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3016, metadata !DIExpression()), !dbg !3018
  %3 = icmp eq ptr %0, null, !dbg !3019
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3021
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3015, metadata !DIExpression()), !dbg !3018
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3022
  %6 = load i32, ptr %5, align 4, !dbg !3022, !tbaa !3023
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !3017, metadata !DIExpression()), !dbg !3018
  store i32 %1, ptr %5, align 4, !dbg !3024, !tbaa !3023
  ret i32 %6, !dbg !3025
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3026 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3030, metadata !DIExpression()), !dbg !3033
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3031, metadata !DIExpression()), !dbg !3033
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3032, metadata !DIExpression()), !dbg !3033
  %4 = icmp eq ptr %0, null, !dbg !3034
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3036
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3030, metadata !DIExpression()), !dbg !3033
  store i32 10, ptr %5, align 8, !dbg !3037, !tbaa !2973
  %6 = icmp ne ptr %1, null, !dbg !3038
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3040
  br i1 %8, label %10, label %9, !dbg !3040

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3041
  unreachable, !dbg !3041

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3042
  store ptr %1, ptr %11, align 8, !dbg !3043, !tbaa !3044
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3045
  store ptr %2, ptr %12, align 8, !dbg !3046, !tbaa !3047
  ret void, !dbg !3048
}

; Function Attrs: noreturn nounwind
declare !dbg !3049 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3050 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3054, metadata !DIExpression()), !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3055, metadata !DIExpression()), !dbg !3062
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3056, metadata !DIExpression()), !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3057, metadata !DIExpression()), !dbg !3062
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3058, metadata !DIExpression()), !dbg !3062
  %6 = icmp eq ptr %4, null, !dbg !3063
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3063
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3059, metadata !DIExpression()), !dbg !3062
  %8 = tail call ptr @__errno_location() #41, !dbg !3064
  %9 = load i32, ptr %8, align 4, !dbg !3064, !tbaa !1133
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !3060, metadata !DIExpression()), !dbg !3062
  %10 = load i32, ptr %7, align 8, !dbg !3065, !tbaa !2973
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3066
  %12 = load i32, ptr %11, align 4, !dbg !3066, !tbaa !3023
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3067
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3068
  %15 = load ptr, ptr %14, align 8, !dbg !3068, !tbaa !3044
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3069
  %17 = load ptr, ptr %16, align 8, !dbg !3069, !tbaa !3047
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3070
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !3061, metadata !DIExpression()), !dbg !3062
  store i32 %9, ptr %8, align 4, !dbg !3071, !tbaa !1133
  ret i64 %18, !dbg !3072
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3073 {
  %10 = alloca i32, align 4, !DIAssignID !3141
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3142
  %12 = alloca i32, align 4, !DIAssignID !3143
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3144
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3145
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3119, metadata !DIExpression(), metadata !3145, metadata ptr %14, metadata !DIExpression()), !dbg !3146
  %15 = alloca i32, align 4, !DIAssignID !3147
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3122, metadata !DIExpression(), metadata !3147, metadata ptr %15, metadata !DIExpression()), !dbg !3148
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3079, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3080, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3081, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3082, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3083, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !3084, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3085, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3086, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3087, metadata !DIExpression()), !dbg !3149
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !3150
  %17 = icmp eq i64 %16, 1, !dbg !3151
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !3088, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3090, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3091, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3092, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3093, metadata !DIExpression()), !dbg !3149
  %18 = trunc i32 %5 to i8, !dbg !3152
  %19 = lshr i8 %18, 1, !dbg !3152
  %20 = and i8 %19, 1, !dbg !3152
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !3094, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3095, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3096, metadata !DIExpression()), !dbg !3149
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !3153

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !3154
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !3155
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !3156
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !3157
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !3149
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !3158
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !3159
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !3080, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !3096, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !3095, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !3094, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !3093, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !3092, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !3091, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !3090, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !3082, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !3087, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !3086, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !3083, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.label(metadata !3097), !dbg !3160
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3098, metadata !DIExpression()), !dbg !3149
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
  ], !dbg !3161

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3094, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i32 5, metadata !3083, metadata !DIExpression()), !dbg !3149
  br label %114, !dbg !3162

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !3094, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i32 5, metadata !3083, metadata !DIExpression()), !dbg !3149
  %43 = and i8 %37, 1, !dbg !3163
  %44 = icmp eq i8 %43, 0, !dbg !3163
  br i1 %44, label %45, label %114, !dbg !3162

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3165
  br i1 %46, label %114, label %47, !dbg !3168

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !3165, !tbaa !1142
  br label %114, !dbg !3165

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !832, metadata !DIExpression(), metadata !3143, metadata ptr %12, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.assign(metadata i1 undef, metadata !833, metadata !DIExpression(), metadata !3144, metadata ptr %13, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata ptr @.str.11.109, metadata !829, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 %29, metadata !830, metadata !DIExpression()), !dbg !3169
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.110, ptr noundef nonnull @.str.11.109, i32 noundef 5) #38, !dbg !3173
  call void @llvm.dbg.value(metadata ptr %49, metadata !831, metadata !DIExpression()), !dbg !3169
  %50 = icmp eq ptr %49, @.str.11.109, !dbg !3174
  br i1 %50, label %51, label %60, !dbg !3176

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !3177
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !3178
  call void @llvm.dbg.value(metadata ptr %13, metadata !3179, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata ptr %13, metadata !3187, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i32 0, metadata !3190, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i64 8, metadata !3191, metadata !DIExpression()), !dbg !3192
  store i64 0, ptr %13, align 8, !dbg !3194
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !3195
  %53 = icmp eq i64 %52, 3, !dbg !3197
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !3198
  %57 = icmp eq i32 %29, 9, !dbg !3198
  %58 = select i1 %57, ptr @.str.10.111, ptr @.str.12.112, !dbg !3198
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !3198
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !3199
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !3199
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !3169
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3086, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.assign(metadata i1 undef, metadata !832, metadata !DIExpression(), metadata !3141, metadata ptr %10, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.assign(metadata i1 undef, metadata !833, metadata !DIExpression(), metadata !3142, metadata ptr %11, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata ptr @.str.12.112, metadata !829, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i32 %29, metadata !830, metadata !DIExpression()), !dbg !3200
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.110, ptr noundef nonnull @.str.12.112, i32 noundef 5) #38, !dbg !3202
  call void @llvm.dbg.value(metadata ptr %62, metadata !831, metadata !DIExpression()), !dbg !3200
  %63 = icmp eq ptr %62, @.str.12.112, !dbg !3203
  br i1 %63, label %64, label %73, !dbg !3204

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !3205
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !3206
  call void @llvm.dbg.value(metadata ptr %11, metadata !3179, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata ptr %11, metadata !3187, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 0, metadata !3190, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i64 8, metadata !3191, metadata !DIExpression()), !dbg !3209
  store i64 0, ptr %11, align 8, !dbg !3211
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !3212
  %66 = icmp eq i64 %65, 3, !dbg !3213
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !3214
  %70 = icmp eq i32 %29, 9, !dbg !3214
  %71 = select i1 %70, ptr @.str.10.111, ptr @.str.12.112, !dbg !3214
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !3214
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !3215
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !3215
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !3087, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !3086, metadata !DIExpression()), !dbg !3149
  %76 = and i8 %37, 1, !dbg !3216
  %77 = icmp eq i8 %76, 0, !dbg !3216
  br i1 %77, label %78, label %93, !dbg !3217

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !3099, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3089, metadata !DIExpression()), !dbg !3149
  %79 = load i8, ptr %74, align 1, !dbg !3219, !tbaa !1142
  %80 = icmp eq i8 %79, 0, !dbg !3221
  br i1 %80, label %93, label %81, !dbg !3221

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !3099, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !3089, metadata !DIExpression()), !dbg !3149
  %85 = icmp ult i64 %84, %40, !dbg !3222
  br i1 %85, label %86, label %88, !dbg !3225

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3222
  store i8 %82, ptr %87, align 1, !dbg !3222, !tbaa !1142
  br label %88, !dbg !3222

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3225
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !3089, metadata !DIExpression()), !dbg !3149
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3226
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !3099, metadata !DIExpression()), !dbg !3218
  %91 = load i8, ptr %90, align 1, !dbg !3219, !tbaa !1142
  %92 = icmp eq i8 %91, 0, !dbg !3221
  br i1 %92, label %93, label %81, !dbg !3221, !llvm.loop !3227

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3229
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3093, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !3091, metadata !DIExpression()), !dbg !3149
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #39, !dbg !3230
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !3092, metadata !DIExpression()), !dbg !3149
  br label %114, !dbg !3231

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3093, metadata !DIExpression()), !dbg !3149
  br label %98, !dbg !3232

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !3093, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3094, metadata !DIExpression()), !dbg !3149
  br label %98, !dbg !3233

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !3157
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !3094, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !3093, metadata !DIExpression()), !dbg !3149
  %101 = and i8 %100, 1, !dbg !3234
  %102 = icmp eq i8 %101, 0, !dbg !3234
  %103 = select i1 %102, i8 1, i8 %99, !dbg !3236
  br label %104, !dbg !3236

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !3149
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !3152
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !3094, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !3093, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i32 2, metadata !3083, metadata !DIExpression()), !dbg !3149
  %107 = and i8 %106, 1, !dbg !3237
  %108 = icmp eq i8 %107, 0, !dbg !3237
  br i1 %108, label %109, label %114, !dbg !3239

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !3240
  br i1 %110, label %114, label %111, !dbg !3243

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !3240, !tbaa !1142
  br label %114, !dbg !3240

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3094, metadata !DIExpression()), !dbg !3149
  br label %114, !dbg !3244

113:                                              ; preds = %28
  call void @abort() #40, !dbg !3245
  unreachable, !dbg !3245

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !3229
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.111, %45 ], [ @.str.10.111, %47 ], [ @.str.10.111, %42 ], [ %34, %28 ], [ @.str.12.112, %109 ], [ @.str.12.112, %111 ], [ @.str.12.112, %104 ], [ @.str.10.111, %41 ], !dbg !3149
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !3149
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !3149
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !3094, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !3093, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !3092, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !3091, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !3087, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !3086, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !3083, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3104, metadata !DIExpression()), !dbg !3246
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
  br label %138, !dbg !3247

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !3229
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !3154
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !3158
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !3159
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !3248
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !3249
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !3080, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !3104, metadata !DIExpression()), !dbg !3246
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !3098, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !3096, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !3095, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !3090, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !3082, metadata !DIExpression()), !dbg !3149
  %147 = icmp eq i64 %139, -1, !dbg !3250
  br i1 %147, label %148, label %152, !dbg !3251

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3252
  %150 = load i8, ptr %149, align 1, !dbg !3252, !tbaa !1142
  %151 = icmp eq i8 %150, 0, !dbg !3253
  br i1 %151, label %612, label %154, !dbg !3254

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3255
  br i1 %153, label %612, label %154, !dbg !3254

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3106, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3109, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3110, metadata !DIExpression()), !dbg !3256
  br i1 %128, label %155, label %170, !dbg !3257

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !3259
  %157 = select i1 %147, i1 %129, i1 false, !dbg !3260
  br i1 %157, label %158, label %160, !dbg !3260

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !3261
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !3082, metadata !DIExpression()), !dbg !3149
  br label %160, !dbg !3262

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3262
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !3082, metadata !DIExpression()), !dbg !3149
  %162 = icmp ugt i64 %156, %161, !dbg !3263
  br i1 %162, label %170, label %163, !dbg !3264

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3265
  call void @llvm.dbg.value(metadata ptr %164, metadata !3266, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata ptr %119, metadata !3269, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %120, metadata !3270, metadata !DIExpression()), !dbg !3271
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !3273
  %166 = icmp ne i32 %165, 0, !dbg !3274
  %167 = select i1 %166, i1 true, i1 %131, !dbg !3275
  %168 = xor i1 %166, true, !dbg !3275
  %169 = zext i1 %168 to i8, !dbg !3275
  br i1 %167, label %170, label %666, !dbg !3275

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3256
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !3106, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !3082, metadata !DIExpression()), !dbg !3149
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3276
  %175 = load i8, ptr %174, align 1, !dbg !3276, !tbaa !1142
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !3111, metadata !DIExpression()), !dbg !3256
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
  ], !dbg !3277

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !3278

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !3279

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3109, metadata !DIExpression()), !dbg !3256
  %179 = and i8 %144, 1, !dbg !3283
  %180 = icmp eq i8 %179, 0, !dbg !3283
  %181 = select i1 %132, i1 %180, i1 false, !dbg !3283
  br i1 %181, label %182, label %198, !dbg !3283

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3285
  br i1 %183, label %184, label %186, !dbg !3289

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3285
  store i8 39, ptr %185, align 1, !dbg !3285, !tbaa !1142
  br label %186, !dbg !3285

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3289
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !3089, metadata !DIExpression()), !dbg !3149
  %188 = icmp ult i64 %187, %146, !dbg !3290
  br i1 %188, label %189, label %191, !dbg !3293

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3290
  store i8 36, ptr %190, align 1, !dbg !3290, !tbaa !1142
  br label %191, !dbg !3290

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3293
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !3089, metadata !DIExpression()), !dbg !3149
  %193 = icmp ult i64 %192, %146, !dbg !3294
  br i1 %193, label %194, label %196, !dbg !3297

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3294
  store i8 39, ptr %195, align 1, !dbg !3294, !tbaa !1142
  br label %196, !dbg !3294

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3098, metadata !DIExpression()), !dbg !3149
  br label %198, !dbg !3298

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !3149
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !3098, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !3089, metadata !DIExpression()), !dbg !3149
  %201 = icmp ult i64 %199, %146, !dbg !3299
  br i1 %201, label %202, label %204, !dbg !3302

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3299
  store i8 92, ptr %203, align 1, !dbg !3299, !tbaa !1142
  br label %204, !dbg !3299

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3302
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !3089, metadata !DIExpression()), !dbg !3149
  br i1 %125, label %206, label %476, !dbg !3303

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3305
  %208 = icmp ult i64 %207, %171, !dbg !3306
  br i1 %208, label %209, label %465, !dbg !3307

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3308
  %211 = load i8, ptr %210, align 1, !dbg !3308, !tbaa !1142
  %212 = add i8 %211, -48, !dbg !3309
  %213 = icmp ult i8 %212, 10, !dbg !3309
  br i1 %213, label %214, label %465, !dbg !3309

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3310
  br i1 %215, label %216, label %218, !dbg !3314

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3310
  store i8 48, ptr %217, align 1, !dbg !3310, !tbaa !1142
  br label %218, !dbg !3310

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !3089, metadata !DIExpression()), !dbg !3149
  %220 = icmp ult i64 %219, %146, !dbg !3315
  br i1 %220, label %221, label %223, !dbg !3318

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3315
  store i8 48, ptr %222, align 1, !dbg !3315, !tbaa !1142
  br label %223, !dbg !3315

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3318
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !3089, metadata !DIExpression()), !dbg !3149
  br label %465, !dbg !3319

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !3320

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3321

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !3322

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !3324

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3326
  %231 = icmp ult i64 %230, %171, !dbg !3327
  br i1 %231, label %232, label %465, !dbg !3328

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !3329
  %234 = load i8, ptr %233, align 1, !dbg !3329, !tbaa !1142
  %235 = icmp eq i8 %234, 63, !dbg !3330
  br i1 %235, label %236, label %465, !dbg !3331

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3332
  %238 = load i8, ptr %237, align 1, !dbg !3332, !tbaa !1142
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
  ], !dbg !3333

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !3334

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !3111, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !3104, metadata !DIExpression()), !dbg !3246
  %241 = icmp ult i64 %140, %146, !dbg !3336
  br i1 %241, label %242, label %244, !dbg !3339

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3336
  store i8 63, ptr %243, align 1, !dbg !3336, !tbaa !1142
  br label %244, !dbg !3336

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !3339
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !3089, metadata !DIExpression()), !dbg !3149
  %246 = icmp ult i64 %245, %146, !dbg !3340
  br i1 %246, label %247, label %249, !dbg !3343

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !3340
  store i8 34, ptr %248, align 1, !dbg !3340, !tbaa !1142
  br label %249, !dbg !3340

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !3343
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !3089, metadata !DIExpression()), !dbg !3149
  %251 = icmp ult i64 %250, %146, !dbg !3344
  br i1 %251, label %252, label %254, !dbg !3347

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !3344
  store i8 34, ptr %253, align 1, !dbg !3344, !tbaa !1142
  br label %254, !dbg !3344

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !3347
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !3089, metadata !DIExpression()), !dbg !3149
  %256 = icmp ult i64 %255, %146, !dbg !3348
  br i1 %256, label %257, label %259, !dbg !3351

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !3348
  store i8 63, ptr %258, align 1, !dbg !3348, !tbaa !1142
  br label %259, !dbg !3348

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !3351
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !3089, metadata !DIExpression()), !dbg !3149
  br label %465, !dbg !3352

261:                                              ; preds = %170
  br label %272, !dbg !3353

262:                                              ; preds = %170
  br label %272, !dbg !3354

263:                                              ; preds = %170
  br label %270, !dbg !3355

264:                                              ; preds = %170
  br label %270, !dbg !3356

265:                                              ; preds = %170
  br label %272, !dbg !3357

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !3358

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !3359

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !3362

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !3364

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !3365
  call void @llvm.dbg.label(metadata !3112), !dbg !3366
  br i1 %133, label %272, label %655, !dbg !3367

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !3365
  call void @llvm.dbg.label(metadata !3115), !dbg !3369
  br i1 %124, label %520, label %476, !dbg !3370

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !3371

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !3372, !tbaa !1142
  %277 = icmp eq i8 %276, 0, !dbg !3374
  br i1 %277, label %278, label %465, !dbg !3375

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !3376
  br i1 %279, label %280, label %465, !dbg !3378

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3110, metadata !DIExpression()), !dbg !3256
  br label %281, !dbg !3379

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !3110, metadata !DIExpression()), !dbg !3256
  br i1 %133, label %465, label %655, !dbg !3380

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3095, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3110, metadata !DIExpression()), !dbg !3256
  br i1 %132, label %284, label %465, !dbg !3382

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !3383

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !3386
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !3388
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !3388
  %290 = select i1 %288, i64 %146, i64 0, !dbg !3388
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !3080, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !3090, metadata !DIExpression()), !dbg !3149
  %291 = icmp ult i64 %140, %290, !dbg !3389
  br i1 %291, label %292, label %294, !dbg !3392

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3389
  store i8 39, ptr %293, align 1, !dbg !3389, !tbaa !1142
  br label %294, !dbg !3389

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !3392
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !3089, metadata !DIExpression()), !dbg !3149
  %296 = icmp ult i64 %295, %290, !dbg !3393
  br i1 %296, label %297, label %299, !dbg !3396

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !3393
  store i8 92, ptr %298, align 1, !dbg !3393, !tbaa !1142
  br label %299, !dbg !3393

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !3396
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !3089, metadata !DIExpression()), !dbg !3149
  %301 = icmp ult i64 %300, %290, !dbg !3397
  br i1 %301, label %302, label %304, !dbg !3400

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !3397
  store i8 39, ptr %303, align 1, !dbg !3397, !tbaa !1142
  br label %304, !dbg !3397

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !3400
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3098, metadata !DIExpression()), !dbg !3149
  br label %465, !dbg !3401

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !3402

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3116, metadata !DIExpression()), !dbg !3403
  %308 = tail call ptr @__ctype_b_loc() #41, !dbg !3404
  %309 = load ptr, ptr %308, align 8, !dbg !3404, !tbaa !1063
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !3404
  %312 = load i16, ptr %311, align 2, !dbg !3404, !tbaa !1174
  %313 = and i16 %312, 16384, !dbg !3406
  %314 = icmp ne i16 %313, 0, !dbg !3406
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !3118, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3403
  br label %355, !dbg !3407

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !3408
  call void @llvm.dbg.value(metadata ptr %14, metadata !3179, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata ptr %14, metadata !3187, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i32 0, metadata !3190, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i64 8, metadata !3191, metadata !DIExpression()), !dbg !3411
  store i64 0, ptr %14, align 8, !dbg !3413
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3116, metadata !DIExpression()), !dbg !3403
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3118, metadata !DIExpression()), !dbg !3403
  %316 = icmp eq i64 %171, -1, !dbg !3414
  br i1 %316, label %317, label %319, !dbg !3416

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !3417
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !3082, metadata !DIExpression()), !dbg !3149
  br label %319, !dbg !3418

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !3082, metadata !DIExpression()), !dbg !3149
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !3419
  %321 = sub i64 %320, %145, !dbg !3420
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #38, !dbg !3421
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !3126, metadata !DIExpression()), !dbg !3148
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !3422

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3116, metadata !DIExpression()), !dbg !3403
  %324 = icmp ult i64 %145, %320, !dbg !3423
  br i1 %324, label %326, label %351, !dbg !3425

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3118, metadata !DIExpression()), !dbg !3403
  br label %351, !dbg !3426

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !3116, metadata !DIExpression()), !dbg !3403
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !3428
  %330 = load i8, ptr %329, align 1, !dbg !3428, !tbaa !1142
  %331 = icmp eq i8 %330, 0, !dbg !3425
  br i1 %331, label %351, label %332, !dbg !3429

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !3430
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !3116, metadata !DIExpression()), !dbg !3403
  %334 = add i64 %333, %145, !dbg !3431
  %335 = icmp eq i64 %333, %321, !dbg !3423
  br i1 %335, label %351, label %326, !dbg !3425, !llvm.loop !3432

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3127, metadata !DIExpression()), !dbg !3433
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !3434
  %339 = and i1 %338, %132, !dbg !3434
  br i1 %339, label %340, label %347, !dbg !3434

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !3127, metadata !DIExpression()), !dbg !3433
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !3435
  %343 = load i8, ptr %342, align 1, !dbg !3435, !tbaa !1142
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !3437

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !3127, metadata !DIExpression()), !dbg !3433
  %346 = icmp eq i64 %345, %322, !dbg !3439
  br i1 %346, label %347, label %340, !dbg !3440, !llvm.loop !3441

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !3443, !tbaa !1133
  call void @llvm.dbg.value(metadata i32 %348, metadata !3445, metadata !DIExpression()), !dbg !3448
  %349 = call i32 @iswprint(i32 noundef %348) #38, !dbg !3450
  %350 = icmp ne i32 %349, 0, !dbg !3451
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3118, metadata !DIExpression()), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !3116, metadata !DIExpression()), !dbg !3403
  br label %351, !dbg !3452

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3118, metadata !DIExpression()), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !3116, metadata !DIExpression()), !dbg !3403
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3453
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3454
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3118, metadata !DIExpression()), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3116, metadata !DIExpression()), !dbg !3403
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3453
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3454
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !3256
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !3455
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !3455
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3118, metadata !DIExpression()), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !3116, metadata !DIExpression()), !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !3082, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !3110, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3256
  %359 = icmp ult i64 %357, 2, !dbg !3456
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !3457
  br i1 %361, label %461, label %362, !dbg !3457

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !3458
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !3135, metadata !DIExpression()), !dbg !3459
  br label %364, !dbg !3460

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !3149
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !3248
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !3246
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !3256
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !3461
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !3111, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !3109, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !3106, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !3104, metadata !DIExpression()), !dbg !3246
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !3098, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !3089, metadata !DIExpression()), !dbg !3149
  br i1 %360, label %417, label %371, !dbg !3462

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !3467

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3109, metadata !DIExpression()), !dbg !3256
  %373 = and i8 %366, 1, !dbg !3470
  %374 = icmp eq i8 %373, 0, !dbg !3470
  %375 = select i1 %132, i1 %374, i1 false, !dbg !3470
  br i1 %375, label %376, label %392, !dbg !3470

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !3472
  br i1 %377, label %378, label %380, !dbg !3476

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3472
  store i8 39, ptr %379, align 1, !dbg !3472, !tbaa !1142
  br label %380, !dbg !3472

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !3476
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !3089, metadata !DIExpression()), !dbg !3149
  %382 = icmp ult i64 %381, %146, !dbg !3477
  br i1 %382, label %383, label %385, !dbg !3480

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !3477
  store i8 36, ptr %384, align 1, !dbg !3477, !tbaa !1142
  br label %385, !dbg !3477

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !3480
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !3089, metadata !DIExpression()), !dbg !3149
  %387 = icmp ult i64 %386, %146, !dbg !3481
  br i1 %387, label %388, label %390, !dbg !3484

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3481
  store i8 39, ptr %389, align 1, !dbg !3481, !tbaa !1142
  br label %390, !dbg !3481

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !3484
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3098, metadata !DIExpression()), !dbg !3149
  br label %392, !dbg !3485

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !3149
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !3098, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !3089, metadata !DIExpression()), !dbg !3149
  %395 = icmp ult i64 %393, %146, !dbg !3486
  br i1 %395, label %396, label %398, !dbg !3489

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !3486
  store i8 92, ptr %397, align 1, !dbg !3486, !tbaa !1142
  br label %398, !dbg !3486

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !3489
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !3089, metadata !DIExpression()), !dbg !3149
  %400 = icmp ult i64 %399, %146, !dbg !3490
  br i1 %400, label %401, label %405, !dbg !3493

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !3490
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !3490
  store i8 %403, ptr %404, align 1, !dbg !3490, !tbaa !1142
  br label %405, !dbg !3490

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !3493
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !3089, metadata !DIExpression()), !dbg !3149
  %407 = icmp ult i64 %406, %146, !dbg !3494
  br i1 %407, label %408, label %413, !dbg !3497

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !3494
  %411 = or disjoint i8 %410, 48, !dbg !3494
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !3494
  store i8 %411, ptr %412, align 1, !dbg !3494, !tbaa !1142
  br label %413, !dbg !3494

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !3497
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !3089, metadata !DIExpression()), !dbg !3149
  %415 = and i8 %370, 7, !dbg !3498
  %416 = or disjoint i8 %415, 48, !dbg !3499
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !3111, metadata !DIExpression()), !dbg !3256
  br label %426, !dbg !3500

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !3501
  %419 = icmp eq i8 %418, 0, !dbg !3501
  br i1 %419, label %426, label %420, !dbg !3503

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !3504
  br i1 %421, label %422, label %424, !dbg !3508

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3504
  store i8 92, ptr %423, align 1, !dbg !3504, !tbaa !1142
  br label %424, !dbg !3504

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !3508
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3106, metadata !DIExpression()), !dbg !3256
  br label %426, !dbg !3509

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !3149
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !3248
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !3256
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !3256
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !3111, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !3109, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !3106, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !3098, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !3089, metadata !DIExpression()), !dbg !3149
  %432 = add i64 %367, 1, !dbg !3510
  %433 = icmp ugt i64 %363, %432, !dbg !3512
  br i1 %433, label %434, label %463, !dbg !3513

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !3514
  %436 = icmp ne i8 %435, 0, !dbg !3514
  %437 = and i8 %430, 1, !dbg !3514
  %438 = icmp eq i8 %437, 0, !dbg !3514
  %439 = select i1 %436, i1 %438, i1 false, !dbg !3514
  br i1 %439, label %440, label %451, !dbg !3514

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !3517
  br i1 %441, label %442, label %444, !dbg !3521

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !3517
  store i8 39, ptr %443, align 1, !dbg !3517, !tbaa !1142
  br label %444, !dbg !3517

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !3521
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !3089, metadata !DIExpression()), !dbg !3149
  %446 = icmp ult i64 %445, %146, !dbg !3522
  br i1 %446, label %447, label %449, !dbg !3525

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !3522
  store i8 39, ptr %448, align 1, !dbg !3522, !tbaa !1142
  br label %449, !dbg !3522

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !3525
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3098, metadata !DIExpression()), !dbg !3149
  br label %451, !dbg !3526

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !3527
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !3098, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !3089, metadata !DIExpression()), !dbg !3149
  %454 = icmp ult i64 %452, %146, !dbg !3528
  br i1 %454, label %455, label %457, !dbg !3531

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !3528
  store i8 %431, ptr %456, align 1, !dbg !3528, !tbaa !1142
  br label %457, !dbg !3528

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !3531
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !3104, metadata !DIExpression()), !dbg !3246
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !3532
  %460 = load i8, ptr %459, align 1, !dbg !3532, !tbaa !1142
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !3111, metadata !DIExpression()), !dbg !3256
  br label %364, !dbg !3533, !llvm.loop !3534

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !3111, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !3110, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3109, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !3106, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !3104, metadata !DIExpression()), !dbg !3246
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !3098, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !3082, metadata !DIExpression()), !dbg !3149
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !3111, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !3110, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !3109, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !3106, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !3104, metadata !DIExpression()), !dbg !3246
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !3098, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !3082, metadata !DIExpression()), !dbg !3149
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !3537
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !3149
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !3154
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !3149
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !3149
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !3246
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !3256
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !3256
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !3256
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !3080, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !3111, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !3110, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !3109, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !3106, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !3104, metadata !DIExpression()), !dbg !3246
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !3098, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !3095, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !3090, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !3082, metadata !DIExpression()), !dbg !3149
  br i1 %126, label %487, label %476, !dbg !3538

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
  br i1 %137, label %488, label %509, !dbg !3540

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !3541

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
  %499 = lshr i8 %490, 5, !dbg !3542
  %500 = zext nneg i8 %499 to i64, !dbg !3542
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !3543
  %502 = load i32, ptr %501, align 4, !dbg !3543, !tbaa !1133
  %503 = and i8 %490, 31, !dbg !3544
  %504 = zext nneg i8 %503 to i32, !dbg !3544
  %505 = shl nuw i32 1, %504, !dbg !3545
  %506 = and i32 %502, %505, !dbg !3545
  %507 = icmp eq i32 %506, 0, !dbg !3545
  %508 = and i1 %172, %507, !dbg !3546
  br i1 %508, label %558, label %520, !dbg !3546

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
  br i1 %172, label %558, label %520, !dbg !3547

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !3537
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !3149
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !3154
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !3158
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !3248
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !3548
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !3256
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !3256
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !3080, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !3111, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !3110, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !3104, metadata !DIExpression()), !dbg !3246
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !3098, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !3095, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !3090, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !3082, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.label(metadata !3138), !dbg !3549
  br i1 %131, label %530, label %659, !dbg !3550

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3109, metadata !DIExpression()), !dbg !3256
  %531 = and i8 %525, 1, !dbg !3552
  %532 = icmp eq i8 %531, 0, !dbg !3552
  %533 = select i1 %132, i1 %532, i1 false, !dbg !3552
  br i1 %533, label %534, label %550, !dbg !3552

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !3554
  br i1 %535, label %536, label %538, !dbg !3558

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3554
  store i8 39, ptr %537, align 1, !dbg !3554, !tbaa !1142
  br label %538, !dbg !3554

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !3558
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !3089, metadata !DIExpression()), !dbg !3149
  %540 = icmp ult i64 %539, %529, !dbg !3559
  br i1 %540, label %541, label %543, !dbg !3562

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !3559
  store i8 36, ptr %542, align 1, !dbg !3559, !tbaa !1142
  br label %543, !dbg !3559

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !3562
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !3089, metadata !DIExpression()), !dbg !3149
  %545 = icmp ult i64 %544, %529, !dbg !3563
  br i1 %545, label %546, label %548, !dbg !3566

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !3563
  store i8 39, ptr %547, align 1, !dbg !3563, !tbaa !1142
  br label %548, !dbg !3563

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3098, metadata !DIExpression()), !dbg !3149
  br label %550, !dbg !3567

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !3256
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !3098, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !3089, metadata !DIExpression()), !dbg !3149
  %553 = icmp ult i64 %551, %529, !dbg !3568
  br i1 %553, label %554, label %556, !dbg !3571

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !3568
  store i8 92, ptr %555, align 1, !dbg !3568, !tbaa !1142
  br label %556, !dbg !3568

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !3571
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !3080, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !3111, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !3110, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3109, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !3104, metadata !DIExpression()), !dbg !3246
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !3098, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !3095, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !3090, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !3082, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.label(metadata !3139), !dbg !3572
  br label %585, !dbg !3573

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !3537
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !3149
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !3154
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !3158
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !3248
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !3548
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !3256
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !3256
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !3576
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !3080, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !3111, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !3110, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !3109, metadata !DIExpression()), !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !3104, metadata !DIExpression()), !dbg !3246
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !3098, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !3095, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !3090, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !3082, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.label(metadata !3139), !dbg !3572
  %569 = and i8 %563, 1, !dbg !3573
  %570 = icmp ne i8 %569, 0, !dbg !3573
  %571 = and i8 %565, 1, !dbg !3573
  %572 = icmp eq i8 %571, 0, !dbg !3573
  %573 = select i1 %570, i1 %572, i1 false, !dbg !3573
  br i1 %573, label %574, label %585, !dbg !3573

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !3577
  br i1 %575, label %576, label %578, !dbg !3581

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !3577
  store i8 39, ptr %577, align 1, !dbg !3577, !tbaa !1142
  br label %578, !dbg !3577

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !3089, metadata !DIExpression()), !dbg !3149
  %580 = icmp ult i64 %579, %568, !dbg !3582
  br i1 %580, label %581, label %583, !dbg !3585

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !3582
  store i8 39, ptr %582, align 1, !dbg !3582, !tbaa !1142
  br label %583, !dbg !3582

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3098, metadata !DIExpression()), !dbg !3149
  br label %585, !dbg !3586

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !3256
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !3098, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !3089, metadata !DIExpression()), !dbg !3149
  %595 = icmp ult i64 %593, %586, !dbg !3587
  br i1 %595, label %596, label %598, !dbg !3590

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !3587
  store i8 %587, ptr %597, align 1, !dbg !3587, !tbaa !1142
  br label %598, !dbg !3587

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !3089, metadata !DIExpression()), !dbg !3149
  %600 = icmp eq i8 %588, 0, !dbg !3591
  %601 = select i1 %600, i8 0, i8 %143, !dbg !3593
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !3096, metadata !DIExpression()), !dbg !3149
  br label %602, !dbg !3594

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !3537
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !3149
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !3154
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !3158
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !3159
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !3248
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !3548
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !3080, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !3104, metadata !DIExpression()), !dbg !3246
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !3098, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !3096, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !3095, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !3090, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !3082, metadata !DIExpression()), !dbg !3149
  %611 = add i64 %609, 1, !dbg !3595
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !3104, metadata !DIExpression()), !dbg !3246
  br label %138, !dbg !3596, !llvm.loop !3597

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !3080, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !3096, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !3095, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !3090, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3089, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !3082, metadata !DIExpression()), !dbg !3149
  %613 = icmp eq i64 %140, 0, !dbg !3599
  %614 = and i1 %132, %613, !dbg !3601
  %615 = xor i1 %614, true, !dbg !3601
  %616 = select i1 %615, i1 true, i1 %131, !dbg !3601
  br i1 %616, label %617, label %655, !dbg !3601

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !3602
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !3602
  br i1 %621, label %622, label %631, !dbg !3602

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !3604
  %624 = icmp eq i8 %623, 0, !dbg !3604
  br i1 %624, label %627, label %625, !dbg !3607

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !3608
  br label %672, !dbg !3609

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !3610
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !3612
  br i1 %630, label %28, label %631, !dbg !3612

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !3613
  %634 = select i1 %633, i1 %632, i1 false, !dbg !3615
  br i1 %634, label %635, label %650, !dbg !3615

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !3091, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3089, metadata !DIExpression()), !dbg !3149
  %636 = load i8, ptr %119, align 1, !dbg !3616, !tbaa !1142
  %637 = icmp eq i8 %636, 0, !dbg !3619
  br i1 %637, label %650, label %638, !dbg !3619

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !3091, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !3089, metadata !DIExpression()), !dbg !3149
  %642 = icmp ult i64 %641, %146, !dbg !3620
  br i1 %642, label %643, label %645, !dbg !3623

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !3620
  store i8 %639, ptr %644, align 1, !dbg !3620, !tbaa !1142
  br label %645, !dbg !3620

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !3623
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !3089, metadata !DIExpression()), !dbg !3149
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !3624
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !3091, metadata !DIExpression()), !dbg !3149
  %648 = load i8, ptr %647, align 1, !dbg !3616, !tbaa !1142
  %649 = icmp eq i8 %648, 0, !dbg !3619
  br i1 %649, label %650, label %638, !dbg !3619, !llvm.loop !3625

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !3229
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !3089, metadata !DIExpression()), !dbg !3149
  %652 = icmp ult i64 %651, %146, !dbg !3627
  br i1 %652, label %653, label %672, !dbg !3629

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !3630
  store i8 0, ptr %654, align 1, !dbg !3631, !tbaa !1142
  br label %672, !dbg !3630

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !3140), !dbg !3632
  %657 = icmp eq i8 %123, 0, !dbg !3633
  %658 = select i1 %657, i32 2, i32 4, !dbg !3633
  br label %666, !dbg !3633

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !3140), !dbg !3632
  %662 = icmp eq i32 %115, 2, !dbg !3635
  %663 = icmp eq i8 %123, 0, !dbg !3633
  %664 = select i1 %663, i32 2, i32 4, !dbg !3633
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !3633
  br label %666, !dbg !3633

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !3083, metadata !DIExpression()), !dbg !3149
  %670 = and i32 %5, -3, !dbg !3636
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !3637
  br label %672, !dbg !3638

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !3639
}

; Function Attrs: nounwind
declare !dbg !3640 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3643 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3646 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3647 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3651, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3652, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3653, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %0, metadata !3655, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i64 %1, metadata !3660, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata ptr null, metadata !3661, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata ptr %2, metadata !3662, metadata !DIExpression()), !dbg !3668
  %4 = icmp eq ptr %2, null, !dbg !3670
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3670
  call void @llvm.dbg.value(metadata ptr %5, metadata !3663, metadata !DIExpression()), !dbg !3668
  %6 = tail call ptr @__errno_location() #41, !dbg !3671
  %7 = load i32, ptr %6, align 4, !dbg !3671, !tbaa !1133
  call void @llvm.dbg.value(metadata i32 %7, metadata !3664, metadata !DIExpression()), !dbg !3668
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3672
  %9 = load i32, ptr %8, align 4, !dbg !3672, !tbaa !3023
  %10 = or i32 %9, 1, !dbg !3673
  call void @llvm.dbg.value(metadata i32 %10, metadata !3665, metadata !DIExpression()), !dbg !3668
  %11 = load i32, ptr %5, align 8, !dbg !3674, !tbaa !2973
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3675
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3676
  %14 = load ptr, ptr %13, align 8, !dbg !3676, !tbaa !3044
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3677
  %16 = load ptr, ptr %15, align 8, !dbg !3677, !tbaa !3047
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3678
  %18 = add i64 %17, 1, !dbg !3679
  call void @llvm.dbg.value(metadata i64 %18, metadata !3666, metadata !DIExpression()), !dbg !3668
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !3680
  call void @llvm.dbg.value(metadata ptr %19, metadata !3667, metadata !DIExpression()), !dbg !3668
  %20 = load i32, ptr %5, align 8, !dbg !3681, !tbaa !2973
  %21 = load ptr, ptr %13, align 8, !dbg !3682, !tbaa !3044
  %22 = load ptr, ptr %15, align 8, !dbg !3683, !tbaa !3047
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3684
  store i32 %7, ptr %6, align 4, !dbg !3685, !tbaa !1133
  ret ptr %19, !dbg !3686
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3656 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3655, metadata !DIExpression()), !dbg !3687
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3660, metadata !DIExpression()), !dbg !3687
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3661, metadata !DIExpression()), !dbg !3687
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3662, metadata !DIExpression()), !dbg !3687
  %5 = icmp eq ptr %3, null, !dbg !3688
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3688
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3663, metadata !DIExpression()), !dbg !3687
  %7 = tail call ptr @__errno_location() #41, !dbg !3689
  %8 = load i32, ptr %7, align 4, !dbg !3689, !tbaa !1133
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3664, metadata !DIExpression()), !dbg !3687
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3690
  %10 = load i32, ptr %9, align 4, !dbg !3690, !tbaa !3023
  %11 = icmp eq ptr %2, null, !dbg !3691
  %12 = zext i1 %11 to i32, !dbg !3691
  %13 = or i32 %10, %12, !dbg !3692
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3665, metadata !DIExpression()), !dbg !3687
  %14 = load i32, ptr %6, align 8, !dbg !3693, !tbaa !2973
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3694
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3695
  %17 = load ptr, ptr %16, align 8, !dbg !3695, !tbaa !3044
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3696
  %19 = load ptr, ptr %18, align 8, !dbg !3696, !tbaa !3047
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3697
  %21 = add i64 %20, 1, !dbg !3698
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3666, metadata !DIExpression()), !dbg !3687
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !3699
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3667, metadata !DIExpression()), !dbg !3687
  %23 = load i32, ptr %6, align 8, !dbg !3700, !tbaa !2973
  %24 = load ptr, ptr %16, align 8, !dbg !3701, !tbaa !3044
  %25 = load ptr, ptr %18, align 8, !dbg !3702, !tbaa !3047
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3703
  store i32 %8, ptr %7, align 4, !dbg !3704, !tbaa !1133
  br i1 %11, label %28, label %27, !dbg !3705

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3706, !tbaa !1360
  br label %28, !dbg !3708

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3709
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3710 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3715, !tbaa !1063
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3712, metadata !DIExpression()), !dbg !3716
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3713, metadata !DIExpression()), !dbg !3717
  %2 = load i32, ptr @nslots, align 4, !tbaa !1133
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3713, metadata !DIExpression()), !dbg !3717
  %3 = icmp sgt i32 %2, 1, !dbg !3718
  br i1 %3, label %4, label %6, !dbg !3720

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3718
  br label %10, !dbg !3720

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3721
  %8 = load ptr, ptr %7, align 8, !dbg !3721, !tbaa !3723
  %9 = icmp eq ptr %8, @slot0, !dbg !3725
  br i1 %9, label %17, label %16, !dbg !3726

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3713, metadata !DIExpression()), !dbg !3717
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3727
  %13 = load ptr, ptr %12, align 8, !dbg !3727, !tbaa !3723
  tail call void @free(ptr noundef %13) #38, !dbg !3728
  %14 = add nuw nsw i64 %11, 1, !dbg !3729
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3713, metadata !DIExpression()), !dbg !3717
  %15 = icmp eq i64 %14, %5, !dbg !3718
  br i1 %15, label %6, label %10, !dbg !3720, !llvm.loop !3730

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !3732
  store i64 256, ptr @slotvec0, align 8, !dbg !3734, !tbaa !3735
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3736, !tbaa !3723
  br label %17, !dbg !3737

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3738
  br i1 %18, label %20, label %19, !dbg !3740

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !3741
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3743, !tbaa !1063
  br label %20, !dbg !3744

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3745, !tbaa !1133
  ret void, !dbg !3746
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3747 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3749, metadata !DIExpression()), !dbg !3751
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3750, metadata !DIExpression()), !dbg !3751
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3752
  ret ptr %3, !dbg !3753
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3754 {
  %5 = alloca i64, align 8, !DIAssignID !3774
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3768, metadata !DIExpression(), metadata !3774, metadata ptr %5, metadata !DIExpression()), !dbg !3775
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3758, metadata !DIExpression()), !dbg !3776
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3759, metadata !DIExpression()), !dbg !3776
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3760, metadata !DIExpression()), !dbg !3776
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3761, metadata !DIExpression()), !dbg !3776
  %6 = tail call ptr @__errno_location() #41, !dbg !3777
  %7 = load i32, ptr %6, align 4, !dbg !3777, !tbaa !1133
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3762, metadata !DIExpression()), !dbg !3776
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3778, !tbaa !1063
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3763, metadata !DIExpression()), !dbg !3776
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3764, metadata !DIExpression()), !dbg !3776
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3779
  br i1 %9, label %10, label %11, !dbg !3779

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !3781
  unreachable, !dbg !3781

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3782, !tbaa !1133
  %13 = icmp sgt i32 %12, %0, !dbg !3783
  br i1 %13, label %32, label %14, !dbg !3784

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3785
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3765, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3775
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !3786
  %16 = sext i32 %12 to i64, !dbg !3787
  store i64 %16, ptr %5, align 8, !dbg !3788, !tbaa !1360, !DIAssignID !3789
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3768, metadata !DIExpression(), metadata !3789, metadata ptr %5, metadata !DIExpression()), !dbg !3775
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3790
  %18 = add nuw nsw i32 %0, 1, !dbg !3791
  %19 = sub i32 %18, %12, !dbg !3792
  %20 = sext i32 %19 to i64, !dbg !3793
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !3794
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3763, metadata !DIExpression()), !dbg !3776
  store ptr %21, ptr @slotvec, align 8, !dbg !3795, !tbaa !1063
  br i1 %15, label %22, label %23, !dbg !3796

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3797, !tbaa.struct !3799
  br label %23, !dbg !3800

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3801, !tbaa !1133
  %25 = sext i32 %24 to i64, !dbg !3802
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3802
  %27 = load i64, ptr %5, align 8, !dbg !3803, !tbaa !1360
  %28 = sub nsw i64 %27, %25, !dbg !3804
  %29 = shl i64 %28, 4, !dbg !3805
  call void @llvm.dbg.value(metadata ptr %26, metadata !3187, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i32 0, metadata !3190, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 %29, metadata !3191, metadata !DIExpression()), !dbg !3806
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !3808
  %30 = load i64, ptr %5, align 8, !dbg !3809, !tbaa !1360
  %31 = trunc i64 %30 to i32, !dbg !3809
  store i32 %31, ptr @nslots, align 4, !dbg !3810, !tbaa !1133
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !3811
  br label %32, !dbg !3812

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3776
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3763, metadata !DIExpression()), !dbg !3776
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3813
  %36 = load i64, ptr %35, align 8, !dbg !3814, !tbaa !3735
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3769, metadata !DIExpression()), !dbg !3815
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3816
  %38 = load ptr, ptr %37, align 8, !dbg !3816, !tbaa !3723
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3771, metadata !DIExpression()), !dbg !3815
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3817
  %40 = load i32, ptr %39, align 4, !dbg !3817, !tbaa !3023
  %41 = or i32 %40, 1, !dbg !3818
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3772, metadata !DIExpression()), !dbg !3815
  %42 = load i32, ptr %3, align 8, !dbg !3819, !tbaa !2973
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3820
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3821
  %45 = load ptr, ptr %44, align 8, !dbg !3821, !tbaa !3044
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3822
  %47 = load ptr, ptr %46, align 8, !dbg !3822, !tbaa !3047
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3823
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3773, metadata !DIExpression()), !dbg !3815
  %49 = icmp ugt i64 %36, %48, !dbg !3824
  br i1 %49, label %60, label %50, !dbg !3826

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3827
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3769, metadata !DIExpression()), !dbg !3815
  store i64 %51, ptr %35, align 8, !dbg !3829, !tbaa !3735
  %52 = icmp eq ptr %38, @slot0, !dbg !3830
  br i1 %52, label %54, label %53, !dbg !3832

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !3833
  br label %54, !dbg !3833

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !3834
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3771, metadata !DIExpression()), !dbg !3815
  store ptr %55, ptr %37, align 8, !dbg !3835, !tbaa !3723
  %56 = load i32, ptr %3, align 8, !dbg !3836, !tbaa !2973
  %57 = load ptr, ptr %44, align 8, !dbg !3837, !tbaa !3044
  %58 = load ptr, ptr %46, align 8, !dbg !3838, !tbaa !3047
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3839
  br label %60, !dbg !3840

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3815
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3771, metadata !DIExpression()), !dbg !3815
  store i32 %7, ptr %6, align 4, !dbg !3841, !tbaa !1133
  ret ptr %61, !dbg !3842
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #24

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3843 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3847, metadata !DIExpression()), !dbg !3850
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3848, metadata !DIExpression()), !dbg !3850
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3849, metadata !DIExpression()), !dbg !3850
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3851
  ret ptr %4, !dbg !3852
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3853 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3855, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i32 0, metadata !3749, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata ptr %0, metadata !3750, metadata !DIExpression()), !dbg !3857
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3859
  ret ptr %2, !dbg !3860
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3861 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3865, metadata !DIExpression()), !dbg !3867
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3866, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i32 0, metadata !3847, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata ptr %0, metadata !3848, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i64 %1, metadata !3849, metadata !DIExpression()), !dbg !3868
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3870
  ret ptr %3, !dbg !3871
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3872 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3880
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3879, metadata !DIExpression(), metadata !3880, metadata ptr %4, metadata !DIExpression()), !dbg !3881
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3876, metadata !DIExpression()), !dbg !3881
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3877, metadata !DIExpression()), !dbg !3881
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3878, metadata !DIExpression()), !dbg !3881
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3882
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3883), !dbg !3886
  call void @llvm.dbg.value(metadata i32 %1, metadata !3887, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3892, metadata !DIExpression()), !dbg !3895
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3895, !alias.scope !3883, !DIAssignID !3896
  call void @llvm.dbg.assign(metadata i8 0, metadata !3879, metadata !DIExpression(), metadata !3896, metadata ptr %4, metadata !DIExpression()), !dbg !3881
  %5 = icmp eq i32 %1, 10, !dbg !3897
  br i1 %5, label %6, label %7, !dbg !3899

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3900, !noalias !3883
  unreachable, !dbg !3900

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3901, !tbaa !2973, !alias.scope !3883, !DIAssignID !3902
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3879, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3902, metadata ptr %4, metadata !DIExpression()), !dbg !3881
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3903
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3904
  ret ptr %8, !dbg !3905
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3906 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3915
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3914, metadata !DIExpression(), metadata !3915, metadata ptr %5, metadata !DIExpression()), !dbg !3916
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3910, metadata !DIExpression()), !dbg !3916
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3911, metadata !DIExpression()), !dbg !3916
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3912, metadata !DIExpression()), !dbg !3916
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3913, metadata !DIExpression()), !dbg !3916
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3917
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3918), !dbg !3921
  call void @llvm.dbg.value(metadata i32 %1, metadata !3887, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3892, metadata !DIExpression()), !dbg !3924
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3924, !alias.scope !3918, !DIAssignID !3925
  call void @llvm.dbg.assign(metadata i8 0, metadata !3914, metadata !DIExpression(), metadata !3925, metadata ptr %5, metadata !DIExpression()), !dbg !3916
  %6 = icmp eq i32 %1, 10, !dbg !3926
  br i1 %6, label %7, label %8, !dbg !3927

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3928, !noalias !3918
  unreachable, !dbg !3928

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3929, !tbaa !2973, !alias.scope !3918, !DIAssignID !3930
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3914, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3930, metadata ptr %5, metadata !DIExpression()), !dbg !3916
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3931
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3932
  ret ptr %9, !dbg !3933
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3934 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3940
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3938, metadata !DIExpression()), !dbg !3941
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3939, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3879, metadata !DIExpression(), metadata !3940, metadata ptr %3, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 0, metadata !3876, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 %0, metadata !3877, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata ptr %1, metadata !3878, metadata !DIExpression()), !dbg !3942
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3944
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3945), !dbg !3948
  call void @llvm.dbg.value(metadata i32 %0, metadata !3887, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3892, metadata !DIExpression()), !dbg !3951
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3951, !alias.scope !3945, !DIAssignID !3952
  call void @llvm.dbg.assign(metadata i8 0, metadata !3879, metadata !DIExpression(), metadata !3952, metadata ptr %3, metadata !DIExpression()), !dbg !3942
  %4 = icmp eq i32 %0, 10, !dbg !3953
  br i1 %4, label %5, label %6, !dbg !3954

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !3955, !noalias !3945
  unreachable, !dbg !3955

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3956, !tbaa !2973, !alias.scope !3945, !DIAssignID !3957
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3879, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3957, metadata ptr %3, metadata !DIExpression()), !dbg !3942
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3958
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3959
  ret ptr %7, !dbg !3960
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3961 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3968
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3965, metadata !DIExpression()), !dbg !3969
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3966, metadata !DIExpression()), !dbg !3969
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3967, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3914, metadata !DIExpression(), metadata !3968, metadata ptr %4, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 0, metadata !3910, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 %0, metadata !3911, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata ptr %1, metadata !3912, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i64 %2, metadata !3913, metadata !DIExpression()), !dbg !3970
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3972
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3973), !dbg !3976
  call void @llvm.dbg.value(metadata i32 %0, metadata !3887, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3892, metadata !DIExpression()), !dbg !3979
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3979, !alias.scope !3973, !DIAssignID !3980
  call void @llvm.dbg.assign(metadata i8 0, metadata !3914, metadata !DIExpression(), metadata !3980, metadata ptr %4, metadata !DIExpression()), !dbg !3970
  %5 = icmp eq i32 %0, 10, !dbg !3981
  br i1 %5, label %6, label %7, !dbg !3982

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3983, !noalias !3973
  unreachable, !dbg !3983

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3984, !tbaa !2973, !alias.scope !3973, !DIAssignID !3985
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3914, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3985, metadata ptr %4, metadata !DIExpression()), !dbg !3970
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3986
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3987
  ret ptr %8, !dbg !3988
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3989 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3997
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3996, metadata !DIExpression(), metadata !3997, metadata ptr %4, metadata !DIExpression()), !dbg !3998
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3993, metadata !DIExpression()), !dbg !3998
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3994, metadata !DIExpression()), !dbg !3998
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3995, metadata !DIExpression()), !dbg !3998
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4000, !tbaa.struct !4001, !DIAssignID !4002
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3996, metadata !DIExpression(), metadata !4002, metadata ptr %4, metadata !DIExpression()), !dbg !3998
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2990, metadata !DIExpression()), !dbg !4003
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2991, metadata !DIExpression()), !dbg !4003
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2992, metadata !DIExpression()), !dbg !4003
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2993, metadata !DIExpression()), !dbg !4003
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !4005
  %6 = lshr i8 %2, 5, !dbg !4006
  %7 = zext nneg i8 %6 to i64, !dbg !4006
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !4007
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2994, metadata !DIExpression()), !dbg !4003
  %9 = and i8 %2, 31, !dbg !4008
  %10 = zext nneg i8 %9 to i32, !dbg !4008
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2996, metadata !DIExpression()), !dbg !4003
  %11 = load i32, ptr %8, align 4, !dbg !4009, !tbaa !1133
  %12 = lshr i32 %11, %10, !dbg !4010
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2997, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4003
  %13 = and i32 %12, 1, !dbg !4011
  %14 = xor i32 %13, 1, !dbg !4011
  %15 = shl nuw i32 %14, %10, !dbg !4012
  %16 = xor i32 %15, %11, !dbg !4013
  store i32 %16, ptr %8, align 4, !dbg !4013, !tbaa !1133
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !4014
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4015
  ret ptr %17, !dbg !4016
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !4017 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4023
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4021, metadata !DIExpression()), !dbg !4024
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !4022, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3996, metadata !DIExpression(), metadata !4023, metadata ptr %3, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata ptr %0, metadata !3993, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i64 -1, metadata !3994, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i8 %1, metadata !3995, metadata !DIExpression()), !dbg !4025
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !4027
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4028, !tbaa.struct !4001, !DIAssignID !4029
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3996, metadata !DIExpression(), metadata !4029, metadata ptr %3, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata ptr %3, metadata !2990, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i8 %1, metadata !2991, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i32 1, metadata !2992, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i8 %1, metadata !2993, metadata !DIExpression()), !dbg !4030
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4032
  %5 = lshr i8 %1, 5, !dbg !4033
  %6 = zext nneg i8 %5 to i64, !dbg !4033
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !4034
  call void @llvm.dbg.value(metadata ptr %7, metadata !2994, metadata !DIExpression()), !dbg !4030
  %8 = and i8 %1, 31, !dbg !4035
  %9 = zext nneg i8 %8 to i32, !dbg !4035
  call void @llvm.dbg.value(metadata i32 %9, metadata !2996, metadata !DIExpression()), !dbg !4030
  %10 = load i32, ptr %7, align 4, !dbg !4036, !tbaa !1133
  %11 = lshr i32 %10, %9, !dbg !4037
  call void @llvm.dbg.value(metadata i32 %11, metadata !2997, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4030
  %12 = and i32 %11, 1, !dbg !4038
  %13 = xor i32 %12, 1, !dbg !4038
  %14 = shl nuw i32 %13, %9, !dbg !4039
  %15 = xor i32 %14, %10, !dbg !4040
  store i32 %15, ptr %7, align 4, !dbg !4040, !tbaa !1133
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4041
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4042
  ret ptr %16, !dbg !4043
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4044 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !4047
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4046, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata ptr %0, metadata !4021, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i8 58, metadata !4022, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3996, metadata !DIExpression(), metadata !4047, metadata ptr %2, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata ptr %0, metadata !3993, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i64 -1, metadata !3994, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i8 58, metadata !3995, metadata !DIExpression()), !dbg !4051
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !4053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4054, !tbaa.struct !4001, !DIAssignID !4055
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3996, metadata !DIExpression(), metadata !4055, metadata ptr %2, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata ptr %2, metadata !2990, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i8 58, metadata !2991, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i32 1, metadata !2992, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i8 58, metadata !2993, metadata !DIExpression()), !dbg !4056
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4058
  call void @llvm.dbg.value(metadata ptr %3, metadata !2994, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i32 26, metadata !2996, metadata !DIExpression()), !dbg !4056
  %4 = load i32, ptr %3, align 4, !dbg !4059, !tbaa !1133
  call void @llvm.dbg.value(metadata i32 %4, metadata !2997, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4056
  %5 = or i32 %4, 67108864, !dbg !4060
  store i32 %5, ptr %3, align 4, !dbg !4060, !tbaa !1133
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4061
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !4062
  ret ptr %6, !dbg !4063
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4064 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4068
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4066, metadata !DIExpression()), !dbg !4069
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4067, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3996, metadata !DIExpression(), metadata !4068, metadata ptr %3, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata ptr %0, metadata !3993, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i64 %1, metadata !3994, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i8 58, metadata !3995, metadata !DIExpression()), !dbg !4070
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !4072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4073, !tbaa.struct !4001, !DIAssignID !4074
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3996, metadata !DIExpression(), metadata !4074, metadata ptr %3, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata ptr %3, metadata !2990, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i8 58, metadata !2991, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i32 1, metadata !2992, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i8 58, metadata !2993, metadata !DIExpression()), !dbg !4075
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4077
  call void @llvm.dbg.value(metadata ptr %4, metadata !2994, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i32 26, metadata !2996, metadata !DIExpression()), !dbg !4075
  %5 = load i32, ptr %4, align 4, !dbg !4078, !tbaa !1133
  call void @llvm.dbg.value(metadata i32 %5, metadata !2997, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4075
  %6 = or i32 %5, 67108864, !dbg !4079
  store i32 %6, ptr %4, align 4, !dbg !4079, !tbaa !1133
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4080
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4081
  ret ptr %7, !dbg !4082
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4083 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4089
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4088, metadata !DIExpression(), metadata !4089, metadata ptr %4, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3892, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4091
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4085, metadata !DIExpression()), !dbg !4090
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4086, metadata !DIExpression()), !dbg !4090
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4087, metadata !DIExpression()), !dbg !4090
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4093
  call void @llvm.dbg.value(metadata i32 %1, metadata !3887, metadata !DIExpression()), !dbg !4094
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3892, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4094
  %5 = icmp eq i32 %1, 10, !dbg !4095
  br i1 %5, label %6, label %7, !dbg !4096

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4097, !noalias !4098
  unreachable, !dbg !4097

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3892, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4094
  store i32 %1, ptr %4, align 8, !dbg !4101, !tbaa.struct !4001, !DIAssignID !4102
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4101
  call void @llvm.dbg.assign(metadata i32 %1, metadata !4088, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4102, metadata ptr %4, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4088, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !4103, metadata ptr %8, metadata !DIExpression()), !dbg !4090
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2990, metadata !DIExpression()), !dbg !4104
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2991, metadata !DIExpression()), !dbg !4104
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2992, metadata !DIExpression()), !dbg !4104
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2993, metadata !DIExpression()), !dbg !4104
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4106
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2994, metadata !DIExpression()), !dbg !4104
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2996, metadata !DIExpression()), !dbg !4104
  %10 = load i32, ptr %9, align 4, !dbg !4107, !tbaa !1133
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2997, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4104
  %11 = or i32 %10, 67108864, !dbg !4108
  store i32 %11, ptr %9, align 4, !dbg !4108, !tbaa !1133, !DIAssignID !4109
  call void @llvm.dbg.assign(metadata i32 %11, metadata !4088, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !4109, metadata ptr %9, metadata !DIExpression()), !dbg !4090
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4110
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4111
  ret ptr %12, !dbg !4112
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4113 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4121
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4117, metadata !DIExpression()), !dbg !4122
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4118, metadata !DIExpression()), !dbg !4122
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4119, metadata !DIExpression()), !dbg !4122
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4120, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4123, metadata !DIExpression(), metadata !4121, metadata ptr %5, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i32 %0, metadata !4128, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %1, metadata !4129, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %2, metadata !4130, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %3, metadata !4131, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 -1, metadata !4132, metadata !DIExpression()), !dbg !4133
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !4135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4136, !tbaa.struct !4001, !DIAssignID !4137
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4123, metadata !DIExpression(), metadata !4137, metadata ptr %5, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4138, metadata ptr undef, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %5, metadata !3030, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata ptr %1, metadata !3031, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata ptr %2, metadata !3032, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata ptr %5, metadata !3030, metadata !DIExpression()), !dbg !4139
  store i32 10, ptr %5, align 8, !dbg !4141, !tbaa !2973, !DIAssignID !4142
  call void @llvm.dbg.assign(metadata i32 10, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4142, metadata ptr %5, metadata !DIExpression()), !dbg !4133
  %6 = icmp ne ptr %1, null, !dbg !4143
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4144
  br i1 %8, label %10, label %9, !dbg !4144

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !4145
  unreachable, !dbg !4145

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4146
  store ptr %1, ptr %11, align 8, !dbg !4147, !tbaa !3044, !DIAssignID !4148
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4148, metadata ptr %11, metadata !DIExpression()), !dbg !4133
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4149
  store ptr %2, ptr %12, align 8, !dbg !4150, !tbaa !3047, !DIAssignID !4151
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4151, metadata ptr %12, metadata !DIExpression()), !dbg !4133
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4152
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !4153
  ret ptr %13, !dbg !4154
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4124 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !4155
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4123, metadata !DIExpression(), metadata !4155, metadata ptr %6, metadata !DIExpression()), !dbg !4156
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4128, metadata !DIExpression()), !dbg !4156
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4129, metadata !DIExpression()), !dbg !4156
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4130, metadata !DIExpression()), !dbg !4156
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4131, metadata !DIExpression()), !dbg !4156
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !4132, metadata !DIExpression()), !dbg !4156
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !4157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4158, !tbaa.struct !4001, !DIAssignID !4159
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4123, metadata !DIExpression(), metadata !4159, metadata ptr %6, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4160, metadata ptr undef, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata ptr %6, metadata !3030, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata ptr %1, metadata !3031, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata ptr %2, metadata !3032, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata ptr %6, metadata !3030, metadata !DIExpression()), !dbg !4161
  store i32 10, ptr %6, align 8, !dbg !4163, !tbaa !2973, !DIAssignID !4164
  call void @llvm.dbg.assign(metadata i32 10, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4164, metadata ptr %6, metadata !DIExpression()), !dbg !4156
  %7 = icmp ne ptr %1, null, !dbg !4165
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4166
  br i1 %9, label %11, label %10, !dbg !4166

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !4167
  unreachable, !dbg !4167

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4168
  store ptr %1, ptr %12, align 8, !dbg !4169, !tbaa !3044, !DIAssignID !4170
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4170, metadata ptr %12, metadata !DIExpression()), !dbg !4156
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4171
  store ptr %2, ptr %13, align 8, !dbg !4172, !tbaa !3047, !DIAssignID !4173
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4173, metadata ptr %13, metadata !DIExpression()), !dbg !4156
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4174
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !4175
  ret ptr %14, !dbg !4176
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4177 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4184
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4181, metadata !DIExpression()), !dbg !4185
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4182, metadata !DIExpression()), !dbg !4185
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4183, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i32 0, metadata !4117, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata ptr %0, metadata !4118, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata ptr %1, metadata !4119, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata ptr %2, metadata !4120, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4123, metadata !DIExpression(), metadata !4184, metadata ptr %4, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata ptr %0, metadata !4129, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata ptr %1, metadata !4130, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata ptr %2, metadata !4131, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata i64 -1, metadata !4132, metadata !DIExpression()), !dbg !4188
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4191, !tbaa.struct !4001, !DIAssignID !4192
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4123, metadata !DIExpression(), metadata !4192, metadata ptr %4, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4193, metadata ptr undef, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata ptr %4, metadata !3030, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata ptr %0, metadata !3031, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata ptr %1, metadata !3032, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata ptr %4, metadata !3030, metadata !DIExpression()), !dbg !4194
  store i32 10, ptr %4, align 8, !dbg !4196, !tbaa !2973, !DIAssignID !4197
  call void @llvm.dbg.assign(metadata i32 10, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4197, metadata ptr %4, metadata !DIExpression()), !dbg !4188
  %5 = icmp ne ptr %0, null, !dbg !4198
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4199
  br i1 %7, label %9, label %8, !dbg !4199

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4200
  unreachable, !dbg !4200

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4201
  store ptr %0, ptr %10, align 8, !dbg !4202, !tbaa !3044, !DIAssignID !4203
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4203, metadata ptr %10, metadata !DIExpression()), !dbg !4188
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4204
  store ptr %1, ptr %11, align 8, !dbg !4205, !tbaa !3047, !DIAssignID !4206
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4206, metadata ptr %11, metadata !DIExpression()), !dbg !4188
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4207
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4208
  ret ptr %12, !dbg !4209
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4210 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4218
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4214, metadata !DIExpression()), !dbg !4219
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4215, metadata !DIExpression()), !dbg !4219
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4216, metadata !DIExpression()), !dbg !4219
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4217, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4123, metadata !DIExpression(), metadata !4218, metadata ptr %5, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata ptr %0, metadata !4129, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata ptr %1, metadata !4130, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata ptr %2, metadata !4131, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i64 %3, metadata !4132, metadata !DIExpression()), !dbg !4220
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !4222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4223, !tbaa.struct !4001, !DIAssignID !4224
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4123, metadata !DIExpression(), metadata !4224, metadata ptr %5, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4225, metadata ptr undef, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata ptr %5, metadata !3030, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata ptr %0, metadata !3031, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata ptr %1, metadata !3032, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata ptr %5, metadata !3030, metadata !DIExpression()), !dbg !4226
  store i32 10, ptr %5, align 8, !dbg !4228, !tbaa !2973, !DIAssignID !4229
  call void @llvm.dbg.assign(metadata i32 10, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4229, metadata ptr %5, metadata !DIExpression()), !dbg !4220
  %6 = icmp ne ptr %0, null, !dbg !4230
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4231
  br i1 %8, label %10, label %9, !dbg !4231

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !4232
  unreachable, !dbg !4232

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4233
  store ptr %0, ptr %11, align 8, !dbg !4234, !tbaa !3044, !DIAssignID !4235
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4235, metadata ptr %11, metadata !DIExpression()), !dbg !4220
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4236
  store ptr %1, ptr %12, align 8, !dbg !4237, !tbaa !3047, !DIAssignID !4238
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4238, metadata ptr %12, metadata !DIExpression()), !dbg !4220
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4239
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !4240
  ret ptr %13, !dbg !4241
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4242 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4246, metadata !DIExpression()), !dbg !4249
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4247, metadata !DIExpression()), !dbg !4249
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4248, metadata !DIExpression()), !dbg !4249
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4250
  ret ptr %4, !dbg !4251
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4252 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4256, metadata !DIExpression()), !dbg !4258
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4257, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i32 0, metadata !4246, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata ptr %0, metadata !4247, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata i64 %1, metadata !4248, metadata !DIExpression()), !dbg !4259
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4261
  ret ptr %3, !dbg !4262
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4263 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4267, metadata !DIExpression()), !dbg !4269
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4268, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i32 %0, metadata !4246, metadata !DIExpression()), !dbg !4270
  call void @llvm.dbg.value(metadata ptr %1, metadata !4247, metadata !DIExpression()), !dbg !4270
  call void @llvm.dbg.value(metadata i64 -1, metadata !4248, metadata !DIExpression()), !dbg !4270
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4272
  ret ptr %3, !dbg !4273
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4274 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4278, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i32 0, metadata !4267, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr %0, metadata !4268, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 0, metadata !4246, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata ptr %0, metadata !4247, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i64 -1, metadata !4248, metadata !DIExpression()), !dbg !4282
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4284
  ret ptr %2, !dbg !4285
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4286 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4325, metadata !DIExpression()), !dbg !4331
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4326, metadata !DIExpression()), !dbg !4331
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4327, metadata !DIExpression()), !dbg !4331
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4328, metadata !DIExpression()), !dbg !4331
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4329, metadata !DIExpression()), !dbg !4331
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4330, metadata !DIExpression()), !dbg !4331
  %7 = icmp eq ptr %1, null, !dbg !4332
  br i1 %7, label %10, label %8, !dbg !4334

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.119, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !4335
  br label %12, !dbg !4335

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.120, ptr noundef %2, ptr noundef %3) #38, !dbg !4336
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.3.122, i32 noundef 5) #38, !dbg !4337
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !4337
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %0), !dbg !4338
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.5.124, i32 noundef 5) #38, !dbg !4339
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.125) #38, !dbg !4339
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %0), !dbg !4340
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
  ], !dbg !4341

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.7.126, i32 noundef 5) #38, !dbg !4342
  %21 = load ptr, ptr %4, align 8, !dbg !4342, !tbaa !1063
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !4342
  br label %147, !dbg !4344

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.8.127, i32 noundef 5) #38, !dbg !4345
  %25 = load ptr, ptr %4, align 8, !dbg !4345, !tbaa !1063
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4345
  %27 = load ptr, ptr %26, align 8, !dbg !4345, !tbaa !1063
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !4345
  br label %147, !dbg !4346

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.9.128, i32 noundef 5) #38, !dbg !4347
  %31 = load ptr, ptr %4, align 8, !dbg !4347, !tbaa !1063
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4347
  %33 = load ptr, ptr %32, align 8, !dbg !4347, !tbaa !1063
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4347
  %35 = load ptr, ptr %34, align 8, !dbg !4347, !tbaa !1063
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !4347
  br label %147, !dbg !4348

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.10.129, i32 noundef 5) #38, !dbg !4349
  %39 = load ptr, ptr %4, align 8, !dbg !4349, !tbaa !1063
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4349
  %41 = load ptr, ptr %40, align 8, !dbg !4349, !tbaa !1063
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4349
  %43 = load ptr, ptr %42, align 8, !dbg !4349, !tbaa !1063
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4349
  %45 = load ptr, ptr %44, align 8, !dbg !4349, !tbaa !1063
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !4349
  br label %147, !dbg !4350

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.11.130, i32 noundef 5) #38, !dbg !4351
  %49 = load ptr, ptr %4, align 8, !dbg !4351, !tbaa !1063
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4351
  %51 = load ptr, ptr %50, align 8, !dbg !4351, !tbaa !1063
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4351
  %53 = load ptr, ptr %52, align 8, !dbg !4351, !tbaa !1063
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4351
  %55 = load ptr, ptr %54, align 8, !dbg !4351, !tbaa !1063
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4351
  %57 = load ptr, ptr %56, align 8, !dbg !4351, !tbaa !1063
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !4351
  br label %147, !dbg !4352

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.12.131, i32 noundef 5) #38, !dbg !4353
  %61 = load ptr, ptr %4, align 8, !dbg !4353, !tbaa !1063
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4353
  %63 = load ptr, ptr %62, align 8, !dbg !4353, !tbaa !1063
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4353
  %65 = load ptr, ptr %64, align 8, !dbg !4353, !tbaa !1063
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4353
  %67 = load ptr, ptr %66, align 8, !dbg !4353, !tbaa !1063
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4353
  %69 = load ptr, ptr %68, align 8, !dbg !4353, !tbaa !1063
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4353
  %71 = load ptr, ptr %70, align 8, !dbg !4353, !tbaa !1063
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !4353
  br label %147, !dbg !4354

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.13.132, i32 noundef 5) #38, !dbg !4355
  %75 = load ptr, ptr %4, align 8, !dbg !4355, !tbaa !1063
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4355
  %77 = load ptr, ptr %76, align 8, !dbg !4355, !tbaa !1063
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4355
  %79 = load ptr, ptr %78, align 8, !dbg !4355, !tbaa !1063
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4355
  %81 = load ptr, ptr %80, align 8, !dbg !4355, !tbaa !1063
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4355
  %83 = load ptr, ptr %82, align 8, !dbg !4355, !tbaa !1063
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4355
  %85 = load ptr, ptr %84, align 8, !dbg !4355, !tbaa !1063
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4355
  %87 = load ptr, ptr %86, align 8, !dbg !4355, !tbaa !1063
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !4355
  br label %147, !dbg !4356

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.14.133, i32 noundef 5) #38, !dbg !4357
  %91 = load ptr, ptr %4, align 8, !dbg !4357, !tbaa !1063
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4357
  %93 = load ptr, ptr %92, align 8, !dbg !4357, !tbaa !1063
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4357
  %95 = load ptr, ptr %94, align 8, !dbg !4357, !tbaa !1063
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4357
  %97 = load ptr, ptr %96, align 8, !dbg !4357, !tbaa !1063
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4357
  %99 = load ptr, ptr %98, align 8, !dbg !4357, !tbaa !1063
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4357
  %101 = load ptr, ptr %100, align 8, !dbg !4357, !tbaa !1063
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4357
  %103 = load ptr, ptr %102, align 8, !dbg !4357, !tbaa !1063
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4357
  %105 = load ptr, ptr %104, align 8, !dbg !4357, !tbaa !1063
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !4357
  br label %147, !dbg !4358

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.15.134, i32 noundef 5) #38, !dbg !4359
  %109 = load ptr, ptr %4, align 8, !dbg !4359, !tbaa !1063
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4359
  %111 = load ptr, ptr %110, align 8, !dbg !4359, !tbaa !1063
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4359
  %113 = load ptr, ptr %112, align 8, !dbg !4359, !tbaa !1063
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4359
  %115 = load ptr, ptr %114, align 8, !dbg !4359, !tbaa !1063
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4359
  %117 = load ptr, ptr %116, align 8, !dbg !4359, !tbaa !1063
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4359
  %119 = load ptr, ptr %118, align 8, !dbg !4359, !tbaa !1063
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4359
  %121 = load ptr, ptr %120, align 8, !dbg !4359, !tbaa !1063
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4359
  %123 = load ptr, ptr %122, align 8, !dbg !4359, !tbaa !1063
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4359
  %125 = load ptr, ptr %124, align 8, !dbg !4359, !tbaa !1063
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !4359
  br label %147, !dbg !4360

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.16.135, i32 noundef 5) #38, !dbg !4361
  %129 = load ptr, ptr %4, align 8, !dbg !4361, !tbaa !1063
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4361
  %131 = load ptr, ptr %130, align 8, !dbg !4361, !tbaa !1063
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4361
  %133 = load ptr, ptr %132, align 8, !dbg !4361, !tbaa !1063
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4361
  %135 = load ptr, ptr %134, align 8, !dbg !4361, !tbaa !1063
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4361
  %137 = load ptr, ptr %136, align 8, !dbg !4361, !tbaa !1063
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4361
  %139 = load ptr, ptr %138, align 8, !dbg !4361, !tbaa !1063
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4361
  %141 = load ptr, ptr %140, align 8, !dbg !4361, !tbaa !1063
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4361
  %143 = load ptr, ptr %142, align 8, !dbg !4361, !tbaa !1063
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4361
  %145 = load ptr, ptr %144, align 8, !dbg !4361, !tbaa !1063
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !4361
  br label %147, !dbg !4362

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4363
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4364 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4368, metadata !DIExpression()), !dbg !4374
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4369, metadata !DIExpression()), !dbg !4374
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4370, metadata !DIExpression()), !dbg !4374
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4371, metadata !DIExpression()), !dbg !4374
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4372, metadata !DIExpression()), !dbg !4374
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4373, metadata !DIExpression()), !dbg !4374
  br label %6, !dbg !4375

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4377
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4373, metadata !DIExpression()), !dbg !4374
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4378
  %9 = load ptr, ptr %8, align 8, !dbg !4378, !tbaa !1063
  %10 = icmp eq ptr %9, null, !dbg !4380
  %11 = add i64 %7, 1, !dbg !4381
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4373, metadata !DIExpression()), !dbg !4374
  br i1 %10, label %12, label %6, !dbg !4380, !llvm.loop !4382

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4384
  ret void, !dbg !4385
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4386 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !4405
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4403, metadata !DIExpression(), metadata !4405, metadata ptr %6, metadata !DIExpression()), !dbg !4406
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4397, metadata !DIExpression()), !dbg !4406
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4398, metadata !DIExpression()), !dbg !4406
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4399, metadata !DIExpression()), !dbg !4406
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4400, metadata !DIExpression()), !dbg !4406
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4401, metadata !DIExpression()), !dbg !4406
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !4407
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4402, metadata !DIExpression()), !dbg !4406
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4402, metadata !DIExpression()), !dbg !4406
  %10 = icmp ult i32 %9, 41, !dbg !4408
  br i1 %10, label %11, label %16, !dbg !4408

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4408
  %13 = zext nneg i32 %9 to i64, !dbg !4408
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4408
  %15 = add nuw nsw i32 %9, 8, !dbg !4408
  store i32 %15, ptr %4, align 8, !dbg !4408
  br label %19, !dbg !4408

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4408
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4408
  store ptr %18, ptr %7, align 8, !dbg !4408
  br label %19, !dbg !4408

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4408
  %22 = load ptr, ptr %21, align 8, !dbg !4408
  store ptr %22, ptr %6, align 16, !dbg !4411, !tbaa !1063
  %23 = icmp eq ptr %22, null, !dbg !4412
  br i1 %23, label %128, label %24, !dbg !4413

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4402, metadata !DIExpression()), !dbg !4406
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4402, metadata !DIExpression()), !dbg !4406
  %25 = icmp ult i32 %20, 41, !dbg !4408
  br i1 %25, label %29, label %26, !dbg !4408

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4408
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4408
  store ptr %28, ptr %7, align 8, !dbg !4408
  br label %34, !dbg !4408

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4408
  %31 = zext nneg i32 %20 to i64, !dbg !4408
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4408
  %33 = add nuw nsw i32 %20, 8, !dbg !4408
  store i32 %33, ptr %4, align 8, !dbg !4408
  br label %34, !dbg !4408

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4408
  %37 = load ptr, ptr %36, align 8, !dbg !4408
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4414
  store ptr %37, ptr %38, align 8, !dbg !4411, !tbaa !1063
  %39 = icmp eq ptr %37, null, !dbg !4412
  br i1 %39, label %128, label %40, !dbg !4413

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4402, metadata !DIExpression()), !dbg !4406
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4402, metadata !DIExpression()), !dbg !4406
  %41 = icmp ult i32 %35, 41, !dbg !4408
  br i1 %41, label %45, label %42, !dbg !4408

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4408
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4408
  store ptr %44, ptr %7, align 8, !dbg !4408
  br label %50, !dbg !4408

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4408
  %47 = zext nneg i32 %35 to i64, !dbg !4408
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4408
  %49 = add nuw nsw i32 %35, 8, !dbg !4408
  store i32 %49, ptr %4, align 8, !dbg !4408
  br label %50, !dbg !4408

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4408
  %53 = load ptr, ptr %52, align 8, !dbg !4408
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4414
  store ptr %53, ptr %54, align 16, !dbg !4411, !tbaa !1063
  %55 = icmp eq ptr %53, null, !dbg !4412
  br i1 %55, label %128, label %56, !dbg !4413

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4402, metadata !DIExpression()), !dbg !4406
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4402, metadata !DIExpression()), !dbg !4406
  %57 = icmp ult i32 %51, 41, !dbg !4408
  br i1 %57, label %61, label %58, !dbg !4408

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4408
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4408
  store ptr %60, ptr %7, align 8, !dbg !4408
  br label %66, !dbg !4408

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4408
  %63 = zext nneg i32 %51 to i64, !dbg !4408
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4408
  %65 = add nuw nsw i32 %51, 8, !dbg !4408
  store i32 %65, ptr %4, align 8, !dbg !4408
  br label %66, !dbg !4408

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4408
  %69 = load ptr, ptr %68, align 8, !dbg !4408
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4414
  store ptr %69, ptr %70, align 8, !dbg !4411, !tbaa !1063
  %71 = icmp eq ptr %69, null, !dbg !4412
  br i1 %71, label %128, label %72, !dbg !4413

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4402, metadata !DIExpression()), !dbg !4406
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4402, metadata !DIExpression()), !dbg !4406
  %73 = icmp ult i32 %67, 41, !dbg !4408
  br i1 %73, label %77, label %74, !dbg !4408

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4408
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4408
  store ptr %76, ptr %7, align 8, !dbg !4408
  br label %82, !dbg !4408

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4408
  %79 = zext nneg i32 %67 to i64, !dbg !4408
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4408
  %81 = add nuw nsw i32 %67, 8, !dbg !4408
  store i32 %81, ptr %4, align 8, !dbg !4408
  br label %82, !dbg !4408

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4408
  %85 = load ptr, ptr %84, align 8, !dbg !4408
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4414
  store ptr %85, ptr %86, align 16, !dbg !4411, !tbaa !1063
  %87 = icmp eq ptr %85, null, !dbg !4412
  br i1 %87, label %128, label %88, !dbg !4413

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4402, metadata !DIExpression()), !dbg !4406
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4402, metadata !DIExpression()), !dbg !4406
  %89 = icmp ult i32 %83, 41, !dbg !4408
  br i1 %89, label %93, label %90, !dbg !4408

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4408
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4408
  store ptr %92, ptr %7, align 8, !dbg !4408
  br label %98, !dbg !4408

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4408
  %95 = zext nneg i32 %83 to i64, !dbg !4408
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4408
  %97 = add nuw nsw i32 %83, 8, !dbg !4408
  store i32 %97, ptr %4, align 8, !dbg !4408
  br label %98, !dbg !4408

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4408
  %100 = load ptr, ptr %99, align 8, !dbg !4408
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4414
  store ptr %100, ptr %101, align 8, !dbg !4411, !tbaa !1063
  %102 = icmp eq ptr %100, null, !dbg !4412
  br i1 %102, label %128, label %103, !dbg !4413

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4402, metadata !DIExpression()), !dbg !4406
  %104 = load ptr, ptr %7, align 8, !dbg !4408
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4408
  store ptr %105, ptr %7, align 8, !dbg !4408
  %106 = load ptr, ptr %104, align 8, !dbg !4408
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4414
  store ptr %106, ptr %107, align 16, !dbg !4411, !tbaa !1063
  %108 = icmp eq ptr %106, null, !dbg !4412
  br i1 %108, label %128, label %109, !dbg !4413

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4402, metadata !DIExpression()), !dbg !4406
  %110 = load ptr, ptr %7, align 8, !dbg !4408
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4408
  store ptr %111, ptr %7, align 8, !dbg !4408
  %112 = load ptr, ptr %110, align 8, !dbg !4408
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4414
  store ptr %112, ptr %113, align 8, !dbg !4411, !tbaa !1063
  %114 = icmp eq ptr %112, null, !dbg !4412
  br i1 %114, label %128, label %115, !dbg !4413

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4402, metadata !DIExpression()), !dbg !4406
  %116 = load ptr, ptr %7, align 8, !dbg !4408
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4408
  store ptr %117, ptr %7, align 8, !dbg !4408
  %118 = load ptr, ptr %116, align 8, !dbg !4408
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4414
  store ptr %118, ptr %119, align 16, !dbg !4411, !tbaa !1063
  %120 = icmp eq ptr %118, null, !dbg !4412
  br i1 %120, label %128, label %121, !dbg !4413

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4402, metadata !DIExpression()), !dbg !4406
  %122 = load ptr, ptr %7, align 8, !dbg !4408
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4408
  store ptr %123, ptr %7, align 8, !dbg !4408
  %124 = load ptr, ptr %122, align 8, !dbg !4408
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4414
  store ptr %124, ptr %125, align 8, !dbg !4411, !tbaa !1063
  %126 = icmp eq ptr %124, null, !dbg !4412
  %127 = select i1 %126, i64 9, i64 10, !dbg !4413
  br label %128, !dbg !4413

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4415
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4416
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !4417
  ret void, !dbg !4417
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4418 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4431
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4426, metadata !DIExpression(), metadata !4431, metadata ptr %5, metadata !DIExpression()), !dbg !4432
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4422, metadata !DIExpression()), !dbg !4432
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4423, metadata !DIExpression()), !dbg !4432
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4424, metadata !DIExpression()), !dbg !4432
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4425, metadata !DIExpression()), !dbg !4432
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #38, !dbg !4433
  call void @llvm.va_start(ptr nonnull %5), !dbg !4434
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4435
  call void @llvm.va_end(ptr nonnull %5), !dbg !4436
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #38, !dbg !4437
  ret void, !dbg !4437
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4438 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4439, !tbaa !1063
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %1), !dbg !4439
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.17.140, i32 noundef 5) #38, !dbg !4440
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.141) #38, !dbg !4440
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.19.142, i32 noundef 5) #38, !dbg !4441
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.143, ptr noundef nonnull @.str.21.144) #38, !dbg !4441
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.22.145, i32 noundef 5) #38, !dbg !4442
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.146) #38, !dbg !4442
  ret void, !dbg !4443
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4444 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4449, metadata !DIExpression()), !dbg !4452
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4450, metadata !DIExpression()), !dbg !4452
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4451, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata ptr %0, metadata !4453, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i64 %1, metadata !4456, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i64 %2, metadata !4457, metadata !DIExpression()), !dbg !4458
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4460
  call void @llvm.dbg.value(metadata ptr %4, metadata !4461, metadata !DIExpression()), !dbg !4466
  %5 = icmp eq ptr %4, null, !dbg !4468
  br i1 %5, label %6, label %7, !dbg !4470

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4471
  unreachable, !dbg !4471

7:                                                ; preds = %3
  ret ptr %4, !dbg !4472
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4454 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4453, metadata !DIExpression()), !dbg !4473
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4456, metadata !DIExpression()), !dbg !4473
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4457, metadata !DIExpression()), !dbg !4473
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4474
  call void @llvm.dbg.value(metadata ptr %4, metadata !4461, metadata !DIExpression()), !dbg !4475
  %5 = icmp eq ptr %4, null, !dbg !4477
  br i1 %5, label %6, label %7, !dbg !4478

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4479
  unreachable, !dbg !4479

7:                                                ; preds = %3
  ret ptr %4, !dbg !4480
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4481 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4485, metadata !DIExpression()), !dbg !4486
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4487
  call void @llvm.dbg.value(metadata ptr %2, metadata !4461, metadata !DIExpression()), !dbg !4488
  %3 = icmp eq ptr %2, null, !dbg !4490
  br i1 %3, label %4, label %5, !dbg !4491

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4492
  unreachable, !dbg !4492

5:                                                ; preds = %1
  ret ptr %2, !dbg !4493
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4494 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4495 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4499, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i64 %0, metadata !4501, metadata !DIExpression()), !dbg !4505
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4507
  call void @llvm.dbg.value(metadata ptr %2, metadata !4461, metadata !DIExpression()), !dbg !4508
  %3 = icmp eq ptr %2, null, !dbg !4510
  br i1 %3, label %4, label %5, !dbg !4511

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4512
  unreachable, !dbg !4512

5:                                                ; preds = %1
  ret ptr %2, !dbg !4513
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4514 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4518, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata i64 %0, metadata !4485, metadata !DIExpression()), !dbg !4520
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4522
  call void @llvm.dbg.value(metadata ptr %2, metadata !4461, metadata !DIExpression()), !dbg !4523
  %3 = icmp eq ptr %2, null, !dbg !4525
  br i1 %3, label %4, label %5, !dbg !4526

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4527
  unreachable, !dbg !4527

5:                                                ; preds = %1
  ret ptr %2, !dbg !4528
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4529 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4533, metadata !DIExpression()), !dbg !4535
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4534, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata ptr %0, metadata !4536, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i64 %1, metadata !4540, metadata !DIExpression()), !dbg !4541
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4543
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #44, !dbg !4544
  call void @llvm.dbg.value(metadata ptr %4, metadata !4461, metadata !DIExpression()), !dbg !4545
  %5 = icmp eq ptr %4, null, !dbg !4547
  br i1 %5, label %6, label %7, !dbg !4548

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4549
  unreachable, !dbg !4549

7:                                                ; preds = %2
  ret ptr %4, !dbg !4550
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4551 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4552 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4556, metadata !DIExpression()), !dbg !4558
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4557, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata ptr %0, metadata !4559, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i64 %1, metadata !4562, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr %0, metadata !4536, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %1, metadata !4540, metadata !DIExpression()), !dbg !4565
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4567
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #44, !dbg !4568
  call void @llvm.dbg.value(metadata ptr %4, metadata !4461, metadata !DIExpression()), !dbg !4569
  %5 = icmp eq ptr %4, null, !dbg !4571
  br i1 %5, label %6, label %7, !dbg !4572

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4573
  unreachable, !dbg !4573

7:                                                ; preds = %2
  ret ptr %4, !dbg !4574
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4575 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4579, metadata !DIExpression()), !dbg !4582
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4580, metadata !DIExpression()), !dbg !4582
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4581, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.value(metadata ptr %0, metadata !4583, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata i64 %1, metadata !4586, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata i64 %2, metadata !4587, metadata !DIExpression()), !dbg !4588
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4590
  call void @llvm.dbg.value(metadata ptr %4, metadata !4461, metadata !DIExpression()), !dbg !4591
  %5 = icmp eq ptr %4, null, !dbg !4593
  br i1 %5, label %6, label %7, !dbg !4594

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4595
  unreachable, !dbg !4595

7:                                                ; preds = %3
  ret ptr %4, !dbg !4596
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4597 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4601, metadata !DIExpression()), !dbg !4603
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4602, metadata !DIExpression()), !dbg !4603
  call void @llvm.dbg.value(metadata ptr null, metadata !4453, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i64 %0, metadata !4456, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i64 %1, metadata !4457, metadata !DIExpression()), !dbg !4604
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4606
  call void @llvm.dbg.value(metadata ptr %3, metadata !4461, metadata !DIExpression()), !dbg !4607
  %4 = icmp eq ptr %3, null, !dbg !4609
  br i1 %4, label %5, label %6, !dbg !4610

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4611
  unreachable, !dbg !4611

6:                                                ; preds = %2
  ret ptr %3, !dbg !4612
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4613 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4617, metadata !DIExpression()), !dbg !4619
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4618, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.value(metadata ptr null, metadata !4579, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.value(metadata i64 %0, metadata !4580, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.value(metadata i64 %1, metadata !4581, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.value(metadata ptr null, metadata !4583, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata i64 %0, metadata !4586, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata i64 %1, metadata !4587, metadata !DIExpression()), !dbg !4622
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4624
  call void @llvm.dbg.value(metadata ptr %3, metadata !4461, metadata !DIExpression()), !dbg !4625
  %4 = icmp eq ptr %3, null, !dbg !4627
  br i1 %4, label %5, label %6, !dbg !4628

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4629
  unreachable, !dbg !4629

6:                                                ; preds = %2
  ret ptr %3, !dbg !4630
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4631 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4635, metadata !DIExpression()), !dbg !4637
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4636, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.value(metadata ptr %0, metadata !1004, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata ptr %1, metadata !1005, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata i64 1, metadata !1006, metadata !DIExpression()), !dbg !4638
  %3 = load i64, ptr %1, align 8, !dbg !4640, !tbaa !1360
  call void @llvm.dbg.value(metadata i64 %3, metadata !1007, metadata !DIExpression()), !dbg !4638
  %4 = icmp eq ptr %0, null, !dbg !4641
  br i1 %4, label %5, label %8, !dbg !4643

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4644
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4647
  br label %15, !dbg !4647

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4648
  %10 = add nuw i64 %9, 1, !dbg !4648
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4648
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4648
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4648
  call void @llvm.dbg.value(metadata i64 %13, metadata !1007, metadata !DIExpression()), !dbg !4638
  br i1 %12, label %14, label %15, !dbg !4651

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !4652
  unreachable, !dbg !4652

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4638
  call void @llvm.dbg.value(metadata i64 %16, metadata !1007, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata ptr %0, metadata !4453, metadata !DIExpression()), !dbg !4653
  call void @llvm.dbg.value(metadata i64 %16, metadata !4456, metadata !DIExpression()), !dbg !4653
  call void @llvm.dbg.value(metadata i64 1, metadata !4457, metadata !DIExpression()), !dbg !4653
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !4655
  call void @llvm.dbg.value(metadata ptr %17, metadata !4461, metadata !DIExpression()), !dbg !4656
  %18 = icmp eq ptr %17, null, !dbg !4658
  br i1 %18, label %19, label %20, !dbg !4659

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !4660
  unreachable, !dbg !4660

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !1004, metadata !DIExpression()), !dbg !4638
  store i64 %16, ptr %1, align 8, !dbg !4661, !tbaa !1360
  ret ptr %17, !dbg !4662
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !999 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1004, metadata !DIExpression()), !dbg !4663
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1005, metadata !DIExpression()), !dbg !4663
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1006, metadata !DIExpression()), !dbg !4663
  %4 = load i64, ptr %1, align 8, !dbg !4664, !tbaa !1360
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1007, metadata !DIExpression()), !dbg !4663
  %5 = icmp eq ptr %0, null, !dbg !4665
  br i1 %5, label %6, label %13, !dbg !4666

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4667
  br i1 %7, label %8, label %20, !dbg !4668

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4669
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1007, metadata !DIExpression()), !dbg !4663
  %10 = icmp ugt i64 %2, 128, !dbg !4671
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4672
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1007, metadata !DIExpression()), !dbg !4663
  br label %20, !dbg !4673

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4674
  %15 = add nuw i64 %14, 1, !dbg !4674
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4674
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4674
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4674
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1007, metadata !DIExpression()), !dbg !4663
  br i1 %17, label %19, label %20, !dbg !4675

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !4676
  unreachable, !dbg !4676

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4663
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1007, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata ptr %0, metadata !4453, metadata !DIExpression()), !dbg !4677
  call void @llvm.dbg.value(metadata i64 %21, metadata !4456, metadata !DIExpression()), !dbg !4677
  call void @llvm.dbg.value(metadata i64 %2, metadata !4457, metadata !DIExpression()), !dbg !4677
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !4679
  call void @llvm.dbg.value(metadata ptr %22, metadata !4461, metadata !DIExpression()), !dbg !4680
  %23 = icmp eq ptr %22, null, !dbg !4682
  br i1 %23, label %24, label %25, !dbg !4683

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !4684
  unreachable, !dbg !4684

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !1004, metadata !DIExpression()), !dbg !4663
  store i64 %21, ptr %1, align 8, !dbg !4685, !tbaa !1360
  ret ptr %22, !dbg !4686
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !1011 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1018, metadata !DIExpression()), !dbg !4687
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1019, metadata !DIExpression()), !dbg !4687
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1020, metadata !DIExpression()), !dbg !4687
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1021, metadata !DIExpression()), !dbg !4687
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1022, metadata !DIExpression()), !dbg !4687
  %6 = load i64, ptr %1, align 8, !dbg !4688, !tbaa !1360
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1023, metadata !DIExpression()), !dbg !4687
  %7 = ashr i64 %6, 1, !dbg !4689
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4689
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4689
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4689
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1024, metadata !DIExpression()), !dbg !4687
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4691
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1024, metadata !DIExpression()), !dbg !4687
  %12 = icmp sgt i64 %3, -1, !dbg !4692
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4694
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4694
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !1024, metadata !DIExpression()), !dbg !4687
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4695
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4695
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4695
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1025, metadata !DIExpression()), !dbg !4687
  %18 = icmp slt i64 %17, 128, !dbg !4695
  %19 = select i1 %18, i64 128, i64 0, !dbg !4695
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4695
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !1026, metadata !DIExpression()), !dbg !4687
  %21 = icmp eq i64 %20, 0, !dbg !4696
  br i1 %21, label %26, label %22, !dbg !4698

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4699
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !1024, metadata !DIExpression()), !dbg !4687
  %24 = srem i64 %20, %4, !dbg !4701
  %25 = sub nsw i64 %20, %24, !dbg !4702
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !1025, metadata !DIExpression()), !dbg !4687
  br label %26, !dbg !4703

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4687
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4687
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !1025, metadata !DIExpression()), !dbg !4687
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !1024, metadata !DIExpression()), !dbg !4687
  %29 = icmp eq ptr %0, null, !dbg !4704
  br i1 %29, label %30, label %31, !dbg !4706

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4707, !tbaa !1360
  br label %31, !dbg !4708

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4709
  %33 = icmp slt i64 %32, %2, !dbg !4711
  br i1 %33, label %34, label %46, !dbg !4712

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4713
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4713
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4713
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !1024, metadata !DIExpression()), !dbg !4687
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4714
  br i1 %40, label %45, label %41, !dbg !4714

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4715
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4715
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4715
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !1025, metadata !DIExpression()), !dbg !4687
  br i1 %43, label %45, label %46, !dbg !4716

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #40, !dbg !4717
  unreachable, !dbg !4717

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4687
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4687
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !1025, metadata !DIExpression()), !dbg !4687
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !1024, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.value(metadata ptr %0, metadata !4533, metadata !DIExpression()), !dbg !4718
  call void @llvm.dbg.value(metadata i64 %48, metadata !4534, metadata !DIExpression()), !dbg !4718
  call void @llvm.dbg.value(metadata ptr %0, metadata !4536, metadata !DIExpression()), !dbg !4720
  call void @llvm.dbg.value(metadata i64 %48, metadata !4540, metadata !DIExpression()), !dbg !4720
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4722
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #44, !dbg !4723
  call void @llvm.dbg.value(metadata ptr %50, metadata !4461, metadata !DIExpression()), !dbg !4724
  %51 = icmp eq ptr %50, null, !dbg !4726
  br i1 %51, label %52, label %53, !dbg !4727

52:                                               ; preds = %46
  tail call void @xalloc_die() #40, !dbg !4728
  unreachable, !dbg !4728

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !1018, metadata !DIExpression()), !dbg !4687
  store i64 %47, ptr %1, align 8, !dbg !4729, !tbaa !1360
  ret ptr %50, !dbg !4730
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4731 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4733, metadata !DIExpression()), !dbg !4734
  call void @llvm.dbg.value(metadata i64 %0, metadata !4735, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i64 1, metadata !4738, metadata !DIExpression()), !dbg !4739
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4741
  call void @llvm.dbg.value(metadata ptr %2, metadata !4461, metadata !DIExpression()), !dbg !4742
  %3 = icmp eq ptr %2, null, !dbg !4744
  br i1 %3, label %4, label %5, !dbg !4745

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4746
  unreachable, !dbg !4746

5:                                                ; preds = %1
  ret ptr %2, !dbg !4747
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4748 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4736 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4735, metadata !DIExpression()), !dbg !4749
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4738, metadata !DIExpression()), !dbg !4749
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4750
  call void @llvm.dbg.value(metadata ptr %3, metadata !4461, metadata !DIExpression()), !dbg !4751
  %4 = icmp eq ptr %3, null, !dbg !4753
  br i1 %4, label %5, label %6, !dbg !4754

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4755
  unreachable, !dbg !4755

6:                                                ; preds = %2
  ret ptr %3, !dbg !4756
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4757 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4759, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata i64 %0, metadata !4761, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata i64 1, metadata !4764, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata i64 %0, metadata !4767, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i64 1, metadata !4770, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i64 %0, metadata !4767, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i64 1, metadata !4770, metadata !DIExpression()), !dbg !4771
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4773
  call void @llvm.dbg.value(metadata ptr %2, metadata !4461, metadata !DIExpression()), !dbg !4774
  %3 = icmp eq ptr %2, null, !dbg !4776
  br i1 %3, label %4, label %5, !dbg !4777

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4778
  unreachable, !dbg !4778

5:                                                ; preds = %1
  ret ptr %2, !dbg !4779
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4762 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4761, metadata !DIExpression()), !dbg !4780
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4764, metadata !DIExpression()), !dbg !4780
  call void @llvm.dbg.value(metadata i64 %0, metadata !4767, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i64 %1, metadata !4770, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i64 %0, metadata !4767, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i64 %1, metadata !4770, metadata !DIExpression()), !dbg !4781
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4783
  call void @llvm.dbg.value(metadata ptr %3, metadata !4461, metadata !DIExpression()), !dbg !4784
  %4 = icmp eq ptr %3, null, !dbg !4786
  br i1 %4, label %5, label %6, !dbg !4787

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4788
  unreachable, !dbg !4788

6:                                                ; preds = %2
  ret ptr %3, !dbg !4789
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4790 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4794, metadata !DIExpression()), !dbg !4796
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4795, metadata !DIExpression()), !dbg !4796
  call void @llvm.dbg.value(metadata i64 %1, metadata !4485, metadata !DIExpression()), !dbg !4797
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4799
  call void @llvm.dbg.value(metadata ptr %3, metadata !4461, metadata !DIExpression()), !dbg !4800
  %4 = icmp eq ptr %3, null, !dbg !4802
  br i1 %4, label %5, label %6, !dbg !4803

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4804
  unreachable, !dbg !4804

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4805, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata ptr %0, metadata !4811, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata i64 %1, metadata !4812, metadata !DIExpression()), !dbg !4813
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4815
  ret ptr %3, !dbg !4816
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4817 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4821, metadata !DIExpression()), !dbg !4823
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4822, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i64 %1, metadata !4499, metadata !DIExpression()), !dbg !4824
  call void @llvm.dbg.value(metadata i64 %1, metadata !4501, metadata !DIExpression()), !dbg !4826
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4828
  call void @llvm.dbg.value(metadata ptr %3, metadata !4461, metadata !DIExpression()), !dbg !4829
  %4 = icmp eq ptr %3, null, !dbg !4831
  br i1 %4, label %5, label %6, !dbg !4832

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4833
  unreachable, !dbg !4833

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4805, metadata !DIExpression()), !dbg !4834
  call void @llvm.dbg.value(metadata ptr %0, metadata !4811, metadata !DIExpression()), !dbg !4834
  call void @llvm.dbg.value(metadata i64 %1, metadata !4812, metadata !DIExpression()), !dbg !4834
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4836
  ret ptr %3, !dbg !4837
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4838 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4842, metadata !DIExpression()), !dbg !4845
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4843, metadata !DIExpression()), !dbg !4845
  %3 = add nsw i64 %1, 1, !dbg !4846
  call void @llvm.dbg.value(metadata i64 %3, metadata !4499, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata i64 %3, metadata !4501, metadata !DIExpression()), !dbg !4849
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4851
  call void @llvm.dbg.value(metadata ptr %4, metadata !4461, metadata !DIExpression()), !dbg !4852
  %5 = icmp eq ptr %4, null, !dbg !4854
  br i1 %5, label %6, label %7, !dbg !4855

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4856
  unreachable, !dbg !4856

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4844, metadata !DIExpression()), !dbg !4845
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4857
  store i8 0, ptr %8, align 1, !dbg !4858, !tbaa !1142
  call void @llvm.dbg.value(metadata ptr %4, metadata !4805, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata ptr %0, metadata !4811, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 %1, metadata !4812, metadata !DIExpression()), !dbg !4859
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4861
  ret ptr %4, !dbg !4862
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4863 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4865, metadata !DIExpression()), !dbg !4866
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !4867
  %3 = add i64 %2, 1, !dbg !4868
  call void @llvm.dbg.value(metadata ptr %0, metadata !4794, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i64 %3, metadata !4795, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i64 %3, metadata !4485, metadata !DIExpression()), !dbg !4871
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4873
  call void @llvm.dbg.value(metadata ptr %4, metadata !4461, metadata !DIExpression()), !dbg !4874
  %5 = icmp eq ptr %4, null, !dbg !4876
  br i1 %5, label %6, label %7, !dbg !4877

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4878
  unreachable, !dbg !4878

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4805, metadata !DIExpression()), !dbg !4879
  call void @llvm.dbg.value(metadata ptr %0, metadata !4811, metadata !DIExpression()), !dbg !4879
  call void @llvm.dbg.value(metadata i64 %3, metadata !4812, metadata !DIExpression()), !dbg !4879
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !4881
  ret ptr %4, !dbg !4882
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4883 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4888, !tbaa !1133
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4885, metadata !DIExpression()), !dbg !4889
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.159, ptr noundef nonnull @.str.2.160, i32 noundef 5) #38, !dbg !4888
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.161, ptr noundef %2) #38, !dbg !4888
  %3 = icmp eq i32 %1, 0, !dbg !4888
  tail call void @llvm.assume(i1 %3), !dbg !4888
  tail call void @abort() #40, !dbg !4890
  unreachable, !dbg !4890
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4891 {
  %3 = alloca [81 x i8], align 16, !DIAssignID !4953
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4934, metadata !DIExpression(), metadata !4953, metadata ptr %3, metadata !DIExpression()), !dbg !4954
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4929, metadata !DIExpression()), !dbg !4954
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4930, metadata !DIExpression()), !dbg !4954
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4931, metadata !DIExpression()), !dbg !4954
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4932, metadata !DIExpression()), !dbg !4954
  tail call void @llvm.dbg.value(metadata i8 0, metadata !4933, metadata !DIExpression()), !dbg !4954
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #38, !dbg !4955
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4938, metadata !DIExpression()), !dbg !4956
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4940, metadata !DIExpression()), !dbg !4956
  br label %4, !dbg !4957

4:                                                ; preds = %43, %2
  %5 = phi i8 [ 0, %2 ], [ %44, %43 ], !dbg !4954
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4956
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4954
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4958
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4959
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !4931, metadata !DIExpression()), !dbg !4954
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4932, metadata !DIExpression()), !dbg !4954
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4940, metadata !DIExpression()), !dbg !4956
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4938, metadata !DIExpression()), !dbg !4956
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !4933, metadata !DIExpression()), !dbg !4954
  %11 = load i8, ptr %6, align 1, !dbg !4959, !tbaa !1142
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4960

12:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4931, metadata !DIExpression()), !dbg !4954
  %13 = icmp slt i64 %7, 80, !dbg !4961
  br i1 %13, label %14, label %43, !dbg !4964

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4965
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4940, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4956
  store i8 114, ptr %10, align 1, !dbg !4966, !tbaa !1142
  br label %43, !dbg !4967

16:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4931, metadata !DIExpression()), !dbg !4954
  %17 = or i32 %8, 576, !dbg !4968
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4932, metadata !DIExpression()), !dbg !4954
  %18 = icmp slt i64 %7, 80, !dbg !4969
  br i1 %18, label %19, label %43, !dbg !4971

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4972
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4940, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4956
  store i8 119, ptr %10, align 1, !dbg !4973, !tbaa !1142
  br label %43, !dbg !4974

21:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4931, metadata !DIExpression()), !dbg !4954
  %22 = or i32 %8, 1088, !dbg !4975
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !4932, metadata !DIExpression()), !dbg !4954
  %23 = icmp slt i64 %7, 80, !dbg !4976
  br i1 %23, label %24, label %43, !dbg !4978

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4979
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4940, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4956
  store i8 97, ptr %10, align 1, !dbg !4980, !tbaa !1142
  br label %43, !dbg !4981

26:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4932, metadata !DIExpression()), !dbg !4954
  %27 = icmp slt i64 %7, 80, !dbg !4982
  br i1 %27, label %28, label %43, !dbg !4984

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4985
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4940, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4956
  store i8 98, ptr %10, align 1, !dbg !4986, !tbaa !1142
  br label %43, !dbg !4987

30:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4931, metadata !DIExpression()), !dbg !4954
  %31 = icmp slt i64 %7, 80, !dbg !4988
  br i1 %31, label %32, label %43, !dbg !4990

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4991
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4940, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4956
  store i8 43, ptr %10, align 1, !dbg !4992, !tbaa !1142
  br label %43, !dbg !4993

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4994
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !4932, metadata !DIExpression()), !dbg !4954
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4933, metadata !DIExpression()), !dbg !4954
  br label %43, !dbg !4995

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4996
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !4932, metadata !DIExpression()), !dbg !4954
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4933, metadata !DIExpression()), !dbg !4954
  br label %43, !dbg !4997

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #39, !dbg !4998
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !4941, metadata !DIExpression()), !dbg !4999
  %40 = sub nsw i64 80, %7, !dbg !5000
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !5002
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !4941, metadata !DIExpression()), !dbg !4999
  call void @llvm.dbg.value(metadata ptr %10, metadata !5003, metadata !DIExpression()), !dbg !5008
  call void @llvm.dbg.value(metadata ptr %6, metadata !5006, metadata !DIExpression()), !dbg !5008
  call void @llvm.dbg.value(metadata i64 %41, metadata !5007, metadata !DIExpression()), !dbg !5008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #38, !dbg !5010
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !5011
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !4940, metadata !DIExpression()), !dbg !4956
  br label %49, !dbg !5012

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i8 [ 1, %36 ], [ 1, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ], !dbg !4954
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4954
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4954
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !4931, metadata !DIExpression()), !dbg !4954
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !4932, metadata !DIExpression()), !dbg !4954
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4940, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4956
  tail call void @llvm.dbg.value(metadata i8 %44, metadata !4933, metadata !DIExpression()), !dbg !4954
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !5013
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !4938, metadata !DIExpression()), !dbg !4956
  br label %4, !dbg !5014, !llvm.loop !5015

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !4956
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !4940, metadata !DIExpression()), !dbg !4956
  store i8 0, ptr %50, align 1, !dbg !5017, !tbaa !1142
  %51 = and i8 %5, 1, !dbg !5018
  %52 = icmp eq i8 %51, 0, !dbg !5018
  br i1 %52, label %64, label %53, !dbg !5019

53:                                               ; preds = %49
  %54 = or i32 %9, %8, !dbg !5020
  %55 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %54, i32 noundef 438) #38, !dbg !5021
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !4946, metadata !DIExpression()), !dbg !5022
  %56 = icmp slt i32 %55, 0, !dbg !5023
  br i1 %56, label %66, label %57, !dbg !5025

57:                                               ; preds = %53
  %58 = call noalias ptr @fdopen(i32 noundef %55, ptr noundef nonnull %3) #38, !dbg !5026
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !4949, metadata !DIExpression()), !dbg !5022
  %59 = icmp eq ptr %58, null, !dbg !5027
  br i1 %59, label %60, label %66, !dbg !5028

60:                                               ; preds = %57
  %61 = tail call ptr @__errno_location() #41, !dbg !5029
  %62 = load i32, ptr %61, align 4, !dbg !5029, !tbaa !1133
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !4950, metadata !DIExpression()), !dbg !5030
  %63 = tail call i32 @close(i32 noundef %55) #38, !dbg !5031
  store i32 %62, ptr %61, align 4, !dbg !5032, !tbaa !1133
  br label %66, !dbg !5033

64:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !5034, metadata !DIExpression()), !dbg !5038
  call void @llvm.dbg.value(metadata ptr %1, metadata !5037, metadata !DIExpression()), !dbg !5038
  %65 = tail call noalias noundef ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !5040
  br label %66, !dbg !5041

66:                                               ; preds = %53, %60, %57, %64
  %67 = phi ptr [ %65, %64 ], [ null, %53 ], [ null, %60 ], [ %58, %57 ], !dbg !4954
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #38, !dbg !5042
  ret ptr %67, !dbg !5042
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !5043 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #35

; Function Attrs: nofree nounwind
declare !dbg !5046 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !5049 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !5050 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !5053 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5091, metadata !DIExpression()), !dbg !5096
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !5097
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5092, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5096
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5098, metadata !DIExpression()), !dbg !5101
  %3 = load i32, ptr %0, align 8, !dbg !5103, !tbaa !1388
  %4 = and i32 %3, 32, !dbg !5104
  %5 = icmp eq i32 %4, 0, !dbg !5104
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !5094, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5096
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !5105
  %7 = icmp eq i32 %6, 0, !dbg !5106
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !5095, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5096
  br i1 %5, label %8, label %18, !dbg !5107

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5109
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !5092, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5096
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5110
  %11 = xor i1 %7, true, !dbg !5110
  %12 = sext i1 %11 to i32, !dbg !5110
  br i1 %10, label %21, label %13, !dbg !5110

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !5111
  %15 = load i32, ptr %14, align 4, !dbg !5111, !tbaa !1133
  %16 = icmp ne i32 %15, 9, !dbg !5112
  %17 = sext i1 %16 to i32, !dbg !5113
  br label %21, !dbg !5113

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5114

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !5116
  store i32 0, ptr %20, align 4, !dbg !5118, !tbaa !1133
  br label %21, !dbg !5116

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5096
  ret i32 %22, !dbg !5119
}

; Function Attrs: nounwind
declare !dbg !5120 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5123 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5128, metadata !DIExpression()), !dbg !5133
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5129, metadata !DIExpression()), !dbg !5133
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5130, metadata !DIExpression()), !dbg !5133
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5131, metadata !DIExpression()), !dbg !5133
  %5 = icmp eq ptr %1, null, !dbg !5134
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5136
  %7 = select i1 %5, ptr @.str.168, ptr %1, !dbg !5136
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5136
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5130, metadata !DIExpression()), !dbg !5133
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5129, metadata !DIExpression()), !dbg !5133
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5128, metadata !DIExpression()), !dbg !5133
  %9 = icmp eq ptr %3, null, !dbg !5137
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5139
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5131, metadata !DIExpression()), !dbg !5133
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #38, !dbg !5140
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5132, metadata !DIExpression()), !dbg !5133
  %12 = icmp ult i64 %11, -3, !dbg !5141
  br i1 %12, label %13, label %17, !dbg !5143

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #39, !dbg !5144
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
  tail call void @abort() #40, !dbg !5165
  unreachable, !dbg !5165

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5166

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #38, !dbg !5168
  br i1 %23, label %29, label %24, !dbg !5169

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5170
  br i1 %25, label %29, label %26, !dbg !5173

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5174, !tbaa !1142
  %28 = zext i8 %27 to i32, !dbg !5175
  store i32 %28, ptr %6, align 4, !dbg !5176, !tbaa !1133
  br label %29, !dbg !5177

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5133
  ret i64 %30, !dbg !5178
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5179 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !5184 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5186, metadata !DIExpression()), !dbg !5190
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5187, metadata !DIExpression()), !dbg !5190
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5188, metadata !DIExpression()), !dbg !5190
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5191
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5191
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5189, metadata !DIExpression()), !dbg !5190
  br i1 %5, label %6, label %8, !dbg !5193

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #41, !dbg !5194
  store i32 12, ptr %7, align 4, !dbg !5196, !tbaa !1133
  br label %12, !dbg !5197

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5191
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5189, metadata !DIExpression()), !dbg !5190
  call void @llvm.dbg.value(metadata ptr %0, metadata !5198, metadata !DIExpression()), !dbg !5202
  call void @llvm.dbg.value(metadata i64 %9, metadata !5201, metadata !DIExpression()), !dbg !5202
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5204
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #44, !dbg !5205
  br label %12, !dbg !5206

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5190
  ret ptr %13, !dbg !5207
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5208 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !5215
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5211, metadata !DIExpression(), metadata !5215, metadata ptr %2, metadata !DIExpression()), !dbg !5216
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5210, metadata !DIExpression()), !dbg !5216
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !5217
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !5218
  %4 = icmp eq i32 %3, 0, !dbg !5218
  br i1 %4, label %5, label %12, !dbg !5220

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5221, metadata !DIExpression()), !dbg !5225
  call void @llvm.dbg.value(metadata !1100, metadata !5224, metadata !DIExpression()), !dbg !5225
  %6 = load i16, ptr %2, align 16, !dbg !5228
  %7 = icmp eq i16 %6, 67, !dbg !5228
  br i1 %7, label %11, label %8, !dbg !5229

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5221, metadata !DIExpression()), !dbg !5230
  call void @llvm.dbg.value(metadata ptr @.str.1.173, metadata !5224, metadata !DIExpression()), !dbg !5230
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.173, i64 6), !dbg !5232
  %10 = icmp eq i32 %9, 0, !dbg !5233
  br i1 %10, label %11, label %12, !dbg !5234

11:                                               ; preds = %8, %5
  br label %12, !dbg !5235

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5216
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !5236
  ret i1 %13, !dbg !5236
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5237 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5241, metadata !DIExpression()), !dbg !5244
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5242, metadata !DIExpression()), !dbg !5244
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5243, metadata !DIExpression()), !dbg !5244
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !5245
  ret i32 %4, !dbg !5246
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5247 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5251, metadata !DIExpression()), !dbg !5252
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !5253
  ret ptr %2, !dbg !5254
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5255 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5257, metadata !DIExpression()), !dbg !5259
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !5260
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5258, metadata !DIExpression()), !dbg !5259
  ret ptr %2, !dbg !5261
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5262 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5264, metadata !DIExpression()), !dbg !5271
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5265, metadata !DIExpression()), !dbg !5271
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5266, metadata !DIExpression()), !dbg !5271
  call void @llvm.dbg.value(metadata i32 %0, metadata !5257, metadata !DIExpression()), !dbg !5272
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !5274
  call void @llvm.dbg.value(metadata ptr %4, metadata !5258, metadata !DIExpression()), !dbg !5272
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5267, metadata !DIExpression()), !dbg !5271
  %5 = icmp eq ptr %4, null, !dbg !5275
  br i1 %5, label %6, label %9, !dbg !5276

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5277
  br i1 %7, label %19, label %8, !dbg !5280

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5281, !tbaa !1142
  br label %19, !dbg !5282

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !5283
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5268, metadata !DIExpression()), !dbg !5284
  %11 = icmp ult i64 %10, %2, !dbg !5285
  br i1 %11, label %12, label %14, !dbg !5287

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5288
  call void @llvm.dbg.value(metadata ptr %1, metadata !5290, metadata !DIExpression()), !dbg !5295
  call void @llvm.dbg.value(metadata ptr %4, metadata !5293, metadata !DIExpression()), !dbg !5295
  call void @llvm.dbg.value(metadata i64 %13, metadata !5294, metadata !DIExpression()), !dbg !5295
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #38, !dbg !5297
  br label %19, !dbg !5298

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5299
  br i1 %15, label %19, label %16, !dbg !5302

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5303
  call void @llvm.dbg.value(metadata ptr %1, metadata !5290, metadata !DIExpression()), !dbg !5305
  call void @llvm.dbg.value(metadata ptr %4, metadata !5293, metadata !DIExpression()), !dbg !5305
  call void @llvm.dbg.value(metadata i64 %17, metadata !5294, metadata !DIExpression()), !dbg !5305
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !5307
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5308
  store i8 0, ptr %18, align 1, !dbg !5309, !tbaa !1142
  br label %19, !dbg !5310

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5311
  ret i32 %20, !dbg !5312
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
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
attributes #43 = { cold }
attributes #44 = { nounwind allocsize(1) }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!59, !409, !657, !661, !676, !941, !973, !978, !980, !983, !985, !987, !722, !736, !783, !989, !935, !995, !1028, !1030, !1032, !957, !1034, !1036, !1040, !1042}
!llvm.ident = !{!1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044}
!llvm.module.flags = !{!1045, !1046, !1047, !1048, !1049, !1050, !1051}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/expand.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c80215ff64ab09027a1b86db960a2307")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!65 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!66 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!151 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !154)
!153 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!176 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!332 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!675 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !676, file: !677, line: 66, type: !719, isLocal: false, isDefinition: true)
!676 = distinct !DICompileUnit(language: DW_LANG_C11, file: !677, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !678, globals: !679, splitDebugInlining: false, nameTableKind: None)
!677 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!678 = !{!95, !102}
!679 = !{!680, !682, !701, !703, !705, !707, !674, !709, !711, !713, !715, !717}
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !677, line: 272, type: !209, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(name: "old_file_name", scope: !684, file: !677, line: 304, type: !100, isLocal: true, isDefinition: true)
!684 = distinct !DISubprogram(name: "verror_at_line", scope: !677, file: !677, line: 298, type: !685, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !694)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !63, !63, !100, !69, !100, !687}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !689)
!689 = !{!690, !691, !692, !693}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !688, file: !677, baseType: !69, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !688, file: !677, baseType: !69, size: 32, offset: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !688, file: !677, baseType: !95, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !688, file: !677, baseType: !95, size: 64, offset: 128)
!694 = !{!695, !696, !697, !698, !699, !700}
!695 = !DILocalVariable(name: "status", arg: 1, scope: !684, file: !677, line: 298, type: !63)
!696 = !DILocalVariable(name: "errnum", arg: 2, scope: !684, file: !677, line: 298, type: !63)
!697 = !DILocalVariable(name: "file_name", arg: 3, scope: !684, file: !677, line: 298, type: !100)
!698 = !DILocalVariable(name: "line_number", arg: 4, scope: !684, file: !677, line: 298, type: !69)
!699 = !DILocalVariable(name: "message", arg: 5, scope: !684, file: !677, line: 298, type: !100)
!700 = !DILocalVariable(name: "args", arg: 6, scope: !684, file: !677, line: 298, type: !687)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(name: "old_line_number", scope: !684, file: !677, line: 305, type: !69, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !677, line: 338, type: !216, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !677, line: 346, type: !248, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !677, line: 346, type: !226, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "error_message_count", scope: !676, file: !677, line: 69, type: !69, isLocal: false, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !676, file: !677, line: 295, type: !63, isLocal: false, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !677, line: 208, type: !19, isLocal: true, isDefinition: true)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !677, line: 208, type: !541, isLocal: true, isDefinition: true)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !677, line: 214, type: !209, isLocal: true, isDefinition: true)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(name: "program_name", scope: !722, file: !723, line: 31, type: !100, isLocal: false, isDefinition: true)
!722 = distinct !DICompileUnit(language: DW_LANG_C11, file: !723, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !724, globals: !725, splitDebugInlining: false, nameTableKind: None)
!723 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!724 = !{!95, !94}
!725 = !{!720, !726, !728}
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !723, line: 46, type: !248, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !723, line: 49, type: !216, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(name: "utf07FF", scope: !732, file: !733, line: 46, type: !756, isLocal: true, isDefinition: true)
!732 = distinct !DISubprogram(name: "proper_name_lite", scope: !733, file: !733, line: 38, type: !734, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !738)
!733 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!734 = !DISubroutineType(types: !735)
!735 = !{!100, !100, !100}
!736 = distinct !DICompileUnit(language: DW_LANG_C11, file: !733, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !737, splitDebugInlining: false, nameTableKind: None)
!737 = !{!730}
!738 = !{!739, !740, !741, !742, !743}
!739 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !732, file: !733, line: 38, type: !100)
!740 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !732, file: !733, line: 38, type: !100)
!741 = !DILocalVariable(name: "translation", scope: !732, file: !733, line: 40, type: !100)
!742 = !DILocalVariable(name: "w", scope: !732, file: !733, line: 47, type: !366)
!743 = !DILocalVariable(name: "mbs", scope: !732, file: !733, line: 48, type: !744)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !745, line: 6, baseType: !746)
!745 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !747, line: 21, baseType: !748)
!747 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !747, line: 13, size: 64, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !748, file: !747, line: 15, baseType: !63, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !748, file: !747, line: 20, baseType: !752, size: 32, offset: 32)
!752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !748, file: !747, line: 16, size: 32, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !752, file: !747, line: 18, baseType: !69, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !752, file: !747, line: 19, baseType: !216, size: 32)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 16, elements: !227)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !759, line: 78, type: !248, isLocal: true, isDefinition: true)
!759 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !759, line: 79, type: !221, isLocal: true, isDefinition: true)
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(scope: null, file: !759, line: 80, type: !764, isLocal: true, isDefinition: true)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !765)
!765 = !{!766}
!766 = !DISubrange(count: 13)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(scope: null, file: !759, line: 81, type: !764, isLocal: true, isDefinition: true)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(scope: null, file: !759, line: 82, type: !198, isLocal: true, isDefinition: true)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !759, line: 83, type: !226, isLocal: true, isDefinition: true)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !759, line: 84, type: !248, isLocal: true, isDefinition: true)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(scope: null, file: !759, line: 85, type: !19, isLocal: true, isDefinition: true)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !759, line: 86, type: !19, isLocal: true, isDefinition: true)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !759, line: 87, type: !248, isLocal: true, isDefinition: true)
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !783, file: !759, line: 76, type: !857, isLocal: false, isDefinition: true)
!783 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !784, retainedTypes: !792, globals: !793, splitDebugInlining: false, nameTableKind: None)
!784 = !{!785, !787, !67}
!785 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !786, line: 42, baseType: !69, size: 32, elements: !414)
!786 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!787 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !786, line: 254, baseType: !69, size: 32, elements: !788)
!788 = !{!789, !790, !791}
!789 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!790 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!791 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!792 = !{!95, !63, !96, !97}
!793 = !{!757, !760, !762, !767, !769, !771, !773, !775, !777, !779, !781, !794, !798, !808, !810, !815, !817, !819, !821, !823, !846, !853, !855}
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !783, file: !759, line: 92, type: !796, isLocal: false, isDefinition: true)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 320, elements: !50)
!797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !783, file: !759, line: 1040, type: !800, isLocal: false, isDefinition: true)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !759, line: 56, size: 448, elements: !801)
!801 = !{!802, !803, !804, !806, !807}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !800, file: !759, line: 59, baseType: !785, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !800, file: !759, line: 62, baseType: !63, size: 32, offset: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !800, file: !759, line: 66, baseType: !805, size: 256, offset: 64)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !249)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !800, file: !759, line: 69, baseType: !100, size: 64, offset: 320)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !800, file: !759, line: 72, baseType: !100, size: 64, offset: 384)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !783, file: !759, line: 107, type: !800, isLocal: true, isDefinition: true)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(name: "slot0", scope: !783, file: !759, line: 831, type: !812, isLocal: true, isDefinition: true)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 256)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !759, line: 321, type: !226, isLocal: true, isDefinition: true)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(scope: null, file: !759, line: 357, type: !226, isLocal: true, isDefinition: true)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(scope: null, file: !759, line: 358, type: !226, isLocal: true, isDefinition: true)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(scope: null, file: !759, line: 199, type: !19, isLocal: true, isDefinition: true)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(name: "quote", scope: !825, file: !759, line: 228, type: !844, isLocal: true, isDefinition: true)
!825 = distinct !DISubprogram(name: "gettext_quote", scope: !759, file: !759, line: 197, type: !826, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !828)
!826 = !DISubroutineType(types: !827)
!827 = !{!100, !100, !785}
!828 = !{!829, !830, !831, !832, !833}
!829 = !DILocalVariable(name: "msgid", arg: 1, scope: !825, file: !759, line: 197, type: !100)
!830 = !DILocalVariable(name: "s", arg: 2, scope: !825, file: !759, line: 197, type: !785)
!831 = !DILocalVariable(name: "translation", scope: !825, file: !759, line: 199, type: !100)
!832 = !DILocalVariable(name: "w", scope: !825, file: !759, line: 229, type: !366)
!833 = !DILocalVariable(name: "mbs", scope: !825, file: !759, line: 230, type: !834)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !745, line: 6, baseType: !835)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !747, line: 21, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !747, line: 13, size: 64, elements: !837)
!837 = !{!838, !839}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !836, file: !747, line: 15, baseType: !63, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !836, file: !747, line: 20, baseType: !840, size: 32, offset: 32)
!840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !747, line: 16, size: 32, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !840, file: !747, line: 18, baseType: !69, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !840, file: !747, line: 19, baseType: !216, size: 32)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 64, elements: !845)
!845 = !{!228, !218}
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(name: "slotvec", scope: !783, file: !759, line: 834, type: !848, isLocal: true, isDefinition: true)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !759, line: 823, size: 128, elements: !850)
!850 = !{!851, !852}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !849, file: !759, line: 825, baseType: !97, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !849, file: !759, line: 826, baseType: !94, size: 64, offset: 64)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(name: "nslots", scope: !783, file: !759, line: 832, type: !63, isLocal: true, isDefinition: true)
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(name: "slotvec0", scope: !783, file: !759, line: 833, type: !849, isLocal: true, isDefinition: true)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !858, size: 704, elements: !449)
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!859 = !DIGlobalVariableExpression(var: !860, expr: !DIExpression())
!860 = distinct !DIGlobalVariable(scope: null, file: !861, line: 67, type: !316, isLocal: true, isDefinition: true)
!861 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(scope: null, file: !861, line: 69, type: !19, isLocal: true, isDefinition: true)
!864 = !DIGlobalVariableExpression(var: !865, expr: !DIExpression())
!865 = distinct !DIGlobalVariable(scope: null, file: !861, line: 83, type: !19, isLocal: true, isDefinition: true)
!866 = !DIGlobalVariableExpression(var: !867, expr: !DIExpression())
!867 = distinct !DIGlobalVariable(scope: null, file: !861, line: 83, type: !216, isLocal: true, isDefinition: true)
!868 = !DIGlobalVariableExpression(var: !869, expr: !DIExpression())
!869 = distinct !DIGlobalVariable(scope: null, file: !861, line: 85, type: !226, isLocal: true, isDefinition: true)
!870 = !DIGlobalVariableExpression(var: !871, expr: !DIExpression())
!871 = distinct !DIGlobalVariable(scope: null, file: !861, line: 88, type: !872, isLocal: true, isDefinition: true)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !873)
!873 = !{!874}
!874 = !DISubrange(count: 171)
!875 = !DIGlobalVariableExpression(var: !876, expr: !DIExpression())
!876 = distinct !DIGlobalVariable(scope: null, file: !861, line: 88, type: !877, isLocal: true, isDefinition: true)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !405)
!878 = !DIGlobalVariableExpression(var: !879, expr: !DIExpression())
!879 = distinct !DIGlobalVariable(scope: null, file: !861, line: 105, type: !111, isLocal: true, isDefinition: true)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(scope: null, file: !861, line: 109, type: !399, isLocal: true, isDefinition: true)
!882 = !DIGlobalVariableExpression(var: !883, expr: !DIExpression())
!883 = distinct !DIGlobalVariable(scope: null, file: !861, line: 113, type: !546, isLocal: true, isDefinition: true)
!884 = !DIGlobalVariableExpression(var: !885, expr: !DIExpression())
!885 = distinct !DIGlobalVariable(scope: null, file: !861, line: 120, type: !886, isLocal: true, isDefinition: true)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !887)
!887 = !{!888}
!888 = !DISubrange(count: 32)
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression())
!890 = distinct !DIGlobalVariable(scope: null, file: !861, line: 127, type: !891, isLocal: true, isDefinition: true)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !892)
!892 = !{!893}
!893 = !DISubrange(count: 36)
!894 = !DIGlobalVariableExpression(var: !895, expr: !DIExpression())
!895 = distinct !DIGlobalVariable(scope: null, file: !861, line: 134, type: !270, isLocal: true, isDefinition: true)
!896 = !DIGlobalVariableExpression(var: !897, expr: !DIExpression())
!897 = distinct !DIGlobalVariable(scope: null, file: !861, line: 142, type: !898, isLocal: true, isDefinition: true)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !899)
!899 = !{!900}
!900 = !DISubrange(count: 44)
!901 = !DIGlobalVariableExpression(var: !902, expr: !DIExpression())
!902 = distinct !DIGlobalVariable(scope: null, file: !861, line: 150, type: !903, isLocal: true, isDefinition: true)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !904)
!904 = !{!905}
!905 = !DISubrange(count: 48)
!906 = !DIGlobalVariableExpression(var: !907, expr: !DIExpression())
!907 = distinct !DIGlobalVariable(scope: null, file: !861, line: 159, type: !908, isLocal: true, isDefinition: true)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !909)
!909 = !{!910}
!910 = !DISubrange(count: 52)
!911 = !DIGlobalVariableExpression(var: !912, expr: !DIExpression())
!912 = distinct !DIGlobalVariable(scope: null, file: !861, line: 170, type: !913, isLocal: true, isDefinition: true)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !914)
!914 = !{!915}
!915 = !DISubrange(count: 60)
!916 = !DIGlobalVariableExpression(var: !917, expr: !DIExpression())
!917 = distinct !DIGlobalVariable(scope: null, file: !861, line: 248, type: !198, isLocal: true, isDefinition: true)
!918 = !DIGlobalVariableExpression(var: !919, expr: !DIExpression())
!919 = distinct !DIGlobalVariable(scope: null, file: !861, line: 248, type: !292, isLocal: true, isDefinition: true)
!920 = !DIGlobalVariableExpression(var: !921, expr: !DIExpression())
!921 = distinct !DIGlobalVariable(scope: null, file: !861, line: 254, type: !198, isLocal: true, isDefinition: true)
!922 = !DIGlobalVariableExpression(var: !923, expr: !DIExpression())
!923 = distinct !DIGlobalVariable(scope: null, file: !861, line: 254, type: !106, isLocal: true, isDefinition: true)
!924 = !DIGlobalVariableExpression(var: !925, expr: !DIExpression())
!925 = distinct !DIGlobalVariable(scope: null, file: !861, line: 254, type: !270, isLocal: true, isDefinition: true)
!926 = !DIGlobalVariableExpression(var: !927, expr: !DIExpression())
!927 = distinct !DIGlobalVariable(scope: null, file: !861, line: 259, type: !3, isLocal: true, isDefinition: true)
!928 = !DIGlobalVariableExpression(var: !929, expr: !DIExpression())
!929 = distinct !DIGlobalVariable(scope: null, file: !861, line: 259, type: !930, isLocal: true, isDefinition: true)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !931)
!931 = !{!932}
!932 = !DISubrange(count: 29)
!933 = !DIGlobalVariableExpression(var: !934, expr: !DIExpression())
!934 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !935, file: !936, line: 26, type: !938, isLocal: false, isDefinition: true)
!935 = distinct !DICompileUnit(language: DW_LANG_C11, file: !936, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !937, splitDebugInlining: false, nameTableKind: None)
!936 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!937 = !{!933}
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 376, elements: !535)
!939 = !DIGlobalVariableExpression(var: !940, expr: !DIExpression())
!940 = distinct !DIGlobalVariable(name: "exit_failure", scope: !941, file: !942, line: 24, type: !944, isLocal: false, isDefinition: true)
!941 = distinct !DICompileUnit(language: DW_LANG_C11, file: !942, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !943, splitDebugInlining: false, nameTableKind: None)
!942 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!943 = !{!939}
!944 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!945 = !DIGlobalVariableExpression(var: !946, expr: !DIExpression())
!946 = distinct !DIGlobalVariable(scope: null, file: !947, line: 34, type: !235, isLocal: true, isDefinition: true)
!947 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!948 = !DIGlobalVariableExpression(var: !949, expr: !DIExpression())
!949 = distinct !DIGlobalVariable(scope: null, file: !947, line: 34, type: !19, isLocal: true, isDefinition: true)
!950 = !DIGlobalVariableExpression(var: !951, expr: !DIExpression())
!951 = distinct !DIGlobalVariable(scope: null, file: !947, line: 34, type: !265, isLocal: true, isDefinition: true)
!952 = !DIGlobalVariableExpression(var: !953, expr: !DIExpression())
!953 = distinct !DIGlobalVariable(scope: null, file: !954, line: 108, type: !44, isLocal: true, isDefinition: true)
!954 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!955 = !DIGlobalVariableExpression(var: !956, expr: !DIExpression())
!956 = distinct !DIGlobalVariable(name: "internal_state", scope: !957, file: !954, line: 97, type: !960, isLocal: true, isDefinition: true)
!957 = distinct !DICompileUnit(language: DW_LANG_C11, file: !954, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !958, globals: !959, splitDebugInlining: false, nameTableKind: None)
!958 = !{!95, !97, !102}
!959 = !{!952, !955}
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !745, line: 6, baseType: !961)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !747, line: 21, baseType: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !747, line: 13, size: 64, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !962, file: !747, line: 15, baseType: !63, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !962, file: !747, line: 20, baseType: !966, size: 32, offset: 32)
!966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !962, file: !747, line: 16, size: 32, elements: !967)
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !966, file: !747, line: 18, baseType: !69, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !966, file: !747, line: 19, baseType: !216, size: 32)
!970 = !DIGlobalVariableExpression(var: !971, expr: !DIExpression())
!971 = distinct !DIGlobalVariable(scope: null, file: !972, line: 35, type: !221, isLocal: true, isDefinition: true)
!972 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!973 = distinct !DICompileUnit(language: DW_LANG_C11, file: !974, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !975, splitDebugInlining: false, nameTableKind: None)
!974 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!975 = !{!976}
!976 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !977, line: 44, baseType: !69, size: 32, elements: !428)
!977 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!978 = distinct !DICompileUnit(language: DW_LANG_C11, file: !979, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!979 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!980 = distinct !DICompileUnit(language: DW_LANG_C11, file: !981, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !982, splitDebugInlining: false, nameTableKind: None)
!981 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!982 = !{!95}
!983 = distinct !DICompileUnit(language: DW_LANG_C11, file: !984, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!984 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!985 = distinct !DICompileUnit(language: DW_LANG_C11, file: !986, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !982, splitDebugInlining: false, nameTableKind: None)
!986 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!987 = distinct !DICompileUnit(language: DW_LANG_C11, file: !988, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!988 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!989 = distinct !DICompileUnit(language: DW_LANG_C11, file: !861, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !990, retainedTypes: !982, globals: !994, splitDebugInlining: false, nameTableKind: None)
!990 = !{!991}
!991 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !861, line: 40, baseType: !69, size: 32, elements: !992)
!992 = !{!993}
!993 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!994 = !{!859, !862, !864, !866, !868, !870, !875, !878, !880, !882, !884, !889, !894, !896, !901, !906, !911, !916, !918, !920, !922, !924, !926, !928}
!995 = distinct !DICompileUnit(language: DW_LANG_C11, file: !996, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !997, retainedTypes: !1027, splitDebugInlining: false, nameTableKind: None)
!996 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!997 = !{!998, !1010}
!998 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !999, file: !996, line: 188, baseType: !69, size: 32, elements: !1008)
!999 = distinct !DISubprogram(name: "x2nrealloc", scope: !996, file: !996, line: 176, type: !1000, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !1003)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!95, !95, !1002, !97}
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!1003 = !{!1004, !1005, !1006, !1007}
!1004 = !DILocalVariable(name: "p", arg: 1, scope: !999, file: !996, line: 176, type: !95)
!1005 = !DILocalVariable(name: "pn", arg: 2, scope: !999, file: !996, line: 176, type: !1002)
!1006 = !DILocalVariable(name: "s", arg: 3, scope: !999, file: !996, line: 176, type: !97)
!1007 = !DILocalVariable(name: "n", scope: !999, file: !996, line: 178, type: !97)
!1008 = !{!1009}
!1009 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!1010 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1011, file: !996, line: 228, baseType: !69, size: 32, elements: !1008)
!1011 = distinct !DISubprogram(name: "xpalloc", scope: !996, file: !996, line: 223, type: !1012, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !1017)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!95, !95, !1014, !1015, !356, !1015}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1016, line: 130, baseType: !356)
!1016 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026}
!1018 = !DILocalVariable(name: "pa", arg: 1, scope: !1011, file: !996, line: 223, type: !95)
!1019 = !DILocalVariable(name: "pn", arg: 2, scope: !1011, file: !996, line: 223, type: !1014)
!1020 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !1011, file: !996, line: 223, type: !1015)
!1021 = !DILocalVariable(name: "n_max", arg: 4, scope: !1011, file: !996, line: 223, type: !356)
!1022 = !DILocalVariable(name: "s", arg: 5, scope: !1011, file: !996, line: 223, type: !1015)
!1023 = !DILocalVariable(name: "n0", scope: !1011, file: !996, line: 230, type: !1015)
!1024 = !DILocalVariable(name: "n", scope: !1011, file: !996, line: 237, type: !1015)
!1025 = !DILocalVariable(name: "nbytes", scope: !1011, file: !996, line: 248, type: !1015)
!1026 = !DILocalVariable(name: "adjusted_nbytes", scope: !1011, file: !996, line: 252, type: !1015)
!1027 = !{!94, !95}
!1028 = distinct !DICompileUnit(language: DW_LANG_C11, file: !947, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1029, splitDebugInlining: false, nameTableKind: None)
!1029 = !{!945, !948, !950}
!1030 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1031, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen.Tpo -c lib/fopen.c -o lib/.libcoreutils_a-fopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !982, splitDebugInlining: false, nameTableKind: None)
!1031 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!1032 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1033, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1033 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1034 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1035, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !982, splitDebugInlining: false, nameTableKind: None)
!1035 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1036 = distinct !DICompileUnit(language: DW_LANG_C11, file: !972, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1037, splitDebugInlining: false, nameTableKind: None)
!1037 = !{!1038, !970}
!1038 = !DIGlobalVariableExpression(var: !1039, expr: !DIExpression())
!1039 = distinct !DIGlobalVariable(scope: null, file: !972, line: 35, type: !226, isLocal: true, isDefinition: true)
!1040 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1041, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1041 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1042 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1043, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !982, splitDebugInlining: false, nameTableKind: None)
!1043 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1044 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1045 = !{i32 7, !"Dwarf Version", i32 5}
!1046 = !{i32 2, !"Debug Info Version", i32 3}
!1047 = !{i32 1, !"wchar_size", i32 4}
!1048 = !{i32 8, !"PIC Level", i32 2}
!1049 = !{i32 7, !"PIE Level", i32 2}
!1050 = !{i32 7, !"uwtable", i32 2}
!1051 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1052 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 64, type: !1053, scopeLine: 65, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !63}
!1055 = !{!1056}
!1056 = !DILocalVariable(name: "status", arg: 1, scope: !1052, file: !2, line: 64, type: !63)
!1057 = !DILocation(line: 0, scope: !1052)
!1058 = !DILocation(line: 66, column: 14, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 66, column: 7)
!1060 = !DILocation(line: 66, column: 7, scope: !1052)
!1061 = !DILocation(line: 67, column: 5, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 67, column: 5)
!1063 = !{!1064, !1064, i64 0}
!1064 = !{!"any pointer", !1065, i64 0}
!1065 = !{!"omnipotent char", !1066, i64 0}
!1066 = !{!"Simple C/C++ TBAA"}
!1067 = !DILocation(line: 70, column: 7, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 69, column: 5)
!1069 = !DILocation(line: 74, column: 7, scope: !1068)
!1070 = !DILocation(line: 729, column: 3, scope: !1071, inlinedAt: !1072)
!1071 = distinct !DISubprogram(name: "emit_stdin_note", scope: !62, file: !62, line: 727, type: !342, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59)
!1072 = distinct !DILocation(line: 78, column: 7, scope: !1068)
!1073 = !DILocation(line: 736, column: 3, scope: !1074, inlinedAt: !1075)
!1074 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !62, file: !62, line: 734, type: !342, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59)
!1075 = distinct !DILocation(line: 79, column: 7, scope: !1068)
!1076 = !DILocation(line: 81, column: 7, scope: !1068)
!1077 = !DILocation(line: 85, column: 7, scope: !1068)
!1078 = !DILocation(line: 89, column: 7, scope: !1068)
!1079 = !DILocation(line: 90, column: 7, scope: !1068)
!1080 = !DILocation(line: 91, column: 7, scope: !1068)
!1081 = !DILocalVariable(name: "program", arg: 1, scope: !1082, file: !62, line: 836, type: !100)
!1082 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !62, file: !62, line: 836, type: !1083, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1085)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !100}
!1085 = !{!1081, !1086, !1093, !1094, !1096, !1097}
!1086 = !DILocalVariable(name: "infomap", scope: !1082, file: !62, line: 838, type: !1087)
!1087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1088, size: 896, elements: !20)
!1088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1089)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1082, file: !62, line: 838, size: 128, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1089, file: !62, line: 838, baseType: !100, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1089, file: !62, line: 838, baseType: !100, size: 64, offset: 64)
!1093 = !DILocalVariable(name: "node", scope: !1082, file: !62, line: 848, type: !100)
!1094 = !DILocalVariable(name: "map_prog", scope: !1082, file: !62, line: 849, type: !1095)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1096 = !DILocalVariable(name: "lc_messages", scope: !1082, file: !62, line: 861, type: !100)
!1097 = !DILocalVariable(name: "url_program", scope: !1082, file: !62, line: 874, type: !100)
!1098 = !DILocation(line: 0, scope: !1082, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 92, column: 7, scope: !1068)
!1100 = !{}
!1101 = !DILocation(line: 857, column: 3, scope: !1082, inlinedAt: !1099)
!1102 = !DILocation(line: 861, column: 29, scope: !1082, inlinedAt: !1099)
!1103 = !DILocation(line: 862, column: 7, scope: !1104, inlinedAt: !1099)
!1104 = distinct !DILexicalBlock(scope: !1082, file: !62, line: 862, column: 7)
!1105 = !DILocation(line: 862, column: 19, scope: !1104, inlinedAt: !1099)
!1106 = !DILocation(line: 862, column: 22, scope: !1104, inlinedAt: !1099)
!1107 = !DILocation(line: 862, column: 7, scope: !1082, inlinedAt: !1099)
!1108 = !DILocation(line: 868, column: 7, scope: !1109, inlinedAt: !1099)
!1109 = distinct !DILexicalBlock(scope: !1104, file: !62, line: 863, column: 5)
!1110 = !DILocation(line: 870, column: 5, scope: !1109, inlinedAt: !1099)
!1111 = !DILocation(line: 875, column: 3, scope: !1082, inlinedAt: !1099)
!1112 = !DILocation(line: 877, column: 3, scope: !1082, inlinedAt: !1099)
!1113 = !DILocation(line: 94, column: 3, scope: !1052)
!1114 = !DISubprogram(name: "dcgettext", scope: !1115, file: !1115, line: 51, type: !1116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1115 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!94, !100, !100, !63}
!1118 = !DISubprogram(name: "__fprintf_chk", scope: !1119, file: !1119, line: 93, type: !1120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1119 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!63, !1122, !63, !1123, null}
!1122 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!1123 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!1124 = !DISubprogram(name: "__printf_chk", scope: !1119, file: !1119, line: 95, type: !1125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!63, !63, !1123, null}
!1127 = !DISubprogram(name: "fputs_unlocked", scope: !1128, file: !1128, line: 691, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1128 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!63, !1123, !1122}
!1131 = !DILocation(line: 0, scope: !126)
!1132 = !DILocation(line: 581, column: 7, scope: !134)
!1133 = !{!1134, !1134, i64 0}
!1134 = !{!"int", !1065, i64 0}
!1135 = !DILocation(line: 581, column: 19, scope: !134)
!1136 = !DILocation(line: 581, column: 7, scope: !126)
!1137 = !DILocation(line: 585, column: 26, scope: !133)
!1138 = !DILocation(line: 0, scope: !133)
!1139 = !DILocation(line: 586, column: 23, scope: !133)
!1140 = !DILocation(line: 586, column: 28, scope: !133)
!1141 = !DILocation(line: 586, column: 32, scope: !133)
!1142 = !{!1065, !1065, i64 0}
!1143 = !DILocation(line: 586, column: 38, scope: !133)
!1144 = !DILocalVariable(name: "__s1", arg: 1, scope: !1145, file: !1146, line: 1359, type: !100)
!1145 = distinct !DISubprogram(name: "streq", scope: !1146, file: !1146, line: 1359, type: !1147, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1149)
!1146 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!136, !100, !100}
!1149 = !{!1144, !1150}
!1150 = !DILocalVariable(name: "__s2", arg: 2, scope: !1145, file: !1146, line: 1359, type: !100)
!1151 = !DILocation(line: 0, scope: !1145, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 586, column: 41, scope: !133)
!1153 = !DILocation(line: 1361, column: 11, scope: !1145, inlinedAt: !1152)
!1154 = !DILocation(line: 1361, column: 10, scope: !1145, inlinedAt: !1152)
!1155 = !DILocation(line: 586, column: 19, scope: !133)
!1156 = !DILocation(line: 587, column: 5, scope: !133)
!1157 = !DILocation(line: 588, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !126, file: !62, line: 588, column: 7)
!1159 = !DILocation(line: 588, column: 7, scope: !126)
!1160 = !DILocation(line: 590, column: 7, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1158, file: !62, line: 589, column: 5)
!1162 = !DILocation(line: 591, column: 7, scope: !1161)
!1163 = !DILocation(line: 595, column: 37, scope: !126)
!1164 = !DILocation(line: 595, column: 35, scope: !126)
!1165 = !DILocation(line: 596, column: 29, scope: !126)
!1166 = !DILocation(line: 597, column: 8, scope: !142)
!1167 = !DILocation(line: 597, column: 7, scope: !126)
!1168 = !DILocation(line: 604, column: 24, scope: !141)
!1169 = !DILocation(line: 604, column: 12, scope: !142)
!1170 = !DILocation(line: 0, scope: !140)
!1171 = !DILocation(line: 610, column: 16, scope: !140)
!1172 = !DILocation(line: 610, column: 7, scope: !140)
!1173 = !DILocation(line: 611, column: 21, scope: !140)
!1174 = !{!1175, !1175, i64 0}
!1175 = !{!"short", !1065, i64 0}
!1176 = !DILocation(line: 611, column: 19, scope: !140)
!1177 = !DILocation(line: 611, column: 16, scope: !140)
!1178 = !DILocation(line: 610, column: 30, scope: !140)
!1179 = distinct !{!1179, !1172, !1173, !1180}
!1180 = !{!"llvm.loop.mustprogress"}
!1181 = !DILocation(line: 612, column: 18, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !140, file: !62, line: 612, column: 11)
!1183 = !DILocation(line: 612, column: 11, scope: !140)
!1184 = !DILocation(line: 620, column: 23, scope: !126)
!1185 = !DILocation(line: 625, column: 39, scope: !126)
!1186 = !DILocation(line: 626, column: 3, scope: !126)
!1187 = !DILocation(line: 626, column: 10, scope: !126)
!1188 = !DILocation(line: 626, column: 21, scope: !126)
!1189 = !DILocation(line: 628, column: 44, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !62, line: 628, column: 11)
!1191 = distinct !DILexicalBlock(scope: !126, file: !62, line: 627, column: 5)
!1192 = !DILocation(line: 628, column: 32, scope: !1190)
!1193 = !DILocation(line: 628, column: 49, scope: !1190)
!1194 = !DILocation(line: 628, column: 11, scope: !1191)
!1195 = !DILocation(line: 630, column: 11, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1191, file: !62, line: 630, column: 11)
!1197 = !DILocation(line: 630, column: 11, scope: !1191)
!1198 = !DILocation(line: 632, column: 26, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !62, line: 632, column: 15)
!1200 = distinct !DILexicalBlock(scope: !1196, file: !62, line: 631, column: 9)
!1201 = !DILocation(line: 632, column: 34, scope: !1199)
!1202 = !DILocation(line: 632, column: 37, scope: !1199)
!1203 = !DILocation(line: 632, column: 15, scope: !1200)
!1204 = !DILocation(line: 636, column: 16, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1200, file: !62, line: 636, column: 15)
!1206 = !DILocation(line: 636, column: 29, scope: !1205)
!1207 = !DILocation(line: 640, column: 16, scope: !1191)
!1208 = distinct !{!1208, !1186, !1209, !1180}
!1209 = !DILocation(line: 641, column: 5, scope: !126)
!1210 = !DILocation(line: 644, column: 3, scope: !126)
!1211 = !DILocation(line: 0, scope: !1145, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 648, column: 31, scope: !126)
!1213 = !DILocation(line: 0, scope: !1145, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 649, column: 31, scope: !126)
!1215 = !DILocation(line: 0, scope: !1145, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 650, column: 31, scope: !126)
!1217 = !DILocation(line: 0, scope: !1145, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 651, column: 31, scope: !126)
!1219 = !DILocation(line: 0, scope: !1145, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 652, column: 31, scope: !126)
!1221 = !DILocation(line: 0, scope: !1145, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 653, column: 31, scope: !126)
!1223 = !DILocation(line: 0, scope: !1145, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 654, column: 31, scope: !126)
!1225 = !DILocation(line: 0, scope: !1145, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 655, column: 31, scope: !126)
!1227 = !DILocation(line: 0, scope: !1145, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 656, column: 31, scope: !126)
!1229 = !DILocation(line: 0, scope: !1145, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 657, column: 31, scope: !126)
!1231 = !DILocation(line: 663, column: 7, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !126, file: !62, line: 663, column: 7)
!1233 = !DILocation(line: 664, column: 7, scope: !1232)
!1234 = !DILocation(line: 664, column: 10, scope: !1232)
!1235 = !DILocation(line: 663, column: 7, scope: !126)
!1236 = !DILocation(line: 669, column: 7, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1232, file: !62, line: 665, column: 5)
!1238 = !DILocation(line: 671, column: 5, scope: !1237)
!1239 = !DILocation(line: 676, column: 7, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1232, file: !62, line: 673, column: 5)
!1241 = !DILocation(line: 679, column: 3, scope: !126)
!1242 = !DILocation(line: 683, column: 3, scope: !126)
!1243 = !DILocation(line: 686, column: 3, scope: !126)
!1244 = !DILocation(line: 688, column: 3, scope: !126)
!1245 = !DILocation(line: 691, column: 3, scope: !126)
!1246 = !DILocation(line: 695, column: 3, scope: !126)
!1247 = !DILocation(line: 696, column: 1, scope: !126)
!1248 = !DISubprogram(name: "setlocale", scope: !1249, file: !1249, line: 122, type: !1250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1249 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!94, !63, !100}
!1252 = !DISubprogram(name: "strncmp", scope: !1253, file: !1253, line: 159, type: !1254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1253 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!63, !100, !100, !97}
!1256 = !DISubprogram(name: "exit", scope: !1257, file: !1257, line: 624, type: !1053, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1257 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1258 = !DISubprogram(name: "getenv", scope: !1257, file: !1257, line: 641, type: !1259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!94, !100}
!1261 = !DISubprogram(name: "strcmp", scope: !1253, file: !1253, line: 156, type: !1262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!63, !100, !100}
!1264 = !DISubprogram(name: "strspn", scope: !1253, file: !1253, line: 297, type: !1265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!99, !100, !100}
!1267 = !DISubprogram(name: "strchr", scope: !1253, file: !1253, line: 246, type: !1268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!94, !100, !63}
!1270 = !DISubprogram(name: "__ctype_b_loc", scope: !68, file: !68, line: 79, type: !1271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!1273}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!1276 = !DISubprogram(name: "strcspn", scope: !1253, file: !1253, line: 293, type: !1265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1277 = !DISubprogram(name: "fwrite_unlocked", scope: !1128, file: !1128, line: 704, type: !1278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!97, !1280, !97, !97, !1122}
!1280 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1281)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1283 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 189, type: !1284, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1286)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!63, !63, !567}
!1286 = !{!1287, !1288, !1289, !1290}
!1287 = !DILocalVariable(name: "argc", arg: 1, scope: !1283, file: !2, line: 189, type: !63)
!1288 = !DILocalVariable(name: "argv", arg: 2, scope: !1283, file: !2, line: 189, type: !567)
!1289 = !DILocalVariable(name: "c", scope: !1283, file: !2, line: 191, type: !63)
!1290 = !DILocalVariable(name: "tab_stop", scope: !1291, file: !2, line: 220, type: !226)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 219, column: 13)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !2, line: 216, column: 15)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 205, column: 9)
!1294 = distinct !DILexicalBlock(scope: !1283, file: !2, line: 203, column: 5)
!1295 = distinct !DIAssignID()
!1296 = distinct !DIAssignID()
!1297 = distinct !DIAssignID()
!1298 = distinct !DIAssignID()
!1299 = distinct !DIAssignID()
!1300 = !DILocation(line: 0, scope: !1291)
!1301 = !DILocation(line: 0, scope: !1283)
!1302 = !DILocation(line: 194, column: 21, scope: !1283)
!1303 = !DILocation(line: 194, column: 3, scope: !1283)
!1304 = !DILocation(line: 195, column: 3, scope: !1283)
!1305 = !DILocation(line: 196, column: 3, scope: !1283)
!1306 = !DILocation(line: 197, column: 3, scope: !1283)
!1307 = !DILocation(line: 199, column: 3, scope: !1283)
!1308 = !DILocation(line: 200, column: 23, scope: !1283)
!1309 = !{!1310, !1310, i64 0}
!1310 = !{!"_Bool", !1065, i64 0}
!1311 = !DILocation(line: 202, column: 3, scope: !1283)
!1312 = !DILocation(line: 202, column: 15, scope: !1283)
!1313 = !DILocation(line: 207, column: 31, scope: !1293)
!1314 = !DILocation(line: 208, column: 11, scope: !1293)
!1315 = !DILocation(line: 211, column: 28, scope: !1293)
!1316 = !DILocation(line: 211, column: 11, scope: !1293)
!1317 = !DILocation(line: 212, column: 11, scope: !1293)
!1318 = !DILocation(line: 216, column: 15, scope: !1292)
!1319 = !DILocation(line: 216, column: 15, scope: !1293)
!1320 = !DILocation(line: 217, column: 37, scope: !1292)
!1321 = !DILocation(line: 217, column: 13, scope: !1292)
!1322 = distinct !{!1322, !1311, !1323, !1180}
!1323 = !DILocation(line: 234, column: 5, scope: !1283)
!1324 = !DILocation(line: 220, column: 15, scope: !1291)
!1325 = !DILocation(line: 221, column: 29, scope: !1291)
!1326 = !DILocation(line: 221, column: 27, scope: !1291)
!1327 = distinct !DIAssignID()
!1328 = !DILocation(line: 222, column: 27, scope: !1291)
!1329 = distinct !DIAssignID()
!1330 = !DILocation(line: 223, column: 15, scope: !1291)
!1331 = !DILocation(line: 224, column: 13, scope: !1292)
!1332 = !DILocation(line: 227, column: 9, scope: !1293)
!1333 = !DILocation(line: 229, column: 9, scope: !1293)
!1334 = !DILocation(line: 232, column: 11, scope: !1293)
!1335 = !DILocation(line: 236, column: 3, scope: !1283)
!1336 = !DILocation(line: 238, column: 18, scope: !1283)
!1337 = !DILocation(line: 238, column: 25, scope: !1283)
!1338 = !DILocation(line: 238, column: 3, scope: !1283)
!1339 = !DILocation(line: 0, scope: !361, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 240, column: 3, scope: !1283)
!1341 = !DILocation(line: 0, scope: !381, inlinedAt: !1340)
!1342 = !DILocation(line: 105, column: 14, scope: !341, inlinedAt: !1340)
!1343 = !DILocation(line: 0, scope: !341, inlinedAt: !1340)
!1344 = !DILocation(line: 107, column: 8, scope: !1345, inlinedAt: !1340)
!1345 = distinct !DILexicalBlock(scope: !341, file: !2, line: 107, column: 7)
!1346 = !DILocation(line: 107, column: 7, scope: !341, inlinedAt: !1340)
!1347 = !DILocation(line: 61, column: 13, scope: !1348, inlinedAt: !1357)
!1348 = distinct !DISubprogram(name: "mbbuf_init", scope: !348, file: !348, line: 56, type: !1349, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1352)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{null, !1351, !94, !354, !149}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!1352 = !{!1353, !1354, !1355, !1356}
!1353 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1348, file: !348, line: 56, type: !1351)
!1354 = !DILocalVariable(name: "buffer", arg: 2, scope: !1348, file: !348, line: 56, type: !94)
!1355 = !DILocalVariable(name: "size", arg: 3, scope: !1348, file: !348, line: 56, type: !354)
!1356 = !DILocalVariable(name: "fp", arg: 4, scope: !1348, file: !348, line: 56, type: !149)
!1357 = distinct !DILocation(line: 112, column: 3, scope: !341, inlinedAt: !1340)
!1358 = !DILocation(line: 130, column: 7, scope: !361, inlinedAt: !1340)
!1359 = !DILocation(line: 130, column: 13, scope: !361, inlinedAt: !1340)
!1360 = !{!1361, !1361, i64 0}
!1361 = !{!"long", !1065, i64 0}
!1362 = distinct !DIAssignID()
!1363 = !DILocation(line: 135, column: 7, scope: !361, inlinedAt: !1340)
!1364 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1365, file: !348, line: 71, type: !1351)
!1365 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !348, file: !348, line: 71, type: !1366, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1368)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!362, !1351}
!1368 = !{!1364, !1369, !1370, !1373}
!1369 = !DILocalVariable(name: "available", scope: !1365, file: !348, line: 73, type: !354)
!1370 = !DILocalVariable(name: "start", scope: !1371, file: !348, line: 77, type: !354)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !348, line: 76, column: 5)
!1372 = distinct !DILexicalBlock(scope: !1365, file: !348, line: 75, column: 7)
!1373 = !DILocalVariable(name: "g", scope: !1365, file: !348, line: 92, type: !362)
!1374 = !DILocation(line: 0, scope: !1365, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 137, column: 23, scope: !385, inlinedAt: !1340)
!1376 = !DILocation(line: 73, column: 35, scope: !1365, inlinedAt: !1375)
!1377 = !DILocation(line: 75, column: 17, scope: !1372, inlinedAt: !1375)
!1378 = !DILocation(line: 75, column: 32, scope: !1372, inlinedAt: !1375)
!1379 = !DILocalVariable(name: "__stream", arg: 1, scope: !1380, file: !1381, line: 128, type: !149)
!1380 = distinct !DISubprogram(name: "feof_unlocked", scope: !1381, file: !1381, line: 128, type: !1382, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1384)
!1381 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!63, !149}
!1384 = !{!1379}
!1385 = !DILocation(line: 0, scope: !1380, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 75, column: 37, scope: !1372, inlinedAt: !1375)
!1387 = !DILocation(line: 130, column: 10, scope: !1380, inlinedAt: !1386)
!1388 = !{!1389, !1134, i64 0}
!1389 = !{!"_IO_FILE", !1134, i64 0, !1064, i64 8, !1064, i64 16, !1064, i64 24, !1064, i64 32, !1064, i64 40, !1064, i64 48, !1064, i64 56, !1064, i64 64, !1064, i64 72, !1064, i64 80, !1064, i64 88, !1064, i64 96, !1064, i64 104, !1134, i64 112, !1134, i64 116, !1361, i64 120, !1175, i64 128, !1065, i64 130, !1065, i64 131, !1064, i64 136, !1361, i64 144, !1064, i64 152, !1064, i64 160, !1064, i64 168, !1064, i64 176, !1361, i64 184, !1134, i64 192, !1065, i64 196}
!1390 = !DILocation(line: 75, column: 37, scope: !1372, inlinedAt: !1375)
!1391 = !DILocation(line: 75, column: 7, scope: !1365, inlinedAt: !1375)
!1392 = !DILocation(line: 78, column: 15, scope: !1393, inlinedAt: !1375)
!1393 = distinct !DILexicalBlock(scope: !1371, file: !348, line: 78, column: 11)
!1394 = !DILocation(line: 78, column: 11, scope: !1371, inlinedAt: !1375)
!1395 = !DILocation(line: 82, column: 49, scope: !1396, inlinedAt: !1375)
!1396 = distinct !DILexicalBlock(scope: !1393, file: !348, line: 81, column: 9)
!1397 = !DILocalVariable(name: "__dest", arg: 1, scope: !1398, file: !1399, line: 34, type: !95)
!1398 = distinct !DISubprogram(name: "memmove", scope: !1399, file: !1399, line: 34, type: !1400, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1402)
!1399 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!95, !95, !1281, !97}
!1402 = !{!1397, !1403, !1404}
!1403 = !DILocalVariable(name: "__src", arg: 2, scope: !1398, file: !1399, line: 34, type: !1281)
!1404 = !DILocalVariable(name: "__len", arg: 3, scope: !1398, file: !1399, line: 34, type: !97)
!1405 = !DILocation(line: 0, scope: !1398, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 82, column: 11, scope: !1396, inlinedAt: !1375)
!1407 = !DILocation(line: 36, column: 10, scope: !1398, inlinedAt: !1406)
!1408 = !DILocation(line: 0, scope: !1371, inlinedAt: !1375)
!1409 = !DILocation(line: 0, scope: !1393, inlinedAt: !1375)
!1410 = !DILocation(line: 85, column: 23, scope: !1371, inlinedAt: !1375)
!1411 = !DILocation(line: 86, column: 41, scope: !1371, inlinedAt: !1375)
!1412 = !DILocation(line: 89, column: 5, scope: !1371, inlinedAt: !1375)
!1413 = !DILocation(line: 90, column: 17, scope: !1414, inlinedAt: !1375)
!1414 = distinct !DILexicalBlock(scope: !1365, file: !348, line: 90, column: 7)
!1415 = !DILocation(line: 90, column: 7, scope: !1365, inlinedAt: !1375)
!1416 = !DILocation(line: 92, column: 39, scope: !1365, inlinedAt: !1375)
!1417 = !DILocalVariable(name: "mbs", scope: !1418, file: !84, line: 244, type: !1427)
!1418 = distinct !DISubprogram(name: "mcel_scan", scope: !84, file: !84, line: 230, type: !1419, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1421)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!362, !100, !100}
!1421 = !{!1422, !1423, !1424, !1417, !1425, !1426}
!1422 = !DILocalVariable(name: "p", arg: 1, scope: !1418, file: !84, line: 230, type: !100)
!1423 = !DILocalVariable(name: "lim", arg: 2, scope: !1418, file: !84, line: 230, type: !100)
!1424 = !DILocalVariable(name: "c", scope: !1418, file: !84, line: 235, type: !4)
!1425 = !DILocalVariable(name: "ch", scope: !1418, file: !84, line: 267, type: !366)
!1426 = !DILocalVariable(name: "len", scope: !1418, file: !84, line: 268, type: !97)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !745, line: 6, baseType: !1428)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !747, line: 21, baseType: !1429)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !747, line: 13, size: 64, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1429, file: !747, line: 15, baseType: !63, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1429, file: !747, line: 20, baseType: !1433, size: 32, offset: 32)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1429, file: !747, line: 16, size: 32, elements: !1434)
!1434 = !{!1435, !1436}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1433, file: !747, line: 18, baseType: !69, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1433, file: !747, line: 19, baseType: !216, size: 32)
!1437 = !DILocation(line: 0, scope: !1418, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 92, column: 14, scope: !1365, inlinedAt: !1375)
!1439 = !DILocation(line: 235, column: 12, scope: !1418, inlinedAt: !1438)
!1440 = !DILocalVariable(name: "c", arg: 1, scope: !1441, file: !84, line: 215, type: !4)
!1441 = distinct !DISubprogram(name: "mcel_isbasic", scope: !84, file: !84, line: 215, type: !1442, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1444)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!136, !4}
!1444 = !{!1440}
!1445 = !DILocation(line: 0, scope: !1441, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 236, column: 7, scope: !1447, inlinedAt: !1438)
!1447 = distinct !DILexicalBlock(scope: !1418, file: !84, line: 236, column: 7)
!1448 = !DILocation(line: 217, column: 10, scope: !1441, inlinedAt: !1446)
!1449 = !DILocation(line: 236, column: 7, scope: !1418, inlinedAt: !1438)
!1450 = !DILocation(line: 93, column: 39, scope: !1365, inlinedAt: !1375)
!1451 = !DILocation(line: 244, column: 3, scope: !1418, inlinedAt: !1438)
!1452 = !DILocation(line: 244, column: 30, scope: !1418, inlinedAt: !1438)
!1453 = !{!1454, !1134, i64 0}
!1454 = !{!"", !1134, i64 0, !1065, i64 4}
!1455 = distinct !DIAssignID()
!1456 = !DILocation(line: 267, column: 3, scope: !1418, inlinedAt: !1438)
!1457 = !DILocation(line: 268, column: 38, scope: !1418, inlinedAt: !1438)
!1458 = !DILocation(line: 268, column: 16, scope: !1418, inlinedAt: !1438)
!1459 = !DILocation(line: 274, column: 7, scope: !1460, inlinedAt: !1438)
!1460 = distinct !DILexicalBlock(scope: !1418, file: !84, line: 274, column: 7)
!1461 = !DILocation(line: 274, column: 7, scope: !1418, inlinedAt: !1438)
!1462 = !{!"branch_weights", i32 1, i32 2000}
!1463 = !DILocation(line: 279, column: 19, scope: !1418, inlinedAt: !1438)
!1464 = !DILocalVariable(name: "ch", arg: 1, scope: !1465, file: !84, line: 167, type: !366)
!1465 = distinct !DISubprogram(name: "mcel_ch", scope: !84, file: !84, line: 167, type: !1466, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1468)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!362, !366, !97}
!1468 = !{!1464, !1469}
!1469 = !DILocalVariable(name: "len", arg: 2, scope: !1465, file: !84, line: 167, type: !97)
!1470 = !DILocation(line: 0, scope: !1465, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 279, column: 10, scope: !1418, inlinedAt: !1438)
!1472 = !DILocation(line: 169, column: 3, scope: !1465, inlinedAt: !1471)
!1473 = !DILocation(line: 170, column: 3, scope: !1465, inlinedAt: !1471)
!1474 = !DILocation(line: 171, column: 3, scope: !1465, inlinedAt: !1471)
!1475 = !DILocation(line: 172, column: 3, scope: !1465, inlinedAt: !1471)
!1476 = !DILocation(line: 279, column: 3, scope: !1418, inlinedAt: !1438)
!1477 = !DILocalVariable(name: "err", arg: 1, scope: !1478, file: !84, line: 175, type: !102)
!1478 = distinct !DISubprogram(name: "mcel_err", scope: !84, file: !84, line: 175, type: !1479, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1481)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!362, !102}
!1481 = !{!1477}
!1482 = !DILocation(line: 0, scope: !1478, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 275, column: 12, scope: !1460, inlinedAt: !1438)
!1484 = !DILocation(line: 178, column: 3, scope: !1478, inlinedAt: !1483)
!1485 = !DILocation(line: 275, column: 5, scope: !1460, inlinedAt: !1438)
!1486 = !DILocation(line: 280, column: 1, scope: !1418, inlinedAt: !1438)
!1487 = !DILocation(line: 0, scope: !1465, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 237, column: 12, scope: !1447, inlinedAt: !1438)
!1489 = !DILocation(line: 172, column: 3, scope: !1465, inlinedAt: !1488)
!1490 = !DILocation(line: 237, column: 5, scope: !1447, inlinedAt: !1438)
!1491 = !DILocation(line: 94, column: 9, scope: !1492, inlinedAt: !1375)
!1492 = distinct !DILexicalBlock(scope: !1365, file: !348, line: 94, column: 7)
!1493 = !DILocation(line: 94, column: 7, scope: !1365, inlinedAt: !1375)
!1494 = !DILocation(line: 99, column: 30, scope: !1495, inlinedAt: !1375)
!1495 = distinct !DILexicalBlock(scope: !1492, file: !348, line: 97, column: 5)
!1496 = !DILocation(line: 99, column: 14, scope: !1495, inlinedAt: !1375)
!1497 = !DILocation(line: 92, column: 14, scope: !1365, inlinedAt: !1375)
!1498 = !DILocation(line: 95, column: 5, scope: !1492, inlinedAt: !1375)
!1499 = !DILocation(line: 0, scope: !1492, inlinedAt: !1375)
!1500 = !DILocation(line: 101, column: 3, scope: !1365, inlinedAt: !1375)
!1501 = !DILocation(line: 102, column: 1, scope: !1365, inlinedAt: !1375)
!1502 = !DILocation(line: 137, column: 23, scope: !385, inlinedAt: !1340)
!1503 = !DILocation(line: 137, column: 51, scope: !385, inlinedAt: !1340)
!1504 = !DILocation(line: 138, column: 18, scope: !385, inlinedAt: !1340)
!1505 = !DILocation(line: 138, column: 27, scope: !385, inlinedAt: !1340)
!1506 = !DILocation(line: 137, column: 11, scope: !385, inlinedAt: !1340)
!1507 = !DILocation(line: 61, column: 13, scope: !1348, inlinedAt: !1508)
!1508 = distinct !DILocation(line: 0, scope: !341, inlinedAt: !1340)
!1509 = distinct !{!1509, !1506, !1510, !1180, !1511}
!1510 = !DILocation(line: 139, column: 60, scope: !385, inlinedAt: !1340)
!1511 = !{!"llvm.loop.peeled.count", i32 1}
!1512 = !DILocation(line: 85, column: 21, scope: !1371, inlinedAt: !1375)
!1513 = !DILocation(line: 141, column: 15, scope: !384, inlinedAt: !1340)
!1514 = !DILocation(line: 141, column: 15, scope: !385, inlinedAt: !1340)
!1515 = !DILocation(line: 143, column: 26, scope: !383, inlinedAt: !1340)
!1516 = !{i8 0, i8 2}
!1517 = !DILocation(line: 143, column: 46, scope: !383, inlinedAt: !1340)
!1518 = !DILocalVariable(name: "wc", arg: 1, scope: !1519, file: !62, line: 178, type: !366)
!1519 = distinct !DISubprogram(name: "c32issep", scope: !62, file: !62, line: 178, type: !1520, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1522)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!136, !366}
!1522 = !{!1518}
!1523 = !DILocation(line: 0, scope: !1519, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 143, column: 49, scope: !383, inlinedAt: !1340)
!1525 = !DILocalVariable(name: "wc", arg: 1, scope: !1526, file: !1527, line: 770, type: !1530)
!1526 = distinct !DISubprogram(name: "c32isblank", scope: !1527, file: !1527, line: 770, type: !1528, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1532)
!1527 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!63, !1530}
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1531, line: 20, baseType: !69)
!1531 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1532 = !{!1525}
!1533 = !DILocation(line: 0, scope: !1526, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 181, column: 13, scope: !1519, inlinedAt: !1524)
!1535 = !DILocation(line: 776, column: 10, scope: !1526, inlinedAt: !1534)
!1536 = !DILocation(line: 181, column: 11, scope: !1519, inlinedAt: !1524)
!1537 = !DILocation(line: 143, column: 23, scope: !383, inlinedAt: !1340)
!1538 = !DILocation(line: 145, column: 19, scope: !383, inlinedAt: !1340)
!1539 = !DILocation(line: 148, column: 19, scope: !381, inlinedAt: !1340)
!1540 = !DILocation(line: 150, column: 23, scope: !381, inlinedAt: !1340)
!1541 = !DILocation(line: 152, column: 26, scope: !381, inlinedAt: !1340)
!1542 = !DILocation(line: 152, column: 35, scope: !381, inlinedAt: !1340)
!1543 = !DILocation(line: 152, column: 19, scope: !381, inlinedAt: !1340)
!1544 = !DILocalVariable(name: "__c", arg: 1, scope: !1545, file: !1381, line: 108, type: !63)
!1545 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1381, file: !1381, line: 108, type: !1546, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1548)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!63, !63}
!1548 = !{!1544}
!1549 = !DILocation(line: 0, scope: !1545, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 153, column: 25, scope: !1551, inlinedAt: !1340)
!1551 = distinct !DILexicalBlock(scope: !381, file: !2, line: 153, column: 25)
!1552 = !DILocation(line: 110, column: 10, scope: !1545, inlinedAt: !1550)
!1553 = !{!1389, !1064, i64 40}
!1554 = !{!1389, !1064, i64 48}
!1555 = !{!"branch_weights", i32 2000, i32 1}
!1556 = !DILocation(line: 153, column: 25, scope: !381, inlinedAt: !1340)
!1557 = !DILocation(line: 153, column: 39, scope: !1551, inlinedAt: !1340)
!1558 = !DILocation(line: 948, column: 21, scope: !1559, inlinedAt: !1562)
!1559 = distinct !DISubprogram(name: "write_error", scope: !62, file: !62, line: 946, type: !342, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1560)
!1560 = !{!1561}
!1561 = !DILocalVariable(name: "saved_errno", scope: !1559, file: !62, line: 948, type: !63)
!1562 = distinct !DILocation(line: 154, column: 23, scope: !1551, inlinedAt: !1340)
!1563 = !DILocation(line: 0, scope: !1559, inlinedAt: !1562)
!1564 = !DILocation(line: 949, column: 3, scope: !1559, inlinedAt: !1562)
!1565 = !DILocation(line: 950, column: 11, scope: !1559, inlinedAt: !1562)
!1566 = !DILocation(line: 950, column: 3, scope: !1559, inlinedAt: !1562)
!1567 = !DILocation(line: 951, column: 3, scope: !1559, inlinedAt: !1562)
!1568 = !DILocation(line: 952, column: 3, scope: !1559, inlinedAt: !1562)
!1569 = distinct !{!1569, !1543, !1570, !1180}
!1570 = !DILocation(line: 154, column: 36, scope: !381, inlinedAt: !1340)
!1571 = !DILocation(line: 0, scope: !1545, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 156, column: 23, scope: !1573, inlinedAt: !1340)
!1573 = distinct !DILexicalBlock(scope: !381, file: !2, line: 156, column: 23)
!1574 = !DILocation(line: 110, column: 10, scope: !1545, inlinedAt: !1572)
!1575 = !DILocation(line: 156, column: 23, scope: !381, inlinedAt: !1340)
!1576 = !DILocation(line: 156, column: 37, scope: !1573, inlinedAt: !1340)
!1577 = !DILocation(line: 948, column: 21, scope: !1559, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 157, column: 21, scope: !1573, inlinedAt: !1340)
!1579 = !DILocation(line: 0, scope: !1559, inlinedAt: !1578)
!1580 = !DILocation(line: 949, column: 3, scope: !1559, inlinedAt: !1578)
!1581 = !DILocation(line: 950, column: 11, scope: !1559, inlinedAt: !1578)
!1582 = !DILocation(line: 950, column: 3, scope: !1559, inlinedAt: !1578)
!1583 = !DILocation(line: 951, column: 3, scope: !1559, inlinedAt: !1578)
!1584 = !DILocation(line: 952, column: 3, scope: !1559, inlinedAt: !1578)
!1585 = !DILocation(line: 160, column: 17, scope: !382, inlinedAt: !1340)
!1586 = !DILocation(line: 165, column: 30, scope: !1587, inlinedAt: !1340)
!1587 = distinct !DILexicalBlock(scope: !389, file: !2, line: 162, column: 17)
!1588 = !DILocation(line: 165, column: 26, scope: !1587, inlinedAt: !1340)
!1589 = !DILocation(line: 166, column: 34, scope: !1587, inlinedAt: !1340)
!1590 = !DILocation(line: 166, column: 33, scope: !1587, inlinedAt: !1340)
!1591 = !DILocation(line: 166, column: 29, scope: !1587, inlinedAt: !1340)
!1592 = distinct !DIAssignID()
!1593 = !DILocation(line: 177, column: 15, scope: !385, inlinedAt: !1340)
!1594 = !DILocalVariable(name: "wc", arg: 1, scope: !1595, file: !1527, line: 1004, type: !366)
!1595 = distinct !DISubprogram(name: "c32width", scope: !1527, file: !1527, line: 1004, type: !1596, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1598)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!63, !366}
!1598 = !{!1594}
!1599 = !DILocation(line: 0, scope: !1595, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 170, column: 31, scope: !388, inlinedAt: !1340)
!1601 = !DILocation(line: 1010, column: 10, scope: !1595, inlinedAt: !1600)
!1602 = !DILocation(line: 0, scope: !388, inlinedAt: !1340)
!1603 = !DILocation(line: 171, column: 23, scope: !1604, inlinedAt: !1340)
!1604 = distinct !DILexicalBlock(scope: !388, file: !2, line: 171, column: 23)
!1605 = !DILocation(line: 171, column: 23, scope: !388, inlinedAt: !1340)
!1606 = !DILocation(line: 172, column: 21, scope: !1604, inlinedAt: !1340)
!1607 = !DILocalVariable(name: "g", arg: 2, scope: !1608, file: !348, line: 107, type: !362)
!1608 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !348, file: !348, line: 107, type: !1609, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1611)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!94, !1351, !362}
!1611 = !{!1612, !1607}
!1612 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1608, file: !348, line: 107, type: !1351)
!1613 = !DILocation(line: 0, scope: !1608, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 180, column: 11, scope: !385, inlinedAt: !1340)
!1615 = !DILocation(line: 0, scope: !1608, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 180, column: 11, scope: !385, inlinedAt: !1340)
!1617 = !DILocation(line: 109, column: 21, scope: !1618, inlinedAt: !1619)
!1618 = distinct !DILexicalBlock(scope: !1608, file: !348, line: 109, column: 7)
!1619 = distinct !DILocation(line: 180, column: 11, scope: !385, inlinedAt: !1340)
!1620 = !DILocation(line: 109, column: 7, scope: !1608, inlinedAt: !1619)
!1621 = !DILocation(line: 111, column: 41, scope: !1608, inlinedAt: !1616)
!1622 = !DILocation(line: 111, column: 24, scope: !1608, inlinedAt: !1616)
!1623 = !DILocation(line: 180, column: 11, scope: !385, inlinedAt: !1340)
!1624 = !DILocation(line: 181, column: 15, scope: !1625, inlinedAt: !1340)
!1625 = distinct !DILexicalBlock(scope: !385, file: !2, line: 181, column: 15)
!1626 = !DILocalVariable(name: "__stream", arg: 1, scope: !1627, file: !1381, line: 135, type: !149)
!1627 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1381, file: !1381, line: 135, type: !1382, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1628)
!1628 = !{!1626}
!1629 = !DILocation(line: 0, scope: !1627, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 181, column: 15, scope: !1625, inlinedAt: !1340)
!1631 = !DILocation(line: 137, column: 10, scope: !1627, inlinedAt: !1630)
!1632 = !DILocation(line: 181, column: 15, scope: !385, inlinedAt: !1340)
!1633 = !DILocation(line: 948, column: 21, scope: !1559, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 182, column: 13, scope: !1625, inlinedAt: !1340)
!1635 = !DILocation(line: 0, scope: !1559, inlinedAt: !1634)
!1636 = !DILocation(line: 949, column: 3, scope: !1559, inlinedAt: !1634)
!1637 = !DILocation(line: 950, column: 11, scope: !1559, inlinedAt: !1634)
!1638 = !DILocation(line: 950, column: 3, scope: !1559, inlinedAt: !1634)
!1639 = !DILocation(line: 951, column: 3, scope: !1559, inlinedAt: !1634)
!1640 = !DILocation(line: 952, column: 3, scope: !1559, inlinedAt: !1634)
!1641 = !DILocation(line: 0, scope: !382, inlinedAt: !1340)
!1642 = !DILocation(line: 184, column: 19, scope: !361, inlinedAt: !1340)
!1643 = !DILocation(line: 183, column: 9, scope: !385, inlinedAt: !1340)
!1644 = distinct !{!1644, !1363, !1645, !1180}
!1645 = !DILocation(line: 184, column: 26, scope: !361, inlinedAt: !1340)
!1646 = !DILocation(line: 185, column: 5, scope: !341, inlinedAt: !1340)
!1647 = distinct !{!1647, !1648, !1646}
!1648 = !DILocation(line: 114, column: 3, scope: !341, inlinedAt: !1340)
!1649 = !DILocation(line: 242, column: 3, scope: !1283)
!1650 = !DILocation(line: 244, column: 10, scope: !1283)
!1651 = !DILocation(line: 244, column: 3, scope: !1283)
!1652 = !DISubprogram(name: "bindtextdomain", scope: !1115, file: !1115, line: 86, type: !1653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!94, !100, !100}
!1655 = !DISubprogram(name: "textdomain", scope: !1115, file: !1115, line: 82, type: !1259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1656 = !DISubprogram(name: "atexit", scope: !1257, file: !1257, line: 602, type: !1657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!63, !719}
!1659 = !DISubprogram(name: "getopt_long", scope: !332, file: !332, line: 66, type: !1660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!63, !63, !1662, !100, !1664, !337}
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!1665 = !DISubprogram(name: "__builtin___memmove_chk", scope: !1666, file: !1666, line: 25, type: !1667, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1666 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/strings_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "2c53309439f074d781ca95a346401d78")
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!95, !95, !1281, !99, !99}
!1669 = !DISubprogram(name: "mbrtoc32", scope: !367, file: !367, line: 57, type: !1670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!97, !1672, !1123, !97, !1674}
!1672 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1673)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1675)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1676 = !DISubprogram(name: "iswblank", scope: !1677, file: !1677, line: 146, type: !1528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1677 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1678 = !DISubprogram(name: "__overflow", scope: !1128, file: !1128, line: 886, type: !1679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!63, !149, !63}
!1681 = !DISubprogram(name: "__errno_location", scope: !1682, file: !1682, line: 37, type: !1683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1682 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!337}
!1685 = !DISubprogram(name: "fflush_unlocked", scope: !1128, file: !1128, line: 239, type: !1382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1686 = !DISubprogram(name: "clearerr_unlocked", scope: !1128, file: !1128, line: 794, type: !1687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{null, !149}
!1689 = !DISubprogram(name: "wcwidth", scope: !1690, file: !1690, line: 368, type: !1691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1690 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!63, !1693}
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !1694, line: 24, baseType: !63)
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
!1730 = distinct !DISubprogram(name: "parse_tab_stops", scope: !410, file: !410, line: 137, type: !1083, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1731)
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
!1754 = !DILocation(line: 141, column: 8, scope: !1730)
!1755 = !DILocation(line: 142, column: 8, scope: !1730)
!1756 = !DILocation(line: 143, column: 15, scope: !1730)
!1757 = !DILocation(line: 144, column: 8, scope: !1730)
!1758 = !DILocation(line: 146, column: 10, scope: !1748)
!1759 = !DILocation(line: 146, column: 3, scope: !1749)
!1760 = !DILocation(line: 148, column: 28, scope: !1746)
!1761 = !DILocation(line: 148, column: 11, scope: !1747)
!1762 = !DILocation(line: 150, column: 15, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !410, line: 150, column: 15)
!1764 = distinct !DILexicalBlock(scope: !1746, file: !410, line: 149, column: 9)
!1765 = !DILocation(line: 150, column: 15, scope: !1764)
!1766 = !DILocation(line: 152, column: 19, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !410, line: 152, column: 19)
!1768 = distinct !DILexicalBlock(scope: !1763, file: !410, line: 151, column: 13)
!1769 = !DILocation(line: 152, column: 19, scope: !1768)
!1770 = !DILocalVariable(name: "tabval", arg: 1, scope: !1771, file: !410, line: 97, type: !374)
!1771 = distinct !DISubprogram(name: "set_extend_size", scope: !410, file: !410, line: 97, type: !1772, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1774)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!136, !374}
!1774 = !{!1770, !1775}
!1775 = !DILocalVariable(name: "ok", scope: !1771, file: !410, line: 99, type: !136)
!1776 = !DILocation(line: 0, scope: !1771, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 154, column: 25, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !410, line: 154, column: 23)
!1779 = distinct !DILexicalBlock(scope: !1767, file: !410, line: 153, column: 17)
!1780 = !DILocation(line: 101, column: 7, scope: !1781, inlinedAt: !1777)
!1781 = distinct !DILexicalBlock(scope: !1771, file: !410, line: 101, column: 7)
!1782 = !DILocation(line: 101, column: 7, scope: !1771, inlinedAt: !1777)
!1783 = !DILocation(line: 103, column: 7, scope: !1784, inlinedAt: !1777)
!1784 = distinct !DILexicalBlock(scope: !1781, file: !410, line: 102, column: 5)
!1785 = !DILocation(line: 107, column: 5, scope: !1784, inlinedAt: !1777)
!1786 = !DILocation(line: 108, column: 15, scope: !1771, inlinedAt: !1777)
!1787 = !DILocation(line: 0, scope: !1718, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 110, column: 3, scope: !1771, inlinedAt: !1777)
!1789 = !DILocation(line: 75, column: 7, scope: !1723, inlinedAt: !1788)
!1790 = !DILocation(line: 75, column: 24, scope: !1723, inlinedAt: !1788)
!1791 = !DILocation(line: 75, column: 7, scope: !1718, inlinedAt: !1788)
!1792 = !DILocation(line: 77, column: 11, scope: !1727, inlinedAt: !1788)
!1793 = !DILocation(line: 154, column: 23, scope: !1779)
!1794 = !DILocation(line: 160, column: 24, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1767, file: !410, line: 160, column: 24)
!1796 = !DILocation(line: 160, column: 24, scope: !1767)
!1797 = !DILocalVariable(name: "tabval", arg: 1, scope: !1798, file: !410, line: 116, type: !374)
!1798 = distinct !DISubprogram(name: "set_increment_size", scope: !410, file: !410, line: 116, type: !1772, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1799)
!1799 = !{!1797, !1800}
!1800 = !DILocalVariable(name: "ok", scope: !1798, file: !410, line: 118, type: !136)
!1801 = !DILocation(line: 0, scope: !1798, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 162, column: 25, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !410, line: 162, column: 23)
!1804 = distinct !DILexicalBlock(scope: !1795, file: !410, line: 161, column: 17)
!1805 = !DILocation(line: 120, column: 7, scope: !1806, inlinedAt: !1802)
!1806 = distinct !DILexicalBlock(scope: !1798, file: !410, line: 120, column: 7)
!1807 = !DILocation(line: 120, column: 7, scope: !1798, inlinedAt: !1802)
!1808 = !DILocation(line: 122, column: 7, scope: !1809, inlinedAt: !1802)
!1809 = distinct !DILexicalBlock(scope: !1806, file: !410, line: 121, column: 5)
!1810 = !DILocation(line: 126, column: 5, scope: !1809, inlinedAt: !1802)
!1811 = !DILocation(line: 127, column: 18, scope: !1798, inlinedAt: !1802)
!1812 = !DILocation(line: 0, scope: !1718, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 129, column: 3, scope: !1798, inlinedAt: !1802)
!1814 = !DILocation(line: 75, column: 7, scope: !1723, inlinedAt: !1813)
!1815 = !DILocation(line: 75, column: 24, scope: !1723, inlinedAt: !1813)
!1816 = !DILocation(line: 75, column: 7, scope: !1718, inlinedAt: !1813)
!1817 = !DILocation(line: 77, column: 11, scope: !1727, inlinedAt: !1813)
!1818 = !DILocation(line: 162, column: 23, scope: !1804)
!1819 = !DILocation(line: 0, scope: !1695, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 169, column: 17, scope: !1795)
!1821 = !DILocation(line: 86, column: 23, scope: !1695, inlinedAt: !1820)
!1822 = !DILocation(line: 91, column: 3, scope: !1695, inlinedAt: !1820)
!1823 = !DILocation(line: 86, column: 40, scope: !1695, inlinedAt: !1820)
!1824 = !DILocation(line: 89, column: 25, scope: !1707, inlinedAt: !1820)
!1825 = !DILocation(line: 89, column: 22, scope: !1707, inlinedAt: !1820)
!1826 = !DILocation(line: 89, column: 7, scope: !1695, inlinedAt: !1820)
!1827 = !DILocation(line: 90, column: 16, scope: !1707, inlinedAt: !1820)
!1828 = !DILocation(line: 90, column: 14, scope: !1707, inlinedAt: !1820)
!1829 = !DILocation(line: 91, column: 26, scope: !1695, inlinedAt: !1820)
!1830 = !DILocation(line: 90, column: 5, scope: !1707, inlinedAt: !1820)
!1831 = !DILocation(line: 87, column: 36, scope: !1695, inlinedAt: !1820)
!1832 = !DILocation(line: 87, column: 24, scope: !1695, inlinedAt: !1820)
!1833 = !DILocation(line: 91, column: 30, scope: !1695, inlinedAt: !1820)
!1834 = !DILocation(line: 0, scope: !1718, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 93, column: 3, scope: !1695, inlinedAt: !1820)
!1836 = !DILocation(line: 75, column: 7, scope: !1723, inlinedAt: !1835)
!1837 = !DILocation(line: 75, column: 24, scope: !1723, inlinedAt: !1835)
!1838 = !DILocation(line: 75, column: 7, scope: !1718, inlinedAt: !1835)
!1839 = !DILocation(line: 77, column: 11, scope: !1727, inlinedAt: !1835)
!1840 = !DILocation(line: 173, column: 16, scope: !1746)
!1841 = !DILocation(line: 175, column: 15, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !410, line: 175, column: 15)
!1843 = distinct !DILexicalBlock(scope: !1745, file: !410, line: 174, column: 9)
!1844 = !DILocation(line: 175, column: 15, scope: !1843)
!1845 = !DILocation(line: 177, column: 15, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1842, file: !410, line: 176, column: 13)
!1847 = !DILocation(line: 180, column: 13, scope: !1846)
!1848 = !DILocation(line: 186, column: 15, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !410, line: 186, column: 15)
!1850 = distinct !DILexicalBlock(scope: !1744, file: !410, line: 185, column: 9)
!1851 = !DILocation(line: 186, column: 15, scope: !1850)
!1852 = !DILocation(line: 188, column: 15, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !410, line: 187, column: 13)
!1854 = !DILocation(line: 191, column: 13, scope: !1853)
!1855 = !DILocation(line: 173, column: 16, scope: !1745)
!1856 = !DILocalVariable(name: "c", arg: 1, scope: !1857, file: !1858, line: 233, type: !63)
!1857 = distinct !DISubprogram(name: "c_isdigit", scope: !1858, file: !1858, line: 233, type: !1859, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1861)
!1858 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!136, !63}
!1861 = !{!1856}
!1862 = !DILocation(line: 0, scope: !1857, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 195, column: 16, scope: !1743)
!1864 = !DILocation(line: 235, column: 3, scope: !1857, inlinedAt: !1863)
!1865 = !DILocation(line: 195, column: 16, scope: !1744)
!1866 = !DILocation(line: 197, column: 16, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1742, file: !410, line: 197, column: 15)
!1868 = !DILocation(line: 197, column: 15, scope: !1742)
!1869 = !DILocation(line: 205, column: 16, scope: !1741)
!1870 = !DILocation(line: 205, column: 15, scope: !1742)
!1871 = !DILocation(line: 207, column: 27, scope: !1740)
!1872 = !DILocation(line: 0, scope: !1740)
!1873 = !DILocation(line: 208, column: 31, scope: !1740)
!1874 = !DILocation(line: 209, column: 15, scope: !1740)
!1875 = !DILocation(line: 210, column: 15, scope: !1740)
!1876 = !DILocation(line: 212, column: 33, scope: !1740)
!1877 = !DILocation(line: 212, column: 39, scope: !1740)
!1878 = !DILocation(line: 213, column: 13, scope: !1740)
!1879 = !DILocation(line: 217, column: 11, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1743, file: !410, line: 216, column: 9)
!1881 = !DILocation(line: 220, column: 11, scope: !1880)
!1882 = !DILocation(line: 146, column: 23, scope: !1748)
!1883 = !DILocation(line: 146, column: 3, scope: !1748)
!1884 = distinct !{!1884, !1759, !1885, !1180}
!1885 = !DILocation(line: 222, column: 5, scope: !1749)
!1886 = !DILocation(line: 224, column: 7, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1730, file: !410, line: 224, column: 7)
!1888 = !DILocation(line: 224, column: 10, scope: !1887)
!1889 = !DILocation(line: 226, column: 11, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !410, line: 226, column: 11)
!1891 = distinct !DILexicalBlock(scope: !1887, file: !410, line: 225, column: 5)
!1892 = !DILocation(line: 226, column: 11, scope: !1891)
!1893 = !DILocation(line: 0, scope: !1771, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 227, column: 15, scope: !1890)
!1895 = !DILocation(line: 101, column: 7, scope: !1781, inlinedAt: !1894)
!1896 = !DILocation(line: 101, column: 7, scope: !1771, inlinedAt: !1894)
!1897 = !DILocation(line: 103, column: 7, scope: !1784, inlinedAt: !1894)
!1898 = !DILocation(line: 107, column: 5, scope: !1784, inlinedAt: !1894)
!1899 = !DILocation(line: 108, column: 15, scope: !1771, inlinedAt: !1894)
!1900 = !DILocation(line: 0, scope: !1718, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 110, column: 3, scope: !1771, inlinedAt: !1894)
!1902 = !DILocation(line: 75, column: 7, scope: !1723, inlinedAt: !1901)
!1903 = !DILocation(line: 75, column: 24, scope: !1723, inlinedAt: !1901)
!1904 = !DILocation(line: 75, column: 7, scope: !1718, inlinedAt: !1901)
!1905 = !DILocation(line: 77, column: 11, scope: !1727, inlinedAt: !1901)
!1906 = !DILocation(line: 227, column: 12, scope: !1890)
!1907 = !DILocation(line: 227, column: 9, scope: !1890)
!1908 = !DILocation(line: 228, column: 16, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1890, file: !410, line: 228, column: 16)
!1910 = !DILocation(line: 228, column: 16, scope: !1890)
!1911 = !DILocation(line: 0, scope: !1798, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 229, column: 15, scope: !1909)
!1913 = !DILocation(line: 120, column: 7, scope: !1806, inlinedAt: !1912)
!1914 = !DILocation(line: 120, column: 7, scope: !1798, inlinedAt: !1912)
!1915 = !DILocation(line: 122, column: 7, scope: !1809, inlinedAt: !1912)
!1916 = !DILocation(line: 126, column: 5, scope: !1809, inlinedAt: !1912)
!1917 = !DILocation(line: 127, column: 18, scope: !1798, inlinedAt: !1912)
!1918 = !DILocation(line: 0, scope: !1718, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 129, column: 3, scope: !1798, inlinedAt: !1912)
!1920 = !DILocation(line: 75, column: 7, scope: !1723, inlinedAt: !1919)
!1921 = !DILocation(line: 75, column: 24, scope: !1723, inlinedAt: !1919)
!1922 = !DILocation(line: 75, column: 7, scope: !1718, inlinedAt: !1919)
!1923 = !DILocation(line: 77, column: 11, scope: !1727, inlinedAt: !1919)
!1924 = !DILocation(line: 229, column: 12, scope: !1909)
!1925 = !DILocation(line: 229, column: 9, scope: !1909)
!1926 = !DILocation(line: 0, scope: !1695, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 231, column: 9, scope: !1909)
!1928 = !DILocation(line: 86, column: 23, scope: !1695, inlinedAt: !1927)
!1929 = !DILocation(line: 91, column: 3, scope: !1695, inlinedAt: !1927)
!1930 = !DILocation(line: 86, column: 40, scope: !1695, inlinedAt: !1927)
!1931 = !DILocation(line: 89, column: 25, scope: !1707, inlinedAt: !1927)
!1932 = !DILocation(line: 89, column: 22, scope: !1707, inlinedAt: !1927)
!1933 = !DILocation(line: 89, column: 7, scope: !1695, inlinedAt: !1927)
!1934 = !DILocation(line: 90, column: 16, scope: !1707, inlinedAt: !1927)
!1935 = !DILocation(line: 90, column: 14, scope: !1707, inlinedAt: !1927)
!1936 = !DILocation(line: 91, column: 26, scope: !1695, inlinedAt: !1927)
!1937 = !DILocation(line: 90, column: 5, scope: !1707, inlinedAt: !1927)
!1938 = !DILocation(line: 87, column: 36, scope: !1695, inlinedAt: !1927)
!1939 = !DILocation(line: 87, column: 24, scope: !1695, inlinedAt: !1927)
!1940 = !DILocation(line: 91, column: 30, scope: !1695, inlinedAt: !1927)
!1941 = !DILocation(line: 0, scope: !1718, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 93, column: 3, scope: !1695, inlinedAt: !1927)
!1943 = !DILocation(line: 75, column: 7, scope: !1723, inlinedAt: !1942)
!1944 = !DILocation(line: 75, column: 24, scope: !1723, inlinedAt: !1942)
!1945 = !DILocation(line: 75, column: 7, scope: !1718, inlinedAt: !1942)
!1946 = !DILocation(line: 77, column: 11, scope: !1727, inlinedAt: !1942)
!1947 = !DILocation(line: 234, column: 9, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1730, file: !410, line: 234, column: 7)
!1949 = !DILocation(line: 234, column: 7, scope: !1730)
!1950 = !DILocation(line: 235, column: 5, scope: !1948)
!1951 = !DILocation(line: 236, column: 1, scope: !1730)
!1952 = !DISubprogram(name: "free", scope: !1257, file: !1257, line: 555, type: !1953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{null, !95}
!1955 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !410, file: !410, line: 268, type: !342, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409)
!1956 = !DILocation(line: 270, column: 23, scope: !1955)
!1957 = !DILocation(line: 270, column: 33, scope: !1955)
!1958 = !DILocalVariable(name: "tabs", arg: 1, scope: !1959, file: !410, line: 242, type: !1962)
!1959 = distinct !DISubprogram(name: "validate_tab_stops", scope: !410, file: !410, line: 242, type: !1960, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1964)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{null, !1962, !354}
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!1964 = !{!1958, !1965, !1966, !1967}
!1965 = !DILocalVariable(name: "entries", arg: 2, scope: !1959, file: !410, line: 242, type: !354)
!1966 = !DILocalVariable(name: "prev_tab", scope: !1959, file: !410, line: 244, type: !374)
!1967 = !DILocalVariable(name: "i", scope: !1968, file: !410, line: 246, type: !354)
!1968 = distinct !DILexicalBlock(scope: !1959, file: !410, line: 246, column: 3)
!1969 = !DILocation(line: 0, scope: !1959, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 270, column: 3, scope: !1955)
!1971 = !DILocation(line: 0, scope: !1968, inlinedAt: !1970)
!1972 = !DILocation(line: 246, column: 23, scope: !1973, inlinedAt: !1970)
!1973 = distinct !DILexicalBlock(scope: !1968, file: !410, line: 246, column: 3)
!1974 = !DILocation(line: 246, column: 3, scope: !1968, inlinedAt: !1970)
!1975 = !DILocation(line: 246, column: 35, scope: !1973, inlinedAt: !1970)
!1976 = distinct !{!1976, !1974, !1977, !1180}
!1977 = !DILocation(line: 253, column: 5, scope: !1968, inlinedAt: !1970)
!1978 = !DILocation(line: 255, column: 7, scope: !1979, inlinedAt: !1970)
!1979 = distinct !DILexicalBlock(scope: !1959, file: !410, line: 255, column: 7)
!1980 = !DILocation(line: 255, column: 22, scope: !1979, inlinedAt: !1970)
!1981 = !DILocation(line: 248, column: 11, scope: !1982, inlinedAt: !1970)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !410, line: 248, column: 11)
!1983 = distinct !DILexicalBlock(scope: !1973, file: !410, line: 247, column: 5)
!1984 = !DILocation(line: 248, column: 19, scope: !1982, inlinedAt: !1970)
!1985 = !DILocation(line: 248, column: 11, scope: !1983, inlinedAt: !1970)
!1986 = !DILocation(line: 249, column: 9, scope: !1982, inlinedAt: !1970)
!1987 = !DILocation(line: 250, column: 19, scope: !1988, inlinedAt: !1970)
!1988 = distinct !DILexicalBlock(scope: !1983, file: !410, line: 250, column: 11)
!1989 = !DILocation(line: 250, column: 11, scope: !1983, inlinedAt: !1970)
!1990 = !DILocation(line: 251, column: 9, scope: !1988, inlinedAt: !1970)
!1991 = !DILocation(line: 256, column: 5, scope: !1979, inlinedAt: !1970)
!1992 = !DILocation(line: 272, column: 22, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1955, file: !410, line: 272, column: 7)
!1994 = !DILocation(line: 272, column: 7, scope: !1955)
!1995 = !DILocation(line: 273, column: 35, scope: !1993)
!1996 = !DILocation(line: 273, column: 33, scope: !1993)
!1997 = !DILocation(line: 273, column: 5, scope: !1993)
!1998 = !DILocation(line: 276, column: 27, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1993, file: !410, line: 276, column: 12)
!2000 = !DILocation(line: 276, column: 32, scope: !1999)
!2001 = !DILocation(line: 277, column: 16, scope: !1999)
!2002 = !DILocation(line: 277, column: 5, scope: !1999)
!2003 = !DILocation(line: 0, scope: !1993)
!2004 = !DILocation(line: 280, column: 1, scope: !1955)
!2005 = distinct !DISubprogram(name: "get_next_tab_column", scope: !410, file: !410, line: 288, type: !2006, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !2010)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!374, !374, !2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!2010 = !{!2011, !2012, !2013, !2014, !2015, !2021, !2025}
!2011 = !DILocalVariable(name: "column", arg: 1, scope: !2005, file: !410, line: 288, type: !374)
!2012 = !DILocalVariable(name: "tab_index", arg: 2, scope: !2005, file: !410, line: 288, type: !2008)
!2013 = !DILocalVariable(name: "last_tab", arg: 3, scope: !2005, file: !410, line: 288, type: !2009)
!2014 = !DILocalVariable(name: "tab_distance", scope: !2005, file: !410, line: 291, type: !374)
!2015 = !DILocalVariable(name: "tab", scope: !2016, file: !410, line: 302, type: !374)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !410, line: 301, column: 9)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !410, line: 300, column: 7)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !410, line: 300, column: 7)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !410, line: 297, column: 5)
!2020 = distinct !DILexicalBlock(scope: !2005, file: !410, line: 294, column: 7)
!2021 = !DILocalVariable(name: "end_tab", scope: !2022, file: !410, line: 314, type: !374)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !410, line: 311, column: 9)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !410, line: 310, column: 16)
!2024 = distinct !DILexicalBlock(scope: !2019, file: !410, line: 308, column: 11)
!2025 = !DILocalVariable(name: "tab_stop", scope: !2005, file: !410, line: 324, type: !374)
!2026 = !DILocation(line: 0, scope: !2005)
!2027 = !DILocation(line: 290, column: 13, scope: !2005)
!2028 = !DILocation(line: 294, column: 7, scope: !2020)
!2029 = !DILocation(line: 294, column: 7, scope: !2005)
!2030 = !DILocation(line: 300, column: 26, scope: !2017)
!2031 = !DILocation(line: 300, column: 7, scope: !2018)
!2032 = !DILocation(line: 295, column: 38, scope: !2020)
!2033 = !DILocation(line: 295, column: 29, scope: !2020)
!2034 = !DILocation(line: 295, column: 5, scope: !2020)
!2035 = !DILocation(line: 302, column: 23, scope: !2016)
!2036 = !DILocation(line: 0, scope: !2016)
!2037 = !DILocation(line: 303, column: 22, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2016, file: !410, line: 303, column: 15)
!2039 = !DILocation(line: 300, column: 57, scope: !2017)
!2040 = distinct !{!2040, !2031, !2041, !1180}
!2041 = !DILocation(line: 305, column: 9, scope: !2018)
!2042 = !DILocation(line: 308, column: 11, scope: !2024)
!2043 = !DILocation(line: 308, column: 11, scope: !2019)
!2044 = !DILocation(line: 309, column: 45, scope: !2024)
!2045 = !DILocation(line: 309, column: 36, scope: !2024)
!2046 = !DILocation(line: 309, column: 9, scope: !2024)
!2047 = !DILocation(line: 310, column: 16, scope: !2023)
!2048 = !DILocation(line: 310, column: 16, scope: !2024)
!2049 = !DILocation(line: 314, column: 27, scope: !2022)
!2050 = !DILocation(line: 0, scope: !2022)
!2051 = !DILocation(line: 315, column: 52, scope: !2022)
!2052 = !DILocation(line: 315, column: 63, scope: !2022)
!2053 = !DILocation(line: 315, column: 41, scope: !2022)
!2054 = !DILocation(line: 316, column: 9, scope: !2022)
!2055 = !DILocation(line: 319, column: 21, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2023, file: !410, line: 318, column: 9)
!2057 = !DILocation(line: 0, scope: !2020)
!2058 = !DILocation(line: 325, column: 7, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2005, file: !410, line: 325, column: 7)
!2060 = !DILocation(line: 325, column: 7, scope: !2005)
!2061 = !DILocation(line: 326, column: 5, scope: !2059)
!2062 = !DILocation(line: 328, column: 1, scope: !2005)
!2063 = distinct !DISubprogram(name: "set_file_list", scope: !410, file: !410, line: 333, type: !2064, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{null, !567}
!2066 = !{!2067}
!2067 = !DILocalVariable(name: "list", arg: 1, scope: !2063, file: !410, line: 333, type: !567)
!2068 = !DILocation(line: 0, scope: !2063)
!2069 = !DILocation(line: 335, column: 19, scope: !2063)
!2070 = !DILocation(line: 337, column: 8, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2063, file: !410, line: 337, column: 7)
!2072 = !DILocation(line: 0, scope: !2071)
!2073 = !DILocation(line: 341, column: 1, scope: !2063)
!2074 = !DILocation(line: 0, scope: !465)
!2075 = !DILocation(line: 354, column: 7, scope: !507)
!2076 = !DILocation(line: 354, column: 7, scope: !465)
!2077 = !DILocation(line: 356, column: 17, scope: !506)
!2078 = !DILocation(line: 0, scope: !506)
!2079 = !DILocalVariable(name: "__stream", arg: 1, scope: !2080, file: !1381, line: 135, type: !468)
!2080 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1381, file: !1381, line: 135, type: !2081, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!63, !468}
!2083 = !{!2079}
!2084 = !DILocation(line: 0, scope: !2080, inlinedAt: !2085)
!2085 = distinct !DILocation(line: 357, column: 12, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !506, file: !410, line: 357, column: 11)
!2087 = !DILocation(line: 137, column: 10, scope: !2080, inlinedAt: !2085)
!2088 = !DILocation(line: 357, column: 12, scope: !2086)
!2089 = !DILocation(line: 357, column: 11, scope: !506)
!2090 = !DILocation(line: 359, column: 18, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !506, file: !410, line: 359, column: 11)
!2092 = !DILocalVariable(name: "__s1", arg: 1, scope: !2093, file: !1146, line: 1359, type: !100)
!2093 = distinct !DISubprogram(name: "streq", scope: !1146, file: !1146, line: 1359, type: !1147, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !2094)
!2094 = !{!2092, !2095}
!2095 = !DILocalVariable(name: "__s2", arg: 2, scope: !2093, file: !1146, line: 1359, type: !100)
!2096 = !DILocation(line: 0, scope: !2093, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 359, column: 11, scope: !2091)
!2098 = !DILocation(line: 1361, column: 11, scope: !2093, inlinedAt: !2097)
!2099 = !DILocation(line: 1361, column: 10, scope: !2093, inlinedAt: !2097)
!2100 = !DILocation(line: 359, column: 11, scope: !506)
!2101 = !DILocation(line: 360, column: 9, scope: !2091)
!2102 = !DILocation(line: 361, column: 16, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2091, file: !410, line: 361, column: 16)
!2104 = !DILocation(line: 361, column: 28, scope: !2103)
!2105 = !DILocation(line: 361, column: 16, scope: !2091)
!2106 = !DILocation(line: 362, column: 15, scope: !2103)
!2107 = !DILocation(line: 362, column: 9, scope: !2103)
!2108 = !DILocation(line: 363, column: 11, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !506, file: !410, line: 363, column: 11)
!2110 = !DILocation(line: 363, column: 11, scope: !506)
!2111 = !DILocation(line: 365, column: 11, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2109, file: !410, line: 364, column: 9)
!2113 = !DILocation(line: 366, column: 23, scope: !2112)
!2114 = !DILocation(line: 367, column: 9, scope: !2112)
!2115 = !DILocation(line: 370, column: 28, scope: !465)
!2116 = !DILocation(line: 370, column: 18, scope: !465)
!2117 = !DILocation(line: 370, column: 32, scope: !465)
!2118 = !DILocation(line: 370, column: 3, scope: !465)
!2119 = !DILocation(line: 0, scope: !2093, inlinedAt: !2120)
!2120 = distinct !DILocation(line: 372, column: 11, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !410, line: 372, column: 11)
!2122 = distinct !DILexicalBlock(scope: !465, file: !410, line: 371, column: 5)
!2123 = !DILocation(line: 1361, column: 11, scope: !2093, inlinedAt: !2120)
!2124 = !DILocation(line: 1361, column: 10, scope: !2093, inlinedAt: !2120)
!2125 = !DILocation(line: 372, column: 11, scope: !2122)
!2126 = !DILocation(line: 374, column: 27, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2121, file: !410, line: 373, column: 9)
!2128 = !DILocation(line: 375, column: 16, scope: !2127)
!2129 = !DILocation(line: 376, column: 9, scope: !2127)
!2130 = !DILocation(line: 378, column: 14, scope: !2121)
!2131 = !DILocation(line: 0, scope: !2121)
!2132 = !DILocation(line: 379, column: 11, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2122, file: !410, line: 379, column: 11)
!2134 = !DILocation(line: 379, column: 11, scope: !2122)
!2135 = !DILocation(line: 381, column: 21, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2133, file: !410, line: 380, column: 9)
!2137 = !DILocation(line: 382, column: 11, scope: !2136)
!2138 = !DILocation(line: 383, column: 11, scope: !2136)
!2139 = !DILocation(line: 385, column: 7, scope: !2122)
!2140 = !DILocation(line: 386, column: 19, scope: !2122)
!2141 = distinct !{!2141, !2118, !2142, !1180}
!2142 = !DILocation(line: 387, column: 5, scope: !465)
!2143 = !DILocation(line: 389, column: 1, scope: !465)
!2144 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !410, file: !410, line: 393, type: !342, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409)
!2145 = !DILocation(line: 395, column: 9, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2144, file: !410, line: 395, column: 9)
!2147 = !DILocation(line: 395, column: 25, scope: !2146)
!2148 = !DILocation(line: 395, column: 36, scope: !2146)
!2149 = !DILocation(line: 395, column: 28, scope: !2146)
!2150 = !DILocation(line: 395, column: 43, scope: !2146)
!2151 = !DILocation(line: 395, column: 9, scope: !2144)
!2152 = !DILocation(line: 396, column: 7, scope: !2146)
!2153 = !DILocation(line: 397, column: 1, scope: !2144)
!2154 = distinct !DISubprogram(name: "emit_tab_list_info", scope: !410, file: !410, line: 402, type: !1083, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !2155)
!2155 = !{!2156}
!2156 = !DILocalVariable(name: "program", arg: 1, scope: !2154, file: !410, line: 402, type: !100)
!2157 = !DILocation(line: 0, scope: !2154)
!2158 = !DILocation(line: 405, column: 20, scope: !2154)
!2159 = !DILocation(line: 0, scope: !570, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 405, column: 3, scope: !2154)
!2161 = !DILocation(line: 581, column: 7, scope: !577, inlinedAt: !2160)
!2162 = !DILocation(line: 581, column: 19, scope: !577, inlinedAt: !2160)
!2163 = !DILocation(line: 581, column: 7, scope: !570, inlinedAt: !2160)
!2164 = !DILocation(line: 585, column: 26, scope: !576, inlinedAt: !2160)
!2165 = !DILocation(line: 0, scope: !576, inlinedAt: !2160)
!2166 = !DILocation(line: 586, column: 23, scope: !576, inlinedAt: !2160)
!2167 = !DILocation(line: 586, column: 28, scope: !576, inlinedAt: !2160)
!2168 = !DILocation(line: 586, column: 32, scope: !576, inlinedAt: !2160)
!2169 = !DILocation(line: 586, column: 38, scope: !576, inlinedAt: !2160)
!2170 = !DILocation(line: 0, scope: !2093, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 586, column: 41, scope: !576, inlinedAt: !2160)
!2172 = !DILocation(line: 1361, column: 11, scope: !2093, inlinedAt: !2171)
!2173 = !DILocation(line: 1361, column: 10, scope: !2093, inlinedAt: !2171)
!2174 = !DILocation(line: 586, column: 19, scope: !576, inlinedAt: !2160)
!2175 = !DILocation(line: 587, column: 5, scope: !576, inlinedAt: !2160)
!2176 = !DILocation(line: 588, column: 7, scope: !2177, inlinedAt: !2160)
!2177 = distinct !DILexicalBlock(scope: !570, file: !62, line: 588, column: 7)
!2178 = !DILocation(line: 588, column: 7, scope: !570, inlinedAt: !2160)
!2179 = !DILocation(line: 590, column: 7, scope: !2180, inlinedAt: !2160)
!2180 = distinct !DILexicalBlock(scope: !2177, file: !62, line: 589, column: 5)
!2181 = !DILocation(line: 591, column: 7, scope: !2180, inlinedAt: !2160)
!2182 = !DILocation(line: 595, column: 37, scope: !570, inlinedAt: !2160)
!2183 = !DILocation(line: 595, column: 35, scope: !570, inlinedAt: !2160)
!2184 = !DILocation(line: 596, column: 29, scope: !570, inlinedAt: !2160)
!2185 = !DILocation(line: 597, column: 8, scope: !584, inlinedAt: !2160)
!2186 = !DILocation(line: 597, column: 7, scope: !570, inlinedAt: !2160)
!2187 = !DILocation(line: 604, column: 24, scope: !583, inlinedAt: !2160)
!2188 = !DILocation(line: 604, column: 12, scope: !584, inlinedAt: !2160)
!2189 = !DILocation(line: 0, scope: !582, inlinedAt: !2160)
!2190 = !DILocation(line: 610, column: 16, scope: !582, inlinedAt: !2160)
!2191 = !DILocation(line: 610, column: 7, scope: !582, inlinedAt: !2160)
!2192 = !DILocation(line: 611, column: 21, scope: !582, inlinedAt: !2160)
!2193 = !DILocation(line: 611, column: 19, scope: !582, inlinedAt: !2160)
!2194 = !DILocation(line: 611, column: 16, scope: !582, inlinedAt: !2160)
!2195 = !DILocation(line: 610, column: 30, scope: !582, inlinedAt: !2160)
!2196 = distinct !{!2196, !2191, !2192, !1180}
!2197 = !DILocation(line: 612, column: 18, scope: !2198, inlinedAt: !2160)
!2198 = distinct !DILexicalBlock(scope: !582, file: !62, line: 612, column: 11)
!2199 = !DILocation(line: 612, column: 11, scope: !582, inlinedAt: !2160)
!2200 = !DILocation(line: 618, column: 5, scope: !582, inlinedAt: !2160)
!2201 = !DILocation(line: 620, column: 23, scope: !570, inlinedAt: !2160)
!2202 = !DILocation(line: 625, column: 39, scope: !570, inlinedAt: !2160)
!2203 = !DILocation(line: 626, column: 3, scope: !570, inlinedAt: !2160)
!2204 = !DILocation(line: 626, column: 10, scope: !570, inlinedAt: !2160)
!2205 = !DILocation(line: 626, column: 21, scope: !570, inlinedAt: !2160)
!2206 = !DILocation(line: 628, column: 44, scope: !2207, inlinedAt: !2160)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !62, line: 628, column: 11)
!2208 = distinct !DILexicalBlock(scope: !570, file: !62, line: 627, column: 5)
!2209 = !DILocation(line: 628, column: 32, scope: !2207, inlinedAt: !2160)
!2210 = !DILocation(line: 628, column: 49, scope: !2207, inlinedAt: !2160)
!2211 = !DILocation(line: 628, column: 11, scope: !2208, inlinedAt: !2160)
!2212 = !DILocation(line: 630, column: 11, scope: !2213, inlinedAt: !2160)
!2213 = distinct !DILexicalBlock(scope: !2208, file: !62, line: 630, column: 11)
!2214 = !DILocation(line: 630, column: 11, scope: !2208, inlinedAt: !2160)
!2215 = !DILocation(line: 632, column: 26, scope: !2216, inlinedAt: !2160)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !62, line: 632, column: 15)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !62, line: 631, column: 9)
!2218 = !DILocation(line: 632, column: 34, scope: !2216, inlinedAt: !2160)
!2219 = !DILocation(line: 632, column: 37, scope: !2216, inlinedAt: !2160)
!2220 = !DILocation(line: 632, column: 15, scope: !2217, inlinedAt: !2160)
!2221 = !DILocation(line: 636, column: 16, scope: !2222, inlinedAt: !2160)
!2222 = distinct !DILexicalBlock(scope: !2217, file: !62, line: 636, column: 15)
!2223 = !DILocation(line: 636, column: 29, scope: !2222, inlinedAt: !2160)
!2224 = !DILocation(line: 640, column: 16, scope: !2208, inlinedAt: !2160)
!2225 = distinct !{!2225, !2203, !2226, !1180}
!2226 = !DILocation(line: 641, column: 5, scope: !570, inlinedAt: !2160)
!2227 = !DILocation(line: 644, column: 3, scope: !570, inlinedAt: !2160)
!2228 = !DILocation(line: 0, scope: !2093, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 648, column: 31, scope: !570, inlinedAt: !2160)
!2230 = !DILocation(line: 1361, column: 11, scope: !2093, inlinedAt: !2229)
!2231 = !DILocation(line: 1361, column: 10, scope: !2093, inlinedAt: !2229)
!2232 = !DILocation(line: 648, column: 31, scope: !570, inlinedAt: !2160)
!2233 = !DILocation(line: 0, scope: !2093, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 649, column: 31, scope: !570, inlinedAt: !2160)
!2235 = !DILocation(line: 1361, column: 11, scope: !2093, inlinedAt: !2234)
!2236 = !DILocation(line: 1361, column: 10, scope: !2093, inlinedAt: !2234)
!2237 = !DILocation(line: 649, column: 31, scope: !570, inlinedAt: !2160)
!2238 = !DILocation(line: 0, scope: !2093, inlinedAt: !2239)
!2239 = distinct !DILocation(line: 650, column: 31, scope: !570, inlinedAt: !2160)
!2240 = !DILocation(line: 1361, column: 11, scope: !2093, inlinedAt: !2239)
!2241 = !DILocation(line: 1361, column: 10, scope: !2093, inlinedAt: !2239)
!2242 = !DILocation(line: 650, column: 31, scope: !570, inlinedAt: !2160)
!2243 = !DILocation(line: 0, scope: !2093, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 651, column: 31, scope: !570, inlinedAt: !2160)
!2245 = !DILocation(line: 1361, column: 11, scope: !2093, inlinedAt: !2244)
!2246 = !DILocation(line: 1361, column: 10, scope: !2093, inlinedAt: !2244)
!2247 = !DILocation(line: 651, column: 31, scope: !570, inlinedAt: !2160)
!2248 = !DILocation(line: 0, scope: !2093, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 652, column: 31, scope: !570, inlinedAt: !2160)
!2250 = !DILocation(line: 1361, column: 11, scope: !2093, inlinedAt: !2249)
!2251 = !DILocation(line: 1361, column: 10, scope: !2093, inlinedAt: !2249)
!2252 = !DILocation(line: 652, column: 31, scope: !570, inlinedAt: !2160)
!2253 = !DILocation(line: 0, scope: !2093, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 653, column: 31, scope: !570, inlinedAt: !2160)
!2255 = !DILocation(line: 1361, column: 11, scope: !2093, inlinedAt: !2254)
!2256 = !DILocation(line: 1361, column: 10, scope: !2093, inlinedAt: !2254)
!2257 = !DILocation(line: 653, column: 31, scope: !570, inlinedAt: !2160)
!2258 = !DILocation(line: 0, scope: !2093, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 654, column: 31, scope: !570, inlinedAt: !2160)
!2260 = !DILocation(line: 1361, column: 11, scope: !2093, inlinedAt: !2259)
!2261 = !DILocation(line: 1361, column: 10, scope: !2093, inlinedAt: !2259)
!2262 = !DILocation(line: 654, column: 31, scope: !570, inlinedAt: !2160)
!2263 = !DILocation(line: 0, scope: !2093, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 655, column: 31, scope: !570, inlinedAt: !2160)
!2265 = !DILocation(line: 1361, column: 11, scope: !2093, inlinedAt: !2264)
!2266 = !DILocation(line: 1361, column: 10, scope: !2093, inlinedAt: !2264)
!2267 = !DILocation(line: 655, column: 31, scope: !570, inlinedAt: !2160)
!2268 = !DILocation(line: 0, scope: !2093, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 656, column: 31, scope: !570, inlinedAt: !2160)
!2270 = !DILocation(line: 1361, column: 11, scope: !2093, inlinedAt: !2269)
!2271 = !DILocation(line: 1361, column: 10, scope: !2093, inlinedAt: !2269)
!2272 = !DILocation(line: 656, column: 31, scope: !570, inlinedAt: !2160)
!2273 = !DILocation(line: 0, scope: !2093, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 657, column: 31, scope: !570, inlinedAt: !2160)
!2275 = !DILocation(line: 1361, column: 11, scope: !2093, inlinedAt: !2274)
!2276 = !DILocation(line: 1361, column: 10, scope: !2093, inlinedAt: !2274)
!2277 = !DILocation(line: 657, column: 31, scope: !570, inlinedAt: !2160)
!2278 = !DILocation(line: 663, column: 7, scope: !2279, inlinedAt: !2160)
!2279 = distinct !DILexicalBlock(scope: !570, file: !62, line: 663, column: 7)
!2280 = !DILocation(line: 664, column: 7, scope: !2279, inlinedAt: !2160)
!2281 = !DILocation(line: 664, column: 10, scope: !2279, inlinedAt: !2160)
!2282 = !DILocation(line: 663, column: 7, scope: !570, inlinedAt: !2160)
!2283 = !DILocation(line: 669, column: 7, scope: !2284, inlinedAt: !2160)
!2284 = distinct !DILexicalBlock(scope: !2279, file: !62, line: 665, column: 5)
!2285 = !DILocation(line: 671, column: 5, scope: !2284, inlinedAt: !2160)
!2286 = !DILocation(line: 676, column: 7, scope: !2287, inlinedAt: !2160)
!2287 = distinct !DILexicalBlock(scope: !2279, file: !62, line: 673, column: 5)
!2288 = !DILocation(line: 679, column: 3, scope: !570, inlinedAt: !2160)
!2289 = !DILocation(line: 683, column: 3, scope: !570, inlinedAt: !2160)
!2290 = !DILocation(line: 686, column: 3, scope: !570, inlinedAt: !2160)
!2291 = !DILocation(line: 688, column: 3, scope: !570, inlinedAt: !2160)
!2292 = !DILocation(line: 691, column: 3, scope: !570, inlinedAt: !2160)
!2293 = !DILocation(line: 695, column: 3, scope: !570, inlinedAt: !2160)
!2294 = !DILocation(line: 696, column: 1, scope: !570, inlinedAt: !2160)
!2295 = !DILocation(line: 409, column: 3, scope: !2154)
!2296 = !DILocation(line: 416, column: 1, scope: !2154)
!2297 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !662, file: !662, line: 50, type: !1083, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !2298)
!2298 = !{!2299}
!2299 = !DILocalVariable(name: "file", arg: 1, scope: !2297, file: !662, line: 50, type: !100)
!2300 = !DILocation(line: 0, scope: !2297)
!2301 = !DILocation(line: 52, column: 13, scope: !2297)
!2302 = !DILocation(line: 53, column: 1, scope: !2297)
!2303 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !662, file: !662, line: 87, type: !2304, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !2306)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{null, !136}
!2306 = !{!2307}
!2307 = !DILocalVariable(name: "ignore", arg: 1, scope: !2303, file: !662, line: 87, type: !136)
!2308 = !DILocation(line: 0, scope: !2303)
!2309 = !DILocation(line: 89, column: 16, scope: !2303)
!2310 = !DILocation(line: 90, column: 1, scope: !2303)
!2311 = distinct !DISubprogram(name: "close_stdout", scope: !662, file: !662, line: 116, type: !342, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !2312)
!2312 = !{!2313}
!2313 = !DILocalVariable(name: "write_error", scope: !2314, file: !662, line: 121, type: !100)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !662, line: 120, column: 5)
!2315 = distinct !DILexicalBlock(scope: !2311, file: !662, line: 118, column: 7)
!2316 = !DILocation(line: 118, column: 21, scope: !2315)
!2317 = !DILocation(line: 118, column: 7, scope: !2315)
!2318 = !DILocation(line: 118, column: 29, scope: !2315)
!2319 = !DILocation(line: 119, column: 7, scope: !2315)
!2320 = !DILocation(line: 119, column: 12, scope: !2315)
!2321 = !DILocation(line: 119, column: 25, scope: !2315)
!2322 = !DILocation(line: 119, column: 28, scope: !2315)
!2323 = !DILocation(line: 119, column: 34, scope: !2315)
!2324 = !DILocation(line: 118, column: 7, scope: !2311)
!2325 = !DILocation(line: 121, column: 33, scope: !2314)
!2326 = !DILocation(line: 0, scope: !2314)
!2327 = !DILocation(line: 122, column: 11, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2314, file: !662, line: 122, column: 11)
!2329 = !DILocation(line: 0, scope: !2328)
!2330 = !DILocation(line: 122, column: 11, scope: !2314)
!2331 = !DILocation(line: 123, column: 9, scope: !2328)
!2332 = !DILocation(line: 126, column: 9, scope: !2328)
!2333 = !DILocation(line: 128, column: 14, scope: !2314)
!2334 = !DILocation(line: 128, column: 7, scope: !2314)
!2335 = !DILocation(line: 133, column: 42, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2311, file: !662, line: 133, column: 7)
!2337 = !DILocation(line: 133, column: 28, scope: !2336)
!2338 = !DILocation(line: 133, column: 50, scope: !2336)
!2339 = !DILocation(line: 133, column: 7, scope: !2311)
!2340 = !DILocation(line: 134, column: 12, scope: !2336)
!2341 = !DILocation(line: 134, column: 5, scope: !2336)
!2342 = !DILocation(line: 135, column: 1, scope: !2311)
!2343 = !DISubprogram(name: "_exit", scope: !2344, file: !2344, line: 624, type: !1053, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2344 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2345 = distinct !DISubprogram(name: "verror", scope: !677, file: !677, line: 251, type: !2346, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2348)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{null, !63, !63, !100, !687}
!2348 = !{!2349, !2350, !2351, !2352}
!2349 = !DILocalVariable(name: "status", arg: 1, scope: !2345, file: !677, line: 251, type: !63)
!2350 = !DILocalVariable(name: "errnum", arg: 2, scope: !2345, file: !677, line: 251, type: !63)
!2351 = !DILocalVariable(name: "message", arg: 3, scope: !2345, file: !677, line: 251, type: !100)
!2352 = !DILocalVariable(name: "args", arg: 4, scope: !2345, file: !677, line: 251, type: !687)
!2353 = !DILocation(line: 0, scope: !2345)
!2354 = !DILocation(line: 261, column: 3, scope: !2345)
!2355 = !DILocation(line: 265, column: 7, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2345, file: !677, line: 265, column: 7)
!2357 = !DILocation(line: 265, column: 7, scope: !2345)
!2358 = !DILocation(line: 266, column: 5, scope: !2356)
!2359 = !DILocation(line: 272, column: 7, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2356, file: !677, line: 268, column: 5)
!2361 = !DILocation(line: 276, column: 3, scope: !2345)
!2362 = !DILocation(line: 282, column: 1, scope: !2345)
!2363 = distinct !DISubprogram(name: "flush_stdout", scope: !677, file: !677, line: 163, type: !342, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2364)
!2364 = !{!2365}
!2365 = !DILocalVariable(name: "stdout_fd", scope: !2363, file: !677, line: 166, type: !63)
!2366 = !DILocation(line: 0, scope: !2363)
!2367 = !DILocalVariable(name: "fd", arg: 1, scope: !2368, file: !677, line: 145, type: !63)
!2368 = distinct !DISubprogram(name: "is_open", scope: !677, file: !677, line: 145, type: !1546, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2369)
!2369 = !{!2367}
!2370 = !DILocation(line: 0, scope: !2368, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 182, column: 25, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2363, file: !677, line: 182, column: 7)
!2373 = !DILocation(line: 157, column: 15, scope: !2368, inlinedAt: !2371)
!2374 = !DILocation(line: 157, column: 12, scope: !2368, inlinedAt: !2371)
!2375 = !DILocation(line: 182, column: 7, scope: !2363)
!2376 = !DILocation(line: 184, column: 5, scope: !2372)
!2377 = !DILocation(line: 185, column: 1, scope: !2363)
!2378 = distinct !DISubprogram(name: "error_tail", scope: !677, file: !677, line: 219, type: !2346, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2379)
!2379 = !{!2380, !2381, !2382, !2383}
!2380 = !DILocalVariable(name: "status", arg: 1, scope: !2378, file: !677, line: 219, type: !63)
!2381 = !DILocalVariable(name: "errnum", arg: 2, scope: !2378, file: !677, line: 219, type: !63)
!2382 = !DILocalVariable(name: "message", arg: 3, scope: !2378, file: !677, line: 219, type: !100)
!2383 = !DILocalVariable(name: "args", arg: 4, scope: !2378, file: !677, line: 219, type: !687)
!2384 = distinct !DIAssignID()
!2385 = !DILocation(line: 0, scope: !2378)
!2386 = !DILocation(line: 229, column: 13, scope: !2378)
!2387 = !DILocalVariable(name: "__stream", arg: 1, scope: !2388, file: !1119, line: 132, type: !2391)
!2388 = distinct !DISubprogram(name: "vfprintf", scope: !1119, file: !1119, line: 132, type: !2389, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2426)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!63, !2391, !1123, !687}
!2391 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2392)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2394)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2395)
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2394, file: !153, line: 51, baseType: !63, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2394, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2394, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2394, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2394, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2394, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2394, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2394, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2394, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2394, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2394, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2394, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2394, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2394, file: !153, line: 70, baseType: !2410, size: 64, offset: 832)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2394, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2394, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2394, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2394, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2394, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2394, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2394, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2394, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2394, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2394, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2394, file: !153, line: 93, baseType: !2410, size: 64, offset: 1344)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2394, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2394, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2394, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2394, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2426 = !{!2387, !2427, !2428}
!2427 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2388, file: !1119, line: 133, type: !1123)
!2428 = !DILocalVariable(name: "__ap", arg: 3, scope: !2388, file: !1119, line: 133, type: !687)
!2429 = !DILocation(line: 0, scope: !2388, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 229, column: 3, scope: !2378)
!2431 = !DILocation(line: 135, column: 10, scope: !2388, inlinedAt: !2430)
!2432 = !DILocation(line: 232, column: 3, scope: !2378)
!2433 = !DILocation(line: 233, column: 7, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2378, file: !677, line: 233, column: 7)
!2435 = !DILocation(line: 233, column: 7, scope: !2378)
!2436 = !DILocalVariable(name: "errbuf", scope: !2437, file: !677, line: 193, type: !2441)
!2437 = distinct !DISubprogram(name: "print_errno_message", scope: !677, file: !677, line: 188, type: !1053, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2438)
!2438 = !{!2439, !2440, !2436}
!2439 = !DILocalVariable(name: "errnum", arg: 1, scope: !2437, file: !677, line: 188, type: !63)
!2440 = !DILocalVariable(name: "s", scope: !2437, file: !677, line: 190, type: !100)
!2441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2442)
!2442 = !{!2443}
!2443 = !DISubrange(count: 1024)
!2444 = !DILocation(line: 0, scope: !2437, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 234, column: 5, scope: !2434)
!2446 = !DILocation(line: 193, column: 3, scope: !2437, inlinedAt: !2445)
!2447 = !DILocation(line: 195, column: 7, scope: !2437, inlinedAt: !2445)
!2448 = !DILocation(line: 207, column: 9, scope: !2449, inlinedAt: !2445)
!2449 = distinct !DILexicalBlock(scope: !2437, file: !677, line: 207, column: 7)
!2450 = !DILocation(line: 207, column: 7, scope: !2437, inlinedAt: !2445)
!2451 = !DILocation(line: 208, column: 9, scope: !2449, inlinedAt: !2445)
!2452 = !DILocation(line: 208, column: 5, scope: !2449, inlinedAt: !2445)
!2453 = !DILocation(line: 214, column: 3, scope: !2437, inlinedAt: !2445)
!2454 = !DILocation(line: 216, column: 1, scope: !2437, inlinedAt: !2445)
!2455 = !DILocation(line: 234, column: 5, scope: !2434)
!2456 = !DILocation(line: 238, column: 3, scope: !2378)
!2457 = !DILocalVariable(name: "__c", arg: 1, scope: !2458, file: !1381, line: 101, type: !63)
!2458 = distinct !DISubprogram(name: "putc_unlocked", scope: !1381, file: !1381, line: 101, type: !2459, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2461)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!63, !63, !2392}
!2461 = !{!2457, !2462}
!2462 = !DILocalVariable(name: "__stream", arg: 2, scope: !2458, file: !1381, line: 101, type: !2392)
!2463 = !DILocation(line: 0, scope: !2458, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 238, column: 3, scope: !2378)
!2465 = !DILocation(line: 103, column: 10, scope: !2458, inlinedAt: !2464)
!2466 = !DILocation(line: 240, column: 3, scope: !2378)
!2467 = !DILocation(line: 241, column: 7, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2378, file: !677, line: 241, column: 7)
!2469 = !DILocation(line: 241, column: 7, scope: !2378)
!2470 = !DILocation(line: 242, column: 5, scope: !2468)
!2471 = !DILocation(line: 243, column: 1, scope: !2378)
!2472 = !DISubprogram(name: "__vfprintf_chk", scope: !1119, file: !1119, line: 96, type: !2473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!63, !2391, !63, !1123, !687}
!2475 = !DISubprogram(name: "strerror_r", scope: !1253, file: !1253, line: 444, type: !2476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!94, !63, !94, !97}
!2478 = !DISubprogram(name: "fcntl", scope: !2479, file: !2479, line: 149, type: !2480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2479 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!63, !63, !63, null}
!2482 = distinct !DISubprogram(name: "error", scope: !677, file: !677, line: 285, type: !2483, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2485)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{null, !63, !63, !100, null}
!2485 = !{!2486, !2487, !2488, !2489}
!2486 = !DILocalVariable(name: "status", arg: 1, scope: !2482, file: !677, line: 285, type: !63)
!2487 = !DILocalVariable(name: "errnum", arg: 2, scope: !2482, file: !677, line: 285, type: !63)
!2488 = !DILocalVariable(name: "message", arg: 3, scope: !2482, file: !677, line: 285, type: !100)
!2489 = !DILocalVariable(name: "ap", scope: !2482, file: !677, line: 287, type: !2490)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1128, line: 52, baseType: !2491)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2492, line: 12, baseType: !2493)
!2492 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !677, baseType: !2494)
!2494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 192, elements: !45)
!2495 = distinct !DIAssignID()
!2496 = !DILocation(line: 0, scope: !2482)
!2497 = !DILocation(line: 287, column: 3, scope: !2482)
!2498 = !DILocation(line: 288, column: 3, scope: !2482)
!2499 = !DILocation(line: 289, column: 3, scope: !2482)
!2500 = !DILocation(line: 290, column: 3, scope: !2482)
!2501 = !DILocation(line: 291, column: 1, scope: !2482)
!2502 = !DILocation(line: 0, scope: !684)
!2503 = !DILocation(line: 302, column: 7, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !684, file: !677, line: 302, column: 7)
!2505 = !DILocation(line: 302, column: 7, scope: !684)
!2506 = !DILocation(line: 307, column: 11, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !677, line: 307, column: 11)
!2508 = distinct !DILexicalBlock(scope: !2504, file: !677, line: 303, column: 5)
!2509 = !DILocation(line: 307, column: 27, scope: !2507)
!2510 = !DILocation(line: 308, column: 11, scope: !2507)
!2511 = !DILocation(line: 308, column: 28, scope: !2507)
!2512 = !DILocation(line: 308, column: 25, scope: !2507)
!2513 = !DILocation(line: 309, column: 15, scope: !2507)
!2514 = !DILocation(line: 309, column: 33, scope: !2507)
!2515 = !DILocation(line: 310, column: 19, scope: !2507)
!2516 = !DILocation(line: 311, column: 22, scope: !2507)
!2517 = !DILocation(line: 311, column: 56, scope: !2507)
!2518 = !DILocation(line: 307, column: 11, scope: !2508)
!2519 = !DILocation(line: 316, column: 21, scope: !2508)
!2520 = !DILocation(line: 317, column: 23, scope: !2508)
!2521 = !DILocation(line: 318, column: 5, scope: !2508)
!2522 = !DILocation(line: 327, column: 3, scope: !684)
!2523 = !DILocation(line: 331, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !684, file: !677, line: 331, column: 7)
!2525 = !DILocation(line: 331, column: 7, scope: !684)
!2526 = !DILocation(line: 332, column: 5, scope: !2524)
!2527 = !DILocation(line: 338, column: 7, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2524, file: !677, line: 334, column: 5)
!2529 = !DILocation(line: 346, column: 3, scope: !684)
!2530 = !DILocation(line: 350, column: 3, scope: !684)
!2531 = !DILocation(line: 356, column: 1, scope: !684)
!2532 = distinct !DISubprogram(name: "error_at_line", scope: !677, file: !677, line: 359, type: !2533, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2535)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{null, !63, !63, !100, !69, !100, null}
!2535 = !{!2536, !2537, !2538, !2539, !2540, !2541}
!2536 = !DILocalVariable(name: "status", arg: 1, scope: !2532, file: !677, line: 359, type: !63)
!2537 = !DILocalVariable(name: "errnum", arg: 2, scope: !2532, file: !677, line: 359, type: !63)
!2538 = !DILocalVariable(name: "file_name", arg: 3, scope: !2532, file: !677, line: 359, type: !100)
!2539 = !DILocalVariable(name: "line_number", arg: 4, scope: !2532, file: !677, line: 360, type: !69)
!2540 = !DILocalVariable(name: "message", arg: 5, scope: !2532, file: !677, line: 360, type: !100)
!2541 = !DILocalVariable(name: "ap", scope: !2532, file: !677, line: 362, type: !2490)
!2542 = distinct !DIAssignID()
!2543 = !DILocation(line: 0, scope: !2532)
!2544 = !DILocation(line: 362, column: 3, scope: !2532)
!2545 = !DILocation(line: 363, column: 3, scope: !2532)
!2546 = !DILocation(line: 364, column: 3, scope: !2532)
!2547 = !DILocation(line: 366, column: 3, scope: !2532)
!2548 = !DILocation(line: 367, column: 1, scope: !2532)
!2549 = distinct !DISubprogram(name: "fdadvise", scope: !974, file: !974, line: 25, type: !2550, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !2554)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{null, !63, !2552, !2552, !2553}
!2552 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1128, line: 63, baseType: !175)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !977, line: 51, baseType: !976)
!2554 = !{!2555, !2556, !2557, !2558}
!2555 = !DILocalVariable(name: "fd", arg: 1, scope: !2549, file: !974, line: 25, type: !63)
!2556 = !DILocalVariable(name: "offset", arg: 2, scope: !2549, file: !974, line: 25, type: !2552)
!2557 = !DILocalVariable(name: "len", arg: 3, scope: !2549, file: !974, line: 25, type: !2552)
!2558 = !DILocalVariable(name: "advice", arg: 4, scope: !2549, file: !974, line: 25, type: !2553)
!2559 = !DILocation(line: 0, scope: !2549)
!2560 = !DILocation(line: 28, column: 3, scope: !2549)
!2561 = !DILocation(line: 30, column: 1, scope: !2549)
!2562 = !DISubprogram(name: "posix_fadvise", scope: !2479, file: !2479, line: 273, type: !2563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!63, !63, !2552, !2552, !63}
!2565 = distinct !DISubprogram(name: "fadvise", scope: !974, file: !974, line: 33, type: !2566, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !2602)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{null, !2568, !2553}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2570)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2571)
!2571 = !{!2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2570, file: !153, line: 51, baseType: !63, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2570, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2570, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2570, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2570, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2570, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2570, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2570, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2570, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2570, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2570, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2570, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2570, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2570, file: !153, line: 70, baseType: !2586, size: 64, offset: 832)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2570, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2570, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2570, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2570, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2570, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2570, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2570, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2570, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2570, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2570, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2570, file: !153, line: 93, baseType: !2586, size: 64, offset: 1344)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2570, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2570, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2570, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2570, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2602 = !{!2603, !2604}
!2603 = !DILocalVariable(name: "fp", arg: 1, scope: !2565, file: !974, line: 33, type: !2568)
!2604 = !DILocalVariable(name: "advice", arg: 2, scope: !2565, file: !974, line: 33, type: !2553)
!2605 = !DILocation(line: 0, scope: !2565)
!2606 = !DILocation(line: 35, column: 7, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2565, file: !974, line: 35, column: 7)
!2608 = !DILocation(line: 35, column: 7, scope: !2565)
!2609 = !DILocation(line: 36, column: 15, scope: !2607)
!2610 = !DILocation(line: 0, scope: !2549, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 36, column: 5, scope: !2607)
!2612 = !DILocation(line: 28, column: 3, scope: !2549, inlinedAt: !2611)
!2613 = !DILocation(line: 36, column: 5, scope: !2607)
!2614 = !DILocation(line: 37, column: 1, scope: !2565)
!2615 = !DISubprogram(name: "fileno", scope: !1128, file: !1128, line: 809, type: !2616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!63, !2568}
!2618 = distinct !DISubprogram(name: "rpl_fclose", scope: !979, file: !979, line: 58, type: !2619, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !978, retainedNodes: !2655)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!63, !2621}
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2623)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2624)
!2624 = !{!2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2623, file: !153, line: 51, baseType: !63, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2623, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2623, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2623, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2623, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2623, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2623, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2623, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2623, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2623, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2623, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2623, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2623, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2623, file: !153, line: 70, baseType: !2639, size: 64, offset: 832)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2623, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2623, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2623, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2623, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2623, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2623, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2623, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2623, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2623, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2623, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2623, file: !153, line: 93, baseType: !2639, size: 64, offset: 1344)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2623, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2623, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2623, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2623, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2655 = !{!2656, !2657, !2658, !2659}
!2656 = !DILocalVariable(name: "fp", arg: 1, scope: !2618, file: !979, line: 58, type: !2621)
!2657 = !DILocalVariable(name: "saved_errno", scope: !2618, file: !979, line: 60, type: !63)
!2658 = !DILocalVariable(name: "fd", scope: !2618, file: !979, line: 63, type: !63)
!2659 = !DILocalVariable(name: "result", scope: !2618, file: !979, line: 74, type: !63)
!2660 = !DILocation(line: 0, scope: !2618)
!2661 = !DILocation(line: 63, column: 12, scope: !2618)
!2662 = !DILocation(line: 64, column: 10, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2618, file: !979, line: 64, column: 7)
!2664 = !DILocation(line: 64, column: 7, scope: !2618)
!2665 = !DILocation(line: 65, column: 12, scope: !2663)
!2666 = !DILocation(line: 65, column: 5, scope: !2663)
!2667 = !DILocation(line: 70, column: 9, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2618, file: !979, line: 70, column: 7)
!2669 = !DILocation(line: 70, column: 23, scope: !2668)
!2670 = !DILocation(line: 70, column: 33, scope: !2668)
!2671 = !DILocation(line: 70, column: 26, scope: !2668)
!2672 = !DILocation(line: 70, column: 59, scope: !2668)
!2673 = !DILocation(line: 71, column: 7, scope: !2668)
!2674 = !DILocation(line: 71, column: 10, scope: !2668)
!2675 = !DILocation(line: 70, column: 7, scope: !2618)
!2676 = !DILocation(line: 100, column: 12, scope: !2618)
!2677 = !DILocation(line: 105, column: 7, scope: !2618)
!2678 = !DILocation(line: 72, column: 19, scope: !2668)
!2679 = !DILocation(line: 105, column: 19, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2618, file: !979, line: 105, column: 7)
!2681 = !DILocation(line: 107, column: 13, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2680, file: !979, line: 106, column: 5)
!2683 = !DILocation(line: 109, column: 5, scope: !2682)
!2684 = !DILocation(line: 112, column: 1, scope: !2618)
!2685 = !DISubprogram(name: "fclose", scope: !1128, file: !1128, line: 178, type: !2619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2686 = !DISubprogram(name: "__freading", scope: !2687, file: !2687, line: 51, type: !2619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2687 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2688 = !DISubprogram(name: "lseek", scope: !2344, file: !2344, line: 339, type: !2689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!175, !63, !175, !63}
!2691 = distinct !DISubprogram(name: "rpl_fflush", scope: !981, file: !981, line: 130, type: !2692, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !2728)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!63, !2694}
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2696)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2697)
!2697 = !{!2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2696, file: !153, line: 51, baseType: !63, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2696, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2696, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2696, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2696, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2696, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2696, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2696, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2696, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2696, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2696, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2696, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2696, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2696, file: !153, line: 70, baseType: !2712, size: 64, offset: 832)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2696, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2696, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2696, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2696, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2696, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2696, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2696, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2696, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2696, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2696, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2696, file: !153, line: 93, baseType: !2712, size: 64, offset: 1344)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2696, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2696, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2696, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2696, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2728 = !{!2729}
!2729 = !DILocalVariable(name: "stream", arg: 1, scope: !2691, file: !981, line: 130, type: !2694)
!2730 = !DILocation(line: 0, scope: !2691)
!2731 = !DILocation(line: 151, column: 14, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2691, file: !981, line: 151, column: 7)
!2733 = !DILocation(line: 151, column: 22, scope: !2732)
!2734 = !DILocation(line: 151, column: 27, scope: !2732)
!2735 = !DILocation(line: 151, column: 7, scope: !2691)
!2736 = !DILocation(line: 152, column: 12, scope: !2732)
!2737 = !DILocation(line: 152, column: 5, scope: !2732)
!2738 = !DILocalVariable(name: "fp", arg: 1, scope: !2739, file: !981, line: 42, type: !2694)
!2739 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !981, file: !981, line: 42, type: !2740, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{null, !2694}
!2742 = !{!2738}
!2743 = !DILocation(line: 0, scope: !2739, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 157, column: 3, scope: !2691)
!2745 = !DILocation(line: 44, column: 12, scope: !2746, inlinedAt: !2744)
!2746 = distinct !DILexicalBlock(scope: !2739, file: !981, line: 44, column: 7)
!2747 = !DILocation(line: 44, column: 19, scope: !2746, inlinedAt: !2744)
!2748 = !DILocation(line: 44, column: 7, scope: !2739, inlinedAt: !2744)
!2749 = !DILocation(line: 46, column: 5, scope: !2746, inlinedAt: !2744)
!2750 = !DILocation(line: 159, column: 10, scope: !2691)
!2751 = !DILocation(line: 159, column: 3, scope: !2691)
!2752 = !DILocation(line: 236, column: 1, scope: !2691)
!2753 = !DISubprogram(name: "fflush", scope: !1128, file: !1128, line: 230, type: !2692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2754 = distinct !DISubprogram(name: "fpurge", scope: !984, file: !984, line: 32, type: !2755, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !983, retainedNodes: !2791)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!63, !2757}
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2759)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2760)
!2760 = !{!2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2759, file: !153, line: 51, baseType: !63, size: 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2759, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2759, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2759, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2759, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2759, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2759, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2759, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2759, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2759, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2759, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2759, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2759, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2759, file: !153, line: 70, baseType: !2775, size: 64, offset: 832)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2759, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2759, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2759, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2759, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2759, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2759, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2759, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2759, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2759, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2759, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2759, file: !153, line: 93, baseType: !2775, size: 64, offset: 1344)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2759, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2759, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2759, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2759, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2791 = !{!2792}
!2792 = !DILocalVariable(name: "fp", arg: 1, scope: !2754, file: !984, line: 32, type: !2757)
!2793 = !DILocation(line: 0, scope: !2754)
!2794 = !DILocation(line: 36, column: 3, scope: !2754)
!2795 = !DILocation(line: 38, column: 3, scope: !2754)
!2796 = !DISubprogram(name: "__fpurge", scope: !2687, file: !2687, line: 72, type: !2797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{null, !2757}
!2799 = distinct !DISubprogram(name: "rpl_fseeko", scope: !986, file: !986, line: 28, type: !2800, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !985, retainedNodes: !2836)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!63, !2802, !2552, !63}
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2804)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2805)
!2805 = !{!2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2804, file: !153, line: 51, baseType: !63, size: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2804, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2804, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2804, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2804, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2804, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2804, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2804, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2804, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2804, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2804, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2804, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2804, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2804, file: !153, line: 70, baseType: !2820, size: 64, offset: 832)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2804, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2804, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2804, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2804, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2804, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2804, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2804, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2804, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2804, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2804, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2804, file: !153, line: 93, baseType: !2820, size: 64, offset: 1344)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2804, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2804, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2804, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2804, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2836 = !{!2837, !2838, !2839, !2840}
!2837 = !DILocalVariable(name: "fp", arg: 1, scope: !2799, file: !986, line: 28, type: !2802)
!2838 = !DILocalVariable(name: "offset", arg: 2, scope: !2799, file: !986, line: 28, type: !2552)
!2839 = !DILocalVariable(name: "whence", arg: 3, scope: !2799, file: !986, line: 28, type: !63)
!2840 = !DILocalVariable(name: "pos", scope: !2841, file: !986, line: 123, type: !2552)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !986, line: 119, column: 5)
!2842 = distinct !DILexicalBlock(scope: !2799, file: !986, line: 55, column: 7)
!2843 = !DILocation(line: 0, scope: !2799)
!2844 = !DILocation(line: 55, column: 12, scope: !2842)
!2845 = !{!1389, !1064, i64 16}
!2846 = !DILocation(line: 55, column: 33, scope: !2842)
!2847 = !{!1389, !1064, i64 8}
!2848 = !DILocation(line: 55, column: 25, scope: !2842)
!2849 = !DILocation(line: 56, column: 7, scope: !2842)
!2850 = !DILocation(line: 56, column: 15, scope: !2842)
!2851 = !DILocation(line: 56, column: 37, scope: !2842)
!2852 = !{!1389, !1064, i64 32}
!2853 = !DILocation(line: 56, column: 29, scope: !2842)
!2854 = !DILocation(line: 57, column: 7, scope: !2842)
!2855 = !DILocation(line: 57, column: 15, scope: !2842)
!2856 = !{!1389, !1064, i64 72}
!2857 = !DILocation(line: 57, column: 29, scope: !2842)
!2858 = !DILocation(line: 55, column: 7, scope: !2799)
!2859 = !DILocation(line: 123, column: 26, scope: !2841)
!2860 = !DILocation(line: 123, column: 19, scope: !2841)
!2861 = !DILocation(line: 0, scope: !2841)
!2862 = !DILocation(line: 124, column: 15, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2841, file: !986, line: 124, column: 11)
!2864 = !DILocation(line: 124, column: 11, scope: !2841)
!2865 = !DILocation(line: 135, column: 19, scope: !2841)
!2866 = !DILocation(line: 136, column: 12, scope: !2841)
!2867 = !DILocation(line: 136, column: 20, scope: !2841)
!2868 = !{!1389, !1361, i64 144}
!2869 = !DILocation(line: 167, column: 7, scope: !2841)
!2870 = !DILocation(line: 169, column: 10, scope: !2799)
!2871 = !DILocation(line: 169, column: 3, scope: !2799)
!2872 = !DILocation(line: 170, column: 1, scope: !2799)
!2873 = !DISubprogram(name: "fseeko", scope: !1128, file: !1128, line: 736, type: !2874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!63, !2802, !175, !63}
!2876 = distinct !DISubprogram(name: "getprogname", scope: !988, file: !988, line: 54, type: !2877, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !987)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!100}
!2879 = !DILocation(line: 58, column: 10, scope: !2876)
!2880 = !DILocation(line: 58, column: 3, scope: !2876)
!2881 = distinct !DISubprogram(name: "set_program_name", scope: !723, file: !723, line: 37, type: !1083, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !2882)
!2882 = !{!2883, !2884, !2885}
!2883 = !DILocalVariable(name: "argv0", arg: 1, scope: !2881, file: !723, line: 37, type: !100)
!2884 = !DILocalVariable(name: "slash", scope: !2881, file: !723, line: 44, type: !100)
!2885 = !DILocalVariable(name: "base", scope: !2881, file: !723, line: 45, type: !100)
!2886 = !DILocation(line: 0, scope: !2881)
!2887 = !DILocation(line: 44, column: 23, scope: !2881)
!2888 = !DILocation(line: 45, column: 22, scope: !2881)
!2889 = !DILocation(line: 46, column: 17, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2881, file: !723, line: 46, column: 7)
!2891 = !DILocation(line: 46, column: 9, scope: !2890)
!2892 = !DILocation(line: 46, column: 25, scope: !2890)
!2893 = !DILocation(line: 46, column: 40, scope: !2890)
!2894 = !DILocalVariable(name: "__s1", arg: 1, scope: !2895, file: !1146, line: 974, type: !1281)
!2895 = distinct !DISubprogram(name: "memeq", scope: !1146, file: !1146, line: 974, type: !2896, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !2898)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!136, !1281, !1281, !97}
!2898 = !{!2894, !2899, !2900}
!2899 = !DILocalVariable(name: "__s2", arg: 2, scope: !2895, file: !1146, line: 974, type: !1281)
!2900 = !DILocalVariable(name: "__n", arg: 3, scope: !2895, file: !1146, line: 974, type: !97)
!2901 = !DILocation(line: 0, scope: !2895, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 46, column: 28, scope: !2890)
!2903 = !DILocation(line: 976, column: 11, scope: !2895, inlinedAt: !2902)
!2904 = !DILocation(line: 976, column: 10, scope: !2895, inlinedAt: !2902)
!2905 = !DILocation(line: 46, column: 7, scope: !2881)
!2906 = !DILocation(line: 49, column: 11, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !723, line: 49, column: 11)
!2908 = distinct !DILexicalBlock(scope: !2890, file: !723, line: 47, column: 5)
!2909 = !DILocation(line: 49, column: 36, scope: !2907)
!2910 = !DILocation(line: 49, column: 11, scope: !2908)
!2911 = !DILocation(line: 65, column: 16, scope: !2881)
!2912 = !DILocation(line: 71, column: 27, scope: !2881)
!2913 = !DILocation(line: 74, column: 33, scope: !2881)
!2914 = !DILocation(line: 76, column: 1, scope: !2881)
!2915 = !DISubprogram(name: "strrchr", scope: !1253, file: !1253, line: 273, type: !1268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2916 = distinct !DIAssignID()
!2917 = !DILocation(line: 0, scope: !732)
!2918 = distinct !DIAssignID()
!2919 = !DILocation(line: 40, column: 29, scope: !732)
!2920 = !DILocation(line: 41, column: 19, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !732, file: !733, line: 41, column: 7)
!2922 = !DILocation(line: 41, column: 7, scope: !732)
!2923 = !DILocation(line: 47, column: 3, scope: !732)
!2924 = !DILocation(line: 48, column: 3, scope: !732)
!2925 = !DILocalVariable(name: "ps", arg: 1, scope: !2926, file: !2927, line: 1135, type: !2930)
!2926 = distinct !DISubprogram(name: "mbszero", scope: !2927, file: !2927, line: 1135, type: !2928, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !2931)
!2927 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2928 = !DISubroutineType(types: !2929)
!2929 = !{null, !2930}
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!2931 = !{!2925}
!2932 = !DILocation(line: 0, scope: !2926, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 48, column: 18, scope: !732)
!2934 = !DILocalVariable(name: "__dest", arg: 1, scope: !2935, file: !1399, line: 57, type: !95)
!2935 = distinct !DISubprogram(name: "memset", scope: !1399, file: !1399, line: 57, type: !2936, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !2938)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!95, !95, !63, !97}
!2938 = !{!2934, !2939, !2940}
!2939 = !DILocalVariable(name: "__ch", arg: 2, scope: !2935, file: !1399, line: 57, type: !63)
!2940 = !DILocalVariable(name: "__len", arg: 3, scope: !2935, file: !1399, line: 57, type: !97)
!2941 = !DILocation(line: 0, scope: !2935, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 1137, column: 3, scope: !2926, inlinedAt: !2933)
!2943 = !DILocation(line: 59, column: 10, scope: !2935, inlinedAt: !2942)
!2944 = !DILocation(line: 49, column: 7, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !732, file: !733, line: 49, column: 7)
!2946 = !DILocation(line: 49, column: 39, scope: !2945)
!2947 = !DILocation(line: 49, column: 44, scope: !2945)
!2948 = !DILocation(line: 54, column: 1, scope: !732)
!2949 = distinct !DISubprogram(name: "clone_quoting_options", scope: !759, file: !759, line: 113, type: !2950, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !2953)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!2952, !2952}
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!2953 = !{!2954, !2955, !2956}
!2954 = !DILocalVariable(name: "o", arg: 1, scope: !2949, file: !759, line: 113, type: !2952)
!2955 = !DILocalVariable(name: "saved_errno", scope: !2949, file: !759, line: 115, type: !63)
!2956 = !DILocalVariable(name: "p", scope: !2949, file: !759, line: 116, type: !2952)
!2957 = !DILocation(line: 0, scope: !2949)
!2958 = !DILocation(line: 115, column: 21, scope: !2949)
!2959 = !DILocation(line: 116, column: 40, scope: !2949)
!2960 = !DILocation(line: 116, column: 31, scope: !2949)
!2961 = !DILocation(line: 118, column: 9, scope: !2949)
!2962 = !DILocation(line: 119, column: 3, scope: !2949)
!2963 = distinct !DISubprogram(name: "get_quoting_style", scope: !759, file: !759, line: 124, type: !2964, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !2968)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!785, !2966}
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !800)
!2968 = !{!2969}
!2969 = !DILocalVariable(name: "o", arg: 1, scope: !2963, file: !759, line: 124, type: !2966)
!2970 = !DILocation(line: 0, scope: !2963)
!2971 = !DILocation(line: 126, column: 11, scope: !2963)
!2972 = !DILocation(line: 126, column: 46, scope: !2963)
!2973 = !{!2974, !1134, i64 0}
!2974 = !{!"quoting_options", !1134, i64 0, !1134, i64 4, !1065, i64 8, !1064, i64 40, !1064, i64 48}
!2975 = !DILocation(line: 126, column: 3, scope: !2963)
!2976 = distinct !DISubprogram(name: "set_quoting_style", scope: !759, file: !759, line: 132, type: !2977, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !2979)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{null, !2952, !785}
!2979 = !{!2980, !2981}
!2980 = !DILocalVariable(name: "o", arg: 1, scope: !2976, file: !759, line: 132, type: !2952)
!2981 = !DILocalVariable(name: "s", arg: 2, scope: !2976, file: !759, line: 132, type: !785)
!2982 = !DILocation(line: 0, scope: !2976)
!2983 = !DILocation(line: 134, column: 4, scope: !2976)
!2984 = !DILocation(line: 134, column: 45, scope: !2976)
!2985 = !DILocation(line: 135, column: 1, scope: !2976)
!2986 = distinct !DISubprogram(name: "set_char_quoting", scope: !759, file: !759, line: 143, type: !2987, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!63, !2952, !4, !63}
!2989 = !{!2990, !2991, !2992, !2993, !2994, !2996, !2997}
!2990 = !DILocalVariable(name: "o", arg: 1, scope: !2986, file: !759, line: 143, type: !2952)
!2991 = !DILocalVariable(name: "c", arg: 2, scope: !2986, file: !759, line: 143, type: !4)
!2992 = !DILocalVariable(name: "i", arg: 3, scope: !2986, file: !759, line: 143, type: !63)
!2993 = !DILocalVariable(name: "uc", scope: !2986, file: !759, line: 145, type: !102)
!2994 = !DILocalVariable(name: "p", scope: !2986, file: !759, line: 146, type: !2995)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2996 = !DILocalVariable(name: "shift", scope: !2986, file: !759, line: 148, type: !63)
!2997 = !DILocalVariable(name: "r", scope: !2986, file: !759, line: 149, type: !69)
!2998 = !DILocation(line: 0, scope: !2986)
!2999 = !DILocation(line: 147, column: 6, scope: !2986)
!3000 = !DILocation(line: 147, column: 41, scope: !2986)
!3001 = !DILocation(line: 147, column: 62, scope: !2986)
!3002 = !DILocation(line: 147, column: 57, scope: !2986)
!3003 = !DILocation(line: 148, column: 15, scope: !2986)
!3004 = !DILocation(line: 149, column: 21, scope: !2986)
!3005 = !DILocation(line: 149, column: 24, scope: !2986)
!3006 = !DILocation(line: 149, column: 34, scope: !2986)
!3007 = !DILocation(line: 150, column: 19, scope: !2986)
!3008 = !DILocation(line: 150, column: 24, scope: !2986)
!3009 = !DILocation(line: 150, column: 6, scope: !2986)
!3010 = !DILocation(line: 151, column: 3, scope: !2986)
!3011 = distinct !DISubprogram(name: "set_quoting_flags", scope: !759, file: !759, line: 159, type: !3012, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3014)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!63, !2952, !63}
!3014 = !{!3015, !3016, !3017}
!3015 = !DILocalVariable(name: "o", arg: 1, scope: !3011, file: !759, line: 159, type: !2952)
!3016 = !DILocalVariable(name: "i", arg: 2, scope: !3011, file: !759, line: 159, type: !63)
!3017 = !DILocalVariable(name: "r", scope: !3011, file: !759, line: 163, type: !63)
!3018 = !DILocation(line: 0, scope: !3011)
!3019 = !DILocation(line: 161, column: 8, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3011, file: !759, line: 161, column: 7)
!3021 = !DILocation(line: 161, column: 7, scope: !3011)
!3022 = !DILocation(line: 163, column: 14, scope: !3011)
!3023 = !{!2974, !1134, i64 4}
!3024 = !DILocation(line: 164, column: 12, scope: !3011)
!3025 = !DILocation(line: 165, column: 3, scope: !3011)
!3026 = distinct !DISubprogram(name: "set_custom_quoting", scope: !759, file: !759, line: 169, type: !3027, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3029)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{null, !2952, !100, !100}
!3029 = !{!3030, !3031, !3032}
!3030 = !DILocalVariable(name: "o", arg: 1, scope: !3026, file: !759, line: 169, type: !2952)
!3031 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3026, file: !759, line: 170, type: !100)
!3032 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3026, file: !759, line: 170, type: !100)
!3033 = !DILocation(line: 0, scope: !3026)
!3034 = !DILocation(line: 172, column: 8, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3026, file: !759, line: 172, column: 7)
!3036 = !DILocation(line: 172, column: 7, scope: !3026)
!3037 = !DILocation(line: 174, column: 12, scope: !3026)
!3038 = !DILocation(line: 175, column: 8, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3026, file: !759, line: 175, column: 7)
!3040 = !DILocation(line: 175, column: 19, scope: !3039)
!3041 = !DILocation(line: 176, column: 5, scope: !3039)
!3042 = !DILocation(line: 177, column: 6, scope: !3026)
!3043 = !DILocation(line: 177, column: 17, scope: !3026)
!3044 = !{!2974, !1064, i64 40}
!3045 = !DILocation(line: 178, column: 6, scope: !3026)
!3046 = !DILocation(line: 178, column: 18, scope: !3026)
!3047 = !{!2974, !1064, i64 48}
!3048 = !DILocation(line: 179, column: 1, scope: !3026)
!3049 = !DISubprogram(name: "abort", scope: !1257, file: !1257, line: 598, type: !342, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3050 = distinct !DISubprogram(name: "quotearg_buffer", scope: !759, file: !759, line: 774, type: !3051, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3053)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!97, !94, !97, !100, !97, !2966}
!3053 = !{!3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061}
!3054 = !DILocalVariable(name: "buffer", arg: 1, scope: !3050, file: !759, line: 774, type: !94)
!3055 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3050, file: !759, line: 774, type: !97)
!3056 = !DILocalVariable(name: "arg", arg: 3, scope: !3050, file: !759, line: 775, type: !100)
!3057 = !DILocalVariable(name: "argsize", arg: 4, scope: !3050, file: !759, line: 775, type: !97)
!3058 = !DILocalVariable(name: "o", arg: 5, scope: !3050, file: !759, line: 776, type: !2966)
!3059 = !DILocalVariable(name: "p", scope: !3050, file: !759, line: 778, type: !2966)
!3060 = !DILocalVariable(name: "saved_errno", scope: !3050, file: !759, line: 779, type: !63)
!3061 = !DILocalVariable(name: "r", scope: !3050, file: !759, line: 780, type: !97)
!3062 = !DILocation(line: 0, scope: !3050)
!3063 = !DILocation(line: 778, column: 37, scope: !3050)
!3064 = !DILocation(line: 779, column: 21, scope: !3050)
!3065 = !DILocation(line: 781, column: 43, scope: !3050)
!3066 = !DILocation(line: 781, column: 53, scope: !3050)
!3067 = !DILocation(line: 781, column: 63, scope: !3050)
!3068 = !DILocation(line: 782, column: 43, scope: !3050)
!3069 = !DILocation(line: 782, column: 58, scope: !3050)
!3070 = !DILocation(line: 780, column: 14, scope: !3050)
!3071 = !DILocation(line: 783, column: 9, scope: !3050)
!3072 = !DILocation(line: 784, column: 3, scope: !3050)
!3073 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !759, file: !759, line: 251, type: !3074, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3078)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!97, !94, !97, !100, !97, !785, !63, !3076, !100, !100}
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!3078 = !{!3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3104, !3106, !3109, !3110, !3111, !3112, !3115, !3116, !3118, !3119, !3122, !3126, !3127, !3135, !3138, !3139, !3140}
!3079 = !DILocalVariable(name: "buffer", arg: 1, scope: !3073, file: !759, line: 251, type: !94)
!3080 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3073, file: !759, line: 251, type: !97)
!3081 = !DILocalVariable(name: "arg", arg: 3, scope: !3073, file: !759, line: 252, type: !100)
!3082 = !DILocalVariable(name: "argsize", arg: 4, scope: !3073, file: !759, line: 252, type: !97)
!3083 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3073, file: !759, line: 253, type: !785)
!3084 = !DILocalVariable(name: "flags", arg: 6, scope: !3073, file: !759, line: 253, type: !63)
!3085 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3073, file: !759, line: 254, type: !3076)
!3086 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3073, file: !759, line: 255, type: !100)
!3087 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3073, file: !759, line: 256, type: !100)
!3088 = !DILocalVariable(name: "unibyte_locale", scope: !3073, file: !759, line: 258, type: !136)
!3089 = !DILocalVariable(name: "len", scope: !3073, file: !759, line: 260, type: !97)
!3090 = !DILocalVariable(name: "orig_buffersize", scope: !3073, file: !759, line: 261, type: !97)
!3091 = !DILocalVariable(name: "quote_string", scope: !3073, file: !759, line: 262, type: !100)
!3092 = !DILocalVariable(name: "quote_string_len", scope: !3073, file: !759, line: 263, type: !97)
!3093 = !DILocalVariable(name: "backslash_escapes", scope: !3073, file: !759, line: 264, type: !136)
!3094 = !DILocalVariable(name: "elide_outer_quotes", scope: !3073, file: !759, line: 265, type: !136)
!3095 = !DILocalVariable(name: "encountered_single_quote", scope: !3073, file: !759, line: 266, type: !136)
!3096 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3073, file: !759, line: 267, type: !136)
!3097 = !DILabel(scope: !3073, name: "process_input", file: !759, line: 308)
!3098 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3073, file: !759, line: 309, type: !136)
!3099 = !DILocalVariable(name: "lq", scope: !3100, file: !759, line: 361, type: !100)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !759, line: 361, column: 11)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !759, line: 360, column: 13)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !759, line: 333, column: 7)
!3103 = distinct !DILexicalBlock(scope: !3073, file: !759, line: 312, column: 5)
!3104 = !DILocalVariable(name: "i", scope: !3105, file: !759, line: 395, type: !97)
!3105 = distinct !DILexicalBlock(scope: !3073, file: !759, line: 395, column: 3)
!3106 = !DILocalVariable(name: "is_right_quote", scope: !3107, file: !759, line: 397, type: !136)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !759, line: 396, column: 5)
!3108 = distinct !DILexicalBlock(scope: !3105, file: !759, line: 395, column: 3)
!3109 = !DILocalVariable(name: "escaping", scope: !3107, file: !759, line: 398, type: !136)
!3110 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3107, file: !759, line: 399, type: !136)
!3111 = !DILocalVariable(name: "c", scope: !3107, file: !759, line: 417, type: !102)
!3112 = !DILabel(scope: !3113, name: "c_and_shell_escape", file: !759, line: 502)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !759, line: 478, column: 9)
!3114 = distinct !DILexicalBlock(scope: !3107, file: !759, line: 419, column: 9)
!3115 = !DILabel(scope: !3113, name: "c_escape", file: !759, line: 507)
!3116 = !DILocalVariable(name: "m", scope: !3117, file: !759, line: 598, type: !97)
!3117 = distinct !DILexicalBlock(scope: !3114, file: !759, line: 596, column: 11)
!3118 = !DILocalVariable(name: "printable", scope: !3117, file: !759, line: 600, type: !136)
!3119 = !DILocalVariable(name: "mbs", scope: !3120, file: !759, line: 609, type: !834)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !759, line: 608, column: 15)
!3121 = distinct !DILexicalBlock(scope: !3117, file: !759, line: 602, column: 17)
!3122 = !DILocalVariable(name: "w", scope: !3123, file: !759, line: 618, type: !366)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !759, line: 617, column: 19)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !759, line: 616, column: 17)
!3125 = distinct !DILexicalBlock(scope: !3120, file: !759, line: 616, column: 17)
!3126 = !DILocalVariable(name: "bytes", scope: !3123, file: !759, line: 619, type: !97)
!3127 = !DILocalVariable(name: "j", scope: !3128, file: !759, line: 648, type: !97)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !759, line: 648, column: 29)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !759, line: 647, column: 27)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !759, line: 645, column: 29)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !759, line: 636, column: 23)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !759, line: 628, column: 30)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !759, line: 623, column: 30)
!3134 = distinct !DILexicalBlock(scope: !3123, file: !759, line: 621, column: 25)
!3135 = !DILocalVariable(name: "ilim", scope: !3136, file: !759, line: 674, type: !97)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !759, line: 671, column: 15)
!3137 = distinct !DILexicalBlock(scope: !3117, file: !759, line: 670, column: 17)
!3138 = !DILabel(scope: !3107, name: "store_escape", file: !759, line: 709)
!3139 = !DILabel(scope: !3107, name: "store_c", file: !759, line: 712)
!3140 = !DILabel(scope: !3073, name: "force_outer_quoting_style", file: !759, line: 753)
!3141 = distinct !DIAssignID()
!3142 = distinct !DIAssignID()
!3143 = distinct !DIAssignID()
!3144 = distinct !DIAssignID()
!3145 = distinct !DIAssignID()
!3146 = !DILocation(line: 0, scope: !3120)
!3147 = distinct !DIAssignID()
!3148 = !DILocation(line: 0, scope: !3123)
!3149 = !DILocation(line: 0, scope: !3073)
!3150 = !DILocation(line: 258, column: 25, scope: !3073)
!3151 = !DILocation(line: 258, column: 36, scope: !3073)
!3152 = !DILocation(line: 265, column: 8, scope: !3073)
!3153 = !DILocation(line: 267, column: 3, scope: !3073)
!3154 = !DILocation(line: 261, column: 10, scope: !3073)
!3155 = !DILocation(line: 262, column: 15, scope: !3073)
!3156 = !DILocation(line: 263, column: 10, scope: !3073)
!3157 = !DILocation(line: 264, column: 8, scope: !3073)
!3158 = !DILocation(line: 266, column: 8, scope: !3073)
!3159 = !DILocation(line: 267, column: 8, scope: !3073)
!3160 = !DILocation(line: 308, column: 2, scope: !3073)
!3161 = !DILocation(line: 311, column: 3, scope: !3073)
!3162 = !DILocation(line: 318, column: 11, scope: !3103)
!3163 = !DILocation(line: 318, column: 12, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3103, file: !759, line: 318, column: 11)
!3165 = !DILocation(line: 319, column: 9, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !759, line: 319, column: 9)
!3167 = distinct !DILexicalBlock(scope: !3164, file: !759, line: 319, column: 9)
!3168 = !DILocation(line: 319, column: 9, scope: !3167)
!3169 = !DILocation(line: 0, scope: !825, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 357, column: 26, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !759, line: 335, column: 11)
!3172 = distinct !DILexicalBlock(scope: !3102, file: !759, line: 334, column: 13)
!3173 = !DILocation(line: 199, column: 29, scope: !825, inlinedAt: !3170)
!3174 = !DILocation(line: 201, column: 19, scope: !3175, inlinedAt: !3170)
!3175 = distinct !DILexicalBlock(scope: !825, file: !759, line: 201, column: 7)
!3176 = !DILocation(line: 201, column: 7, scope: !825, inlinedAt: !3170)
!3177 = !DILocation(line: 229, column: 3, scope: !825, inlinedAt: !3170)
!3178 = !DILocation(line: 230, column: 3, scope: !825, inlinedAt: !3170)
!3179 = !DILocalVariable(name: "ps", arg: 1, scope: !3180, file: !2927, line: 1135, type: !3183)
!3180 = distinct !DISubprogram(name: "mbszero", scope: !2927, file: !2927, line: 1135, type: !3181, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3184)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{null, !3183}
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!3184 = !{!3179}
!3185 = !DILocation(line: 0, scope: !3180, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 230, column: 18, scope: !825, inlinedAt: !3170)
!3187 = !DILocalVariable(name: "__dest", arg: 1, scope: !3188, file: !1399, line: 57, type: !95)
!3188 = distinct !DISubprogram(name: "memset", scope: !1399, file: !1399, line: 57, type: !2936, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3189)
!3189 = !{!3187, !3190, !3191}
!3190 = !DILocalVariable(name: "__ch", arg: 2, scope: !3188, file: !1399, line: 57, type: !63)
!3191 = !DILocalVariable(name: "__len", arg: 3, scope: !3188, file: !1399, line: 57, type: !97)
!3192 = !DILocation(line: 0, scope: !3188, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 1137, column: 3, scope: !3180, inlinedAt: !3186)
!3194 = !DILocation(line: 59, column: 10, scope: !3188, inlinedAt: !3193)
!3195 = !DILocation(line: 231, column: 7, scope: !3196, inlinedAt: !3170)
!3196 = distinct !DILexicalBlock(scope: !825, file: !759, line: 231, column: 7)
!3197 = !DILocation(line: 231, column: 40, scope: !3196, inlinedAt: !3170)
!3198 = !DILocation(line: 231, column: 45, scope: !3196, inlinedAt: !3170)
!3199 = !DILocation(line: 235, column: 1, scope: !825, inlinedAt: !3170)
!3200 = !DILocation(line: 0, scope: !825, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 358, column: 27, scope: !3171)
!3202 = !DILocation(line: 199, column: 29, scope: !825, inlinedAt: !3201)
!3203 = !DILocation(line: 201, column: 19, scope: !3175, inlinedAt: !3201)
!3204 = !DILocation(line: 201, column: 7, scope: !825, inlinedAt: !3201)
!3205 = !DILocation(line: 229, column: 3, scope: !825, inlinedAt: !3201)
!3206 = !DILocation(line: 230, column: 3, scope: !825, inlinedAt: !3201)
!3207 = !DILocation(line: 0, scope: !3180, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 230, column: 18, scope: !825, inlinedAt: !3201)
!3209 = !DILocation(line: 0, scope: !3188, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 1137, column: 3, scope: !3180, inlinedAt: !3208)
!3211 = !DILocation(line: 59, column: 10, scope: !3188, inlinedAt: !3210)
!3212 = !DILocation(line: 231, column: 7, scope: !3196, inlinedAt: !3201)
!3213 = !DILocation(line: 231, column: 40, scope: !3196, inlinedAt: !3201)
!3214 = !DILocation(line: 231, column: 45, scope: !3196, inlinedAt: !3201)
!3215 = !DILocation(line: 235, column: 1, scope: !825, inlinedAt: !3201)
!3216 = !DILocation(line: 360, column: 14, scope: !3101)
!3217 = !DILocation(line: 360, column: 13, scope: !3102)
!3218 = !DILocation(line: 0, scope: !3100)
!3219 = !DILocation(line: 361, column: 45, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3100, file: !759, line: 361, column: 11)
!3221 = !DILocation(line: 361, column: 11, scope: !3100)
!3222 = !DILocation(line: 362, column: 13, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !759, line: 362, column: 13)
!3224 = distinct !DILexicalBlock(scope: !3220, file: !759, line: 362, column: 13)
!3225 = !DILocation(line: 362, column: 13, scope: !3224)
!3226 = !DILocation(line: 361, column: 52, scope: !3220)
!3227 = distinct !{!3227, !3221, !3228, !1180}
!3228 = !DILocation(line: 362, column: 13, scope: !3100)
!3229 = !DILocation(line: 260, column: 10, scope: !3073)
!3230 = !DILocation(line: 365, column: 28, scope: !3102)
!3231 = !DILocation(line: 367, column: 7, scope: !3103)
!3232 = !DILocation(line: 370, column: 7, scope: !3103)
!3233 = !DILocation(line: 373, column: 7, scope: !3103)
!3234 = !DILocation(line: 376, column: 12, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3103, file: !759, line: 376, column: 11)
!3236 = !DILocation(line: 376, column: 11, scope: !3103)
!3237 = !DILocation(line: 381, column: 12, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3103, file: !759, line: 381, column: 11)
!3239 = !DILocation(line: 381, column: 11, scope: !3103)
!3240 = !DILocation(line: 382, column: 9, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !759, line: 382, column: 9)
!3242 = distinct !DILexicalBlock(scope: !3238, file: !759, line: 382, column: 9)
!3243 = !DILocation(line: 382, column: 9, scope: !3242)
!3244 = !DILocation(line: 389, column: 7, scope: !3103)
!3245 = !DILocation(line: 392, column: 7, scope: !3103)
!3246 = !DILocation(line: 0, scope: !3105)
!3247 = !DILocation(line: 395, column: 8, scope: !3105)
!3248 = !DILocation(line: 309, column: 8, scope: !3073)
!3249 = !DILocation(line: 395, scope: !3105)
!3250 = !DILocation(line: 395, column: 34, scope: !3108)
!3251 = !DILocation(line: 395, column: 26, scope: !3108)
!3252 = !DILocation(line: 395, column: 48, scope: !3108)
!3253 = !DILocation(line: 395, column: 55, scope: !3108)
!3254 = !DILocation(line: 395, column: 3, scope: !3105)
!3255 = !DILocation(line: 395, column: 67, scope: !3108)
!3256 = !DILocation(line: 0, scope: !3107)
!3257 = !DILocation(line: 402, column: 11, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3107, file: !759, line: 401, column: 11)
!3259 = !DILocation(line: 404, column: 17, scope: !3258)
!3260 = !DILocation(line: 405, column: 39, scope: !3258)
!3261 = !DILocation(line: 409, column: 32, scope: !3258)
!3262 = !DILocation(line: 405, column: 19, scope: !3258)
!3263 = !DILocation(line: 405, column: 15, scope: !3258)
!3264 = !DILocation(line: 410, column: 11, scope: !3258)
!3265 = !DILocation(line: 410, column: 25, scope: !3258)
!3266 = !DILocalVariable(name: "__s1", arg: 1, scope: !3267, file: !1146, line: 974, type: !1281)
!3267 = distinct !DISubprogram(name: "memeq", scope: !1146, file: !1146, line: 974, type: !2896, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3268)
!3268 = !{!3266, !3269, !3270}
!3269 = !DILocalVariable(name: "__s2", arg: 2, scope: !3267, file: !1146, line: 974, type: !1281)
!3270 = !DILocalVariable(name: "__n", arg: 3, scope: !3267, file: !1146, line: 974, type: !97)
!3271 = !DILocation(line: 0, scope: !3267, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 410, column: 14, scope: !3258)
!3273 = !DILocation(line: 976, column: 11, scope: !3267, inlinedAt: !3272)
!3274 = !DILocation(line: 976, column: 10, scope: !3267, inlinedAt: !3272)
!3275 = !DILocation(line: 401, column: 11, scope: !3107)
!3276 = !DILocation(line: 417, column: 25, scope: !3107)
!3277 = !DILocation(line: 418, column: 7, scope: !3107)
!3278 = !DILocation(line: 421, column: 15, scope: !3114)
!3279 = !DILocation(line: 423, column: 15, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !759, line: 423, column: 15)
!3281 = distinct !DILexicalBlock(scope: !3282, file: !759, line: 422, column: 13)
!3282 = distinct !DILexicalBlock(scope: !3114, file: !759, line: 421, column: 15)
!3283 = !DILocation(line: 423, column: 15, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3280, file: !759, line: 423, column: 15)
!3285 = !DILocation(line: 423, column: 15, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !759, line: 423, column: 15)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !759, line: 423, column: 15)
!3288 = distinct !DILexicalBlock(scope: !3284, file: !759, line: 423, column: 15)
!3289 = !DILocation(line: 423, column: 15, scope: !3287)
!3290 = !DILocation(line: 423, column: 15, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !759, line: 423, column: 15)
!3292 = distinct !DILexicalBlock(scope: !3288, file: !759, line: 423, column: 15)
!3293 = !DILocation(line: 423, column: 15, scope: !3292)
!3294 = !DILocation(line: 423, column: 15, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !759, line: 423, column: 15)
!3296 = distinct !DILexicalBlock(scope: !3288, file: !759, line: 423, column: 15)
!3297 = !DILocation(line: 423, column: 15, scope: !3296)
!3298 = !DILocation(line: 423, column: 15, scope: !3288)
!3299 = !DILocation(line: 423, column: 15, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !759, line: 423, column: 15)
!3301 = distinct !DILexicalBlock(scope: !3280, file: !759, line: 423, column: 15)
!3302 = !DILocation(line: 423, column: 15, scope: !3301)
!3303 = !DILocation(line: 431, column: 19, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3281, file: !759, line: 430, column: 19)
!3305 = !DILocation(line: 431, column: 24, scope: !3304)
!3306 = !DILocation(line: 431, column: 28, scope: !3304)
!3307 = !DILocation(line: 431, column: 38, scope: !3304)
!3308 = !DILocation(line: 431, column: 48, scope: !3304)
!3309 = !DILocation(line: 431, column: 59, scope: !3304)
!3310 = !DILocation(line: 433, column: 19, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3312, file: !759, line: 433, column: 19)
!3312 = distinct !DILexicalBlock(scope: !3313, file: !759, line: 433, column: 19)
!3313 = distinct !DILexicalBlock(scope: !3304, file: !759, line: 432, column: 17)
!3314 = !DILocation(line: 433, column: 19, scope: !3312)
!3315 = !DILocation(line: 434, column: 19, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !759, line: 434, column: 19)
!3317 = distinct !DILexicalBlock(scope: !3313, file: !759, line: 434, column: 19)
!3318 = !DILocation(line: 434, column: 19, scope: !3317)
!3319 = !DILocation(line: 435, column: 17, scope: !3313)
!3320 = !DILocation(line: 442, column: 20, scope: !3282)
!3321 = !DILocation(line: 447, column: 11, scope: !3114)
!3322 = !DILocation(line: 450, column: 19, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3114, file: !759, line: 448, column: 13)
!3324 = !DILocation(line: 456, column: 19, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3323, file: !759, line: 455, column: 19)
!3326 = !DILocation(line: 456, column: 24, scope: !3325)
!3327 = !DILocation(line: 456, column: 28, scope: !3325)
!3328 = !DILocation(line: 456, column: 38, scope: !3325)
!3329 = !DILocation(line: 456, column: 41, scope: !3325)
!3330 = !DILocation(line: 456, column: 52, scope: !3325)
!3331 = !DILocation(line: 455, column: 19, scope: !3323)
!3332 = !DILocation(line: 457, column: 25, scope: !3325)
!3333 = !DILocation(line: 457, column: 17, scope: !3325)
!3334 = !DILocation(line: 464, column: 25, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3325, file: !759, line: 458, column: 19)
!3336 = !DILocation(line: 468, column: 21, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !759, line: 468, column: 21)
!3338 = distinct !DILexicalBlock(scope: !3335, file: !759, line: 468, column: 21)
!3339 = !DILocation(line: 468, column: 21, scope: !3338)
!3340 = !DILocation(line: 469, column: 21, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !759, line: 469, column: 21)
!3342 = distinct !DILexicalBlock(scope: !3335, file: !759, line: 469, column: 21)
!3343 = !DILocation(line: 469, column: 21, scope: !3342)
!3344 = !DILocation(line: 470, column: 21, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !759, line: 470, column: 21)
!3346 = distinct !DILexicalBlock(scope: !3335, file: !759, line: 470, column: 21)
!3347 = !DILocation(line: 470, column: 21, scope: !3346)
!3348 = !DILocation(line: 471, column: 21, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !759, line: 471, column: 21)
!3350 = distinct !DILexicalBlock(scope: !3335, file: !759, line: 471, column: 21)
!3351 = !DILocation(line: 471, column: 21, scope: !3350)
!3352 = !DILocation(line: 472, column: 21, scope: !3335)
!3353 = !DILocation(line: 482, column: 33, scope: !3113)
!3354 = !DILocation(line: 483, column: 33, scope: !3113)
!3355 = !DILocation(line: 485, column: 33, scope: !3113)
!3356 = !DILocation(line: 486, column: 33, scope: !3113)
!3357 = !DILocation(line: 487, column: 33, scope: !3113)
!3358 = !DILocation(line: 490, column: 17, scope: !3113)
!3359 = !DILocation(line: 492, column: 21, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !759, line: 491, column: 15)
!3361 = distinct !DILexicalBlock(scope: !3113, file: !759, line: 490, column: 17)
!3362 = !DILocation(line: 499, column: 35, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3113, file: !759, line: 499, column: 17)
!3364 = !DILocation(line: 499, column: 57, scope: !3363)
!3365 = !DILocation(line: 0, scope: !3113)
!3366 = !DILocation(line: 502, column: 11, scope: !3113)
!3367 = !DILocation(line: 504, column: 17, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3113, file: !759, line: 503, column: 17)
!3369 = !DILocation(line: 507, column: 11, scope: !3113)
!3370 = !DILocation(line: 508, column: 17, scope: !3113)
!3371 = !DILocation(line: 517, column: 15, scope: !3114)
!3372 = !DILocation(line: 517, column: 40, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3114, file: !759, line: 517, column: 15)
!3374 = !DILocation(line: 517, column: 47, scope: !3373)
!3375 = !DILocation(line: 517, column: 18, scope: !3373)
!3376 = !DILocation(line: 521, column: 17, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3114, file: !759, line: 521, column: 15)
!3378 = !DILocation(line: 521, column: 15, scope: !3114)
!3379 = !DILocation(line: 525, column: 11, scope: !3114)
!3380 = !DILocation(line: 537, column: 15, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3114, file: !759, line: 536, column: 15)
!3382 = !DILocation(line: 544, column: 15, scope: !3114)
!3383 = !DILocation(line: 546, column: 19, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !759, line: 545, column: 13)
!3385 = distinct !DILexicalBlock(scope: !3114, file: !759, line: 544, column: 15)
!3386 = !DILocation(line: 549, column: 19, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3384, file: !759, line: 549, column: 19)
!3388 = !DILocation(line: 549, column: 30, scope: !3387)
!3389 = !DILocation(line: 558, column: 15, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !759, line: 558, column: 15)
!3391 = distinct !DILexicalBlock(scope: !3384, file: !759, line: 558, column: 15)
!3392 = !DILocation(line: 558, column: 15, scope: !3391)
!3393 = !DILocation(line: 559, column: 15, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !759, line: 559, column: 15)
!3395 = distinct !DILexicalBlock(scope: !3384, file: !759, line: 559, column: 15)
!3396 = !DILocation(line: 559, column: 15, scope: !3395)
!3397 = !DILocation(line: 560, column: 15, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3399, file: !759, line: 560, column: 15)
!3399 = distinct !DILexicalBlock(scope: !3384, file: !759, line: 560, column: 15)
!3400 = !DILocation(line: 560, column: 15, scope: !3399)
!3401 = !DILocation(line: 562, column: 13, scope: !3384)
!3402 = !DILocation(line: 602, column: 17, scope: !3117)
!3403 = !DILocation(line: 0, scope: !3117)
!3404 = !DILocation(line: 605, column: 29, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3121, file: !759, line: 603, column: 15)
!3406 = !DILocation(line: 605, column: 27, scope: !3405)
!3407 = !DILocation(line: 606, column: 15, scope: !3405)
!3408 = !DILocation(line: 609, column: 17, scope: !3120)
!3409 = !DILocation(line: 0, scope: !3180, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 609, column: 32, scope: !3120)
!3411 = !DILocation(line: 0, scope: !3188, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 1137, column: 3, scope: !3180, inlinedAt: !3410)
!3413 = !DILocation(line: 59, column: 10, scope: !3188, inlinedAt: !3412)
!3414 = !DILocation(line: 613, column: 29, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3120, file: !759, line: 613, column: 21)
!3416 = !DILocation(line: 613, column: 21, scope: !3120)
!3417 = !DILocation(line: 614, column: 29, scope: !3415)
!3418 = !DILocation(line: 614, column: 19, scope: !3415)
!3419 = !DILocation(line: 618, column: 21, scope: !3123)
!3420 = !DILocation(line: 620, column: 54, scope: !3123)
!3421 = !DILocation(line: 619, column: 36, scope: !3123)
!3422 = !DILocation(line: 621, column: 25, scope: !3123)
!3423 = !DILocation(line: 631, column: 38, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3132, file: !759, line: 629, column: 23)
!3425 = !DILocation(line: 631, column: 48, scope: !3424)
!3426 = !DILocation(line: 626, column: 25, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3133, file: !759, line: 624, column: 23)
!3428 = !DILocation(line: 631, column: 51, scope: !3424)
!3429 = !DILocation(line: 631, column: 25, scope: !3424)
!3430 = !DILocation(line: 632, column: 28, scope: !3424)
!3431 = !DILocation(line: 631, column: 34, scope: !3424)
!3432 = distinct !{!3432, !3429, !3430, !1180}
!3433 = !DILocation(line: 0, scope: !3128)
!3434 = !DILocation(line: 646, column: 29, scope: !3130)
!3435 = !DILocation(line: 649, column: 39, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3128, file: !759, line: 648, column: 29)
!3437 = !DILocation(line: 649, column: 31, scope: !3436)
!3438 = !DILocation(line: 648, column: 60, scope: !3436)
!3439 = !DILocation(line: 648, column: 50, scope: !3436)
!3440 = !DILocation(line: 648, column: 29, scope: !3128)
!3441 = distinct !{!3441, !3440, !3442, !1180}
!3442 = !DILocation(line: 654, column: 33, scope: !3128)
!3443 = !DILocation(line: 657, column: 43, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3131, file: !759, line: 657, column: 29)
!3445 = !DILocalVariable(name: "wc", arg: 1, scope: !3446, file: !1527, line: 865, type: !1530)
!3446 = distinct !DISubprogram(name: "c32isprint", scope: !1527, file: !1527, line: 865, type: !1528, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3447)
!3447 = !{!3445}
!3448 = !DILocation(line: 0, scope: !3446, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 657, column: 31, scope: !3444)
!3450 = !DILocation(line: 871, column: 10, scope: !3446, inlinedAt: !3449)
!3451 = !DILocation(line: 657, column: 31, scope: !3444)
!3452 = !DILocation(line: 664, column: 23, scope: !3123)
!3453 = !DILocation(line: 665, column: 19, scope: !3124)
!3454 = !DILocation(line: 666, column: 15, scope: !3121)
!3455 = !DILocation(line: 0, scope: !3121)
!3456 = !DILocation(line: 670, column: 19, scope: !3137)
!3457 = !DILocation(line: 670, column: 23, scope: !3137)
!3458 = !DILocation(line: 674, column: 33, scope: !3136)
!3459 = !DILocation(line: 0, scope: !3136)
!3460 = !DILocation(line: 676, column: 17, scope: !3136)
!3461 = !DILocation(line: 398, column: 12, scope: !3107)
!3462 = !DILocation(line: 678, column: 43, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3464, file: !759, line: 678, column: 25)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !759, line: 677, column: 19)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !759, line: 676, column: 17)
!3466 = distinct !DILexicalBlock(scope: !3136, file: !759, line: 676, column: 17)
!3467 = !DILocation(line: 680, column: 25, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !759, line: 680, column: 25)
!3469 = distinct !DILexicalBlock(scope: !3463, file: !759, line: 679, column: 23)
!3470 = !DILocation(line: 680, column: 25, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3468, file: !759, line: 680, column: 25)
!3472 = !DILocation(line: 680, column: 25, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !759, line: 680, column: 25)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !759, line: 680, column: 25)
!3475 = distinct !DILexicalBlock(scope: !3471, file: !759, line: 680, column: 25)
!3476 = !DILocation(line: 680, column: 25, scope: !3474)
!3477 = !DILocation(line: 680, column: 25, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !759, line: 680, column: 25)
!3479 = distinct !DILexicalBlock(scope: !3475, file: !759, line: 680, column: 25)
!3480 = !DILocation(line: 680, column: 25, scope: !3479)
!3481 = !DILocation(line: 680, column: 25, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !759, line: 680, column: 25)
!3483 = distinct !DILexicalBlock(scope: !3475, file: !759, line: 680, column: 25)
!3484 = !DILocation(line: 680, column: 25, scope: !3483)
!3485 = !DILocation(line: 680, column: 25, scope: !3475)
!3486 = !DILocation(line: 680, column: 25, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !759, line: 680, column: 25)
!3488 = distinct !DILexicalBlock(scope: !3468, file: !759, line: 680, column: 25)
!3489 = !DILocation(line: 680, column: 25, scope: !3488)
!3490 = !DILocation(line: 681, column: 25, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !759, line: 681, column: 25)
!3492 = distinct !DILexicalBlock(scope: !3469, file: !759, line: 681, column: 25)
!3493 = !DILocation(line: 681, column: 25, scope: !3492)
!3494 = !DILocation(line: 682, column: 25, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !759, line: 682, column: 25)
!3496 = distinct !DILexicalBlock(scope: !3469, file: !759, line: 682, column: 25)
!3497 = !DILocation(line: 682, column: 25, scope: !3496)
!3498 = !DILocation(line: 683, column: 38, scope: !3469)
!3499 = !DILocation(line: 683, column: 33, scope: !3469)
!3500 = !DILocation(line: 684, column: 23, scope: !3469)
!3501 = !DILocation(line: 685, column: 30, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3463, file: !759, line: 685, column: 30)
!3503 = !DILocation(line: 685, column: 30, scope: !3463)
!3504 = !DILocation(line: 687, column: 25, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !759, line: 687, column: 25)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !759, line: 687, column: 25)
!3507 = distinct !DILexicalBlock(scope: !3502, file: !759, line: 686, column: 23)
!3508 = !DILocation(line: 687, column: 25, scope: !3506)
!3509 = !DILocation(line: 689, column: 23, scope: !3507)
!3510 = !DILocation(line: 690, column: 35, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3464, file: !759, line: 690, column: 25)
!3512 = !DILocation(line: 690, column: 30, scope: !3511)
!3513 = !DILocation(line: 690, column: 25, scope: !3464)
!3514 = !DILocation(line: 692, column: 21, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3516, file: !759, line: 692, column: 21)
!3516 = distinct !DILexicalBlock(scope: !3464, file: !759, line: 692, column: 21)
!3517 = !DILocation(line: 692, column: 21, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !759, line: 692, column: 21)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !759, line: 692, column: 21)
!3520 = distinct !DILexicalBlock(scope: !3515, file: !759, line: 692, column: 21)
!3521 = !DILocation(line: 692, column: 21, scope: !3519)
!3522 = !DILocation(line: 692, column: 21, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !759, line: 692, column: 21)
!3524 = distinct !DILexicalBlock(scope: !3520, file: !759, line: 692, column: 21)
!3525 = !DILocation(line: 692, column: 21, scope: !3524)
!3526 = !DILocation(line: 692, column: 21, scope: !3520)
!3527 = !DILocation(line: 0, scope: !3464)
!3528 = !DILocation(line: 693, column: 21, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !759, line: 693, column: 21)
!3530 = distinct !DILexicalBlock(scope: !3464, file: !759, line: 693, column: 21)
!3531 = !DILocation(line: 693, column: 21, scope: !3530)
!3532 = !DILocation(line: 694, column: 25, scope: !3464)
!3533 = !DILocation(line: 676, column: 17, scope: !3465)
!3534 = distinct !{!3534, !3535, !3536}
!3535 = !DILocation(line: 676, column: 17, scope: !3466)
!3536 = !DILocation(line: 695, column: 19, scope: !3466)
!3537 = !DILocation(line: 409, column: 30, scope: !3258)
!3538 = !DILocation(line: 702, column: 34, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3107, file: !759, line: 702, column: 11)
!3540 = !DILocation(line: 704, column: 14, scope: !3539)
!3541 = !DILocation(line: 705, column: 14, scope: !3539)
!3542 = !DILocation(line: 705, column: 35, scope: !3539)
!3543 = !DILocation(line: 705, column: 17, scope: !3539)
!3544 = !DILocation(line: 705, column: 47, scope: !3539)
!3545 = !DILocation(line: 705, column: 65, scope: !3539)
!3546 = !DILocation(line: 706, column: 11, scope: !3539)
!3547 = !DILocation(line: 702, column: 11, scope: !3107)
!3548 = !DILocation(line: 395, column: 15, scope: !3105)
!3549 = !DILocation(line: 709, column: 5, scope: !3107)
!3550 = !DILocation(line: 710, column: 7, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3107, file: !759, line: 710, column: 7)
!3552 = !DILocation(line: 710, column: 7, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3551, file: !759, line: 710, column: 7)
!3554 = !DILocation(line: 710, column: 7, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !759, line: 710, column: 7)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !759, line: 710, column: 7)
!3557 = distinct !DILexicalBlock(scope: !3553, file: !759, line: 710, column: 7)
!3558 = !DILocation(line: 710, column: 7, scope: !3556)
!3559 = !DILocation(line: 710, column: 7, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !759, line: 710, column: 7)
!3561 = distinct !DILexicalBlock(scope: !3557, file: !759, line: 710, column: 7)
!3562 = !DILocation(line: 710, column: 7, scope: !3561)
!3563 = !DILocation(line: 710, column: 7, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !759, line: 710, column: 7)
!3565 = distinct !DILexicalBlock(scope: !3557, file: !759, line: 710, column: 7)
!3566 = !DILocation(line: 710, column: 7, scope: !3565)
!3567 = !DILocation(line: 710, column: 7, scope: !3557)
!3568 = !DILocation(line: 710, column: 7, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !759, line: 710, column: 7)
!3570 = distinct !DILexicalBlock(scope: !3551, file: !759, line: 710, column: 7)
!3571 = !DILocation(line: 710, column: 7, scope: !3570)
!3572 = !DILocation(line: 712, column: 5, scope: !3107)
!3573 = !DILocation(line: 713, column: 7, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !759, line: 713, column: 7)
!3575 = distinct !DILexicalBlock(scope: !3107, file: !759, line: 713, column: 7)
!3576 = !DILocation(line: 417, column: 21, scope: !3107)
!3577 = !DILocation(line: 713, column: 7, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !759, line: 713, column: 7)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !759, line: 713, column: 7)
!3580 = distinct !DILexicalBlock(scope: !3574, file: !759, line: 713, column: 7)
!3581 = !DILocation(line: 713, column: 7, scope: !3579)
!3582 = !DILocation(line: 713, column: 7, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3584, file: !759, line: 713, column: 7)
!3584 = distinct !DILexicalBlock(scope: !3580, file: !759, line: 713, column: 7)
!3585 = !DILocation(line: 713, column: 7, scope: !3584)
!3586 = !DILocation(line: 713, column: 7, scope: !3580)
!3587 = !DILocation(line: 714, column: 7, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !759, line: 714, column: 7)
!3589 = distinct !DILexicalBlock(scope: !3107, file: !759, line: 714, column: 7)
!3590 = !DILocation(line: 714, column: 7, scope: !3589)
!3591 = !DILocation(line: 716, column: 13, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3107, file: !759, line: 716, column: 11)
!3593 = !DILocation(line: 716, column: 11, scope: !3107)
!3594 = !DILocation(line: 718, column: 5, scope: !3108)
!3595 = !DILocation(line: 395, column: 82, scope: !3108)
!3596 = !DILocation(line: 395, column: 3, scope: !3108)
!3597 = distinct !{!3597, !3254, !3598, !1180}
!3598 = !DILocation(line: 718, column: 5, scope: !3105)
!3599 = !DILocation(line: 720, column: 11, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3073, file: !759, line: 720, column: 7)
!3601 = !DILocation(line: 720, column: 16, scope: !3600)
!3602 = !DILocation(line: 728, column: 51, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3073, file: !759, line: 728, column: 7)
!3604 = !DILocation(line: 731, column: 11, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3606, file: !759, line: 731, column: 11)
!3606 = distinct !DILexicalBlock(scope: !3603, file: !759, line: 730, column: 5)
!3607 = !DILocation(line: 731, column: 11, scope: !3606)
!3608 = !DILocation(line: 732, column: 16, scope: !3605)
!3609 = !DILocation(line: 732, column: 9, scope: !3605)
!3610 = !DILocation(line: 736, column: 18, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3605, file: !759, line: 736, column: 16)
!3612 = !DILocation(line: 736, column: 29, scope: !3611)
!3613 = !DILocation(line: 745, column: 7, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3073, file: !759, line: 745, column: 7)
!3615 = !DILocation(line: 745, column: 20, scope: !3614)
!3616 = !DILocation(line: 746, column: 12, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3618, file: !759, line: 746, column: 5)
!3618 = distinct !DILexicalBlock(scope: !3614, file: !759, line: 746, column: 5)
!3619 = !DILocation(line: 746, column: 5, scope: !3618)
!3620 = !DILocation(line: 747, column: 7, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !759, line: 747, column: 7)
!3622 = distinct !DILexicalBlock(scope: !3617, file: !759, line: 747, column: 7)
!3623 = !DILocation(line: 747, column: 7, scope: !3622)
!3624 = !DILocation(line: 746, column: 39, scope: !3617)
!3625 = distinct !{!3625, !3619, !3626, !1180}
!3626 = !DILocation(line: 747, column: 7, scope: !3618)
!3627 = !DILocation(line: 749, column: 11, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3073, file: !759, line: 749, column: 7)
!3629 = !DILocation(line: 749, column: 7, scope: !3073)
!3630 = !DILocation(line: 750, column: 5, scope: !3628)
!3631 = !DILocation(line: 750, column: 17, scope: !3628)
!3632 = !DILocation(line: 753, column: 2, scope: !3073)
!3633 = !DILocation(line: 756, column: 51, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3073, file: !759, line: 756, column: 7)
!3635 = !DILocation(line: 756, column: 21, scope: !3634)
!3636 = !DILocation(line: 760, column: 42, scope: !3073)
!3637 = !DILocation(line: 758, column: 10, scope: !3073)
!3638 = !DILocation(line: 758, column: 3, scope: !3073)
!3639 = !DILocation(line: 762, column: 1, scope: !3073)
!3640 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1257, file: !1257, line: 98, type: !3641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!97}
!3643 = !DISubprogram(name: "strlen", scope: !1253, file: !1253, line: 407, type: !3644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!99, !100}
!3646 = !DISubprogram(name: "iswprint", scope: !1677, file: !1677, line: 120, type: !1528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3647 = distinct !DISubprogram(name: "quotearg_alloc", scope: !759, file: !759, line: 788, type: !3648, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3650)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!94, !100, !97, !2966}
!3650 = !{!3651, !3652, !3653}
!3651 = !DILocalVariable(name: "arg", arg: 1, scope: !3647, file: !759, line: 788, type: !100)
!3652 = !DILocalVariable(name: "argsize", arg: 2, scope: !3647, file: !759, line: 788, type: !97)
!3653 = !DILocalVariable(name: "o", arg: 3, scope: !3647, file: !759, line: 789, type: !2966)
!3654 = !DILocation(line: 0, scope: !3647)
!3655 = !DILocalVariable(name: "arg", arg: 1, scope: !3656, file: !759, line: 801, type: !100)
!3656 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !759, file: !759, line: 801, type: !3657, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3659)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!94, !100, !97, !1002, !2966}
!3659 = !{!3655, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667}
!3660 = !DILocalVariable(name: "argsize", arg: 2, scope: !3656, file: !759, line: 801, type: !97)
!3661 = !DILocalVariable(name: "size", arg: 3, scope: !3656, file: !759, line: 801, type: !1002)
!3662 = !DILocalVariable(name: "o", arg: 4, scope: !3656, file: !759, line: 802, type: !2966)
!3663 = !DILocalVariable(name: "p", scope: !3656, file: !759, line: 804, type: !2966)
!3664 = !DILocalVariable(name: "saved_errno", scope: !3656, file: !759, line: 805, type: !63)
!3665 = !DILocalVariable(name: "flags", scope: !3656, file: !759, line: 807, type: !63)
!3666 = !DILocalVariable(name: "bufsize", scope: !3656, file: !759, line: 808, type: !97)
!3667 = !DILocalVariable(name: "buf", scope: !3656, file: !759, line: 812, type: !94)
!3668 = !DILocation(line: 0, scope: !3656, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 791, column: 10, scope: !3647)
!3670 = !DILocation(line: 804, column: 37, scope: !3656, inlinedAt: !3669)
!3671 = !DILocation(line: 805, column: 21, scope: !3656, inlinedAt: !3669)
!3672 = !DILocation(line: 807, column: 18, scope: !3656, inlinedAt: !3669)
!3673 = !DILocation(line: 807, column: 24, scope: !3656, inlinedAt: !3669)
!3674 = !DILocation(line: 808, column: 72, scope: !3656, inlinedAt: !3669)
!3675 = !DILocation(line: 809, column: 56, scope: !3656, inlinedAt: !3669)
!3676 = !DILocation(line: 810, column: 49, scope: !3656, inlinedAt: !3669)
!3677 = !DILocation(line: 811, column: 49, scope: !3656, inlinedAt: !3669)
!3678 = !DILocation(line: 808, column: 20, scope: !3656, inlinedAt: !3669)
!3679 = !DILocation(line: 811, column: 62, scope: !3656, inlinedAt: !3669)
!3680 = !DILocation(line: 812, column: 15, scope: !3656, inlinedAt: !3669)
!3681 = !DILocation(line: 813, column: 60, scope: !3656, inlinedAt: !3669)
!3682 = !DILocation(line: 815, column: 32, scope: !3656, inlinedAt: !3669)
!3683 = !DILocation(line: 815, column: 47, scope: !3656, inlinedAt: !3669)
!3684 = !DILocation(line: 813, column: 3, scope: !3656, inlinedAt: !3669)
!3685 = !DILocation(line: 816, column: 9, scope: !3656, inlinedAt: !3669)
!3686 = !DILocation(line: 791, column: 3, scope: !3647)
!3687 = !DILocation(line: 0, scope: !3656)
!3688 = !DILocation(line: 804, column: 37, scope: !3656)
!3689 = !DILocation(line: 805, column: 21, scope: !3656)
!3690 = !DILocation(line: 807, column: 18, scope: !3656)
!3691 = !DILocation(line: 807, column: 27, scope: !3656)
!3692 = !DILocation(line: 807, column: 24, scope: !3656)
!3693 = !DILocation(line: 808, column: 72, scope: !3656)
!3694 = !DILocation(line: 809, column: 56, scope: !3656)
!3695 = !DILocation(line: 810, column: 49, scope: !3656)
!3696 = !DILocation(line: 811, column: 49, scope: !3656)
!3697 = !DILocation(line: 808, column: 20, scope: !3656)
!3698 = !DILocation(line: 811, column: 62, scope: !3656)
!3699 = !DILocation(line: 812, column: 15, scope: !3656)
!3700 = !DILocation(line: 813, column: 60, scope: !3656)
!3701 = !DILocation(line: 815, column: 32, scope: !3656)
!3702 = !DILocation(line: 815, column: 47, scope: !3656)
!3703 = !DILocation(line: 813, column: 3, scope: !3656)
!3704 = !DILocation(line: 816, column: 9, scope: !3656)
!3705 = !DILocation(line: 817, column: 7, scope: !3656)
!3706 = !DILocation(line: 818, column: 11, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3656, file: !759, line: 817, column: 7)
!3708 = !DILocation(line: 818, column: 5, scope: !3707)
!3709 = !DILocation(line: 819, column: 3, scope: !3656)
!3710 = distinct !DISubprogram(name: "quotearg_free", scope: !759, file: !759, line: 837, type: !342, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3711)
!3711 = !{!3712, !3713}
!3712 = !DILocalVariable(name: "sv", scope: !3710, file: !759, line: 839, type: !848)
!3713 = !DILocalVariable(name: "i", scope: !3714, file: !759, line: 840, type: !63)
!3714 = distinct !DILexicalBlock(scope: !3710, file: !759, line: 840, column: 3)
!3715 = !DILocation(line: 839, column: 24, scope: !3710)
!3716 = !DILocation(line: 0, scope: !3710)
!3717 = !DILocation(line: 0, scope: !3714)
!3718 = !DILocation(line: 840, column: 21, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3714, file: !759, line: 840, column: 3)
!3720 = !DILocation(line: 840, column: 3, scope: !3714)
!3721 = !DILocation(line: 842, column: 13, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3710, file: !759, line: 842, column: 7)
!3723 = !{!3724, !1064, i64 8}
!3724 = !{!"slotvec", !1361, i64 0, !1064, i64 8}
!3725 = !DILocation(line: 842, column: 17, scope: !3722)
!3726 = !DILocation(line: 842, column: 7, scope: !3710)
!3727 = !DILocation(line: 841, column: 17, scope: !3719)
!3728 = !DILocation(line: 841, column: 5, scope: !3719)
!3729 = !DILocation(line: 840, column: 32, scope: !3719)
!3730 = distinct !{!3730, !3720, !3731, !1180}
!3731 = !DILocation(line: 841, column: 20, scope: !3714)
!3732 = !DILocation(line: 844, column: 7, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3722, file: !759, line: 843, column: 5)
!3734 = !DILocation(line: 845, column: 21, scope: !3733)
!3735 = !{!3724, !1361, i64 0}
!3736 = !DILocation(line: 846, column: 20, scope: !3733)
!3737 = !DILocation(line: 847, column: 5, scope: !3733)
!3738 = !DILocation(line: 848, column: 10, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3710, file: !759, line: 848, column: 7)
!3740 = !DILocation(line: 848, column: 7, scope: !3710)
!3741 = !DILocation(line: 850, column: 7, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3739, file: !759, line: 849, column: 5)
!3743 = !DILocation(line: 851, column: 15, scope: !3742)
!3744 = !DILocation(line: 852, column: 5, scope: !3742)
!3745 = !DILocation(line: 853, column: 10, scope: !3710)
!3746 = !DILocation(line: 854, column: 1, scope: !3710)
!3747 = distinct !DISubprogram(name: "quotearg_n", scope: !759, file: !759, line: 919, type: !1250, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3748)
!3748 = !{!3749, !3750}
!3749 = !DILocalVariable(name: "n", arg: 1, scope: !3747, file: !759, line: 919, type: !63)
!3750 = !DILocalVariable(name: "arg", arg: 2, scope: !3747, file: !759, line: 919, type: !100)
!3751 = !DILocation(line: 0, scope: !3747)
!3752 = !DILocation(line: 921, column: 10, scope: !3747)
!3753 = !DILocation(line: 921, column: 3, scope: !3747)
!3754 = distinct !DISubprogram(name: "quotearg_n_options", scope: !759, file: !759, line: 866, type: !3755, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3757)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!94, !63, !100, !97, !2966}
!3757 = !{!3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3768, !3769, !3771, !3772, !3773}
!3758 = !DILocalVariable(name: "n", arg: 1, scope: !3754, file: !759, line: 866, type: !63)
!3759 = !DILocalVariable(name: "arg", arg: 2, scope: !3754, file: !759, line: 866, type: !100)
!3760 = !DILocalVariable(name: "argsize", arg: 3, scope: !3754, file: !759, line: 866, type: !97)
!3761 = !DILocalVariable(name: "options", arg: 4, scope: !3754, file: !759, line: 867, type: !2966)
!3762 = !DILocalVariable(name: "saved_errno", scope: !3754, file: !759, line: 869, type: !63)
!3763 = !DILocalVariable(name: "sv", scope: !3754, file: !759, line: 871, type: !848)
!3764 = !DILocalVariable(name: "nslots_max", scope: !3754, file: !759, line: 873, type: !63)
!3765 = !DILocalVariable(name: "preallocated", scope: !3766, file: !759, line: 879, type: !136)
!3766 = distinct !DILexicalBlock(scope: !3767, file: !759, line: 878, column: 5)
!3767 = distinct !DILexicalBlock(scope: !3754, file: !759, line: 877, column: 7)
!3768 = !DILocalVariable(name: "new_nslots", scope: !3766, file: !759, line: 880, type: !1015)
!3769 = !DILocalVariable(name: "size", scope: !3770, file: !759, line: 891, type: !97)
!3770 = distinct !DILexicalBlock(scope: !3754, file: !759, line: 890, column: 3)
!3771 = !DILocalVariable(name: "val", scope: !3770, file: !759, line: 892, type: !94)
!3772 = !DILocalVariable(name: "flags", scope: !3770, file: !759, line: 894, type: !63)
!3773 = !DILocalVariable(name: "qsize", scope: !3770, file: !759, line: 895, type: !97)
!3774 = distinct !DIAssignID()
!3775 = !DILocation(line: 0, scope: !3766)
!3776 = !DILocation(line: 0, scope: !3754)
!3777 = !DILocation(line: 869, column: 21, scope: !3754)
!3778 = !DILocation(line: 871, column: 24, scope: !3754)
!3779 = !DILocation(line: 874, column: 17, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3754, file: !759, line: 874, column: 7)
!3781 = !DILocation(line: 875, column: 5, scope: !3780)
!3782 = !DILocation(line: 877, column: 7, scope: !3767)
!3783 = !DILocation(line: 877, column: 14, scope: !3767)
!3784 = !DILocation(line: 877, column: 7, scope: !3754)
!3785 = !DILocation(line: 879, column: 31, scope: !3766)
!3786 = !DILocation(line: 880, column: 7, scope: !3766)
!3787 = !DILocation(line: 880, column: 26, scope: !3766)
!3788 = !DILocation(line: 880, column: 13, scope: !3766)
!3789 = distinct !DIAssignID()
!3790 = !DILocation(line: 882, column: 31, scope: !3766)
!3791 = !DILocation(line: 883, column: 33, scope: !3766)
!3792 = !DILocation(line: 883, column: 42, scope: !3766)
!3793 = !DILocation(line: 883, column: 31, scope: !3766)
!3794 = !DILocation(line: 882, column: 22, scope: !3766)
!3795 = !DILocation(line: 882, column: 15, scope: !3766)
!3796 = !DILocation(line: 884, column: 11, scope: !3766)
!3797 = !DILocation(line: 885, column: 15, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3766, file: !759, line: 884, column: 11)
!3799 = !{i64 0, i64 8, !1360, i64 8, i64 8, !1063}
!3800 = !DILocation(line: 885, column: 9, scope: !3798)
!3801 = !DILocation(line: 886, column: 20, scope: !3766)
!3802 = !DILocation(line: 886, column: 18, scope: !3766)
!3803 = !DILocation(line: 886, column: 32, scope: !3766)
!3804 = !DILocation(line: 886, column: 43, scope: !3766)
!3805 = !DILocation(line: 886, column: 53, scope: !3766)
!3806 = !DILocation(line: 0, scope: !3188, inlinedAt: !3807)
!3807 = distinct !DILocation(line: 886, column: 7, scope: !3766)
!3808 = !DILocation(line: 59, column: 10, scope: !3188, inlinedAt: !3807)
!3809 = !DILocation(line: 887, column: 16, scope: !3766)
!3810 = !DILocation(line: 887, column: 14, scope: !3766)
!3811 = !DILocation(line: 888, column: 5, scope: !3767)
!3812 = !DILocation(line: 888, column: 5, scope: !3766)
!3813 = !DILocation(line: 891, column: 19, scope: !3770)
!3814 = !DILocation(line: 891, column: 25, scope: !3770)
!3815 = !DILocation(line: 0, scope: !3770)
!3816 = !DILocation(line: 892, column: 23, scope: !3770)
!3817 = !DILocation(line: 894, column: 26, scope: !3770)
!3818 = !DILocation(line: 894, column: 32, scope: !3770)
!3819 = !DILocation(line: 896, column: 55, scope: !3770)
!3820 = !DILocation(line: 897, column: 55, scope: !3770)
!3821 = !DILocation(line: 898, column: 55, scope: !3770)
!3822 = !DILocation(line: 899, column: 55, scope: !3770)
!3823 = !DILocation(line: 895, column: 20, scope: !3770)
!3824 = !DILocation(line: 901, column: 14, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3770, file: !759, line: 901, column: 9)
!3826 = !DILocation(line: 901, column: 9, scope: !3770)
!3827 = !DILocation(line: 903, column: 35, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3825, file: !759, line: 902, column: 7)
!3829 = !DILocation(line: 903, column: 20, scope: !3828)
!3830 = !DILocation(line: 904, column: 17, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3828, file: !759, line: 904, column: 13)
!3832 = !DILocation(line: 904, column: 13, scope: !3828)
!3833 = !DILocation(line: 905, column: 11, scope: !3831)
!3834 = !DILocation(line: 906, column: 27, scope: !3828)
!3835 = !DILocation(line: 906, column: 19, scope: !3828)
!3836 = !DILocation(line: 907, column: 69, scope: !3828)
!3837 = !DILocation(line: 909, column: 44, scope: !3828)
!3838 = !DILocation(line: 910, column: 44, scope: !3828)
!3839 = !DILocation(line: 907, column: 9, scope: !3828)
!3840 = !DILocation(line: 911, column: 7, scope: !3828)
!3841 = !DILocation(line: 913, column: 11, scope: !3770)
!3842 = !DILocation(line: 914, column: 5, scope: !3770)
!3843 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !759, file: !759, line: 925, type: !3844, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3846)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!94, !63, !100, !97}
!3846 = !{!3847, !3848, !3849}
!3847 = !DILocalVariable(name: "n", arg: 1, scope: !3843, file: !759, line: 925, type: !63)
!3848 = !DILocalVariable(name: "arg", arg: 2, scope: !3843, file: !759, line: 925, type: !100)
!3849 = !DILocalVariable(name: "argsize", arg: 3, scope: !3843, file: !759, line: 925, type: !97)
!3850 = !DILocation(line: 0, scope: !3843)
!3851 = !DILocation(line: 927, column: 10, scope: !3843)
!3852 = !DILocation(line: 927, column: 3, scope: !3843)
!3853 = distinct !DISubprogram(name: "quotearg", scope: !759, file: !759, line: 931, type: !1259, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3854)
!3854 = !{!3855}
!3855 = !DILocalVariable(name: "arg", arg: 1, scope: !3853, file: !759, line: 931, type: !100)
!3856 = !DILocation(line: 0, scope: !3853)
!3857 = !DILocation(line: 0, scope: !3747, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 933, column: 10, scope: !3853)
!3859 = !DILocation(line: 921, column: 10, scope: !3747, inlinedAt: !3858)
!3860 = !DILocation(line: 933, column: 3, scope: !3853)
!3861 = distinct !DISubprogram(name: "quotearg_mem", scope: !759, file: !759, line: 937, type: !3862, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3864)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!94, !100, !97}
!3864 = !{!3865, !3866}
!3865 = !DILocalVariable(name: "arg", arg: 1, scope: !3861, file: !759, line: 937, type: !100)
!3866 = !DILocalVariable(name: "argsize", arg: 2, scope: !3861, file: !759, line: 937, type: !97)
!3867 = !DILocation(line: 0, scope: !3861)
!3868 = !DILocation(line: 0, scope: !3843, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 939, column: 10, scope: !3861)
!3870 = !DILocation(line: 927, column: 10, scope: !3843, inlinedAt: !3869)
!3871 = !DILocation(line: 939, column: 3, scope: !3861)
!3872 = distinct !DISubprogram(name: "quotearg_n_style", scope: !759, file: !759, line: 943, type: !3873, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3875)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!94, !63, !785, !100}
!3875 = !{!3876, !3877, !3878, !3879}
!3876 = !DILocalVariable(name: "n", arg: 1, scope: !3872, file: !759, line: 943, type: !63)
!3877 = !DILocalVariable(name: "s", arg: 2, scope: !3872, file: !759, line: 943, type: !785)
!3878 = !DILocalVariable(name: "arg", arg: 3, scope: !3872, file: !759, line: 943, type: !100)
!3879 = !DILocalVariable(name: "o", scope: !3872, file: !759, line: 945, type: !2967)
!3880 = distinct !DIAssignID()
!3881 = !DILocation(line: 0, scope: !3872)
!3882 = !DILocation(line: 945, column: 3, scope: !3872)
!3883 = !{!3884}
!3884 = distinct !{!3884, !3885, !"quoting_options_from_style: argument 0"}
!3885 = distinct !{!3885, !"quoting_options_from_style"}
!3886 = !DILocation(line: 945, column: 36, scope: !3872)
!3887 = !DILocalVariable(name: "style", arg: 1, scope: !3888, file: !759, line: 183, type: !785)
!3888 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !759, file: !759, line: 183, type: !3889, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3891)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!800, !785}
!3891 = !{!3887, !3892}
!3892 = !DILocalVariable(name: "o", scope: !3888, file: !759, line: 185, type: !800)
!3893 = !DILocation(line: 0, scope: !3888, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 945, column: 36, scope: !3872)
!3895 = !DILocation(line: 185, column: 26, scope: !3888, inlinedAt: !3894)
!3896 = distinct !DIAssignID()
!3897 = !DILocation(line: 186, column: 13, scope: !3898, inlinedAt: !3894)
!3898 = distinct !DILexicalBlock(scope: !3888, file: !759, line: 186, column: 7)
!3899 = !DILocation(line: 186, column: 7, scope: !3888, inlinedAt: !3894)
!3900 = !DILocation(line: 187, column: 5, scope: !3898, inlinedAt: !3894)
!3901 = !DILocation(line: 188, column: 11, scope: !3888, inlinedAt: !3894)
!3902 = distinct !DIAssignID()
!3903 = !DILocation(line: 946, column: 10, scope: !3872)
!3904 = !DILocation(line: 947, column: 1, scope: !3872)
!3905 = !DILocation(line: 946, column: 3, scope: !3872)
!3906 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !759, file: !759, line: 950, type: !3907, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3909)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!94, !63, !785, !100, !97}
!3909 = !{!3910, !3911, !3912, !3913, !3914}
!3910 = !DILocalVariable(name: "n", arg: 1, scope: !3906, file: !759, line: 950, type: !63)
!3911 = !DILocalVariable(name: "s", arg: 2, scope: !3906, file: !759, line: 950, type: !785)
!3912 = !DILocalVariable(name: "arg", arg: 3, scope: !3906, file: !759, line: 951, type: !100)
!3913 = !DILocalVariable(name: "argsize", arg: 4, scope: !3906, file: !759, line: 951, type: !97)
!3914 = !DILocalVariable(name: "o", scope: !3906, file: !759, line: 953, type: !2967)
!3915 = distinct !DIAssignID()
!3916 = !DILocation(line: 0, scope: !3906)
!3917 = !DILocation(line: 953, column: 3, scope: !3906)
!3918 = !{!3919}
!3919 = distinct !{!3919, !3920, !"quoting_options_from_style: argument 0"}
!3920 = distinct !{!3920, !"quoting_options_from_style"}
!3921 = !DILocation(line: 953, column: 36, scope: !3906)
!3922 = !DILocation(line: 0, scope: !3888, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 953, column: 36, scope: !3906)
!3924 = !DILocation(line: 185, column: 26, scope: !3888, inlinedAt: !3923)
!3925 = distinct !DIAssignID()
!3926 = !DILocation(line: 186, column: 13, scope: !3898, inlinedAt: !3923)
!3927 = !DILocation(line: 186, column: 7, scope: !3888, inlinedAt: !3923)
!3928 = !DILocation(line: 187, column: 5, scope: !3898, inlinedAt: !3923)
!3929 = !DILocation(line: 188, column: 11, scope: !3888, inlinedAt: !3923)
!3930 = distinct !DIAssignID()
!3931 = !DILocation(line: 954, column: 10, scope: !3906)
!3932 = !DILocation(line: 955, column: 1, scope: !3906)
!3933 = !DILocation(line: 954, column: 3, scope: !3906)
!3934 = distinct !DISubprogram(name: "quotearg_style", scope: !759, file: !759, line: 958, type: !3935, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3937)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!94, !785, !100}
!3937 = !{!3938, !3939}
!3938 = !DILocalVariable(name: "s", arg: 1, scope: !3934, file: !759, line: 958, type: !785)
!3939 = !DILocalVariable(name: "arg", arg: 2, scope: !3934, file: !759, line: 958, type: !100)
!3940 = distinct !DIAssignID()
!3941 = !DILocation(line: 0, scope: !3934)
!3942 = !DILocation(line: 0, scope: !3872, inlinedAt: !3943)
!3943 = distinct !DILocation(line: 960, column: 10, scope: !3934)
!3944 = !DILocation(line: 945, column: 3, scope: !3872, inlinedAt: !3943)
!3945 = !{!3946}
!3946 = distinct !{!3946, !3947, !"quoting_options_from_style: argument 0"}
!3947 = distinct !{!3947, !"quoting_options_from_style"}
!3948 = !DILocation(line: 945, column: 36, scope: !3872, inlinedAt: !3943)
!3949 = !DILocation(line: 0, scope: !3888, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 945, column: 36, scope: !3872, inlinedAt: !3943)
!3951 = !DILocation(line: 185, column: 26, scope: !3888, inlinedAt: !3950)
!3952 = distinct !DIAssignID()
!3953 = !DILocation(line: 186, column: 13, scope: !3898, inlinedAt: !3950)
!3954 = !DILocation(line: 186, column: 7, scope: !3888, inlinedAt: !3950)
!3955 = !DILocation(line: 187, column: 5, scope: !3898, inlinedAt: !3950)
!3956 = !DILocation(line: 188, column: 11, scope: !3888, inlinedAt: !3950)
!3957 = distinct !DIAssignID()
!3958 = !DILocation(line: 946, column: 10, scope: !3872, inlinedAt: !3943)
!3959 = !DILocation(line: 947, column: 1, scope: !3872, inlinedAt: !3943)
!3960 = !DILocation(line: 960, column: 3, scope: !3934)
!3961 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !759, file: !759, line: 964, type: !3962, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!94, !785, !100, !97}
!3964 = !{!3965, !3966, !3967}
!3965 = !DILocalVariable(name: "s", arg: 1, scope: !3961, file: !759, line: 964, type: !785)
!3966 = !DILocalVariable(name: "arg", arg: 2, scope: !3961, file: !759, line: 964, type: !100)
!3967 = !DILocalVariable(name: "argsize", arg: 3, scope: !3961, file: !759, line: 964, type: !97)
!3968 = distinct !DIAssignID()
!3969 = !DILocation(line: 0, scope: !3961)
!3970 = !DILocation(line: 0, scope: !3906, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 966, column: 10, scope: !3961)
!3972 = !DILocation(line: 953, column: 3, scope: !3906, inlinedAt: !3971)
!3973 = !{!3974}
!3974 = distinct !{!3974, !3975, !"quoting_options_from_style: argument 0"}
!3975 = distinct !{!3975, !"quoting_options_from_style"}
!3976 = !DILocation(line: 953, column: 36, scope: !3906, inlinedAt: !3971)
!3977 = !DILocation(line: 0, scope: !3888, inlinedAt: !3978)
!3978 = distinct !DILocation(line: 953, column: 36, scope: !3906, inlinedAt: !3971)
!3979 = !DILocation(line: 185, column: 26, scope: !3888, inlinedAt: !3978)
!3980 = distinct !DIAssignID()
!3981 = !DILocation(line: 186, column: 13, scope: !3898, inlinedAt: !3978)
!3982 = !DILocation(line: 186, column: 7, scope: !3888, inlinedAt: !3978)
!3983 = !DILocation(line: 187, column: 5, scope: !3898, inlinedAt: !3978)
!3984 = !DILocation(line: 188, column: 11, scope: !3888, inlinedAt: !3978)
!3985 = distinct !DIAssignID()
!3986 = !DILocation(line: 954, column: 10, scope: !3906, inlinedAt: !3971)
!3987 = !DILocation(line: 955, column: 1, scope: !3906, inlinedAt: !3971)
!3988 = !DILocation(line: 966, column: 3, scope: !3961)
!3989 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !759, file: !759, line: 970, type: !3990, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3992)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!94, !100, !97, !4}
!3992 = !{!3993, !3994, !3995, !3996}
!3993 = !DILocalVariable(name: "arg", arg: 1, scope: !3989, file: !759, line: 970, type: !100)
!3994 = !DILocalVariable(name: "argsize", arg: 2, scope: !3989, file: !759, line: 970, type: !97)
!3995 = !DILocalVariable(name: "ch", arg: 3, scope: !3989, file: !759, line: 970, type: !4)
!3996 = !DILocalVariable(name: "options", scope: !3989, file: !759, line: 972, type: !800)
!3997 = distinct !DIAssignID()
!3998 = !DILocation(line: 0, scope: !3989)
!3999 = !DILocation(line: 972, column: 3, scope: !3989)
!4000 = !DILocation(line: 973, column: 13, scope: !3989)
!4001 = !{i64 0, i64 4, !1133, i64 4, i64 4, !1133, i64 8, i64 32, !1142, i64 40, i64 8, !1063, i64 48, i64 8, !1063}
!4002 = distinct !DIAssignID()
!4003 = !DILocation(line: 0, scope: !2986, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 974, column: 3, scope: !3989)
!4005 = !DILocation(line: 147, column: 41, scope: !2986, inlinedAt: !4004)
!4006 = !DILocation(line: 147, column: 62, scope: !2986, inlinedAt: !4004)
!4007 = !DILocation(line: 147, column: 57, scope: !2986, inlinedAt: !4004)
!4008 = !DILocation(line: 148, column: 15, scope: !2986, inlinedAt: !4004)
!4009 = !DILocation(line: 149, column: 21, scope: !2986, inlinedAt: !4004)
!4010 = !DILocation(line: 149, column: 24, scope: !2986, inlinedAt: !4004)
!4011 = !DILocation(line: 150, column: 19, scope: !2986, inlinedAt: !4004)
!4012 = !DILocation(line: 150, column: 24, scope: !2986, inlinedAt: !4004)
!4013 = !DILocation(line: 150, column: 6, scope: !2986, inlinedAt: !4004)
!4014 = !DILocation(line: 975, column: 10, scope: !3989)
!4015 = !DILocation(line: 976, column: 1, scope: !3989)
!4016 = !DILocation(line: 975, column: 3, scope: !3989)
!4017 = distinct !DISubprogram(name: "quotearg_char", scope: !759, file: !759, line: 979, type: !4018, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4020)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!94, !100, !4}
!4020 = !{!4021, !4022}
!4021 = !DILocalVariable(name: "arg", arg: 1, scope: !4017, file: !759, line: 979, type: !100)
!4022 = !DILocalVariable(name: "ch", arg: 2, scope: !4017, file: !759, line: 979, type: !4)
!4023 = distinct !DIAssignID()
!4024 = !DILocation(line: 0, scope: !4017)
!4025 = !DILocation(line: 0, scope: !3989, inlinedAt: !4026)
!4026 = distinct !DILocation(line: 981, column: 10, scope: !4017)
!4027 = !DILocation(line: 972, column: 3, scope: !3989, inlinedAt: !4026)
!4028 = !DILocation(line: 973, column: 13, scope: !3989, inlinedAt: !4026)
!4029 = distinct !DIAssignID()
!4030 = !DILocation(line: 0, scope: !2986, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 974, column: 3, scope: !3989, inlinedAt: !4026)
!4032 = !DILocation(line: 147, column: 41, scope: !2986, inlinedAt: !4031)
!4033 = !DILocation(line: 147, column: 62, scope: !2986, inlinedAt: !4031)
!4034 = !DILocation(line: 147, column: 57, scope: !2986, inlinedAt: !4031)
!4035 = !DILocation(line: 148, column: 15, scope: !2986, inlinedAt: !4031)
!4036 = !DILocation(line: 149, column: 21, scope: !2986, inlinedAt: !4031)
!4037 = !DILocation(line: 149, column: 24, scope: !2986, inlinedAt: !4031)
!4038 = !DILocation(line: 150, column: 19, scope: !2986, inlinedAt: !4031)
!4039 = !DILocation(line: 150, column: 24, scope: !2986, inlinedAt: !4031)
!4040 = !DILocation(line: 150, column: 6, scope: !2986, inlinedAt: !4031)
!4041 = !DILocation(line: 975, column: 10, scope: !3989, inlinedAt: !4026)
!4042 = !DILocation(line: 976, column: 1, scope: !3989, inlinedAt: !4026)
!4043 = !DILocation(line: 981, column: 3, scope: !4017)
!4044 = distinct !DISubprogram(name: "quotearg_colon", scope: !759, file: !759, line: 985, type: !1259, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4045)
!4045 = !{!4046}
!4046 = !DILocalVariable(name: "arg", arg: 1, scope: !4044, file: !759, line: 985, type: !100)
!4047 = distinct !DIAssignID()
!4048 = !DILocation(line: 0, scope: !4044)
!4049 = !DILocation(line: 0, scope: !4017, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 987, column: 10, scope: !4044)
!4051 = !DILocation(line: 0, scope: !3989, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 981, column: 10, scope: !4017, inlinedAt: !4050)
!4053 = !DILocation(line: 972, column: 3, scope: !3989, inlinedAt: !4052)
!4054 = !DILocation(line: 973, column: 13, scope: !3989, inlinedAt: !4052)
!4055 = distinct !DIAssignID()
!4056 = !DILocation(line: 0, scope: !2986, inlinedAt: !4057)
!4057 = distinct !DILocation(line: 974, column: 3, scope: !3989, inlinedAt: !4052)
!4058 = !DILocation(line: 147, column: 57, scope: !2986, inlinedAt: !4057)
!4059 = !DILocation(line: 149, column: 21, scope: !2986, inlinedAt: !4057)
!4060 = !DILocation(line: 150, column: 6, scope: !2986, inlinedAt: !4057)
!4061 = !DILocation(line: 975, column: 10, scope: !3989, inlinedAt: !4052)
!4062 = !DILocation(line: 976, column: 1, scope: !3989, inlinedAt: !4052)
!4063 = !DILocation(line: 987, column: 3, scope: !4044)
!4064 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !759, file: !759, line: 991, type: !3862, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4065)
!4065 = !{!4066, !4067}
!4066 = !DILocalVariable(name: "arg", arg: 1, scope: !4064, file: !759, line: 991, type: !100)
!4067 = !DILocalVariable(name: "argsize", arg: 2, scope: !4064, file: !759, line: 991, type: !97)
!4068 = distinct !DIAssignID()
!4069 = !DILocation(line: 0, scope: !4064)
!4070 = !DILocation(line: 0, scope: !3989, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 993, column: 10, scope: !4064)
!4072 = !DILocation(line: 972, column: 3, scope: !3989, inlinedAt: !4071)
!4073 = !DILocation(line: 973, column: 13, scope: !3989, inlinedAt: !4071)
!4074 = distinct !DIAssignID()
!4075 = !DILocation(line: 0, scope: !2986, inlinedAt: !4076)
!4076 = distinct !DILocation(line: 974, column: 3, scope: !3989, inlinedAt: !4071)
!4077 = !DILocation(line: 147, column: 57, scope: !2986, inlinedAt: !4076)
!4078 = !DILocation(line: 149, column: 21, scope: !2986, inlinedAt: !4076)
!4079 = !DILocation(line: 150, column: 6, scope: !2986, inlinedAt: !4076)
!4080 = !DILocation(line: 975, column: 10, scope: !3989, inlinedAt: !4071)
!4081 = !DILocation(line: 976, column: 1, scope: !3989, inlinedAt: !4071)
!4082 = !DILocation(line: 993, column: 3, scope: !4064)
!4083 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !759, file: !759, line: 997, type: !3873, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4084)
!4084 = !{!4085, !4086, !4087, !4088}
!4085 = !DILocalVariable(name: "n", arg: 1, scope: !4083, file: !759, line: 997, type: !63)
!4086 = !DILocalVariable(name: "s", arg: 2, scope: !4083, file: !759, line: 997, type: !785)
!4087 = !DILocalVariable(name: "arg", arg: 3, scope: !4083, file: !759, line: 997, type: !100)
!4088 = !DILocalVariable(name: "options", scope: !4083, file: !759, line: 999, type: !800)
!4089 = distinct !DIAssignID()
!4090 = !DILocation(line: 0, scope: !4083)
!4091 = !DILocation(line: 185, column: 26, scope: !3888, inlinedAt: !4092)
!4092 = distinct !DILocation(line: 1000, column: 13, scope: !4083)
!4093 = !DILocation(line: 999, column: 3, scope: !4083)
!4094 = !DILocation(line: 0, scope: !3888, inlinedAt: !4092)
!4095 = !DILocation(line: 186, column: 13, scope: !3898, inlinedAt: !4092)
!4096 = !DILocation(line: 186, column: 7, scope: !3888, inlinedAt: !4092)
!4097 = !DILocation(line: 187, column: 5, scope: !3898, inlinedAt: !4092)
!4098 = !{!4099}
!4099 = distinct !{!4099, !4100, !"quoting_options_from_style: argument 0"}
!4100 = distinct !{!4100, !"quoting_options_from_style"}
!4101 = !DILocation(line: 1000, column: 13, scope: !4083)
!4102 = distinct !DIAssignID()
!4103 = distinct !DIAssignID()
!4104 = !DILocation(line: 0, scope: !2986, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 1001, column: 3, scope: !4083)
!4106 = !DILocation(line: 147, column: 57, scope: !2986, inlinedAt: !4105)
!4107 = !DILocation(line: 149, column: 21, scope: !2986, inlinedAt: !4105)
!4108 = !DILocation(line: 150, column: 6, scope: !2986, inlinedAt: !4105)
!4109 = distinct !DIAssignID()
!4110 = !DILocation(line: 1002, column: 10, scope: !4083)
!4111 = !DILocation(line: 1003, column: 1, scope: !4083)
!4112 = !DILocation(line: 1002, column: 3, scope: !4083)
!4113 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !759, file: !759, line: 1006, type: !4114, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4116)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!94, !63, !100, !100, !100}
!4116 = !{!4117, !4118, !4119, !4120}
!4117 = !DILocalVariable(name: "n", arg: 1, scope: !4113, file: !759, line: 1006, type: !63)
!4118 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4113, file: !759, line: 1006, type: !100)
!4119 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4113, file: !759, line: 1007, type: !100)
!4120 = !DILocalVariable(name: "arg", arg: 4, scope: !4113, file: !759, line: 1007, type: !100)
!4121 = distinct !DIAssignID()
!4122 = !DILocation(line: 0, scope: !4113)
!4123 = !DILocalVariable(name: "o", scope: !4124, file: !759, line: 1018, type: !800)
!4124 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !759, file: !759, line: 1014, type: !4125, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4127)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!94, !63, !100, !100, !100, !97}
!4127 = !{!4128, !4129, !4130, !4131, !4132, !4123}
!4128 = !DILocalVariable(name: "n", arg: 1, scope: !4124, file: !759, line: 1014, type: !63)
!4129 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4124, file: !759, line: 1014, type: !100)
!4130 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4124, file: !759, line: 1015, type: !100)
!4131 = !DILocalVariable(name: "arg", arg: 4, scope: !4124, file: !759, line: 1016, type: !100)
!4132 = !DILocalVariable(name: "argsize", arg: 5, scope: !4124, file: !759, line: 1016, type: !97)
!4133 = !DILocation(line: 0, scope: !4124, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 1009, column: 10, scope: !4113)
!4135 = !DILocation(line: 1018, column: 3, scope: !4124, inlinedAt: !4134)
!4136 = !DILocation(line: 1018, column: 30, scope: !4124, inlinedAt: !4134)
!4137 = distinct !DIAssignID()
!4138 = distinct !DIAssignID()
!4139 = !DILocation(line: 0, scope: !3026, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 1019, column: 3, scope: !4124, inlinedAt: !4134)
!4141 = !DILocation(line: 174, column: 12, scope: !3026, inlinedAt: !4140)
!4142 = distinct !DIAssignID()
!4143 = !DILocation(line: 175, column: 8, scope: !3039, inlinedAt: !4140)
!4144 = !DILocation(line: 175, column: 19, scope: !3039, inlinedAt: !4140)
!4145 = !DILocation(line: 176, column: 5, scope: !3039, inlinedAt: !4140)
!4146 = !DILocation(line: 177, column: 6, scope: !3026, inlinedAt: !4140)
!4147 = !DILocation(line: 177, column: 17, scope: !3026, inlinedAt: !4140)
!4148 = distinct !DIAssignID()
!4149 = !DILocation(line: 178, column: 6, scope: !3026, inlinedAt: !4140)
!4150 = !DILocation(line: 178, column: 18, scope: !3026, inlinedAt: !4140)
!4151 = distinct !DIAssignID()
!4152 = !DILocation(line: 1020, column: 10, scope: !4124, inlinedAt: !4134)
!4153 = !DILocation(line: 1021, column: 1, scope: !4124, inlinedAt: !4134)
!4154 = !DILocation(line: 1009, column: 3, scope: !4113)
!4155 = distinct !DIAssignID()
!4156 = !DILocation(line: 0, scope: !4124)
!4157 = !DILocation(line: 1018, column: 3, scope: !4124)
!4158 = !DILocation(line: 1018, column: 30, scope: !4124)
!4159 = distinct !DIAssignID()
!4160 = distinct !DIAssignID()
!4161 = !DILocation(line: 0, scope: !3026, inlinedAt: !4162)
!4162 = distinct !DILocation(line: 1019, column: 3, scope: !4124)
!4163 = !DILocation(line: 174, column: 12, scope: !3026, inlinedAt: !4162)
!4164 = distinct !DIAssignID()
!4165 = !DILocation(line: 175, column: 8, scope: !3039, inlinedAt: !4162)
!4166 = !DILocation(line: 175, column: 19, scope: !3039, inlinedAt: !4162)
!4167 = !DILocation(line: 176, column: 5, scope: !3039, inlinedAt: !4162)
!4168 = !DILocation(line: 177, column: 6, scope: !3026, inlinedAt: !4162)
!4169 = !DILocation(line: 177, column: 17, scope: !3026, inlinedAt: !4162)
!4170 = distinct !DIAssignID()
!4171 = !DILocation(line: 178, column: 6, scope: !3026, inlinedAt: !4162)
!4172 = !DILocation(line: 178, column: 18, scope: !3026, inlinedAt: !4162)
!4173 = distinct !DIAssignID()
!4174 = !DILocation(line: 1020, column: 10, scope: !4124)
!4175 = !DILocation(line: 1021, column: 1, scope: !4124)
!4176 = !DILocation(line: 1020, column: 3, scope: !4124)
!4177 = distinct !DISubprogram(name: "quotearg_custom", scope: !759, file: !759, line: 1024, type: !4178, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4180)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!94, !100, !100, !100}
!4180 = !{!4181, !4182, !4183}
!4181 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4177, file: !759, line: 1024, type: !100)
!4182 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4177, file: !759, line: 1024, type: !100)
!4183 = !DILocalVariable(name: "arg", arg: 3, scope: !4177, file: !759, line: 1025, type: !100)
!4184 = distinct !DIAssignID()
!4185 = !DILocation(line: 0, scope: !4177)
!4186 = !DILocation(line: 0, scope: !4113, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 1027, column: 10, scope: !4177)
!4188 = !DILocation(line: 0, scope: !4124, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 1009, column: 10, scope: !4113, inlinedAt: !4187)
!4190 = !DILocation(line: 1018, column: 3, scope: !4124, inlinedAt: !4189)
!4191 = !DILocation(line: 1018, column: 30, scope: !4124, inlinedAt: !4189)
!4192 = distinct !DIAssignID()
!4193 = distinct !DIAssignID()
!4194 = !DILocation(line: 0, scope: !3026, inlinedAt: !4195)
!4195 = distinct !DILocation(line: 1019, column: 3, scope: !4124, inlinedAt: !4189)
!4196 = !DILocation(line: 174, column: 12, scope: !3026, inlinedAt: !4195)
!4197 = distinct !DIAssignID()
!4198 = !DILocation(line: 175, column: 8, scope: !3039, inlinedAt: !4195)
!4199 = !DILocation(line: 175, column: 19, scope: !3039, inlinedAt: !4195)
!4200 = !DILocation(line: 176, column: 5, scope: !3039, inlinedAt: !4195)
!4201 = !DILocation(line: 177, column: 6, scope: !3026, inlinedAt: !4195)
!4202 = !DILocation(line: 177, column: 17, scope: !3026, inlinedAt: !4195)
!4203 = distinct !DIAssignID()
!4204 = !DILocation(line: 178, column: 6, scope: !3026, inlinedAt: !4195)
!4205 = !DILocation(line: 178, column: 18, scope: !3026, inlinedAt: !4195)
!4206 = distinct !DIAssignID()
!4207 = !DILocation(line: 1020, column: 10, scope: !4124, inlinedAt: !4189)
!4208 = !DILocation(line: 1021, column: 1, scope: !4124, inlinedAt: !4189)
!4209 = !DILocation(line: 1027, column: 3, scope: !4177)
!4210 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !759, file: !759, line: 1031, type: !4211, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4213)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!94, !100, !100, !100, !97}
!4213 = !{!4214, !4215, !4216, !4217}
!4214 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4210, file: !759, line: 1031, type: !100)
!4215 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4210, file: !759, line: 1031, type: !100)
!4216 = !DILocalVariable(name: "arg", arg: 3, scope: !4210, file: !759, line: 1032, type: !100)
!4217 = !DILocalVariable(name: "argsize", arg: 4, scope: !4210, file: !759, line: 1032, type: !97)
!4218 = distinct !DIAssignID()
!4219 = !DILocation(line: 0, scope: !4210)
!4220 = !DILocation(line: 0, scope: !4124, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 1034, column: 10, scope: !4210)
!4222 = !DILocation(line: 1018, column: 3, scope: !4124, inlinedAt: !4221)
!4223 = !DILocation(line: 1018, column: 30, scope: !4124, inlinedAt: !4221)
!4224 = distinct !DIAssignID()
!4225 = distinct !DIAssignID()
!4226 = !DILocation(line: 0, scope: !3026, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 1019, column: 3, scope: !4124, inlinedAt: !4221)
!4228 = !DILocation(line: 174, column: 12, scope: !3026, inlinedAt: !4227)
!4229 = distinct !DIAssignID()
!4230 = !DILocation(line: 175, column: 8, scope: !3039, inlinedAt: !4227)
!4231 = !DILocation(line: 175, column: 19, scope: !3039, inlinedAt: !4227)
!4232 = !DILocation(line: 176, column: 5, scope: !3039, inlinedAt: !4227)
!4233 = !DILocation(line: 177, column: 6, scope: !3026, inlinedAt: !4227)
!4234 = !DILocation(line: 177, column: 17, scope: !3026, inlinedAt: !4227)
!4235 = distinct !DIAssignID()
!4236 = !DILocation(line: 178, column: 6, scope: !3026, inlinedAt: !4227)
!4237 = !DILocation(line: 178, column: 18, scope: !3026, inlinedAt: !4227)
!4238 = distinct !DIAssignID()
!4239 = !DILocation(line: 1020, column: 10, scope: !4124, inlinedAt: !4221)
!4240 = !DILocation(line: 1021, column: 1, scope: !4124, inlinedAt: !4221)
!4241 = !DILocation(line: 1034, column: 3, scope: !4210)
!4242 = distinct !DISubprogram(name: "quote_n_mem", scope: !759, file: !759, line: 1049, type: !4243, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4245)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!100, !63, !100, !97}
!4245 = !{!4246, !4247, !4248}
!4246 = !DILocalVariable(name: "n", arg: 1, scope: !4242, file: !759, line: 1049, type: !63)
!4247 = !DILocalVariable(name: "arg", arg: 2, scope: !4242, file: !759, line: 1049, type: !100)
!4248 = !DILocalVariable(name: "argsize", arg: 3, scope: !4242, file: !759, line: 1049, type: !97)
!4249 = !DILocation(line: 0, scope: !4242)
!4250 = !DILocation(line: 1051, column: 10, scope: !4242)
!4251 = !DILocation(line: 1051, column: 3, scope: !4242)
!4252 = distinct !DISubprogram(name: "quote_mem", scope: !759, file: !759, line: 1055, type: !4253, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4255)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!100, !100, !97}
!4255 = !{!4256, !4257}
!4256 = !DILocalVariable(name: "arg", arg: 1, scope: !4252, file: !759, line: 1055, type: !100)
!4257 = !DILocalVariable(name: "argsize", arg: 2, scope: !4252, file: !759, line: 1055, type: !97)
!4258 = !DILocation(line: 0, scope: !4252)
!4259 = !DILocation(line: 0, scope: !4242, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 1057, column: 10, scope: !4252)
!4261 = !DILocation(line: 1051, column: 10, scope: !4242, inlinedAt: !4260)
!4262 = !DILocation(line: 1057, column: 3, scope: !4252)
!4263 = distinct !DISubprogram(name: "quote_n", scope: !759, file: !759, line: 1061, type: !4264, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4266)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!100, !63, !100}
!4266 = !{!4267, !4268}
!4267 = !DILocalVariable(name: "n", arg: 1, scope: !4263, file: !759, line: 1061, type: !63)
!4268 = !DILocalVariable(name: "arg", arg: 2, scope: !4263, file: !759, line: 1061, type: !100)
!4269 = !DILocation(line: 0, scope: !4263)
!4270 = !DILocation(line: 0, scope: !4242, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 1063, column: 10, scope: !4263)
!4272 = !DILocation(line: 1051, column: 10, scope: !4242, inlinedAt: !4271)
!4273 = !DILocation(line: 1063, column: 3, scope: !4263)
!4274 = distinct !DISubprogram(name: "quote", scope: !759, file: !759, line: 1067, type: !4275, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4277)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!100, !100}
!4277 = !{!4278}
!4278 = !DILocalVariable(name: "arg", arg: 1, scope: !4274, file: !759, line: 1067, type: !100)
!4279 = !DILocation(line: 0, scope: !4274)
!4280 = !DILocation(line: 0, scope: !4263, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 1069, column: 10, scope: !4274)
!4282 = !DILocation(line: 0, scope: !4242, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 1063, column: 10, scope: !4263, inlinedAt: !4281)
!4284 = !DILocation(line: 1051, column: 10, scope: !4242, inlinedAt: !4283)
!4285 = !DILocation(line: 1069, column: 3, scope: !4274)
!4286 = distinct !DISubprogram(name: "version_etc_arn", scope: !861, file: !861, line: 61, type: !4287, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !989, retainedNodes: !4324)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{null, !4289, !100, !100, !100, !4323, !97}
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !4291)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !4292)
!4292 = !{!4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4291, file: !153, line: 51, baseType: !63, size: 32)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4291, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4291, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4291, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4291, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4291, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4291, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4291, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4291, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4291, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4291, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4291, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4291, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4291, file: !153, line: 70, baseType: !4307, size: 64, offset: 832)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4291, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4291, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4291, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4291, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4291, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4291, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4291, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4291, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4291, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4291, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4291, file: !153, line: 93, baseType: !4307, size: 64, offset: 1344)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4291, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4291, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4291, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4291, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!4324 = !{!4325, !4326, !4327, !4328, !4329, !4330}
!4325 = !DILocalVariable(name: "stream", arg: 1, scope: !4286, file: !861, line: 61, type: !4289)
!4326 = !DILocalVariable(name: "command_name", arg: 2, scope: !4286, file: !861, line: 62, type: !100)
!4327 = !DILocalVariable(name: "package", arg: 3, scope: !4286, file: !861, line: 62, type: !100)
!4328 = !DILocalVariable(name: "version", arg: 4, scope: !4286, file: !861, line: 63, type: !100)
!4329 = !DILocalVariable(name: "authors", arg: 5, scope: !4286, file: !861, line: 64, type: !4323)
!4330 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4286, file: !861, line: 64, type: !97)
!4331 = !DILocation(line: 0, scope: !4286)
!4332 = !DILocation(line: 66, column: 7, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4286, file: !861, line: 66, column: 7)
!4334 = !DILocation(line: 66, column: 7, scope: !4286)
!4335 = !DILocation(line: 67, column: 5, scope: !4333)
!4336 = !DILocation(line: 69, column: 5, scope: !4333)
!4337 = !DILocation(line: 83, column: 3, scope: !4286)
!4338 = !DILocation(line: 85, column: 3, scope: !4286)
!4339 = !DILocation(line: 88, column: 3, scope: !4286)
!4340 = !DILocation(line: 95, column: 3, scope: !4286)
!4341 = !DILocation(line: 97, column: 3, scope: !4286)
!4342 = !DILocation(line: 105, column: 7, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4286, file: !861, line: 98, column: 5)
!4344 = !DILocation(line: 106, column: 7, scope: !4343)
!4345 = !DILocation(line: 109, column: 7, scope: !4343)
!4346 = !DILocation(line: 110, column: 7, scope: !4343)
!4347 = !DILocation(line: 113, column: 7, scope: !4343)
!4348 = !DILocation(line: 115, column: 7, scope: !4343)
!4349 = !DILocation(line: 120, column: 7, scope: !4343)
!4350 = !DILocation(line: 122, column: 7, scope: !4343)
!4351 = !DILocation(line: 127, column: 7, scope: !4343)
!4352 = !DILocation(line: 129, column: 7, scope: !4343)
!4353 = !DILocation(line: 134, column: 7, scope: !4343)
!4354 = !DILocation(line: 137, column: 7, scope: !4343)
!4355 = !DILocation(line: 142, column: 7, scope: !4343)
!4356 = !DILocation(line: 145, column: 7, scope: !4343)
!4357 = !DILocation(line: 150, column: 7, scope: !4343)
!4358 = !DILocation(line: 154, column: 7, scope: !4343)
!4359 = !DILocation(line: 159, column: 7, scope: !4343)
!4360 = !DILocation(line: 163, column: 7, scope: !4343)
!4361 = !DILocation(line: 170, column: 7, scope: !4343)
!4362 = !DILocation(line: 174, column: 7, scope: !4343)
!4363 = !DILocation(line: 176, column: 1, scope: !4286)
!4364 = distinct !DISubprogram(name: "version_etc_ar", scope: !861, file: !861, line: 183, type: !4365, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !989, retainedNodes: !4367)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{null, !4289, !100, !100, !100, !4323}
!4367 = !{!4368, !4369, !4370, !4371, !4372, !4373}
!4368 = !DILocalVariable(name: "stream", arg: 1, scope: !4364, file: !861, line: 183, type: !4289)
!4369 = !DILocalVariable(name: "command_name", arg: 2, scope: !4364, file: !861, line: 184, type: !100)
!4370 = !DILocalVariable(name: "package", arg: 3, scope: !4364, file: !861, line: 184, type: !100)
!4371 = !DILocalVariable(name: "version", arg: 4, scope: !4364, file: !861, line: 185, type: !100)
!4372 = !DILocalVariable(name: "authors", arg: 5, scope: !4364, file: !861, line: 185, type: !4323)
!4373 = !DILocalVariable(name: "n_authors", scope: !4364, file: !861, line: 187, type: !97)
!4374 = !DILocation(line: 0, scope: !4364)
!4375 = !DILocation(line: 189, column: 8, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4364, file: !861, line: 189, column: 3)
!4377 = !DILocation(line: 189, scope: !4376)
!4378 = !DILocation(line: 189, column: 23, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4376, file: !861, line: 189, column: 3)
!4380 = !DILocation(line: 189, column: 3, scope: !4376)
!4381 = !DILocation(line: 189, column: 52, scope: !4379)
!4382 = distinct !{!4382, !4380, !4383, !1180}
!4383 = !DILocation(line: 190, column: 5, scope: !4376)
!4384 = !DILocation(line: 191, column: 3, scope: !4364)
!4385 = !DILocation(line: 192, column: 1, scope: !4364)
!4386 = distinct !DISubprogram(name: "version_etc_va", scope: !861, file: !861, line: 199, type: !4387, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !989, retainedNodes: !4396)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{null, !4289, !100, !100, !100, !4389}
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4391)
!4391 = !{!4392, !4393, !4394, !4395}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4390, file: !861, line: 192, baseType: !69, size: 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4390, file: !861, line: 192, baseType: !69, size: 32, offset: 32)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4390, file: !861, line: 192, baseType: !95, size: 64, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4390, file: !861, line: 192, baseType: !95, size: 64, offset: 128)
!4396 = !{!4397, !4398, !4399, !4400, !4401, !4402, !4403}
!4397 = !DILocalVariable(name: "stream", arg: 1, scope: !4386, file: !861, line: 199, type: !4289)
!4398 = !DILocalVariable(name: "command_name", arg: 2, scope: !4386, file: !861, line: 200, type: !100)
!4399 = !DILocalVariable(name: "package", arg: 3, scope: !4386, file: !861, line: 200, type: !100)
!4400 = !DILocalVariable(name: "version", arg: 4, scope: !4386, file: !861, line: 201, type: !100)
!4401 = !DILocalVariable(name: "authors", arg: 5, scope: !4386, file: !861, line: 201, type: !4389)
!4402 = !DILocalVariable(name: "n_authors", scope: !4386, file: !861, line: 203, type: !97)
!4403 = !DILocalVariable(name: "authtab", scope: !4386, file: !861, line: 204, type: !4404)
!4404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 640, elements: !50)
!4405 = distinct !DIAssignID()
!4406 = !DILocation(line: 0, scope: !4386)
!4407 = !DILocation(line: 204, column: 3, scope: !4386)
!4408 = !DILocation(line: 208, column: 35, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4410, file: !861, line: 206, column: 3)
!4410 = distinct !DILexicalBlock(scope: !4386, file: !861, line: 206, column: 3)
!4411 = !DILocation(line: 208, column: 33, scope: !4409)
!4412 = !DILocation(line: 208, column: 67, scope: !4409)
!4413 = !DILocation(line: 206, column: 3, scope: !4410)
!4414 = !DILocation(line: 208, column: 14, scope: !4409)
!4415 = !DILocation(line: 0, scope: !4410)
!4416 = !DILocation(line: 211, column: 3, scope: !4386)
!4417 = !DILocation(line: 213, column: 1, scope: !4386)
!4418 = distinct !DISubprogram(name: "version_etc", scope: !861, file: !861, line: 230, type: !4419, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !989, retainedNodes: !4421)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{null, !4289, !100, !100, !100, null}
!4421 = !{!4422, !4423, !4424, !4425, !4426}
!4422 = !DILocalVariable(name: "stream", arg: 1, scope: !4418, file: !861, line: 230, type: !4289)
!4423 = !DILocalVariable(name: "command_name", arg: 2, scope: !4418, file: !861, line: 231, type: !100)
!4424 = !DILocalVariable(name: "package", arg: 3, scope: !4418, file: !861, line: 231, type: !100)
!4425 = !DILocalVariable(name: "version", arg: 4, scope: !4418, file: !861, line: 232, type: !100)
!4426 = !DILocalVariable(name: "authors", scope: !4418, file: !861, line: 234, type: !4427)
!4427 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1128, line: 52, baseType: !4428)
!4428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2492, line: 12, baseType: !4429)
!4429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !861, baseType: !4430)
!4430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4390, size: 192, elements: !45)
!4431 = distinct !DIAssignID()
!4432 = !DILocation(line: 0, scope: !4418)
!4433 = !DILocation(line: 234, column: 3, scope: !4418)
!4434 = !DILocation(line: 235, column: 3, scope: !4418)
!4435 = !DILocation(line: 236, column: 3, scope: !4418)
!4436 = !DILocation(line: 237, column: 3, scope: !4418)
!4437 = !DILocation(line: 238, column: 1, scope: !4418)
!4438 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !861, file: !861, line: 241, type: !342, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !989)
!4439 = !DILocation(line: 243, column: 3, scope: !4438)
!4440 = !DILocation(line: 248, column: 3, scope: !4438)
!4441 = !DILocation(line: 254, column: 3, scope: !4438)
!4442 = !DILocation(line: 259, column: 3, scope: !4438)
!4443 = !DILocation(line: 261, column: 1, scope: !4438)
!4444 = distinct !DISubprogram(name: "xnrealloc", scope: !4445, file: !4445, line: 147, type: !4446, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4448)
!4445 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!95, !95, !97, !97}
!4448 = !{!4449, !4450, !4451}
!4449 = !DILocalVariable(name: "p", arg: 1, scope: !4444, file: !4445, line: 147, type: !95)
!4450 = !DILocalVariable(name: "n", arg: 2, scope: !4444, file: !4445, line: 147, type: !97)
!4451 = !DILocalVariable(name: "s", arg: 3, scope: !4444, file: !4445, line: 147, type: !97)
!4452 = !DILocation(line: 0, scope: !4444)
!4453 = !DILocalVariable(name: "p", arg: 1, scope: !4454, file: !996, line: 83, type: !95)
!4454 = distinct !DISubprogram(name: "xreallocarray", scope: !996, file: !996, line: 83, type: !4446, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4455)
!4455 = !{!4453, !4456, !4457}
!4456 = !DILocalVariable(name: "n", arg: 2, scope: !4454, file: !996, line: 83, type: !97)
!4457 = !DILocalVariable(name: "s", arg: 3, scope: !4454, file: !996, line: 83, type: !97)
!4458 = !DILocation(line: 0, scope: !4454, inlinedAt: !4459)
!4459 = distinct !DILocation(line: 149, column: 10, scope: !4444)
!4460 = !DILocation(line: 85, column: 25, scope: !4454, inlinedAt: !4459)
!4461 = !DILocalVariable(name: "p", arg: 1, scope: !4462, file: !996, line: 37, type: !95)
!4462 = distinct !DISubprogram(name: "check_nonnull", scope: !996, file: !996, line: 37, type: !4463, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4465)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!95, !95}
!4465 = !{!4461}
!4466 = !DILocation(line: 0, scope: !4462, inlinedAt: !4467)
!4467 = distinct !DILocation(line: 85, column: 10, scope: !4454, inlinedAt: !4459)
!4468 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4467)
!4469 = distinct !DILexicalBlock(scope: !4462, file: !996, line: 39, column: 7)
!4470 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4467)
!4471 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4467)
!4472 = !DILocation(line: 149, column: 3, scope: !4444)
!4473 = !DILocation(line: 0, scope: !4454)
!4474 = !DILocation(line: 85, column: 25, scope: !4454)
!4475 = !DILocation(line: 0, scope: !4462, inlinedAt: !4476)
!4476 = distinct !DILocation(line: 85, column: 10, scope: !4454)
!4477 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4476)
!4478 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4476)
!4479 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4476)
!4480 = !DILocation(line: 85, column: 3, scope: !4454)
!4481 = distinct !DISubprogram(name: "xmalloc", scope: !996, file: !996, line: 47, type: !4482, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4484)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{!95, !97}
!4484 = !{!4485}
!4485 = !DILocalVariable(name: "s", arg: 1, scope: !4481, file: !996, line: 47, type: !97)
!4486 = !DILocation(line: 0, scope: !4481)
!4487 = !DILocation(line: 49, column: 25, scope: !4481)
!4488 = !DILocation(line: 0, scope: !4462, inlinedAt: !4489)
!4489 = distinct !DILocation(line: 49, column: 10, scope: !4481)
!4490 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4489)
!4491 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4489)
!4492 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4489)
!4493 = !DILocation(line: 49, column: 3, scope: !4481)
!4494 = !DISubprogram(name: "malloc", scope: !1257, file: !1257, line: 540, type: !4482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4495 = distinct !DISubprogram(name: "ximalloc", scope: !996, file: !996, line: 53, type: !4496, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4498)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!95, !1015}
!4498 = !{!4499}
!4499 = !DILocalVariable(name: "s", arg: 1, scope: !4495, file: !996, line: 53, type: !1015)
!4500 = !DILocation(line: 0, scope: !4495)
!4501 = !DILocalVariable(name: "s", arg: 1, scope: !4502, file: !4503, line: 55, type: !1015)
!4502 = distinct !DISubprogram(name: "imalloc", scope: !4503, file: !4503, line: 55, type: !4496, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4504)
!4503 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4504 = !{!4501}
!4505 = !DILocation(line: 0, scope: !4502, inlinedAt: !4506)
!4506 = distinct !DILocation(line: 55, column: 25, scope: !4495)
!4507 = !DILocation(line: 57, column: 26, scope: !4502, inlinedAt: !4506)
!4508 = !DILocation(line: 0, scope: !4462, inlinedAt: !4509)
!4509 = distinct !DILocation(line: 55, column: 10, scope: !4495)
!4510 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4509)
!4511 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4509)
!4512 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4509)
!4513 = !DILocation(line: 55, column: 3, scope: !4495)
!4514 = distinct !DISubprogram(name: "xcharalloc", scope: !996, file: !996, line: 59, type: !4515, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4517)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!94, !97}
!4517 = !{!4518}
!4518 = !DILocalVariable(name: "n", arg: 1, scope: !4514, file: !996, line: 59, type: !97)
!4519 = !DILocation(line: 0, scope: !4514)
!4520 = !DILocation(line: 0, scope: !4481, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 61, column: 10, scope: !4514)
!4522 = !DILocation(line: 49, column: 25, scope: !4481, inlinedAt: !4521)
!4523 = !DILocation(line: 0, scope: !4462, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 49, column: 10, scope: !4481, inlinedAt: !4521)
!4525 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4524)
!4526 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4524)
!4527 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4524)
!4528 = !DILocation(line: 61, column: 3, scope: !4514)
!4529 = distinct !DISubprogram(name: "xrealloc", scope: !996, file: !996, line: 68, type: !4530, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4532)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!95, !95, !97}
!4532 = !{!4533, !4534}
!4533 = !DILocalVariable(name: "p", arg: 1, scope: !4529, file: !996, line: 68, type: !95)
!4534 = !DILocalVariable(name: "s", arg: 2, scope: !4529, file: !996, line: 68, type: !97)
!4535 = !DILocation(line: 0, scope: !4529)
!4536 = !DILocalVariable(name: "ptr", arg: 1, scope: !4537, file: !4538, line: 2057, type: !95)
!4537 = distinct !DISubprogram(name: "rpl_realloc", scope: !4538, file: !4538, line: 2057, type: !4530, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4539)
!4538 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4539 = !{!4536, !4540}
!4540 = !DILocalVariable(name: "size", arg: 2, scope: !4537, file: !4538, line: 2057, type: !97)
!4541 = !DILocation(line: 0, scope: !4537, inlinedAt: !4542)
!4542 = distinct !DILocation(line: 70, column: 25, scope: !4529)
!4543 = !DILocation(line: 2059, column: 24, scope: !4537, inlinedAt: !4542)
!4544 = !DILocation(line: 2059, column: 10, scope: !4537, inlinedAt: !4542)
!4545 = !DILocation(line: 0, scope: !4462, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 70, column: 10, scope: !4529)
!4547 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4546)
!4548 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4546)
!4549 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4546)
!4550 = !DILocation(line: 70, column: 3, scope: !4529)
!4551 = !DISubprogram(name: "realloc", scope: !1257, file: !1257, line: 551, type: !4530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4552 = distinct !DISubprogram(name: "xirealloc", scope: !996, file: !996, line: 74, type: !4553, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4555)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!95, !95, !1015}
!4555 = !{!4556, !4557}
!4556 = !DILocalVariable(name: "p", arg: 1, scope: !4552, file: !996, line: 74, type: !95)
!4557 = !DILocalVariable(name: "s", arg: 2, scope: !4552, file: !996, line: 74, type: !1015)
!4558 = !DILocation(line: 0, scope: !4552)
!4559 = !DILocalVariable(name: "p", arg: 1, scope: !4560, file: !4503, line: 66, type: !95)
!4560 = distinct !DISubprogram(name: "irealloc", scope: !4503, file: !4503, line: 66, type: !4553, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4561)
!4561 = !{!4559, !4562}
!4562 = !DILocalVariable(name: "s", arg: 2, scope: !4560, file: !4503, line: 66, type: !1015)
!4563 = !DILocation(line: 0, scope: !4560, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 76, column: 25, scope: !4552)
!4565 = !DILocation(line: 0, scope: !4537, inlinedAt: !4566)
!4566 = distinct !DILocation(line: 68, column: 26, scope: !4560, inlinedAt: !4564)
!4567 = !DILocation(line: 2059, column: 24, scope: !4537, inlinedAt: !4566)
!4568 = !DILocation(line: 2059, column: 10, scope: !4537, inlinedAt: !4566)
!4569 = !DILocation(line: 0, scope: !4462, inlinedAt: !4570)
!4570 = distinct !DILocation(line: 76, column: 10, scope: !4552)
!4571 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4570)
!4572 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4570)
!4573 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4570)
!4574 = !DILocation(line: 76, column: 3, scope: !4552)
!4575 = distinct !DISubprogram(name: "xireallocarray", scope: !996, file: !996, line: 89, type: !4576, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4578)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!95, !95, !1015, !1015}
!4578 = !{!4579, !4580, !4581}
!4579 = !DILocalVariable(name: "p", arg: 1, scope: !4575, file: !996, line: 89, type: !95)
!4580 = !DILocalVariable(name: "n", arg: 2, scope: !4575, file: !996, line: 89, type: !1015)
!4581 = !DILocalVariable(name: "s", arg: 3, scope: !4575, file: !996, line: 89, type: !1015)
!4582 = !DILocation(line: 0, scope: !4575)
!4583 = !DILocalVariable(name: "p", arg: 1, scope: !4584, file: !4503, line: 98, type: !95)
!4584 = distinct !DISubprogram(name: "ireallocarray", scope: !4503, file: !4503, line: 98, type: !4576, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4585)
!4585 = !{!4583, !4586, !4587}
!4586 = !DILocalVariable(name: "n", arg: 2, scope: !4584, file: !4503, line: 98, type: !1015)
!4587 = !DILocalVariable(name: "s", arg: 3, scope: !4584, file: !4503, line: 98, type: !1015)
!4588 = !DILocation(line: 0, scope: !4584, inlinedAt: !4589)
!4589 = distinct !DILocation(line: 91, column: 25, scope: !4575)
!4590 = !DILocation(line: 101, column: 13, scope: !4584, inlinedAt: !4589)
!4591 = !DILocation(line: 0, scope: !4462, inlinedAt: !4592)
!4592 = distinct !DILocation(line: 91, column: 10, scope: !4575)
!4593 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4592)
!4594 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4592)
!4595 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4592)
!4596 = !DILocation(line: 91, column: 3, scope: !4575)
!4597 = distinct !DISubprogram(name: "xnmalloc", scope: !996, file: !996, line: 98, type: !4598, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4600)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!95, !97, !97}
!4600 = !{!4601, !4602}
!4601 = !DILocalVariable(name: "n", arg: 1, scope: !4597, file: !996, line: 98, type: !97)
!4602 = !DILocalVariable(name: "s", arg: 2, scope: !4597, file: !996, line: 98, type: !97)
!4603 = !DILocation(line: 0, scope: !4597)
!4604 = !DILocation(line: 0, scope: !4454, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 100, column: 10, scope: !4597)
!4606 = !DILocation(line: 85, column: 25, scope: !4454, inlinedAt: !4605)
!4607 = !DILocation(line: 0, scope: !4462, inlinedAt: !4608)
!4608 = distinct !DILocation(line: 85, column: 10, scope: !4454, inlinedAt: !4605)
!4609 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4608)
!4610 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4608)
!4611 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4608)
!4612 = !DILocation(line: 100, column: 3, scope: !4597)
!4613 = distinct !DISubprogram(name: "xinmalloc", scope: !996, file: !996, line: 104, type: !4614, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4616)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!95, !1015, !1015}
!4616 = !{!4617, !4618}
!4617 = !DILocalVariable(name: "n", arg: 1, scope: !4613, file: !996, line: 104, type: !1015)
!4618 = !DILocalVariable(name: "s", arg: 2, scope: !4613, file: !996, line: 104, type: !1015)
!4619 = !DILocation(line: 0, scope: !4613)
!4620 = !DILocation(line: 0, scope: !4575, inlinedAt: !4621)
!4621 = distinct !DILocation(line: 106, column: 10, scope: !4613)
!4622 = !DILocation(line: 0, scope: !4584, inlinedAt: !4623)
!4623 = distinct !DILocation(line: 91, column: 25, scope: !4575, inlinedAt: !4621)
!4624 = !DILocation(line: 101, column: 13, scope: !4584, inlinedAt: !4623)
!4625 = !DILocation(line: 0, scope: !4462, inlinedAt: !4626)
!4626 = distinct !DILocation(line: 91, column: 10, scope: !4575, inlinedAt: !4621)
!4627 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4626)
!4628 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4626)
!4629 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4626)
!4630 = !DILocation(line: 106, column: 3, scope: !4613)
!4631 = distinct !DISubprogram(name: "x2realloc", scope: !996, file: !996, line: 116, type: !4632, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4634)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!95, !95, !1002}
!4634 = !{!4635, !4636}
!4635 = !DILocalVariable(name: "p", arg: 1, scope: !4631, file: !996, line: 116, type: !95)
!4636 = !DILocalVariable(name: "ps", arg: 2, scope: !4631, file: !996, line: 116, type: !1002)
!4637 = !DILocation(line: 0, scope: !4631)
!4638 = !DILocation(line: 0, scope: !999, inlinedAt: !4639)
!4639 = distinct !DILocation(line: 118, column: 10, scope: !4631)
!4640 = !DILocation(line: 178, column: 14, scope: !999, inlinedAt: !4639)
!4641 = !DILocation(line: 180, column: 9, scope: !4642, inlinedAt: !4639)
!4642 = distinct !DILexicalBlock(scope: !999, file: !996, line: 180, column: 7)
!4643 = !DILocation(line: 180, column: 7, scope: !999, inlinedAt: !4639)
!4644 = !DILocation(line: 182, column: 13, scope: !4645, inlinedAt: !4639)
!4645 = distinct !DILexicalBlock(scope: !4646, file: !996, line: 182, column: 11)
!4646 = distinct !DILexicalBlock(scope: !4642, file: !996, line: 181, column: 5)
!4647 = !DILocation(line: 182, column: 11, scope: !4646, inlinedAt: !4639)
!4648 = !DILocation(line: 197, column: 11, scope: !4649, inlinedAt: !4639)
!4649 = distinct !DILexicalBlock(scope: !4650, file: !996, line: 197, column: 11)
!4650 = distinct !DILexicalBlock(scope: !4642, file: !996, line: 195, column: 5)
!4651 = !DILocation(line: 197, column: 11, scope: !4650, inlinedAt: !4639)
!4652 = !DILocation(line: 198, column: 9, scope: !4649, inlinedAt: !4639)
!4653 = !DILocation(line: 0, scope: !4454, inlinedAt: !4654)
!4654 = distinct !DILocation(line: 201, column: 7, scope: !999, inlinedAt: !4639)
!4655 = !DILocation(line: 85, column: 25, scope: !4454, inlinedAt: !4654)
!4656 = !DILocation(line: 0, scope: !4462, inlinedAt: !4657)
!4657 = distinct !DILocation(line: 85, column: 10, scope: !4454, inlinedAt: !4654)
!4658 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4657)
!4659 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4657)
!4660 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4657)
!4661 = !DILocation(line: 202, column: 7, scope: !999, inlinedAt: !4639)
!4662 = !DILocation(line: 118, column: 3, scope: !4631)
!4663 = !DILocation(line: 0, scope: !999)
!4664 = !DILocation(line: 178, column: 14, scope: !999)
!4665 = !DILocation(line: 180, column: 9, scope: !4642)
!4666 = !DILocation(line: 180, column: 7, scope: !999)
!4667 = !DILocation(line: 182, column: 13, scope: !4645)
!4668 = !DILocation(line: 182, column: 11, scope: !4646)
!4669 = !DILocation(line: 190, column: 30, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4645, file: !996, line: 183, column: 9)
!4671 = !DILocation(line: 191, column: 16, scope: !4670)
!4672 = !DILocation(line: 191, column: 13, scope: !4670)
!4673 = !DILocation(line: 192, column: 9, scope: !4670)
!4674 = !DILocation(line: 197, column: 11, scope: !4649)
!4675 = !DILocation(line: 197, column: 11, scope: !4650)
!4676 = !DILocation(line: 198, column: 9, scope: !4649)
!4677 = !DILocation(line: 0, scope: !4454, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 201, column: 7, scope: !999)
!4679 = !DILocation(line: 85, column: 25, scope: !4454, inlinedAt: !4678)
!4680 = !DILocation(line: 0, scope: !4462, inlinedAt: !4681)
!4681 = distinct !DILocation(line: 85, column: 10, scope: !4454, inlinedAt: !4678)
!4682 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4681)
!4683 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4681)
!4684 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4681)
!4685 = !DILocation(line: 202, column: 7, scope: !999)
!4686 = !DILocation(line: 203, column: 3, scope: !999)
!4687 = !DILocation(line: 0, scope: !1011)
!4688 = !DILocation(line: 230, column: 14, scope: !1011)
!4689 = !DILocation(line: 238, column: 7, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !1011, file: !996, line: 238, column: 7)
!4691 = !DILocation(line: 238, column: 7, scope: !1011)
!4692 = !DILocation(line: 240, column: 9, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !1011, file: !996, line: 240, column: 7)
!4694 = !DILocation(line: 240, column: 18, scope: !4693)
!4695 = !DILocation(line: 253, column: 8, scope: !1011)
!4696 = !DILocation(line: 256, column: 7, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !1011, file: !996, line: 256, column: 7)
!4698 = !DILocation(line: 256, column: 7, scope: !1011)
!4699 = !DILocation(line: 258, column: 27, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4697, file: !996, line: 257, column: 5)
!4701 = !DILocation(line: 259, column: 50, scope: !4700)
!4702 = !DILocation(line: 259, column: 32, scope: !4700)
!4703 = !DILocation(line: 260, column: 5, scope: !4700)
!4704 = !DILocation(line: 262, column: 9, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !1011, file: !996, line: 262, column: 7)
!4706 = !DILocation(line: 262, column: 7, scope: !1011)
!4707 = !DILocation(line: 263, column: 9, scope: !4705)
!4708 = !DILocation(line: 263, column: 5, scope: !4705)
!4709 = !DILocation(line: 264, column: 9, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !1011, file: !996, line: 264, column: 7)
!4711 = !DILocation(line: 264, column: 14, scope: !4710)
!4712 = !DILocation(line: 265, column: 7, scope: !4710)
!4713 = !DILocation(line: 265, column: 11, scope: !4710)
!4714 = !DILocation(line: 266, column: 11, scope: !4710)
!4715 = !DILocation(line: 267, column: 14, scope: !4710)
!4716 = !DILocation(line: 264, column: 7, scope: !1011)
!4717 = !DILocation(line: 268, column: 5, scope: !4710)
!4718 = !DILocation(line: 0, scope: !4529, inlinedAt: !4719)
!4719 = distinct !DILocation(line: 269, column: 8, scope: !1011)
!4720 = !DILocation(line: 0, scope: !4537, inlinedAt: !4721)
!4721 = distinct !DILocation(line: 70, column: 25, scope: !4529, inlinedAt: !4719)
!4722 = !DILocation(line: 2059, column: 24, scope: !4537, inlinedAt: !4721)
!4723 = !DILocation(line: 2059, column: 10, scope: !4537, inlinedAt: !4721)
!4724 = !DILocation(line: 0, scope: !4462, inlinedAt: !4725)
!4725 = distinct !DILocation(line: 70, column: 10, scope: !4529, inlinedAt: !4719)
!4726 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4725)
!4727 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4725)
!4728 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4725)
!4729 = !DILocation(line: 270, column: 7, scope: !1011)
!4730 = !DILocation(line: 271, column: 3, scope: !1011)
!4731 = distinct !DISubprogram(name: "xzalloc", scope: !996, file: !996, line: 279, type: !4482, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4732)
!4732 = !{!4733}
!4733 = !DILocalVariable(name: "s", arg: 1, scope: !4731, file: !996, line: 279, type: !97)
!4734 = !DILocation(line: 0, scope: !4731)
!4735 = !DILocalVariable(name: "n", arg: 1, scope: !4736, file: !996, line: 294, type: !97)
!4736 = distinct !DISubprogram(name: "xcalloc", scope: !996, file: !996, line: 294, type: !4598, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4737)
!4737 = !{!4735, !4738}
!4738 = !DILocalVariable(name: "s", arg: 2, scope: !4736, file: !996, line: 294, type: !97)
!4739 = !DILocation(line: 0, scope: !4736, inlinedAt: !4740)
!4740 = distinct !DILocation(line: 281, column: 10, scope: !4731)
!4741 = !DILocation(line: 296, column: 25, scope: !4736, inlinedAt: !4740)
!4742 = !DILocation(line: 0, scope: !4462, inlinedAt: !4743)
!4743 = distinct !DILocation(line: 296, column: 10, scope: !4736, inlinedAt: !4740)
!4744 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4743)
!4745 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4743)
!4746 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4743)
!4747 = !DILocation(line: 281, column: 3, scope: !4731)
!4748 = !DISubprogram(name: "calloc", scope: !1257, file: !1257, line: 543, type: !4598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4749 = !DILocation(line: 0, scope: !4736)
!4750 = !DILocation(line: 296, column: 25, scope: !4736)
!4751 = !DILocation(line: 0, scope: !4462, inlinedAt: !4752)
!4752 = distinct !DILocation(line: 296, column: 10, scope: !4736)
!4753 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4752)
!4754 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4752)
!4755 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4752)
!4756 = !DILocation(line: 296, column: 3, scope: !4736)
!4757 = distinct !DISubprogram(name: "xizalloc", scope: !996, file: !996, line: 285, type: !4496, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4758)
!4758 = !{!4759}
!4759 = !DILocalVariable(name: "s", arg: 1, scope: !4757, file: !996, line: 285, type: !1015)
!4760 = !DILocation(line: 0, scope: !4757)
!4761 = !DILocalVariable(name: "n", arg: 1, scope: !4762, file: !996, line: 300, type: !1015)
!4762 = distinct !DISubprogram(name: "xicalloc", scope: !996, file: !996, line: 300, type: !4614, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4763)
!4763 = !{!4761, !4764}
!4764 = !DILocalVariable(name: "s", arg: 2, scope: !4762, file: !996, line: 300, type: !1015)
!4765 = !DILocation(line: 0, scope: !4762, inlinedAt: !4766)
!4766 = distinct !DILocation(line: 287, column: 10, scope: !4757)
!4767 = !DILocalVariable(name: "n", arg: 1, scope: !4768, file: !4503, line: 77, type: !1015)
!4768 = distinct !DISubprogram(name: "icalloc", scope: !4503, file: !4503, line: 77, type: !4614, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4769)
!4769 = !{!4767, !4770}
!4770 = !DILocalVariable(name: "s", arg: 2, scope: !4768, file: !4503, line: 77, type: !1015)
!4771 = !DILocation(line: 0, scope: !4768, inlinedAt: !4772)
!4772 = distinct !DILocation(line: 302, column: 25, scope: !4762, inlinedAt: !4766)
!4773 = !DILocation(line: 91, column: 10, scope: !4768, inlinedAt: !4772)
!4774 = !DILocation(line: 0, scope: !4462, inlinedAt: !4775)
!4775 = distinct !DILocation(line: 302, column: 10, scope: !4762, inlinedAt: !4766)
!4776 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4775)
!4777 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4775)
!4778 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4775)
!4779 = !DILocation(line: 287, column: 3, scope: !4757)
!4780 = !DILocation(line: 0, scope: !4762)
!4781 = !DILocation(line: 0, scope: !4768, inlinedAt: !4782)
!4782 = distinct !DILocation(line: 302, column: 25, scope: !4762)
!4783 = !DILocation(line: 91, column: 10, scope: !4768, inlinedAt: !4782)
!4784 = !DILocation(line: 0, scope: !4462, inlinedAt: !4785)
!4785 = distinct !DILocation(line: 302, column: 10, scope: !4762)
!4786 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4785)
!4787 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4785)
!4788 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4785)
!4789 = !DILocation(line: 302, column: 3, scope: !4762)
!4790 = distinct !DISubprogram(name: "xmemdup", scope: !996, file: !996, line: 310, type: !4791, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4793)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!95, !1281, !97}
!4793 = !{!4794, !4795}
!4794 = !DILocalVariable(name: "p", arg: 1, scope: !4790, file: !996, line: 310, type: !1281)
!4795 = !DILocalVariable(name: "s", arg: 2, scope: !4790, file: !996, line: 310, type: !97)
!4796 = !DILocation(line: 0, scope: !4790)
!4797 = !DILocation(line: 0, scope: !4481, inlinedAt: !4798)
!4798 = distinct !DILocation(line: 312, column: 18, scope: !4790)
!4799 = !DILocation(line: 49, column: 25, scope: !4481, inlinedAt: !4798)
!4800 = !DILocation(line: 0, scope: !4462, inlinedAt: !4801)
!4801 = distinct !DILocation(line: 49, column: 10, scope: !4481, inlinedAt: !4798)
!4802 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4801)
!4803 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4801)
!4804 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4801)
!4805 = !DILocalVariable(name: "__dest", arg: 1, scope: !4806, file: !1399, line: 26, type: !4809)
!4806 = distinct !DISubprogram(name: "memcpy", scope: !1399, file: !1399, line: 26, type: !4807, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4810)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!95, !4809, !1280, !97}
!4809 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !95)
!4810 = !{!4805, !4811, !4812}
!4811 = !DILocalVariable(name: "__src", arg: 2, scope: !4806, file: !1399, line: 26, type: !1280)
!4812 = !DILocalVariable(name: "__len", arg: 3, scope: !4806, file: !1399, line: 26, type: !97)
!4813 = !DILocation(line: 0, scope: !4806, inlinedAt: !4814)
!4814 = distinct !DILocation(line: 312, column: 10, scope: !4790)
!4815 = !DILocation(line: 29, column: 10, scope: !4806, inlinedAt: !4814)
!4816 = !DILocation(line: 312, column: 3, scope: !4790)
!4817 = distinct !DISubprogram(name: "ximemdup", scope: !996, file: !996, line: 316, type: !4818, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4820)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!95, !1281, !1015}
!4820 = !{!4821, !4822}
!4821 = !DILocalVariable(name: "p", arg: 1, scope: !4817, file: !996, line: 316, type: !1281)
!4822 = !DILocalVariable(name: "s", arg: 2, scope: !4817, file: !996, line: 316, type: !1015)
!4823 = !DILocation(line: 0, scope: !4817)
!4824 = !DILocation(line: 0, scope: !4495, inlinedAt: !4825)
!4825 = distinct !DILocation(line: 318, column: 18, scope: !4817)
!4826 = !DILocation(line: 0, scope: !4502, inlinedAt: !4827)
!4827 = distinct !DILocation(line: 55, column: 25, scope: !4495, inlinedAt: !4825)
!4828 = !DILocation(line: 57, column: 26, scope: !4502, inlinedAt: !4827)
!4829 = !DILocation(line: 0, scope: !4462, inlinedAt: !4830)
!4830 = distinct !DILocation(line: 55, column: 10, scope: !4495, inlinedAt: !4825)
!4831 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4830)
!4832 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4830)
!4833 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4830)
!4834 = !DILocation(line: 0, scope: !4806, inlinedAt: !4835)
!4835 = distinct !DILocation(line: 318, column: 10, scope: !4817)
!4836 = !DILocation(line: 29, column: 10, scope: !4806, inlinedAt: !4835)
!4837 = !DILocation(line: 318, column: 3, scope: !4817)
!4838 = distinct !DISubprogram(name: "ximemdup0", scope: !996, file: !996, line: 325, type: !4839, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4841)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!94, !1281, !1015}
!4841 = !{!4842, !4843, !4844}
!4842 = !DILocalVariable(name: "p", arg: 1, scope: !4838, file: !996, line: 325, type: !1281)
!4843 = !DILocalVariable(name: "s", arg: 2, scope: !4838, file: !996, line: 325, type: !1015)
!4844 = !DILocalVariable(name: "result", scope: !4838, file: !996, line: 327, type: !94)
!4845 = !DILocation(line: 0, scope: !4838)
!4846 = !DILocation(line: 327, column: 30, scope: !4838)
!4847 = !DILocation(line: 0, scope: !4495, inlinedAt: !4848)
!4848 = distinct !DILocation(line: 327, column: 18, scope: !4838)
!4849 = !DILocation(line: 0, scope: !4502, inlinedAt: !4850)
!4850 = distinct !DILocation(line: 55, column: 25, scope: !4495, inlinedAt: !4848)
!4851 = !DILocation(line: 57, column: 26, scope: !4502, inlinedAt: !4850)
!4852 = !DILocation(line: 0, scope: !4462, inlinedAt: !4853)
!4853 = distinct !DILocation(line: 55, column: 10, scope: !4495, inlinedAt: !4848)
!4854 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4853)
!4855 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4853)
!4856 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4853)
!4857 = !DILocation(line: 328, column: 3, scope: !4838)
!4858 = !DILocation(line: 328, column: 13, scope: !4838)
!4859 = !DILocation(line: 0, scope: !4806, inlinedAt: !4860)
!4860 = distinct !DILocation(line: 329, column: 10, scope: !4838)
!4861 = !DILocation(line: 29, column: 10, scope: !4806, inlinedAt: !4860)
!4862 = !DILocation(line: 329, column: 3, scope: !4838)
!4863 = distinct !DISubprogram(name: "xstrdup", scope: !996, file: !996, line: 335, type: !1259, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4864)
!4864 = !{!4865}
!4865 = !DILocalVariable(name: "string", arg: 1, scope: !4863, file: !996, line: 335, type: !100)
!4866 = !DILocation(line: 0, scope: !4863)
!4867 = !DILocation(line: 337, column: 27, scope: !4863)
!4868 = !DILocation(line: 337, column: 43, scope: !4863)
!4869 = !DILocation(line: 0, scope: !4790, inlinedAt: !4870)
!4870 = distinct !DILocation(line: 337, column: 10, scope: !4863)
!4871 = !DILocation(line: 0, scope: !4481, inlinedAt: !4872)
!4872 = distinct !DILocation(line: 312, column: 18, scope: !4790, inlinedAt: !4870)
!4873 = !DILocation(line: 49, column: 25, scope: !4481, inlinedAt: !4872)
!4874 = !DILocation(line: 0, scope: !4462, inlinedAt: !4875)
!4875 = distinct !DILocation(line: 49, column: 10, scope: !4481, inlinedAt: !4872)
!4876 = !DILocation(line: 39, column: 8, scope: !4469, inlinedAt: !4875)
!4877 = !DILocation(line: 39, column: 7, scope: !4462, inlinedAt: !4875)
!4878 = !DILocation(line: 40, column: 5, scope: !4469, inlinedAt: !4875)
!4879 = !DILocation(line: 0, scope: !4806, inlinedAt: !4880)
!4880 = distinct !DILocation(line: 312, column: 10, scope: !4790, inlinedAt: !4870)
!4881 = !DILocation(line: 29, column: 10, scope: !4806, inlinedAt: !4880)
!4882 = !DILocation(line: 337, column: 3, scope: !4863)
!4883 = distinct !DISubprogram(name: "xalloc_die", scope: !947, file: !947, line: 32, type: !342, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !4884)
!4884 = !{!4885}
!4885 = !DILocalVariable(name: "__errstatus", scope: !4886, file: !947, line: 34, type: !4887)
!4886 = distinct !DILexicalBlock(scope: !4883, file: !947, line: 34, column: 3)
!4887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!4888 = !DILocation(line: 34, column: 3, scope: !4886)
!4889 = !DILocation(line: 0, scope: !4886)
!4890 = !DILocation(line: 40, column: 3, scope: !4883)
!4891 = distinct !DISubprogram(name: "rpl_fopen", scope: !1031, file: !1031, line: 46, type: !4892, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !4928)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{!4894, !100, !100}
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4895 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !4896)
!4896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !4897)
!4897 = !{!4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927}
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4896, file: !153, line: 51, baseType: !63, size: 32)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4896, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4896, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4896, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4896, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4896, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4896, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4896, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4896, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4896, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4896, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4896, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4896, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4896, file: !153, line: 70, baseType: !4912, size: 64, offset: 832)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4896, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4896, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4896, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4896, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4896, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4896, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4896, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4896, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4896, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4896, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4896, file: !153, line: 93, baseType: !4912, size: 64, offset: 1344)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4896, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4896, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4896, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4896, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!4928 = !{!4929, !4930, !4931, !4932, !4933, !4934, !4938, !4940, !4941, !4946, !4949, !4950}
!4929 = !DILocalVariable(name: "filename", arg: 1, scope: !4891, file: !1031, line: 46, type: !100)
!4930 = !DILocalVariable(name: "mode", arg: 2, scope: !4891, file: !1031, line: 46, type: !100)
!4931 = !DILocalVariable(name: "open_direction", scope: !4891, file: !1031, line: 54, type: !63)
!4932 = !DILocalVariable(name: "open_flags", scope: !4891, file: !1031, line: 55, type: !63)
!4933 = !DILocalVariable(name: "open_flags_gnu", scope: !4891, file: !1031, line: 57, type: !136)
!4934 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4891, file: !1031, line: 59, type: !4935)
!4935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4936)
!4936 = !{!4937}
!4937 = !DISubrange(count: 81)
!4938 = !DILocalVariable(name: "p", scope: !4939, file: !1031, line: 62, type: !100)
!4939 = distinct !DILexicalBlock(scope: !4891, file: !1031, line: 61, column: 3)
!4940 = !DILocalVariable(name: "q", scope: !4939, file: !1031, line: 64, type: !94)
!4941 = !DILocalVariable(name: "len", scope: !4942, file: !1031, line: 128, type: !97)
!4942 = distinct !DILexicalBlock(scope: !4943, file: !1031, line: 127, column: 9)
!4943 = distinct !DILexicalBlock(scope: !4944, file: !1031, line: 68, column: 7)
!4944 = distinct !DILexicalBlock(scope: !4945, file: !1031, line: 67, column: 5)
!4945 = distinct !DILexicalBlock(scope: !4939, file: !1031, line: 67, column: 5)
!4946 = !DILocalVariable(name: "fd", scope: !4947, file: !1031, line: 199, type: !63)
!4947 = distinct !DILexicalBlock(scope: !4948, file: !1031, line: 198, column: 5)
!4948 = distinct !DILexicalBlock(scope: !4891, file: !1031, line: 197, column: 7)
!4949 = !DILocalVariable(name: "fp", scope: !4947, file: !1031, line: 204, type: !4894)
!4950 = !DILocalVariable(name: "saved_errno", scope: !4951, file: !1031, line: 207, type: !63)
!4951 = distinct !DILexicalBlock(scope: !4952, file: !1031, line: 206, column: 9)
!4952 = distinct !DILexicalBlock(scope: !4947, file: !1031, line: 205, column: 11)
!4953 = distinct !DIAssignID()
!4954 = !DILocation(line: 0, scope: !4891)
!4955 = !DILocation(line: 59, column: 3, scope: !4891)
!4956 = !DILocation(line: 0, scope: !4939)
!4957 = !DILocation(line: 67, column: 5, scope: !4939)
!4958 = !DILocation(line: 54, column: 7, scope: !4891)
!4959 = !DILocation(line: 67, column: 12, scope: !4944)
!4960 = !DILocation(line: 67, column: 5, scope: !4945)
!4961 = !DILocation(line: 74, column: 19, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4963, file: !1031, line: 74, column: 17)
!4963 = distinct !DILexicalBlock(scope: !4943, file: !1031, line: 70, column: 11)
!4964 = !DILocation(line: 74, column: 17, scope: !4963)
!4965 = !DILocation(line: 75, column: 17, scope: !4962)
!4966 = !DILocation(line: 75, column: 20, scope: !4962)
!4967 = !DILocation(line: 75, column: 15, scope: !4962)
!4968 = !DILocation(line: 80, column: 24, scope: !4963)
!4969 = !DILocation(line: 82, column: 19, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4963, file: !1031, line: 82, column: 17)
!4971 = !DILocation(line: 82, column: 17, scope: !4963)
!4972 = !DILocation(line: 83, column: 17, scope: !4970)
!4973 = !DILocation(line: 83, column: 20, scope: !4970)
!4974 = !DILocation(line: 83, column: 15, scope: !4970)
!4975 = !DILocation(line: 88, column: 24, scope: !4963)
!4976 = !DILocation(line: 90, column: 19, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4963, file: !1031, line: 90, column: 17)
!4978 = !DILocation(line: 90, column: 17, scope: !4963)
!4979 = !DILocation(line: 91, column: 17, scope: !4977)
!4980 = !DILocation(line: 91, column: 20, scope: !4977)
!4981 = !DILocation(line: 91, column: 15, scope: !4977)
!4982 = !DILocation(line: 100, column: 19, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4963, file: !1031, line: 100, column: 17)
!4984 = !DILocation(line: 100, column: 17, scope: !4963)
!4985 = !DILocation(line: 101, column: 17, scope: !4983)
!4986 = !DILocation(line: 101, column: 20, scope: !4983)
!4987 = !DILocation(line: 101, column: 15, scope: !4983)
!4988 = !DILocation(line: 107, column: 19, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4963, file: !1031, line: 107, column: 17)
!4990 = !DILocation(line: 107, column: 17, scope: !4963)
!4991 = !DILocation(line: 108, column: 17, scope: !4989)
!4992 = !DILocation(line: 108, column: 20, scope: !4989)
!4993 = !DILocation(line: 108, column: 15, scope: !4989)
!4994 = !DILocation(line: 113, column: 24, scope: !4963)
!4995 = !DILocation(line: 115, column: 13, scope: !4963)
!4996 = !DILocation(line: 117, column: 24, scope: !4963)
!4997 = !DILocation(line: 119, column: 13, scope: !4963)
!4998 = !DILocation(line: 128, column: 24, scope: !4942)
!4999 = !DILocation(line: 0, scope: !4942)
!5000 = !DILocation(line: 129, column: 48, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4942, file: !1031, line: 129, column: 15)
!5002 = !DILocation(line: 129, column: 15, scope: !4942)
!5003 = !DILocalVariable(name: "__dest", arg: 1, scope: !5004, file: !1399, line: 26, type: !4809)
!5004 = distinct !DISubprogram(name: "memcpy", scope: !1399, file: !1399, line: 26, type: !4807, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !5005)
!5005 = !{!5003, !5006, !5007}
!5006 = !DILocalVariable(name: "__src", arg: 2, scope: !5004, file: !1399, line: 26, type: !1280)
!5007 = !DILocalVariable(name: "__len", arg: 3, scope: !5004, file: !1399, line: 26, type: !97)
!5008 = !DILocation(line: 0, scope: !5004, inlinedAt: !5009)
!5009 = distinct !DILocation(line: 131, column: 11, scope: !4942)
!5010 = !DILocation(line: 29, column: 10, scope: !5004, inlinedAt: !5009)
!5011 = !DILocation(line: 132, column: 13, scope: !4942)
!5012 = !DILocation(line: 135, column: 9, scope: !4943)
!5013 = !DILocation(line: 67, column: 25, scope: !4944)
!5014 = !DILocation(line: 67, column: 5, scope: !4944)
!5015 = distinct !{!5015, !4960, !5016, !1180}
!5016 = !DILocation(line: 136, column: 7, scope: !4945)
!5017 = !DILocation(line: 138, column: 8, scope: !4939)
!5018 = !DILocation(line: 197, column: 7, scope: !4948)
!5019 = !DILocation(line: 197, column: 7, scope: !4891)
!5020 = !DILocation(line: 199, column: 47, scope: !4947)
!5021 = !DILocation(line: 199, column: 16, scope: !4947)
!5022 = !DILocation(line: 0, scope: !4947)
!5023 = !DILocation(line: 201, column: 14, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !4947, file: !1031, line: 201, column: 11)
!5025 = !DILocation(line: 201, column: 11, scope: !4947)
!5026 = !DILocation(line: 204, column: 18, scope: !4947)
!5027 = !DILocation(line: 205, column: 14, scope: !4952)
!5028 = !DILocation(line: 205, column: 11, scope: !4947)
!5029 = !DILocation(line: 207, column: 29, scope: !4951)
!5030 = !DILocation(line: 0, scope: !4951)
!5031 = !DILocation(line: 208, column: 11, scope: !4951)
!5032 = !DILocation(line: 209, column: 17, scope: !4951)
!5033 = !DILocation(line: 210, column: 9, scope: !4951)
!5034 = !DILocalVariable(name: "filename", arg: 1, scope: !5035, file: !1031, line: 30, type: !100)
!5035 = distinct !DISubprogram(name: "orig_fopen", scope: !1031, file: !1031, line: 30, type: !4892, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !5036)
!5036 = !{!5034, !5037}
!5037 = !DILocalVariable(name: "mode", arg: 2, scope: !5035, file: !1031, line: 30, type: !100)
!5038 = !DILocation(line: 0, scope: !5035, inlinedAt: !5039)
!5039 = distinct !DILocation(line: 219, column: 10, scope: !4891)
!5040 = !DILocation(line: 32, column: 10, scope: !5035, inlinedAt: !5039)
!5041 = !DILocation(line: 219, column: 3, scope: !4891)
!5042 = !DILocation(line: 220, column: 1, scope: !4891)
!5043 = !DISubprogram(name: "open", scope: !2479, file: !2479, line: 181, type: !5044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!63, !100, !63, null}
!5046 = !DISubprogram(name: "fdopen", scope: !1128, file: !1128, line: 293, type: !5047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{!4894, !63, !100}
!5049 = !DISubprogram(name: "close", scope: !2344, file: !2344, line: 358, type: !1546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5050 = !DISubprogram(name: "fopen", scope: !1128, file: !1128, line: 258, type: !5051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{!4894, !1123, !1123}
!5053 = distinct !DISubprogram(name: "close_stream", scope: !1033, file: !1033, line: 55, type: !5054, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !5090)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!63, !5056}
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !5058)
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !5059)
!5059 = !{!5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5058, file: !153, line: 51, baseType: !63, size: 32)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5058, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5058, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5058, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5058, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5058, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5058, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5058, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5058, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5058, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5058, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5058, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5058, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5058, file: !153, line: 70, baseType: !5074, size: 64, offset: 832)
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5058, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5058, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5058, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5058, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5058, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5058, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5058, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5058, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5058, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5058, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5058, file: !153, line: 93, baseType: !5074, size: 64, offset: 1344)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5058, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5058, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5058, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5058, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!5090 = !{!5091, !5092, !5094, !5095}
!5091 = !DILocalVariable(name: "stream", arg: 1, scope: !5053, file: !1033, line: 55, type: !5056)
!5092 = !DILocalVariable(name: "some_pending", scope: !5053, file: !1033, line: 57, type: !5093)
!5093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!5094 = !DILocalVariable(name: "prev_fail", scope: !5053, file: !1033, line: 58, type: !5093)
!5095 = !DILocalVariable(name: "fclose_fail", scope: !5053, file: !1033, line: 59, type: !5093)
!5096 = !DILocation(line: 0, scope: !5053)
!5097 = !DILocation(line: 57, column: 30, scope: !5053)
!5098 = !DILocalVariable(name: "__stream", arg: 1, scope: !5099, file: !1381, line: 135, type: !5056)
!5099 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1381, file: !1381, line: 135, type: !5054, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !5100)
!5100 = !{!5098}
!5101 = !DILocation(line: 0, scope: !5099, inlinedAt: !5102)
!5102 = distinct !DILocation(line: 58, column: 27, scope: !5053)
!5103 = !DILocation(line: 137, column: 10, scope: !5099, inlinedAt: !5102)
!5104 = !DILocation(line: 58, column: 43, scope: !5053)
!5105 = !DILocation(line: 59, column: 29, scope: !5053)
!5106 = !DILocation(line: 59, column: 45, scope: !5053)
!5107 = !DILocation(line: 69, column: 17, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5053, file: !1033, line: 69, column: 7)
!5109 = !DILocation(line: 57, column: 50, scope: !5053)
!5110 = !DILocation(line: 69, column: 33, scope: !5108)
!5111 = !DILocation(line: 69, column: 53, scope: !5108)
!5112 = !DILocation(line: 69, column: 59, scope: !5108)
!5113 = !DILocation(line: 69, column: 7, scope: !5053)
!5114 = !DILocation(line: 71, column: 11, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5108, file: !1033, line: 70, column: 5)
!5116 = !DILocation(line: 72, column: 9, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5115, file: !1033, line: 71, column: 11)
!5118 = !DILocation(line: 72, column: 15, scope: !5117)
!5119 = !DILocation(line: 77, column: 1, scope: !5053)
!5120 = !DISubprogram(name: "__fpending", scope: !2687, file: !2687, line: 75, type: !5121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!97, !5056}
!5123 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !954, file: !954, line: 100, type: !5124, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !5127)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{!97, !1673, !100, !97, !5126}
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!5127 = !{!5128, !5129, !5130, !5131, !5132}
!5128 = !DILocalVariable(name: "pwc", arg: 1, scope: !5123, file: !954, line: 100, type: !1673)
!5129 = !DILocalVariable(name: "s", arg: 2, scope: !5123, file: !954, line: 100, type: !100)
!5130 = !DILocalVariable(name: "n", arg: 3, scope: !5123, file: !954, line: 100, type: !97)
!5131 = !DILocalVariable(name: "ps", arg: 4, scope: !5123, file: !954, line: 100, type: !5126)
!5132 = !DILocalVariable(name: "ret", scope: !5123, file: !954, line: 130, type: !97)
!5133 = !DILocation(line: 0, scope: !5123)
!5134 = !DILocation(line: 105, column: 9, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5123, file: !954, line: 105, column: 7)
!5136 = !DILocation(line: 105, column: 7, scope: !5123)
!5137 = !DILocation(line: 117, column: 10, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5123, file: !954, line: 117, column: 7)
!5139 = !DILocation(line: 117, column: 7, scope: !5123)
!5140 = !DILocation(line: 130, column: 16, scope: !5123)
!5141 = !DILocation(line: 135, column: 11, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5123, file: !954, line: 135, column: 7)
!5143 = !DILocation(line: 135, column: 25, scope: !5142)
!5144 = !DILocation(line: 135, column: 30, scope: !5142)
!5145 = !DILocation(line: 135, column: 7, scope: !5123)
!5146 = !DILocalVariable(name: "ps", arg: 1, scope: !5147, file: !2927, line: 1135, type: !5126)
!5147 = distinct !DISubprogram(name: "mbszero", scope: !2927, file: !2927, line: 1135, type: !5148, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !5150)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{null, !5126}
!5150 = !{!5146}
!5151 = !DILocation(line: 0, scope: !5147, inlinedAt: !5152)
!5152 = distinct !DILocation(line: 137, column: 5, scope: !5142)
!5153 = !DILocalVariable(name: "__dest", arg: 1, scope: !5154, file: !1399, line: 57, type: !95)
!5154 = distinct !DISubprogram(name: "memset", scope: !1399, file: !1399, line: 57, type: !2936, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !5155)
!5155 = !{!5153, !5156, !5157}
!5156 = !DILocalVariable(name: "__ch", arg: 2, scope: !5154, file: !1399, line: 57, type: !63)
!5157 = !DILocalVariable(name: "__len", arg: 3, scope: !5154, file: !1399, line: 57, type: !97)
!5158 = !DILocation(line: 0, scope: !5154, inlinedAt: !5159)
!5159 = distinct !DILocation(line: 1137, column: 3, scope: !5147, inlinedAt: !5152)
!5160 = !DILocation(line: 59, column: 10, scope: !5154, inlinedAt: !5159)
!5161 = !DILocation(line: 137, column: 5, scope: !5142)
!5162 = !DILocation(line: 138, column: 11, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5123, file: !954, line: 138, column: 7)
!5164 = !DILocation(line: 138, column: 7, scope: !5123)
!5165 = !DILocation(line: 139, column: 5, scope: !5163)
!5166 = !DILocation(line: 143, column: 26, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5123, file: !954, line: 143, column: 7)
!5168 = !DILocation(line: 143, column: 41, scope: !5167)
!5169 = !DILocation(line: 143, column: 7, scope: !5123)
!5170 = !DILocation(line: 145, column: 15, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5172, file: !954, line: 145, column: 11)
!5172 = distinct !DILexicalBlock(scope: !5167, file: !954, line: 144, column: 5)
!5173 = !DILocation(line: 145, column: 11, scope: !5172)
!5174 = !DILocation(line: 146, column: 32, scope: !5171)
!5175 = !DILocation(line: 146, column: 16, scope: !5171)
!5176 = !DILocation(line: 146, column: 14, scope: !5171)
!5177 = !DILocation(line: 146, column: 9, scope: !5171)
!5178 = !DILocation(line: 286, column: 1, scope: !5123)
!5179 = !DISubprogram(name: "mbsinit", scope: !1690, file: !1690, line: 293, type: !5180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5180 = !DISubroutineType(types: !5181)
!5181 = !{!63, !5182}
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !960)
!5184 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1035, file: !1035, line: 27, type: !4446, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !5185)
!5185 = !{!5186, !5187, !5188, !5189}
!5186 = !DILocalVariable(name: "ptr", arg: 1, scope: !5184, file: !1035, line: 27, type: !95)
!5187 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5184, file: !1035, line: 27, type: !97)
!5188 = !DILocalVariable(name: "size", arg: 3, scope: !5184, file: !1035, line: 27, type: !97)
!5189 = !DILocalVariable(name: "nbytes", scope: !5184, file: !1035, line: 29, type: !97)
!5190 = !DILocation(line: 0, scope: !5184)
!5191 = !DILocation(line: 30, column: 7, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5184, file: !1035, line: 30, column: 7)
!5193 = !DILocation(line: 30, column: 7, scope: !5184)
!5194 = !DILocation(line: 32, column: 7, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5192, file: !1035, line: 31, column: 5)
!5196 = !DILocation(line: 32, column: 13, scope: !5195)
!5197 = !DILocation(line: 33, column: 7, scope: !5195)
!5198 = !DILocalVariable(name: "ptr", arg: 1, scope: !5199, file: !4538, line: 2057, type: !95)
!5199 = distinct !DISubprogram(name: "rpl_realloc", scope: !4538, file: !4538, line: 2057, type: !4530, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !5200)
!5200 = !{!5198, !5201}
!5201 = !DILocalVariable(name: "size", arg: 2, scope: !5199, file: !4538, line: 2057, type: !97)
!5202 = !DILocation(line: 0, scope: !5199, inlinedAt: !5203)
!5203 = distinct !DILocation(line: 37, column: 10, scope: !5184)
!5204 = !DILocation(line: 2059, column: 24, scope: !5199, inlinedAt: !5203)
!5205 = !DILocation(line: 2059, column: 10, scope: !5199, inlinedAt: !5203)
!5206 = !DILocation(line: 37, column: 3, scope: !5184)
!5207 = !DILocation(line: 38, column: 1, scope: !5184)
!5208 = distinct !DISubprogram(name: "hard_locale", scope: !972, file: !972, line: 28, type: !1859, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1036, retainedNodes: !5209)
!5209 = !{!5210, !5211}
!5210 = !DILocalVariable(name: "category", arg: 1, scope: !5208, file: !972, line: 28, type: !63)
!5211 = !DILocalVariable(name: "locale", scope: !5208, file: !972, line: 30, type: !5212)
!5212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5213)
!5213 = !{!5214}
!5214 = !DISubrange(count: 257)
!5215 = distinct !DIAssignID()
!5216 = !DILocation(line: 0, scope: !5208)
!5217 = !DILocation(line: 30, column: 3, scope: !5208)
!5218 = !DILocation(line: 32, column: 7, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5208, file: !972, line: 32, column: 7)
!5220 = !DILocation(line: 32, column: 7, scope: !5208)
!5221 = !DILocalVariable(name: "__s1", arg: 1, scope: !5222, file: !1146, line: 1359, type: !100)
!5222 = distinct !DISubprogram(name: "streq", scope: !1146, file: !1146, line: 1359, type: !1147, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1036, retainedNodes: !5223)
!5223 = !{!5221, !5224}
!5224 = !DILocalVariable(name: "__s2", arg: 2, scope: !5222, file: !1146, line: 1359, type: !100)
!5225 = !DILocation(line: 0, scope: !5222, inlinedAt: !5226)
!5226 = distinct !DILocation(line: 35, column: 9, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5208, file: !972, line: 35, column: 7)
!5228 = !DILocation(line: 1361, column: 11, scope: !5222, inlinedAt: !5226)
!5229 = !DILocation(line: 35, column: 29, scope: !5227)
!5230 = !DILocation(line: 0, scope: !5222, inlinedAt: !5231)
!5231 = distinct !DILocation(line: 35, column: 32, scope: !5227)
!5232 = !DILocation(line: 1361, column: 11, scope: !5222, inlinedAt: !5231)
!5233 = !DILocation(line: 1361, column: 10, scope: !5222, inlinedAt: !5231)
!5234 = !DILocation(line: 35, column: 7, scope: !5208)
!5235 = !DILocation(line: 46, column: 3, scope: !5208)
!5236 = !DILocation(line: 47, column: 1, scope: !5208)
!5237 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1041, file: !1041, line: 154, type: !5238, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !5240)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{!63, !63, !94, !97}
!5240 = !{!5241, !5242, !5243}
!5241 = !DILocalVariable(name: "category", arg: 1, scope: !5237, file: !1041, line: 154, type: !63)
!5242 = !DILocalVariable(name: "buf", arg: 2, scope: !5237, file: !1041, line: 154, type: !94)
!5243 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5237, file: !1041, line: 154, type: !97)
!5244 = !DILocation(line: 0, scope: !5237)
!5245 = !DILocation(line: 159, column: 10, scope: !5237)
!5246 = !DILocation(line: 159, column: 3, scope: !5237)
!5247 = distinct !DISubprogram(name: "setlocale_null", scope: !1041, file: !1041, line: 186, type: !5248, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !5250)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{!100, !63}
!5250 = !{!5251}
!5251 = !DILocalVariable(name: "category", arg: 1, scope: !5247, file: !1041, line: 186, type: !63)
!5252 = !DILocation(line: 0, scope: !5247)
!5253 = !DILocation(line: 189, column: 10, scope: !5247)
!5254 = !DILocation(line: 189, column: 3, scope: !5247)
!5255 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1043, file: !1043, line: 35, type: !5248, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1042, retainedNodes: !5256)
!5256 = !{!5257, !5258}
!5257 = !DILocalVariable(name: "category", arg: 1, scope: !5255, file: !1043, line: 35, type: !63)
!5258 = !DILocalVariable(name: "result", scope: !5255, file: !1043, line: 37, type: !100)
!5259 = !DILocation(line: 0, scope: !5255)
!5260 = !DILocation(line: 37, column: 24, scope: !5255)
!5261 = !DILocation(line: 62, column: 3, scope: !5255)
!5262 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1043, file: !1043, line: 66, type: !5238, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1042, retainedNodes: !5263)
!5263 = !{!5264, !5265, !5266, !5267, !5268}
!5264 = !DILocalVariable(name: "category", arg: 1, scope: !5262, file: !1043, line: 66, type: !63)
!5265 = !DILocalVariable(name: "buf", arg: 2, scope: !5262, file: !1043, line: 66, type: !94)
!5266 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5262, file: !1043, line: 66, type: !97)
!5267 = !DILocalVariable(name: "result", scope: !5262, file: !1043, line: 111, type: !100)
!5268 = !DILocalVariable(name: "length", scope: !5269, file: !1043, line: 125, type: !97)
!5269 = distinct !DILexicalBlock(scope: !5270, file: !1043, line: 124, column: 5)
!5270 = distinct !DILexicalBlock(scope: !5262, file: !1043, line: 113, column: 7)
!5271 = !DILocation(line: 0, scope: !5262)
!5272 = !DILocation(line: 0, scope: !5255, inlinedAt: !5273)
!5273 = distinct !DILocation(line: 111, column: 24, scope: !5262)
!5274 = !DILocation(line: 37, column: 24, scope: !5255, inlinedAt: !5273)
!5275 = !DILocation(line: 113, column: 14, scope: !5270)
!5276 = !DILocation(line: 113, column: 7, scope: !5262)
!5277 = !DILocation(line: 116, column: 19, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5279, file: !1043, line: 116, column: 11)
!5279 = distinct !DILexicalBlock(scope: !5270, file: !1043, line: 114, column: 5)
!5280 = !DILocation(line: 116, column: 11, scope: !5279)
!5281 = !DILocation(line: 120, column: 16, scope: !5278)
!5282 = !DILocation(line: 120, column: 9, scope: !5278)
!5283 = !DILocation(line: 125, column: 23, scope: !5269)
!5284 = !DILocation(line: 0, scope: !5269)
!5285 = !DILocation(line: 126, column: 18, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5269, file: !1043, line: 126, column: 11)
!5287 = !DILocation(line: 126, column: 11, scope: !5269)
!5288 = !DILocation(line: 128, column: 39, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5286, file: !1043, line: 127, column: 9)
!5290 = !DILocalVariable(name: "__dest", arg: 1, scope: !5291, file: !1399, line: 26, type: !4809)
!5291 = distinct !DISubprogram(name: "memcpy", scope: !1399, file: !1399, line: 26, type: !4807, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1042, retainedNodes: !5292)
!5292 = !{!5290, !5293, !5294}
!5293 = !DILocalVariable(name: "__src", arg: 2, scope: !5291, file: !1399, line: 26, type: !1280)
!5294 = !DILocalVariable(name: "__len", arg: 3, scope: !5291, file: !1399, line: 26, type: !97)
!5295 = !DILocation(line: 0, scope: !5291, inlinedAt: !5296)
!5296 = distinct !DILocation(line: 128, column: 11, scope: !5289)
!5297 = !DILocation(line: 29, column: 10, scope: !5291, inlinedAt: !5296)
!5298 = !DILocation(line: 129, column: 11, scope: !5289)
!5299 = !DILocation(line: 133, column: 23, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5301, file: !1043, line: 133, column: 15)
!5301 = distinct !DILexicalBlock(scope: !5286, file: !1043, line: 132, column: 9)
!5302 = !DILocation(line: 133, column: 15, scope: !5301)
!5303 = !DILocation(line: 138, column: 44, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5300, file: !1043, line: 134, column: 13)
!5305 = !DILocation(line: 0, scope: !5291, inlinedAt: !5306)
!5306 = distinct !DILocation(line: 138, column: 15, scope: !5304)
!5307 = !DILocation(line: 29, column: 10, scope: !5291, inlinedAt: !5306)
!5308 = !DILocation(line: 139, column: 15, scope: !5304)
!5309 = !DILocation(line: 139, column: 32, scope: !5304)
!5310 = !DILocation(line: 140, column: 13, scope: !5304)
!5311 = !DILocation(line: 0, scope: !5270)
!5312 = !DILocation(line: 145, column: 1, scope: !5262)
