; ModuleID = 'src/expand.bc'
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
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !105
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !110
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !115
@.str.14 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !120
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !125
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
@.str.54 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1, !dbg !396
@.str.55 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !401
@convert_entire_line = dso_local local_unnamed_addr global i8 0, align 1, !dbg !406
@exit_status = dso_local local_unnamed_addr global i32 0, align 4, !dbg !436
@first_free_tab = internal unnamed_addr global i64 0, align 8, !dbg !522
@tab_list = internal unnamed_addr global ptr null, align 8, !dbg !524
@n_tabs_allocated = internal global i64 0, align 8, !dbg !527
@.str.19 = private unnamed_addr constant [41 x i8] c"'/' specifier not at start of number: %s\00", align 1, !dbg !438
@.str.1.20 = private unnamed_addr constant [41 x i8] c"'+' specifier not at start of number: %s\00", align 1, !dbg !443
@.str.2.21 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1, !dbg !445
@.str.3.22 = private unnamed_addr constant [25 x i8] c"tab stop is too large %s\00", align 1, !dbg !450
@.str.4.23 = private unnamed_addr constant [43 x i8] c"tab size contains invalid character(s): %s\00", align 1, !dbg !455
@extend_size = internal unnamed_addr global i64 0, align 8, !dbg !553
@increment_size = internal unnamed_addr global i64 0, align 8, !dbg !555
@max_column_width = dso_local local_unnamed_addr global i64 0, align 8, !dbg !520
@tab_size = internal unnamed_addr global i64 0, align 8, !dbg !557
@.str.5.31 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1, !dbg !460
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !650
@stdin_argv = internal global [2 x ptr] [ptr @.str.6.34, ptr null], align 16, !dbg !561
@file_list = internal unnamed_addr global ptr null, align 8, !dbg !564
@next_file.prev_file = internal unnamed_addr global ptr null, align 8, !dbg !462
@.str.6.34 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !507
@.str.7.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !509
@stdin = external local_unnamed_addr global ptr, align 8
@.str.8.38 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !511
@.str.9.43 = private unnamed_addr constant [71 x i8] c"  -t, --tabs=LIST\0A         use comma separated list of tab positions.\0A\00", align 1, !dbg !513
@.str.10.58 = private unnamed_addr constant [305 x i8] c"         The last specified position can be prefixed with '/'\0A         to specify a tab size to use after the last\0A         explicitly specified tab stop.  Also a prefix of '+'\0A         can be used to align remaining tab stops relative to\0A         the last specified tab stop instead of the first column\0A\00", align 1, !dbg !515
@.str.12.7 = private unnamed_addr constant [47 x i8] c"'/' specifier only allowed with the last value\00", align 1, !dbg !531
@.str.13.8 = private unnamed_addr constant [47 x i8] c"'+' specifier only allowed with the last value\00", align 1, !dbg !536
@.str.14.26 = private unnamed_addr constant [21 x i8] c"tab size cannot be 0\00", align 1, !dbg !538
@.str.15.27 = private unnamed_addr constant [28 x i8] c"tab sizes must be ascending\00", align 1, !dbg !543
@.str.16.28 = private unnamed_addr constant [45 x i8] c"'/' specifier is mutually exclusive with '+'\00", align 1, !dbg !548
@oputs_.help_no_sgr.44 = internal unnamed_addr global i32 -1, align 4, !dbg !567
@.str.17.45 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !596
@.str.18.46 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !598
@.str.19.47 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !600
@.str.20 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !602
@.str.21 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !604
@.str.22 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !606
@.str.23 = private unnamed_addr constant [4 x i8] c"dir\00", align 1, !dbg !608
@.str.24 = private unnamed_addr constant [3 x i8] c"ls\00", align 1, !dbg !610
@.str.25 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1, !dbg !612
@.str.26 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1, !dbg !614
@.str.27 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1, !dbg !616
@.str.28 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1, !dbg !618
@.str.29 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1, !dbg !620
@.str.30 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !622
@.str.31 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !624
@.str.32.48 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !626
@.str.33.49 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !628
@.str.34.50 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !630
@.str.35.51 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !632
@.str.36.52 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !634
@.str.37.53 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !636
@.str.38.54 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !638
@.str.39.55 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !640
@.str.40.56 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !642
@.str.41.57 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !644
@.str.42 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !646
@.str.43 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !648
@.str.61 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !651
@Version = dso_local local_unnamed_addr global ptr @.str.61, align 8, !dbg !654
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !658
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !671
@.str.64 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !663
@.str.1.65 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !665
@.str.2.66 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !667
@.str.3.67 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !669
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !673
@stderr = external local_unnamed_addr global ptr, align 8
@.str.68 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !679
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !711
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !681
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !792
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !806
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !844
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !851
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !808
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !853
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !796
@.str.10.111 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !813
@.str.11.109 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !815
@.str.12.112 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !817
@.str.13.110 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !819
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !821
@.str.119 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !857
@.str.1.120 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !860
@.str.2.121 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !862
@.str.3.122 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !864
@.str.4.123 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !866
@.str.5.124 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !868
@.str.6.125 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !873
@.str.7.126 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !876
@.str.8.127 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !878
@.str.9.128 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !880
@.str.10.129 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !882
@.str.11.130 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !887
@.str.12.131 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !892
@.str.13.132 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !894
@.str.14.133 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !899
@.str.15.134 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !904
@.str.16.135 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !909
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.140 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !914
@.str.18.141 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !916
@.str.19.142 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !918
@.str.20.143 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !920
@.str.21.144 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !922
@.str.22.145 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !924
@.str.23.146 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !926
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !931
@exit_failure = dso_local global i32 1, align 4, !dbg !937
@.str.161 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !943
@.str.1.159 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !946
@.str.2.160 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !948
@.str.168 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !950
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !953
@.str.1.173 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !968

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1046 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1050, metadata !DIExpression()), !dbg !1051
  %2 = icmp eq i32 %0, 0, !dbg !1052
  br i1 %2, label %8, label %3, !dbg !1054

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1055, !tbaa !1057
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !1055
  %6 = load ptr, ptr @program_name, align 8, !dbg !1055, !tbaa !1057
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !1055
  br label %39, !dbg !1055

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !1061
  %10 = load ptr, ptr @program_name, align 8, !dbg !1061, !tbaa !1057
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !1061
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !1063
  %13 = load ptr, ptr @stdout, align 8, !dbg !1063, !tbaa !1057
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1063
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #37, !dbg !1064
  %16 = load ptr, ptr @stdout, align 8, !dbg !1064, !tbaa !1057
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1064
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #37, !dbg !1068
  %19 = load ptr, ptr @stdout, align 8, !dbg !1068, !tbaa !1057
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !1068
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !1071
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1071
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !1072
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1072
  tail call void @emit_tab_list_info(ptr noundef nonnull @.str.3) #37, !dbg !1073
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !1074
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1074
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !1075
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1075
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1076, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1088, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata ptr poison, metadata !1088, metadata !DIExpression()), !dbg !1093
  tail call void @emit_bug_reporting_address() #37, !dbg !1095
  %25 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !1096
  call void @llvm.dbg.value(metadata ptr %25, metadata !1091, metadata !DIExpression()), !dbg !1093
  %26 = icmp eq ptr %25, null, !dbg !1097
  br i1 %26, label %34, label %27, !dbg !1099

27:                                               ; preds = %8
  %28 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(4) @.str.45, i64 noundef 3) #38, !dbg !1100
  %29 = icmp eq i32 %28, 0, !dbg !1100
  br i1 %29, label %34, label %30, !dbg !1101

30:                                               ; preds = %27
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #37, !dbg !1102
  %32 = load ptr, ptr @stdout, align 8, !dbg !1102, !tbaa !1057
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !1102
  br label %34, !dbg !1104

34:                                               ; preds = %8, %27, %30
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1088, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1092, metadata !DIExpression()), !dbg !1093
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #37, !dbg !1105
  %36 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %35, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3) #37, !dbg !1105
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #37, !dbg !1106
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.49) #37, !dbg !1106
  br label %39

39:                                               ; preds = %34, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !1107
  unreachable, !dbg !1107
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1108 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1112 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1118 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1121 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !127 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !131, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata ptr %0, metadata !132, metadata !DIExpression()), !dbg !1125
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1126, !tbaa !1127
  %3 = icmp eq i32 %2, -1, !dbg !1129
  br i1 %3, label %4, label %16, !dbg !1130

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #37, !dbg !1131
  call void @llvm.dbg.value(metadata ptr %5, metadata !133, metadata !DIExpression()), !dbg !1132
  %6 = icmp eq ptr %5, null, !dbg !1133
  br i1 %6, label %14, label %7, !dbg !1134

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1135, !tbaa !1136
  %9 = icmp eq i8 %8, 0, !dbg !1135
  br i1 %9, label %14, label %10, !dbg !1137

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1138, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !1144, metadata !DIExpression()), !dbg !1145
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.16) #38, !dbg !1147
  %12 = icmp eq i32 %11, 0, !dbg !1148
  %13 = zext i1 %12 to i32, !dbg !1137
  br label %14, !dbg !1137

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1149, !tbaa !1127
  br label %16, !dbg !1150

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1151
  %18 = icmp eq i32 %17, 0, !dbg !1151
  br i1 %18, label %22, label %19, !dbg !1153

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1154, !tbaa !1057
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1154
  br label %128, !dbg !1156

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !136, metadata !DIExpression()), !dbg !1125
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.17) #38, !dbg !1157
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1158
  call void @llvm.dbg.value(metadata ptr %24, metadata !137, metadata !DIExpression()), !dbg !1125
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !1159
  call void @llvm.dbg.value(metadata ptr %25, metadata !138, metadata !DIExpression()), !dbg !1125
  %26 = icmp eq ptr %25, null, !dbg !1160
  br i1 %26, label %58, label %27, !dbg !1161

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1162
  br i1 %28, label %58, label %29, !dbg !1163

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !139, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i64 0, metadata !143, metadata !DIExpression()), !dbg !1164
  %30 = icmp ult ptr %24, %25, !dbg !1165
  br i1 %30, label %31, label %52, !dbg !1166

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !1125
  %33 = load ptr, ptr %32, align 8, !tbaa !1057
  br label %34, !dbg !1166

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !139, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i64 %36, metadata !143, metadata !DIExpression()), !dbg !1164
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1167
  call void @llvm.dbg.value(metadata ptr %37, metadata !139, metadata !DIExpression()), !dbg !1164
  %38 = load i8, ptr %35, align 1, !dbg !1167, !tbaa !1136
  %39 = sext i8 %38 to i64, !dbg !1167
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1167
  %41 = load i16, ptr %40, align 2, !dbg !1167, !tbaa !1168
  %42 = freeze i16 %41, !dbg !1170
  %43 = lshr i16 %42, 13, !dbg !1170
  %44 = and i16 %43, 1, !dbg !1170
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1171
  call void @llvm.dbg.value(metadata i64 %46, metadata !143, metadata !DIExpression()), !dbg !1164
  %47 = icmp ult ptr %37, %25, !dbg !1165
  %48 = icmp ult i64 %46, 2, !dbg !1172
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1172
  br i1 %49, label %34, label %50, !dbg !1166, !llvm.loop !1173

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1175
  br i1 %51, label %52, label %54, !dbg !1177

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1177

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !1177
  call void @llvm.dbg.value(metadata i8 %57, metadata !136, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata ptr %56, metadata !138, metadata !DIExpression()), !dbg !1125
  br label %58, !dbg !1178

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !1125
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !1125
  call void @llvm.dbg.value(metadata i8 %60, metadata !136, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata ptr %59, metadata !138, metadata !DIExpression()), !dbg !1125
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.18) #38, !dbg !1179
  call void @llvm.dbg.value(metadata i64 %61, metadata !144, metadata !DIExpression()), !dbg !1125
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !1180
  call void @llvm.dbg.value(metadata ptr %62, metadata !145, metadata !DIExpression()), !dbg !1125
  br label %63, !dbg !1181

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !1125
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !1125
  call void @llvm.dbg.value(metadata i8 %65, metadata !136, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata ptr %64, metadata !145, metadata !DIExpression()), !dbg !1125
  %66 = load i8, ptr %64, align 1, !dbg !1182, !tbaa !1136
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !1183

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1184
  %69 = load i8, ptr %68, align 1, !dbg !1187, !tbaa !1136
  %70 = icmp eq i8 %69, 45, !dbg !1188
  %71 = select i1 %70, i8 0, i8 %65, !dbg !1189
  br label %72, !dbg !1189

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !1125
  call void @llvm.dbg.value(metadata i8 %73, metadata !136, metadata !DIExpression()), !dbg !1125
  %74 = tail call ptr @__ctype_b_loc() #40, !dbg !1190
  %75 = load ptr, ptr %74, align 8, !dbg !1190, !tbaa !1057
  %76 = sext i8 %66 to i64, !dbg !1190
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1190
  %78 = load i16, ptr %77, align 2, !dbg !1190, !tbaa !1168
  %79 = and i16 %78, 8192, !dbg !1190
  %80 = icmp eq i16 %79, 0, !dbg !1190
  br i1 %80, label %96, label %81, !dbg !1192

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1193
  br i1 %82, label %98, label %83, !dbg !1196

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1197
  %85 = load i8, ptr %84, align 1, !dbg !1197, !tbaa !1136
  %86 = sext i8 %85 to i64, !dbg !1197
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1197
  %88 = load i16, ptr %87, align 2, !dbg !1197, !tbaa !1168
  %89 = and i16 %88, 8192, !dbg !1197
  %90 = icmp eq i16 %89, 0, !dbg !1197
  br i1 %90, label %91, label %98, !dbg !1198

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1199
  %93 = icmp ne i8 %92, 0, !dbg !1199
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1201
  br i1 %95, label %96, label %98, !dbg !1201

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1202
  call void @llvm.dbg.value(metadata ptr %97, metadata !145, metadata !DIExpression()), !dbg !1125
  br label %63, !dbg !1181, !llvm.loop !1203

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1205
  %100 = load ptr, ptr @stdout, align 8, !dbg !1205, !tbaa !1057
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1205
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1138, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1138, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1138, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1138, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1138, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1138, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1138, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1138, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1138, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1138, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !202, metadata !DIExpression()), !dbg !1125
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #38, !dbg !1226
  %103 = icmp eq i32 %102, 0, !dbg !1226
  br i1 %103, label %107, label %104, !dbg !1228

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.33, i64 noundef 9) #38, !dbg !1229
  %106 = icmp eq i32 %105, 0, !dbg !1229
  br i1 %106, label %107, label %110, !dbg !1230

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1231
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #37, !dbg !1231
  br label %113, !dbg !1233

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1234
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #37, !dbg !1234
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1236, !tbaa !1057
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %114), !dbg !1236
  %116 = load ptr, ptr @stdout, align 8, !dbg !1237, !tbaa !1057
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %116), !dbg !1237
  %118 = ptrtoint ptr %64 to i64, !dbg !1238
  %119 = sub i64 %118, %99, !dbg !1238
  %120 = load ptr, ptr @stdout, align 8, !dbg !1238, !tbaa !1057
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1238
  %122 = load ptr, ptr @stdout, align 8, !dbg !1239, !tbaa !1057
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %122), !dbg !1239
  %124 = load ptr, ptr @stdout, align 8, !dbg !1240, !tbaa !1057
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %124), !dbg !1240
  %126 = load ptr, ptr @stdout, align 8, !dbg !1241, !tbaa !1057
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1241
  br label %128, !dbg !1242

128:                                              ; preds = %113, %19
  ret void, !dbg !1242
}

; Function Attrs: nounwind
declare !dbg !1243 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1247 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1251 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1253 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1256 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1259 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1262 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1265 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1271 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1272 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1278 {
  %3 = alloca %struct.__mbstate_t, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca [2 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1282, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata ptr %1, metadata !1283, metadata !DIExpression()), !dbg !1290
  %8 = load ptr, ptr %1, align 8, !dbg !1291, !tbaa !1057
  tail call void @set_program_name(ptr noundef %8) #37, !dbg !1292
  %9 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #37, !dbg !1293
  %10 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #37, !dbg !1294
  %11 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #37, !dbg !1295
  %12 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1296
  store i8 1, ptr @convert_entire_line, align 1, !dbg !1297, !tbaa !1298
  %13 = getelementptr inbounds [2 x i8], ptr %7, i64 0, i64 1
  br label %14, !dbg !1300

14:                                               ; preds = %24, %2
  %15 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @shortopts, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1301
  call void @llvm.dbg.value(metadata i32 %15, metadata !1284, metadata !DIExpression()), !dbg !1290
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
  ], !dbg !1300

16:                                               ; preds = %14
  store i8 0, ptr @convert_entire_line, align 1, !dbg !1302, !tbaa !1298
  br label %24, !dbg !1303

17:                                               ; preds = %14
  %18 = load ptr, ptr @optarg, align 8, !dbg !1304, !tbaa !1057
  call void @parse_tab_stops(ptr noundef %18) #37, !dbg !1305
  br label %24, !dbg !1306

19:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %20 = load ptr, ptr @optarg, align 8, !dbg !1307, !tbaa !1057
  %21 = icmp eq ptr %20, null, !dbg !1307
  br i1 %21, label %25, label %22, !dbg !1308

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %20, i64 -1, !dbg !1309
  call void @parse_tab_stops(ptr noundef nonnull %23) #37, !dbg !1310
  br label %24, !dbg !1310

24:                                               ; preds = %22, %25, %17, %16
  br label %14, !dbg !1301, !llvm.loop !1311

25:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #37, !dbg !1313
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1285, metadata !DIExpression()), !dbg !1314
  %26 = trunc i32 %15 to i8, !dbg !1315
  store i8 %26, ptr %7, align 1, !dbg !1316, !tbaa !1136
  store i8 0, ptr %13, align 1, !dbg !1317, !tbaa !1136
  call void @parse_tab_stops(ptr noundef nonnull %7) #37, !dbg !1318
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #37, !dbg !1319
  br label %24

27:                                               ; preds = %14
  call void @usage(i32 noundef 0) #41, !dbg !1320
  unreachable, !dbg !1320

28:                                               ; preds = %14
  %29 = load ptr, ptr @stdout, align 8, !dbg !1321, !tbaa !1057
  %30 = load ptr, ptr @Version, align 8, !dbg !1321, !tbaa !1057
  %31 = call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #37, !dbg !1321
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef %30, ptr noundef %31, ptr noundef null) #37, !dbg !1321
  call void @exit(i32 noundef 0) #39, !dbg !1321
  unreachable, !dbg !1321

32:                                               ; preds = %14
  call void @usage(i32 noundef 1) #41, !dbg !1322
  unreachable, !dbg !1322

33:                                               ; preds = %14
  call void @finalize_tab_stops() #37, !dbg !1323
  %34 = load i32, ptr @optind, align 4, !dbg !1324, !tbaa !1127
  %35 = icmp slt i32 %34, %0, !dbg !1325
  %36 = sext i32 %34 to i64, !dbg !1324
  %37 = getelementptr inbounds ptr, ptr %1, i64 %36, !dbg !1324
  %38 = select i1 %35, ptr %37, ptr null, !dbg !1324
  call void @set_file_list(ptr noundef %38) #37, !dbg !1326
  %39 = call ptr @next_file(ptr noundef null) #37, !dbg !1327
  call void @llvm.dbg.value(metadata ptr %39, metadata !345, metadata !DIExpression()), !dbg !1329
  %40 = icmp eq ptr %39, null, !dbg !1330
  br i1 %40, label %300, label %41, !dbg !1332

41:                                               ; preds = %33, %298
  %42 = phi i64 [ %180, %298 ], [ 0, %33 ], !dbg !1329
  %43 = phi i64 [ %181, %298 ], [ 0, %33 ], !dbg !1329
  %44 = phi ptr [ %185, %298 ], [ %39, %33 ], !dbg !1333
  %45 = phi ptr [ %186, %298 ], [ %39, %33 ], !dbg !1329
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata ptr %44, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 262144, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %43, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %42, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata ptr %45, metadata !345, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i8 1, metadata !371, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata i64 0, metadata !372, metadata !DIExpression()), !dbg !1344
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !1345
  call void @llvm.dbg.value(metadata i64 0, metadata !378, metadata !DIExpression()), !dbg !1344
  store i64 0, ptr %5, align 8, !dbg !1346, !tbaa !1347
  br label %46, !dbg !1349

46:                                               ; preds = %294, %41
  %47 = phi i64 [ %42, %41 ], [ %180, %294 ], !dbg !1329
  %48 = phi i64 [ %43, %41 ], [ %181, %294 ], !dbg !1329
  %49 = phi ptr [ %44, %41 ], [ %185, %294 ], !dbg !1333
  %50 = phi i64 [ 0, %41 ], [ %295, %294 ], !dbg !1344
  %51 = phi i8 [ 1, %41 ], [ %296, %294 ], !dbg !1344
  %52 = phi ptr [ %45, %41 ], [ %186, %294 ], !dbg !1329
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata ptr %49, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 262144, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %48, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %47, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata ptr %52, metadata !345, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i8 %51, metadata !371, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata i64 %50, metadata !372, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata ptr %49, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 262144, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %48, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %47, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata ptr %52, metadata !345, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata ptr undef, metadata !1350, metadata !DIExpression()), !dbg !1360
  %53 = sub nsw i64 %47, %48, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %53, metadata !1355, metadata !DIExpression()), !dbg !1360
  %54 = icmp slt i64 %53, 4, !dbg !1363
  br i1 %54, label %55, label %75, !dbg !1364

55:                                               ; preds = %46
  call void @llvm.dbg.value(metadata ptr %49, metadata !1365, metadata !DIExpression()), !dbg !1371
  %56 = load i32, ptr %49, align 8, !dbg !1373, !tbaa !1374
  %57 = and i32 %56, 16, !dbg !1376
  %58 = icmp eq i32 %57, 0, !dbg !1376
  br i1 %58, label %59, label %70, !dbg !1377

59:                                               ; preds = %55
  %60 = icmp sgt i64 %53, 0, !dbg !1378
  br i1 %60, label %61, label %64, !dbg !1380

61:                                               ; preds = %59
  %62 = getelementptr inbounds i8, ptr @expand.line_in, i64 %48, !dbg !1381
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !1383, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata ptr %62, metadata !1389, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %53, metadata !1390, metadata !DIExpression()), !dbg !1391
  %63 = call ptr @__memmove_chk(ptr noundef nonnull @expand.line_in, ptr noundef nonnull %62, i64 noundef %53, i64 noundef 262144) #37, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %53, metadata !1356, metadata !DIExpression()), !dbg !1394
  br label %64

64:                                               ; preds = %61, %59
  %65 = phi i64 [ %53, %61 ], [ 0, %59 ], !dbg !1395
  call void @llvm.dbg.value(metadata i64 %65, metadata !1356, metadata !DIExpression()), !dbg !1394
  %66 = getelementptr inbounds i8, ptr @expand.line_in, i64 %65, !dbg !1396
  %67 = sub nuw nsw i64 262144, %65, !dbg !1396
  %68 = call i64 @fread_unlocked(ptr noundef nonnull %66, i64 noundef 1, i64 noundef %67, ptr noundef nonnull %49), !dbg !1396
  %69 = add i64 %68, %65, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %69, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %69, metadata !1355, metadata !DIExpression()), !dbg !1360
  br label %70, !dbg !1398

70:                                               ; preds = %64, %55
  %71 = phi i64 [ %69, %64 ], [ %47, %55 ], !dbg !1329
  %72 = phi i64 [ 0, %64 ], [ %48, %55 ], !dbg !1329
  %73 = phi i64 [ %69, %64 ], [ %53, %55 ], !dbg !1360
  call void @llvm.dbg.value(metadata i64 %72, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %71, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %73, metadata !1355, metadata !DIExpression()), !dbg !1360
  %74 = icmp slt i64 %73, 1, !dbg !1399
  br i1 %74, label %121, label %75, !dbg !1401

75:                                               ; preds = %70, %46
  %76 = phi i64 [ %71, %70 ], [ %47, %46 ], !dbg !1329
  %77 = phi i64 [ %72, %70 ], [ %48, %46 ], !dbg !1329
  call void @llvm.dbg.value(metadata i64 %77, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %76, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1329
  %78 = getelementptr inbounds i8, ptr @expand.line_in, i64 %77, !dbg !1402
  call void @llvm.dbg.value(metadata ptr %78, metadata !1403, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1408, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1423
  %79 = load i8, ptr %78, align 1, !dbg !1425, !tbaa !1136
  call void @llvm.dbg.value(metadata i8 %79, metadata !1409, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 %79, metadata !1426, metadata !DIExpression()), !dbg !1431
  %80 = icmp sgt i8 %79, -1, !dbg !1434
  br i1 %80, label %102, label %81, !dbg !1435

81:                                               ; preds = %75
  call void @llvm.dbg.value(metadata !DIArgList(ptr @expand.line_in, i64 %76), metadata !1408, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1423
  %82 = getelementptr inbounds i8, ptr @expand.line_in, i64 %76, !dbg !1436
  call void @llvm.dbg.value(metadata ptr %82, metadata !1408, metadata !DIExpression()), !dbg !1423
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #37, !dbg !1437
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1410, metadata !DIExpression()), !dbg !1438
  store i32 0, ptr %3, align 4, !dbg !1439, !tbaa !1440
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #37, !dbg !1442
  %83 = ptrtoint ptr %82 to i64, !dbg !1443
  %84 = ptrtoint ptr %78 to i64, !dbg !1443
  %85 = sub i64 %83, %84, !dbg !1443
  call void @llvm.dbg.value(metadata ptr %4, metadata !1421, metadata !DIExpression(DW_OP_deref)), !dbg !1423
  %86 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %78, i64 noundef %85, ptr noundef nonnull %3) #37, !dbg !1444
  call void @llvm.dbg.value(metadata i64 %86, metadata !1422, metadata !DIExpression()), !dbg !1423
  %87 = icmp slt i64 %86, 0, !dbg !1445
  br i1 %87, label %96, label %88, !dbg !1447, !prof !1448

88:                                               ; preds = %81
  %89 = load i32, ptr %4, align 4, !dbg !1449, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 %89, metadata !1421, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i32 %89, metadata !1450, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %86, metadata !1455, metadata !DIExpression()), !dbg !1456
  %90 = icmp ne i64 %86, 0, !dbg !1458
  call void @llvm.assume(i1 %90), !dbg !1458
  %91 = icmp ult i64 %86, 5, !dbg !1459
  call void @llvm.assume(i1 %91), !dbg !1459
  %92 = icmp ult i32 %89, 1114112, !dbg !1460
  call void @llvm.assume(i1 %92), !dbg !1460
  %93 = shl nuw nsw i64 %86, 40, !dbg !1461
  %94 = zext i32 %89 to i64, !dbg !1461
  %95 = or i64 %93, %94, !dbg !1461
  br label %100, !dbg !1462

96:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i8 %79, metadata !1463, metadata !DIExpression()), !dbg !1468
  %97 = zext i8 %79 to i64, !dbg !1470
  %98 = shl nuw nsw i64 %97, 32, !dbg !1470
  %99 = or i64 %98, 1099511627776, !dbg !1470
  br label %100, !dbg !1471

100:                                              ; preds = %96, %88
  %101 = phi i64 [ %99, %96 ], [ %95, %88 ], !dbg !1423
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #37, !dbg !1472
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #37, !dbg !1472
  br label %105

102:                                              ; preds = %75
  call void @llvm.dbg.value(metadata i64 1, metadata !1455, metadata !DIExpression()), !dbg !1473
  %103 = zext i8 %79 to i64, !dbg !1475
  call void @llvm.dbg.value(metadata i64 %103, metadata !1450, metadata !DIExpression()), !dbg !1473
  %104 = or i64 %103, 1099511627776, !dbg !1475
  br label %105, !dbg !1476

105:                                              ; preds = %102, %100
  %106 = phi i64 [ %104, %102 ], [ %101, %100 ], !dbg !1423
  call void @llvm.dbg.value(metadata i64 %106, metadata !1359, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %106, metadata !1359, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %106, metadata !1359, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %106, metadata !1359, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1360
  %107 = and i64 %106, 1095216660480, !dbg !1477
  %108 = icmp eq i64 %107, 0, !dbg !1477
  br i1 %108, label %112, label %109, !dbg !1479

109:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i64 %77, metadata !346, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1329
  %110 = load i8, ptr %78, align 1, !dbg !1480, !tbaa !1136
  %111 = zext i8 %110 to i64, !dbg !1482
  call void @llvm.dbg.value(metadata i8 %110, metadata !1359, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1360
  br label %114

112:                                              ; preds = %105
  %113 = lshr i64 %106, 40, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %113, metadata !1359, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %106, metadata !1359, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1360
  call void @llvm.dbg.value(metadata !DIArgList(i64 %77, i64 %113), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1329
  br label %114, !dbg !1484

114:                                              ; preds = %112, %109
  %115 = phi i64 [ %113, %112 ], [ 1, %109 ]
  %116 = phi i64 [ %106, %112 ], [ %111, %109 ], !dbg !1360
  %117 = add nsw i64 %115, %77, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %117, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i32 poison, metadata !1359, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1360
  %118 = and i64 %106, -4294967296, !dbg !1486
  call void @llvm.dbg.value(metadata i64 %76, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i16 poison, metadata !1359, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1360
  call void @llvm.dbg.value(metadata i32 poison, metadata !1359, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1360
  call void @llvm.dbg.value(metadata i8 poison, metadata !1359, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1360
  call void @llvm.dbg.value(metadata i8 poison, metadata !1359, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %116, metadata !359, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1344
  call void @llvm.dbg.value(metadata i64 %118, metadata !359, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1344
  call void @llvm.dbg.value(metadata i64 %118, metadata !359, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1344
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !359, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1344
  %119 = and i64 %116, 4294967295, !dbg !1487
  %120 = icmp eq i64 %119, 4294967295, !dbg !1487
  br i1 %120, label %121, label %179, !dbg !1488

121:                                              ; preds = %114, %70
  %122 = phi i64 [ %118, %114 ], [ 0, %70 ]
  %123 = phi i64 [ %116, %114 ], [ 4294967295, %70 ]
  %124 = phi i64 [ %117, %114 ], [ %72, %70 ]
  %125 = phi i64 [ %76, %114 ], [ %71, %70 ]
  %126 = call ptr @next_file(ptr noundef %52) #37, !dbg !1489
  call void @llvm.dbg.value(metadata ptr %126, metadata !345, metadata !DIExpression()), !dbg !1329
  %127 = icmp eq ptr %126, null, !dbg !1488
  br i1 %127, label %179, label %128, !dbg !1490

128:                                              ; preds = %121, %172
  %129 = phi ptr [ %177, %172 ], [ %126, %121 ], !dbg !1329
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata ptr %129, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 262144, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata ptr %129, metadata !345, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata ptr undef, metadata !1350, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 0, metadata !1355, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata ptr %129, metadata !1365, metadata !DIExpression()), !dbg !1371
  %130 = load i32, ptr %129, align 8, !dbg !1373, !tbaa !1374
  %131 = and i32 %130, 16, !dbg !1376
  %132 = icmp eq i32 %131, 0, !dbg !1376
  br i1 %132, label %133, label %172, !dbg !1377

133:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 0, metadata !1356, metadata !DIExpression()), !dbg !1394
  %134 = call i64 @fread_unlocked(ptr noundef nonnull @expand.line_in, i64 noundef 1, i64 noundef 262144, ptr noundef nonnull %129), !dbg !1396
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %134, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %134, metadata !1355, metadata !DIExpression()), !dbg !1360
  %135 = icmp slt i64 %134, 1, !dbg !1399
  br i1 %135, label %172, label %136, !dbg !1401

136:                                              ; preds = %133
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %134, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !1403, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1408, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1423
  %137 = load i8, ptr @expand.line_in, align 16, !dbg !1425, !tbaa !1136
  call void @llvm.dbg.value(metadata i8 %137, metadata !1409, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 %137, metadata !1426, metadata !DIExpression()), !dbg !1431
  %138 = icmp sgt i8 %137, -1, !dbg !1434
  br i1 %138, label %139, label %142, !dbg !1435

139:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i64 1, metadata !1455, metadata !DIExpression()), !dbg !1473
  %140 = zext i8 %137 to i64, !dbg !1475
  call void @llvm.dbg.value(metadata i64 %140, metadata !1450, metadata !DIExpression()), !dbg !1473
  %141 = or i64 %140, 1099511627776, !dbg !1475
  br label %161, !dbg !1476

142:                                              ; preds = %136
  call void @llvm.dbg.value(metadata !DIArgList(ptr @expand.line_in, i64 %134), metadata !1408, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1423
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #37, !dbg !1437
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1410, metadata !DIExpression()), !dbg !1438
  store i32 0, ptr %3, align 4, !dbg !1439, !tbaa !1440
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #37, !dbg !1442
  call void @llvm.dbg.value(metadata ptr %4, metadata !1421, metadata !DIExpression(DW_OP_deref)), !dbg !1423
  %143 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull @expand.line_in, i64 noundef %134, ptr noundef nonnull %3) #37, !dbg !1444
  call void @llvm.dbg.value(metadata i64 %143, metadata !1422, metadata !DIExpression()), !dbg !1423
  %144 = icmp slt i64 %143, 0, !dbg !1445
  br i1 %144, label %145, label %149, !dbg !1447, !prof !1448

145:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i8 %137, metadata !1463, metadata !DIExpression()), !dbg !1468
  %146 = zext i8 %137 to i64, !dbg !1470
  %147 = shl nuw nsw i64 %146, 32, !dbg !1470
  %148 = or i64 %147, 1099511627776, !dbg !1470
  br label %157, !dbg !1471

149:                                              ; preds = %142
  %150 = load i32, ptr %4, align 4, !dbg !1449, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 %150, metadata !1421, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i32 %150, metadata !1450, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64 %143, metadata !1455, metadata !DIExpression()), !dbg !1456
  %151 = icmp ne i64 %143, 0, !dbg !1458
  call void @llvm.assume(i1 %151), !dbg !1458
  %152 = icmp ult i64 %143, 5, !dbg !1459
  call void @llvm.assume(i1 %152), !dbg !1459
  %153 = icmp ult i32 %150, 1114112, !dbg !1460
  call void @llvm.assume(i1 %153), !dbg !1460
  %154 = shl nuw nsw i64 %143, 40, !dbg !1461
  %155 = zext i32 %150 to i64, !dbg !1461
  %156 = or i64 %154, %155, !dbg !1461
  br label %157, !dbg !1462

157:                                              ; preds = %149, %145
  %158 = phi i64 [ %148, %145 ], [ %156, %149 ], !dbg !1423
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #37, !dbg !1472
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #37, !dbg !1472
  %159 = load i8, ptr @expand.line_in, align 16, !dbg !1479
  %160 = zext i8 %159 to i64, !dbg !1479
  br label %161

161:                                              ; preds = %157, %139
  %162 = phi i64 [ %160, %157 ], [ %140, %139 ], !dbg !1479
  %163 = phi i64 [ %158, %157 ], [ %141, %139 ], !dbg !1423
  call void @llvm.dbg.value(metadata i64 %163, metadata !1359, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %163, metadata !1359, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %163, metadata !1359, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %163, metadata !1359, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1360
  %164 = and i64 %163, 1095216660480, !dbg !1477
  %165 = icmp eq i64 %164, 0, !dbg !1477
  %166 = lshr i64 %163, 40, !dbg !1479
  %167 = select i1 %165, i64 %166, i64 1, !dbg !1479
  %168 = select i1 %165, i64 %163, i64 %162, !dbg !1479
  call void @llvm.dbg.value(metadata i64 %167, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i32 poison, metadata !1359, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1360
  %169 = and i64 %163, -4294967296, !dbg !1486
  call void @llvm.dbg.value(metadata i64 %134, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1329
  call void @llvm.dbg.value(metadata i16 poison, metadata !1359, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1360
  call void @llvm.dbg.value(metadata i32 poison, metadata !1359, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1360
  call void @llvm.dbg.value(metadata i8 poison, metadata !1359, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1360
  call void @llvm.dbg.value(metadata i8 poison, metadata !1359, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %168, metadata !359, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1344
  call void @llvm.dbg.value(metadata i64 %169, metadata !359, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1344
  call void @llvm.dbg.value(metadata i64 %169, metadata !359, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1344
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !359, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1344
  %170 = and i64 %168, 4294967295, !dbg !1487
  %171 = icmp eq i64 %170, 4294967295, !dbg !1487
  br i1 %171, label %172, label %179, !dbg !1488

172:                                              ; preds = %161, %133, %128
  %173 = phi i64 [ %169, %161 ], [ 0, %133 ], [ 0, %128 ]
  %174 = phi i64 [ %168, %161 ], [ 4294967295, %133 ], [ 4294967295, %128 ]
  %175 = phi i64 [ %167, %161 ], [ 0, %133 ], [ 0, %128 ]
  %176 = phi i64 [ %134, %161 ], [ %134, %133 ], [ 0, %128 ]
  %177 = call ptr @next_file(ptr noundef nonnull %129) #37, !dbg !1489
  call void @llvm.dbg.value(metadata ptr %177, metadata !345, metadata !DIExpression()), !dbg !1329
  %178 = icmp eq ptr %177, null, !dbg !1488
  br i1 %178, label %179, label %128, !dbg !1490, !llvm.loop !1491

179:                                              ; preds = %172, %161, %121, %114
  %180 = phi i64 [ %76, %114 ], [ %125, %121 ], [ %134, %161 ], [ %176, %172 ], !dbg !1494
  %181 = phi i64 [ %117, %114 ], [ %124, %121 ], [ %167, %161 ], [ %175, %172 ], !dbg !1360
  %182 = phi i64 [ %116, %114 ], [ %123, %121 ], [ %168, %161 ], [ %174, %172 ], !dbg !1360
  %183 = phi i64 [ %118, %114 ], [ %122, %121 ], [ %169, %161 ], [ %173, %172 ], !dbg !1495
  %184 = phi i1 [ false, %114 ], [ true, %121 ], [ false, %161 ], [ true, %172 ], !dbg !1487
  %185 = phi ptr [ %49, %114 ], [ %49, %121 ], [ %129, %161 ], [ %129, %172 ], !dbg !1329
  %186 = phi ptr [ %52, %114 ], [ null, %121 ], [ %129, %161 ], [ null, %172 ], !dbg !1329
  %187 = trunc i64 %182 to i32, !dbg !1496
  %188 = lshr i64 %183, 40, !dbg !1496
  call void @llvm.dbg.value(metadata ptr %186, metadata !345, metadata !DIExpression()), !dbg !1329
  %189 = and i8 %51, 1, !dbg !1497
  %190 = icmp eq i8 %189, 0, !dbg !1497
  br i1 %190, label %271, label %191, !dbg !1498

191:                                              ; preds = %179
  %192 = load i8, ptr @convert_entire_line, align 1, !dbg !1499, !tbaa !1298, !range !1500, !noundef !1066
  %193 = icmp eq i8 %192, 0, !dbg !1499
  br i1 %193, label %194, label %197, !dbg !1501

194:                                              ; preds = %191
  call void @llvm.dbg.value(metadata i32 %187, metadata !1502, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i32 %187, metadata !1509, metadata !DIExpression()), !dbg !1517
  %195 = call i32 @iswblank(i32 noundef %187) #37, !dbg !1519
  %196 = icmp ne i32 %195, 0, !dbg !1520
  br label %197, !dbg !1501

197:                                              ; preds = %194, %191
  %198 = phi i1 [ true, %191 ], [ %196, %194 ]
  %199 = zext i1 %198 to i8, !dbg !1521
  call void @llvm.dbg.value(metadata i8 %199, metadata !371, metadata !DIExpression()), !dbg !1344
  switch i32 %187, label %260 [
    i32 9, label %200
    i32 8, label %252
  ], !dbg !1522

200:                                              ; preds = %197
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #37, !dbg !1523
  call void @llvm.dbg.value(metadata ptr %5, metadata !378, metadata !DIExpression(DW_OP_deref)), !dbg !1344
  call void @llvm.dbg.value(metadata ptr %6, metadata !379, metadata !DIExpression(DW_OP_deref)), !dbg !1524
  %201 = call i64 @get_next_tab_column(i64 noundef %50, ptr noundef nonnull %5, ptr noundef nonnull %6) #37, !dbg !1525
  call void @llvm.dbg.value(metadata i64 %201, metadata !385, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %50, metadata !372, metadata !DIExpression()), !dbg !1344
  %202 = add nsw i64 %50, 1, !dbg !1526
  call void @llvm.dbg.value(metadata i64 %202, metadata !372, metadata !DIExpression()), !dbg !1344
  %203 = icmp slt i64 %202, %201, !dbg !1527
  br i1 %203, label %204, label %229, !dbg !1528

204:                                              ; preds = %200, %226
  %205 = phi i64 [ %227, %226 ], [ %202, %200 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1529, metadata !DIExpression()), !dbg !1534
  %206 = load ptr, ptr @stdout, align 8, !dbg !1537, !tbaa !1057
  %207 = getelementptr inbounds %struct._IO_FILE, ptr %206, i64 0, i32 5, !dbg !1537
  %208 = load ptr, ptr %207, align 8, !dbg !1537, !tbaa !1538
  %209 = getelementptr inbounds %struct._IO_FILE, ptr %206, i64 0, i32 6, !dbg !1537
  %210 = load ptr, ptr %209, align 8, !dbg !1537, !tbaa !1539
  %211 = icmp ult ptr %208, %210, !dbg !1537
  br i1 %211, label %212, label %214, !dbg !1537, !prof !1540

212:                                              ; preds = %204
  %213 = getelementptr inbounds i8, ptr %208, i64 1, !dbg !1537
  store ptr %213, ptr %207, align 8, !dbg !1537, !tbaa !1538
  store i8 32, ptr %208, align 1, !dbg !1537, !tbaa !1136
  br label %226, !dbg !1541

214:                                              ; preds = %204
  %215 = call i32 @__overflow(ptr noundef nonnull %206, i32 noundef 32) #37, !dbg !1537
  %216 = icmp slt i32 %215, 0, !dbg !1542
  br i1 %216, label %217, label %226, !dbg !1541

217:                                              ; preds = %214
  %218 = tail call ptr @__errno_location() #40, !dbg !1543
  %219 = load i32, ptr %218, align 4, !dbg !1543, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 %219, metadata !1546, metadata !DIExpression()), !dbg !1548
  %220 = load ptr, ptr @stdout, align 8, !dbg !1549, !tbaa !1057
  %221 = call i32 @fflush_unlocked(ptr noundef %220) #37, !dbg !1549
  %222 = load ptr, ptr @stdout, align 8, !dbg !1550, !tbaa !1057
  %223 = call i32 @fpurge(ptr noundef %222) #37, !dbg !1551
  %224 = load ptr, ptr @stdout, align 8, !dbg !1552, !tbaa !1057
  call void @clearerr_unlocked(ptr noundef %224) #37, !dbg !1552
  %225 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #37, !dbg !1553
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %219, ptr noundef %225) #37, !dbg !1553
  unreachable, !dbg !1553

226:                                              ; preds = %214, %212
  call void @llvm.dbg.value(metadata i64 %205, metadata !372, metadata !DIExpression()), !dbg !1344
  %227 = add i64 %205, 1, !dbg !1526
  call void @llvm.dbg.value(metadata i64 %227, metadata !372, metadata !DIExpression()), !dbg !1344
  %228 = icmp eq i64 %227, %201, !dbg !1527
  br i1 %228, label %229, label %204, !dbg !1528, !llvm.loop !1554

229:                                              ; preds = %226, %200
  %230 = phi i64 [ %202, %200 ], [ %201, %226 ], !dbg !1526
  call void @llvm.dbg.value(metadata i32 32, metadata !1529, metadata !DIExpression()), !dbg !1556
  %231 = load ptr, ptr @stdout, align 8, !dbg !1559, !tbaa !1057
  %232 = getelementptr inbounds %struct._IO_FILE, ptr %231, i64 0, i32 5, !dbg !1559
  %233 = load ptr, ptr %232, align 8, !dbg !1559, !tbaa !1538
  %234 = getelementptr inbounds %struct._IO_FILE, ptr %231, i64 0, i32 6, !dbg !1559
  %235 = load ptr, ptr %234, align 8, !dbg !1559, !tbaa !1539
  %236 = icmp ult ptr %233, %235, !dbg !1559
  br i1 %236, label %237, label %239, !dbg !1559, !prof !1540

237:                                              ; preds = %229
  %238 = getelementptr inbounds i8, ptr %233, i64 1, !dbg !1559
  store ptr %238, ptr %232, align 8, !dbg !1559, !tbaa !1538
  store i8 32, ptr %233, align 1, !dbg !1559, !tbaa !1136
  br label %251, !dbg !1560

239:                                              ; preds = %229
  %240 = call i32 @__overflow(ptr noundef nonnull %231, i32 noundef 32) #37, !dbg !1559
  %241 = icmp slt i32 %240, 0, !dbg !1561
  br i1 %241, label %242, label %251, !dbg !1560

242:                                              ; preds = %239
  %243 = tail call ptr @__errno_location() #40, !dbg !1562
  %244 = load i32, ptr %243, align 4, !dbg !1562, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 %244, metadata !1546, metadata !DIExpression()), !dbg !1564
  %245 = load ptr, ptr @stdout, align 8, !dbg !1565, !tbaa !1057
  %246 = call i32 @fflush_unlocked(ptr noundef %245) #37, !dbg !1565
  %247 = load ptr, ptr @stdout, align 8, !dbg !1566, !tbaa !1057
  %248 = call i32 @fpurge(ptr noundef %247) #37, !dbg !1567
  %249 = load ptr, ptr @stdout, align 8, !dbg !1568, !tbaa !1057
  call void @clearerr_unlocked(ptr noundef %249) #37, !dbg !1568
  %250 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #37, !dbg !1569
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %244, ptr noundef %250) #37, !dbg !1569
  unreachable, !dbg !1569

251:                                              ; preds = %239, %237
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #37, !dbg !1570
  br label %294

252:                                              ; preds = %197
  %253 = icmp ne i64 %50, 0, !dbg !1571
  %254 = sext i1 %253 to i64
  %255 = add i64 %50, %254, !dbg !1573
  call void @llvm.dbg.value(metadata i64 %255, metadata !372, metadata !DIExpression()), !dbg !1344
  %256 = load i64, ptr %5, align 8, !dbg !1574, !tbaa !1347
  call void @llvm.dbg.value(metadata i64 %256, metadata !378, metadata !DIExpression()), !dbg !1344
  %257 = icmp ne i64 %256, 0, !dbg !1575
  %258 = sext i1 %257 to i64
  %259 = add i64 %256, %258, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %259, metadata !378, metadata !DIExpression()), !dbg !1344
  store i64 %259, ptr %5, align 8, !dbg !1576, !tbaa !1347
  call void @llvm.dbg.value(metadata i8 %199, metadata !371, metadata !DIExpression()), !dbg !1344
  br label %274, !dbg !1577

260:                                              ; preds = %197
  call void @llvm.dbg.value(metadata i32 %187, metadata !1578, metadata !DIExpression()), !dbg !1583
  %261 = call i32 @wcwidth(i32 noundef %187) #37, !dbg !1585
  call void @llvm.dbg.value(metadata i32 %261, metadata !386, metadata !DIExpression()), !dbg !1586
  %262 = icmp slt i32 %261, 0, !dbg !1587
  %263 = select i1 %262, i32 1, i32 %261, !dbg !1587
  %264 = zext i32 %263 to i64, !dbg !1587
  %265 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %50, i64 %264), !dbg !1587
  %266 = extractvalue { i64, i1 } %265, 1, !dbg !1587
  call void @llvm.dbg.value(metadata i64 poison, metadata !372, metadata !DIExpression()), !dbg !1344
  br i1 %266, label %267, label %269, !dbg !1589

267:                                              ; preds = %260
  %268 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #37, !dbg !1590
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %268) #37, !dbg !1590
  unreachable, !dbg !1590

269:                                              ; preds = %260
  %270 = extractvalue { i64, i1 } %265, 0, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %270, metadata !372, metadata !DIExpression()), !dbg !1344
  br label %271

271:                                              ; preds = %269, %179
  %272 = phi i64 [ %270, %269 ], [ %50, %179 ], !dbg !1344
  %273 = phi i8 [ %199, %269 ], [ %51, %179 ], !dbg !1344
  call void @llvm.dbg.value(metadata i8 %273, metadata !371, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata i64 %272, metadata !372, metadata !DIExpression()), !dbg !1344
  br i1 %184, label %299, label %274, !dbg !1577

274:                                              ; preds = %271, %252
  %275 = phi i8 [ %199, %252 ], [ %273, %271 ]
  %276 = phi i64 [ %255, %252 ], [ %272, %271 ]
  call void @llvm.dbg.value(metadata i64 %188, metadata !1591, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1597
  call void @llvm.dbg.value(metadata i64 %188, metadata !1591, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1599
  %277 = icmp sge i64 %181, %188, !dbg !1601
  call void @llvm.assume(i1 %277), !dbg !1601
  call void @llvm.dbg.value(metadata !DIArgList(i64 %188, i64 %188), metadata !1591, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 65280, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709486080, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 0, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1599
  call void @llvm.dbg.value(metadata !DIArgList(i64 %188, i64 %188), metadata !1591, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 65280, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709486080, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 0, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1599
  call void @llvm.dbg.value(metadata ptr undef, metadata !1596, metadata !DIExpression()), !dbg !1599
  %278 = sub nsw i64 %181, %188, !dbg !1602
  %279 = getelementptr inbounds i8, ptr @expand.line_in, i64 %278, !dbg !1603
  %280 = load ptr, ptr @stdout, align 8, !dbg !1601, !tbaa !1057
  %281 = call i64 @fwrite_unlocked(ptr noundef nonnull %279, i64 noundef 1, i64 noundef %188, ptr noundef %280), !dbg !1601
  %282 = load ptr, ptr @stdout, align 8, !dbg !1604, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %282, metadata !1606, metadata !DIExpression()), !dbg !1609
  %283 = load i32, ptr %282, align 8, !dbg !1611, !tbaa !1374
  %284 = and i32 %283, 32, !dbg !1604
  %285 = icmp eq i32 %284, 0, !dbg !1604
  br i1 %285, label %294, label %286, !dbg !1612

286:                                              ; preds = %274
  %287 = tail call ptr @__errno_location() #40, !dbg !1613
  %288 = load i32, ptr %287, align 4, !dbg !1613, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 %288, metadata !1546, metadata !DIExpression()), !dbg !1615
  %289 = call i32 @fflush_unlocked(ptr noundef nonnull %282) #37, !dbg !1616
  %290 = load ptr, ptr @stdout, align 8, !dbg !1617, !tbaa !1057
  %291 = call i32 @fpurge(ptr noundef %290) #37, !dbg !1618
  %292 = load ptr, ptr @stdout, align 8, !dbg !1619, !tbaa !1057
  call void @clearerr_unlocked(ptr noundef %292) #37, !dbg !1619
  %293 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #37, !dbg !1620
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %288, ptr noundef %293) #37, !dbg !1620
  unreachable, !dbg !1620

294:                                              ; preds = %274, %251
  %295 = phi i64 [ %230, %251 ], [ %276, %274 ], !dbg !1621
  %296 = phi i8 [ %199, %251 ], [ %275, %274 ], !dbg !1521
  call void @llvm.dbg.value(metadata i8 %296, metadata !371, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata i64 %295, metadata !372, metadata !DIExpression()), !dbg !1344
  %297 = icmp eq i32 %187, 10, !dbg !1622
  br i1 %297, label %298, label %46, !dbg !1623, !llvm.loop !1624

298:                                              ; preds = %294
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !1626
  br label %41, !llvm.loop !1627

299:                                              ; preds = %271
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !1626
  br label %300

300:                                              ; preds = %33, %299
  call void @cleanup_file_list_stdin() #37, !dbg !1629
  %301 = load i32, ptr @exit_status, align 4, !dbg !1630, !tbaa !1127
  ret i32 %301, !dbg !1631
}

; Function Attrs: nounwind
declare !dbg !1632 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1635 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1636 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1639 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1645 ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1649 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nounwind
declare !dbg !1656 i32 @iswblank(i32 noundef) local_unnamed_addr #2

declare !dbg !1658 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1661 ptr @__errno_location() local_unnamed_addr #9

declare !dbg !1665 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1666 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1669 i32 @wcwidth(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local void @add_tab_stop(i64 noundef %0) local_unnamed_addr #10 !dbg !1674 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1678, metadata !DIExpression()), !dbg !1681
  %2 = load i64, ptr @first_free_tab, align 8, !dbg !1682, !tbaa !1347
  %3 = icmp eq i64 %2, 0, !dbg !1682
  br i1 %3, label %9, label %4, !dbg !1682

4:                                                ; preds = %1
  %5 = load ptr, ptr @tab_list, align 8, !dbg !1683, !tbaa !1057
  %6 = add nsw i64 %2, -1, !dbg !1684
  %7 = getelementptr inbounds i64, ptr %5, i64 %6, !dbg !1683
  %8 = load i64, ptr %7, align 8, !dbg !1683, !tbaa !1347
  br label %9, !dbg !1682

9:                                                ; preds = %1, %4
  %10 = phi i64 [ %8, %4 ], [ 0, %1 ], !dbg !1682
  call void @llvm.dbg.value(metadata i64 %10, metadata !1679, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i64 poison, metadata !1680, metadata !DIExpression()), !dbg !1681
  %11 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1685, !tbaa !1347
  %12 = icmp eq i64 %2, %11, !dbg !1687
  %13 = load ptr, ptr @tab_list, align 8, !dbg !1681, !tbaa !1057
  br i1 %12, label %14, label %17, !dbg !1688

14:                                               ; preds = %9
  %15 = tail call nonnull ptr @xpalloc(ptr noundef %13, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #37, !dbg !1689
  store ptr %15, ptr @tab_list, align 8, !dbg !1690, !tbaa !1057
  %16 = load i64, ptr @first_free_tab, align 8, !dbg !1691, !tbaa !1347
  br label %17, !dbg !1692

17:                                               ; preds = %9, %14
  %18 = phi i64 [ %16, %14 ], [ %2, %9 ], !dbg !1691
  %19 = phi ptr [ %15, %14 ], [ %13, %9 ], !dbg !1693
  %20 = icmp sgt i64 %10, %0, !dbg !1694
  %21 = sub nsw i64 %0, %10, !dbg !1695
  %22 = select i1 %20, i64 0, i64 %21, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %22, metadata !1680, metadata !DIExpression()), !dbg !1681
  %23 = add nsw i64 %18, 1, !dbg !1691
  store i64 %23, ptr @first_free_tab, align 8, !dbg !1691, !tbaa !1347
  %24 = getelementptr inbounds i64, ptr %19, i64 %18, !dbg !1693
  store i64 %0, ptr %24, align 8, !dbg !1696, !tbaa !1347
  call void @llvm.dbg.value(metadata i64 %22, metadata !1697, metadata !DIExpression()), !dbg !1700
  %25 = load i64, ptr @max_column_width, align 8, !dbg !1702, !tbaa !1347
  %26 = icmp slt i64 %25, %22, !dbg !1704
  br i1 %26, label %27, label %28, !dbg !1705

27:                                               ; preds = %17
  store i64 %22, ptr @max_column_width, align 8, !dbg !1706
  br label %28

28:                                               ; preds = %17, %27
  ret void, !dbg !1709
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_tab_stops(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !1710 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1712, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 0, metadata !1713, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i64 0, metadata !1714, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 0, metadata !1715, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 0, metadata !1716, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata ptr null, metadata !1717, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 1, metadata !1718, metadata !DIExpression()), !dbg !1731
  br label %2, !dbg !1732

2:                                                ; preds = %122, %1
  %3 = phi i64 [ 0, %1 ], [ %123, %122 ], !dbg !1733
  %4 = phi i8 [ 0, %1 ], [ %124, %122 ], !dbg !1734
  %5 = phi i8 [ 0, %1 ], [ %125, %122 ], !dbg !1735
  %6 = phi ptr [ null, %1 ], [ %126, %122 ], !dbg !1736
  %7 = phi i8 [ 1, %1 ], [ %127, %122 ], !dbg !1737
  %8 = phi i8 [ 0, %1 ], [ %128, %122 ], !dbg !1731
  %9 = phi ptr [ %0, %1 ], [ %130, %122 ]
  call void @llvm.dbg.value(metadata ptr %9, metadata !1712, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 %8, metadata !1713, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 %7, metadata !1718, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata ptr %6, metadata !1717, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 %5, metadata !1716, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 %4, metadata !1715, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i64 %3, metadata !1714, metadata !DIExpression()), !dbg !1731
  %10 = load i8, ptr %9, align 1, !dbg !1738, !tbaa !1136
  switch i8 %10, label %11 [
    i8 0, label %131
    i8 44, label %19
  ], !dbg !1739

11:                                               ; preds = %2
  %12 = tail call ptr @__ctype_b_loc() #40, !dbg !1740
  %13 = load ptr, ptr %12, align 8, !dbg !1740, !tbaa !1057
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds i16, ptr %13, i64 %14, !dbg !1740
  %16 = load i16, ptr %15, align 2, !dbg !1740, !tbaa !1168
  %17 = and i16 %16, 1, !dbg !1740
  %18 = icmp eq i16 %17, 0, !dbg !1740
  br i1 %18, label %74, label %19, !dbg !1741

19:                                               ; preds = %2, %11
  %20 = and i8 %8, 1, !dbg !1742
  %21 = icmp eq i8 %20, 0, !dbg !1742
  br i1 %21, label %122, label %22, !dbg !1745

22:                                               ; preds = %19
  %23 = and i8 %4, 1, !dbg !1746
  %24 = icmp eq i8 %23, 0, !dbg !1746
  br i1 %24, label %35, label %25, !dbg !1749

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 %3, metadata !1750, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 1, metadata !1755, metadata !DIExpression()), !dbg !1756
  %26 = load i64, ptr @extend_size, align 8, !dbg !1760, !tbaa !1347
  %27 = icmp eq i64 %26, 0, !dbg !1760
  br i1 %27, label %30, label %28, !dbg !1762

28:                                               ; preds = %25
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12.7, i32 noundef 5) #37, !dbg !1763
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %29) #37, !dbg !1763
  call void @llvm.dbg.value(metadata i8 0, metadata !1755, metadata !DIExpression()), !dbg !1756
  br label %30, !dbg !1765

30:                                               ; preds = %28, %25
  call void @llvm.dbg.value(metadata i8 poison, metadata !1755, metadata !DIExpression()), !dbg !1756
  store i64 %3, ptr @extend_size, align 8, !dbg !1766, !tbaa !1347
  call void @llvm.dbg.value(metadata i64 %3, metadata !1697, metadata !DIExpression()), !dbg !1767
  %31 = load i64, ptr @max_column_width, align 8, !dbg !1769, !tbaa !1347
  %32 = icmp slt i64 %31, %3, !dbg !1770
  br i1 %32, label %33, label %34, !dbg !1771

33:                                               ; preds = %30
  store i64 %3, ptr @max_column_width, align 8, !dbg !1772
  br label %34

34:                                               ; preds = %30, %33
  br i1 %27, label %122, label %195, !dbg !1773

35:                                               ; preds = %22
  %36 = and i8 %5, 1, !dbg !1774
  %37 = icmp eq i8 %36, 0, !dbg !1774
  br i1 %37, label %48, label %38, !dbg !1776

38:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %3, metadata !1777, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8 1, metadata !1780, metadata !DIExpression()), !dbg !1781
  %39 = load i64, ptr @increment_size, align 8, !dbg !1785, !tbaa !1347
  %40 = icmp eq i64 %39, 0, !dbg !1785
  br i1 %40, label %43, label %41, !dbg !1787

41:                                               ; preds = %38
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13.8, i32 noundef 5) #37, !dbg !1788
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %42) #37, !dbg !1788
  call void @llvm.dbg.value(metadata i8 0, metadata !1780, metadata !DIExpression()), !dbg !1781
  br label %43, !dbg !1790

43:                                               ; preds = %41, %38
  call void @llvm.dbg.value(metadata i8 poison, metadata !1780, metadata !DIExpression()), !dbg !1781
  store i64 %3, ptr @increment_size, align 8, !dbg !1791, !tbaa !1347
  call void @llvm.dbg.value(metadata i64 %3, metadata !1697, metadata !DIExpression()), !dbg !1792
  %44 = load i64, ptr @max_column_width, align 8, !dbg !1794, !tbaa !1347
  %45 = icmp slt i64 %44, %3, !dbg !1795
  br i1 %45, label %46, label %47, !dbg !1796

46:                                               ; preds = %43
  store i64 %3, ptr @max_column_width, align 8, !dbg !1797
  br label %47

47:                                               ; preds = %43, %46
  br i1 %40, label %122, label %195, !dbg !1798

48:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %3, metadata !1678, metadata !DIExpression()), !dbg !1799
  %49 = load i64, ptr @first_free_tab, align 8, !dbg !1801, !tbaa !1347
  %50 = icmp eq i64 %49, 0, !dbg !1801
  %51 = load ptr, ptr @tab_list, align 8, !dbg !1799, !tbaa !1057
  br i1 %50, label %56, label %52, !dbg !1801

52:                                               ; preds = %48
  %53 = add nsw i64 %49, -1, !dbg !1802
  %54 = getelementptr inbounds i64, ptr %51, i64 %53, !dbg !1803
  %55 = load i64, ptr %54, align 8, !dbg !1803, !tbaa !1347
  br label %56, !dbg !1801

56:                                               ; preds = %48, %52
  %57 = phi i64 [ %55, %52 ], [ 0, %48 ], !dbg !1801
  call void @llvm.dbg.value(metadata i64 %57, metadata !1679, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i64 poison, metadata !1680, metadata !DIExpression()), !dbg !1799
  %58 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1804, !tbaa !1347
  %59 = icmp eq i64 %49, %58, !dbg !1805
  br i1 %59, label %60, label %63, !dbg !1806

60:                                               ; preds = %56
  %61 = tail call nonnull ptr @xpalloc(ptr noundef %51, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #37, !dbg !1807
  store ptr %61, ptr @tab_list, align 8, !dbg !1808, !tbaa !1057
  %62 = load i64, ptr @first_free_tab, align 8, !dbg !1809, !tbaa !1347
  br label %63, !dbg !1810

63:                                               ; preds = %60, %56
  %64 = phi i64 [ %62, %60 ], [ %49, %56 ], !dbg !1809
  %65 = phi ptr [ %61, %60 ], [ %51, %56 ], !dbg !1811
  %66 = icmp slt i64 %3, %57, !dbg !1812
  %67 = sub nsw i64 %3, %57, !dbg !1813
  %68 = select i1 %66, i64 0, i64 %67, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %68, metadata !1680, metadata !DIExpression()), !dbg !1799
  %69 = add nsw i64 %64, 1, !dbg !1809
  store i64 %69, ptr @first_free_tab, align 8, !dbg !1809, !tbaa !1347
  %70 = getelementptr inbounds i64, ptr %65, i64 %64, !dbg !1811
  store i64 %3, ptr %70, align 8, !dbg !1814, !tbaa !1347
  call void @llvm.dbg.value(metadata i64 %68, metadata !1697, metadata !DIExpression()), !dbg !1815
  %71 = load i64, ptr @max_column_width, align 8, !dbg !1817, !tbaa !1347
  %72 = icmp slt i64 %71, %68, !dbg !1818
  br i1 %72, label %73, label %122, !dbg !1819

73:                                               ; preds = %63
  store i64 %68, ptr @max_column_width, align 8, !dbg !1820
  br label %122

74:                                               ; preds = %11
  switch i8 %10, label %87 [
    i8 47, label %75
    i8 43, label %81
  ], !dbg !1821

75:                                               ; preds = %74
  %76 = and i8 %8, 1, !dbg !1822
  %77 = icmp eq i8 %76, 0, !dbg !1822
  br i1 %77, label %122, label %78, !dbg !1825

78:                                               ; preds = %75
  %79 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #37, !dbg !1826
  %80 = tail call ptr @quote(ptr noundef nonnull %9) #37, !dbg !1826
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %79, ptr noundef %80) #37, !dbg !1826
  call void @llvm.dbg.value(metadata i8 0, metadata !1718, metadata !DIExpression()), !dbg !1731
  br label %122, !dbg !1828

81:                                               ; preds = %74
  %82 = and i8 %8, 1, !dbg !1829
  %83 = icmp eq i8 %82, 0, !dbg !1829
  br i1 %83, label %122, label %84, !dbg !1832

84:                                               ; preds = %81
  %85 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.20, i32 noundef 5) #37, !dbg !1833
  %86 = tail call ptr @quote(ptr noundef nonnull %9) #37, !dbg !1833
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %85, ptr noundef %86) #37, !dbg !1833
  call void @llvm.dbg.value(metadata i8 0, metadata !1718, metadata !DIExpression()), !dbg !1731
  br label %122, !dbg !1835

87:                                               ; preds = %74
  %88 = sext i8 %10 to i32, !dbg !1836
  call void @llvm.dbg.value(metadata i32 %88, metadata !1837, metadata !DIExpression()), !dbg !1843
  %89 = add nsw i32 %88, -48, !dbg !1845
  %90 = icmp ult i32 %89, 10, !dbg !1845
  br i1 %90, label %91, label %119, !dbg !1846

91:                                               ; preds = %87
  %92 = and i8 %8, 1, !dbg !1847
  %93 = icmp eq i8 %92, 0, !dbg !1847
  %94 = select i1 %93, i64 0, i64 %3, !dbg !1849
  %95 = select i1 %93, ptr %9, ptr %6, !dbg !1849
  %96 = select i1 %93, i8 1, i8 %8, !dbg !1849
  call void @llvm.dbg.value(metadata i8 %96, metadata !1713, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata ptr %95, metadata !1717, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i64 %94, metadata !1714, metadata !DIExpression()), !dbg !1731
  %97 = icmp slt i64 %94, 0, !dbg !1850
  br i1 %97, label %98, label %100, !dbg !1850

98:                                               ; preds = %91
  %99 = icmp ult i64 %94, -922337203685477580, !dbg !1850
  br i1 %99, label %102, label %104, !dbg !1850

100:                                              ; preds = %91
  %101 = icmp ugt i64 %94, 922337203685477580, !dbg !1850
  br i1 %101, label %102, label %104, !dbg !1850

102:                                              ; preds = %98, %100
  %103 = mul i64 %94, 10, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %103, metadata !1714, metadata !DIExpression()), !dbg !1731
  br label %111, !dbg !1850

104:                                              ; preds = %98, %100
  call void @llvm.dbg.value(metadata i64 %94, metadata !1714, metadata !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value)), !dbg !1731
  %105 = mul nsw i64 %94, 10, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %105, metadata !1714, metadata !DIExpression()), !dbg !1731
  %106 = sext i8 %10 to i64, !dbg !1850
  %107 = add nsw i64 %106, -48, !dbg !1850
  %108 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %105, i64 %107), !dbg !1850
  %109 = extractvalue { i64, i1 } %108, 1, !dbg !1850
  %110 = extractvalue { i64, i1 } %108, 0, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %110, metadata !1714, metadata !DIExpression()), !dbg !1731
  br i1 %109, label %111, label %122, !dbg !1851

111:                                              ; preds = %102, %104
  %112 = phi i64 [ %110, %104 ], [ %103, %102 ], !dbg !1850
  call void @llvm.dbg.value(metadata i64 %112, metadata !1714, metadata !DIExpression()), !dbg !1731
  %113 = tail call i64 @strspn(ptr noundef %95, ptr noundef nonnull @.str.2.21) #38, !dbg !1852
  call void @llvm.dbg.value(metadata i64 %113, metadata !1719, metadata !DIExpression()), !dbg !1853
  %114 = tail call noalias nonnull ptr @ximemdup0(ptr noundef %95, i64 noundef %113) #37, !dbg !1854
  call void @llvm.dbg.value(metadata ptr %114, metadata !1730, metadata !DIExpression()), !dbg !1853
  %115 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3.22, i32 noundef 5) #37, !dbg !1855
  %116 = tail call ptr @quote(ptr noundef nonnull %114) #37, !dbg !1855
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %115, ptr noundef %116) #37, !dbg !1855
  tail call void @free(ptr noundef nonnull %114) #37, !dbg !1856
  call void @llvm.dbg.value(metadata i8 0, metadata !1718, metadata !DIExpression()), !dbg !1731
  %117 = getelementptr i8, ptr %95, i64 -1, !dbg !1857
  %118 = getelementptr i8, ptr %117, i64 %113, !dbg !1858
  call void @llvm.dbg.value(metadata ptr %118, metadata !1712, metadata !DIExpression()), !dbg !1731
  br label %122, !dbg !1859

119:                                              ; preds = %87
  %120 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4.23, i32 noundef 5) #37, !dbg !1860
  %121 = tail call ptr @quote(ptr noundef nonnull %9) #37, !dbg !1860
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %120, ptr noundef %121) #37, !dbg !1860
  call void @llvm.dbg.value(metadata i8 0, metadata !1718, metadata !DIExpression()), !dbg !1731
  br label %195, !dbg !1862

122:                                              ; preds = %73, %63, %81, %84, %75, %78, %19, %47, %34, %104, %111
  %123 = phi i64 [ %112, %111 ], [ %110, %104 ], [ %3, %34 ], [ %3, %47 ], [ %3, %19 ], [ %3, %78 ], [ %3, %75 ], [ %3, %84 ], [ %3, %81 ], [ %3, %63 ], [ %3, %73 ], !dbg !1731
  %124 = phi i8 [ %4, %111 ], [ %4, %104 ], [ %4, %34 ], [ %4, %47 ], [ %4, %19 ], [ 1, %78 ], [ 1, %75 ], [ 0, %84 ], [ 0, %81 ], [ %4, %63 ], [ %4, %73 ], !dbg !1731
  %125 = phi i8 [ %5, %111 ], [ %5, %104 ], [ %5, %34 ], [ %5, %47 ], [ %5, %19 ], [ 0, %78 ], [ 0, %75 ], [ 1, %84 ], [ 1, %81 ], [ %5, %63 ], [ %5, %73 ], !dbg !1731
  %126 = phi ptr [ %95, %111 ], [ %95, %104 ], [ %6, %34 ], [ %6, %47 ], [ %6, %19 ], [ %6, %78 ], [ %6, %75 ], [ %6, %84 ], [ %6, %81 ], [ %6, %63 ], [ %6, %73 ], !dbg !1736
  %127 = phi i8 [ 0, %111 ], [ %7, %104 ], [ %7, %34 ], [ %7, %47 ], [ %7, %19 ], [ 0, %78 ], [ %7, %75 ], [ 0, %84 ], [ %7, %81 ], [ %7, %63 ], [ %7, %73 ], !dbg !1731
  %128 = phi i8 [ %96, %111 ], [ %96, %104 ], [ 0, %34 ], [ 0, %47 ], [ 0, %19 ], [ %8, %78 ], [ %8, %75 ], [ %8, %84 ], [ %8, %81 ], [ 0, %63 ], [ 0, %73 ], !dbg !1731
  %129 = phi ptr [ %118, %111 ], [ %9, %104 ], [ %9, %34 ], [ %9, %47 ], [ %9, %19 ], [ %9, %78 ], [ %9, %75 ], [ %9, %84 ], [ %9, %81 ], [ %9, %63 ], [ %9, %73 ]
  call void @llvm.dbg.value(metadata ptr %129, metadata !1712, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 %128, metadata !1713, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 %127, metadata !1718, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata ptr %126, metadata !1717, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 %125, metadata !1716, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 %124, metadata !1715, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i64 %123, metadata !1714, metadata !DIExpression()), !dbg !1731
  %130 = getelementptr inbounds i8, ptr %129, i64 1, !dbg !1863
  call void @llvm.dbg.value(metadata ptr %130, metadata !1712, metadata !DIExpression()), !dbg !1731
  br label %2, !dbg !1864, !llvm.loop !1865

131:                                              ; preds = %2
  call void @llvm.dbg.value(metadata i8 %7, metadata !1718, metadata !DIExpression()), !dbg !1731
  %132 = and i8 %7, 1, !dbg !1867
  %133 = icmp eq i8 %132, 0, !dbg !1867
  %134 = and i8 %8, 1
  %135 = icmp eq i8 %134, 0
  %136 = select i1 %133, i1 true, i1 %135, !dbg !1869
  br i1 %136, label %191, label %137, !dbg !1869

137:                                              ; preds = %131
  %138 = and i8 %4, 1, !dbg !1870
  %139 = icmp eq i8 %138, 0, !dbg !1870
  br i1 %139, label %151, label %140, !dbg !1873

140:                                              ; preds = %137
  call void @llvm.dbg.value(metadata i64 %3, metadata !1750, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 1, metadata !1755, metadata !DIExpression()), !dbg !1874
  %141 = load i64, ptr @extend_size, align 8, !dbg !1876, !tbaa !1347
  %142 = icmp eq i64 %141, 0, !dbg !1876
  br i1 %142, label %145, label %143, !dbg !1877

143:                                              ; preds = %140
  %144 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12.7, i32 noundef 5) #37, !dbg !1878
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %144) #37, !dbg !1878
  call void @llvm.dbg.value(metadata i8 0, metadata !1755, metadata !DIExpression()), !dbg !1874
  br label %145, !dbg !1879

145:                                              ; preds = %143, %140
  call void @llvm.dbg.value(metadata i8 poison, metadata !1755, metadata !DIExpression()), !dbg !1874
  store i64 %3, ptr @extend_size, align 8, !dbg !1880, !tbaa !1347
  call void @llvm.dbg.value(metadata i64 %3, metadata !1697, metadata !DIExpression()), !dbg !1881
  %146 = load i64, ptr @max_column_width, align 8, !dbg !1883, !tbaa !1347
  %147 = icmp slt i64 %146, %3, !dbg !1884
  br i1 %147, label %148, label %149, !dbg !1885

148:                                              ; preds = %145
  store i64 %3, ptr @max_column_width, align 8, !dbg !1886
  br label %149

149:                                              ; preds = %145, %148
  %150 = zext i1 %142 to i8, !dbg !1887
  call void @llvm.dbg.value(metadata i8 %150, metadata !1718, metadata !DIExpression()), !dbg !1731
  br label %191, !dbg !1888

151:                                              ; preds = %137
  %152 = and i8 %5, 1, !dbg !1889
  %153 = icmp eq i8 %152, 0, !dbg !1889
  br i1 %153, label %165, label %154, !dbg !1891

154:                                              ; preds = %151
  call void @llvm.dbg.value(metadata i64 %3, metadata !1777, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8 1, metadata !1780, metadata !DIExpression()), !dbg !1892
  %155 = load i64, ptr @increment_size, align 8, !dbg !1894, !tbaa !1347
  %156 = icmp eq i64 %155, 0, !dbg !1894
  br i1 %156, label %159, label %157, !dbg !1895

157:                                              ; preds = %154
  %158 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13.8, i32 noundef 5) #37, !dbg !1896
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %158) #37, !dbg !1896
  call void @llvm.dbg.value(metadata i8 0, metadata !1780, metadata !DIExpression()), !dbg !1892
  br label %159, !dbg !1897

159:                                              ; preds = %157, %154
  call void @llvm.dbg.value(metadata i8 poison, metadata !1780, metadata !DIExpression()), !dbg !1892
  store i64 %3, ptr @increment_size, align 8, !dbg !1898, !tbaa !1347
  call void @llvm.dbg.value(metadata i64 %3, metadata !1697, metadata !DIExpression()), !dbg !1899
  %160 = load i64, ptr @max_column_width, align 8, !dbg !1901, !tbaa !1347
  %161 = icmp slt i64 %160, %3, !dbg !1902
  br i1 %161, label %162, label %163, !dbg !1903

162:                                              ; preds = %159
  store i64 %3, ptr @max_column_width, align 8, !dbg !1904
  br label %163

163:                                              ; preds = %159, %162
  %164 = zext i1 %156 to i8, !dbg !1905
  call void @llvm.dbg.value(metadata i8 %164, metadata !1718, metadata !DIExpression()), !dbg !1731
  br label %191, !dbg !1906

165:                                              ; preds = %151
  call void @llvm.dbg.value(metadata i64 %3, metadata !1678, metadata !DIExpression()), !dbg !1907
  %166 = load i64, ptr @first_free_tab, align 8, !dbg !1909, !tbaa !1347
  %167 = icmp eq i64 %166, 0, !dbg !1909
  %168 = load ptr, ptr @tab_list, align 8, !dbg !1907, !tbaa !1057
  br i1 %167, label %173, label %169, !dbg !1909

169:                                              ; preds = %165
  %170 = add nsw i64 %166, -1, !dbg !1910
  %171 = getelementptr inbounds i64, ptr %168, i64 %170, !dbg !1911
  %172 = load i64, ptr %171, align 8, !dbg !1911, !tbaa !1347
  br label %173, !dbg !1909

173:                                              ; preds = %165, %169
  %174 = phi i64 [ %172, %169 ], [ 0, %165 ], !dbg !1909
  call void @llvm.dbg.value(metadata i64 %174, metadata !1679, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i64 poison, metadata !1680, metadata !DIExpression()), !dbg !1907
  %175 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1912, !tbaa !1347
  %176 = icmp eq i64 %166, %175, !dbg !1913
  br i1 %176, label %177, label %180, !dbg !1914

177:                                              ; preds = %173
  %178 = tail call nonnull ptr @xpalloc(ptr noundef %168, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #37, !dbg !1915
  store ptr %178, ptr @tab_list, align 8, !dbg !1916, !tbaa !1057
  %179 = load i64, ptr @first_free_tab, align 8, !dbg !1917, !tbaa !1347
  br label %180, !dbg !1918

180:                                              ; preds = %177, %173
  %181 = phi i64 [ %179, %177 ], [ %166, %173 ], !dbg !1917
  %182 = phi ptr [ %178, %177 ], [ %168, %173 ], !dbg !1919
  %183 = icmp slt i64 %3, %174, !dbg !1920
  %184 = sub nsw i64 %3, %174, !dbg !1921
  %185 = select i1 %183, i64 0, i64 %184, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %185, metadata !1680, metadata !DIExpression()), !dbg !1907
  %186 = add nsw i64 %181, 1, !dbg !1917
  store i64 %186, ptr @first_free_tab, align 8, !dbg !1917, !tbaa !1347
  %187 = getelementptr inbounds i64, ptr %182, i64 %181, !dbg !1919
  store i64 %3, ptr %187, align 8, !dbg !1922, !tbaa !1347
  call void @llvm.dbg.value(metadata i64 %185, metadata !1697, metadata !DIExpression()), !dbg !1923
  %188 = load i64, ptr @max_column_width, align 8, !dbg !1925, !tbaa !1347
  %189 = icmp slt i64 %188, %185, !dbg !1926
  br i1 %189, label %190, label %191, !dbg !1927

190:                                              ; preds = %180
  store i64 %185, ptr @max_column_width, align 8, !dbg !1928
  br label %191

191:                                              ; preds = %190, %180, %149, %163, %131
  %192 = phi i8 [ %150, %149 ], [ %164, %163 ], [ %7, %131 ], [ %7, %180 ], [ %7, %190 ], !dbg !1731
  call void @llvm.dbg.value(metadata i8 %192, metadata !1718, metadata !DIExpression()), !dbg !1731
  %193 = and i8 %192, 1, !dbg !1929
  %194 = icmp eq i8 %193, 0, !dbg !1929
  br i1 %194, label %195, label %196, !dbg !1931

195:                                              ; preds = %34, %47, %119, %191
  tail call void @exit(i32 noundef 1) #39, !dbg !1932
  unreachable, !dbg !1932

196:                                              ; preds = %191
  ret void, !dbg !1933
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1934 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @finalize_tab_stops() local_unnamed_addr #10 !dbg !1937 {
  %1 = load ptr, ptr @tab_list, align 8, !dbg !1938, !tbaa !1057
  %2 = load i64, ptr @first_free_tab, align 8, !dbg !1939, !tbaa !1347
  call void @llvm.dbg.value(metadata ptr %1, metadata !1940, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i64 %2, metadata !1947, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i64 0, metadata !1948, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i64 0, metadata !1949, metadata !DIExpression()), !dbg !1953
  %3 = icmp sgt i64 %2, 0, !dbg !1954
  br i1 %3, label %13, label %7, !dbg !1956

4:                                                ; preds = %21
  %5 = add nuw nsw i64 %14, 1, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %5, metadata !1949, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %14, metadata !1949, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %17, metadata !1948, metadata !DIExpression()), !dbg !1951
  %6 = icmp eq i64 %5, %2, !dbg !1954
  br i1 %6, label %7, label %13, !dbg !1956, !llvm.loop !1958

7:                                                ; preds = %4, %0
  %8 = load i64, ptr @increment_size, align 8, !dbg !1960, !tbaa !1347
  %9 = icmp ne i64 %8, 0, !dbg !1960
  %10 = load i64, ptr @extend_size, align 8
  %11 = icmp ne i64 %10, 0
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1962
  br i1 %12, label %25, label %27, !dbg !1962

13:                                               ; preds = %0, %4
  %14 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %15 = phi i64 [ %17, %4 ], [ 0, %0 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !1949, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %15, metadata !1948, metadata !DIExpression()), !dbg !1951
  %16 = getelementptr inbounds i64, ptr %1, i64 %14, !dbg !1963
  %17 = load i64, ptr %16, align 8, !dbg !1963, !tbaa !1347
  %18 = icmp eq i64 %17, 0, !dbg !1966
  br i1 %18, label %19, label %21, !dbg !1967

19:                                               ; preds = %13
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14.26, i32 noundef 5) #37, !dbg !1968
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %20) #37, !dbg !1968
  unreachable, !dbg !1968

21:                                               ; preds = %13
  %22 = icmp sgt i64 %17, %15, !dbg !1969
  call void @llvm.dbg.value(metadata i64 %17, metadata !1948, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i64 %14, metadata !1949, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1953
  br i1 %22, label %4, label %23, !dbg !1971

23:                                               ; preds = %21
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15.27, i32 noundef 5) #37, !dbg !1972
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %24) #37, !dbg !1972
  unreachable, !dbg !1972

25:                                               ; preds = %7
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16.28, i32 noundef 5) #37, !dbg !1973
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %26) #37, !dbg !1973
  unreachable, !dbg !1973

27:                                               ; preds = %7
  %28 = icmp eq i64 %2, 0, !dbg !1974
  br i1 %28, label %29, label %34, !dbg !1976

29:                                               ; preds = %27
  %30 = icmp eq i64 %10, 0, !dbg !1977
  %31 = icmp eq i64 %8, 0, !dbg !1977
  %32 = select i1 %31, i64 8, i64 %8, !dbg !1977
  %33 = select i1 %30, i64 %32, i64 %10, !dbg !1977
  store i64 %33, ptr @max_column_width, align 8, !dbg !1978, !tbaa !1347
  br label %40, !dbg !1979

34:                                               ; preds = %27
  %35 = icmp ne i64 %2, 1, !dbg !1980
  %36 = select i1 %35, i1 true, i1 %11, !dbg !1982
  %37 = select i1 %36, i1 true, i1 %9, !dbg !1982
  br i1 %37, label %40, label %38, !dbg !1982

38:                                               ; preds = %34
  %39 = load i64, ptr %1, align 8, !dbg !1983, !tbaa !1347
  br label %40, !dbg !1984

40:                                               ; preds = %34, %38, %29
  %41 = phi i64 [ %39, %38 ], [ %33, %29 ], [ 0, %34 ]
  store i64 %41, ptr @tab_size, align 8, !dbg !1985, !tbaa !1347
  ret void, !dbg !1986
}

; Function Attrs: nounwind uwtable
define dso_local i64 @get_next_tab_column(i64 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef nonnull writeonly %2) local_unnamed_addr #10 !dbg !1987 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1992, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata ptr %1, metadata !1993, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata ptr %2, metadata !1994, metadata !DIExpression()), !dbg !2007
  store i8 0, ptr %2, align 1, !dbg !2008, !tbaa !1298
  %4 = load i64, ptr @tab_size, align 8, !dbg !2009, !tbaa !1347
  %5 = icmp eq i64 %4, 0, !dbg !2009
  br i1 %5, label %6, label %12, !dbg !2010

6:                                                ; preds = %3
  %7 = load i64, ptr @first_free_tab, align 8, !tbaa !1347
  %8 = load i64, ptr %1, align 8, !tbaa !1347
  %9 = icmp slt i64 %8, %7, !dbg !2011
  br i1 %9, label %10, label %23, !dbg !2012

10:                                               ; preds = %6
  %11 = load ptr, ptr @tab_list, align 8, !tbaa !1057
  br label %15, !dbg !2012

12:                                               ; preds = %3
  %13 = srem i64 %0, %4, !dbg !2013
  %14 = sub nsw i64 %4, %13, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %14, metadata !1995, metadata !DIExpression()), !dbg !2007
  br label %41, !dbg !2015

15:                                               ; preds = %10, %20
  %16 = phi i64 [ %8, %10 ], [ %21, %20 ]
  %17 = getelementptr inbounds i64, ptr %11, i64 %16, !dbg !2016
  %18 = load i64, ptr %17, align 8, !dbg !2016, !tbaa !1347
  call void @llvm.dbg.value(metadata i64 %18, metadata !1996, metadata !DIExpression()), !dbg !2017
  %19 = icmp sgt i64 %18, %0, !dbg !2018
  br i1 %19, label %49, label %20

20:                                               ; preds = %15
  %21 = add i64 %16, 1, !dbg !2020
  store i64 %21, ptr %1, align 8, !dbg !2020, !tbaa !1347
  %22 = icmp eq i64 %21, %7, !dbg !2011
  br i1 %22, label %23, label %15, !dbg !2012, !llvm.loop !2021

23:                                               ; preds = %20, %6
  %24 = load i64, ptr @extend_size, align 8, !dbg !2023, !tbaa !1347
  %25 = icmp eq i64 %24, 0, !dbg !2023
  br i1 %25, label %29, label %26, !dbg !2024

26:                                               ; preds = %23
  %27 = srem i64 %0, %24, !dbg !2025
  %28 = sub nsw i64 %24, %27, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %28, metadata !1995, metadata !DIExpression()), !dbg !2007
  br label %41, !dbg !2027

29:                                               ; preds = %23
  %30 = load i64, ptr @increment_size, align 8, !dbg !2028, !tbaa !1347
  %31 = icmp eq i64 %30, 0, !dbg !2028
  br i1 %31, label %40, label %32, !dbg !2029

32:                                               ; preds = %29
  %33 = load ptr, ptr @tab_list, align 8, !dbg !2030, !tbaa !1057
  %34 = add nsw i64 %7, -1, !dbg !2031
  %35 = getelementptr inbounds i64, ptr %33, i64 %34, !dbg !2030
  %36 = load i64, ptr %35, align 8, !dbg !2030, !tbaa !1347
  call void @llvm.dbg.value(metadata i64 %36, metadata !2002, metadata !DIExpression()), !dbg !2032
  %37 = sub nsw i64 %0, %36, !dbg !2033
  %38 = srem i64 %37, %30, !dbg !2034
  %39 = sub nsw i64 %30, %38, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %39, metadata !1995, metadata !DIExpression()), !dbg !2007
  br label %41, !dbg !2036

40:                                               ; preds = %29
  store i8 1, ptr %2, align 1, !dbg !2037, !tbaa !1298
  call void @llvm.dbg.value(metadata i64 1, metadata !1995, metadata !DIExpression()), !dbg !2007
  br label %41

41:                                               ; preds = %26, %40, %32, %12
  %42 = phi i64 [ %14, %12 ], [ %28, %26 ], [ %39, %32 ], [ 1, %40 ], !dbg !2039
  call void @llvm.dbg.value(metadata i64 %42, metadata !1995, metadata !DIExpression()), !dbg !2007
  %43 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 %42), !dbg !2040
  %44 = extractvalue { i64, i1 } %43, 1, !dbg !2040
  call void @llvm.dbg.value(metadata i64 poison, metadata !2006, metadata !DIExpression()), !dbg !2007
  br i1 %44, label %45, label %47, !dbg !2042

45:                                               ; preds = %41
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5.31, i32 noundef 5) #37, !dbg !2043
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %46) #37, !dbg !2043
  unreachable, !dbg !2043

47:                                               ; preds = %41
  %48 = extractvalue { i64, i1 } %43, 0, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %48, metadata !2006, metadata !DIExpression()), !dbg !2007
  br label %49

49:                                               ; preds = %15, %47
  %50 = phi i64 [ %48, %47 ], [ %18, %15 ], !dbg !2007
  ret i64 %50, !dbg !2044
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_file_list(ptr noundef %0) local_unnamed_addr #14 !dbg !2045 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2049, metadata !DIExpression()), !dbg !2050
  store i1 false, ptr @have_read_stdin, align 1, !dbg !2051
  %2 = icmp eq ptr %0, null, !dbg !2052
  %3 = select i1 %2, ptr @stdin_argv, ptr %0
  store ptr %3, ptr @file_list, align 8, !dbg !2054, !tbaa !1057
  ret void, !dbg !2055
}

; Function Attrs: nounwind uwtable
define dso_local ptr @next_file(ptr noundef %0) local_unnamed_addr #10 !dbg !464 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !502, metadata !DIExpression()), !dbg !2056
  %2 = icmp eq ptr %0, null, !dbg !2057
  br i1 %2, label %25, label %3, !dbg !2058

3:                                                ; preds = %1
  %4 = tail call ptr @__errno_location() #40, !dbg !2059
  %5 = load i32, ptr %4, align 4, !dbg !2059, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 %5, metadata !504, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata ptr %0, metadata !2061, metadata !DIExpression()), !dbg !2066
  %6 = load i32, ptr %0, align 8, !dbg !2069, !tbaa !1374
  %7 = and i32 %6, 32, !dbg !2070
  %8 = icmp eq i32 %7, 0, !dbg !2070
  %9 = select i1 %8, i32 0, i32 %5, !dbg !2071
  call void @llvm.dbg.value(metadata i32 %9, metadata !504, metadata !DIExpression()), !dbg !2060
  %10 = load ptr, ptr @next_file.prev_file, align 8, !dbg !2072, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %10, metadata !2074, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata ptr @.str.6.34, metadata !2077, metadata !DIExpression()), !dbg !2078
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.6.34) #38, !dbg !2080
  %12 = icmp eq i32 %11, 0, !dbg !2081
  br i1 %12, label %13, label %14, !dbg !2082

13:                                               ; preds = %3
  tail call void @clearerr_unlocked(ptr noundef nonnull %0) #37, !dbg !2083
  br label %19, !dbg !2083

14:                                               ; preds = %3
  %15 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !2084
  %16 = icmp eq i32 %15, 0, !dbg !2086
  br i1 %16, label %19, label %17, !dbg !2087

17:                                               ; preds = %14
  %18 = load i32, ptr %4, align 4, !dbg !2088, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 %18, metadata !504, metadata !DIExpression()), !dbg !2060
  br label %19, !dbg !2089

19:                                               ; preds = %14, %17, %13
  %20 = phi i32 [ %9, %13 ], [ %18, %17 ], [ %9, %14 ], !dbg !2060
  call void @llvm.dbg.value(metadata i32 %20, metadata !504, metadata !DIExpression()), !dbg !2060
  %21 = icmp eq i32 %20, 0, !dbg !2090
  br i1 %21, label %25, label %22, !dbg !2092

22:                                               ; preds = %19
  %23 = load ptr, ptr @next_file.prev_file, align 8, !dbg !2093, !tbaa !1057
  %24 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %23) #37, !dbg !2093
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %20, ptr noundef nonnull @.str.7.37, ptr noundef %24) #37, !dbg !2093
  store i32 1, ptr @exit_status, align 4, !dbg !2095, !tbaa !1127
  br label %25, !dbg !2096

25:                                               ; preds = %19, %22, %1
  %26 = load ptr, ptr @file_list, align 8, !dbg !2097, !tbaa !1057
  %27 = getelementptr inbounds ptr, ptr %26, i64 1, !dbg !2097
  store ptr %27, ptr @file_list, align 8, !dbg !2097, !tbaa !1057
  %28 = load ptr, ptr %26, align 8, !dbg !2098, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %28, metadata !503, metadata !DIExpression()), !dbg !2056
  %29 = icmp eq ptr %28, null, !dbg !2099
  br i1 %29, label %50, label %30, !dbg !2100

30:                                               ; preds = %25, %42
  %31 = phi ptr [ %48, %42 ], [ %28, %25 ]
  call void @llvm.dbg.value(metadata ptr %31, metadata !2074, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata ptr @.str.6.34, metadata !2077, metadata !DIExpression()), !dbg !2101
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(2) @.str.6.34) #38, !dbg !2105
  %33 = icmp eq i32 %32, 0, !dbg !2106
  br i1 %33, label %34, label %36, !dbg !2107

34:                                               ; preds = %30
  store i1 true, ptr @have_read_stdin, align 1, !dbg !2108
  %35 = load ptr, ptr @stdin, align 8, !dbg !2110, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %35, metadata !502, metadata !DIExpression()), !dbg !2056
  br label %38, !dbg !2111

36:                                               ; preds = %30
  %37 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull %31, ptr noundef nonnull @.str.8.38) #37, !dbg !2112
  call void @llvm.dbg.value(metadata ptr %37, metadata !502, metadata !DIExpression()), !dbg !2056
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %35, %34 ], [ %37, %36 ], !dbg !2113
  call void @llvm.dbg.value(metadata ptr %39, metadata !502, metadata !DIExpression()), !dbg !2056
  %40 = icmp eq ptr %39, null, !dbg !2114
  br i1 %40, label %42, label %41, !dbg !2116

41:                                               ; preds = %38
  store ptr %31, ptr @next_file.prev_file, align 8, !dbg !2117, !tbaa !1057
  tail call void @fadvise(ptr noundef nonnull %39, i32 noundef 2) #37, !dbg !2119
  br label %50, !dbg !2120

42:                                               ; preds = %38
  %43 = tail call ptr @__errno_location() #40, !dbg !2121
  %44 = load i32, ptr %43, align 4, !dbg !2121, !tbaa !1127
  %45 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %31) #37, !dbg !2121
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %44, ptr noundef nonnull @.str.7.37, ptr noundef %45) #37, !dbg !2121
  store i32 1, ptr @exit_status, align 4, !dbg !2122, !tbaa !1127
  %46 = load ptr, ptr @file_list, align 8, !dbg !2097, !tbaa !1057
  %47 = getelementptr inbounds ptr, ptr %46, i64 1, !dbg !2097
  store ptr %47, ptr @file_list, align 8, !dbg !2097, !tbaa !1057
  %48 = load ptr, ptr %46, align 8, !dbg !2098, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %48, metadata !503, metadata !DIExpression()), !dbg !2056
  %49 = icmp eq ptr %48, null, !dbg !2099
  br i1 %49, label %50, label %30, !dbg !2100, !llvm.loop !2123

50:                                               ; preds = %42, %25, %41
  %51 = phi ptr [ %39, %41 ], [ null, %25 ], [ null, %42 ], !dbg !2056
  ret ptr %51, !dbg !2125
}

; Function Attrs: nounwind uwtable
define dso_local void @cleanup_file_list_stdin() local_unnamed_addr #10 !dbg !2126 {
  %1 = load i1, ptr @have_read_stdin, align 1, !dbg !2127
  br i1 %1, label %2, label %9, !dbg !2129

2:                                                ; preds = %0
  %3 = load ptr, ptr @stdin, align 8, !dbg !2130, !tbaa !1057
  %4 = tail call i32 @rpl_fclose(ptr noundef %3) #37, !dbg !2131
  %5 = icmp eq i32 %4, 0, !dbg !2132
  br i1 %5, label %9, label %6, !dbg !2133

6:                                                ; preds = %2
  %7 = tail call ptr @__errno_location() #40, !dbg !2134
  %8 = load i32, ptr %7, align 4, !dbg !2134, !tbaa !1127
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %8, ptr noundef nonnull @.str.6.34) #37, !dbg !2134
  unreachable, !dbg !2134

9:                                                ; preds = %2, %0
  ret void, !dbg !2135
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_tab_list_info(ptr noundef %0) local_unnamed_addr #10 !dbg !2136 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2138, metadata !DIExpression()), !dbg !2139
  %2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9.43, i32 noundef 5) #37, !dbg !2140
  call void @llvm.dbg.value(metadata ptr %0, metadata !572, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr %2, metadata !573, metadata !DIExpression()), !dbg !2141
  %3 = load i32, ptr @oputs_.help_no_sgr.44, align 4, !dbg !2143, !tbaa !1127
  %4 = icmp eq i32 %3, -1, !dbg !2144
  br i1 %4, label %5, label %17, !dbg !2145

5:                                                ; preds = %1
  %6 = tail call ptr @getenv(ptr noundef nonnull @.str.17.45) #37, !dbg !2146
  call void @llvm.dbg.value(metadata ptr %6, metadata !574, metadata !DIExpression()), !dbg !2147
  %7 = icmp eq ptr %6, null, !dbg !2148
  br i1 %7, label %15, label %8, !dbg !2149

8:                                                ; preds = %5
  %9 = load i8, ptr %6, align 1, !dbg !2150, !tbaa !1136
  %10 = icmp eq i8 %9, 0, !dbg !2150
  br i1 %10, label %15, label %11, !dbg !2151

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata ptr %6, metadata !2074, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata ptr @.str.18.46, metadata !2077, metadata !DIExpression()), !dbg !2152
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.18.46) #38, !dbg !2154
  %13 = icmp eq i32 %12, 0, !dbg !2155
  %14 = zext i1 %13 to i32, !dbg !2151
  br label %15, !dbg !2151

15:                                               ; preds = %11, %8, %5
  %16 = phi i32 [ 1, %8 ], [ 1, %5 ], [ %14, %11 ]
  store i32 %16, ptr @oputs_.help_no_sgr.44, align 4, !dbg !2156, !tbaa !1127
  br label %17, !dbg !2157

17:                                               ; preds = %15, %1
  %18 = phi i32 [ %16, %15 ], [ %3, %1 ], !dbg !2158
  %19 = icmp eq i32 %18, 0, !dbg !2158
  br i1 %19, label %23, label %20, !dbg !2160

20:                                               ; preds = %17
  %21 = load ptr, ptr @stdout, align 8, !dbg !2161, !tbaa !1057
  %22 = tail call i32 @fputs_unlocked(ptr noundef %2, ptr noundef %21), !dbg !2161
  br label %158, !dbg !2163

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 1, metadata !577, metadata !DIExpression()), !dbg !2141
  %24 = tail call i64 @strspn(ptr noundef %2, ptr noundef nonnull @.str.19.47) #38, !dbg !2164
  %25 = getelementptr inbounds i8, ptr %2, i64 %24, !dbg !2165
  call void @llvm.dbg.value(metadata ptr %25, metadata !578, metadata !DIExpression()), !dbg !2141
  %26 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 45) #38, !dbg !2166
  call void @llvm.dbg.value(metadata ptr %26, metadata !579, metadata !DIExpression()), !dbg !2141
  %27 = icmp eq ptr %26, null, !dbg !2167
  br i1 %27, label %56, label %28, !dbg !2168

28:                                               ; preds = %23
  %29 = icmp eq ptr %26, %25, !dbg !2169
  br i1 %29, label %56, label %30, !dbg !2170

30:                                               ; preds = %28
  call void @llvm.dbg.value(metadata ptr %25, metadata !580, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i64 0, metadata !584, metadata !DIExpression()), !dbg !2171
  %31 = icmp ult ptr %25, %26, !dbg !2172
  br i1 %31, label %32, label %52, !dbg !2173

32:                                               ; preds = %30
  %33 = tail call ptr @__ctype_b_loc() #40, !dbg !2141
  %34 = load ptr, ptr %33, align 8, !tbaa !1057
  br label %35, !dbg !2173

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %25, %32 ], [ %38, %35 ]
  %37 = phi i64 [ 0, %32 ], [ %46, %35 ]
  call void @llvm.dbg.value(metadata ptr %36, metadata !580, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i64 %37, metadata !584, metadata !DIExpression()), !dbg !2171
  %38 = getelementptr inbounds i8, ptr %36, i64 1, !dbg !2174
  call void @llvm.dbg.value(metadata ptr %38, metadata !580, metadata !DIExpression()), !dbg !2171
  %39 = load i8, ptr %36, align 1, !dbg !2174, !tbaa !1136
  %40 = sext i8 %39 to i64, !dbg !2174
  %41 = getelementptr inbounds i16, ptr %34, i64 %40, !dbg !2174
  %42 = load i16, ptr %41, align 2, !dbg !2174, !tbaa !1168
  %43 = lshr i16 %42, 13, !dbg !2175
  %44 = and i16 %43, 1, !dbg !2175
  %45 = zext i16 %44 to i64
  %46 = add nuw nsw i64 %37, %45, !dbg !2176
  call void @llvm.dbg.value(metadata i64 %46, metadata !584, metadata !DIExpression()), !dbg !2171
  %47 = icmp ult ptr %38, %26, !dbg !2172
  %48 = icmp ult i64 %46, 2, !dbg !2177
  %49 = select i1 %47, i1 %48, i1 false, !dbg !2177
  br i1 %49, label %35, label %50, !dbg !2173, !llvm.loop !2178

50:                                               ; preds = %35
  %51 = icmp ne i64 %46, 2, !dbg !2179
  br label %52, !dbg !2179

52:                                               ; preds = %50, %30
  %53 = phi i1 [ true, %30 ], [ %51, %50 ]
  %54 = select i1 %53, ptr %26, ptr %25, !dbg !2181
  %55 = zext i1 %53 to i8, !dbg !2181
  call void @llvm.dbg.value(metadata i8 %55, metadata !577, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr %54, metadata !579, metadata !DIExpression()), !dbg !2141
  br label %56, !dbg !2182

56:                                               ; preds = %52, %28, %23
  %57 = phi ptr [ %54, %52 ], [ %25, %28 ], [ %25, %23 ], !dbg !2141
  %58 = phi i8 [ %55, %52 ], [ 1, %28 ], [ 0, %23 ], !dbg !2141
  call void @llvm.dbg.value(metadata i8 %58, metadata !577, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr %57, metadata !579, metadata !DIExpression()), !dbg !2141
  %59 = tail call i64 @strcspn(ptr noundef %57, ptr noundef nonnull @.str.20) #38, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %59, metadata !585, metadata !DIExpression()), !dbg !2141
  %60 = getelementptr inbounds i8, ptr %57, i64 %59, !dbg !2184
  call void @llvm.dbg.value(metadata ptr %60, metadata !586, metadata !DIExpression()), !dbg !2141
  br label %61, !dbg !2185

61:                                               ; preds = %94, %56
  %62 = phi ptr [ %60, %56 ], [ %95, %94 ], !dbg !2141
  %63 = phi i8 [ %58, %56 ], [ %71, %94 ], !dbg !2141
  call void @llvm.dbg.value(metadata i8 %63, metadata !577, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr %62, metadata !586, metadata !DIExpression()), !dbg !2141
  %64 = load i8, ptr %62, align 1, !dbg !2186, !tbaa !1136
  switch i8 %64, label %70 [
    i8 0, label %96
    i8 10, label %96
    i8 45, label %65
  ], !dbg !2187

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !2188
  %67 = load i8, ptr %66, align 1, !dbg !2191, !tbaa !1136
  %68 = icmp eq i8 %67, 45, !dbg !2192
  %69 = select i1 %68, i8 0, i8 %63, !dbg !2193
  br label %70, !dbg !2193

70:                                               ; preds = %65, %61
  %71 = phi i8 [ %63, %61 ], [ %69, %65 ], !dbg !2141
  call void @llvm.dbg.value(metadata i8 %71, metadata !577, metadata !DIExpression()), !dbg !2141
  %72 = tail call ptr @__ctype_b_loc() #40, !dbg !2194
  %73 = load ptr, ptr %72, align 8, !dbg !2194, !tbaa !1057
  %74 = sext i8 %64 to i64, !dbg !2194
  %75 = getelementptr inbounds i16, ptr %73, i64 %74, !dbg !2194
  %76 = load i16, ptr %75, align 2, !dbg !2194, !tbaa !1168
  %77 = and i16 %76, 8192, !dbg !2194
  %78 = icmp eq i16 %77, 0, !dbg !2194
  br i1 %78, label %94, label %79, !dbg !2196

79:                                               ; preds = %70
  %80 = icmp eq i8 %64, 9, !dbg !2197
  br i1 %80, label %96, label %81, !dbg !2200

81:                                               ; preds = %79
  %82 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !2201
  %83 = load i8, ptr %82, align 1, !dbg !2201, !tbaa !1136
  %84 = sext i8 %83 to i64, !dbg !2201
  %85 = getelementptr inbounds i16, ptr %73, i64 %84, !dbg !2201
  %86 = load i16, ptr %85, align 2, !dbg !2201, !tbaa !1168
  %87 = and i16 %86, 8192, !dbg !2201
  %88 = icmp eq i16 %87, 0, !dbg !2201
  br i1 %88, label %89, label %96, !dbg !2202

89:                                               ; preds = %81
  %90 = and i8 %71, 1, !dbg !2203
  %91 = icmp ne i8 %90, 0, !dbg !2203
  %92 = icmp eq i8 %83, 45
  %93 = select i1 %91, i1 true, i1 %92, !dbg !2205
  br i1 %93, label %94, label %96, !dbg !2205

94:                                               ; preds = %89, %70
  %95 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !2206
  call void @llvm.dbg.value(metadata ptr %95, metadata !586, metadata !DIExpression()), !dbg !2141
  br label %61, !dbg !2185, !llvm.loop !2207

96:                                               ; preds = %89, %81, %79, %61, %61
  %97 = ptrtoint ptr %25 to i64, !dbg !2209
  %98 = load ptr, ptr @stdout, align 8, !dbg !2209, !tbaa !1057
  %99 = tail call i64 @fwrite_unlocked(ptr noundef %2, i64 noundef 1, i64 noundef %24, ptr noundef %98), !dbg !2209
  call void @llvm.dbg.value(metadata ptr %0, metadata !2074, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata ptr @.str.21, metadata !2077, metadata !DIExpression()), !dbg !2210
  %100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.21) #38, !dbg !2212
  %101 = icmp eq i32 %100, 0, !dbg !2213
  br i1 %101, label %130, label %102, !dbg !2214

102:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %0, metadata !2074, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !2077, metadata !DIExpression()), !dbg !2215
  %103 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.23) #38, !dbg !2217
  %104 = icmp eq i32 %103, 0, !dbg !2218
  br i1 %104, label %130, label %105, !dbg !2219

105:                                              ; preds = %102
  call void @llvm.dbg.value(metadata ptr %0, metadata !2074, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr @.str.25, metadata !2077, metadata !DIExpression()), !dbg !2220
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.25) #38, !dbg !2222
  %107 = icmp eq i32 %106, 0, !dbg !2223
  br i1 %107, label %130, label %108, !dbg !2224

108:                                              ; preds = %105
  call void @llvm.dbg.value(metadata ptr %0, metadata !2074, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !2077, metadata !DIExpression()), !dbg !2225
  %109 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.26) #38, !dbg !2227
  %110 = icmp eq i32 %109, 0, !dbg !2228
  br i1 %110, label %130, label %111, !dbg !2229

111:                                              ; preds = %108
  call void @llvm.dbg.value(metadata ptr %0, metadata !2074, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !2077, metadata !DIExpression()), !dbg !2230
  %112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.28) #38, !dbg !2232
  %113 = icmp eq i32 %112, 0, !dbg !2233
  br i1 %113, label %130, label %114, !dbg !2234

114:                                              ; preds = %111
  call void @llvm.dbg.value(metadata ptr %0, metadata !2074, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata ptr @.str.29, metadata !2077, metadata !DIExpression()), !dbg !2235
  %115 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.29) #38, !dbg !2237
  %116 = icmp eq i32 %115, 0, !dbg !2238
  br i1 %116, label %130, label %117, !dbg !2239

117:                                              ; preds = %114
  call void @llvm.dbg.value(metadata ptr %0, metadata !2074, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !2077, metadata !DIExpression()), !dbg !2240
  %118 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.30) #38, !dbg !2242
  %119 = icmp eq i32 %118, 0, !dbg !2243
  br i1 %119, label %130, label %120, !dbg !2244

120:                                              ; preds = %117
  call void @llvm.dbg.value(metadata ptr %0, metadata !2074, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !2077, metadata !DIExpression()), !dbg !2245
  %121 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.31) #38, !dbg !2247
  %122 = icmp eq i32 %121, 0, !dbg !2248
  br i1 %122, label %130, label %123, !dbg !2249

123:                                              ; preds = %120
  call void @llvm.dbg.value(metadata ptr %0, metadata !2074, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata ptr @.str.32.48, metadata !2077, metadata !DIExpression()), !dbg !2250
  %124 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.32.48) #38, !dbg !2252
  %125 = icmp eq i32 %124, 0, !dbg !2253
  br i1 %125, label %130, label %126, !dbg !2254

126:                                              ; preds = %123
  call void @llvm.dbg.value(metadata ptr %0, metadata !2074, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata ptr @.str.33.49, metadata !2077, metadata !DIExpression()), !dbg !2255
  %127 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.33.49) #38, !dbg !2257
  %128 = icmp eq i32 %127, 0, !dbg !2258
  %129 = select i1 %128, ptr @.str.27, ptr %0, !dbg !2259
  br label %130, !dbg !2254

130:                                              ; preds = %126, %123, %120, %117, %114, %111, %108, %105, %102, %96
  %131 = phi ptr [ @.str.22, %96 ], [ @.str.24, %102 ], [ @.str.24, %105 ], [ @.str.27, %108 ], [ @.str.27, %111 ], [ @.str.27, %114 ], [ @.str.27, %117 ], [ @.str.27, %120 ], [ %129, %126 ], [ @.str.27, %123 ], !dbg !2214
  call void @llvm.dbg.value(metadata ptr %131, metadata !591, metadata !DIExpression()), !dbg !2141
  %132 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(7) @.str.34.50, i64 noundef 6) #38, !dbg !2260
  %133 = icmp eq i32 %132, 0, !dbg !2260
  br i1 %133, label %137, label %134, !dbg !2262

134:                                              ; preds = %130
  %135 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(10) @.str.35.51, i64 noundef 9) #38, !dbg !2263
  %136 = icmp eq i32 %135, 0, !dbg !2263
  br i1 %136, label %137, label %140, !dbg !2264

137:                                              ; preds = %134, %130
  %138 = trunc i64 %59 to i32, !dbg !2265
  %139 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36.52, ptr noundef nonnull @.str.37.53, ptr noundef %131, ptr noundef %131, i32 noundef %138, ptr noundef %57) #37, !dbg !2265
  br label %143, !dbg !2267

140:                                              ; preds = %134
  %141 = trunc i64 %59 to i32, !dbg !2268
  %142 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38.54, ptr noundef nonnull @.str.39.55, ptr noundef %131, i32 noundef %141, ptr noundef %57) #37, !dbg !2268
  br label %143

143:                                              ; preds = %140, %137
  %144 = load ptr, ptr @stdout, align 8, !dbg !2270, !tbaa !1057
  %145 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40.56, ptr noundef %144), !dbg !2270
  %146 = load ptr, ptr @stdout, align 8, !dbg !2271, !tbaa !1057
  %147 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41.57, ptr noundef %146), !dbg !2271
  %148 = ptrtoint ptr %62 to i64, !dbg !2272
  %149 = sub i64 %148, %97, !dbg !2272
  %150 = load ptr, ptr @stdout, align 8, !dbg !2272, !tbaa !1057
  %151 = tail call i64 @fwrite_unlocked(ptr noundef %25, i64 noundef 1, i64 noundef %149, ptr noundef %150), !dbg !2272
  %152 = load ptr, ptr @stdout, align 8, !dbg !2273, !tbaa !1057
  %153 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %152), !dbg !2273
  %154 = load ptr, ptr @stdout, align 8, !dbg !2274, !tbaa !1057
  %155 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %154), !dbg !2274
  %156 = load ptr, ptr @stdout, align 8, !dbg !2275, !tbaa !1057
  %157 = tail call i32 @fputs_unlocked(ptr noundef nonnull %62, ptr noundef %156), !dbg !2275
  br label %158, !dbg !2276

158:                                              ; preds = %20, %143
  %159 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10.58, i32 noundef 5) #37, !dbg !2277
  %160 = load ptr, ptr @stdout, align 8, !dbg !2277, !tbaa !1057
  %161 = tail call i32 @fputs_unlocked(ptr noundef %159, ptr noundef %160), !dbg !2277
  ret void, !dbg !2278
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #14 !dbg !2279 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2281, metadata !DIExpression()), !dbg !2282
  store ptr %0, ptr @file_name, align 8, !dbg !2283, !tbaa !1057
  ret void, !dbg !2284
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #14 !dbg !2285 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2289, metadata !DIExpression()), !dbg !2290
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !2291, !tbaa !1298
  ret void, !dbg !2292
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2293 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2298, !tbaa !1057
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !2299
  %3 = icmp eq i32 %2, 0, !dbg !2300
  br i1 %3, label %22, label %4, !dbg !2301

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2302, !tbaa !1298, !range !1500, !noundef !1066
  %6 = icmp eq i8 %5, 0, !dbg !2302
  br i1 %6, label %11, label %7, !dbg !2303

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !2304
  %9 = load i32, ptr %8, align 4, !dbg !2304, !tbaa !1127
  %10 = icmp eq i32 %9, 32, !dbg !2305
  br i1 %10, label %22, label %11, !dbg !2306

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1.65, i32 noundef 5) #37, !dbg !2307
  call void @llvm.dbg.value(metadata ptr %12, metadata !2295, metadata !DIExpression()), !dbg !2308
  %13 = load ptr, ptr @file_name, align 8, !dbg !2309, !tbaa !1057
  %14 = icmp eq ptr %13, null, !dbg !2309
  %15 = tail call ptr @__errno_location() #40, !dbg !2311
  %16 = load i32, ptr %15, align 4, !dbg !2311, !tbaa !1127
  br i1 %14, label %19, label %17, !dbg !2312

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !2313
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.66, ptr noundef %18, ptr noundef %12) #37, !dbg !2313
  br label %20, !dbg !2313

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.67, ptr noundef %12) #37, !dbg !2314
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2315, !tbaa !1127
  tail call void @_exit(i32 noundef %21) #39, !dbg !2316
  unreachable, !dbg !2316

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2317, !tbaa !1057
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !2319
  %25 = icmp eq i32 %24, 0, !dbg !2320
  br i1 %25, label %28, label %26, !dbg !2321

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2322, !tbaa !1127
  tail call void @_exit(i32 noundef %27) #39, !dbg !2323
  unreachable, !dbg !2323

28:                                               ; preds = %22
  ret void, !dbg !2324
}

; Function Attrs: noreturn
declare !dbg !2325 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #16 !dbg !2327 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2331, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i32 %1, metadata !2332, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata ptr %2, metadata !2333, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata ptr %3, metadata !2334, metadata !DIExpression()), !dbg !2335
  tail call fastcc void @flush_stdout(), !dbg !2336
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2337, !tbaa !1057
  %6 = icmp eq ptr %5, null, !dbg !2337
  br i1 %6, label %8, label %7, !dbg !2339

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !2340
  br label %12, !dbg !2340

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2341, !tbaa !1057
  %10 = tail call ptr @getprogname() #38, !dbg !2341
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.68, ptr noundef %10) #37, !dbg !2341
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2343
  ret void, !dbg !2344
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2345 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2347, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i32 1, metadata !2349, metadata !DIExpression()), !dbg !2352
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !2355
  %2 = icmp slt i32 %1, 0, !dbg !2356
  br i1 %2, label %6, label %3, !dbg !2357

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2358, !tbaa !1057
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !2358
  br label %6, !dbg !2358

6:                                                ; preds = %3, %0
  ret void, !dbg !2359
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2360 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2362, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i32 %1, metadata !2363, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata ptr %2, metadata !2364, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata ptr %3, metadata !2365, metadata !DIExpression()), !dbg !2366
  %6 = load ptr, ptr @stderr, align 8, !dbg !2367, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %6, metadata !2368, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata ptr %2, metadata !2408, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata ptr %3, metadata !2409, metadata !DIExpression()), !dbg !2410
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !2412
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2413, !tbaa !1127
  %9 = add i32 %8, 1, !dbg !2413
  store i32 %9, ptr @error_message_count, align 4, !dbg !2413, !tbaa !1127
  %10 = icmp eq i32 %1, 0, !dbg !2414
  br i1 %10, label %20, label %11, !dbg !2416

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2417, metadata !DIExpression()), !dbg !2425
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !2427
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2421, metadata !DIExpression()), !dbg !2428
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !2429
  call void @llvm.dbg.value(metadata ptr %12, metadata !2420, metadata !DIExpression()), !dbg !2425
  %13 = icmp eq ptr %12, null, !dbg !2430
  br i1 %13, label %14, label %16, !dbg !2432

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.69, ptr noundef nonnull @.str.5.70, i32 noundef 5) #37, !dbg !2433
  call void @llvm.dbg.value(metadata ptr %15, metadata !2420, metadata !DIExpression()), !dbg !2425
  br label %16, !dbg !2434

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2425
  call void @llvm.dbg.value(metadata ptr %17, metadata !2420, metadata !DIExpression()), !dbg !2425
  %18 = load ptr, ptr @stderr, align 8, !dbg !2435, !tbaa !1057
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.71, ptr noundef %17) #37, !dbg !2435
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !2436
  br label %20, !dbg !2437

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2438, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 10, metadata !2439, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata ptr %21, metadata !2444, metadata !DIExpression()), !dbg !2445
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2447
  %23 = load ptr, ptr %22, align 8, !dbg !2447, !tbaa !1538
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2447
  %25 = load ptr, ptr %24, align 8, !dbg !2447, !tbaa !1539
  %26 = icmp ult ptr %23, %25, !dbg !2447
  br i1 %26, label %29, label %27, !dbg !2447, !prof !1540

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !2447
  br label %31, !dbg !2447

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2447
  store ptr %30, ptr %22, align 8, !dbg !2447, !tbaa !1538
  store i8 10, ptr %23, align 1, !dbg !2447, !tbaa !1136
  br label %31, !dbg !2447

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2448, !tbaa !1057
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !2448
  %34 = icmp eq i32 %0, 0, !dbg !2449
  br i1 %34, label %36, label %35, !dbg !2451

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #39, !dbg !2452
  unreachable, !dbg !2452

36:                                               ; preds = %31
  ret void, !dbg !2453
}

declare !dbg !2454 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2457 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2460 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2464 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2468, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 %1, metadata !2469, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata ptr %2, metadata !2470, metadata !DIExpression()), !dbg !2477
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !2478
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2471, metadata !DIExpression()), !dbg !2479
  call void @llvm.va_start(ptr nonnull %4), !dbg !2480
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #42, !dbg !2481
  call void @llvm.va_end(ptr nonnull %4), !dbg !2482
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !2483
  ret void, !dbg !2483
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #16 !dbg !683 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !695, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i32 %1, metadata !696, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata ptr %2, metadata !697, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i32 %3, metadata !698, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata ptr %4, metadata !699, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata ptr %5, metadata !700, metadata !DIExpression()), !dbg !2484
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2485, !tbaa !1127
  %8 = icmp eq i32 %7, 0, !dbg !2485
  br i1 %8, label %23, label %9, !dbg !2487

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2488, !tbaa !1127
  %11 = icmp eq i32 %10, %3, !dbg !2491
  br i1 %11, label %12, label %22, !dbg !2492

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2493, !tbaa !1057
  %14 = icmp eq ptr %13, %2, !dbg !2494
  br i1 %14, label %36, label %15, !dbg !2495

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2496
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2497
  br i1 %18, label %19, label %22, !dbg !2497

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2498
  %21 = icmp eq i32 %20, 0, !dbg !2499
  br i1 %21, label %36, label %22, !dbg !2500

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2501, !tbaa !1057
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2502, !tbaa !1127
  br label %23, !dbg !2503

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2504
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2505, !tbaa !1057
  %25 = icmp eq ptr %24, null, !dbg !2505
  br i1 %25, label %27, label %26, !dbg !2507

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !2508
  br label %31, !dbg !2508

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2509, !tbaa !1057
  %29 = tail call ptr @getprogname() #38, !dbg !2509
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.74, ptr noundef %29) #37, !dbg !2509
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2511, !tbaa !1057
  %33 = icmp eq ptr %2, null, !dbg !2511
  %34 = select i1 %33, ptr @.str.3.75, ptr @.str.2.76, !dbg !2511
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !2511
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2512
  br label %36, !dbg !2513

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2513
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2514 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2518, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i32 %1, metadata !2519, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata ptr %2, metadata !2520, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i32 %3, metadata !2521, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata ptr %4, metadata !2522, metadata !DIExpression()), !dbg !2524
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !2525
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2523, metadata !DIExpression()), !dbg !2526
  call void @llvm.va_start(ptr nonnull %6), !dbg !2527
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #42, !dbg !2528
  call void @llvm.va_end(ptr nonnull %6), !dbg !2529
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !2530
  ret void, !dbg !2530
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2531 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2537, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 %1, metadata !2538, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 %2, metadata !2539, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i32 %3, metadata !2540, metadata !DIExpression()), !dbg !2541
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #37, !dbg !2542
  ret void, !dbg !2543
}

; Function Attrs: nounwind
declare !dbg !2544 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2547 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2585, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i32 %1, metadata !2586, metadata !DIExpression()), !dbg !2587
  %3 = icmp eq ptr %0, null, !dbg !2588
  br i1 %3, label %7, label %4, !dbg !2590

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2591
  call void @llvm.dbg.value(metadata i32 %5, metadata !2537, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i64 0, metadata !2538, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i64 0, metadata !2539, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i32 %1, metadata !2540, metadata !DIExpression()), !dbg !2592
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #37, !dbg !2594
  br label %7, !dbg !2595

7:                                                ; preds = %4, %2
  ret void, !dbg !2596
}

; Function Attrs: nofree nounwind
declare !dbg !2597 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2600 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2638, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i32 0, metadata !2639, metadata !DIExpression()), !dbg !2642
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2643
  call void @llvm.dbg.value(metadata i32 %2, metadata !2640, metadata !DIExpression()), !dbg !2642
  %3 = icmp slt i32 %2, 0, !dbg !2644
  br i1 %3, label %4, label %6, !dbg !2646

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2647
  br label %24, !dbg !2648

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !2649
  %8 = icmp eq i32 %7, 0, !dbg !2649
  br i1 %8, label %13, label %9, !dbg !2651

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2652
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !2653
  %12 = icmp eq i64 %11, -1, !dbg !2654
  br i1 %12, label %16, label %13, !dbg !2655

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !2656
  %15 = icmp eq i32 %14, 0, !dbg !2656
  br i1 %15, label %16, label %18, !dbg !2657

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2639, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i32 0, metadata !2641, metadata !DIExpression()), !dbg !2642
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2658
  call void @llvm.dbg.value(metadata i32 %17, metadata !2641, metadata !DIExpression()), !dbg !2642
  br label %24, !dbg !2659

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !2660
  %20 = load i32, ptr %19, align 4, !dbg !2660, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 %20, metadata !2639, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i32 0, metadata !2641, metadata !DIExpression()), !dbg !2642
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2658
  call void @llvm.dbg.value(metadata i32 %21, metadata !2641, metadata !DIExpression()), !dbg !2642
  %22 = icmp eq i32 %20, 0, !dbg !2661
  br i1 %22, label %24, label %23, !dbg !2659

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2663, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 -1, metadata !2641, metadata !DIExpression()), !dbg !2642
  br label %24, !dbg !2665

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2642
  ret i32 %25, !dbg !2666
}

; Function Attrs: nofree nounwind
declare !dbg !2667 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2668 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2670 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2673 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2711, metadata !DIExpression()), !dbg !2712
  %2 = icmp eq ptr %0, null, !dbg !2713
  br i1 %2, label %6, label %3, !dbg !2715

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !2716
  %5 = icmp eq i32 %4, 0, !dbg !2716
  br i1 %5, label %6, label %8, !dbg !2717

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2718
  br label %16, !dbg !2719

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2720, metadata !DIExpression()), !dbg !2725
  %9 = load i32, ptr %0, align 8, !dbg !2727, !tbaa !1374
  %10 = and i32 %9, 256, !dbg !2729
  %11 = icmp eq i32 %10, 0, !dbg !2729
  br i1 %11, label %14, label %12, !dbg !2730

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !2731
  br label %14, !dbg !2731

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2732
  br label %16, !dbg !2733

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2712
  ret i32 %17, !dbg !2734
}

; Function Attrs: nofree nounwind
declare !dbg !2735 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2736 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2774, metadata !DIExpression()), !dbg !2775
  tail call void @__fpurge(ptr noundef nonnull %0) #37, !dbg !2776
  ret i32 0, !dbg !2777
}

; Function Attrs: nounwind
declare !dbg !2778 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2781 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2819, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64 %1, metadata !2820, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i32 %2, metadata !2821, metadata !DIExpression()), !dbg !2825
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2826
  %5 = load ptr, ptr %4, align 8, !dbg !2826, !tbaa !2827
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2828
  %7 = load ptr, ptr %6, align 8, !dbg !2828, !tbaa !2829
  %8 = icmp eq ptr %5, %7, !dbg !2830
  br i1 %8, label %9, label %27, !dbg !2831

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2832
  %11 = load ptr, ptr %10, align 8, !dbg !2832, !tbaa !1538
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2833
  %13 = load ptr, ptr %12, align 8, !dbg !2833, !tbaa !2834
  %14 = icmp eq ptr %11, %13, !dbg !2835
  br i1 %14, label %15, label %27, !dbg !2836

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2837
  %17 = load ptr, ptr %16, align 8, !dbg !2837, !tbaa !2838
  %18 = icmp eq ptr %17, null, !dbg !2839
  br i1 %18, label %19, label %27, !dbg !2840

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2841
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !2842
  call void @llvm.dbg.value(metadata i64 %21, metadata !2822, metadata !DIExpression()), !dbg !2843
  %22 = icmp eq i64 %21, -1, !dbg !2844
  br i1 %22, label %29, label %23, !dbg !2846

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2847, !tbaa !1374
  %25 = and i32 %24, -17, !dbg !2847
  store i32 %25, ptr %0, align 8, !dbg !2847, !tbaa !1374
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2848
  store i64 %21, ptr %26, align 8, !dbg !2849, !tbaa !2850
  br label %29, !dbg !2851

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2852
  br label %29, !dbg !2853

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2825
  ret i32 %30, !dbg !2854
}

; Function Attrs: nofree nounwind
declare !dbg !2855 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !2858 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2861, !tbaa !1057
  ret ptr %1, !dbg !2862
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !2863 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2865, metadata !DIExpression()), !dbg !2868
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !2869
  call void @llvm.dbg.value(metadata ptr %2, metadata !2866, metadata !DIExpression()), !dbg !2868
  %3 = icmp eq ptr %2, null, !dbg !2870
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2870
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2870
  call void @llvm.dbg.value(metadata ptr %5, metadata !2867, metadata !DIExpression()), !dbg !2868
  %6 = ptrtoint ptr %5 to i64, !dbg !2871
  %7 = ptrtoint ptr %0 to i64, !dbg !2871
  %8 = sub i64 %6, %7, !dbg !2871
  %9 = icmp sgt i64 %8, 6, !dbg !2873
  br i1 %9, label %10, label %19, !dbg !2874

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2875
  call void @llvm.dbg.value(metadata ptr %11, metadata !2876, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata ptr @.str.95, metadata !2881, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 7, metadata !2882, metadata !DIExpression()), !dbg !2883
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.95, i64 7), !dbg !2885
  %13 = icmp eq i32 %12, 0, !dbg !2886
  br i1 %13, label %14, label %19, !dbg !2887

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2865, metadata !DIExpression()), !dbg !2868
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.96, i64 noundef 3) #38, !dbg !2888
  %16 = icmp eq i32 %15, 0, !dbg !2891
  %17 = select i1 %16, i64 3, i64 0, !dbg !2892
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2892
  br label %19, !dbg !2892

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2868
  call void @llvm.dbg.value(metadata ptr %21, metadata !2867, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata ptr %20, metadata !2865, metadata !DIExpression()), !dbg !2868
  store ptr %20, ptr @program_name, align 8, !dbg !2893, !tbaa !1057
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2894, !tbaa !1057
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2895, !tbaa !1057
  ret void, !dbg !2896
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2897 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !732 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !739, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata ptr %1, metadata !740, metadata !DIExpression()), !dbg !2898
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !2899
  call void @llvm.dbg.value(metadata ptr %5, metadata !741, metadata !DIExpression()), !dbg !2898
  %6 = icmp eq ptr %5, %0, !dbg !2900
  br i1 %6, label %7, label %14, !dbg !2902

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !2903
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !2904
  call void @llvm.dbg.declare(metadata ptr %4, metadata !743, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata ptr %4, metadata !2906, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata ptr %4, metadata !2915, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 0, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i64 8, metadata !2921, metadata !DIExpression()), !dbg !2922
  store i64 0, ptr %4, align 8, !dbg !2924
  call void @llvm.dbg.value(metadata ptr %3, metadata !742, metadata !DIExpression(DW_OP_deref)), !dbg !2898
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !2925
  %9 = icmp eq i64 %8, 2, !dbg !2927
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !742, metadata !DIExpression()), !dbg !2898
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2928
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2898
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !2929
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !2929
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2898
  ret ptr %15, !dbg !2929
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2930 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2935, metadata !DIExpression()), !dbg !2938
  %2 = tail call ptr @__errno_location() #40, !dbg !2939
  %3 = load i32, ptr %2, align 4, !dbg !2939, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 %3, metadata !2936, metadata !DIExpression()), !dbg !2938
  %4 = icmp eq ptr %0, null, !dbg !2940
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2940
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #43, !dbg !2941
  call void @llvm.dbg.value(metadata ptr %6, metadata !2937, metadata !DIExpression()), !dbg !2938
  store i32 %3, ptr %2, align 4, !dbg !2942, !tbaa !1127
  ret ptr %6, !dbg !2943
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !2944 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2950, metadata !DIExpression()), !dbg !2951
  %2 = icmp eq ptr %0, null, !dbg !2952
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2952
  %4 = load i32, ptr %3, align 8, !dbg !2953, !tbaa !2954
  ret i32 %4, !dbg !2956
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2957 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2961, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i32 %1, metadata !2962, metadata !DIExpression()), !dbg !2963
  %3 = icmp eq ptr %0, null, !dbg !2964
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2964
  store i32 %1, ptr %4, align 8, !dbg !2965, !tbaa !2954
  ret void, !dbg !2966
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #23 !dbg !2967 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2971, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 %1, metadata !2972, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i32 %2, metadata !2973, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 %1, metadata !2974, metadata !DIExpression()), !dbg !2979
  %4 = icmp eq ptr %0, null, !dbg !2980
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2980
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2981
  %7 = lshr i8 %1, 5, !dbg !2982
  %8 = zext i8 %7 to i64, !dbg !2982
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2983
  call void @llvm.dbg.value(metadata ptr %9, metadata !2975, metadata !DIExpression()), !dbg !2979
  %10 = and i8 %1, 31, !dbg !2984
  %11 = zext i8 %10 to i32, !dbg !2984
  call void @llvm.dbg.value(metadata i32 %11, metadata !2977, metadata !DIExpression()), !dbg !2979
  %12 = load i32, ptr %9, align 4, !dbg !2985, !tbaa !1127
  %13 = lshr i32 %12, %11, !dbg !2986
  %14 = and i32 %13, 1, !dbg !2987
  call void @llvm.dbg.value(metadata i32 %14, metadata !2978, metadata !DIExpression()), !dbg !2979
  %15 = xor i32 %13, %2, !dbg !2988
  %16 = and i32 %15, 1, !dbg !2988
  %17 = shl nuw i32 %16, %11, !dbg !2989
  %18 = xor i32 %17, %12, !dbg !2990
  store i32 %18, ptr %9, align 4, !dbg !2990, !tbaa !1127
  ret i32 %14, !dbg !2991
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2992 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2996, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i32 %1, metadata !2997, metadata !DIExpression()), !dbg !2999
  %3 = icmp eq ptr %0, null, !dbg !3000
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3002
  call void @llvm.dbg.value(metadata ptr %4, metadata !2996, metadata !DIExpression()), !dbg !2999
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3003
  %6 = load i32, ptr %5, align 4, !dbg !3003, !tbaa !3004
  call void @llvm.dbg.value(metadata i32 %6, metadata !2998, metadata !DIExpression()), !dbg !2999
  store i32 %1, ptr %5, align 4, !dbg !3005, !tbaa !3004
  ret i32 %6, !dbg !3006
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3007 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3011, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %1, metadata !3012, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %2, metadata !3013, metadata !DIExpression()), !dbg !3014
  %4 = icmp eq ptr %0, null, !dbg !3015
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3017
  call void @llvm.dbg.value(metadata ptr %5, metadata !3011, metadata !DIExpression()), !dbg !3014
  store i32 10, ptr %5, align 8, !dbg !3018, !tbaa !2954
  %6 = icmp ne ptr %1, null, !dbg !3019
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3021
  br i1 %8, label %10, label %9, !dbg !3021

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3022
  unreachable, !dbg !3022

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3023
  store ptr %1, ptr %11, align 8, !dbg !3024, !tbaa !3025
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3026
  store ptr %2, ptr %12, align 8, !dbg !3027, !tbaa !3028
  ret void, !dbg !3029
}

; Function Attrs: noreturn nounwind
declare !dbg !3030 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3031 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3035, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %1, metadata !3036, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata ptr %2, metadata !3037, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %3, metadata !3038, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata ptr %4, metadata !3039, metadata !DIExpression()), !dbg !3043
  %6 = icmp eq ptr %4, null, !dbg !3044
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3044
  call void @llvm.dbg.value(metadata ptr %7, metadata !3040, metadata !DIExpression()), !dbg !3043
  %8 = tail call ptr @__errno_location() #40, !dbg !3045
  %9 = load i32, ptr %8, align 4, !dbg !3045, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 %9, metadata !3041, metadata !DIExpression()), !dbg !3043
  %10 = load i32, ptr %7, align 8, !dbg !3046, !tbaa !2954
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3047
  %12 = load i32, ptr %11, align 4, !dbg !3047, !tbaa !3004
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3048
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3049
  %15 = load ptr, ptr %14, align 8, !dbg !3049, !tbaa !3025
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3050
  %17 = load ptr, ptr %16, align 8, !dbg !3050, !tbaa !3028
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3051
  call void @llvm.dbg.value(metadata i64 %18, metadata !3042, metadata !DIExpression()), !dbg !3043
  store i32 %9, ptr %8, align 4, !dbg !3052, !tbaa !1127
  ret i64 %18, !dbg !3053
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3054 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3060, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %1, metadata !3061, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %2, metadata !3062, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %3, metadata !3063, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 %4, metadata !3064, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 %5, metadata !3065, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %6, metadata !3066, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %7, metadata !3067, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %8, metadata !3068, metadata !DIExpression()), !dbg !3122
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !3123
  %17 = icmp eq i64 %16, 1, !dbg !3124
  call void @llvm.dbg.value(metadata i1 %17, metadata !3069, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3122
  call void @llvm.dbg.value(metadata i64 0, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 0, metadata !3071, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr null, metadata !3072, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 0, metadata !3073, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 0, metadata !3074, metadata !DIExpression()), !dbg !3122
  %18 = trunc i32 %5 to i8, !dbg !3125
  %19 = lshr i8 %18, 1, !dbg !3125
  %20 = and i8 %19, 1, !dbg !3125
  call void @llvm.dbg.value(metadata i8 %20, metadata !3075, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 0, metadata !3076, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 1, metadata !3077, metadata !DIExpression()), !dbg !3122
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !3126

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !3127
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !3128
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !3129
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !3130
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !3122
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !3131
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !3132
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !3061, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %39, metadata !3077, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %38, metadata !3076, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %37, metadata !3075, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %36, metadata !3074, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %35, metadata !3073, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %34, metadata !3072, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %33, metadata !3071, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 0, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %32, metadata !3063, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %31, metadata !3068, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %30, metadata !3067, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 %29, metadata !3064, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.label(metadata !3115), !dbg !3133
  call void @llvm.dbg.value(metadata i8 0, metadata !3078, metadata !DIExpression()), !dbg !3122
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
  ], !dbg !3134

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !3075, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 5, metadata !3064, metadata !DIExpression()), !dbg !3122
  br label %115, !dbg !3135

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !3075, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 5, metadata !3064, metadata !DIExpression()), !dbg !3122
  %43 = and i8 %37, 1, !dbg !3136
  %44 = icmp eq i8 %43, 0, !dbg !3136
  br i1 %44, label %45, label %115, !dbg !3135

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3138
  br i1 %46, label %115, label %47, !dbg !3141

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !3138, !tbaa !1136
  br label %115, !dbg !3138

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.109, metadata !827, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i32 %29, metadata !828, metadata !DIExpression()), !dbg !3142
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.110, ptr noundef nonnull @.str.11.109, i32 noundef 5) #37, !dbg !3146
  call void @llvm.dbg.value(metadata ptr %49, metadata !829, metadata !DIExpression()), !dbg !3142
  %50 = icmp eq ptr %49, @.str.11.109, !dbg !3147
  br i1 %50, label %51, label %60, !dbg !3149

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !3150
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !3151
  call void @llvm.dbg.declare(metadata ptr %13, metadata !831, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata ptr %13, metadata !3153, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata ptr %13, metadata !3161, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i32 0, metadata !3164, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i64 8, metadata !3165, metadata !DIExpression()), !dbg !3166
  store i64 0, ptr %13, align 8, !dbg !3168
  call void @llvm.dbg.value(metadata ptr %12, metadata !830, metadata !DIExpression(DW_OP_deref)), !dbg !3142
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !3169
  %53 = icmp eq i64 %52, 3, !dbg !3171
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !830, metadata !DIExpression()), !dbg !3142
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !3172
  %57 = icmp eq i32 %29, 9, !dbg !3172
  %58 = select i1 %57, ptr @.str.10.111, ptr @.str.12.112, !dbg !3172
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !3172
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !3173
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !3173
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !3142
  call void @llvm.dbg.value(metadata ptr %61, metadata !3067, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr @.str.12.112, metadata !827, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i32 %29, metadata !828, metadata !DIExpression()), !dbg !3174
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.110, ptr noundef nonnull @.str.12.112, i32 noundef 5) #37, !dbg !3176
  call void @llvm.dbg.value(metadata ptr %62, metadata !829, metadata !DIExpression()), !dbg !3174
  %63 = icmp eq ptr %62, @.str.12.112, !dbg !3177
  br i1 %63, label %64, label %73, !dbg !3178

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !3179
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !3180
  call void @llvm.dbg.declare(metadata ptr %11, metadata !831, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata ptr %11, metadata !3153, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr %11, metadata !3161, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i32 0, metadata !3164, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i64 8, metadata !3165, metadata !DIExpression()), !dbg !3184
  store i64 0, ptr %11, align 8, !dbg !3186
  call void @llvm.dbg.value(metadata ptr %10, metadata !830, metadata !DIExpression(DW_OP_deref)), !dbg !3174
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !3187
  %66 = icmp eq i64 %65, 3, !dbg !3188
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !830, metadata !DIExpression()), !dbg !3174
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !3189
  %70 = icmp eq i32 %29, 9, !dbg !3189
  %71 = select i1 %70, ptr @.str.10.111, ptr @.str.12.112, !dbg !3189
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !3189
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !3190
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !3190
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !3068, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %74, metadata !3067, metadata !DIExpression()), !dbg !3122
  %76 = and i8 %37, 1, !dbg !3191
  %77 = icmp eq i8 %76, 0, !dbg !3191
  br i1 %77, label %78, label %93, !dbg !3192

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !3079, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 0, metadata !3070, metadata !DIExpression()), !dbg !3122
  %79 = load i8, ptr %74, align 1, !dbg !3194, !tbaa !1136
  %80 = icmp eq i8 %79, 0, !dbg !3196
  br i1 %80, label %93, label %81, !dbg !3196

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !3079, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %84, metadata !3070, metadata !DIExpression()), !dbg !3122
  %85 = icmp ult i64 %84, %40, !dbg !3197
  br i1 %85, label %86, label %88, !dbg !3200

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3197
  store i8 %82, ptr %87, align 1, !dbg !3197, !tbaa !1136
  br label %88, !dbg !3197

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3200
  call void @llvm.dbg.value(metadata i64 %89, metadata !3070, metadata !DIExpression()), !dbg !3122
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3201
  call void @llvm.dbg.value(metadata ptr %90, metadata !3079, metadata !DIExpression()), !dbg !3193
  %91 = load i8, ptr %90, align 1, !dbg !3194, !tbaa !1136
  %92 = icmp eq i8 %91, 0, !dbg !3196
  br i1 %92, label %93, label %81, !dbg !3196, !llvm.loop !3202

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3204
  call void @llvm.dbg.value(metadata i64 %94, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 1, metadata !3074, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %75, metadata !3072, metadata !DIExpression()), !dbg !3122
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !3205
  call void @llvm.dbg.value(metadata i64 %95, metadata !3073, metadata !DIExpression()), !dbg !3122
  br label %115, !dbg !3206

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !3074, metadata !DIExpression()), !dbg !3122
  br label %97, !dbg !3207

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !3122
  call void @llvm.dbg.value(metadata i8 %98, metadata !3074, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 1, metadata !3075, metadata !DIExpression()), !dbg !3122
  br label %99, !dbg !3208

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !3130
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !3122
  call void @llvm.dbg.value(metadata i8 %101, metadata !3075, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %100, metadata !3074, metadata !DIExpression()), !dbg !3122
  %102 = and i8 %101, 1, !dbg !3209
  %103 = icmp eq i8 %102, 0, !dbg !3209
  %104 = select i1 %103, i8 1, i8 %100, !dbg !3211
  br label %105, !dbg !3211

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !3122
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !3125
  call void @llvm.dbg.value(metadata i8 %107, metadata !3075, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %106, metadata !3074, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 2, metadata !3064, metadata !DIExpression()), !dbg !3122
  %108 = and i8 %107, 1, !dbg !3212
  %109 = icmp eq i8 %108, 0, !dbg !3212
  br i1 %109, label %110, label %115, !dbg !3214

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !3215
  br i1 %111, label %115, label %112, !dbg !3218

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !3215, !tbaa !1136
  br label %115, !dbg !3215

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !3075, metadata !DIExpression()), !dbg !3122
  br label %115, !dbg !3219

114:                                              ; preds = %28
  call void @abort() #39, !dbg !3220
  unreachable, !dbg !3220

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !3204
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.111, %45 ], [ @.str.10.111, %47 ], [ @.str.10.111, %42 ], [ %34, %28 ], [ @.str.12.112, %110 ], [ @.str.12.112, %112 ], [ @.str.12.112, %105 ], [ @.str.10.111, %41 ], !dbg !3122
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !3122
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !3122
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !3122
  call void @llvm.dbg.value(metadata i8 %123, metadata !3075, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %122, metadata !3074, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %121, metadata !3073, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %120, metadata !3072, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %119, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %118, metadata !3068, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %117, metadata !3067, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 %116, metadata !3064, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 0, metadata !3084, metadata !DIExpression()), !dbg !3221
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
  br label %138, !dbg !3222

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !3204
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !3127
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !3131
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !3132
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !3223
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !3224
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !3061, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %145, metadata !3084, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8 %144, metadata !3078, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %143, metadata !3077, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %142, metadata !3076, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %141, metadata !3071, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %140, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %139, metadata !3063, metadata !DIExpression()), !dbg !3122
  %147 = icmp eq i64 %139, -1, !dbg !3225
  br i1 %147, label %148, label %152, !dbg !3226

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3227
  %150 = load i8, ptr %149, align 1, !dbg !3227, !tbaa !1136
  %151 = icmp eq i8 %150, 0, !dbg !3228
  br i1 %151, label %627, label %154, !dbg !3229

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3230
  br i1 %153, label %627, label %154, !dbg !3229

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !3086, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 0, metadata !3089, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 0, metadata !3090, metadata !DIExpression()), !dbg !3231
  br i1 %129, label %155, label %170, !dbg !3232

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !3234
  %157 = select i1 %147, i1 %130, i1 false, !dbg !3235
  br i1 %157, label %158, label %160, !dbg !3235

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %159, metadata !3063, metadata !DIExpression()), !dbg !3122
  br label %160, !dbg !3237

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3237
  call void @llvm.dbg.value(metadata i64 %161, metadata !3063, metadata !DIExpression()), !dbg !3122
  %162 = icmp ugt i64 %156, %161, !dbg !3238
  br i1 %162, label %170, label %163, !dbg !3239

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3240
  call void @llvm.dbg.value(metadata ptr %164, metadata !3241, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata ptr %120, metadata !3244, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %121, metadata !3245, metadata !DIExpression()), !dbg !3246
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !3248
  %166 = icmp ne i32 %165, 0, !dbg !3249
  %167 = select i1 %166, i1 true, i1 %132, !dbg !3250
  %168 = xor i1 %166, true, !dbg !3250
  %169 = zext i1 %168 to i8, !dbg !3250
  br i1 %167, label %170, label %688, !dbg !3250

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3231
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3231
  call void @llvm.dbg.value(metadata i8 %173, metadata !3086, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %171, metadata !3063, metadata !DIExpression()), !dbg !3122
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3251
  %175 = load i8, ptr %174, align 1, !dbg !3251, !tbaa !1136
  call void @llvm.dbg.value(metadata i8 %175, metadata !3091, metadata !DIExpression()), !dbg !3231
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
  ], !dbg !3252

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !3253

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !3254

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !3089, metadata !DIExpression()), !dbg !3231
  %179 = and i8 %144, 1, !dbg !3258
  %180 = icmp eq i8 %179, 0, !dbg !3258
  %181 = select i1 %133, i1 %180, i1 false, !dbg !3258
  br i1 %181, label %182, label %198, !dbg !3258

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3260
  br i1 %183, label %184, label %186, !dbg !3264

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3260
  store i8 39, ptr %185, align 1, !dbg !3260, !tbaa !1136
  br label %186, !dbg !3260

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3264
  call void @llvm.dbg.value(metadata i64 %187, metadata !3070, metadata !DIExpression()), !dbg !3122
  %188 = icmp ult i64 %187, %146, !dbg !3265
  br i1 %188, label %189, label %191, !dbg !3268

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3265
  store i8 36, ptr %190, align 1, !dbg !3265, !tbaa !1136
  br label %191, !dbg !3265

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3268
  call void @llvm.dbg.value(metadata i64 %192, metadata !3070, metadata !DIExpression()), !dbg !3122
  %193 = icmp ult i64 %192, %146, !dbg !3269
  br i1 %193, label %194, label %196, !dbg !3272

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3269
  store i8 39, ptr %195, align 1, !dbg !3269, !tbaa !1136
  br label %196, !dbg !3269

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3272
  call void @llvm.dbg.value(metadata i64 %197, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 1, metadata !3078, metadata !DIExpression()), !dbg !3122
  br label %198, !dbg !3273

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !3122
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !3122
  call void @llvm.dbg.value(metadata i8 %200, metadata !3078, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %199, metadata !3070, metadata !DIExpression()), !dbg !3122
  %201 = icmp ult i64 %199, %146, !dbg !3274
  br i1 %201, label %202, label %204, !dbg !3277

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3274
  store i8 92, ptr %203, align 1, !dbg !3274, !tbaa !1136
  br label %204, !dbg !3274

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3277
  call void @llvm.dbg.value(metadata i64 %205, metadata !3070, metadata !DIExpression()), !dbg !3122
  br i1 %126, label %206, label %491, !dbg !3278

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3280
  %208 = icmp ult i64 %207, %171, !dbg !3281
  br i1 %208, label %209, label %480, !dbg !3282

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3283
  %211 = load i8, ptr %210, align 1, !dbg !3283, !tbaa !1136
  %212 = add i8 %211, -48, !dbg !3284
  %213 = icmp ult i8 %212, 10, !dbg !3284
  br i1 %213, label %214, label %480, !dbg !3284

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3285
  br i1 %215, label %216, label %218, !dbg !3289

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3285
  store i8 48, ptr %217, align 1, !dbg !3285, !tbaa !1136
  br label %218, !dbg !3285

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %219, metadata !3070, metadata !DIExpression()), !dbg !3122
  %220 = icmp ult i64 %219, %146, !dbg !3290
  br i1 %220, label %221, label %223, !dbg !3293

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3290
  store i8 48, ptr %222, align 1, !dbg !3290, !tbaa !1136
  br label %223, !dbg !3290

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3293
  call void @llvm.dbg.value(metadata i64 %224, metadata !3070, metadata !DIExpression()), !dbg !3122
  br label %480, !dbg !3294

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !3295

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3296

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !3297

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !3299

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3301
  %231 = icmp ult i64 %230, %171, !dbg !3302
  br i1 %231, label %232, label %480, !dbg !3303

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !3304
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !3305
  %235 = load i8, ptr %234, align 1, !dbg !3305, !tbaa !1136
  %236 = icmp eq i8 %235, 63, !dbg !3306
  br i1 %236, label %237, label %480, !dbg !3307

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3308
  %239 = load i8, ptr %238, align 1, !dbg !3308, !tbaa !1136
  %240 = sext i8 %239 to i32, !dbg !3308
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
  ], !dbg !3309

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !3310

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !3091, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %230, metadata !3084, metadata !DIExpression()), !dbg !3221
  %243 = icmp ult i64 %140, %146, !dbg !3312
  br i1 %243, label %244, label %246, !dbg !3315

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3312
  store i8 63, ptr %245, align 1, !dbg !3312, !tbaa !1136
  br label %246, !dbg !3312

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !3315
  call void @llvm.dbg.value(metadata i64 %247, metadata !3070, metadata !DIExpression()), !dbg !3122
  %248 = icmp ult i64 %247, %146, !dbg !3316
  br i1 %248, label %249, label %251, !dbg !3319

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !3316
  store i8 34, ptr %250, align 1, !dbg !3316, !tbaa !1136
  br label %251, !dbg !3316

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !3319
  call void @llvm.dbg.value(metadata i64 %252, metadata !3070, metadata !DIExpression()), !dbg !3122
  %253 = icmp ult i64 %252, %146, !dbg !3320
  br i1 %253, label %254, label %256, !dbg !3323

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !3320
  store i8 34, ptr %255, align 1, !dbg !3320, !tbaa !1136
  br label %256, !dbg !3320

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !3323
  call void @llvm.dbg.value(metadata i64 %257, metadata !3070, metadata !DIExpression()), !dbg !3122
  %258 = icmp ult i64 %257, %146, !dbg !3324
  br i1 %258, label %259, label %261, !dbg !3327

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !3324
  store i8 63, ptr %260, align 1, !dbg !3324, !tbaa !1136
  br label %261, !dbg !3324

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !3327
  call void @llvm.dbg.value(metadata i64 %262, metadata !3070, metadata !DIExpression()), !dbg !3122
  br label %480, !dbg !3328

263:                                              ; preds = %170
  br label %274, !dbg !3329

264:                                              ; preds = %170
  br label %274, !dbg !3330

265:                                              ; preds = %170
  br label %272, !dbg !3331

266:                                              ; preds = %170
  br label %272, !dbg !3332

267:                                              ; preds = %170
  br label %274, !dbg !3333

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !3334

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !3335

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !3338

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !3340

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !3341
  call void @llvm.dbg.label(metadata !3116), !dbg !3342
  br i1 %134, label %274, label %670, !dbg !3343

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !3341
  call void @llvm.dbg.label(metadata !3118), !dbg !3345
  br i1 %125, label %535, label %491, !dbg !3346

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !3347

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !3348, !tbaa !1136
  %279 = icmp eq i8 %278, 0, !dbg !3350
  br i1 %279, label %280, label %480, !dbg !3351

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !3352
  br i1 %281, label %282, label %480, !dbg !3354

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !3090, metadata !DIExpression()), !dbg !3231
  br label %283, !dbg !3355

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !3231
  call void @llvm.dbg.value(metadata i8 %284, metadata !3090, metadata !DIExpression()), !dbg !3231
  br i1 %134, label %480, label %670, !dbg !3356

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !3076, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 1, metadata !3090, metadata !DIExpression()), !dbg !3231
  br i1 %133, label %286, label %480, !dbg !3358

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !3359

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !3362
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !3364
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !3364
  %292 = select i1 %290, i64 %146, i64 0, !dbg !3364
  call void @llvm.dbg.value(metadata i64 %292, metadata !3061, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %291, metadata !3071, metadata !DIExpression()), !dbg !3122
  %293 = icmp ult i64 %140, %292, !dbg !3365
  br i1 %293, label %294, label %296, !dbg !3368

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3365
  store i8 39, ptr %295, align 1, !dbg !3365, !tbaa !1136
  br label %296, !dbg !3365

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !3368
  call void @llvm.dbg.value(metadata i64 %297, metadata !3070, metadata !DIExpression()), !dbg !3122
  %298 = icmp ult i64 %297, %292, !dbg !3369
  br i1 %298, label %299, label %301, !dbg !3372

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !3369
  store i8 92, ptr %300, align 1, !dbg !3369, !tbaa !1136
  br label %301, !dbg !3369

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !3372
  call void @llvm.dbg.value(metadata i64 %302, metadata !3070, metadata !DIExpression()), !dbg !3122
  %303 = icmp ult i64 %302, %292, !dbg !3373
  br i1 %303, label %304, label %306, !dbg !3376

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !3373
  store i8 39, ptr %305, align 1, !dbg !3373, !tbaa !1136
  br label %306, !dbg !3373

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !3376
  call void @llvm.dbg.value(metadata i64 %307, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 0, metadata !3078, metadata !DIExpression()), !dbg !3122
  br label %480, !dbg !3377

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !3378

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !3092, metadata !DIExpression()), !dbg !3379
  %310 = tail call ptr @__ctype_b_loc() #40, !dbg !3380
  %311 = load ptr, ptr %310, align 8, !dbg !3380, !tbaa !1057
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !3380
  %314 = load i16, ptr %313, align 2, !dbg !3380, !tbaa !1168
  %315 = lshr i16 %314, 14, !dbg !3382
  %316 = trunc i16 %315 to i8, !dbg !3382
  %317 = and i8 %316, 1, !dbg !3382
  call void @llvm.dbg.value(metadata i8 %317, metadata !3095, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 %171, metadata !3063, metadata !DIExpression()), !dbg !3122
  %318 = icmp eq i8 %317, 0, !dbg !3383
  call void @llvm.dbg.value(metadata i1 %318, metadata !3090, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3231
  br label %368, !dbg !3384

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !3385
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3096, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata ptr %14, metadata !3153, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata ptr %14, metadata !3161, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i32 0, metadata !3164, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i64 8, metadata !3165, metadata !DIExpression()), !dbg !3389
  store i64 0, ptr %14, align 8, !dbg !3391
  call void @llvm.dbg.value(metadata i64 0, metadata !3092, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i8 1, metadata !3095, metadata !DIExpression()), !dbg !3379
  %320 = icmp eq i64 %171, -1, !dbg !3392
  br i1 %320, label %321, label %323, !dbg !3394

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !3395
  call void @llvm.dbg.value(metadata i64 %322, metadata !3063, metadata !DIExpression()), !dbg !3122
  br label %323, !dbg !3396

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !3231
  call void @llvm.dbg.value(metadata i64 %324, metadata !3063, metadata !DIExpression()), !dbg !3122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !3397
  %325 = sub i64 %324, %145, !dbg !3398
  call void @llvm.dbg.value(metadata ptr %15, metadata !3099, metadata !DIExpression(DW_OP_deref)), !dbg !3399
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #37, !dbg !3400
  call void @llvm.dbg.value(metadata i64 %326, metadata !3103, metadata !DIExpression()), !dbg !3399
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !3401

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !3092, metadata !DIExpression()), !dbg !3379
  %328 = icmp ugt i64 %324, %145, !dbg !3402
  br i1 %328, label %331, label %329, !dbg !3404

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !3095, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 0, metadata !3092, metadata !DIExpression()), !dbg !3379
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !3405
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !3406
  call void @llvm.dbg.value(metadata i64 %324, metadata !3063, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i1 true, metadata !3090, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3231
  br label %368, !dbg !3384

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !3095, metadata !DIExpression()), !dbg !3379
  br label %360, !dbg !3407

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !3092, metadata !DIExpression()), !dbg !3379
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !3409
  %335 = load i8, ptr %334, align 1, !dbg !3409, !tbaa !1136
  %336 = icmp eq i8 %335, 0, !dbg !3404
  br i1 %336, label %363, label %337, !dbg !3410

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !3411
  call void @llvm.dbg.value(metadata i64 %338, metadata !3092, metadata !DIExpression()), !dbg !3379
  %339 = add i64 %338, %145, !dbg !3412
  %340 = icmp eq i64 %338, %325, !dbg !3402
  br i1 %340, label %363, label %331, !dbg !3404, !llvm.loop !3413

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !3414
  %344 = and i1 %343, %133, !dbg !3414
  call void @llvm.dbg.value(metadata i64 1, metadata !3104, metadata !DIExpression()), !dbg !3415
  br i1 %344, label %345, label %354, !dbg !3414

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !3104, metadata !DIExpression()), !dbg !3415
  %347 = add i64 %346, %145, !dbg !3416
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !3418
  %349 = load i8, ptr %348, align 1, !dbg !3418, !tbaa !1136
  %350 = sext i8 %349 to i32, !dbg !3418
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !3419

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !3420
  call void @llvm.dbg.value(metadata i64 %352, metadata !3104, metadata !DIExpression()), !dbg !3415
  %353 = icmp eq i64 %352, %326, !dbg !3421
  br i1 %353, label %354, label %345, !dbg !3422, !llvm.loop !3423

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !3425, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 %355, metadata !3099, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i32 %355, metadata !3427, metadata !DIExpression()), !dbg !3430
  %356 = call i32 @iswprint(i32 noundef %355) #37, !dbg !3432
  %357 = icmp ne i32 %356, 0, !dbg !3433
  %358 = zext i1 %357 to i8, !dbg !3434
  call void @llvm.dbg.value(metadata i8 %358, metadata !3095, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 %326, metadata !3092, metadata !DIExpression()), !dbg !3379
  br label %363, !dbg !3435

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !3095, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 0, metadata !3092, metadata !DIExpression()), !dbg !3379
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !3405
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !3406
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !3095, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 0, metadata !3092, metadata !DIExpression()), !dbg !3379
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !3405
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !3406
  call void @llvm.dbg.value(metadata i64 %324, metadata !3063, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i1 %361, metadata !3090, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3231
  br label %368, !dbg !3384

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !3095, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 %364, metadata !3092, metadata !DIExpression()), !dbg !3379
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !3405
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !3406
  call void @llvm.dbg.value(metadata i64 %324, metadata !3063, metadata !DIExpression()), !dbg !3122
  %366 = icmp eq i8 %365, 0, !dbg !3383
  call void @llvm.dbg.value(metadata i1 %366, metadata !3090, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3231
  %367 = icmp ugt i64 %364, 1, !dbg !3436
  br i1 %367, label %374, label %368, !dbg !3384

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !3437
  br i1 %373, label %374, label %480, !dbg !3437

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !3438
  call void @llvm.dbg.value(metadata i64 %379, metadata !3112, metadata !DIExpression()), !dbg !3439
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !3440

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !3122
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !3223
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !3221
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !3231
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !3441
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !3231
  call void @llvm.dbg.value(metadata i8 %387, metadata !3091, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 %386, metadata !3089, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 %385, metadata !3086, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %384, metadata !3084, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8 %383, metadata !3078, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %382, metadata !3070, metadata !DIExpression()), !dbg !3122
  br i1 %380, label %388, label %434, !dbg !3442

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !3447

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !3089, metadata !DIExpression()), !dbg !3231
  %390 = and i8 %383, 1, !dbg !3450
  %391 = icmp eq i8 %390, 0, !dbg !3450
  %392 = select i1 %133, i1 %391, i1 false, !dbg !3450
  br i1 %392, label %393, label %409, !dbg !3450

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !3452
  br i1 %394, label %395, label %397, !dbg !3456

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3452
  store i8 39, ptr %396, align 1, !dbg !3452, !tbaa !1136
  br label %397, !dbg !3452

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !3456
  call void @llvm.dbg.value(metadata i64 %398, metadata !3070, metadata !DIExpression()), !dbg !3122
  %399 = icmp ult i64 %398, %146, !dbg !3457
  br i1 %399, label %400, label %402, !dbg !3460

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !3457
  store i8 36, ptr %401, align 1, !dbg !3457, !tbaa !1136
  br label %402, !dbg !3457

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !3460
  call void @llvm.dbg.value(metadata i64 %403, metadata !3070, metadata !DIExpression()), !dbg !3122
  %404 = icmp ult i64 %403, %146, !dbg !3461
  br i1 %404, label %405, label %407, !dbg !3464

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !3461
  store i8 39, ptr %406, align 1, !dbg !3461, !tbaa !1136
  br label %407, !dbg !3461

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !3464
  call void @llvm.dbg.value(metadata i64 %408, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 1, metadata !3078, metadata !DIExpression()), !dbg !3122
  br label %409, !dbg !3465

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !3122
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !3122
  call void @llvm.dbg.value(metadata i8 %411, metadata !3078, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %410, metadata !3070, metadata !DIExpression()), !dbg !3122
  %412 = icmp ult i64 %410, %146, !dbg !3466
  br i1 %412, label %413, label %415, !dbg !3469

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !3466
  store i8 92, ptr %414, align 1, !dbg !3466, !tbaa !1136
  br label %415, !dbg !3466

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !3469
  call void @llvm.dbg.value(metadata i64 %416, metadata !3070, metadata !DIExpression()), !dbg !3122
  %417 = icmp ult i64 %416, %146, !dbg !3470
  br i1 %417, label %418, label %422, !dbg !3473

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !3470
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !3470
  store i8 %420, ptr %421, align 1, !dbg !3470, !tbaa !1136
  br label %422, !dbg !3470

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !3473
  call void @llvm.dbg.value(metadata i64 %423, metadata !3070, metadata !DIExpression()), !dbg !3122
  %424 = icmp ult i64 %423, %146, !dbg !3474
  br i1 %424, label %425, label %430, !dbg !3477

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !3474
  %428 = or i8 %427, 48, !dbg !3474
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !3474
  store i8 %428, ptr %429, align 1, !dbg !3474, !tbaa !1136
  br label %430, !dbg !3474

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !3477
  call void @llvm.dbg.value(metadata i64 %431, metadata !3070, metadata !DIExpression()), !dbg !3122
  %432 = and i8 %387, 7, !dbg !3478
  %433 = or i8 %432, 48, !dbg !3479
  call void @llvm.dbg.value(metadata i8 %433, metadata !3091, metadata !DIExpression()), !dbg !3231
  br label %443, !dbg !3480

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !3481
  %436 = icmp eq i8 %435, 0, !dbg !3481
  br i1 %436, label %443, label %437, !dbg !3483

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !3484
  br i1 %438, label %439, label %441, !dbg !3488

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3484
  store i8 92, ptr %440, align 1, !dbg !3484, !tbaa !1136
  br label %441, !dbg !3484

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !3488
  call void @llvm.dbg.value(metadata i64 %442, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 0, metadata !3086, metadata !DIExpression()), !dbg !3231
  br label %443, !dbg !3489

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !3122
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !3223
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !3231
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !3231
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !3231
  call void @llvm.dbg.value(metadata i8 %448, metadata !3091, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 %447, metadata !3089, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 %446, metadata !3086, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 %445, metadata !3078, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %444, metadata !3070, metadata !DIExpression()), !dbg !3122
  %449 = add i64 %384, 1, !dbg !3490
  %450 = icmp ugt i64 %379, %449, !dbg !3492
  br i1 %450, label %451, label %478, !dbg !3493

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !3494
  %453 = icmp ne i8 %452, 0, !dbg !3494
  %454 = and i8 %447, 1, !dbg !3494
  %455 = icmp eq i8 %454, 0, !dbg !3494
  %456 = select i1 %453, i1 %455, i1 false, !dbg !3494
  br i1 %456, label %457, label %468, !dbg !3494

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !3497
  br i1 %458, label %459, label %461, !dbg !3501

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !3497
  store i8 39, ptr %460, align 1, !dbg !3497, !tbaa !1136
  br label %461, !dbg !3497

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !3501
  call void @llvm.dbg.value(metadata i64 %462, metadata !3070, metadata !DIExpression()), !dbg !3122
  %463 = icmp ult i64 %462, %146, !dbg !3502
  br i1 %463, label %464, label %466, !dbg !3505

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !3502
  store i8 39, ptr %465, align 1, !dbg !3502, !tbaa !1136
  br label %466, !dbg !3502

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !3505
  call void @llvm.dbg.value(metadata i64 %467, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 0, metadata !3078, metadata !DIExpression()), !dbg !3122
  br label %468, !dbg !3506

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !3507
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !3122
  call void @llvm.dbg.value(metadata i8 %470, metadata !3078, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %469, metadata !3070, metadata !DIExpression()), !dbg !3122
  %471 = icmp ult i64 %469, %146, !dbg !3508
  br i1 %471, label %472, label %474, !dbg !3511

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !3508
  store i8 %448, ptr %473, align 1, !dbg !3508, !tbaa !1136
  br label %474, !dbg !3508

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !3511
  call void @llvm.dbg.value(metadata i64 %475, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %449, metadata !3084, metadata !DIExpression()), !dbg !3221
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !3512
  %477 = load i8, ptr %476, align 1, !dbg !3512, !tbaa !1136
  call void @llvm.dbg.value(metadata i8 %477, metadata !3091, metadata !DIExpression()), !dbg !3231
  br label %381, !dbg !3513, !llvm.loop !3514

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !3231
  call void @llvm.dbg.value(metadata i8 %448, metadata !3091, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 %479, metadata !3090, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 %447, metadata !3089, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 %446, metadata !3086, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %384, metadata !3084, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8 %445, metadata !3078, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %444, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %378, metadata !3063, metadata !DIExpression()), !dbg !3122
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !3517
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !3122
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !3127
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !3122
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !3122
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !3221
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !3231
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !3231
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !3231
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !3061, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %489, metadata !3091, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 %488, metadata !3090, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 %487, metadata !3089, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 %173, metadata !3086, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %486, metadata !3084, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8 %485, metadata !3078, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %484, metadata !3076, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %483, metadata !3071, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %482, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %481, metadata !3063, metadata !DIExpression()), !dbg !3122
  br i1 %127, label %502, label %491, !dbg !3518

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
  br i1 %137, label %503, label %524, !dbg !3520

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !3521

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
  %514 = lshr i8 %505, 5, !dbg !3522
  %515 = zext i8 %514 to i64, !dbg !3522
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !3523
  %517 = load i32, ptr %516, align 4, !dbg !3523, !tbaa !1127
  %518 = and i8 %505, 31, !dbg !3524
  %519 = zext i8 %518 to i32, !dbg !3524
  %520 = shl nuw i32 1, %519, !dbg !3525
  %521 = and i32 %517, %520, !dbg !3525
  %522 = icmp eq i32 %521, 0, !dbg !3525
  %523 = and i1 %172, %522, !dbg !3526
  br i1 %523, label %573, label %535, !dbg !3526

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
  br i1 %172, label %573, label %535, !dbg !3527

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !3517
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !3122
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !3127
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !3131
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !3223
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !3528
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !3231
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !3231
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !3061, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %543, metadata !3091, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 %542, metadata !3090, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %541, metadata !3084, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8 %540, metadata !3078, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %539, metadata !3076, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %538, metadata !3071, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %537, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %536, metadata !3063, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.label(metadata !3119), !dbg !3529
  br i1 %132, label %545, label %674, !dbg !3530

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !3089, metadata !DIExpression()), !dbg !3231
  %546 = and i8 %540, 1, !dbg !3532
  %547 = icmp eq i8 %546, 0, !dbg !3532
  %548 = select i1 %133, i1 %547, i1 false, !dbg !3532
  br i1 %548, label %549, label %565, !dbg !3532

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !3534
  br i1 %550, label %551, label %553, !dbg !3538

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !3534
  store i8 39, ptr %552, align 1, !dbg !3534, !tbaa !1136
  br label %553, !dbg !3534

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !3538
  call void @llvm.dbg.value(metadata i64 %554, metadata !3070, metadata !DIExpression()), !dbg !3122
  %555 = icmp ult i64 %554, %544, !dbg !3539
  br i1 %555, label %556, label %558, !dbg !3542

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !3539
  store i8 36, ptr %557, align 1, !dbg !3539, !tbaa !1136
  br label %558, !dbg !3539

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !3542
  call void @llvm.dbg.value(metadata i64 %559, metadata !3070, metadata !DIExpression()), !dbg !3122
  %560 = icmp ult i64 %559, %544, !dbg !3543
  br i1 %560, label %561, label %563, !dbg !3546

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !3543
  store i8 39, ptr %562, align 1, !dbg !3543, !tbaa !1136
  br label %563, !dbg !3543

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3546
  call void @llvm.dbg.value(metadata i64 %564, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 1, metadata !3078, metadata !DIExpression()), !dbg !3122
  br label %565, !dbg !3547

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !3231
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !3122
  call void @llvm.dbg.value(metadata i8 %567, metadata !3078, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %566, metadata !3070, metadata !DIExpression()), !dbg !3122
  %568 = icmp ult i64 %566, %544, !dbg !3548
  br i1 %568, label %569, label %571, !dbg !3551

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3548
  store i8 92, ptr %570, align 1, !dbg !3548, !tbaa !1136
  br label %571, !dbg !3548

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3551
  call void @llvm.dbg.value(metadata i64 %544, metadata !3061, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %543, metadata !3091, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 %542, metadata !3090, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 1, metadata !3089, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %541, metadata !3084, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8 %567, metadata !3078, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %539, metadata !3076, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %538, metadata !3071, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %572, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %536, metadata !3063, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.label(metadata !3120), !dbg !3552
  br label %600, !dbg !3553

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !3517
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !3122
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !3127
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !3131
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !3223
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !3528
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !3231
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !3231
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3556
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !3061, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %582, metadata !3091, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 %581, metadata !3090, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8 %580, metadata !3089, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %579, metadata !3084, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8 %578, metadata !3078, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %577, metadata !3076, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %576, metadata !3071, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %575, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %574, metadata !3063, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.label(metadata !3120), !dbg !3552
  %584 = and i8 %578, 1, !dbg !3553
  %585 = icmp ne i8 %584, 0, !dbg !3553
  %586 = and i8 %580, 1, !dbg !3553
  %587 = icmp eq i8 %586, 0, !dbg !3553
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3553
  br i1 %588, label %589, label %600, !dbg !3553

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3557
  br i1 %590, label %591, label %593, !dbg !3561

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3557
  store i8 39, ptr %592, align 1, !dbg !3557, !tbaa !1136
  br label %593, !dbg !3557

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3561
  call void @llvm.dbg.value(metadata i64 %594, metadata !3070, metadata !DIExpression()), !dbg !3122
  %595 = icmp ult i64 %594, %583, !dbg !3562
  br i1 %595, label %596, label %598, !dbg !3565

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3562
  store i8 39, ptr %597, align 1, !dbg !3562, !tbaa !1136
  br label %598, !dbg !3562

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3565
  call void @llvm.dbg.value(metadata i64 %599, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 0, metadata !3078, metadata !DIExpression()), !dbg !3122
  br label %600, !dbg !3566

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !3231
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !3122
  call void @llvm.dbg.value(metadata i8 %609, metadata !3078, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %608, metadata !3070, metadata !DIExpression()), !dbg !3122
  %610 = icmp ult i64 %608, %601, !dbg !3567
  br i1 %610, label %611, label %613, !dbg !3570

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3567
  store i8 %602, ptr %612, align 1, !dbg !3567, !tbaa !1136
  br label %613, !dbg !3567

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %614, metadata !3070, metadata !DIExpression()), !dbg !3122
  %615 = icmp eq i8 %603, 0, !dbg !3571
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3573
  call void @llvm.dbg.value(metadata i8 %616, metadata !3077, metadata !DIExpression()), !dbg !3122
  br label %617, !dbg !3574

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !3517
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !3122
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !3127
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !3131
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !3132
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !3223
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !3528
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !3061, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %624, metadata !3084, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8 %623, metadata !3078, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %622, metadata !3077, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %621, metadata !3076, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %620, metadata !3071, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %619, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %618, metadata !3063, metadata !DIExpression()), !dbg !3122
  %626 = add i64 %624, 1, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %626, metadata !3084, metadata !DIExpression()), !dbg !3221
  br label %138, !dbg !3576, !llvm.loop !3577

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !3061, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %143, metadata !3077, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 %142, metadata !3076, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %141, metadata !3071, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %140, metadata !3070, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %139, metadata !3063, metadata !DIExpression()), !dbg !3122
  %628 = icmp eq i64 %140, 0, !dbg !3579
  %629 = and i1 %133, %628, !dbg !3581
  %630 = xor i1 %629, true, !dbg !3581
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3581
  br i1 %631, label %632, label %670, !dbg !3581

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3582
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3582
  br i1 %636, label %637, label %646, !dbg !3582

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3584
  %639 = icmp eq i8 %638, 0, !dbg !3584
  br i1 %639, label %642, label %640, !dbg !3587

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3588
  br label %694, !dbg !3589

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3590
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3592
  br i1 %645, label %28, label %646, !dbg !3592

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3593
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3595
  br i1 %649, label %650, label %665, !dbg !3595

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !3072, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %140, metadata !3070, metadata !DIExpression()), !dbg !3122
  %651 = load i8, ptr %120, align 1, !dbg !3596, !tbaa !1136
  %652 = icmp eq i8 %651, 0, !dbg !3599
  br i1 %652, label %665, label %653, !dbg !3599

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !3072, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %656, metadata !3070, metadata !DIExpression()), !dbg !3122
  %657 = icmp ult i64 %656, %146, !dbg !3600
  br i1 %657, label %658, label %660, !dbg !3603

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3600
  store i8 %654, ptr %659, align 1, !dbg !3600, !tbaa !1136
  br label %660, !dbg !3600

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %661, metadata !3070, metadata !DIExpression()), !dbg !3122
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3604
  call void @llvm.dbg.value(metadata ptr %662, metadata !3072, metadata !DIExpression()), !dbg !3122
  %663 = load i8, ptr %662, align 1, !dbg !3596, !tbaa !1136
  %664 = icmp eq i8 %663, 0, !dbg !3599
  br i1 %664, label %665, label %653, !dbg !3599, !llvm.loop !3605

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !3204
  call void @llvm.dbg.value(metadata i64 %666, metadata !3070, metadata !DIExpression()), !dbg !3122
  %667 = icmp ult i64 %666, %146, !dbg !3607
  br i1 %667, label %668, label %694, !dbg !3609

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3610
  store i8 0, ptr %669, align 1, !dbg !3611, !tbaa !1136
  br label %694, !dbg !3610

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !3121), !dbg !3612
  %672 = icmp eq i8 %124, 0, !dbg !3613
  %673 = select i1 %672, i32 2, i32 4, !dbg !3613
  br label %684, !dbg !3613

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3613
  %678 = select i1 %677, i32 2, i32 4, !dbg !3613
  br label %679, !dbg !3615

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !3121), !dbg !3612
  %683 = icmp eq i32 %116, 2, !dbg !3615
  br i1 %683, label %684, label %688, !dbg !3613

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3613

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !3064, metadata !DIExpression()), !dbg !3122
  %692 = and i32 %5, -3, !dbg !3616
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3617
  br label %694, !dbg !3618

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3619
}

; Function Attrs: nounwind
declare !dbg !3620 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3623 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3626 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3627 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3631, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i64 %1, metadata !3632, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata ptr %2, metadata !3633, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata ptr %0, metadata !3635, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 %1, metadata !3640, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata ptr null, metadata !3641, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata ptr %2, metadata !3642, metadata !DIExpression()), !dbg !3648
  %4 = icmp eq ptr %2, null, !dbg !3650
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3650
  call void @llvm.dbg.value(metadata ptr %5, metadata !3643, metadata !DIExpression()), !dbg !3648
  %6 = tail call ptr @__errno_location() #40, !dbg !3651
  %7 = load i32, ptr %6, align 4, !dbg !3651, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 %7, metadata !3644, metadata !DIExpression()), !dbg !3648
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3652
  %9 = load i32, ptr %8, align 4, !dbg !3652, !tbaa !3004
  %10 = or i32 %9, 1, !dbg !3653
  call void @llvm.dbg.value(metadata i32 %10, metadata !3645, metadata !DIExpression()), !dbg !3648
  %11 = load i32, ptr %5, align 8, !dbg !3654, !tbaa !2954
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3655
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3656
  %14 = load ptr, ptr %13, align 8, !dbg !3656, !tbaa !3025
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3657
  %16 = load ptr, ptr %15, align 8, !dbg !3657, !tbaa !3028
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3658
  %18 = add i64 %17, 1, !dbg !3659
  call void @llvm.dbg.value(metadata i64 %18, metadata !3646, metadata !DIExpression()), !dbg !3648
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !3660
  call void @llvm.dbg.value(metadata ptr %19, metadata !3647, metadata !DIExpression()), !dbg !3648
  %20 = load i32, ptr %5, align 8, !dbg !3661, !tbaa !2954
  %21 = load ptr, ptr %13, align 8, !dbg !3662, !tbaa !3025
  %22 = load ptr, ptr %15, align 8, !dbg !3663, !tbaa !3028
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3664
  store i32 %7, ptr %6, align 4, !dbg !3665, !tbaa !1127
  ret ptr %19, !dbg !3666
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3636 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3635, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 %1, metadata !3640, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata ptr %2, metadata !3641, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata ptr %3, metadata !3642, metadata !DIExpression()), !dbg !3667
  %5 = icmp eq ptr %3, null, !dbg !3668
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3668
  call void @llvm.dbg.value(metadata ptr %6, metadata !3643, metadata !DIExpression()), !dbg !3667
  %7 = tail call ptr @__errno_location() #40, !dbg !3669
  %8 = load i32, ptr %7, align 4, !dbg !3669, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 %8, metadata !3644, metadata !DIExpression()), !dbg !3667
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3670
  %10 = load i32, ptr %9, align 4, !dbg !3670, !tbaa !3004
  %11 = icmp eq ptr %2, null, !dbg !3671
  %12 = zext i1 %11 to i32, !dbg !3671
  %13 = or i32 %10, %12, !dbg !3672
  call void @llvm.dbg.value(metadata i32 %13, metadata !3645, metadata !DIExpression()), !dbg !3667
  %14 = load i32, ptr %6, align 8, !dbg !3673, !tbaa !2954
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3674
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3675
  %17 = load ptr, ptr %16, align 8, !dbg !3675, !tbaa !3025
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3676
  %19 = load ptr, ptr %18, align 8, !dbg !3676, !tbaa !3028
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3677
  %21 = add i64 %20, 1, !dbg !3678
  call void @llvm.dbg.value(metadata i64 %21, metadata !3646, metadata !DIExpression()), !dbg !3667
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !3679
  call void @llvm.dbg.value(metadata ptr %22, metadata !3647, metadata !DIExpression()), !dbg !3667
  %23 = load i32, ptr %6, align 8, !dbg !3680, !tbaa !2954
  %24 = load ptr, ptr %16, align 8, !dbg !3681, !tbaa !3025
  %25 = load ptr, ptr %18, align 8, !dbg !3682, !tbaa !3028
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3683
  store i32 %8, ptr %7, align 4, !dbg !3684, !tbaa !1127
  br i1 %11, label %28, label %27, !dbg !3685

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3686, !tbaa !1347
  br label %28, !dbg !3688

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3689
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3690 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3695, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %1, metadata !3692, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 1, metadata !3693, metadata !DIExpression()), !dbg !3697
  %2 = load i32, ptr @nslots, align 4, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 1, metadata !3693, metadata !DIExpression()), !dbg !3697
  %3 = icmp sgt i32 %2, 1, !dbg !3698
  br i1 %3, label %4, label %6, !dbg !3700

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3698
  br label %10, !dbg !3700

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3701
  %8 = load ptr, ptr %7, align 8, !dbg !3701, !tbaa !3703
  %9 = icmp eq ptr %8, @slot0, !dbg !3705
  br i1 %9, label %17, label %16, !dbg !3706

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3693, metadata !DIExpression()), !dbg !3697
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3707
  %13 = load ptr, ptr %12, align 8, !dbg !3707, !tbaa !3703
  tail call void @free(ptr noundef %13) #37, !dbg !3708
  %14 = add nuw nsw i64 %11, 1, !dbg !3709
  call void @llvm.dbg.value(metadata i64 %14, metadata !3693, metadata !DIExpression()), !dbg !3697
  %15 = icmp eq i64 %14, %5, !dbg !3698
  br i1 %15, label %6, label %10, !dbg !3700, !llvm.loop !3710

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !3712
  store i64 256, ptr @slotvec0, align 8, !dbg !3714, !tbaa !3715
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3716, !tbaa !3703
  br label %17, !dbg !3717

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3718
  br i1 %18, label %20, label %19, !dbg !3720

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !3721
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3723, !tbaa !1057
  br label %20, !dbg !3724

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3725, !tbaa !1127
  ret void, !dbg !3726
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3727 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3729, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata ptr %1, metadata !3730, metadata !DIExpression()), !dbg !3731
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3732
  ret ptr %3, !dbg !3733
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3734 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3738, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata ptr %1, metadata !3739, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i64 %2, metadata !3740, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata ptr %3, metadata !3741, metadata !DIExpression()), !dbg !3754
  %6 = tail call ptr @__errno_location() #40, !dbg !3755
  %7 = load i32, ptr %6, align 4, !dbg !3755, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 %7, metadata !3742, metadata !DIExpression()), !dbg !3754
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3756, !tbaa !1057
  call void @llvm.dbg.value(metadata ptr %8, metadata !3743, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3744, metadata !DIExpression()), !dbg !3754
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3757
  br i1 %9, label %10, label %11, !dbg !3757

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !3759
  unreachable, !dbg !3759

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3760, !tbaa !1127
  %13 = icmp sgt i32 %12, %0, !dbg !3761
  br i1 %13, label %32, label %14, !dbg !3762

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3763
  call void @llvm.dbg.value(metadata i1 %15, metadata !3745, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3764
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !3765
  %16 = sext i32 %12 to i64, !dbg !3766
  call void @llvm.dbg.value(metadata i64 %16, metadata !3748, metadata !DIExpression()), !dbg !3764
  store i64 %16, ptr %5, align 8, !dbg !3767, !tbaa !1347
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3768
  %18 = add nuw nsw i32 %0, 1, !dbg !3769
  %19 = sub i32 %18, %12, !dbg !3770
  %20 = sext i32 %19 to i64, !dbg !3771
  call void @llvm.dbg.value(metadata ptr %5, metadata !3748, metadata !DIExpression(DW_OP_deref)), !dbg !3764
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !3772
  call void @llvm.dbg.value(metadata ptr %21, metadata !3743, metadata !DIExpression()), !dbg !3754
  store ptr %21, ptr @slotvec, align 8, !dbg !3773, !tbaa !1057
  br i1 %15, label %22, label %23, !dbg !3774

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3775, !tbaa.struct !3777
  br label %23, !dbg !3778

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3779, !tbaa !1127
  %25 = sext i32 %24 to i64, !dbg !3780
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3780
  %27 = load i64, ptr %5, align 8, !dbg !3781, !tbaa !1347
  call void @llvm.dbg.value(metadata i64 %27, metadata !3748, metadata !DIExpression()), !dbg !3764
  %28 = sub nsw i64 %27, %25, !dbg !3782
  %29 = shl i64 %28, 4, !dbg !3783
  call void @llvm.dbg.value(metadata ptr %26, metadata !3161, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i32 0, metadata !3164, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i64 %29, metadata !3165, metadata !DIExpression()), !dbg !3784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !3786
  %30 = load i64, ptr %5, align 8, !dbg !3787, !tbaa !1347
  call void @llvm.dbg.value(metadata i64 %30, metadata !3748, metadata !DIExpression()), !dbg !3764
  %31 = trunc i64 %30 to i32, !dbg !3787
  store i32 %31, ptr @nslots, align 4, !dbg !3788, !tbaa !1127
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !3789
  br label %32, !dbg !3790

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3754
  call void @llvm.dbg.value(metadata ptr %33, metadata !3743, metadata !DIExpression()), !dbg !3754
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3791
  %36 = load i64, ptr %35, align 8, !dbg !3792, !tbaa !3715
  call void @llvm.dbg.value(metadata i64 %36, metadata !3749, metadata !DIExpression()), !dbg !3793
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3794
  %38 = load ptr, ptr %37, align 8, !dbg !3794, !tbaa !3703
  call void @llvm.dbg.value(metadata ptr %38, metadata !3751, metadata !DIExpression()), !dbg !3793
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3795
  %40 = load i32, ptr %39, align 4, !dbg !3795, !tbaa !3004
  %41 = or i32 %40, 1, !dbg !3796
  call void @llvm.dbg.value(metadata i32 %41, metadata !3752, metadata !DIExpression()), !dbg !3793
  %42 = load i32, ptr %3, align 8, !dbg !3797, !tbaa !2954
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3798
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3799
  %45 = load ptr, ptr %44, align 8, !dbg !3799, !tbaa !3025
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3800
  %47 = load ptr, ptr %46, align 8, !dbg !3800, !tbaa !3028
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3801
  call void @llvm.dbg.value(metadata i64 %48, metadata !3753, metadata !DIExpression()), !dbg !3793
  %49 = icmp ugt i64 %36, %48, !dbg !3802
  br i1 %49, label %60, label %50, !dbg !3804

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3805
  call void @llvm.dbg.value(metadata i64 %51, metadata !3749, metadata !DIExpression()), !dbg !3793
  store i64 %51, ptr %35, align 8, !dbg !3807, !tbaa !3715
  %52 = icmp eq ptr %38, @slot0, !dbg !3808
  br i1 %52, label %54, label %53, !dbg !3810

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !3811
  br label %54, !dbg !3811

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !3812
  call void @llvm.dbg.value(metadata ptr %55, metadata !3751, metadata !DIExpression()), !dbg !3793
  store ptr %55, ptr %37, align 8, !dbg !3813, !tbaa !3703
  %56 = load i32, ptr %3, align 8, !dbg !3814, !tbaa !2954
  %57 = load ptr, ptr %44, align 8, !dbg !3815, !tbaa !3025
  %58 = load ptr, ptr %46, align 8, !dbg !3816, !tbaa !3028
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3817
  br label %60, !dbg !3818

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3793
  call void @llvm.dbg.value(metadata ptr %61, metadata !3751, metadata !DIExpression()), !dbg !3793
  store i32 %7, ptr %6, align 4, !dbg !3819, !tbaa !1127
  ret ptr %61, !dbg !3820
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #24

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3821 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3825, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata ptr %1, metadata !3826, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %2, metadata !3827, metadata !DIExpression()), !dbg !3828
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3829
  ret ptr %4, !dbg !3830
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3831 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3833, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i32 0, metadata !3729, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata ptr %0, metadata !3730, metadata !DIExpression()), !dbg !3835
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3837
  ret ptr %2, !dbg !3838
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3839 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3843, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 %1, metadata !3844, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i32 0, metadata !3825, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata ptr %0, metadata !3826, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i64 %1, metadata !3827, metadata !DIExpression()), !dbg !3846
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3848
  ret ptr %3, !dbg !3849
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3850 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3854, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i32 %1, metadata !3855, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata ptr %2, metadata !3856, metadata !DIExpression()), !dbg !3858
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3859
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3857, metadata !DIExpression()), !dbg !3860
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3861), !dbg !3864
  call void @llvm.dbg.value(metadata i32 %1, metadata !3865, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3870, metadata !DIExpression()), !dbg !3873
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3873, !alias.scope !3861
  %5 = icmp eq i32 %1, 10, !dbg !3874
  br i1 %5, label %6, label %7, !dbg !3876

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3877, !noalias !3861
  unreachable, !dbg !3877

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3878, !tbaa !2954, !alias.scope !3861
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3879
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3880
  ret ptr %8, !dbg !3881
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3882 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3886, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i32 %1, metadata !3887, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata ptr %2, metadata !3888, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i64 %3, metadata !3889, metadata !DIExpression()), !dbg !3891
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3892
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3890, metadata !DIExpression()), !dbg !3893
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3894), !dbg !3897
  call void @llvm.dbg.value(metadata i32 %1, metadata !3865, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3870, metadata !DIExpression()), !dbg !3900
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3900, !alias.scope !3894
  %6 = icmp eq i32 %1, 10, !dbg !3901
  br i1 %6, label %7, label %8, !dbg !3902

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3903, !noalias !3894
  unreachable, !dbg !3903

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3904, !tbaa !2954, !alias.scope !3894
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3905
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3906
  ret ptr %9, !dbg !3907
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3908 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3912, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata ptr %1, metadata !3913, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 0, metadata !3854, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i32 %0, metadata !3855, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata ptr %1, metadata !3856, metadata !DIExpression()), !dbg !3915
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !3917
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3857, metadata !DIExpression()), !dbg !3918
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3919), !dbg !3922
  call void @llvm.dbg.value(metadata i32 %0, metadata !3865, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3870, metadata !DIExpression()), !dbg !3925
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3925, !alias.scope !3919
  %4 = icmp eq i32 %0, 10, !dbg !3926
  br i1 %4, label %5, label %6, !dbg !3927

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !3928, !noalias !3919
  unreachable, !dbg !3928

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3929, !tbaa !2954, !alias.scope !3919
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3930
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !3931
  ret ptr %7, !dbg !3932
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3933 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3937, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata ptr %1, metadata !3938, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i64 %2, metadata !3939, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 0, metadata !3886, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i32 %0, metadata !3887, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata ptr %1, metadata !3888, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i64 %2, metadata !3889, metadata !DIExpression()), !dbg !3941
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3943
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3890, metadata !DIExpression()), !dbg !3944
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3945), !dbg !3948
  call void @llvm.dbg.value(metadata i32 %0, metadata !3865, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3870, metadata !DIExpression()), !dbg !3951
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3951, !alias.scope !3945
  %5 = icmp eq i32 %0, 10, !dbg !3952
  br i1 %5, label %6, label %7, !dbg !3953

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3954, !noalias !3945
  unreachable, !dbg !3954

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3955, !tbaa !2954, !alias.scope !3945
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3956
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3957
  ret ptr %8, !dbg !3958
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3959 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3963, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i64 %1, metadata !3964, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i8 %2, metadata !3965, metadata !DIExpression()), !dbg !3967
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3968
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3966, metadata !DIExpression()), !dbg !3969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3970, !tbaa.struct !3971
  call void @llvm.dbg.value(metadata ptr %4, metadata !2971, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i8 %2, metadata !2972, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i32 1, metadata !2973, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i8 %2, metadata !2974, metadata !DIExpression()), !dbg !3972
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3974
  %6 = lshr i8 %2, 5, !dbg !3975
  %7 = zext i8 %6 to i64, !dbg !3975
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3976
  call void @llvm.dbg.value(metadata ptr %8, metadata !2975, metadata !DIExpression()), !dbg !3972
  %9 = and i8 %2, 31, !dbg !3977
  %10 = zext i8 %9 to i32, !dbg !3977
  call void @llvm.dbg.value(metadata i32 %10, metadata !2977, metadata !DIExpression()), !dbg !3972
  %11 = load i32, ptr %8, align 4, !dbg !3978, !tbaa !1127
  %12 = lshr i32 %11, %10, !dbg !3979
  call void @llvm.dbg.value(metadata i32 %12, metadata !2978, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3972
  %13 = and i32 %12, 1, !dbg !3980
  %14 = xor i32 %13, 1, !dbg !3980
  %15 = shl nuw i32 %14, %10, !dbg !3981
  %16 = xor i32 %15, %11, !dbg !3982
  store i32 %16, ptr %8, align 4, !dbg !3982, !tbaa !1127
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3983
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3984
  ret ptr %17, !dbg !3985
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3986 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3990, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i8 %1, metadata !3991, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata ptr %0, metadata !3963, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i64 -1, metadata !3964, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i8 %1, metadata !3965, metadata !DIExpression()), !dbg !3993
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !3995
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3966, metadata !DIExpression()), !dbg !3996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3997, !tbaa.struct !3971
  call void @llvm.dbg.value(metadata ptr %3, metadata !2971, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i8 %1, metadata !2972, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i32 1, metadata !2973, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i8 %1, metadata !2974, metadata !DIExpression()), !dbg !3998
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4000
  %5 = lshr i8 %1, 5, !dbg !4001
  %6 = zext i8 %5 to i64, !dbg !4001
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !4002
  call void @llvm.dbg.value(metadata ptr %7, metadata !2975, metadata !DIExpression()), !dbg !3998
  %8 = and i8 %1, 31, !dbg !4003
  %9 = zext i8 %8 to i32, !dbg !4003
  call void @llvm.dbg.value(metadata i32 %9, metadata !2977, metadata !DIExpression()), !dbg !3998
  %10 = load i32, ptr %7, align 4, !dbg !4004, !tbaa !1127
  %11 = lshr i32 %10, %9, !dbg !4005
  call void @llvm.dbg.value(metadata i32 %11, metadata !2978, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3998
  %12 = and i32 %11, 1, !dbg !4006
  %13 = xor i32 %12, 1, !dbg !4006
  %14 = shl nuw i32 %13, %9, !dbg !4007
  %15 = xor i32 %14, %10, !dbg !4008
  store i32 %15, ptr %7, align 4, !dbg !4008, !tbaa !1127
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4009
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !4010
  ret ptr %16, !dbg !4011
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4012 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4014, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata ptr %0, metadata !3990, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i8 58, metadata !3991, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata ptr %0, metadata !3963, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i64 -1, metadata !3964, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i8 58, metadata !3965, metadata !DIExpression()), !dbg !4018
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !4020
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3966, metadata !DIExpression()), !dbg !4021
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4022, !tbaa.struct !3971
  call void @llvm.dbg.value(metadata ptr %2, metadata !2971, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i8 58, metadata !2972, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i32 1, metadata !2973, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i8 58, metadata !2974, metadata !DIExpression()), !dbg !4023
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4025
  call void @llvm.dbg.value(metadata ptr %3, metadata !2975, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i32 26, metadata !2977, metadata !DIExpression()), !dbg !4023
  %4 = load i32, ptr %3, align 4, !dbg !4026, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 %4, metadata !2978, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4023
  %5 = or i32 %4, 67108864, !dbg !4027
  store i32 %5, ptr %3, align 4, !dbg !4027, !tbaa !1127
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4028
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !4029
  ret ptr %6, !dbg !4030
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4031 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4033, metadata !DIExpression()), !dbg !4035
  call void @llvm.dbg.value(metadata i64 %1, metadata !4034, metadata !DIExpression()), !dbg !4035
  call void @llvm.dbg.value(metadata ptr %0, metadata !3963, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i64 %1, metadata !3964, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i8 58, metadata !3965, metadata !DIExpression()), !dbg !4036
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !4038
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3966, metadata !DIExpression()), !dbg !4039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4040, !tbaa.struct !3971
  call void @llvm.dbg.value(metadata ptr %3, metadata !2971, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i8 58, metadata !2972, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i32 1, metadata !2973, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i8 58, metadata !2974, metadata !DIExpression()), !dbg !4041
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4043
  call void @llvm.dbg.value(metadata ptr %4, metadata !2975, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i32 26, metadata !2977, metadata !DIExpression()), !dbg !4041
  %5 = load i32, ptr %4, align 4, !dbg !4044, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 %5, metadata !2978, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4041
  %6 = or i32 %5, 67108864, !dbg !4045
  store i32 %6, ptr %4, align 4, !dbg !4045, !tbaa !1127
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4046
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !4047
  ret ptr %7, !dbg !4048
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4049 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3870, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4055
  call void @llvm.dbg.value(metadata i32 %0, metadata !4051, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata i32 %1, metadata !4052, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata ptr %2, metadata !4053, metadata !DIExpression()), !dbg !4057
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !4058
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4054, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i32 %1, metadata !3865, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 0, metadata !3870, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4060
  %5 = icmp eq i32 %1, 10, !dbg !4061
  br i1 %5, label %6, label %7, !dbg !4062

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !4063, !noalias !4064
  unreachable, !dbg !4063

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3870, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4060
  store i32 %1, ptr %4, align 8, !dbg !4067, !tbaa.struct !3971
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4067
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4067
  call void @llvm.dbg.value(metadata ptr %4, metadata !2971, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i8 58, metadata !2972, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i32 1, metadata !2973, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i8 58, metadata !2974, metadata !DIExpression()), !dbg !4068
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4070
  call void @llvm.dbg.value(metadata ptr %9, metadata !2975, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i32 26, metadata !2977, metadata !DIExpression()), !dbg !4068
  %10 = load i32, ptr %9, align 4, !dbg !4071, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 %10, metadata !2978, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4068
  %11 = or i32 %10, 67108864, !dbg !4072
  store i32 %11, ptr %9, align 4, !dbg !4072, !tbaa !1127
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4073
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !4074
  ret ptr %12, !dbg !4075
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4076 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4080, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata ptr %1, metadata !4081, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata ptr %2, metadata !4082, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata ptr %3, metadata !4083, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 %0, metadata !4085, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata ptr %1, metadata !4090, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata ptr %2, metadata !4091, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata ptr %3, metadata !4092, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i64 -1, metadata !4093, metadata !DIExpression()), !dbg !4095
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !4097
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4094, metadata !DIExpression()), !dbg !4098
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4099, !tbaa.struct !3971
  call void @llvm.dbg.value(metadata ptr %5, metadata !3011, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata ptr %1, metadata !3012, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata ptr %2, metadata !3013, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata ptr %5, metadata !3011, metadata !DIExpression()), !dbg !4100
  store i32 10, ptr %5, align 8, !dbg !4102, !tbaa !2954
  %6 = icmp ne ptr %1, null, !dbg !4103
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4104
  br i1 %8, label %10, label %9, !dbg !4104

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !4105
  unreachable, !dbg !4105

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4106
  store ptr %1, ptr %11, align 8, !dbg !4107, !tbaa !3025
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4108
  store ptr %2, ptr %12, align 8, !dbg !4109, !tbaa !3028
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4110
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !4111
  ret ptr %13, !dbg !4112
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4086 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4085, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata ptr %1, metadata !4090, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata ptr %2, metadata !4091, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata ptr %3, metadata !4092, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i64 %4, metadata !4093, metadata !DIExpression()), !dbg !4113
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !4114
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4094, metadata !DIExpression()), !dbg !4115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4116, !tbaa.struct !3971
  call void @llvm.dbg.value(metadata ptr %6, metadata !3011, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata ptr %1, metadata !3012, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata ptr %2, metadata !3013, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata ptr %6, metadata !3011, metadata !DIExpression()), !dbg !4117
  store i32 10, ptr %6, align 8, !dbg !4119, !tbaa !2954
  %7 = icmp ne ptr %1, null, !dbg !4120
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4121
  br i1 %9, label %11, label %10, !dbg !4121

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !4122
  unreachable, !dbg !4122

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4123
  store ptr %1, ptr %12, align 8, !dbg !4124, !tbaa !3025
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4125
  store ptr %2, ptr %13, align 8, !dbg !4126, !tbaa !3028
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4127
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !4128
  ret ptr %14, !dbg !4129
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4130 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata ptr %1, metadata !4135, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata ptr %2, metadata !4136, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 0, metadata !4080, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata ptr %0, metadata !4081, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata ptr %1, metadata !4082, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata ptr %2, metadata !4083, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i32 0, metadata !4085, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata ptr %0, metadata !4090, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata ptr %1, metadata !4091, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata ptr %2, metadata !4092, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i64 -1, metadata !4093, metadata !DIExpression()), !dbg !4140
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !4142
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4094, metadata !DIExpression()), !dbg !4143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4144, !tbaa.struct !3971
  call void @llvm.dbg.value(metadata ptr %4, metadata !3011, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata ptr %0, metadata !3012, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata ptr %1, metadata !3013, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata ptr %4, metadata !3011, metadata !DIExpression()), !dbg !4145
  store i32 10, ptr %4, align 8, !dbg !4147, !tbaa !2954
  %5 = icmp ne ptr %0, null, !dbg !4148
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4149
  br i1 %7, label %9, label %8, !dbg !4149

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !4150
  unreachable, !dbg !4150

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4151
  store ptr %0, ptr %10, align 8, !dbg !4152, !tbaa !3025
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4153
  store ptr %1, ptr %11, align 8, !dbg !4154, !tbaa !3028
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4155
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !4156
  ret ptr %12, !dbg !4157
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4158 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4162, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata ptr %1, metadata !4163, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata ptr %2, metadata !4164, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i64 %3, metadata !4165, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i32 0, metadata !4085, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata ptr %0, metadata !4090, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata ptr %1, metadata !4091, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata ptr %2, metadata !4092, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i64 %3, metadata !4093, metadata !DIExpression()), !dbg !4167
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !4169
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4094, metadata !DIExpression()), !dbg !4170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4171, !tbaa.struct !3971
  call void @llvm.dbg.value(metadata ptr %5, metadata !3011, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata ptr %0, metadata !3012, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata ptr %1, metadata !3013, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata ptr %5, metadata !3011, metadata !DIExpression()), !dbg !4172
  store i32 10, ptr %5, align 8, !dbg !4174, !tbaa !2954
  %6 = icmp ne ptr %0, null, !dbg !4175
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4176
  br i1 %8, label %10, label %9, !dbg !4176

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !4177
  unreachable, !dbg !4177

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4178
  store ptr %0, ptr %11, align 8, !dbg !4179, !tbaa !3025
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4180
  store ptr %1, ptr %12, align 8, !dbg !4181, !tbaa !3028
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4182
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !4183
  ret ptr %13, !dbg !4184
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4185 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4189, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata ptr %1, metadata !4190, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata i64 %2, metadata !4191, metadata !DIExpression()), !dbg !4192
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4193
  ret ptr %4, !dbg !4194
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4195 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4199, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 %1, metadata !4200, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i32 0, metadata !4189, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata ptr %0, metadata !4190, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata i64 %1, metadata !4191, metadata !DIExpression()), !dbg !4202
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4204
  ret ptr %3, !dbg !4205
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4206 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4210, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata ptr %1, metadata !4211, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i32 %0, metadata !4189, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata ptr %1, metadata !4190, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata i64 -1, metadata !4191, metadata !DIExpression()), !dbg !4213
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4215
  ret ptr %3, !dbg !4216
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4217 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4221, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i32 0, metadata !4210, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata ptr %0, metadata !4211, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 0, metadata !4189, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata ptr %0, metadata !4190, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i64 -1, metadata !4191, metadata !DIExpression()), !dbg !4225
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4227
  ret ptr %2, !dbg !4228
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4229 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4268, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata ptr %1, metadata !4269, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata ptr %2, metadata !4270, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata ptr %3, metadata !4271, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata ptr %4, metadata !4272, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i64 %5, metadata !4273, metadata !DIExpression()), !dbg !4274
  %7 = icmp eq ptr %1, null, !dbg !4275
  br i1 %7, label %10, label %8, !dbg !4277

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.119, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !4278
  br label %12, !dbg !4278

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.120, ptr noundef %2, ptr noundef %3) #37, !dbg !4279
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.3.122, i32 noundef 5) #37, !dbg !4280
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !4280
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %0), !dbg !4281
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.5.124, i32 noundef 5) #37, !dbg !4282
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.125) #37, !dbg !4282
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %0), !dbg !4283
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
  ], !dbg !4284

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.7.126, i32 noundef 5) #37, !dbg !4285
  %21 = load ptr, ptr %4, align 8, !dbg !4285, !tbaa !1057
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !4285
  br label %147, !dbg !4287

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.8.127, i32 noundef 5) #37, !dbg !4288
  %25 = load ptr, ptr %4, align 8, !dbg !4288, !tbaa !1057
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4288
  %27 = load ptr, ptr %26, align 8, !dbg !4288, !tbaa !1057
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !4288
  br label %147, !dbg !4289

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.9.128, i32 noundef 5) #37, !dbg !4290
  %31 = load ptr, ptr %4, align 8, !dbg !4290, !tbaa !1057
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4290
  %33 = load ptr, ptr %32, align 8, !dbg !4290, !tbaa !1057
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4290
  %35 = load ptr, ptr %34, align 8, !dbg !4290, !tbaa !1057
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !4290
  br label %147, !dbg !4291

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.10.129, i32 noundef 5) #37, !dbg !4292
  %39 = load ptr, ptr %4, align 8, !dbg !4292, !tbaa !1057
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4292
  %41 = load ptr, ptr %40, align 8, !dbg !4292, !tbaa !1057
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4292
  %43 = load ptr, ptr %42, align 8, !dbg !4292, !tbaa !1057
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4292
  %45 = load ptr, ptr %44, align 8, !dbg !4292, !tbaa !1057
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !4292
  br label %147, !dbg !4293

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.11.130, i32 noundef 5) #37, !dbg !4294
  %49 = load ptr, ptr %4, align 8, !dbg !4294, !tbaa !1057
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4294
  %51 = load ptr, ptr %50, align 8, !dbg !4294, !tbaa !1057
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4294
  %53 = load ptr, ptr %52, align 8, !dbg !4294, !tbaa !1057
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4294
  %55 = load ptr, ptr %54, align 8, !dbg !4294, !tbaa !1057
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4294
  %57 = load ptr, ptr %56, align 8, !dbg !4294, !tbaa !1057
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !4294
  br label %147, !dbg !4295

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.12.131, i32 noundef 5) #37, !dbg !4296
  %61 = load ptr, ptr %4, align 8, !dbg !4296, !tbaa !1057
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4296
  %63 = load ptr, ptr %62, align 8, !dbg !4296, !tbaa !1057
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4296
  %65 = load ptr, ptr %64, align 8, !dbg !4296, !tbaa !1057
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4296
  %67 = load ptr, ptr %66, align 8, !dbg !4296, !tbaa !1057
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4296
  %69 = load ptr, ptr %68, align 8, !dbg !4296, !tbaa !1057
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4296
  %71 = load ptr, ptr %70, align 8, !dbg !4296, !tbaa !1057
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !4296
  br label %147, !dbg !4297

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.13.132, i32 noundef 5) #37, !dbg !4298
  %75 = load ptr, ptr %4, align 8, !dbg !4298, !tbaa !1057
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4298
  %77 = load ptr, ptr %76, align 8, !dbg !4298, !tbaa !1057
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4298
  %79 = load ptr, ptr %78, align 8, !dbg !4298, !tbaa !1057
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4298
  %81 = load ptr, ptr %80, align 8, !dbg !4298, !tbaa !1057
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4298
  %83 = load ptr, ptr %82, align 8, !dbg !4298, !tbaa !1057
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4298
  %85 = load ptr, ptr %84, align 8, !dbg !4298, !tbaa !1057
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4298
  %87 = load ptr, ptr %86, align 8, !dbg !4298, !tbaa !1057
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !4298
  br label %147, !dbg !4299

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.14.133, i32 noundef 5) #37, !dbg !4300
  %91 = load ptr, ptr %4, align 8, !dbg !4300, !tbaa !1057
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4300
  %93 = load ptr, ptr %92, align 8, !dbg !4300, !tbaa !1057
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4300
  %95 = load ptr, ptr %94, align 8, !dbg !4300, !tbaa !1057
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4300
  %97 = load ptr, ptr %96, align 8, !dbg !4300, !tbaa !1057
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4300
  %99 = load ptr, ptr %98, align 8, !dbg !4300, !tbaa !1057
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4300
  %101 = load ptr, ptr %100, align 8, !dbg !4300, !tbaa !1057
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4300
  %103 = load ptr, ptr %102, align 8, !dbg !4300, !tbaa !1057
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4300
  %105 = load ptr, ptr %104, align 8, !dbg !4300, !tbaa !1057
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !4300
  br label %147, !dbg !4301

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.15.134, i32 noundef 5) #37, !dbg !4302
  %109 = load ptr, ptr %4, align 8, !dbg !4302, !tbaa !1057
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4302
  %111 = load ptr, ptr %110, align 8, !dbg !4302, !tbaa !1057
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4302
  %113 = load ptr, ptr %112, align 8, !dbg !4302, !tbaa !1057
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4302
  %115 = load ptr, ptr %114, align 8, !dbg !4302, !tbaa !1057
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4302
  %117 = load ptr, ptr %116, align 8, !dbg !4302, !tbaa !1057
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4302
  %119 = load ptr, ptr %118, align 8, !dbg !4302, !tbaa !1057
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4302
  %121 = load ptr, ptr %120, align 8, !dbg !4302, !tbaa !1057
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4302
  %123 = load ptr, ptr %122, align 8, !dbg !4302, !tbaa !1057
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4302
  %125 = load ptr, ptr %124, align 8, !dbg !4302, !tbaa !1057
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !4302
  br label %147, !dbg !4303

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.16.135, i32 noundef 5) #37, !dbg !4304
  %129 = load ptr, ptr %4, align 8, !dbg !4304, !tbaa !1057
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4304
  %131 = load ptr, ptr %130, align 8, !dbg !4304, !tbaa !1057
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4304
  %133 = load ptr, ptr %132, align 8, !dbg !4304, !tbaa !1057
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4304
  %135 = load ptr, ptr %134, align 8, !dbg !4304, !tbaa !1057
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4304
  %137 = load ptr, ptr %136, align 8, !dbg !4304, !tbaa !1057
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4304
  %139 = load ptr, ptr %138, align 8, !dbg !4304, !tbaa !1057
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4304
  %141 = load ptr, ptr %140, align 8, !dbg !4304, !tbaa !1057
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4304
  %143 = load ptr, ptr %142, align 8, !dbg !4304, !tbaa !1057
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4304
  %145 = load ptr, ptr %144, align 8, !dbg !4304, !tbaa !1057
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !4304
  br label %147, !dbg !4305

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4306
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4307 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4311, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata ptr %1, metadata !4312, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata ptr %2, metadata !4313, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata ptr %3, metadata !4314, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata ptr %4, metadata !4315, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 0, metadata !4316, metadata !DIExpression()), !dbg !4317
  br label %6, !dbg !4318

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4320
  call void @llvm.dbg.value(metadata i64 %7, metadata !4316, metadata !DIExpression()), !dbg !4317
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4321
  %9 = load ptr, ptr %8, align 8, !dbg !4321, !tbaa !1057
  %10 = icmp eq ptr %9, null, !dbg !4323
  %11 = add i64 %7, 1, !dbg !4324
  call void @llvm.dbg.value(metadata i64 %11, metadata !4316, metadata !DIExpression()), !dbg !4317
  br i1 %10, label %12, label %6, !dbg !4323, !llvm.loop !4325

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4327
  ret void, !dbg !4328
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4329 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4341, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata ptr %1, metadata !4342, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata ptr %2, metadata !4343, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata ptr %3, metadata !4344, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata ptr %4, metadata !4345, metadata !DIExpression()), !dbg !4349
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !4350
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4347, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i64 0, metadata !4346, metadata !DIExpression()), !dbg !4349
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4346, metadata !DIExpression()), !dbg !4349
  %10 = icmp ult i32 %9, 41, !dbg !4352
  br i1 %10, label %11, label %16, !dbg !4352

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4352
  %13 = zext i32 %9 to i64, !dbg !4352
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4352
  %15 = add nuw nsw i32 %9, 8, !dbg !4352
  store i32 %15, ptr %4, align 8, !dbg !4352
  br label %19, !dbg !4352

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4352
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4352
  store ptr %18, ptr %7, align 8, !dbg !4352
  br label %19, !dbg !4352

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4352
  %22 = load ptr, ptr %21, align 8, !dbg !4352
  store ptr %22, ptr %6, align 16, !dbg !4355, !tbaa !1057
  %23 = icmp eq ptr %22, null, !dbg !4356
  br i1 %23, label %128, label %24, !dbg !4357

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !4346, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata i64 1, metadata !4346, metadata !DIExpression()), !dbg !4349
  %25 = icmp ult i32 %20, 41, !dbg !4352
  br i1 %25, label %29, label %26, !dbg !4352

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4352
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4352
  store ptr %28, ptr %7, align 8, !dbg !4352
  br label %34, !dbg !4352

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4352
  %31 = zext i32 %20 to i64, !dbg !4352
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4352
  %33 = add nuw nsw i32 %20, 8, !dbg !4352
  store i32 %33, ptr %4, align 8, !dbg !4352
  br label %34, !dbg !4352

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4352
  %37 = load ptr, ptr %36, align 8, !dbg !4352
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4358
  store ptr %37, ptr %38, align 8, !dbg !4355, !tbaa !1057
  %39 = icmp eq ptr %37, null, !dbg !4356
  br i1 %39, label %128, label %40, !dbg !4357

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !4346, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata i64 2, metadata !4346, metadata !DIExpression()), !dbg !4349
  %41 = icmp ult i32 %35, 41, !dbg !4352
  br i1 %41, label %45, label %42, !dbg !4352

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4352
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4352
  store ptr %44, ptr %7, align 8, !dbg !4352
  br label %50, !dbg !4352

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4352
  %47 = zext i32 %35 to i64, !dbg !4352
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4352
  %49 = add nuw nsw i32 %35, 8, !dbg !4352
  store i32 %49, ptr %4, align 8, !dbg !4352
  br label %50, !dbg !4352

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4352
  %53 = load ptr, ptr %52, align 8, !dbg !4352
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4358
  store ptr %53, ptr %54, align 16, !dbg !4355, !tbaa !1057
  %55 = icmp eq ptr %53, null, !dbg !4356
  br i1 %55, label %128, label %56, !dbg !4357

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !4346, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata i64 3, metadata !4346, metadata !DIExpression()), !dbg !4349
  %57 = icmp ult i32 %51, 41, !dbg !4352
  br i1 %57, label %61, label %58, !dbg !4352

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4352
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4352
  store ptr %60, ptr %7, align 8, !dbg !4352
  br label %66, !dbg !4352

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4352
  %63 = zext i32 %51 to i64, !dbg !4352
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4352
  %65 = add nuw nsw i32 %51, 8, !dbg !4352
  store i32 %65, ptr %4, align 8, !dbg !4352
  br label %66, !dbg !4352

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4352
  %69 = load ptr, ptr %68, align 8, !dbg !4352
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4358
  store ptr %69, ptr %70, align 8, !dbg !4355, !tbaa !1057
  %71 = icmp eq ptr %69, null, !dbg !4356
  br i1 %71, label %128, label %72, !dbg !4357

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !4346, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata i64 4, metadata !4346, metadata !DIExpression()), !dbg !4349
  %73 = icmp ult i32 %67, 41, !dbg !4352
  br i1 %73, label %77, label %74, !dbg !4352

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4352
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4352
  store ptr %76, ptr %7, align 8, !dbg !4352
  br label %82, !dbg !4352

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4352
  %79 = zext i32 %67 to i64, !dbg !4352
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4352
  %81 = add nuw nsw i32 %67, 8, !dbg !4352
  store i32 %81, ptr %4, align 8, !dbg !4352
  br label %82, !dbg !4352

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4352
  %85 = load ptr, ptr %84, align 8, !dbg !4352
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4358
  store ptr %85, ptr %86, align 16, !dbg !4355, !tbaa !1057
  %87 = icmp eq ptr %85, null, !dbg !4356
  br i1 %87, label %128, label %88, !dbg !4357

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !4346, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata i64 5, metadata !4346, metadata !DIExpression()), !dbg !4349
  %89 = icmp ult i32 %83, 41, !dbg !4352
  br i1 %89, label %93, label %90, !dbg !4352

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4352
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4352
  store ptr %92, ptr %7, align 8, !dbg !4352
  br label %98, !dbg !4352

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4352
  %95 = zext i32 %83 to i64, !dbg !4352
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4352
  %97 = add nuw nsw i32 %83, 8, !dbg !4352
  store i32 %97, ptr %4, align 8, !dbg !4352
  br label %98, !dbg !4352

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4352
  %100 = load ptr, ptr %99, align 8, !dbg !4352
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4358
  store ptr %100, ptr %101, align 8, !dbg !4355, !tbaa !1057
  %102 = icmp eq ptr %100, null, !dbg !4356
  br i1 %102, label %128, label %103, !dbg !4357

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !4346, metadata !DIExpression()), !dbg !4349
  %104 = load ptr, ptr %7, align 8, !dbg !4352
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4352
  store ptr %105, ptr %7, align 8, !dbg !4352
  %106 = load ptr, ptr %104, align 8, !dbg !4352
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4358
  store ptr %106, ptr %107, align 16, !dbg !4355, !tbaa !1057
  %108 = icmp eq ptr %106, null, !dbg !4356
  br i1 %108, label %128, label %109, !dbg !4357

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !4346, metadata !DIExpression()), !dbg !4349
  %110 = load ptr, ptr %7, align 8, !dbg !4352
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4352
  store ptr %111, ptr %7, align 8, !dbg !4352
  %112 = load ptr, ptr %110, align 8, !dbg !4352
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4358
  store ptr %112, ptr %113, align 8, !dbg !4355, !tbaa !1057
  %114 = icmp eq ptr %112, null, !dbg !4356
  br i1 %114, label %128, label %115, !dbg !4357

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !4346, metadata !DIExpression()), !dbg !4349
  %116 = load ptr, ptr %7, align 8, !dbg !4352
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4352
  store ptr %117, ptr %7, align 8, !dbg !4352
  %118 = load ptr, ptr %116, align 8, !dbg !4352
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4358
  store ptr %118, ptr %119, align 16, !dbg !4355, !tbaa !1057
  %120 = icmp eq ptr %118, null, !dbg !4356
  br i1 %120, label %128, label %121, !dbg !4357

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !4346, metadata !DIExpression()), !dbg !4349
  %122 = load ptr, ptr %7, align 8, !dbg !4352
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4352
  store ptr %123, ptr %7, align 8, !dbg !4352
  %124 = load ptr, ptr %122, align 8, !dbg !4352
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4358
  store ptr %124, ptr %125, align 8, !dbg !4355, !tbaa !1057
  %126 = icmp eq ptr %124, null, !dbg !4356
  %127 = select i1 %126, i64 9, i64 10, !dbg !4357
  br label %128, !dbg !4357

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4359
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4360
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !4361
  ret void, !dbg !4361
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4362 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4366, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata ptr %1, metadata !4367, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata ptr %2, metadata !4368, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata ptr %3, metadata !4369, metadata !DIExpression()), !dbg !4375
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !4376
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4370, metadata !DIExpression()), !dbg !4377
  call void @llvm.va_start(ptr nonnull %5), !dbg !4378
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4379
  call void @llvm.va_end(ptr nonnull %5), !dbg !4380
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !4381
  ret void, !dbg !4381
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4382 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4383, !tbaa !1057
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %1), !dbg !4383
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.17.140, i32 noundef 5) #37, !dbg !4384
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.141) #37, !dbg !4384
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.19.142, i32 noundef 5) #37, !dbg !4385
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.143, ptr noundef nonnull @.str.21.144) #37, !dbg !4385
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.22.145, i32 noundef 5) #37, !dbg !4386
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.146) #37, !dbg !4386
  ret void, !dbg !4387
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !4388 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4393, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata i64 %1, metadata !4394, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata i64 %2, metadata !4395, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata ptr %0, metadata !4397, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i64 %1, metadata !4400, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i64 %2, metadata !4401, metadata !DIExpression()), !dbg !4402
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !4404
  call void @llvm.dbg.value(metadata ptr %4, metadata !4405, metadata !DIExpression()), !dbg !4410
  %5 = icmp eq ptr %4, null, !dbg !4412
  br i1 %5, label %6, label %7, !dbg !4414

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !4415
  unreachable, !dbg !4415

7:                                                ; preds = %3
  ret ptr %4, !dbg !4416
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4398 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4397, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.value(metadata i64 %1, metadata !4400, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.value(metadata i64 %2, metadata !4401, metadata !DIExpression()), !dbg !4417
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !4418
  call void @llvm.dbg.value(metadata ptr %4, metadata !4405, metadata !DIExpression()), !dbg !4419
  %5 = icmp eq ptr %4, null, !dbg !4421
  br i1 %5, label %6, label %7, !dbg !4422

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !4423
  unreachable, !dbg !4423

7:                                                ; preds = %3
  ret ptr %4, !dbg !4424
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4425 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4429, metadata !DIExpression()), !dbg !4430
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4431
  call void @llvm.dbg.value(metadata ptr %2, metadata !4405, metadata !DIExpression()), !dbg !4432
  %3 = icmp eq ptr %2, null, !dbg !4434
  br i1 %3, label %4, label %5, !dbg !4435

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4436
  unreachable, !dbg !4436

5:                                                ; preds = %1
  ret ptr %2, !dbg !4437
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4438 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4439 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4443, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i64 %0, metadata !4445, metadata !DIExpression()), !dbg !4449
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4451
  call void @llvm.dbg.value(metadata ptr %2, metadata !4405, metadata !DIExpression()), !dbg !4452
  %3 = icmp eq ptr %2, null, !dbg !4454
  br i1 %3, label %4, label %5, !dbg !4455

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4456
  unreachable, !dbg !4456

5:                                                ; preds = %1
  ret ptr %2, !dbg !4457
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4458 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4462, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.value(metadata i64 %0, metadata !4429, metadata !DIExpression()), !dbg !4464
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4466
  call void @llvm.dbg.value(metadata ptr %2, metadata !4405, metadata !DIExpression()), !dbg !4467
  %3 = icmp eq ptr %2, null, !dbg !4469
  br i1 %3, label %4, label %5, !dbg !4470

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4471
  unreachable, !dbg !4471

5:                                                ; preds = %1
  ret ptr %2, !dbg !4472
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4473 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4477, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i64 %1, metadata !4478, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata ptr %0, metadata !4480, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata i64 %1, metadata !4484, metadata !DIExpression()), !dbg !4485
  %3 = icmp eq i64 %1, 0, !dbg !4487
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4487
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #43, !dbg !4488
  call void @llvm.dbg.value(metadata ptr %5, metadata !4405, metadata !DIExpression()), !dbg !4489
  %6 = icmp eq ptr %5, null, !dbg !4491
  br i1 %6, label %7, label %8, !dbg !4492

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4493
  unreachable, !dbg !4493

8:                                                ; preds = %2
  ret ptr %5, !dbg !4494
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4495 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4496 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4500, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i64 %1, metadata !4501, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata ptr %0, metadata !4503, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i64 %1, metadata !4506, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata ptr %0, metadata !4480, metadata !DIExpression()), !dbg !4509
  call void @llvm.dbg.value(metadata i64 %1, metadata !4484, metadata !DIExpression()), !dbg !4509
  %3 = icmp eq i64 %1, 0, !dbg !4511
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4511
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #43, !dbg !4512
  call void @llvm.dbg.value(metadata ptr %5, metadata !4405, metadata !DIExpression()), !dbg !4513
  %6 = icmp eq ptr %5, null, !dbg !4515
  br i1 %6, label %7, label %8, !dbg !4516

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4517
  unreachable, !dbg !4517

8:                                                ; preds = %2
  ret ptr %5, !dbg !4518
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4519 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4523, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i64 %1, metadata !4524, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i64 %2, metadata !4525, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata ptr %0, metadata !4527, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i64 %1, metadata !4530, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i64 %2, metadata !4531, metadata !DIExpression()), !dbg !4532
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !4534
  call void @llvm.dbg.value(metadata ptr %4, metadata !4405, metadata !DIExpression()), !dbg !4535
  %5 = icmp eq ptr %4, null, !dbg !4537
  br i1 %5, label %6, label %7, !dbg !4538

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !4539
  unreachable, !dbg !4539

7:                                                ; preds = %3
  ret ptr %4, !dbg !4540
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4541 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4545, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i64 %1, metadata !4546, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata ptr null, metadata !4397, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i64 %0, metadata !4400, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i64 %1, metadata !4401, metadata !DIExpression()), !dbg !4548
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !4550
  call void @llvm.dbg.value(metadata ptr %3, metadata !4405, metadata !DIExpression()), !dbg !4551
  %4 = icmp eq ptr %3, null, !dbg !4553
  br i1 %4, label %5, label %6, !dbg !4554

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4555
  unreachable, !dbg !4555

6:                                                ; preds = %2
  ret ptr %3, !dbg !4556
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4557 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4561, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata i64 %1, metadata !4562, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr null, metadata !4523, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i64 %0, metadata !4524, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i64 %1, metadata !4525, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata ptr null, metadata !4527, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata i64 %0, metadata !4530, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata i64 %1, metadata !4531, metadata !DIExpression()), !dbg !4566
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !4568
  call void @llvm.dbg.value(metadata ptr %3, metadata !4405, metadata !DIExpression()), !dbg !4569
  %4 = icmp eq ptr %3, null, !dbg !4571
  br i1 %4, label %5, label %6, !dbg !4572

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4573
  unreachable, !dbg !4573

6:                                                ; preds = %2
  ret ptr %3, !dbg !4574
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4575 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4579, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata ptr %1, metadata !4580, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata ptr %0, metadata !1000, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.value(metadata ptr %1, metadata !1001, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.value(metadata i64 1, metadata !1002, metadata !DIExpression()), !dbg !4582
  %3 = load i64, ptr %1, align 8, !dbg !4584, !tbaa !1347
  call void @llvm.dbg.value(metadata i64 %3, metadata !1003, metadata !DIExpression()), !dbg !4582
  %4 = icmp eq ptr %0, null, !dbg !4585
  br i1 %4, label %5, label %8, !dbg !4587

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4588
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4591
  br label %15, !dbg !4591

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4592
  %10 = add nuw i64 %9, 1, !dbg !4592
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4592
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4592
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4592
  call void @llvm.dbg.value(metadata i64 %13, metadata !1003, metadata !DIExpression()), !dbg !4582
  br i1 %12, label %14, label %15, !dbg !4595

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !4596
  unreachable, !dbg !4596

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4582
  call void @llvm.dbg.value(metadata i64 %16, metadata !1003, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.value(metadata ptr %0, metadata !4397, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata i64 %16, metadata !4400, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata i64 1, metadata !4401, metadata !DIExpression()), !dbg !4597
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !4599
  call void @llvm.dbg.value(metadata ptr %17, metadata !4405, metadata !DIExpression()), !dbg !4600
  %18 = icmp eq ptr %17, null, !dbg !4602
  br i1 %18, label %19, label %20, !dbg !4603

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !4604
  unreachable, !dbg !4604

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !1000, metadata !DIExpression()), !dbg !4582
  store i64 %16, ptr %1, align 8, !dbg !4605, !tbaa !1347
  ret ptr %17, !dbg !4606
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !995 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1000, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata ptr %1, metadata !1001, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata i64 %2, metadata !1002, metadata !DIExpression()), !dbg !4607
  %4 = load i64, ptr %1, align 8, !dbg !4608, !tbaa !1347
  call void @llvm.dbg.value(metadata i64 %4, metadata !1003, metadata !DIExpression()), !dbg !4607
  %5 = icmp eq ptr %0, null, !dbg !4609
  br i1 %5, label %6, label %13, !dbg !4610

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4611
  br i1 %7, label %8, label %20, !dbg !4612

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4613
  call void @llvm.dbg.value(metadata i64 %9, metadata !1003, metadata !DIExpression()), !dbg !4607
  %10 = icmp ugt i64 %2, 128, !dbg !4615
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4616
  call void @llvm.dbg.value(metadata i64 %12, metadata !1003, metadata !DIExpression()), !dbg !4607
  br label %20, !dbg !4617

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4618
  %15 = add nuw i64 %14, 1, !dbg !4618
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4618
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4618
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4618
  call void @llvm.dbg.value(metadata i64 %18, metadata !1003, metadata !DIExpression()), !dbg !4607
  br i1 %17, label %19, label %20, !dbg !4619

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !4620
  unreachable, !dbg !4620

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4607
  call void @llvm.dbg.value(metadata i64 %21, metadata !1003, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata ptr %0, metadata !4397, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i64 %21, metadata !4400, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i64 %2, metadata !4401, metadata !DIExpression()), !dbg !4621
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !4623
  call void @llvm.dbg.value(metadata ptr %22, metadata !4405, metadata !DIExpression()), !dbg !4624
  %23 = icmp eq ptr %22, null, !dbg !4626
  br i1 %23, label %24, label %25, !dbg !4627

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !4628
  unreachable, !dbg !4628

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !1000, metadata !DIExpression()), !dbg !4607
  store i64 %21, ptr %1, align 8, !dbg !4629, !tbaa !1347
  ret ptr %22, !dbg !4630
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !1007 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1012, metadata !DIExpression()), !dbg !4631
  call void @llvm.dbg.value(metadata ptr %1, metadata !1013, metadata !DIExpression()), !dbg !4631
  call void @llvm.dbg.value(metadata i64 %2, metadata !1014, metadata !DIExpression()), !dbg !4631
  call void @llvm.dbg.value(metadata i64 %3, metadata !1015, metadata !DIExpression()), !dbg !4631
  call void @llvm.dbg.value(metadata i64 %4, metadata !1016, metadata !DIExpression()), !dbg !4631
  %6 = load i64, ptr %1, align 8, !dbg !4632, !tbaa !1347
  call void @llvm.dbg.value(metadata i64 %6, metadata !1017, metadata !DIExpression()), !dbg !4631
  %7 = ashr i64 %6, 1, !dbg !4633
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4633
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4633
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4633
  call void @llvm.dbg.value(metadata i64 %10, metadata !1018, metadata !DIExpression()), !dbg !4631
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4635
  call void @llvm.dbg.value(metadata i64 %11, metadata !1018, metadata !DIExpression()), !dbg !4631
  %12 = icmp sgt i64 %3, -1, !dbg !4636
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4638
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4638
  call void @llvm.dbg.value(metadata i64 %15, metadata !1018, metadata !DIExpression()), !dbg !4631
  %16 = icmp slt i64 %4, 0, !dbg !4639
  br i1 %16, label %17, label %30, !dbg !4639

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4639
  br i1 %18, label %19, label %24, !dbg !4639

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4639
  %21 = udiv i64 9223372036854775807, %20, !dbg !4639
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4639
  br i1 %23, label %46, label %43, !dbg !4639

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4639
  br i1 %25, label %43, label %26, !dbg !4639

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4639
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4639
  %29 = icmp ult i64 %28, %15, !dbg !4639
  br i1 %29, label %46, label %43, !dbg !4639

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4639
  br i1 %31, label %43, label %32, !dbg !4639

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4639
  br i1 %33, label %34, label %40, !dbg !4639

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4639
  br i1 %35, label %43, label %36, !dbg !4639

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4639
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4639
  %39 = icmp ult i64 %38, %4, !dbg !4639
  br i1 %39, label %46, label %43, !dbg !4639

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4639
  br i1 %42, label %46, label %43, !dbg !4639

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !1019, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4631
  %44 = mul i64 %15, %4, !dbg !4639
  call void @llvm.dbg.value(metadata i64 %44, metadata !1019, metadata !DIExpression()), !dbg !4631
  %45 = icmp slt i64 %44, 128, !dbg !4639
  br i1 %45, label %46, label %51, !dbg !4639

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !1020, metadata !DIExpression()), !dbg !4631
  %48 = sdiv i64 %47, %4, !dbg !4640
  call void @llvm.dbg.value(metadata i64 %48, metadata !1018, metadata !DIExpression()), !dbg !4631
  %49 = srem i64 %47, %4, !dbg !4643
  %50 = sub nsw i64 %47, %49, !dbg !4644
  call void @llvm.dbg.value(metadata i64 %50, metadata !1019, metadata !DIExpression()), !dbg !4631
  br label %51, !dbg !4645

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4631
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4631
  call void @llvm.dbg.value(metadata i64 %53, metadata !1019, metadata !DIExpression()), !dbg !4631
  call void @llvm.dbg.value(metadata i64 %52, metadata !1018, metadata !DIExpression()), !dbg !4631
  %54 = icmp eq ptr %0, null, !dbg !4646
  br i1 %54, label %55, label %56, !dbg !4648

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4649, !tbaa !1347
  br label %56, !dbg !4650

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4651
  %58 = icmp slt i64 %57, %2, !dbg !4653
  br i1 %58, label %59, label %96, !dbg !4654

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4655
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4655
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4655
  call void @llvm.dbg.value(metadata i64 %62, metadata !1018, metadata !DIExpression()), !dbg !4631
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4656
  br i1 %65, label %95, label %66, !dbg !4656

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4657

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4657
  br i1 %68, label %69, label %74, !dbg !4657

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4657
  %71 = udiv i64 9223372036854775807, %70, !dbg !4657
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4657
  br i1 %73, label %95, label %93, !dbg !4657

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4657
  br i1 %75, label %93, label %76, !dbg !4657

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4657
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4657
  %79 = icmp ult i64 %78, %62, !dbg !4657
  br i1 %79, label %95, label %93, !dbg !4657

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4657
  br i1 %81, label %93, label %82, !dbg !4657

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4657
  br i1 %83, label %84, label %90, !dbg !4657

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4657
  br i1 %85, label %93, label %86, !dbg !4657

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4657
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4657
  %89 = icmp ult i64 %88, %4, !dbg !4657
  br i1 %89, label %95, label %93, !dbg !4657

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4657
  br i1 %92, label %95, label %93, !dbg !4657

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !1019, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4631
  %94 = mul i64 %62, %4, !dbg !4657
  call void @llvm.dbg.value(metadata i64 %94, metadata !1019, metadata !DIExpression()), !dbg !4631
  br label %96, !dbg !4658

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #39, !dbg !4659
  unreachable, !dbg !4659

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4631
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4631
  call void @llvm.dbg.value(metadata i64 %98, metadata !1019, metadata !DIExpression()), !dbg !4631
  call void @llvm.dbg.value(metadata i64 %97, metadata !1018, metadata !DIExpression()), !dbg !4631
  call void @llvm.dbg.value(metadata ptr %0, metadata !4477, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.value(metadata i64 %98, metadata !4478, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.value(metadata ptr %0, metadata !4480, metadata !DIExpression()), !dbg !4662
  call void @llvm.dbg.value(metadata i64 %98, metadata !4484, metadata !DIExpression()), !dbg !4662
  %99 = icmp eq i64 %98, 0, !dbg !4664
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4664
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #43, !dbg !4665
  call void @llvm.dbg.value(metadata ptr %101, metadata !4405, metadata !DIExpression()), !dbg !4666
  %102 = icmp eq ptr %101, null, !dbg !4668
  br i1 %102, label %103, label %104, !dbg !4669

103:                                              ; preds = %96
  tail call void @xalloc_die() #39, !dbg !4670
  unreachable, !dbg !4670

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !1012, metadata !DIExpression()), !dbg !4631
  store i64 %97, ptr %1, align 8, !dbg !4671, !tbaa !1347
  ret ptr %101, !dbg !4672
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4673 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4675, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.value(metadata i64 %0, metadata !4677, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.value(metadata i64 1, metadata !4680, metadata !DIExpression()), !dbg !4681
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !4683
  call void @llvm.dbg.value(metadata ptr %2, metadata !4405, metadata !DIExpression()), !dbg !4684
  %3 = icmp eq ptr %2, null, !dbg !4686
  br i1 %3, label %4, label %5, !dbg !4687

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4688
  unreachable, !dbg !4688

5:                                                ; preds = %1
  ret ptr %2, !dbg !4689
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4690 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4678 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4677, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i64 %1, metadata !4680, metadata !DIExpression()), !dbg !4691
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !4692
  call void @llvm.dbg.value(metadata ptr %3, metadata !4405, metadata !DIExpression()), !dbg !4693
  %4 = icmp eq ptr %3, null, !dbg !4695
  br i1 %4, label %5, label %6, !dbg !4696

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4697
  unreachable, !dbg !4697

6:                                                ; preds = %2
  ret ptr %3, !dbg !4698
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4699 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4701, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.value(metadata i64 %0, metadata !4703, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata i64 1, metadata !4706, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata i64 %0, metadata !4709, metadata !DIExpression()), !dbg !4713
  call void @llvm.dbg.value(metadata i64 1, metadata !4712, metadata !DIExpression()), !dbg !4713
  call void @llvm.dbg.value(metadata i64 %0, metadata !4709, metadata !DIExpression()), !dbg !4713
  call void @llvm.dbg.value(metadata i64 1, metadata !4712, metadata !DIExpression()), !dbg !4713
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !4715
  call void @llvm.dbg.value(metadata ptr %2, metadata !4405, metadata !DIExpression()), !dbg !4716
  %3 = icmp eq ptr %2, null, !dbg !4718
  br i1 %3, label %4, label %5, !dbg !4719

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4720
  unreachable, !dbg !4720

5:                                                ; preds = %1
  ret ptr %2, !dbg !4721
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4704 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4703, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i64 %1, metadata !4706, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i64 %0, metadata !4709, metadata !DIExpression()), !dbg !4723
  call void @llvm.dbg.value(metadata i64 %1, metadata !4712, metadata !DIExpression()), !dbg !4723
  call void @llvm.dbg.value(metadata i64 %0, metadata !4709, metadata !DIExpression()), !dbg !4723
  call void @llvm.dbg.value(metadata i64 %1, metadata !4712, metadata !DIExpression()), !dbg !4723
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !4725
  call void @llvm.dbg.value(metadata ptr %3, metadata !4405, metadata !DIExpression()), !dbg !4726
  %4 = icmp eq ptr %3, null, !dbg !4728
  br i1 %4, label %5, label %6, !dbg !4729

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4730
  unreachable, !dbg !4730

6:                                                ; preds = %2
  ret ptr %3, !dbg !4731
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4732 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4736, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i64 %1, metadata !4737, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i64 %1, metadata !4429, metadata !DIExpression()), !dbg !4739
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4741
  call void @llvm.dbg.value(metadata ptr %3, metadata !4405, metadata !DIExpression()), !dbg !4742
  %4 = icmp eq ptr %3, null, !dbg !4744
  br i1 %4, label %5, label %6, !dbg !4745

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4746
  unreachable, !dbg !4746

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4747, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata ptr %0, metadata !4753, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata i64 %1, metadata !4754, metadata !DIExpression()), !dbg !4755
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4757
  ret ptr %3, !dbg !4758
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4759 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4763, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata i64 %1, metadata !4764, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata i64 %1, metadata !4443, metadata !DIExpression()), !dbg !4766
  call void @llvm.dbg.value(metadata i64 %1, metadata !4445, metadata !DIExpression()), !dbg !4768
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4770
  call void @llvm.dbg.value(metadata ptr %3, metadata !4405, metadata !DIExpression()), !dbg !4771
  %4 = icmp eq ptr %3, null, !dbg !4773
  br i1 %4, label %5, label %6, !dbg !4774

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4775
  unreachable, !dbg !4775

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4747, metadata !DIExpression()), !dbg !4776
  call void @llvm.dbg.value(metadata ptr %0, metadata !4753, metadata !DIExpression()), !dbg !4776
  call void @llvm.dbg.value(metadata i64 %1, metadata !4754, metadata !DIExpression()), !dbg !4776
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4778
  ret ptr %3, !dbg !4779
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4780 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4784, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i64 %1, metadata !4785, metadata !DIExpression()), !dbg !4787
  %3 = add nsw i64 %1, 1, !dbg !4788
  call void @llvm.dbg.value(metadata i64 %3, metadata !4443, metadata !DIExpression()), !dbg !4789
  call void @llvm.dbg.value(metadata i64 %3, metadata !4445, metadata !DIExpression()), !dbg !4791
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4793
  call void @llvm.dbg.value(metadata ptr %4, metadata !4405, metadata !DIExpression()), !dbg !4794
  %5 = icmp eq ptr %4, null, !dbg !4796
  br i1 %5, label %6, label %7, !dbg !4797

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4798
  unreachable, !dbg !4798

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4786, metadata !DIExpression()), !dbg !4787
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4799
  store i8 0, ptr %8, align 1, !dbg !4800, !tbaa !1136
  call void @llvm.dbg.value(metadata ptr %4, metadata !4747, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata ptr %0, metadata !4753, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i64 %1, metadata !4754, metadata !DIExpression()), !dbg !4801
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4803
  ret ptr %4, !dbg !4804
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4805 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4807, metadata !DIExpression()), !dbg !4808
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !4809
  %3 = add i64 %2, 1, !dbg !4810
  call void @llvm.dbg.value(metadata ptr %0, metadata !4736, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %3, metadata !4737, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %3, metadata !4429, metadata !DIExpression()), !dbg !4813
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4815
  call void @llvm.dbg.value(metadata ptr %4, metadata !4405, metadata !DIExpression()), !dbg !4816
  %5 = icmp eq ptr %4, null, !dbg !4818
  br i1 %5, label %6, label %7, !dbg !4819

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4820
  unreachable, !dbg !4820

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4747, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata ptr %0, metadata !4753, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i64 %3, metadata !4754, metadata !DIExpression()), !dbg !4821
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !4823
  ret ptr %4, !dbg !4824
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4825 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4830, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 %1, metadata !4827, metadata !DIExpression()), !dbg !4831
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.159, ptr noundef nonnull @.str.2.160, i32 noundef 5) #37, !dbg !4830
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.161, ptr noundef %2) #37, !dbg !4830
  %3 = icmp eq i32 %1, 0, !dbg !4830
  tail call void @llvm.assume(i1 %3), !dbg !4830
  tail call void @abort() #39, !dbg !4832
  unreachable, !dbg !4832
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4833 {
  %3 = alloca [81 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4871, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata ptr %1, metadata !4872, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 0, metadata !4873, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i8 0, metadata !4875, metadata !DIExpression()), !dbg !4895
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #37, !dbg !4896
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4876, metadata !DIExpression()), !dbg !4897
  call void @llvm.dbg.value(metadata ptr %1, metadata !4880, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata ptr %3, metadata !4882, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i32 0, metadata !4873, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 0, metadata !4874, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i8 0, metadata !4875, metadata !DIExpression()), !dbg !4895
  %4 = load i8, ptr %1, align 1, !dbg !4899, !tbaa !1136
  %5 = icmp eq i8 %4, 0, !dbg !4900
  br i1 %5, label %6, label %7, !dbg !4901

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4882, metadata !DIExpression()), !dbg !4898
  store i8 0, ptr %3, align 16, !dbg !4902, !tbaa !1136
  br label %74, !dbg !4903

7:                                                ; preds = %2, %47
  %8 = phi i8 [ %54, %47 ], [ %4, %2 ]
  %9 = phi ptr [ %53, %47 ], [ %3, %2 ]
  %10 = phi i32 [ %51, %47 ], [ 0, %2 ]
  %11 = phi i32 [ %50, %47 ], [ 0, %2 ]
  %12 = phi i64 [ %49, %47 ], [ 0, %2 ]
  %13 = phi ptr [ %52, %47 ], [ %1, %2 ]
  %14 = phi i8 [ %48, %47 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !4873, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 %11, metadata !4874, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata ptr %13, metadata !4880, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i8 %14, metadata !4875, metadata !DIExpression()), !dbg !4895
  %15 = sext i8 %8 to i32, !dbg !4899
  switch i32 %15, label %42 [
    i32 114, label %16
    i32 119, label %20
    i32 97, label %25
    i32 98, label %30
    i32 43, label %34
    i32 120, label %38
    i32 101, label %40
  ], !dbg !4904

16:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !4873, metadata !DIExpression()), !dbg !4895
  %17 = icmp slt i64 %12, 80, !dbg !4905
  br i1 %17, label %18, label %47, !dbg !4908

18:                                               ; preds = %16
  %19 = add nsw i64 %12, 1, !dbg !4909
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %19), metadata !4882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4898
  store i8 %8, ptr %9, align 1, !dbg !4910, !tbaa !1136
  br label %47, !dbg !4911

20:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !4873, metadata !DIExpression()), !dbg !4895
  %21 = or i32 %11, 576, !dbg !4912
  call void @llvm.dbg.value(metadata i32 %21, metadata !4874, metadata !DIExpression()), !dbg !4895
  %22 = icmp slt i64 %12, 80, !dbg !4913
  br i1 %22, label %23, label %47, !dbg !4915

23:                                               ; preds = %20
  %24 = add nsw i64 %12, 1, !dbg !4916
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %24), metadata !4882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4898
  store i8 %8, ptr %9, align 1, !dbg !4917, !tbaa !1136
  br label %47, !dbg !4918

25:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !4873, metadata !DIExpression()), !dbg !4895
  %26 = or i32 %11, 1088, !dbg !4919
  call void @llvm.dbg.value(metadata i32 %26, metadata !4874, metadata !DIExpression()), !dbg !4895
  %27 = icmp slt i64 %12, 80, !dbg !4920
  br i1 %27, label %28, label %47, !dbg !4922

28:                                               ; preds = %25
  %29 = add nsw i64 %12, 1, !dbg !4923
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4898
  store i8 %8, ptr %9, align 1, !dbg !4924, !tbaa !1136
  br label %47, !dbg !4925

30:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 %11, metadata !4874, metadata !DIExpression()), !dbg !4895
  %31 = icmp slt i64 %12, 80, !dbg !4926
  br i1 %31, label %32, label %47, !dbg !4928

32:                                               ; preds = %30
  %33 = add nsw i64 %12, 1, !dbg !4929
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4898
  store i8 %8, ptr %9, align 1, !dbg !4930, !tbaa !1136
  br label %47, !dbg !4931

34:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 2, metadata !4873, metadata !DIExpression()), !dbg !4895
  %35 = icmp slt i64 %12, 80, !dbg !4932
  br i1 %35, label %36, label %47, !dbg !4934

36:                                               ; preds = %34
  %37 = add nsw i64 %12, 1, !dbg !4935
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %37), metadata !4882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4898
  store i8 %8, ptr %9, align 1, !dbg !4936, !tbaa !1136
  br label %47, !dbg !4937

38:                                               ; preds = %7
  %39 = or i32 %11, 128, !dbg !4938
  call void @llvm.dbg.value(metadata i32 %39, metadata !4874, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i8 1, metadata !4875, metadata !DIExpression()), !dbg !4895
  br label %47, !dbg !4939

40:                                               ; preds = %7
  %41 = or i32 %11, 524288, !dbg !4940
  call void @llvm.dbg.value(metadata i32 %41, metadata !4874, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i8 1, metadata !4875, metadata !DIExpression()), !dbg !4895
  br label %47, !dbg !4941

42:                                               ; preds = %7
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #38, !dbg !4942
  call void @llvm.dbg.value(metadata i64 %43, metadata !4883, metadata !DIExpression()), !dbg !4943
  %44 = sub nsw i64 80, %12, !dbg !4944
  %45 = tail call i64 @llvm.umin.i64(i64 %43, i64 %44), !dbg !4946
  call void @llvm.dbg.value(metadata i64 %45, metadata !4883, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata ptr %9, metadata !4947, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.value(metadata ptr %13, metadata !4950, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.value(metadata i64 %45, metadata !4951, metadata !DIExpression()), !dbg !4952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %13, i64 noundef %45, i1 noundef false) #37, !dbg !4954
  %46 = getelementptr inbounds i8, ptr %9, i64 %45, !dbg !4955
  call void @llvm.dbg.value(metadata ptr %46, metadata !4882, metadata !DIExpression()), !dbg !4898
  br label %56, !dbg !4956

47:                                               ; preds = %34, %36, %30, %32, %25, %28, %20, %23, %16, %18, %40, %38
  %48 = phi i8 [ 1, %40 ], [ 1, %38 ], [ %14, %36 ], [ %14, %34 ], [ %14, %32 ], [ %14, %30 ], [ %14, %28 ], [ %14, %25 ], [ %14, %23 ], [ %14, %20 ], [ %14, %18 ], [ %14, %16 ], !dbg !4895
  %49 = phi i64 [ %12, %40 ], [ %12, %38 ], [ %37, %36 ], [ %12, %34 ], [ %33, %32 ], [ %12, %30 ], [ %29, %28 ], [ %12, %25 ], [ %24, %23 ], [ %12, %20 ], [ %19, %18 ], [ %12, %16 ]
  %50 = phi i32 [ %41, %40 ], [ %39, %38 ], [ %11, %36 ], [ %11, %34 ], [ %11, %32 ], [ %11, %30 ], [ %26, %28 ], [ %26, %25 ], [ %21, %23 ], [ %21, %20 ], [ %11, %18 ], [ %11, %16 ], !dbg !4895
  %51 = phi i32 [ %10, %40 ], [ %10, %38 ], [ 2, %36 ], [ 2, %34 ], [ %10, %32 ], [ %10, %30 ], [ 1, %28 ], [ 1, %25 ], [ 1, %23 ], [ 1, %20 ], [ 0, %18 ], [ 0, %16 ], !dbg !4895
  call void @llvm.dbg.value(metadata i32 %51, metadata !4873, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 %50, metadata !4874, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %49), metadata !4882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4898
  call void @llvm.dbg.value(metadata i8 %48, metadata !4875, metadata !DIExpression()), !dbg !4895
  %52 = getelementptr inbounds i8, ptr %13, i64 1, !dbg !4957
  call void @llvm.dbg.value(metadata ptr %52, metadata !4880, metadata !DIExpression()), !dbg !4898
  %53 = getelementptr inbounds i8, ptr %3, i64 %49, !dbg !4895
  call void @llvm.dbg.value(metadata ptr %53, metadata !4882, metadata !DIExpression()), !dbg !4898
  %54 = load i8, ptr %52, align 1, !dbg !4899, !tbaa !1136
  %55 = icmp eq i8 %54, 0, !dbg !4900
  br i1 %55, label %56, label %7, !dbg !4901, !llvm.loop !4958

56:                                               ; preds = %47, %42
  %57 = phi i8 [ %14, %42 ], [ %48, %47 ]
  %58 = phi i32 [ %11, %42 ], [ %50, %47 ]
  %59 = phi i32 [ %10, %42 ], [ %51, %47 ]
  %60 = phi ptr [ %46, %42 ], [ %53, %47 ], !dbg !4898
  call void @llvm.dbg.value(metadata ptr %60, metadata !4882, metadata !DIExpression()), !dbg !4898
  store i8 0, ptr %60, align 1, !dbg !4902, !tbaa !1136
  %61 = and i8 %57, 1, !dbg !4960
  %62 = icmp eq i8 %61, 0, !dbg !4960
  br i1 %62, label %74, label %63, !dbg !4903

63:                                               ; preds = %56
  %64 = or i32 %59, %58, !dbg !4961
  %65 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %64, i32 noundef 438) #37, !dbg !4962
  call void @llvm.dbg.value(metadata i32 %65, metadata !4888, metadata !DIExpression()), !dbg !4963
  %66 = icmp slt i32 %65, 0, !dbg !4964
  br i1 %66, label %76, label %67, !dbg !4966

67:                                               ; preds = %63
  %68 = call noalias ptr @fdopen(i32 noundef %65, ptr noundef nonnull %3) #37, !dbg !4967
  call void @llvm.dbg.value(metadata ptr %68, metadata !4891, metadata !DIExpression()), !dbg !4963
  %69 = icmp eq ptr %68, null, !dbg !4968
  br i1 %69, label %70, label %76, !dbg !4969

70:                                               ; preds = %67
  %71 = tail call ptr @__errno_location() #40, !dbg !4970
  %72 = load i32, ptr %71, align 4, !dbg !4970, !tbaa !1127
  call void @llvm.dbg.value(metadata i32 %72, metadata !4892, metadata !DIExpression()), !dbg !4971
  %73 = tail call i32 @close(i32 noundef %65) #37, !dbg !4972
  store i32 %72, ptr %71, align 4, !dbg !4973, !tbaa !1127
  br label %76, !dbg !4974

74:                                               ; preds = %6, %56
  call void @llvm.dbg.value(metadata ptr %0, metadata !4975, metadata !DIExpression()), !dbg !4979
  call void @llvm.dbg.value(metadata ptr %1, metadata !4978, metadata !DIExpression()), !dbg !4979
  %75 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4981
  br label %76, !dbg !4982

76:                                               ; preds = %63, %70, %67, %74
  %77 = phi ptr [ %75, %74 ], [ null, %63 ], [ null, %70 ], [ %68, %67 ], !dbg !4895
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #37, !dbg !4983
  ret ptr %77, !dbg !4983
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !4984 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #34

; Function Attrs: nofree nounwind
declare !dbg !4987 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4990 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4991 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4994 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5032, metadata !DIExpression()), !dbg !5037
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !5038
  call void @llvm.dbg.value(metadata i1 poison, metadata !5033, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5037
  call void @llvm.dbg.value(metadata ptr %0, metadata !5039, metadata !DIExpression()), !dbg !5042
  %3 = load i32, ptr %0, align 8, !dbg !5044, !tbaa !1374
  %4 = and i32 %3, 32, !dbg !5045
  %5 = icmp eq i32 %4, 0, !dbg !5045
  call void @llvm.dbg.value(metadata i1 %5, metadata !5035, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5037
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !5046
  %7 = icmp eq i32 %6, 0, !dbg !5047
  call void @llvm.dbg.value(metadata i1 %7, metadata !5036, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5037
  br i1 %5, label %8, label %18, !dbg !5048

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5050
  call void @llvm.dbg.value(metadata i1 %9, metadata !5033, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5037
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5051
  %11 = xor i1 %7, true, !dbg !5051
  %12 = sext i1 %11 to i32, !dbg !5051
  br i1 %10, label %21, label %13, !dbg !5051

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !5052
  %15 = load i32, ptr %14, align 4, !dbg !5052, !tbaa !1127
  %16 = icmp ne i32 %15, 9, !dbg !5053
  %17 = sext i1 %16 to i32, !dbg !5054
  br label %21, !dbg !5054

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5055

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !5057
  store i32 0, ptr %20, align 4, !dbg !5059, !tbaa !1127
  br label %21, !dbg !5057

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5037
  ret i32 %22, !dbg !5060
}

; Function Attrs: nounwind
declare !dbg !5061 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5064 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5069, metadata !DIExpression()), !dbg !5074
  call void @llvm.dbg.value(metadata ptr %1, metadata !5070, metadata !DIExpression()), !dbg !5074
  call void @llvm.dbg.value(metadata i64 %2, metadata !5071, metadata !DIExpression()), !dbg !5074
  call void @llvm.dbg.value(metadata ptr %3, metadata !5072, metadata !DIExpression()), !dbg !5074
  %5 = icmp eq ptr %1, null, !dbg !5075
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5077
  %7 = select i1 %5, ptr @.str.168, ptr %1, !dbg !5077
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5077
  call void @llvm.dbg.value(metadata i64 %8, metadata !5071, metadata !DIExpression()), !dbg !5074
  call void @llvm.dbg.value(metadata ptr %7, metadata !5070, metadata !DIExpression()), !dbg !5074
  call void @llvm.dbg.value(metadata ptr %6, metadata !5069, metadata !DIExpression()), !dbg !5074
  %9 = icmp eq ptr %3, null, !dbg !5078
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5080
  call void @llvm.dbg.value(metadata ptr %10, metadata !5072, metadata !DIExpression()), !dbg !5074
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #37, !dbg !5081
  call void @llvm.dbg.value(metadata i64 %11, metadata !5073, metadata !DIExpression()), !dbg !5074
  %12 = icmp ult i64 %11, -3, !dbg !5082
  br i1 %12, label %13, label %17, !dbg !5084

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #38, !dbg !5085
  %15 = icmp eq i32 %14, 0, !dbg !5085
  br i1 %15, label %16, label %29, !dbg !5086

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5087, metadata !DIExpression()), !dbg !5092
  call void @llvm.dbg.value(metadata ptr %10, metadata !5094, metadata !DIExpression()), !dbg !5099
  call void @llvm.dbg.value(metadata i32 0, metadata !5097, metadata !DIExpression()), !dbg !5099
  call void @llvm.dbg.value(metadata i64 8, metadata !5098, metadata !DIExpression()), !dbg !5099
  store i64 0, ptr %10, align 1, !dbg !5101
  br label %29, !dbg !5102

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5103
  br i1 %18, label %19, label %20, !dbg !5105

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !5106
  unreachable, !dbg !5106

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5107

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !5109
  br i1 %23, label %29, label %24, !dbg !5110

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5111
  br i1 %25, label %29, label %26, !dbg !5114

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5115, !tbaa !1136
  %28 = zext i8 %27 to i32, !dbg !5116
  store i32 %28, ptr %6, align 4, !dbg !5117, !tbaa !1127
  br label %29, !dbg !5118

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5074
  ret i64 %30, !dbg !5119
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5120 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !5125 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5127, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata i64 %1, metadata !5128, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata i64 %2, metadata !5129, metadata !DIExpression()), !dbg !5131
  %4 = icmp eq i64 %2, 0, !dbg !5132
  br i1 %4, label %8, label %5, !dbg !5132

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5132
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5132
  br i1 %7, label %13, label %8, !dbg !5132

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5130, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5131
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5130, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5131
  %9 = mul i64 %2, %1, !dbg !5132
  call void @llvm.dbg.value(metadata i64 %9, metadata !5130, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata ptr %0, metadata !5134, metadata !DIExpression()), !dbg !5138
  call void @llvm.dbg.value(metadata i64 %9, metadata !5137, metadata !DIExpression()), !dbg !5138
  %10 = icmp eq i64 %9, 0, !dbg !5140
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5140
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #43, !dbg !5141
  br label %15, !dbg !5142

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5130, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5131
  %14 = tail call ptr @__errno_location() #40, !dbg !5143
  store i32 12, ptr %14, align 4, !dbg !5145, !tbaa !1127
  br label %15, !dbg !5146

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5131
  ret ptr %16, !dbg !5147
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5148 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5150, metadata !DIExpression()), !dbg !5155
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !5156
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5151, metadata !DIExpression()), !dbg !5157
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !5158
  %4 = icmp eq i32 %3, 0, !dbg !5158
  br i1 %4, label %5, label %12, !dbg !5160

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5161, metadata !DIExpression()), !dbg !5165
  %6 = load i16, ptr %2, align 16, !dbg !5168
  %7 = icmp eq i16 %6, 67, !dbg !5168
  br i1 %7, label %11, label %8, !dbg !5169

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5161, metadata !DIExpression()), !dbg !5170
  call void @llvm.dbg.value(metadata ptr @.str.1.173, metadata !5164, metadata !DIExpression()), !dbg !5170
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.173, i64 6), !dbg !5172
  %10 = icmp eq i32 %9, 0, !dbg !5173
  br i1 %10, label %11, label %12, !dbg !5174

11:                                               ; preds = %8, %5
  br label %12, !dbg !5175

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5155
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !5176
  ret i1 %13, !dbg !5176
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5177 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5181, metadata !DIExpression()), !dbg !5184
  call void @llvm.dbg.value(metadata ptr %1, metadata !5182, metadata !DIExpression()), !dbg !5184
  call void @llvm.dbg.value(metadata i64 %2, metadata !5183, metadata !DIExpression()), !dbg !5184
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !5185
  ret i32 %4, !dbg !5186
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5187 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5191, metadata !DIExpression()), !dbg !5192
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !5193
  ret ptr %2, !dbg !5194
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5195 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5197, metadata !DIExpression()), !dbg !5199
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !5200
  call void @llvm.dbg.value(metadata ptr %2, metadata !5198, metadata !DIExpression()), !dbg !5199
  ret ptr %2, !dbg !5201
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5202 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5204, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.value(metadata ptr %1, metadata !5205, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.value(metadata i64 %2, metadata !5206, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.value(metadata i32 %0, metadata !5197, metadata !DIExpression()), !dbg !5212
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !5214
  call void @llvm.dbg.value(metadata ptr %4, metadata !5198, metadata !DIExpression()), !dbg !5212
  call void @llvm.dbg.value(metadata ptr %4, metadata !5207, metadata !DIExpression()), !dbg !5211
  %5 = icmp eq ptr %4, null, !dbg !5215
  br i1 %5, label %6, label %9, !dbg !5216

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5217
  br i1 %7, label %19, label %8, !dbg !5220

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5221, !tbaa !1136
  br label %19, !dbg !5222

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !5223
  call void @llvm.dbg.value(metadata i64 %10, metadata !5208, metadata !DIExpression()), !dbg !5224
  %11 = icmp ult i64 %10, %2, !dbg !5225
  br i1 %11, label %12, label %14, !dbg !5227

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5228
  call void @llvm.dbg.value(metadata ptr %1, metadata !5230, metadata !DIExpression()), !dbg !5235
  call void @llvm.dbg.value(metadata ptr %4, metadata !5233, metadata !DIExpression()), !dbg !5235
  call void @llvm.dbg.value(metadata i64 %13, metadata !5234, metadata !DIExpression()), !dbg !5235
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #37, !dbg !5237
  br label %19, !dbg !5238

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5239
  br i1 %15, label %19, label %16, !dbg !5242

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5243
  call void @llvm.dbg.value(metadata ptr %1, metadata !5230, metadata !DIExpression()), !dbg !5245
  call void @llvm.dbg.value(metadata ptr %4, metadata !5233, metadata !DIExpression()), !dbg !5245
  call void @llvm.dbg.value(metadata i64 %17, metadata !5234, metadata !DIExpression()), !dbg !5245
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !5247
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5248
  store i8 0, ptr %18, align 1, !dbg !5249, !tbaa !1136
  br label %19, !dbg !5250

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5251
  ret i32 %20, !dbg !5252
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
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!59, !408, !656, !660, !675, !939, !971, !974, !976, !979, !981, !983, !722, !736, !783, !985, !933, !991, !1022, !1024, !1026, !955, !1028, !1031, !1035, !1037}
!llvm.ident = !{!1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039}
!llvm.module.flags = !{!1040, !1041, !1042, !1043, !1044, !1045}

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
!58 = distinct !DIGlobalVariable(name: "shortopts", scope: !59, file: !2, line: 52, type: !403, isLocal: true, isDefinition: true)
!59 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !60, retainedTypes: !93, globals: !104, splitDebugInlining: false, nameTableKind: None)
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
!93 = !{!94, !95, !63, !96, !97, !100, !102, !103}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 46, baseType: !99)
!98 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!99 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!104 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !105, !110, !115, !120, !125, !207, !212, !214, !219, !224, !229, !231, !233, !238, !240, !242, !244, !246, !251, !253, !255, !257, !259, !261, !263, !268, !273, !278, !280, !282, !284, !286, !288, !290, !295, !297, !299, !304, !309, !314, !57, !319, !321, !323, !325, !327, !339, !396, !401}
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 14)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 16)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !62, line: 729, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 56)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !62, line: 736, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 75)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !127, file: !62, line: 575, type: !63, isLocal: true, isDefinition: true)
!127 = distinct !DISubprogram(name: "oputs_", scope: !62, file: !62, line: 573, type: !128, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !130)
!128 = !DISubroutineType(cc: DW_CC_nocall, types: !129)
!129 = !{null, !100, !100}
!130 = !{!131, !132, !133, !136, !137, !138, !139, !143, !144, !145, !146, !148, !201, !202, !203, !205, !206}
!131 = !DILocalVariable(name: "program", arg: 1, scope: !127, file: !62, line: 573, type: !100)
!132 = !DILocalVariable(name: "option", arg: 2, scope: !127, file: !62, line: 573, type: !100)
!133 = !DILocalVariable(name: "term", scope: !134, file: !62, line: 585, type: !100)
!134 = distinct !DILexicalBlock(scope: !135, file: !62, line: 582, column: 5)
!135 = distinct !DILexicalBlock(scope: !127, file: !62, line: 581, column: 7)
!136 = !DILocalVariable(name: "double_space", scope: !127, file: !62, line: 594, type: !103)
!137 = !DILocalVariable(name: "first_word", scope: !127, file: !62, line: 595, type: !100)
!138 = !DILocalVariable(name: "option_text", scope: !127, file: !62, line: 596, type: !100)
!139 = !DILocalVariable(name: "s", scope: !140, file: !62, line: 608, type: !100)
!140 = distinct !DILexicalBlock(scope: !141, file: !62, line: 605, column: 5)
!141 = distinct !DILexicalBlock(scope: !142, file: !62, line: 604, column: 12)
!142 = distinct !DILexicalBlock(scope: !127, file: !62, line: 597, column: 7)
!143 = !DILocalVariable(name: "spaces", scope: !140, file: !62, line: 609, type: !97)
!144 = !DILocalVariable(name: "anchor_len", scope: !127, file: !62, line: 620, type: !97)
!145 = !DILocalVariable(name: "desc_text", scope: !127, file: !62, line: 625, type: !100)
!146 = !DILocalVariable(name: "__ptr", scope: !147, file: !62, line: 644, type: !100)
!147 = distinct !DILexicalBlock(scope: !127, file: !62, line: 644, column: 3)
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
!202 = !DILocalVariable(name: "url_program", scope: !127, file: !62, line: 648, type: !100)
!203 = !DILocalVariable(name: "__ptr", scope: !204, file: !62, line: 686, type: !100)
!204 = distinct !DILexicalBlock(scope: !127, file: !62, line: 686, column: 3)
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
!289 = distinct !DIGlobalVariable(scope: null, file: !62, line: 839, type: !112, isLocal: true, isDefinition: true)
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
!340 = distinct !DIGlobalVariable(name: "line_in", scope: !341, file: !2, line: 110, type: !393, isLocal: true, isDefinition: true)
!341 = distinct !DISubprogram(name: "expand", scope: !2, file: !2, line: 102, type: !342, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !344)
!342 = !DISubroutineType(types: !343)
!343 = !{null}
!344 = !{!345, !346, !359, !371, !372, !378, !379, !385, !386, !389, !391, !392}
!345 = !DILocalVariable(name: "fp", scope: !341, file: !2, line: 105, type: !149)
!346 = !DILocalVariable(name: "mbbuf", scope: !341, file: !2, line: 111, type: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !348, line: 50, baseType: !349)
!348 = !DIFile(filename: "./lib/mbbuf.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0ec2f2727b8356ce94eb797f3e7bb5fd")
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !348, line: 43, size: 320, elements: !350)
!350 = !{!351, !352, !353, !357, !358}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !349, file: !348, line: 45, baseType: !94, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !349, file: !348, line: 46, baseType: !149, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !349, file: !348, line: 47, baseType: !354, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !355, line: 130, baseType: !356)
!355 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !98, line: 35, baseType: !177)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !349, file: !348, line: 48, baseType: !354, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !349, file: !348, line: 49, baseType: !354, size: 64, offset: 256)
!359 = !DILocalVariable(name: "g", scope: !360, file: !2, line: 117, type: !361)
!360 = distinct !DILexicalBlock(scope: !341, file: !2, line: 115, column: 5)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !84, line: 143, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 138, size: 64, elements: !363)
!363 = !{!364, !369, !370}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !362, file: !84, line: 140, baseType: !365, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !366, line: 37, baseType: !367)
!366 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !176, line: 57, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !176, line: 42, baseType: !69)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !362, file: !84, line: 141, baseType: !102, size: 8, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !362, file: !84, line: 142, baseType: !102, size: 8, offset: 40)
!371 = !DILocalVariable(name: "convert", scope: !360, file: !2, line: 120, type: !103)
!372 = !DILocalVariable(name: "column", scope: !360, file: !2, line: 127, type: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "colno", file: !374, line: 20, baseType: !375)
!374 = !DIFile(filename: "src/expand-common.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a812a23c6054c0178c7555c3090cc098")
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !376, line: 101, baseType: !377)
!376 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !176, line: 72, baseType: !177)
!378 = !DILocalVariable(name: "tab_index", scope: !360, file: !2, line: 130, type: !354)
!379 = !DILocalVariable(name: "last_tab", scope: !380, file: !2, line: 148, type: !103)
!380 = distinct !DILexicalBlock(scope: !381, file: !2, line: 146, column: 17)
!381 = distinct !DILexicalBlock(scope: !382, file: !2, line: 145, column: 19)
!382 = distinct !DILexicalBlock(scope: !383, file: !2, line: 142, column: 13)
!383 = distinct !DILexicalBlock(scope: !384, file: !2, line: 141, column: 15)
!384 = distinct !DILexicalBlock(scope: !360, file: !2, line: 136, column: 9)
!385 = !DILocalVariable(name: "next_tab_column", scope: !380, file: !2, line: 149, type: !373)
!386 = !DILocalVariable(name: "width", scope: !387, file: !2, line: 170, type: !63)
!387 = distinct !DILexicalBlock(scope: !388, file: !2, line: 169, column: 17)
!388 = distinct !DILexicalBlock(scope: !381, file: !2, line: 161, column: 24)
!389 = !DILocalVariable(name: "__ptr", scope: !390, file: !2, line: 180, type: !100)
!390 = distinct !DILexicalBlock(scope: !384, file: !2, line: 180, column: 11)
!391 = !DILocalVariable(name: "__stream", scope: !390, file: !2, line: 180, type: !149)
!392 = !DILocalVariable(name: "__cnt", scope: !390, file: !2, line: 180, type: !97)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2097152, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 262144)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !398, isLocal: true, isDefinition: true)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 23)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !62, line: 952, type: !316, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 272, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 34)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "convert_entire_line", scope: !408, file: !409, line: 30, type: !103, isLocal: false, isDefinition: true)
!408 = distinct !DICompileUnit(language: DW_LANG_C11, file: !409, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !410, retainedTypes: !434, globals: !435, splitDebugInlining: false, nameTableKind: None)
!409 = !DIFile(filename: "src/expand-common.c", directory: "/src", checksumkind: CSK_MD5, checksum: "942c25878b2cf9f4cd3ad8d127f8f292")
!410 = !{!67, !411, !425}
!411 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !412, line: 42, baseType: !69, size: 32, elements: !413)
!412 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!413 = !{!414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424}
!414 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!415 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!416 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!417 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!418 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!419 = !DIEnumerator(name: "c_quoting_style", value: 5)
!420 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!421 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!422 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!423 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!424 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!425 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !426, line: 44, baseType: !69, size: 32, elements: !427)
!426 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!427 = !{!428, !429, !430, !431, !432, !433}
!428 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!429 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!430 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!431 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!432 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!433 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!434 = !{!63, !96, !103, !177, !99, !95, !97, !100, !102}
!435 = !{!406, !436, !438, !443, !445, !450, !455, !460, !462, !507, !509, !511, !513, !515, !520, !522, !524, !527, !529, !531, !536, !538, !543, !548, !553, !555, !557, !559, !561, !564, !567, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648}
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(name: "exit_status", scope: !408, file: !409, line: 69, type: !63, isLocal: false, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !409, line: 177, type: !440, isLocal: true, isDefinition: true)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 41)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !409, line: 188, type: !440, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !409, line: 207, type: !447, isLocal: true, isDefinition: true)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 11)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !409, line: 209, type: !452, isLocal: true, isDefinition: true)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 25)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !409, line: 217, type: !457, isLocal: true, isDefinition: true)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 43)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !409, line: 326, type: !398, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(name: "prev_file", scope: !464, file: !409, line: 351, type: !94, isLocal: true, isDefinition: true)
!464 = distinct !DISubprogram(name: "next_file", scope: !409, file: !409, line: 349, type: !465, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !501)
!465 = !DISubroutineType(types: !466)
!466 = !{!467, !467}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !469)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !469, file: !153, line: 51, baseType: !63, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !469, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !469, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !469, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !469, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !469, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !469, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !469, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !469, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !469, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !469, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !469, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !469, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !469, file: !153, line: 70, baseType: !485, size: 64, offset: 832)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !469, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !469, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !469, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !469, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !469, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !469, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !469, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !469, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !469, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !469, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !469, file: !153, line: 93, baseType: !485, size: 64, offset: 1344)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !469, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !469, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !469, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !469, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!501 = !{!502, !503, !504}
!502 = !DILocalVariable(name: "fp", arg: 1, scope: !464, file: !409, line: 349, type: !467)
!503 = !DILocalVariable(name: "file", scope: !464, file: !409, line: 352, type: !94)
!504 = !DILocalVariable(name: "err", scope: !505, file: !409, line: 356, type: !63)
!505 = distinct !DILexicalBlock(scope: !506, file: !409, line: 355, column: 5)
!506 = distinct !DILexicalBlock(scope: !464, file: !409, line: 354, column: 7)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !409, line: 359, type: !226, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !409, line: 365, type: !235, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !409, line: 378, type: !226, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !409, line: 405, type: !301, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !409, line: 409, type: !517, isLocal: true, isDefinition: true)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2440, elements: !518)
!518 = !{!519}
!519 = !DISubrange(count: 305)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(name: "max_column_width", scope: !408, file: !409, line: 42, type: !354, isLocal: false, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(name: "first_free_tab", scope: !408, file: !409, line: 54, type: !354, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(name: "tab_list", scope: !408, file: !409, line: 47, type: !526, isLocal: true, isDefinition: true)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(name: "n_tabs_allocated", scope: !408, file: !409, line: 50, type: !354, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !409, line: 78, type: !398, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !409, line: 103, type: !533, isLocal: true, isDefinition: true)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 47)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !409, line: 122, type: !533, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !409, line: 249, type: !540, isLocal: true, isDefinition: true)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 21)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !409, line: 251, type: !545, isLocal: true, isDefinition: true)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !546)
!546 = !{!547}
!547 = !DISubrange(count: 28)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !409, line: 256, type: !550, isLocal: true, isDefinition: true)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: 45)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(name: "extend_size", scope: !408, file: !409, line: 36, type: !373, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(name: "increment_size", scope: !408, file: !409, line: 39, type: !373, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(name: "tab_size", scope: !408, file: !409, line: 33, type: !373, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !408, file: !409, line: 66, type: !103, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "stdin_argv", scope: !408, file: !409, line: 60, type: !563, isLocal: true, isDefinition: true)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !227)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(name: "file_list", scope: !408, file: !409, line: 57, type: !566, isLocal: true, isDefinition: true)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !569, file: !62, line: 575, type: !63, isLocal: true, isDefinition: true)
!569 = distinct !DISubprogram(name: "oputs_", scope: !62, file: !62, line: 573, type: !570, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !571)
!570 = !DISubroutineType(types: !129)
!571 = !{!572, !573, !574, !577, !578, !579, !580, !584, !585, !586, !587, !589, !590, !591, !592, !594, !595}
!572 = !DILocalVariable(name: "program", arg: 1, scope: !569, file: !62, line: 573, type: !100)
!573 = !DILocalVariable(name: "option", arg: 2, scope: !569, file: !62, line: 573, type: !100)
!574 = !DILocalVariable(name: "term", scope: !575, file: !62, line: 585, type: !100)
!575 = distinct !DILexicalBlock(scope: !576, file: !62, line: 582, column: 5)
!576 = distinct !DILexicalBlock(scope: !569, file: !62, line: 581, column: 7)
!577 = !DILocalVariable(name: "double_space", scope: !569, file: !62, line: 594, type: !103)
!578 = !DILocalVariable(name: "first_word", scope: !569, file: !62, line: 595, type: !100)
!579 = !DILocalVariable(name: "option_text", scope: !569, file: !62, line: 596, type: !100)
!580 = !DILocalVariable(name: "s", scope: !581, file: !62, line: 608, type: !100)
!581 = distinct !DILexicalBlock(scope: !582, file: !62, line: 605, column: 5)
!582 = distinct !DILexicalBlock(scope: !583, file: !62, line: 604, column: 12)
!583 = distinct !DILexicalBlock(scope: !569, file: !62, line: 597, column: 7)
!584 = !DILocalVariable(name: "spaces", scope: !581, file: !62, line: 609, type: !97)
!585 = !DILocalVariable(name: "anchor_len", scope: !569, file: !62, line: 620, type: !97)
!586 = !DILocalVariable(name: "desc_text", scope: !569, file: !62, line: 625, type: !100)
!587 = !DILocalVariable(name: "__ptr", scope: !588, file: !62, line: 644, type: !100)
!588 = distinct !DILexicalBlock(scope: !569, file: !62, line: 644, column: 3)
!589 = !DILocalVariable(name: "__stream", scope: !588, file: !62, line: 644, type: !467)
!590 = !DILocalVariable(name: "__cnt", scope: !588, file: !62, line: 644, type: !97)
!591 = !DILocalVariable(name: "url_program", scope: !569, file: !62, line: 648, type: !100)
!592 = !DILocalVariable(name: "__ptr", scope: !593, file: !62, line: 686, type: !100)
!593 = distinct !DILexicalBlock(scope: !569, file: !62, line: 686, column: 3)
!594 = !DILocalVariable(name: "__stream", scope: !593, file: !62, line: 686, type: !467)
!595 = !DILocalVariable(name: "__cnt", scope: !593, file: !62, line: 686, type: !97)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !62, line: 585, type: !209, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !62, line: 586, type: !209, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !62, line: 595, type: !216, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !62, line: 620, type: !221, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !62, line: 648, type: !226, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !62, line: 648, type: !209, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !62, line: 649, type: !216, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !62, line: 649, type: !235, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !62, line: 650, type: !209, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !62, line: 651, type: !221, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !62, line: 651, type: !221, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !62, line: 652, type: !19, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !62, line: 653, type: !248, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !62, line: 654, type: !49, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !62, line: 655, type: !49, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !62, line: 656, type: !49, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !62, line: 657, type: !49, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !62, line: 663, type: !19, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !62, line: 664, type: !49, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !62, line: 669, type: !265, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !62, line: 669, type: !270, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !62, line: 676, type: !275, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !62, line: 676, type: !29, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !62, line: 679, type: !235, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !62, line: 683, type: !209, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !62, line: 688, type: !209, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !62, line: 691, type: !248, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !653, line: 3, type: !275, isLocal: true, isDefinition: true)
!653 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(name: "Version", scope: !656, file: !653, line: 3, type: !100, isLocal: false, isDefinition: true)
!656 = distinct !DICompileUnit(language: DW_LANG_C11, file: !653, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !657, splitDebugInlining: false, nameTableKind: None)
!657 = !{!651, !654}
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(name: "file_name", scope: !660, file: !661, line: 45, type: !100, isLocal: true, isDefinition: true)
!660 = distinct !DICompileUnit(language: DW_LANG_C11, file: !661, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !662, splitDebugInlining: false, nameTableKind: None)
!661 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!662 = !{!663, !665, !667, !669, !658, !671}
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !661, line: 121, type: !19, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !661, line: 121, type: !316, isLocal: true, isDefinition: true)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !661, line: 123, type: !19, isLocal: true, isDefinition: true)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !661, line: 126, type: !235, isLocal: true, isDefinition: true)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !660, file: !661, line: 55, type: !103, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !675, file: !676, line: 66, type: !719, isLocal: false, isDefinition: true)
!675 = distinct !DICompileUnit(language: DW_LANG_C11, file: !676, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !677, globals: !678, splitDebugInlining: false, nameTableKind: None)
!676 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!677 = !{!95, !102}
!678 = !{!679, !681, !701, !703, !705, !707, !673, !709, !711, !713, !715, !717}
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !676, line: 272, type: !209, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(name: "old_file_name", scope: !683, file: !676, line: 304, type: !100, isLocal: true, isDefinition: true)
!683 = distinct !DISubprogram(name: "verror_at_line", scope: !676, file: !676, line: 298, type: !684, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !694)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !63, !63, !100, !69, !100, !686}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !688)
!688 = !{!689, !691, !692, !693}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !687, file: !690, baseType: !69, size: 32)
!690 = !DIFile(filename: "lib/error.c", directory: "/src")
!691 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !687, file: !690, baseType: !69, size: 32, offset: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !687, file: !690, baseType: !95, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !687, file: !690, baseType: !95, size: 64, offset: 128)
!694 = !{!695, !696, !697, !698, !699, !700}
!695 = !DILocalVariable(name: "status", arg: 1, scope: !683, file: !676, line: 298, type: !63)
!696 = !DILocalVariable(name: "errnum", arg: 2, scope: !683, file: !676, line: 298, type: !63)
!697 = !DILocalVariable(name: "file_name", arg: 3, scope: !683, file: !676, line: 298, type: !100)
!698 = !DILocalVariable(name: "line_number", arg: 4, scope: !683, file: !676, line: 298, type: !69)
!699 = !DILocalVariable(name: "message", arg: 5, scope: !683, file: !676, line: 298, type: !100)
!700 = !DILocalVariable(name: "args", arg: 6, scope: !683, file: !676, line: 298, type: !686)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(name: "old_line_number", scope: !683, file: !676, line: 305, type: !69, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !676, line: 338, type: !216, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !676, line: 346, type: !248, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !676, line: 346, type: !226, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "error_message_count", scope: !675, file: !676, line: 69, type: !69, isLocal: false, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !675, file: !676, line: 295, type: !63, isLocal: false, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !676, line: 208, type: !19, isLocal: true, isDefinition: true)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !676, line: 208, type: !540, isLocal: true, isDefinition: true)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !676, line: 214, type: !209, isLocal: true, isDefinition: true)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(name: "program_name", scope: !722, file: !723, line: 31, type: !100, isLocal: false, isDefinition: true)
!722 = distinct !DICompileUnit(language: DW_LANG_C11, file: !723, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !724, globals: !725, splitDebugInlining: false, nameTableKind: None)
!723 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!724 = !{!94}
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
!736 = distinct !DICompileUnit(language: DW_LANG_C11, file: !733, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !737, splitDebugInlining: false, nameTableKind: None)
!737 = !{!730}
!738 = !{!739, !740, !741, !742, !743}
!739 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !732, file: !733, line: 38, type: !100)
!740 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !732, file: !733, line: 38, type: !100)
!741 = !DILocalVariable(name: "translation", scope: !732, file: !733, line: 40, type: !100)
!742 = !DILocalVariable(name: "w", scope: !732, file: !733, line: 47, type: !365)
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
!782 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !783, file: !759, line: 76, type: !855, isLocal: false, isDefinition: true)
!783 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !784, retainedTypes: !790, globals: !791, splitDebugInlining: false, nameTableKind: None)
!784 = !{!411, !785, !67}
!785 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !412, line: 254, baseType: !69, size: 32, elements: !786)
!786 = !{!787, !788, !789}
!787 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!788 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!789 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!790 = !{!63, !96, !97}
!791 = !{!757, !760, !762, !767, !769, !771, !773, !775, !777, !779, !781, !792, !796, !806, !808, !813, !815, !817, !819, !821, !844, !851, !853}
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !783, file: !759, line: 92, type: !794, isLocal: false, isDefinition: true)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 320, elements: !50)
!795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !783, file: !759, line: 1040, type: !798, isLocal: false, isDefinition: true)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !759, line: 56, size: 448, elements: !799)
!799 = !{!800, !801, !802, !804, !805}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !798, file: !759, line: 59, baseType: !411, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !798, file: !759, line: 62, baseType: !63, size: 32, offset: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !798, file: !759, line: 66, baseType: !803, size: 256, offset: 64)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !249)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !798, file: !759, line: 69, baseType: !100, size: 64, offset: 320)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !798, file: !759, line: 72, baseType: !100, size: 64, offset: 384)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !783, file: !759, line: 107, type: !798, isLocal: true, isDefinition: true)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(name: "slot0", scope: !783, file: !759, line: 831, type: !810, isLocal: true, isDefinition: true)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !811)
!811 = !{!812}
!812 = !DISubrange(count: 256)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !759, line: 321, type: !226, isLocal: true, isDefinition: true)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !759, line: 357, type: !226, isLocal: true, isDefinition: true)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(scope: null, file: !759, line: 358, type: !226, isLocal: true, isDefinition: true)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(scope: null, file: !759, line: 199, type: !19, isLocal: true, isDefinition: true)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(name: "quote", scope: !823, file: !759, line: 228, type: !842, isLocal: true, isDefinition: true)
!823 = distinct !DISubprogram(name: "gettext_quote", scope: !759, file: !759, line: 197, type: !824, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{!100, !100, !411}
!826 = !{!827, !828, !829, !830, !831}
!827 = !DILocalVariable(name: "msgid", arg: 1, scope: !823, file: !759, line: 197, type: !100)
!828 = !DILocalVariable(name: "s", arg: 2, scope: !823, file: !759, line: 197, type: !411)
!829 = !DILocalVariable(name: "translation", scope: !823, file: !759, line: 199, type: !100)
!830 = !DILocalVariable(name: "w", scope: !823, file: !759, line: 229, type: !365)
!831 = !DILocalVariable(name: "mbs", scope: !823, file: !759, line: 230, type: !832)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !745, line: 6, baseType: !833)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !747, line: 21, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !747, line: 13, size: 64, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !834, file: !747, line: 15, baseType: !63, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !834, file: !747, line: 20, baseType: !838, size: 32, offset: 32)
!838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !834, file: !747, line: 16, size: 32, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !838, file: !747, line: 18, baseType: !69, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !838, file: !747, line: 19, baseType: !216, size: 32)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 64, elements: !843)
!843 = !{!228, !218}
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(name: "slotvec", scope: !783, file: !759, line: 834, type: !846, isLocal: true, isDefinition: true)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !759, line: 823, size: 128, elements: !848)
!848 = !{!849, !850}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !847, file: !759, line: 825, baseType: !97, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !847, file: !759, line: 826, baseType: !94, size: 64, offset: 64)
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(name: "nslots", scope: !783, file: !759, line: 832, type: !63, isLocal: true, isDefinition: true)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(name: "slotvec0", scope: !783, file: !759, line: 833, type: !847, isLocal: true, isDefinition: true)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !856, size: 704, elements: !448)
!856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression())
!858 = distinct !DIGlobalVariable(scope: null, file: !859, line: 67, type: !316, isLocal: true, isDefinition: true)
!859 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(scope: null, file: !859, line: 69, type: !19, isLocal: true, isDefinition: true)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(scope: null, file: !859, line: 83, type: !19, isLocal: true, isDefinition: true)
!864 = !DIGlobalVariableExpression(var: !865, expr: !DIExpression())
!865 = distinct !DIGlobalVariable(scope: null, file: !859, line: 83, type: !216, isLocal: true, isDefinition: true)
!866 = !DIGlobalVariableExpression(var: !867, expr: !DIExpression())
!867 = distinct !DIGlobalVariable(scope: null, file: !859, line: 85, type: !226, isLocal: true, isDefinition: true)
!868 = !DIGlobalVariableExpression(var: !869, expr: !DIExpression())
!869 = distinct !DIGlobalVariable(scope: null, file: !859, line: 88, type: !870, isLocal: true, isDefinition: true)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !871)
!871 = !{!872}
!872 = !DISubrange(count: 171)
!873 = !DIGlobalVariableExpression(var: !874, expr: !DIExpression())
!874 = distinct !DIGlobalVariable(scope: null, file: !859, line: 88, type: !875, isLocal: true, isDefinition: true)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !404)
!876 = !DIGlobalVariableExpression(var: !877, expr: !DIExpression())
!877 = distinct !DIGlobalVariable(scope: null, file: !859, line: 105, type: !112, isLocal: true, isDefinition: true)
!878 = !DIGlobalVariableExpression(var: !879, expr: !DIExpression())
!879 = distinct !DIGlobalVariable(scope: null, file: !859, line: 109, type: !398, isLocal: true, isDefinition: true)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(scope: null, file: !859, line: 113, type: !545, isLocal: true, isDefinition: true)
!882 = !DIGlobalVariableExpression(var: !883, expr: !DIExpression())
!883 = distinct !DIGlobalVariable(scope: null, file: !859, line: 120, type: !884, isLocal: true, isDefinition: true)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !885)
!885 = !{!886}
!886 = !DISubrange(count: 32)
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression())
!888 = distinct !DIGlobalVariable(scope: null, file: !859, line: 127, type: !889, isLocal: true, isDefinition: true)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !890)
!890 = !{!891}
!891 = !DISubrange(count: 36)
!892 = !DIGlobalVariableExpression(var: !893, expr: !DIExpression())
!893 = distinct !DIGlobalVariable(scope: null, file: !859, line: 134, type: !270, isLocal: true, isDefinition: true)
!894 = !DIGlobalVariableExpression(var: !895, expr: !DIExpression())
!895 = distinct !DIGlobalVariable(scope: null, file: !859, line: 142, type: !896, isLocal: true, isDefinition: true)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !897)
!897 = !{!898}
!898 = !DISubrange(count: 44)
!899 = !DIGlobalVariableExpression(var: !900, expr: !DIExpression())
!900 = distinct !DIGlobalVariable(scope: null, file: !859, line: 150, type: !901, isLocal: true, isDefinition: true)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !902)
!902 = !{!903}
!903 = !DISubrange(count: 48)
!904 = !DIGlobalVariableExpression(var: !905, expr: !DIExpression())
!905 = distinct !DIGlobalVariable(scope: null, file: !859, line: 159, type: !906, isLocal: true, isDefinition: true)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !907)
!907 = !{!908}
!908 = !DISubrange(count: 52)
!909 = !DIGlobalVariableExpression(var: !910, expr: !DIExpression())
!910 = distinct !DIGlobalVariable(scope: null, file: !859, line: 170, type: !911, isLocal: true, isDefinition: true)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !912)
!912 = !{!913}
!913 = !DISubrange(count: 60)
!914 = !DIGlobalVariableExpression(var: !915, expr: !DIExpression())
!915 = distinct !DIGlobalVariable(scope: null, file: !859, line: 248, type: !198, isLocal: true, isDefinition: true)
!916 = !DIGlobalVariableExpression(var: !917, expr: !DIExpression())
!917 = distinct !DIGlobalVariable(scope: null, file: !859, line: 248, type: !292, isLocal: true, isDefinition: true)
!918 = !DIGlobalVariableExpression(var: !919, expr: !DIExpression())
!919 = distinct !DIGlobalVariable(scope: null, file: !859, line: 254, type: !198, isLocal: true, isDefinition: true)
!920 = !DIGlobalVariableExpression(var: !921, expr: !DIExpression())
!921 = distinct !DIGlobalVariable(scope: null, file: !859, line: 254, type: !107, isLocal: true, isDefinition: true)
!922 = !DIGlobalVariableExpression(var: !923, expr: !DIExpression())
!923 = distinct !DIGlobalVariable(scope: null, file: !859, line: 254, type: !270, isLocal: true, isDefinition: true)
!924 = !DIGlobalVariableExpression(var: !925, expr: !DIExpression())
!925 = distinct !DIGlobalVariable(scope: null, file: !859, line: 259, type: !3, isLocal: true, isDefinition: true)
!926 = !DIGlobalVariableExpression(var: !927, expr: !DIExpression())
!927 = distinct !DIGlobalVariable(scope: null, file: !859, line: 259, type: !928, isLocal: true, isDefinition: true)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !929)
!929 = !{!930}
!930 = !DISubrange(count: 29)
!931 = !DIGlobalVariableExpression(var: !932, expr: !DIExpression())
!932 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !933, file: !934, line: 26, type: !936, isLocal: false, isDefinition: true)
!933 = distinct !DICompileUnit(language: DW_LANG_C11, file: !934, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !935, splitDebugInlining: false, nameTableKind: None)
!934 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!935 = !{!931}
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 376, elements: !534)
!937 = !DIGlobalVariableExpression(var: !938, expr: !DIExpression())
!938 = distinct !DIGlobalVariable(name: "exit_failure", scope: !939, file: !940, line: 24, type: !942, isLocal: false, isDefinition: true)
!939 = distinct !DICompileUnit(language: DW_LANG_C11, file: !940, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !941, splitDebugInlining: false, nameTableKind: None)
!940 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!941 = !{!937}
!942 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!943 = !DIGlobalVariableExpression(var: !944, expr: !DIExpression())
!944 = distinct !DIGlobalVariable(scope: null, file: !945, line: 34, type: !235, isLocal: true, isDefinition: true)
!945 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!946 = !DIGlobalVariableExpression(var: !947, expr: !DIExpression())
!947 = distinct !DIGlobalVariable(scope: null, file: !945, line: 34, type: !19, isLocal: true, isDefinition: true)
!948 = !DIGlobalVariableExpression(var: !949, expr: !DIExpression())
!949 = distinct !DIGlobalVariable(scope: null, file: !945, line: 34, type: !265, isLocal: true, isDefinition: true)
!950 = !DIGlobalVariableExpression(var: !951, expr: !DIExpression())
!951 = distinct !DIGlobalVariable(scope: null, file: !952, line: 108, type: !44, isLocal: true, isDefinition: true)
!952 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!953 = !DIGlobalVariableExpression(var: !954, expr: !DIExpression())
!954 = distinct !DIGlobalVariable(name: "internal_state", scope: !955, file: !952, line: 97, type: !958, isLocal: true, isDefinition: true)
!955 = distinct !DICompileUnit(language: DW_LANG_C11, file: !952, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !956, globals: !957, splitDebugInlining: false, nameTableKind: None)
!956 = !{!95, !97, !102}
!957 = !{!950, !953}
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !745, line: 6, baseType: !959)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !747, line: 21, baseType: !960)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !747, line: 13, size: 64, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !960, file: !747, line: 15, baseType: !63, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !960, file: !747, line: 20, baseType: !964, size: 32, offset: 32)
!964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !747, line: 16, size: 32, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !964, file: !747, line: 18, baseType: !69, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !964, file: !747, line: 19, baseType: !216, size: 32)
!968 = !DIGlobalVariableExpression(var: !969, expr: !DIExpression())
!969 = distinct !DIGlobalVariable(scope: null, file: !970, line: 35, type: !221, isLocal: true, isDefinition: true)
!970 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!971 = distinct !DICompileUnit(language: DW_LANG_C11, file: !972, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !973, splitDebugInlining: false, nameTableKind: None)
!972 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!973 = !{!425}
!974 = distinct !DICompileUnit(language: DW_LANG_C11, file: !975, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!975 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!976 = distinct !DICompileUnit(language: DW_LANG_C11, file: !977, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !978, splitDebugInlining: false, nameTableKind: None)
!977 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!978 = !{!95}
!979 = distinct !DICompileUnit(language: DW_LANG_C11, file: !980, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!980 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!981 = distinct !DICompileUnit(language: DW_LANG_C11, file: !982, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !978, splitDebugInlining: false, nameTableKind: None)
!982 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!983 = distinct !DICompileUnit(language: DW_LANG_C11, file: !984, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!984 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!985 = distinct !DICompileUnit(language: DW_LANG_C11, file: !859, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !986, retainedTypes: !978, globals: !990, splitDebugInlining: false, nameTableKind: None)
!986 = !{!987}
!987 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !859, line: 40, baseType: !69, size: 32, elements: !988)
!988 = !{!989}
!989 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!990 = !{!857, !860, !862, !864, !866, !868, !873, !876, !878, !880, !882, !887, !892, !894, !899, !904, !909, !914, !916, !918, !920, !922, !924, !926}
!991 = distinct !DICompileUnit(language: DW_LANG_C11, file: !992, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !993, retainedTypes: !1021, splitDebugInlining: false, nameTableKind: None)
!992 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!993 = !{!994, !1006}
!994 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !995, file: !992, line: 188, baseType: !69, size: 32, elements: !1004)
!995 = distinct !DISubprogram(name: "x2nrealloc", scope: !992, file: !992, line: 176, type: !996, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !999)
!996 = !DISubroutineType(types: !997)
!997 = !{!95, !95, !998, !97}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!999 = !{!1000, !1001, !1002, !1003}
!1000 = !DILocalVariable(name: "p", arg: 1, scope: !995, file: !992, line: 176, type: !95)
!1001 = !DILocalVariable(name: "pn", arg: 2, scope: !995, file: !992, line: 176, type: !998)
!1002 = !DILocalVariable(name: "s", arg: 3, scope: !995, file: !992, line: 176, type: !97)
!1003 = !DILocalVariable(name: "n", scope: !995, file: !992, line: 178, type: !97)
!1004 = !{!1005}
!1005 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!1006 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1007, file: !992, line: 228, baseType: !69, size: 32, elements: !1004)
!1007 = distinct !DISubprogram(name: "xpalloc", scope: !992, file: !992, line: 223, type: !1008, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !1011)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!95, !95, !1010, !354, !356, !354}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020}
!1012 = !DILocalVariable(name: "pa", arg: 1, scope: !1007, file: !992, line: 223, type: !95)
!1013 = !DILocalVariable(name: "pn", arg: 2, scope: !1007, file: !992, line: 223, type: !1010)
!1014 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !1007, file: !992, line: 223, type: !354)
!1015 = !DILocalVariable(name: "n_max", arg: 4, scope: !1007, file: !992, line: 223, type: !356)
!1016 = !DILocalVariable(name: "s", arg: 5, scope: !1007, file: !992, line: 223, type: !354)
!1017 = !DILocalVariable(name: "n0", scope: !1007, file: !992, line: 230, type: !354)
!1018 = !DILocalVariable(name: "n", scope: !1007, file: !992, line: 237, type: !354)
!1019 = !DILocalVariable(name: "nbytes", scope: !1007, file: !992, line: 248, type: !354)
!1020 = !DILocalVariable(name: "adjusted_nbytes", scope: !1007, file: !992, line: 252, type: !354)
!1021 = !{!94, !95, !103, !177, !99}
!1022 = distinct !DICompileUnit(language: DW_LANG_C11, file: !945, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1023, splitDebugInlining: false, nameTableKind: None)
!1023 = !{!943, !946, !948}
!1024 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1025, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !978, splitDebugInlining: false, nameTableKind: None)
!1025 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!1026 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1027, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1027 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1028 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1029, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1030, splitDebugInlining: false, nameTableKind: None)
!1029 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1030 = !{!103, !99, !95}
!1031 = distinct !DICompileUnit(language: DW_LANG_C11, file: !970, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1032, splitDebugInlining: false, nameTableKind: None)
!1032 = !{!1033, !968}
!1033 = !DIGlobalVariableExpression(var: !1034, expr: !DIExpression())
!1034 = distinct !DIGlobalVariable(scope: null, file: !970, line: 35, type: !226, isLocal: true, isDefinition: true)
!1035 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1036, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1036 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1037 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1038, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !978, splitDebugInlining: false, nameTableKind: None)
!1038 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1039 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!1040 = !{i32 7, !"Dwarf Version", i32 5}
!1041 = !{i32 2, !"Debug Info Version", i32 3}
!1042 = !{i32 1, !"wchar_size", i32 4}
!1043 = !{i32 8, !"PIC Level", i32 2}
!1044 = !{i32 7, !"PIE Level", i32 2}
!1045 = !{i32 7, !"uwtable", i32 2}
!1046 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 64, type: !1047, scopeLine: 65, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !63}
!1049 = !{!1050}
!1050 = !DILocalVariable(name: "status", arg: 1, scope: !1046, file: !2, line: 64, type: !63)
!1051 = !DILocation(line: 0, scope: !1046)
!1052 = !DILocation(line: 66, column: 14, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1046, file: !2, line: 66, column: 7)
!1054 = !DILocation(line: 66, column: 7, scope: !1046)
!1055 = !DILocation(line: 67, column: 5, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 67, column: 5)
!1057 = !{!1058, !1058, i64 0}
!1058 = !{!"any pointer", !1059, i64 0}
!1059 = !{!"omnipotent char", !1060, i64 0}
!1060 = !{!"Simple C/C++ TBAA"}
!1061 = !DILocation(line: 70, column: 7, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 69, column: 5)
!1063 = !DILocation(line: 74, column: 7, scope: !1062)
!1064 = !DILocation(line: 729, column: 3, scope: !1065, inlinedAt: !1067)
!1065 = distinct !DISubprogram(name: "emit_stdin_note", scope: !62, file: !62, line: 727, type: !342, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1066)
!1066 = !{}
!1067 = distinct !DILocation(line: 78, column: 7, scope: !1062)
!1068 = !DILocation(line: 736, column: 3, scope: !1069, inlinedAt: !1070)
!1069 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !62, file: !62, line: 734, type: !342, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1066)
!1070 = distinct !DILocation(line: 79, column: 7, scope: !1062)
!1071 = !DILocation(line: 81, column: 7, scope: !1062)
!1072 = !DILocation(line: 85, column: 7, scope: !1062)
!1073 = !DILocation(line: 89, column: 7, scope: !1062)
!1074 = !DILocation(line: 90, column: 7, scope: !1062)
!1075 = !DILocation(line: 91, column: 7, scope: !1062)
!1076 = !DILocalVariable(name: "program", arg: 1, scope: !1077, file: !62, line: 836, type: !100)
!1077 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !62, file: !62, line: 836, type: !1078, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1080)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{null, !100}
!1080 = !{!1076, !1081, !1088, !1089, !1091, !1092}
!1081 = !DILocalVariable(name: "infomap", scope: !1077, file: !62, line: 838, type: !1082)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1083, size: 896, elements: !20)
!1083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1084)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1077, file: !62, line: 838, size: 128, elements: !1085)
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1084, file: !62, line: 838, baseType: !100, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1084, file: !62, line: 838, baseType: !100, size: 64, offset: 64)
!1088 = !DILocalVariable(name: "node", scope: !1077, file: !62, line: 848, type: !100)
!1089 = !DILocalVariable(name: "map_prog", scope: !1077, file: !62, line: 849, type: !1090)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1091 = !DILocalVariable(name: "lc_messages", scope: !1077, file: !62, line: 861, type: !100)
!1092 = !DILocalVariable(name: "url_program", scope: !1077, file: !62, line: 874, type: !100)
!1093 = !DILocation(line: 0, scope: !1077, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 92, column: 7, scope: !1062)
!1095 = !DILocation(line: 857, column: 3, scope: !1077, inlinedAt: !1094)
!1096 = !DILocation(line: 861, column: 29, scope: !1077, inlinedAt: !1094)
!1097 = !DILocation(line: 862, column: 7, scope: !1098, inlinedAt: !1094)
!1098 = distinct !DILexicalBlock(scope: !1077, file: !62, line: 862, column: 7)
!1099 = !DILocation(line: 862, column: 19, scope: !1098, inlinedAt: !1094)
!1100 = !DILocation(line: 862, column: 22, scope: !1098, inlinedAt: !1094)
!1101 = !DILocation(line: 862, column: 7, scope: !1077, inlinedAt: !1094)
!1102 = !DILocation(line: 868, column: 7, scope: !1103, inlinedAt: !1094)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !62, line: 863, column: 5)
!1104 = !DILocation(line: 870, column: 5, scope: !1103, inlinedAt: !1094)
!1105 = !DILocation(line: 875, column: 3, scope: !1077, inlinedAt: !1094)
!1106 = !DILocation(line: 877, column: 3, scope: !1077, inlinedAt: !1094)
!1107 = !DILocation(line: 94, column: 3, scope: !1046)
!1108 = !DISubprogram(name: "dcgettext", scope: !1109, file: !1109, line: 51, type: !1110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1109 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!94, !100, !100, !63}
!1112 = !DISubprogram(name: "__fprintf_chk", scope: !1113, file: !1113, line: 93, type: !1114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1113 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!63, !1116, !63, !1117, null}
!1116 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!1117 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!1118 = !DISubprogram(name: "__printf_chk", scope: !1113, file: !1113, line: 95, type: !1119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!63, !63, !1117, null}
!1121 = !DISubprogram(name: "fputs_unlocked", scope: !1122, file: !1122, line: 691, type: !1123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1122 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!63, !1117, !1116}
!1125 = !DILocation(line: 0, scope: !127)
!1126 = !DILocation(line: 581, column: 7, scope: !135)
!1127 = !{!1128, !1128, i64 0}
!1128 = !{!"int", !1059, i64 0}
!1129 = !DILocation(line: 581, column: 19, scope: !135)
!1130 = !DILocation(line: 581, column: 7, scope: !127)
!1131 = !DILocation(line: 585, column: 26, scope: !134)
!1132 = !DILocation(line: 0, scope: !134)
!1133 = !DILocation(line: 586, column: 23, scope: !134)
!1134 = !DILocation(line: 586, column: 28, scope: !134)
!1135 = !DILocation(line: 586, column: 32, scope: !134)
!1136 = !{!1059, !1059, i64 0}
!1137 = !DILocation(line: 586, column: 38, scope: !134)
!1138 = !DILocalVariable(name: "__s1", arg: 1, scope: !1139, file: !1140, line: 1359, type: !100)
!1139 = distinct !DISubprogram(name: "streq", scope: !1140, file: !1140, line: 1359, type: !1141, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1143)
!1140 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!103, !100, !100}
!1143 = !{!1138, !1144}
!1144 = !DILocalVariable(name: "__s2", arg: 2, scope: !1139, file: !1140, line: 1359, type: !100)
!1145 = !DILocation(line: 0, scope: !1139, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 586, column: 41, scope: !134)
!1147 = !DILocation(line: 1361, column: 11, scope: !1139, inlinedAt: !1146)
!1148 = !DILocation(line: 1361, column: 10, scope: !1139, inlinedAt: !1146)
!1149 = !DILocation(line: 586, column: 19, scope: !134)
!1150 = !DILocation(line: 587, column: 5, scope: !134)
!1151 = !DILocation(line: 588, column: 7, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !127, file: !62, line: 588, column: 7)
!1153 = !DILocation(line: 588, column: 7, scope: !127)
!1154 = !DILocation(line: 590, column: 7, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1152, file: !62, line: 589, column: 5)
!1156 = !DILocation(line: 591, column: 7, scope: !1155)
!1157 = !DILocation(line: 595, column: 37, scope: !127)
!1158 = !DILocation(line: 595, column: 35, scope: !127)
!1159 = !DILocation(line: 596, column: 29, scope: !127)
!1160 = !DILocation(line: 597, column: 8, scope: !142)
!1161 = !DILocation(line: 597, column: 7, scope: !127)
!1162 = !DILocation(line: 604, column: 24, scope: !141)
!1163 = !DILocation(line: 604, column: 12, scope: !142)
!1164 = !DILocation(line: 0, scope: !140)
!1165 = !DILocation(line: 610, column: 16, scope: !140)
!1166 = !DILocation(line: 610, column: 7, scope: !140)
!1167 = !DILocation(line: 611, column: 21, scope: !140)
!1168 = !{!1169, !1169, i64 0}
!1169 = !{!"short", !1059, i64 0}
!1170 = !DILocation(line: 611, column: 19, scope: !140)
!1171 = !DILocation(line: 611, column: 16, scope: !140)
!1172 = !DILocation(line: 610, column: 30, scope: !140)
!1173 = distinct !{!1173, !1166, !1167, !1174}
!1174 = !{!"llvm.loop.mustprogress"}
!1175 = !DILocation(line: 612, column: 18, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !140, file: !62, line: 612, column: 11)
!1177 = !DILocation(line: 612, column: 11, scope: !140)
!1178 = !DILocation(line: 618, column: 5, scope: !140)
!1179 = !DILocation(line: 620, column: 23, scope: !127)
!1180 = !DILocation(line: 625, column: 39, scope: !127)
!1181 = !DILocation(line: 626, column: 3, scope: !127)
!1182 = !DILocation(line: 626, column: 10, scope: !127)
!1183 = !DILocation(line: 626, column: 21, scope: !127)
!1184 = !DILocation(line: 628, column: 44, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !62, line: 628, column: 11)
!1186 = distinct !DILexicalBlock(scope: !127, file: !62, line: 627, column: 5)
!1187 = !DILocation(line: 628, column: 32, scope: !1185)
!1188 = !DILocation(line: 628, column: 49, scope: !1185)
!1189 = !DILocation(line: 628, column: 11, scope: !1186)
!1190 = !DILocation(line: 630, column: 11, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !62, line: 630, column: 11)
!1192 = !DILocation(line: 630, column: 11, scope: !1186)
!1193 = !DILocation(line: 632, column: 26, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !62, line: 632, column: 15)
!1195 = distinct !DILexicalBlock(scope: !1191, file: !62, line: 631, column: 9)
!1196 = !DILocation(line: 632, column: 34, scope: !1194)
!1197 = !DILocation(line: 632, column: 37, scope: !1194)
!1198 = !DILocation(line: 632, column: 15, scope: !1195)
!1199 = !DILocation(line: 636, column: 16, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1195, file: !62, line: 636, column: 15)
!1201 = !DILocation(line: 636, column: 29, scope: !1200)
!1202 = !DILocation(line: 640, column: 16, scope: !1186)
!1203 = distinct !{!1203, !1181, !1204, !1174}
!1204 = !DILocation(line: 641, column: 5, scope: !127)
!1205 = !DILocation(line: 644, column: 3, scope: !127)
!1206 = !DILocation(line: 0, scope: !1139, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 648, column: 31, scope: !127)
!1208 = !DILocation(line: 0, scope: !1139, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 649, column: 31, scope: !127)
!1210 = !DILocation(line: 0, scope: !1139, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 650, column: 31, scope: !127)
!1212 = !DILocation(line: 0, scope: !1139, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 651, column: 31, scope: !127)
!1214 = !DILocation(line: 0, scope: !1139, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 652, column: 31, scope: !127)
!1216 = !DILocation(line: 0, scope: !1139, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 653, column: 31, scope: !127)
!1218 = !DILocation(line: 0, scope: !1139, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 654, column: 31, scope: !127)
!1220 = !DILocation(line: 0, scope: !1139, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 655, column: 31, scope: !127)
!1222 = !DILocation(line: 0, scope: !1139, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 656, column: 31, scope: !127)
!1224 = !DILocation(line: 0, scope: !1139, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 657, column: 31, scope: !127)
!1226 = !DILocation(line: 663, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !127, file: !62, line: 663, column: 7)
!1228 = !DILocation(line: 664, column: 7, scope: !1227)
!1229 = !DILocation(line: 664, column: 10, scope: !1227)
!1230 = !DILocation(line: 663, column: 7, scope: !127)
!1231 = !DILocation(line: 669, column: 7, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1227, file: !62, line: 665, column: 5)
!1233 = !DILocation(line: 671, column: 5, scope: !1232)
!1234 = !DILocation(line: 676, column: 7, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1227, file: !62, line: 673, column: 5)
!1236 = !DILocation(line: 679, column: 3, scope: !127)
!1237 = !DILocation(line: 683, column: 3, scope: !127)
!1238 = !DILocation(line: 686, column: 3, scope: !127)
!1239 = !DILocation(line: 688, column: 3, scope: !127)
!1240 = !DILocation(line: 691, column: 3, scope: !127)
!1241 = !DILocation(line: 695, column: 3, scope: !127)
!1242 = !DILocation(line: 696, column: 1, scope: !127)
!1243 = !DISubprogram(name: "setlocale", scope: !1244, file: !1244, line: 122, type: !1245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1244 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!94, !63, !100}
!1247 = !DISubprogram(name: "strncmp", scope: !1248, file: !1248, line: 159, type: !1249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1248 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!63, !100, !100, !97}
!1251 = !DISubprogram(name: "exit", scope: !1252, file: !1252, line: 624, type: !1047, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1252 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1253 = !DISubprogram(name: "getenv", scope: !1252, file: !1252, line: 641, type: !1254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!94, !100}
!1256 = !DISubprogram(name: "strcmp", scope: !1248, file: !1248, line: 156, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!63, !100, !100}
!1259 = !DISubprogram(name: "strspn", scope: !1248, file: !1248, line: 297, type: !1260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!99, !100, !100}
!1262 = !DISubprogram(name: "strchr", scope: !1248, file: !1248, line: 246, type: !1263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!94, !100, !63}
!1265 = !DISubprogram(name: "__ctype_b_loc", scope: !68, file: !68, line: 79, type: !1266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!1268}
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!1271 = !DISubprogram(name: "strcspn", scope: !1248, file: !1248, line: 293, type: !1260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1272 = !DISubprogram(name: "fwrite_unlocked", scope: !1122, file: !1122, line: 704, type: !1273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!97, !1275, !97, !97, !1116}
!1275 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1276)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1278 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 189, type: !1279, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1281)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!63, !63, !566}
!1281 = !{!1282, !1283, !1284, !1285}
!1282 = !DILocalVariable(name: "argc", arg: 1, scope: !1278, file: !2, line: 189, type: !63)
!1283 = !DILocalVariable(name: "argv", arg: 2, scope: !1278, file: !2, line: 189, type: !566)
!1284 = !DILocalVariable(name: "c", scope: !1278, file: !2, line: 191, type: !63)
!1285 = !DILocalVariable(name: "tab_stop", scope: !1286, file: !2, line: 220, type: !226)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !2, line: 219, column: 13)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 216, column: 15)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 205, column: 9)
!1289 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 203, column: 5)
!1290 = !DILocation(line: 0, scope: !1278)
!1291 = !DILocation(line: 194, column: 21, scope: !1278)
!1292 = !DILocation(line: 194, column: 3, scope: !1278)
!1293 = !DILocation(line: 195, column: 3, scope: !1278)
!1294 = !DILocation(line: 196, column: 3, scope: !1278)
!1295 = !DILocation(line: 197, column: 3, scope: !1278)
!1296 = !DILocation(line: 199, column: 3, scope: !1278)
!1297 = !DILocation(line: 200, column: 23, scope: !1278)
!1298 = !{!1299, !1299, i64 0}
!1299 = !{!"_Bool", !1059, i64 0}
!1300 = !DILocation(line: 202, column: 3, scope: !1278)
!1301 = !DILocation(line: 202, column: 15, scope: !1278)
!1302 = !DILocation(line: 207, column: 31, scope: !1288)
!1303 = !DILocation(line: 208, column: 11, scope: !1288)
!1304 = !DILocation(line: 211, column: 28, scope: !1288)
!1305 = !DILocation(line: 211, column: 11, scope: !1288)
!1306 = !DILocation(line: 212, column: 11, scope: !1288)
!1307 = !DILocation(line: 216, column: 15, scope: !1287)
!1308 = !DILocation(line: 216, column: 15, scope: !1288)
!1309 = !DILocation(line: 217, column: 37, scope: !1287)
!1310 = !DILocation(line: 217, column: 13, scope: !1287)
!1311 = distinct !{!1311, !1300, !1312, !1174}
!1312 = !DILocation(line: 234, column: 5, scope: !1278)
!1313 = !DILocation(line: 220, column: 15, scope: !1286)
!1314 = !DILocation(line: 220, column: 20, scope: !1286)
!1315 = !DILocation(line: 221, column: 29, scope: !1286)
!1316 = !DILocation(line: 221, column: 27, scope: !1286)
!1317 = !DILocation(line: 222, column: 27, scope: !1286)
!1318 = !DILocation(line: 223, column: 15, scope: !1286)
!1319 = !DILocation(line: 224, column: 13, scope: !1287)
!1320 = !DILocation(line: 227, column: 9, scope: !1288)
!1321 = !DILocation(line: 229, column: 9, scope: !1288)
!1322 = !DILocation(line: 232, column: 11, scope: !1288)
!1323 = !DILocation(line: 236, column: 3, scope: !1278)
!1324 = !DILocation(line: 238, column: 18, scope: !1278)
!1325 = !DILocation(line: 238, column: 25, scope: !1278)
!1326 = !DILocation(line: 238, column: 3, scope: !1278)
!1327 = !DILocation(line: 105, column: 14, scope: !341, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 240, column: 3, scope: !1278)
!1329 = !DILocation(line: 0, scope: !341, inlinedAt: !1328)
!1330 = !DILocation(line: 107, column: 8, scope: !1331, inlinedAt: !1328)
!1331 = distinct !DILexicalBlock(scope: !341, file: !2, line: 107, column: 7)
!1332 = !DILocation(line: 107, column: 7, scope: !341, inlinedAt: !1328)
!1333 = !DILocation(line: 61, column: 13, scope: !1334, inlinedAt: !1343)
!1334 = distinct !DISubprogram(name: "mbbuf_init", scope: !348, file: !348, line: 56, type: !1335, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1338)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{null, !1337, !94, !354, !149}
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!1338 = !{!1339, !1340, !1341, !1342}
!1339 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1334, file: !348, line: 56, type: !1337)
!1340 = !DILocalVariable(name: "buffer", arg: 2, scope: !1334, file: !348, line: 56, type: !94)
!1341 = !DILocalVariable(name: "size", arg: 3, scope: !1334, file: !348, line: 56, type: !354)
!1342 = !DILocalVariable(name: "fp", arg: 4, scope: !1334, file: !348, line: 56, type: !149)
!1343 = distinct !DILocation(line: 112, column: 3, scope: !341, inlinedAt: !1328)
!1344 = !DILocation(line: 0, scope: !360, inlinedAt: !1328)
!1345 = !DILocation(line: 130, column: 7, scope: !360, inlinedAt: !1328)
!1346 = !DILocation(line: 130, column: 13, scope: !360, inlinedAt: !1328)
!1347 = !{!1348, !1348, i64 0}
!1348 = !{!"long", !1059, i64 0}
!1349 = !DILocation(line: 135, column: 7, scope: !360, inlinedAt: !1328)
!1350 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1351, file: !348, line: 71, type: !1337)
!1351 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !348, file: !348, line: 71, type: !1352, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1354)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!361, !1337}
!1354 = !{!1350, !1355, !1356, !1359}
!1355 = !DILocalVariable(name: "available", scope: !1351, file: !348, line: 73, type: !354)
!1356 = !DILocalVariable(name: "start", scope: !1357, file: !348, line: 77, type: !354)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !348, line: 76, column: 5)
!1358 = distinct !DILexicalBlock(scope: !1351, file: !348, line: 75, column: 7)
!1359 = !DILocalVariable(name: "g", scope: !1351, file: !348, line: 92, type: !361)
!1360 = !DILocation(line: 0, scope: !1351, inlinedAt: !1361)
!1361 = distinct !DILocation(line: 137, column: 23, scope: !384, inlinedAt: !1328)
!1362 = !DILocation(line: 73, column: 35, scope: !1351, inlinedAt: !1361)
!1363 = !DILocation(line: 75, column: 17, scope: !1358, inlinedAt: !1361)
!1364 = !DILocation(line: 75, column: 32, scope: !1358, inlinedAt: !1361)
!1365 = !DILocalVariable(name: "__stream", arg: 1, scope: !1366, file: !1367, line: 128, type: !149)
!1366 = distinct !DISubprogram(name: "feof_unlocked", scope: !1367, file: !1367, line: 128, type: !1368, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1370)
!1367 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!63, !149}
!1370 = !{!1365}
!1371 = !DILocation(line: 0, scope: !1366, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 75, column: 37, scope: !1358, inlinedAt: !1361)
!1373 = !DILocation(line: 130, column: 10, scope: !1366, inlinedAt: !1372)
!1374 = !{!1375, !1128, i64 0}
!1375 = !{!"_IO_FILE", !1128, i64 0, !1058, i64 8, !1058, i64 16, !1058, i64 24, !1058, i64 32, !1058, i64 40, !1058, i64 48, !1058, i64 56, !1058, i64 64, !1058, i64 72, !1058, i64 80, !1058, i64 88, !1058, i64 96, !1058, i64 104, !1128, i64 112, !1128, i64 116, !1348, i64 120, !1169, i64 128, !1059, i64 130, !1059, i64 131, !1058, i64 136, !1348, i64 144, !1058, i64 152, !1058, i64 160, !1058, i64 168, !1058, i64 176, !1348, i64 184, !1128, i64 192, !1059, i64 196}
!1376 = !DILocation(line: 75, column: 37, scope: !1358, inlinedAt: !1361)
!1377 = !DILocation(line: 75, column: 7, scope: !1351, inlinedAt: !1361)
!1378 = !DILocation(line: 78, column: 15, scope: !1379, inlinedAt: !1361)
!1379 = distinct !DILexicalBlock(scope: !1357, file: !348, line: 78, column: 11)
!1380 = !DILocation(line: 78, column: 11, scope: !1357, inlinedAt: !1361)
!1381 = !DILocation(line: 82, column: 49, scope: !1382, inlinedAt: !1361)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !348, line: 81, column: 9)
!1383 = !DILocalVariable(name: "__dest", arg: 1, scope: !1384, file: !1385, line: 34, type: !95)
!1384 = distinct !DISubprogram(name: "memmove", scope: !1385, file: !1385, line: 34, type: !1386, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1388)
!1385 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!95, !95, !1276, !97}
!1388 = !{!1383, !1389, !1390}
!1389 = !DILocalVariable(name: "__src", arg: 2, scope: !1384, file: !1385, line: 34, type: !1276)
!1390 = !DILocalVariable(name: "__len", arg: 3, scope: !1384, file: !1385, line: 34, type: !97)
!1391 = !DILocation(line: 0, scope: !1384, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 82, column: 11, scope: !1382, inlinedAt: !1361)
!1393 = !DILocation(line: 36, column: 10, scope: !1384, inlinedAt: !1392)
!1394 = !DILocation(line: 0, scope: !1357, inlinedAt: !1361)
!1395 = !DILocation(line: 0, scope: !1379, inlinedAt: !1361)
!1396 = !DILocation(line: 85, column: 23, scope: !1357, inlinedAt: !1361)
!1397 = !DILocation(line: 86, column: 41, scope: !1357, inlinedAt: !1361)
!1398 = !DILocation(line: 89, column: 5, scope: !1357, inlinedAt: !1361)
!1399 = !DILocation(line: 90, column: 17, scope: !1400, inlinedAt: !1361)
!1400 = distinct !DILexicalBlock(scope: !1351, file: !348, line: 90, column: 7)
!1401 = !DILocation(line: 90, column: 7, scope: !1351, inlinedAt: !1361)
!1402 = !DILocation(line: 92, column: 39, scope: !1351, inlinedAt: !1361)
!1403 = !DILocalVariable(name: "p", arg: 1, scope: !1404, file: !84, line: 230, type: !100)
!1404 = distinct !DISubprogram(name: "mcel_scan", scope: !84, file: !84, line: 230, type: !1405, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1407)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!361, !100, !100}
!1407 = !{!1403, !1408, !1409, !1410, !1421, !1422}
!1408 = !DILocalVariable(name: "lim", arg: 2, scope: !1404, file: !84, line: 230, type: !100)
!1409 = !DILocalVariable(name: "c", scope: !1404, file: !84, line: 235, type: !4)
!1410 = !DILocalVariable(name: "mbs", scope: !1404, file: !84, line: 244, type: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !745, line: 6, baseType: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !747, line: 21, baseType: !1413)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !747, line: 13, size: 64, elements: !1414)
!1414 = !{!1415, !1416}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1413, file: !747, line: 15, baseType: !63, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1413, file: !747, line: 20, baseType: !1417, size: 32, offset: 32)
!1417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1413, file: !747, line: 16, size: 32, elements: !1418)
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1417, file: !747, line: 18, baseType: !69, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1417, file: !747, line: 19, baseType: !216, size: 32)
!1421 = !DILocalVariable(name: "ch", scope: !1404, file: !84, line: 267, type: !365)
!1422 = !DILocalVariable(name: "len", scope: !1404, file: !84, line: 268, type: !97)
!1423 = !DILocation(line: 0, scope: !1404, inlinedAt: !1424)
!1424 = distinct !DILocation(line: 92, column: 14, scope: !1351, inlinedAt: !1361)
!1425 = !DILocation(line: 235, column: 12, scope: !1404, inlinedAt: !1424)
!1426 = !DILocalVariable(name: "c", arg: 1, scope: !1427, file: !84, line: 215, type: !4)
!1427 = distinct !DISubprogram(name: "mcel_isbasic", scope: !84, file: !84, line: 215, type: !1428, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1430)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!103, !4}
!1430 = !{!1426}
!1431 = !DILocation(line: 0, scope: !1427, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 236, column: 7, scope: !1433, inlinedAt: !1424)
!1433 = distinct !DILexicalBlock(scope: !1404, file: !84, line: 236, column: 7)
!1434 = !DILocation(line: 217, column: 10, scope: !1427, inlinedAt: !1432)
!1435 = !DILocation(line: 236, column: 7, scope: !1404, inlinedAt: !1424)
!1436 = !DILocation(line: 93, column: 39, scope: !1351, inlinedAt: !1361)
!1437 = !DILocation(line: 244, column: 3, scope: !1404, inlinedAt: !1424)
!1438 = !DILocation(line: 244, column: 13, scope: !1404, inlinedAt: !1424)
!1439 = !DILocation(line: 244, column: 30, scope: !1404, inlinedAt: !1424)
!1440 = !{!1441, !1128, i64 0}
!1441 = !{!"", !1128, i64 0, !1059, i64 4}
!1442 = !DILocation(line: 267, column: 3, scope: !1404, inlinedAt: !1424)
!1443 = !DILocation(line: 268, column: 38, scope: !1404, inlinedAt: !1424)
!1444 = !DILocation(line: 268, column: 16, scope: !1404, inlinedAt: !1424)
!1445 = !DILocation(line: 274, column: 7, scope: !1446, inlinedAt: !1424)
!1446 = distinct !DILexicalBlock(scope: !1404, file: !84, line: 274, column: 7)
!1447 = !DILocation(line: 274, column: 7, scope: !1404, inlinedAt: !1424)
!1448 = !{!"branch_weights", i32 1, i32 2000}
!1449 = !DILocation(line: 279, column: 19, scope: !1404, inlinedAt: !1424)
!1450 = !DILocalVariable(name: "ch", arg: 1, scope: !1451, file: !84, line: 167, type: !365)
!1451 = distinct !DISubprogram(name: "mcel_ch", scope: !84, file: !84, line: 167, type: !1452, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1454)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!361, !365, !97}
!1454 = !{!1450, !1455}
!1455 = !DILocalVariable(name: "len", arg: 2, scope: !1451, file: !84, line: 167, type: !97)
!1456 = !DILocation(line: 0, scope: !1451, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 279, column: 10, scope: !1404, inlinedAt: !1424)
!1458 = !DILocation(line: 169, column: 3, scope: !1451, inlinedAt: !1457)
!1459 = !DILocation(line: 170, column: 3, scope: !1451, inlinedAt: !1457)
!1460 = !DILocation(line: 171, column: 3, scope: !1451, inlinedAt: !1457)
!1461 = !DILocation(line: 172, column: 3, scope: !1451, inlinedAt: !1457)
!1462 = !DILocation(line: 279, column: 3, scope: !1404, inlinedAt: !1424)
!1463 = !DILocalVariable(name: "err", arg: 1, scope: !1464, file: !84, line: 175, type: !102)
!1464 = distinct !DISubprogram(name: "mcel_err", scope: !84, file: !84, line: 175, type: !1465, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1467)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!361, !102}
!1467 = !{!1463}
!1468 = !DILocation(line: 0, scope: !1464, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 275, column: 12, scope: !1446, inlinedAt: !1424)
!1470 = !DILocation(line: 178, column: 3, scope: !1464, inlinedAt: !1469)
!1471 = !DILocation(line: 275, column: 5, scope: !1446, inlinedAt: !1424)
!1472 = !DILocation(line: 280, column: 1, scope: !1404, inlinedAt: !1424)
!1473 = !DILocation(line: 0, scope: !1451, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 237, column: 12, scope: !1433, inlinedAt: !1424)
!1475 = !DILocation(line: 172, column: 3, scope: !1451, inlinedAt: !1474)
!1476 = !DILocation(line: 237, column: 5, scope: !1433, inlinedAt: !1424)
!1477 = !DILocation(line: 94, column: 9, scope: !1478, inlinedAt: !1361)
!1478 = distinct !DILexicalBlock(scope: !1351, file: !348, line: 94, column: 7)
!1479 = !DILocation(line: 94, column: 7, scope: !1351, inlinedAt: !1361)
!1480 = !DILocation(line: 99, column: 30, scope: !1481, inlinedAt: !1361)
!1481 = distinct !DILexicalBlock(scope: !1478, file: !348, line: 97, column: 5)
!1482 = !DILocation(line: 99, column: 14, scope: !1481, inlinedAt: !1361)
!1483 = !DILocation(line: 92, column: 14, scope: !1351, inlinedAt: !1361)
!1484 = !DILocation(line: 95, column: 5, scope: !1478, inlinedAt: !1361)
!1485 = !DILocation(line: 0, scope: !1478, inlinedAt: !1361)
!1486 = !DILocation(line: 101, column: 3, scope: !1351, inlinedAt: !1361)
!1487 = !DILocation(line: 137, column: 51, scope: !384, inlinedAt: !1328)
!1488 = !DILocation(line: 138, column: 18, scope: !384, inlinedAt: !1328)
!1489 = !DILocation(line: 138, column: 27, scope: !384, inlinedAt: !1328)
!1490 = !DILocation(line: 137, column: 11, scope: !384, inlinedAt: !1328)
!1491 = distinct !{!1491, !1490, !1492, !1174, !1493}
!1492 = !DILocation(line: 139, column: 60, scope: !384, inlinedAt: !1328)
!1493 = !{!"llvm.loop.peeled.count", i32 1}
!1494 = !DILocation(line: 85, column: 21, scope: !1357, inlinedAt: !1361)
!1495 = !DILocation(line: 102, column: 1, scope: !1351, inlinedAt: !1361)
!1496 = !DILocation(line: 137, column: 23, scope: !384, inlinedAt: !1328)
!1497 = !DILocation(line: 141, column: 15, scope: !383, inlinedAt: !1328)
!1498 = !DILocation(line: 141, column: 15, scope: !384, inlinedAt: !1328)
!1499 = !DILocation(line: 143, column: 26, scope: !382, inlinedAt: !1328)
!1500 = !{i8 0, i8 2}
!1501 = !DILocation(line: 143, column: 46, scope: !382, inlinedAt: !1328)
!1502 = !DILocalVariable(name: "wc", arg: 1, scope: !1503, file: !62, line: 178, type: !365)
!1503 = distinct !DISubprogram(name: "c32issep", scope: !62, file: !62, line: 178, type: !1504, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1506)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!103, !365}
!1506 = !{!1502}
!1507 = !DILocation(line: 0, scope: !1503, inlinedAt: !1508)
!1508 = distinct !DILocation(line: 143, column: 49, scope: !382, inlinedAt: !1328)
!1509 = !DILocalVariable(name: "wc", arg: 1, scope: !1510, file: !1511, line: 770, type: !1514)
!1510 = distinct !DISubprogram(name: "c32isblank", scope: !1511, file: !1511, line: 770, type: !1512, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1516)
!1511 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!63, !1514}
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1515, line: 20, baseType: !69)
!1515 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1516 = !{!1509}
!1517 = !DILocation(line: 0, scope: !1510, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 181, column: 13, scope: !1503, inlinedAt: !1508)
!1519 = !DILocation(line: 776, column: 10, scope: !1510, inlinedAt: !1518)
!1520 = !DILocation(line: 181, column: 11, scope: !1503, inlinedAt: !1508)
!1521 = !DILocation(line: 143, column: 23, scope: !382, inlinedAt: !1328)
!1522 = !DILocation(line: 145, column: 19, scope: !382, inlinedAt: !1328)
!1523 = !DILocation(line: 148, column: 19, scope: !380, inlinedAt: !1328)
!1524 = !DILocation(line: 0, scope: !380, inlinedAt: !1328)
!1525 = !DILocation(line: 150, column: 23, scope: !380, inlinedAt: !1328)
!1526 = !DILocation(line: 152, column: 26, scope: !380, inlinedAt: !1328)
!1527 = !DILocation(line: 152, column: 35, scope: !380, inlinedAt: !1328)
!1528 = !DILocation(line: 152, column: 19, scope: !380, inlinedAt: !1328)
!1529 = !DILocalVariable(name: "__c", arg: 1, scope: !1530, file: !1367, line: 108, type: !63)
!1530 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1367, file: !1367, line: 108, type: !1531, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1533)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!63, !63}
!1533 = !{!1529}
!1534 = !DILocation(line: 0, scope: !1530, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 153, column: 25, scope: !1536, inlinedAt: !1328)
!1536 = distinct !DILexicalBlock(scope: !380, file: !2, line: 153, column: 25)
!1537 = !DILocation(line: 110, column: 10, scope: !1530, inlinedAt: !1535)
!1538 = !{!1375, !1058, i64 40}
!1539 = !{!1375, !1058, i64 48}
!1540 = !{!"branch_weights", i32 2000, i32 1}
!1541 = !DILocation(line: 153, column: 25, scope: !380, inlinedAt: !1328)
!1542 = !DILocation(line: 153, column: 39, scope: !1536, inlinedAt: !1328)
!1543 = !DILocation(line: 948, column: 21, scope: !1544, inlinedAt: !1547)
!1544 = distinct !DISubprogram(name: "write_error", scope: !62, file: !62, line: 946, type: !342, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1545)
!1545 = !{!1546}
!1546 = !DILocalVariable(name: "saved_errno", scope: !1544, file: !62, line: 948, type: !63)
!1547 = distinct !DILocation(line: 154, column: 23, scope: !1536, inlinedAt: !1328)
!1548 = !DILocation(line: 0, scope: !1544, inlinedAt: !1547)
!1549 = !DILocation(line: 949, column: 3, scope: !1544, inlinedAt: !1547)
!1550 = !DILocation(line: 950, column: 11, scope: !1544, inlinedAt: !1547)
!1551 = !DILocation(line: 950, column: 3, scope: !1544, inlinedAt: !1547)
!1552 = !DILocation(line: 951, column: 3, scope: !1544, inlinedAt: !1547)
!1553 = !DILocation(line: 952, column: 3, scope: !1544, inlinedAt: !1547)
!1554 = distinct !{!1554, !1528, !1555, !1174}
!1555 = !DILocation(line: 154, column: 36, scope: !380, inlinedAt: !1328)
!1556 = !DILocation(line: 0, scope: !1530, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 156, column: 23, scope: !1558, inlinedAt: !1328)
!1558 = distinct !DILexicalBlock(scope: !380, file: !2, line: 156, column: 23)
!1559 = !DILocation(line: 110, column: 10, scope: !1530, inlinedAt: !1557)
!1560 = !DILocation(line: 156, column: 23, scope: !380, inlinedAt: !1328)
!1561 = !DILocation(line: 156, column: 37, scope: !1558, inlinedAt: !1328)
!1562 = !DILocation(line: 948, column: 21, scope: !1544, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 157, column: 21, scope: !1558, inlinedAt: !1328)
!1564 = !DILocation(line: 0, scope: !1544, inlinedAt: !1563)
!1565 = !DILocation(line: 949, column: 3, scope: !1544, inlinedAt: !1563)
!1566 = !DILocation(line: 950, column: 11, scope: !1544, inlinedAt: !1563)
!1567 = !DILocation(line: 950, column: 3, scope: !1544, inlinedAt: !1563)
!1568 = !DILocation(line: 951, column: 3, scope: !1544, inlinedAt: !1563)
!1569 = !DILocation(line: 952, column: 3, scope: !1544, inlinedAt: !1563)
!1570 = !DILocation(line: 160, column: 17, scope: !381, inlinedAt: !1328)
!1571 = !DILocation(line: 165, column: 30, scope: !1572, inlinedAt: !1328)
!1572 = distinct !DILexicalBlock(scope: !388, file: !2, line: 162, column: 17)
!1573 = !DILocation(line: 165, column: 26, scope: !1572, inlinedAt: !1328)
!1574 = !DILocation(line: 166, column: 34, scope: !1572, inlinedAt: !1328)
!1575 = !DILocation(line: 166, column: 33, scope: !1572, inlinedAt: !1328)
!1576 = !DILocation(line: 166, column: 29, scope: !1572, inlinedAt: !1328)
!1577 = !DILocation(line: 177, column: 15, scope: !384, inlinedAt: !1328)
!1578 = !DILocalVariable(name: "wc", arg: 1, scope: !1579, file: !1511, line: 1004, type: !365)
!1579 = distinct !DISubprogram(name: "c32width", scope: !1511, file: !1511, line: 1004, type: !1580, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1582)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!63, !365}
!1582 = !{!1578}
!1583 = !DILocation(line: 0, scope: !1579, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 170, column: 31, scope: !387, inlinedAt: !1328)
!1585 = !DILocation(line: 1010, column: 10, scope: !1579, inlinedAt: !1584)
!1586 = !DILocation(line: 0, scope: !387, inlinedAt: !1328)
!1587 = !DILocation(line: 171, column: 23, scope: !1588, inlinedAt: !1328)
!1588 = distinct !DILexicalBlock(scope: !387, file: !2, line: 171, column: 23)
!1589 = !DILocation(line: 171, column: 23, scope: !387, inlinedAt: !1328)
!1590 = !DILocation(line: 172, column: 21, scope: !1588, inlinedAt: !1328)
!1591 = !DILocalVariable(name: "g", arg: 2, scope: !1592, file: !348, line: 107, type: !361)
!1592 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !348, file: !348, line: 107, type: !1593, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1595)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!94, !1337, !361}
!1595 = !{!1596, !1591}
!1596 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1592, file: !348, line: 107, type: !1337)
!1597 = !DILocation(line: 0, scope: !1592, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 180, column: 11, scope: !390, inlinedAt: !1328)
!1599 = !DILocation(line: 0, scope: !1592, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 180, column: 11, scope: !384, inlinedAt: !1328)
!1601 = !DILocation(line: 180, column: 11, scope: !384, inlinedAt: !1328)
!1602 = !DILocation(line: 111, column: 41, scope: !1592, inlinedAt: !1600)
!1603 = !DILocation(line: 111, column: 24, scope: !1592, inlinedAt: !1600)
!1604 = !DILocation(line: 181, column: 15, scope: !1605, inlinedAt: !1328)
!1605 = distinct !DILexicalBlock(scope: !384, file: !2, line: 181, column: 15)
!1606 = !DILocalVariable(name: "__stream", arg: 1, scope: !1607, file: !1367, line: 135, type: !149)
!1607 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1367, file: !1367, line: 135, type: !1368, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1608)
!1608 = !{!1606}
!1609 = !DILocation(line: 0, scope: !1607, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 181, column: 15, scope: !1605, inlinedAt: !1328)
!1611 = !DILocation(line: 137, column: 10, scope: !1607, inlinedAt: !1610)
!1612 = !DILocation(line: 181, column: 15, scope: !384, inlinedAt: !1328)
!1613 = !DILocation(line: 948, column: 21, scope: !1544, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 182, column: 13, scope: !1605, inlinedAt: !1328)
!1615 = !DILocation(line: 0, scope: !1544, inlinedAt: !1614)
!1616 = !DILocation(line: 949, column: 3, scope: !1544, inlinedAt: !1614)
!1617 = !DILocation(line: 950, column: 11, scope: !1544, inlinedAt: !1614)
!1618 = !DILocation(line: 950, column: 3, scope: !1544, inlinedAt: !1614)
!1619 = !DILocation(line: 951, column: 3, scope: !1544, inlinedAt: !1614)
!1620 = !DILocation(line: 952, column: 3, scope: !1544, inlinedAt: !1614)
!1621 = !DILocation(line: 0, scope: !381, inlinedAt: !1328)
!1622 = !DILocation(line: 184, column: 19, scope: !360, inlinedAt: !1328)
!1623 = !DILocation(line: 183, column: 9, scope: !384, inlinedAt: !1328)
!1624 = distinct !{!1624, !1349, !1625, !1174}
!1625 = !DILocation(line: 184, column: 26, scope: !360, inlinedAt: !1328)
!1626 = !DILocation(line: 185, column: 5, scope: !341, inlinedAt: !1328)
!1627 = distinct !{!1627, !1628, !1626}
!1628 = !DILocation(line: 114, column: 3, scope: !341, inlinedAt: !1328)
!1629 = !DILocation(line: 242, column: 3, scope: !1278)
!1630 = !DILocation(line: 244, column: 10, scope: !1278)
!1631 = !DILocation(line: 244, column: 3, scope: !1278)
!1632 = !DISubprogram(name: "bindtextdomain", scope: !1109, file: !1109, line: 86, type: !1633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!94, !100, !100}
!1635 = !DISubprogram(name: "textdomain", scope: !1109, file: !1109, line: 82, type: !1254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1636 = !DISubprogram(name: "atexit", scope: !1252, file: !1252, line: 602, type: !1637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!63, !719}
!1639 = !DISubprogram(name: "getopt_long", scope: !332, file: !332, line: 66, type: !1640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!63, !63, !1642, !100, !1644, !337}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!1645 = !DISubprogram(name: "__builtin___memmove_chk", scope: !1646, file: !1646, line: 25, type: !1647, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1646 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/strings_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "2c53309439f074d781ca95a346401d78")
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!95, !95, !1276, !99, !99}
!1649 = !DISubprogram(name: "mbrtoc32", scope: !366, file: !366, line: 57, type: !1650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!97, !1652, !1117, !97, !1654}
!1652 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1653)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1655)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1656 = !DISubprogram(name: "iswblank", scope: !1657, file: !1657, line: 146, type: !1512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1657 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1658 = !DISubprogram(name: "__overflow", scope: !1122, file: !1122, line: 886, type: !1659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!63, !149, !63}
!1661 = !DISubprogram(name: "__errno_location", scope: !1662, file: !1662, line: 37, type: !1663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1662 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!337}
!1665 = !DISubprogram(name: "fflush_unlocked", scope: !1122, file: !1122, line: 239, type: !1368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1666 = !DISubprogram(name: "clearerr_unlocked", scope: !1122, file: !1122, line: 794, type: !1667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{null, !149}
!1669 = !DISubprogram(name: "wcwidth", scope: !1670, file: !1670, line: 368, type: !1671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1670 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!63, !1673}
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !98, line: 74, baseType: !63)
!1674 = distinct !DISubprogram(name: "add_tab_stop", scope: !409, file: !409, line: 84, type: !1675, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1677)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{null, !373}
!1677 = !{!1678, !1679, !1680}
!1678 = !DILocalVariable(name: "tabval", arg: 1, scope: !1674, file: !409, line: 84, type: !373)
!1679 = !DILocalVariable(name: "prev_column", scope: !1674, file: !409, line: 86, type: !373)
!1680 = !DILocalVariable(name: "column_width", scope: !1674, file: !409, line: 87, type: !373)
!1681 = !DILocation(line: 0, scope: !1674)
!1682 = !DILocation(line: 86, column: 23, scope: !1674)
!1683 = !DILocation(line: 86, column: 40, scope: !1674)
!1684 = !DILocation(line: 86, column: 64, scope: !1674)
!1685 = !DILocation(line: 89, column: 25, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1674, file: !409, line: 89, column: 7)
!1687 = !DILocation(line: 89, column: 22, scope: !1686)
!1688 = !DILocation(line: 89, column: 7, scope: !1674)
!1689 = !DILocation(line: 90, column: 16, scope: !1686)
!1690 = !DILocation(line: 90, column: 14, scope: !1686)
!1691 = !DILocation(line: 91, column: 26, scope: !1674)
!1692 = !DILocation(line: 90, column: 5, scope: !1686)
!1693 = !DILocation(line: 91, column: 3, scope: !1674)
!1694 = !DILocation(line: 87, column: 36, scope: !1674)
!1695 = !DILocation(line: 87, column: 24, scope: !1674)
!1696 = !DILocation(line: 91, column: 30, scope: !1674)
!1697 = !DILocalVariable(name: "width", arg: 1, scope: !1698, file: !409, line: 73, type: !373)
!1698 = distinct !DISubprogram(name: "set_max_column_width", scope: !409, file: !409, line: 73, type: !1675, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1699)
!1699 = !{!1697}
!1700 = !DILocation(line: 0, scope: !1698, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 93, column: 3, scope: !1674)
!1702 = !DILocation(line: 75, column: 7, scope: !1703, inlinedAt: !1701)
!1703 = distinct !DILexicalBlock(scope: !1698, file: !409, line: 75, column: 7)
!1704 = !DILocation(line: 75, column: 24, scope: !1703, inlinedAt: !1701)
!1705 = !DILocation(line: 75, column: 7, scope: !1698, inlinedAt: !1701)
!1706 = !DILocation(line: 77, column: 11, scope: !1707, inlinedAt: !1701)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !409, line: 77, column: 11)
!1708 = distinct !DILexicalBlock(scope: !1703, file: !409, line: 76, column: 5)
!1709 = !DILocation(line: 94, column: 1, scope: !1674)
!1710 = distinct !DISubprogram(name: "parse_tab_stops", scope: !409, file: !409, line: 137, type: !1078, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1711)
!1711 = !{!1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1730}
!1712 = !DILocalVariable(name: "stops", arg: 1, scope: !1710, file: !409, line: 137, type: !100)
!1713 = !DILocalVariable(name: "have_tabval", scope: !1710, file: !409, line: 139, type: !103)
!1714 = !DILocalVariable(name: "tabval", scope: !1710, file: !409, line: 140, type: !373)
!1715 = !DILocalVariable(name: "extend_tabval", scope: !1710, file: !409, line: 141, type: !103)
!1716 = !DILocalVariable(name: "increment_tabval", scope: !1710, file: !409, line: 142, type: !103)
!1717 = !DILocalVariable(name: "num_start", scope: !1710, file: !409, line: 143, type: !100)
!1718 = !DILocalVariable(name: "ok", scope: !1710, file: !409, line: 144, type: !103)
!1719 = !DILocalVariable(name: "len", scope: !1720, file: !409, line: 207, type: !354)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !409, line: 206, column: 13)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !409, line: 205, column: 15)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !409, line: 196, column: 9)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !409, line: 195, column: 16)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !409, line: 184, column: 16)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !409, line: 173, column: 16)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !409, line: 148, column: 11)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !409, line: 147, column: 5)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !409, line: 146, column: 3)
!1729 = distinct !DILexicalBlock(scope: !1710, file: !409, line: 146, column: 3)
!1730 = !DILocalVariable(name: "bad_num", scope: !1720, file: !409, line: 208, type: !94)
!1731 = !DILocation(line: 0, scope: !1710)
!1732 = !DILocation(line: 146, column: 3, scope: !1710)
!1733 = !DILocation(line: 140, column: 9, scope: !1710)
!1734 = !DILocation(line: 141, column: 8, scope: !1710)
!1735 = !DILocation(line: 142, column: 8, scope: !1710)
!1736 = !DILocation(line: 143, column: 15, scope: !1710)
!1737 = !DILocation(line: 144, column: 8, scope: !1710)
!1738 = !DILocation(line: 146, column: 10, scope: !1728)
!1739 = !DILocation(line: 146, column: 3, scope: !1729)
!1740 = !DILocation(line: 148, column: 28, scope: !1726)
!1741 = !DILocation(line: 148, column: 11, scope: !1727)
!1742 = !DILocation(line: 150, column: 15, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !409, line: 150, column: 15)
!1744 = distinct !DILexicalBlock(scope: !1726, file: !409, line: 149, column: 9)
!1745 = !DILocation(line: 150, column: 15, scope: !1744)
!1746 = !DILocation(line: 152, column: 19, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !409, line: 152, column: 19)
!1748 = distinct !DILexicalBlock(scope: !1743, file: !409, line: 151, column: 13)
!1749 = !DILocation(line: 152, column: 19, scope: !1748)
!1750 = !DILocalVariable(name: "tabval", arg: 1, scope: !1751, file: !409, line: 97, type: !373)
!1751 = distinct !DISubprogram(name: "set_extend_size", scope: !409, file: !409, line: 97, type: !1752, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1754)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!103, !373}
!1754 = !{!1750, !1755}
!1755 = !DILocalVariable(name: "ok", scope: !1751, file: !409, line: 99, type: !103)
!1756 = !DILocation(line: 0, scope: !1751, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 154, column: 25, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !409, line: 154, column: 23)
!1759 = distinct !DILexicalBlock(scope: !1747, file: !409, line: 153, column: 17)
!1760 = !DILocation(line: 101, column: 7, scope: !1761, inlinedAt: !1757)
!1761 = distinct !DILexicalBlock(scope: !1751, file: !409, line: 101, column: 7)
!1762 = !DILocation(line: 101, column: 7, scope: !1751, inlinedAt: !1757)
!1763 = !DILocation(line: 103, column: 7, scope: !1764, inlinedAt: !1757)
!1764 = distinct !DILexicalBlock(scope: !1761, file: !409, line: 102, column: 5)
!1765 = !DILocation(line: 107, column: 5, scope: !1764, inlinedAt: !1757)
!1766 = !DILocation(line: 108, column: 15, scope: !1751, inlinedAt: !1757)
!1767 = !DILocation(line: 0, scope: !1698, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 110, column: 3, scope: !1751, inlinedAt: !1757)
!1769 = !DILocation(line: 75, column: 7, scope: !1703, inlinedAt: !1768)
!1770 = !DILocation(line: 75, column: 24, scope: !1703, inlinedAt: !1768)
!1771 = !DILocation(line: 75, column: 7, scope: !1698, inlinedAt: !1768)
!1772 = !DILocation(line: 77, column: 11, scope: !1707, inlinedAt: !1768)
!1773 = !DILocation(line: 154, column: 23, scope: !1759)
!1774 = !DILocation(line: 160, column: 24, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1747, file: !409, line: 160, column: 24)
!1776 = !DILocation(line: 160, column: 24, scope: !1747)
!1777 = !DILocalVariable(name: "tabval", arg: 1, scope: !1778, file: !409, line: 116, type: !373)
!1778 = distinct !DISubprogram(name: "set_increment_size", scope: !409, file: !409, line: 116, type: !1752, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1779)
!1779 = !{!1777, !1780}
!1780 = !DILocalVariable(name: "ok", scope: !1778, file: !409, line: 118, type: !103)
!1781 = !DILocation(line: 0, scope: !1778, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 162, column: 25, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !409, line: 162, column: 23)
!1784 = distinct !DILexicalBlock(scope: !1775, file: !409, line: 161, column: 17)
!1785 = !DILocation(line: 120, column: 7, scope: !1786, inlinedAt: !1782)
!1786 = distinct !DILexicalBlock(scope: !1778, file: !409, line: 120, column: 7)
!1787 = !DILocation(line: 120, column: 7, scope: !1778, inlinedAt: !1782)
!1788 = !DILocation(line: 122, column: 7, scope: !1789, inlinedAt: !1782)
!1789 = distinct !DILexicalBlock(scope: !1786, file: !409, line: 121, column: 5)
!1790 = !DILocation(line: 126, column: 5, scope: !1789, inlinedAt: !1782)
!1791 = !DILocation(line: 127, column: 18, scope: !1778, inlinedAt: !1782)
!1792 = !DILocation(line: 0, scope: !1698, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 129, column: 3, scope: !1778, inlinedAt: !1782)
!1794 = !DILocation(line: 75, column: 7, scope: !1703, inlinedAt: !1793)
!1795 = !DILocation(line: 75, column: 24, scope: !1703, inlinedAt: !1793)
!1796 = !DILocation(line: 75, column: 7, scope: !1698, inlinedAt: !1793)
!1797 = !DILocation(line: 77, column: 11, scope: !1707, inlinedAt: !1793)
!1798 = !DILocation(line: 162, column: 23, scope: !1784)
!1799 = !DILocation(line: 0, scope: !1674, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 169, column: 17, scope: !1775)
!1801 = !DILocation(line: 86, column: 23, scope: !1674, inlinedAt: !1800)
!1802 = !DILocation(line: 86, column: 64, scope: !1674, inlinedAt: !1800)
!1803 = !DILocation(line: 86, column: 40, scope: !1674, inlinedAt: !1800)
!1804 = !DILocation(line: 89, column: 25, scope: !1686, inlinedAt: !1800)
!1805 = !DILocation(line: 89, column: 22, scope: !1686, inlinedAt: !1800)
!1806 = !DILocation(line: 89, column: 7, scope: !1674, inlinedAt: !1800)
!1807 = !DILocation(line: 90, column: 16, scope: !1686, inlinedAt: !1800)
!1808 = !DILocation(line: 90, column: 14, scope: !1686, inlinedAt: !1800)
!1809 = !DILocation(line: 91, column: 26, scope: !1674, inlinedAt: !1800)
!1810 = !DILocation(line: 90, column: 5, scope: !1686, inlinedAt: !1800)
!1811 = !DILocation(line: 91, column: 3, scope: !1674, inlinedAt: !1800)
!1812 = !DILocation(line: 87, column: 36, scope: !1674, inlinedAt: !1800)
!1813 = !DILocation(line: 87, column: 24, scope: !1674, inlinedAt: !1800)
!1814 = !DILocation(line: 91, column: 30, scope: !1674, inlinedAt: !1800)
!1815 = !DILocation(line: 0, scope: !1698, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 93, column: 3, scope: !1674, inlinedAt: !1800)
!1817 = !DILocation(line: 75, column: 7, scope: !1703, inlinedAt: !1816)
!1818 = !DILocation(line: 75, column: 24, scope: !1703, inlinedAt: !1816)
!1819 = !DILocation(line: 75, column: 7, scope: !1698, inlinedAt: !1816)
!1820 = !DILocation(line: 77, column: 11, scope: !1707, inlinedAt: !1816)
!1821 = !DILocation(line: 173, column: 16, scope: !1726)
!1822 = !DILocation(line: 175, column: 15, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !409, line: 175, column: 15)
!1824 = distinct !DILexicalBlock(scope: !1725, file: !409, line: 174, column: 9)
!1825 = !DILocation(line: 175, column: 15, scope: !1824)
!1826 = !DILocation(line: 177, column: 15, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1823, file: !409, line: 176, column: 13)
!1828 = !DILocation(line: 180, column: 13, scope: !1827)
!1829 = !DILocation(line: 186, column: 15, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !409, line: 186, column: 15)
!1831 = distinct !DILexicalBlock(scope: !1724, file: !409, line: 185, column: 9)
!1832 = !DILocation(line: 186, column: 15, scope: !1831)
!1833 = !DILocation(line: 188, column: 15, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1830, file: !409, line: 187, column: 13)
!1835 = !DILocation(line: 191, column: 13, scope: !1834)
!1836 = !DILocation(line: 173, column: 16, scope: !1725)
!1837 = !DILocalVariable(name: "c", arg: 1, scope: !1838, file: !1839, line: 233, type: !63)
!1838 = distinct !DISubprogram(name: "c_isdigit", scope: !1839, file: !1839, line: 233, type: !1840, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1842)
!1839 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!103, !63}
!1842 = !{!1837}
!1843 = !DILocation(line: 0, scope: !1838, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 195, column: 16, scope: !1723)
!1845 = !DILocation(line: 235, column: 3, scope: !1838, inlinedAt: !1844)
!1846 = !DILocation(line: 195, column: 16, scope: !1724)
!1847 = !DILocation(line: 197, column: 16, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1722, file: !409, line: 197, column: 15)
!1849 = !DILocation(line: 197, column: 15, scope: !1722)
!1850 = !DILocation(line: 205, column: 16, scope: !1721)
!1851 = !DILocation(line: 205, column: 15, scope: !1722)
!1852 = !DILocation(line: 207, column: 27, scope: !1720)
!1853 = !DILocation(line: 0, scope: !1720)
!1854 = !DILocation(line: 208, column: 31, scope: !1720)
!1855 = !DILocation(line: 209, column: 15, scope: !1720)
!1856 = !DILocation(line: 210, column: 15, scope: !1720)
!1857 = !DILocation(line: 212, column: 33, scope: !1720)
!1858 = !DILocation(line: 212, column: 39, scope: !1720)
!1859 = !DILocation(line: 213, column: 13, scope: !1720)
!1860 = !DILocation(line: 217, column: 11, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1723, file: !409, line: 216, column: 9)
!1862 = !DILocation(line: 220, column: 11, scope: !1861)
!1863 = !DILocation(line: 146, column: 23, scope: !1728)
!1864 = !DILocation(line: 146, column: 3, scope: !1728)
!1865 = distinct !{!1865, !1739, !1866, !1174}
!1866 = !DILocation(line: 222, column: 5, scope: !1729)
!1867 = !DILocation(line: 224, column: 7, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1710, file: !409, line: 224, column: 7)
!1869 = !DILocation(line: 224, column: 10, scope: !1868)
!1870 = !DILocation(line: 226, column: 11, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !409, line: 226, column: 11)
!1872 = distinct !DILexicalBlock(scope: !1868, file: !409, line: 225, column: 5)
!1873 = !DILocation(line: 226, column: 11, scope: !1872)
!1874 = !DILocation(line: 0, scope: !1751, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 227, column: 15, scope: !1871)
!1876 = !DILocation(line: 101, column: 7, scope: !1761, inlinedAt: !1875)
!1877 = !DILocation(line: 101, column: 7, scope: !1751, inlinedAt: !1875)
!1878 = !DILocation(line: 103, column: 7, scope: !1764, inlinedAt: !1875)
!1879 = !DILocation(line: 107, column: 5, scope: !1764, inlinedAt: !1875)
!1880 = !DILocation(line: 108, column: 15, scope: !1751, inlinedAt: !1875)
!1881 = !DILocation(line: 0, scope: !1698, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 110, column: 3, scope: !1751, inlinedAt: !1875)
!1883 = !DILocation(line: 75, column: 7, scope: !1703, inlinedAt: !1882)
!1884 = !DILocation(line: 75, column: 24, scope: !1703, inlinedAt: !1882)
!1885 = !DILocation(line: 75, column: 7, scope: !1698, inlinedAt: !1882)
!1886 = !DILocation(line: 77, column: 11, scope: !1707, inlinedAt: !1882)
!1887 = !DILocation(line: 227, column: 12, scope: !1871)
!1888 = !DILocation(line: 227, column: 9, scope: !1871)
!1889 = !DILocation(line: 228, column: 16, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1871, file: !409, line: 228, column: 16)
!1891 = !DILocation(line: 228, column: 16, scope: !1871)
!1892 = !DILocation(line: 0, scope: !1778, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 229, column: 15, scope: !1890)
!1894 = !DILocation(line: 120, column: 7, scope: !1786, inlinedAt: !1893)
!1895 = !DILocation(line: 120, column: 7, scope: !1778, inlinedAt: !1893)
!1896 = !DILocation(line: 122, column: 7, scope: !1789, inlinedAt: !1893)
!1897 = !DILocation(line: 126, column: 5, scope: !1789, inlinedAt: !1893)
!1898 = !DILocation(line: 127, column: 18, scope: !1778, inlinedAt: !1893)
!1899 = !DILocation(line: 0, scope: !1698, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 129, column: 3, scope: !1778, inlinedAt: !1893)
!1901 = !DILocation(line: 75, column: 7, scope: !1703, inlinedAt: !1900)
!1902 = !DILocation(line: 75, column: 24, scope: !1703, inlinedAt: !1900)
!1903 = !DILocation(line: 75, column: 7, scope: !1698, inlinedAt: !1900)
!1904 = !DILocation(line: 77, column: 11, scope: !1707, inlinedAt: !1900)
!1905 = !DILocation(line: 229, column: 12, scope: !1890)
!1906 = !DILocation(line: 229, column: 9, scope: !1890)
!1907 = !DILocation(line: 0, scope: !1674, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 231, column: 9, scope: !1890)
!1909 = !DILocation(line: 86, column: 23, scope: !1674, inlinedAt: !1908)
!1910 = !DILocation(line: 86, column: 64, scope: !1674, inlinedAt: !1908)
!1911 = !DILocation(line: 86, column: 40, scope: !1674, inlinedAt: !1908)
!1912 = !DILocation(line: 89, column: 25, scope: !1686, inlinedAt: !1908)
!1913 = !DILocation(line: 89, column: 22, scope: !1686, inlinedAt: !1908)
!1914 = !DILocation(line: 89, column: 7, scope: !1674, inlinedAt: !1908)
!1915 = !DILocation(line: 90, column: 16, scope: !1686, inlinedAt: !1908)
!1916 = !DILocation(line: 90, column: 14, scope: !1686, inlinedAt: !1908)
!1917 = !DILocation(line: 91, column: 26, scope: !1674, inlinedAt: !1908)
!1918 = !DILocation(line: 90, column: 5, scope: !1686, inlinedAt: !1908)
!1919 = !DILocation(line: 91, column: 3, scope: !1674, inlinedAt: !1908)
!1920 = !DILocation(line: 87, column: 36, scope: !1674, inlinedAt: !1908)
!1921 = !DILocation(line: 87, column: 24, scope: !1674, inlinedAt: !1908)
!1922 = !DILocation(line: 91, column: 30, scope: !1674, inlinedAt: !1908)
!1923 = !DILocation(line: 0, scope: !1698, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 93, column: 3, scope: !1674, inlinedAt: !1908)
!1925 = !DILocation(line: 75, column: 7, scope: !1703, inlinedAt: !1924)
!1926 = !DILocation(line: 75, column: 24, scope: !1703, inlinedAt: !1924)
!1927 = !DILocation(line: 75, column: 7, scope: !1698, inlinedAt: !1924)
!1928 = !DILocation(line: 77, column: 11, scope: !1707, inlinedAt: !1924)
!1929 = !DILocation(line: 234, column: 9, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1710, file: !409, line: 234, column: 7)
!1931 = !DILocation(line: 234, column: 7, scope: !1710)
!1932 = !DILocation(line: 235, column: 5, scope: !1930)
!1933 = !DILocation(line: 236, column: 1, scope: !1710)
!1934 = !DISubprogram(name: "free", scope: !1252, file: !1252, line: 555, type: !1935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !95}
!1937 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !409, file: !409, line: 268, type: !342, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1066)
!1938 = !DILocation(line: 270, column: 23, scope: !1937)
!1939 = !DILocation(line: 270, column: 33, scope: !1937)
!1940 = !DILocalVariable(name: "tabs", arg: 1, scope: !1941, file: !409, line: 242, type: !1944)
!1941 = distinct !DISubprogram(name: "validate_tab_stops", scope: !409, file: !409, line: 242, type: !1942, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1946)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{null, !1944, !354}
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!1946 = !{!1940, !1947, !1948, !1949}
!1947 = !DILocalVariable(name: "entries", arg: 2, scope: !1941, file: !409, line: 242, type: !354)
!1948 = !DILocalVariable(name: "prev_tab", scope: !1941, file: !409, line: 244, type: !373)
!1949 = !DILocalVariable(name: "i", scope: !1950, file: !409, line: 246, type: !354)
!1950 = distinct !DILexicalBlock(scope: !1941, file: !409, line: 246, column: 3)
!1951 = !DILocation(line: 0, scope: !1941, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 270, column: 3, scope: !1937)
!1953 = !DILocation(line: 0, scope: !1950, inlinedAt: !1952)
!1954 = !DILocation(line: 246, column: 23, scope: !1955, inlinedAt: !1952)
!1955 = distinct !DILexicalBlock(scope: !1950, file: !409, line: 246, column: 3)
!1956 = !DILocation(line: 246, column: 3, scope: !1950, inlinedAt: !1952)
!1957 = !DILocation(line: 246, column: 35, scope: !1955, inlinedAt: !1952)
!1958 = distinct !{!1958, !1956, !1959, !1174}
!1959 = !DILocation(line: 253, column: 5, scope: !1950, inlinedAt: !1952)
!1960 = !DILocation(line: 255, column: 7, scope: !1961, inlinedAt: !1952)
!1961 = distinct !DILexicalBlock(scope: !1941, file: !409, line: 255, column: 7)
!1962 = !DILocation(line: 255, column: 22, scope: !1961, inlinedAt: !1952)
!1963 = !DILocation(line: 248, column: 11, scope: !1964, inlinedAt: !1952)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !409, line: 248, column: 11)
!1965 = distinct !DILexicalBlock(scope: !1955, file: !409, line: 247, column: 5)
!1966 = !DILocation(line: 248, column: 19, scope: !1964, inlinedAt: !1952)
!1967 = !DILocation(line: 248, column: 11, scope: !1965, inlinedAt: !1952)
!1968 = !DILocation(line: 249, column: 9, scope: !1964, inlinedAt: !1952)
!1969 = !DILocation(line: 250, column: 19, scope: !1970, inlinedAt: !1952)
!1970 = distinct !DILexicalBlock(scope: !1965, file: !409, line: 250, column: 11)
!1971 = !DILocation(line: 250, column: 11, scope: !1965, inlinedAt: !1952)
!1972 = !DILocation(line: 251, column: 9, scope: !1970, inlinedAt: !1952)
!1973 = !DILocation(line: 256, column: 5, scope: !1961, inlinedAt: !1952)
!1974 = !DILocation(line: 272, column: 22, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1937, file: !409, line: 272, column: 7)
!1976 = !DILocation(line: 272, column: 7, scope: !1937)
!1977 = !DILocation(line: 273, column: 35, scope: !1975)
!1978 = !DILocation(line: 273, column: 33, scope: !1975)
!1979 = !DILocation(line: 273, column: 5, scope: !1975)
!1980 = !DILocation(line: 276, column: 27, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1975, file: !409, line: 276, column: 12)
!1982 = !DILocation(line: 276, column: 32, scope: !1981)
!1983 = !DILocation(line: 277, column: 16, scope: !1981)
!1984 = !DILocation(line: 277, column: 5, scope: !1981)
!1985 = !DILocation(line: 0, scope: !1975)
!1986 = !DILocation(line: 280, column: 1, scope: !1937)
!1987 = distinct !DISubprogram(name: "get_next_tab_column", scope: !409, file: !409, line: 288, type: !1988, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1991)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!373, !373, !1010, !1990}
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1991 = !{!1992, !1993, !1994, !1995, !1996, !2002, !2006}
!1992 = !DILocalVariable(name: "column", arg: 1, scope: !1987, file: !409, line: 288, type: !373)
!1993 = !DILocalVariable(name: "tab_index", arg: 2, scope: !1987, file: !409, line: 288, type: !1010)
!1994 = !DILocalVariable(name: "last_tab", arg: 3, scope: !1987, file: !409, line: 288, type: !1990)
!1995 = !DILocalVariable(name: "tab_distance", scope: !1987, file: !409, line: 291, type: !373)
!1996 = !DILocalVariable(name: "tab", scope: !1997, file: !409, line: 302, type: !373)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !409, line: 301, column: 9)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !409, line: 300, column: 7)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !409, line: 300, column: 7)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !409, line: 297, column: 5)
!2001 = distinct !DILexicalBlock(scope: !1987, file: !409, line: 294, column: 7)
!2002 = !DILocalVariable(name: "end_tab", scope: !2003, file: !409, line: 314, type: !373)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !409, line: 311, column: 9)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !409, line: 310, column: 16)
!2005 = distinct !DILexicalBlock(scope: !2000, file: !409, line: 308, column: 11)
!2006 = !DILocalVariable(name: "tab_stop", scope: !1987, file: !409, line: 324, type: !373)
!2007 = !DILocation(line: 0, scope: !1987)
!2008 = !DILocation(line: 290, column: 13, scope: !1987)
!2009 = !DILocation(line: 294, column: 7, scope: !2001)
!2010 = !DILocation(line: 294, column: 7, scope: !1987)
!2011 = !DILocation(line: 300, column: 26, scope: !1998)
!2012 = !DILocation(line: 300, column: 7, scope: !1999)
!2013 = !DILocation(line: 295, column: 38, scope: !2001)
!2014 = !DILocation(line: 295, column: 29, scope: !2001)
!2015 = !DILocation(line: 295, column: 5, scope: !2001)
!2016 = !DILocation(line: 302, column: 23, scope: !1997)
!2017 = !DILocation(line: 0, scope: !1997)
!2018 = !DILocation(line: 303, column: 22, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1997, file: !409, line: 303, column: 15)
!2020 = !DILocation(line: 300, column: 57, scope: !1998)
!2021 = distinct !{!2021, !2012, !2022, !1174}
!2022 = !DILocation(line: 305, column: 9, scope: !1999)
!2023 = !DILocation(line: 308, column: 11, scope: !2005)
!2024 = !DILocation(line: 308, column: 11, scope: !2000)
!2025 = !DILocation(line: 309, column: 45, scope: !2005)
!2026 = !DILocation(line: 309, column: 36, scope: !2005)
!2027 = !DILocation(line: 309, column: 9, scope: !2005)
!2028 = !DILocation(line: 310, column: 16, scope: !2004)
!2029 = !DILocation(line: 310, column: 16, scope: !2005)
!2030 = !DILocation(line: 314, column: 27, scope: !2003)
!2031 = !DILocation(line: 314, column: 51, scope: !2003)
!2032 = !DILocation(line: 0, scope: !2003)
!2033 = !DILocation(line: 315, column: 52, scope: !2003)
!2034 = !DILocation(line: 315, column: 63, scope: !2003)
!2035 = !DILocation(line: 315, column: 41, scope: !2003)
!2036 = !DILocation(line: 316, column: 9, scope: !2003)
!2037 = !DILocation(line: 319, column: 21, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2004, file: !409, line: 318, column: 9)
!2039 = !DILocation(line: 0, scope: !2001)
!2040 = !DILocation(line: 325, column: 7, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !1987, file: !409, line: 325, column: 7)
!2042 = !DILocation(line: 325, column: 7, scope: !1987)
!2043 = !DILocation(line: 326, column: 5, scope: !2041)
!2044 = !DILocation(line: 328, column: 1, scope: !1987)
!2045 = distinct !DISubprogram(name: "set_file_list", scope: !409, file: !409, line: 333, type: !2046, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2048)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{null, !566}
!2048 = !{!2049}
!2049 = !DILocalVariable(name: "list", arg: 1, scope: !2045, file: !409, line: 333, type: !566)
!2050 = !DILocation(line: 0, scope: !2045)
!2051 = !DILocation(line: 335, column: 19, scope: !2045)
!2052 = !DILocation(line: 337, column: 8, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2045, file: !409, line: 337, column: 7)
!2054 = !DILocation(line: 0, scope: !2053)
!2055 = !DILocation(line: 341, column: 1, scope: !2045)
!2056 = !DILocation(line: 0, scope: !464)
!2057 = !DILocation(line: 354, column: 7, scope: !506)
!2058 = !DILocation(line: 354, column: 7, scope: !464)
!2059 = !DILocation(line: 356, column: 17, scope: !505)
!2060 = !DILocation(line: 0, scope: !505)
!2061 = !DILocalVariable(name: "__stream", arg: 1, scope: !2062, file: !1367, line: 135, type: !467)
!2062 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1367, file: !1367, line: 135, type: !2063, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2065)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!63, !467}
!2065 = !{!2061}
!2066 = !DILocation(line: 0, scope: !2062, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 357, column: 12, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !505, file: !409, line: 357, column: 11)
!2069 = !DILocation(line: 137, column: 10, scope: !2062, inlinedAt: !2067)
!2070 = !DILocation(line: 357, column: 12, scope: !2068)
!2071 = !DILocation(line: 357, column: 11, scope: !505)
!2072 = !DILocation(line: 359, column: 18, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !505, file: !409, line: 359, column: 11)
!2074 = !DILocalVariable(name: "__s1", arg: 1, scope: !2075, file: !1140, line: 1359, type: !100)
!2075 = distinct !DISubprogram(name: "streq", scope: !1140, file: !1140, line: 1359, type: !1141, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2076)
!2076 = !{!2074, !2077}
!2077 = !DILocalVariable(name: "__s2", arg: 2, scope: !2075, file: !1140, line: 1359, type: !100)
!2078 = !DILocation(line: 0, scope: !2075, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 359, column: 11, scope: !2073)
!2080 = !DILocation(line: 1361, column: 11, scope: !2075, inlinedAt: !2079)
!2081 = !DILocation(line: 1361, column: 10, scope: !2075, inlinedAt: !2079)
!2082 = !DILocation(line: 359, column: 11, scope: !505)
!2083 = !DILocation(line: 360, column: 9, scope: !2073)
!2084 = !DILocation(line: 361, column: 16, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2073, file: !409, line: 361, column: 16)
!2086 = !DILocation(line: 361, column: 28, scope: !2085)
!2087 = !DILocation(line: 361, column: 16, scope: !2073)
!2088 = !DILocation(line: 362, column: 15, scope: !2085)
!2089 = !DILocation(line: 362, column: 9, scope: !2085)
!2090 = !DILocation(line: 363, column: 11, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !505, file: !409, line: 363, column: 11)
!2092 = !DILocation(line: 363, column: 11, scope: !505)
!2093 = !DILocation(line: 365, column: 11, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2091, file: !409, line: 364, column: 9)
!2095 = !DILocation(line: 366, column: 23, scope: !2094)
!2096 = !DILocation(line: 367, column: 9, scope: !2094)
!2097 = !DILocation(line: 370, column: 28, scope: !464)
!2098 = !DILocation(line: 370, column: 18, scope: !464)
!2099 = !DILocation(line: 370, column: 32, scope: !464)
!2100 = !DILocation(line: 370, column: 3, scope: !464)
!2101 = !DILocation(line: 0, scope: !2075, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 372, column: 11, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !409, line: 372, column: 11)
!2104 = distinct !DILexicalBlock(scope: !464, file: !409, line: 371, column: 5)
!2105 = !DILocation(line: 1361, column: 11, scope: !2075, inlinedAt: !2102)
!2106 = !DILocation(line: 1361, column: 10, scope: !2075, inlinedAt: !2102)
!2107 = !DILocation(line: 372, column: 11, scope: !2104)
!2108 = !DILocation(line: 374, column: 27, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2103, file: !409, line: 373, column: 9)
!2110 = !DILocation(line: 375, column: 16, scope: !2109)
!2111 = !DILocation(line: 376, column: 9, scope: !2109)
!2112 = !DILocation(line: 378, column: 14, scope: !2103)
!2113 = !DILocation(line: 0, scope: !2103)
!2114 = !DILocation(line: 379, column: 11, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2104, file: !409, line: 379, column: 11)
!2116 = !DILocation(line: 379, column: 11, scope: !2104)
!2117 = !DILocation(line: 381, column: 21, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2115, file: !409, line: 380, column: 9)
!2119 = !DILocation(line: 382, column: 11, scope: !2118)
!2120 = !DILocation(line: 383, column: 11, scope: !2118)
!2121 = !DILocation(line: 385, column: 7, scope: !2104)
!2122 = !DILocation(line: 386, column: 19, scope: !2104)
!2123 = distinct !{!2123, !2100, !2124, !1174}
!2124 = !DILocation(line: 387, column: 5, scope: !464)
!2125 = !DILocation(line: 389, column: 1, scope: !464)
!2126 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !409, file: !409, line: 393, type: !342, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1066)
!2127 = !DILocation(line: 395, column: 9, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2126, file: !409, line: 395, column: 9)
!2129 = !DILocation(line: 395, column: 25, scope: !2128)
!2130 = !DILocation(line: 395, column: 36, scope: !2128)
!2131 = !DILocation(line: 395, column: 28, scope: !2128)
!2132 = !DILocation(line: 395, column: 43, scope: !2128)
!2133 = !DILocation(line: 395, column: 9, scope: !2126)
!2134 = !DILocation(line: 396, column: 7, scope: !2128)
!2135 = !DILocation(line: 397, column: 1, scope: !2126)
!2136 = distinct !DISubprogram(name: "emit_tab_list_info", scope: !409, file: !409, line: 402, type: !1078, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2137)
!2137 = !{!2138}
!2138 = !DILocalVariable(name: "program", arg: 1, scope: !2136, file: !409, line: 402, type: !100)
!2139 = !DILocation(line: 0, scope: !2136)
!2140 = !DILocation(line: 405, column: 20, scope: !2136)
!2141 = !DILocation(line: 0, scope: !569, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 405, column: 3, scope: !2136)
!2143 = !DILocation(line: 581, column: 7, scope: !576, inlinedAt: !2142)
!2144 = !DILocation(line: 581, column: 19, scope: !576, inlinedAt: !2142)
!2145 = !DILocation(line: 581, column: 7, scope: !569, inlinedAt: !2142)
!2146 = !DILocation(line: 585, column: 26, scope: !575, inlinedAt: !2142)
!2147 = !DILocation(line: 0, scope: !575, inlinedAt: !2142)
!2148 = !DILocation(line: 586, column: 23, scope: !575, inlinedAt: !2142)
!2149 = !DILocation(line: 586, column: 28, scope: !575, inlinedAt: !2142)
!2150 = !DILocation(line: 586, column: 32, scope: !575, inlinedAt: !2142)
!2151 = !DILocation(line: 586, column: 38, scope: !575, inlinedAt: !2142)
!2152 = !DILocation(line: 0, scope: !2075, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 586, column: 41, scope: !575, inlinedAt: !2142)
!2154 = !DILocation(line: 1361, column: 11, scope: !2075, inlinedAt: !2153)
!2155 = !DILocation(line: 1361, column: 10, scope: !2075, inlinedAt: !2153)
!2156 = !DILocation(line: 586, column: 19, scope: !575, inlinedAt: !2142)
!2157 = !DILocation(line: 587, column: 5, scope: !575, inlinedAt: !2142)
!2158 = !DILocation(line: 588, column: 7, scope: !2159, inlinedAt: !2142)
!2159 = distinct !DILexicalBlock(scope: !569, file: !62, line: 588, column: 7)
!2160 = !DILocation(line: 588, column: 7, scope: !569, inlinedAt: !2142)
!2161 = !DILocation(line: 590, column: 7, scope: !2162, inlinedAt: !2142)
!2162 = distinct !DILexicalBlock(scope: !2159, file: !62, line: 589, column: 5)
!2163 = !DILocation(line: 591, column: 7, scope: !2162, inlinedAt: !2142)
!2164 = !DILocation(line: 595, column: 37, scope: !569, inlinedAt: !2142)
!2165 = !DILocation(line: 595, column: 35, scope: !569, inlinedAt: !2142)
!2166 = !DILocation(line: 596, column: 29, scope: !569, inlinedAt: !2142)
!2167 = !DILocation(line: 597, column: 8, scope: !583, inlinedAt: !2142)
!2168 = !DILocation(line: 597, column: 7, scope: !569, inlinedAt: !2142)
!2169 = !DILocation(line: 604, column: 24, scope: !582, inlinedAt: !2142)
!2170 = !DILocation(line: 604, column: 12, scope: !583, inlinedAt: !2142)
!2171 = !DILocation(line: 0, scope: !581, inlinedAt: !2142)
!2172 = !DILocation(line: 610, column: 16, scope: !581, inlinedAt: !2142)
!2173 = !DILocation(line: 610, column: 7, scope: !581, inlinedAt: !2142)
!2174 = !DILocation(line: 611, column: 21, scope: !581, inlinedAt: !2142)
!2175 = !DILocation(line: 611, column: 19, scope: !581, inlinedAt: !2142)
!2176 = !DILocation(line: 611, column: 16, scope: !581, inlinedAt: !2142)
!2177 = !DILocation(line: 610, column: 30, scope: !581, inlinedAt: !2142)
!2178 = distinct !{!2178, !2173, !2174, !1174}
!2179 = !DILocation(line: 612, column: 18, scope: !2180, inlinedAt: !2142)
!2180 = distinct !DILexicalBlock(scope: !581, file: !62, line: 612, column: 11)
!2181 = !DILocation(line: 612, column: 11, scope: !581, inlinedAt: !2142)
!2182 = !DILocation(line: 618, column: 5, scope: !581, inlinedAt: !2142)
!2183 = !DILocation(line: 620, column: 23, scope: !569, inlinedAt: !2142)
!2184 = !DILocation(line: 625, column: 39, scope: !569, inlinedAt: !2142)
!2185 = !DILocation(line: 626, column: 3, scope: !569, inlinedAt: !2142)
!2186 = !DILocation(line: 626, column: 10, scope: !569, inlinedAt: !2142)
!2187 = !DILocation(line: 626, column: 21, scope: !569, inlinedAt: !2142)
!2188 = !DILocation(line: 628, column: 44, scope: !2189, inlinedAt: !2142)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !62, line: 628, column: 11)
!2190 = distinct !DILexicalBlock(scope: !569, file: !62, line: 627, column: 5)
!2191 = !DILocation(line: 628, column: 32, scope: !2189, inlinedAt: !2142)
!2192 = !DILocation(line: 628, column: 49, scope: !2189, inlinedAt: !2142)
!2193 = !DILocation(line: 628, column: 11, scope: !2190, inlinedAt: !2142)
!2194 = !DILocation(line: 630, column: 11, scope: !2195, inlinedAt: !2142)
!2195 = distinct !DILexicalBlock(scope: !2190, file: !62, line: 630, column: 11)
!2196 = !DILocation(line: 630, column: 11, scope: !2190, inlinedAt: !2142)
!2197 = !DILocation(line: 632, column: 26, scope: !2198, inlinedAt: !2142)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !62, line: 632, column: 15)
!2199 = distinct !DILexicalBlock(scope: !2195, file: !62, line: 631, column: 9)
!2200 = !DILocation(line: 632, column: 34, scope: !2198, inlinedAt: !2142)
!2201 = !DILocation(line: 632, column: 37, scope: !2198, inlinedAt: !2142)
!2202 = !DILocation(line: 632, column: 15, scope: !2199, inlinedAt: !2142)
!2203 = !DILocation(line: 636, column: 16, scope: !2204, inlinedAt: !2142)
!2204 = distinct !DILexicalBlock(scope: !2199, file: !62, line: 636, column: 15)
!2205 = !DILocation(line: 636, column: 29, scope: !2204, inlinedAt: !2142)
!2206 = !DILocation(line: 640, column: 16, scope: !2190, inlinedAt: !2142)
!2207 = distinct !{!2207, !2185, !2208, !1174}
!2208 = !DILocation(line: 641, column: 5, scope: !569, inlinedAt: !2142)
!2209 = !DILocation(line: 644, column: 3, scope: !569, inlinedAt: !2142)
!2210 = !DILocation(line: 0, scope: !2075, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 648, column: 31, scope: !569, inlinedAt: !2142)
!2212 = !DILocation(line: 1361, column: 11, scope: !2075, inlinedAt: !2211)
!2213 = !DILocation(line: 1361, column: 10, scope: !2075, inlinedAt: !2211)
!2214 = !DILocation(line: 648, column: 31, scope: !569, inlinedAt: !2142)
!2215 = !DILocation(line: 0, scope: !2075, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 649, column: 31, scope: !569, inlinedAt: !2142)
!2217 = !DILocation(line: 1361, column: 11, scope: !2075, inlinedAt: !2216)
!2218 = !DILocation(line: 1361, column: 10, scope: !2075, inlinedAt: !2216)
!2219 = !DILocation(line: 649, column: 31, scope: !569, inlinedAt: !2142)
!2220 = !DILocation(line: 0, scope: !2075, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 650, column: 31, scope: !569, inlinedAt: !2142)
!2222 = !DILocation(line: 1361, column: 11, scope: !2075, inlinedAt: !2221)
!2223 = !DILocation(line: 1361, column: 10, scope: !2075, inlinedAt: !2221)
!2224 = !DILocation(line: 650, column: 31, scope: !569, inlinedAt: !2142)
!2225 = !DILocation(line: 0, scope: !2075, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 651, column: 31, scope: !569, inlinedAt: !2142)
!2227 = !DILocation(line: 1361, column: 11, scope: !2075, inlinedAt: !2226)
!2228 = !DILocation(line: 1361, column: 10, scope: !2075, inlinedAt: !2226)
!2229 = !DILocation(line: 651, column: 31, scope: !569, inlinedAt: !2142)
!2230 = !DILocation(line: 0, scope: !2075, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 652, column: 31, scope: !569, inlinedAt: !2142)
!2232 = !DILocation(line: 1361, column: 11, scope: !2075, inlinedAt: !2231)
!2233 = !DILocation(line: 1361, column: 10, scope: !2075, inlinedAt: !2231)
!2234 = !DILocation(line: 652, column: 31, scope: !569, inlinedAt: !2142)
!2235 = !DILocation(line: 0, scope: !2075, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 653, column: 31, scope: !569, inlinedAt: !2142)
!2237 = !DILocation(line: 1361, column: 11, scope: !2075, inlinedAt: !2236)
!2238 = !DILocation(line: 1361, column: 10, scope: !2075, inlinedAt: !2236)
!2239 = !DILocation(line: 653, column: 31, scope: !569, inlinedAt: !2142)
!2240 = !DILocation(line: 0, scope: !2075, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 654, column: 31, scope: !569, inlinedAt: !2142)
!2242 = !DILocation(line: 1361, column: 11, scope: !2075, inlinedAt: !2241)
!2243 = !DILocation(line: 1361, column: 10, scope: !2075, inlinedAt: !2241)
!2244 = !DILocation(line: 654, column: 31, scope: !569, inlinedAt: !2142)
!2245 = !DILocation(line: 0, scope: !2075, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 655, column: 31, scope: !569, inlinedAt: !2142)
!2247 = !DILocation(line: 1361, column: 11, scope: !2075, inlinedAt: !2246)
!2248 = !DILocation(line: 1361, column: 10, scope: !2075, inlinedAt: !2246)
!2249 = !DILocation(line: 655, column: 31, scope: !569, inlinedAt: !2142)
!2250 = !DILocation(line: 0, scope: !2075, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 656, column: 31, scope: !569, inlinedAt: !2142)
!2252 = !DILocation(line: 1361, column: 11, scope: !2075, inlinedAt: !2251)
!2253 = !DILocation(line: 1361, column: 10, scope: !2075, inlinedAt: !2251)
!2254 = !DILocation(line: 656, column: 31, scope: !569, inlinedAt: !2142)
!2255 = !DILocation(line: 0, scope: !2075, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 657, column: 31, scope: !569, inlinedAt: !2142)
!2257 = !DILocation(line: 1361, column: 11, scope: !2075, inlinedAt: !2256)
!2258 = !DILocation(line: 1361, column: 10, scope: !2075, inlinedAt: !2256)
!2259 = !DILocation(line: 657, column: 31, scope: !569, inlinedAt: !2142)
!2260 = !DILocation(line: 663, column: 7, scope: !2261, inlinedAt: !2142)
!2261 = distinct !DILexicalBlock(scope: !569, file: !62, line: 663, column: 7)
!2262 = !DILocation(line: 664, column: 7, scope: !2261, inlinedAt: !2142)
!2263 = !DILocation(line: 664, column: 10, scope: !2261, inlinedAt: !2142)
!2264 = !DILocation(line: 663, column: 7, scope: !569, inlinedAt: !2142)
!2265 = !DILocation(line: 669, column: 7, scope: !2266, inlinedAt: !2142)
!2266 = distinct !DILexicalBlock(scope: !2261, file: !62, line: 665, column: 5)
!2267 = !DILocation(line: 671, column: 5, scope: !2266, inlinedAt: !2142)
!2268 = !DILocation(line: 676, column: 7, scope: !2269, inlinedAt: !2142)
!2269 = distinct !DILexicalBlock(scope: !2261, file: !62, line: 673, column: 5)
!2270 = !DILocation(line: 679, column: 3, scope: !569, inlinedAt: !2142)
!2271 = !DILocation(line: 683, column: 3, scope: !569, inlinedAt: !2142)
!2272 = !DILocation(line: 686, column: 3, scope: !569, inlinedAt: !2142)
!2273 = !DILocation(line: 688, column: 3, scope: !569, inlinedAt: !2142)
!2274 = !DILocation(line: 691, column: 3, scope: !569, inlinedAt: !2142)
!2275 = !DILocation(line: 695, column: 3, scope: !569, inlinedAt: !2142)
!2276 = !DILocation(line: 696, column: 1, scope: !569, inlinedAt: !2142)
!2277 = !DILocation(line: 409, column: 3, scope: !2136)
!2278 = !DILocation(line: 416, column: 1, scope: !2136)
!2279 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !661, file: !661, line: 50, type: !1078, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !2280)
!2280 = !{!2281}
!2281 = !DILocalVariable(name: "file", arg: 1, scope: !2279, file: !661, line: 50, type: !100)
!2282 = !DILocation(line: 0, scope: !2279)
!2283 = !DILocation(line: 52, column: 13, scope: !2279)
!2284 = !DILocation(line: 53, column: 1, scope: !2279)
!2285 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !661, file: !661, line: 87, type: !2286, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !2288)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{null, !103}
!2288 = !{!2289}
!2289 = !DILocalVariable(name: "ignore", arg: 1, scope: !2285, file: !661, line: 87, type: !103)
!2290 = !DILocation(line: 0, scope: !2285)
!2291 = !DILocation(line: 89, column: 16, scope: !2285)
!2292 = !DILocation(line: 90, column: 1, scope: !2285)
!2293 = distinct !DISubprogram(name: "close_stdout", scope: !661, file: !661, line: 116, type: !342, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !2294)
!2294 = !{!2295}
!2295 = !DILocalVariable(name: "write_error", scope: !2296, file: !661, line: 121, type: !100)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !661, line: 120, column: 5)
!2297 = distinct !DILexicalBlock(scope: !2293, file: !661, line: 118, column: 7)
!2298 = !DILocation(line: 118, column: 21, scope: !2297)
!2299 = !DILocation(line: 118, column: 7, scope: !2297)
!2300 = !DILocation(line: 118, column: 29, scope: !2297)
!2301 = !DILocation(line: 119, column: 7, scope: !2297)
!2302 = !DILocation(line: 119, column: 12, scope: !2297)
!2303 = !DILocation(line: 119, column: 25, scope: !2297)
!2304 = !DILocation(line: 119, column: 28, scope: !2297)
!2305 = !DILocation(line: 119, column: 34, scope: !2297)
!2306 = !DILocation(line: 118, column: 7, scope: !2293)
!2307 = !DILocation(line: 121, column: 33, scope: !2296)
!2308 = !DILocation(line: 0, scope: !2296)
!2309 = !DILocation(line: 122, column: 11, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2296, file: !661, line: 122, column: 11)
!2311 = !DILocation(line: 0, scope: !2310)
!2312 = !DILocation(line: 122, column: 11, scope: !2296)
!2313 = !DILocation(line: 123, column: 9, scope: !2310)
!2314 = !DILocation(line: 126, column: 9, scope: !2310)
!2315 = !DILocation(line: 128, column: 14, scope: !2296)
!2316 = !DILocation(line: 128, column: 7, scope: !2296)
!2317 = !DILocation(line: 133, column: 42, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2293, file: !661, line: 133, column: 7)
!2319 = !DILocation(line: 133, column: 28, scope: !2318)
!2320 = !DILocation(line: 133, column: 50, scope: !2318)
!2321 = !DILocation(line: 133, column: 7, scope: !2293)
!2322 = !DILocation(line: 134, column: 12, scope: !2318)
!2323 = !DILocation(line: 134, column: 5, scope: !2318)
!2324 = !DILocation(line: 135, column: 1, scope: !2293)
!2325 = !DISubprogram(name: "_exit", scope: !2326, file: !2326, line: 624, type: !1047, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!2326 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2327 = distinct !DISubprogram(name: "verror", scope: !676, file: !676, line: 251, type: !2328, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !2330)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{null, !63, !63, !100, !686}
!2330 = !{!2331, !2332, !2333, !2334}
!2331 = !DILocalVariable(name: "status", arg: 1, scope: !2327, file: !676, line: 251, type: !63)
!2332 = !DILocalVariable(name: "errnum", arg: 2, scope: !2327, file: !676, line: 251, type: !63)
!2333 = !DILocalVariable(name: "message", arg: 3, scope: !2327, file: !676, line: 251, type: !100)
!2334 = !DILocalVariable(name: "args", arg: 4, scope: !2327, file: !676, line: 251, type: !686)
!2335 = !DILocation(line: 0, scope: !2327)
!2336 = !DILocation(line: 261, column: 3, scope: !2327)
!2337 = !DILocation(line: 265, column: 7, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2327, file: !676, line: 265, column: 7)
!2339 = !DILocation(line: 265, column: 7, scope: !2327)
!2340 = !DILocation(line: 266, column: 5, scope: !2338)
!2341 = !DILocation(line: 272, column: 7, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2338, file: !676, line: 268, column: 5)
!2343 = !DILocation(line: 276, column: 3, scope: !2327)
!2344 = !DILocation(line: 282, column: 1, scope: !2327)
!2345 = distinct !DISubprogram(name: "flush_stdout", scope: !676, file: !676, line: 163, type: !342, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !2346)
!2346 = !{!2347}
!2347 = !DILocalVariable(name: "stdout_fd", scope: !2345, file: !676, line: 166, type: !63)
!2348 = !DILocation(line: 0, scope: !2345)
!2349 = !DILocalVariable(name: "fd", arg: 1, scope: !2350, file: !676, line: 145, type: !63)
!2350 = distinct !DISubprogram(name: "is_open", scope: !676, file: !676, line: 145, type: !1531, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !2351)
!2351 = !{!2349}
!2352 = !DILocation(line: 0, scope: !2350, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 182, column: 25, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2345, file: !676, line: 182, column: 7)
!2355 = !DILocation(line: 157, column: 15, scope: !2350, inlinedAt: !2353)
!2356 = !DILocation(line: 157, column: 12, scope: !2350, inlinedAt: !2353)
!2357 = !DILocation(line: 182, column: 7, scope: !2345)
!2358 = !DILocation(line: 184, column: 5, scope: !2354)
!2359 = !DILocation(line: 185, column: 1, scope: !2345)
!2360 = distinct !DISubprogram(name: "error_tail", scope: !676, file: !676, line: 219, type: !2328, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !2361)
!2361 = !{!2362, !2363, !2364, !2365}
!2362 = !DILocalVariable(name: "status", arg: 1, scope: !2360, file: !676, line: 219, type: !63)
!2363 = !DILocalVariable(name: "errnum", arg: 2, scope: !2360, file: !676, line: 219, type: !63)
!2364 = !DILocalVariable(name: "message", arg: 3, scope: !2360, file: !676, line: 219, type: !100)
!2365 = !DILocalVariable(name: "args", arg: 4, scope: !2360, file: !676, line: 219, type: !686)
!2366 = !DILocation(line: 0, scope: !2360)
!2367 = !DILocation(line: 229, column: 13, scope: !2360)
!2368 = !DILocalVariable(name: "__stream", arg: 1, scope: !2369, file: !1113, line: 132, type: !2372)
!2369 = distinct !DISubprogram(name: "vfprintf", scope: !1113, file: !1113, line: 132, type: !2370, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !2407)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!63, !2372, !1117, !686}
!2372 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2373)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2375)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2376)
!2376 = !{!2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2375, file: !153, line: 51, baseType: !63, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2375, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2375, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2375, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2375, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2375, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2375, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2375, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2375, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2375, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2375, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2375, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2375, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2375, file: !153, line: 70, baseType: !2391, size: 64, offset: 832)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2375, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2375, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2375, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2375, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2375, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2375, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2375, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2375, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2375, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2375, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2375, file: !153, line: 93, baseType: !2391, size: 64, offset: 1344)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2375, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2375, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2375, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2375, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2407 = !{!2368, !2408, !2409}
!2408 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2369, file: !1113, line: 133, type: !1117)
!2409 = !DILocalVariable(name: "__ap", arg: 3, scope: !2369, file: !1113, line: 133, type: !686)
!2410 = !DILocation(line: 0, scope: !2369, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 229, column: 3, scope: !2360)
!2412 = !DILocation(line: 135, column: 10, scope: !2369, inlinedAt: !2411)
!2413 = !DILocation(line: 232, column: 3, scope: !2360)
!2414 = !DILocation(line: 233, column: 7, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2360, file: !676, line: 233, column: 7)
!2416 = !DILocation(line: 233, column: 7, scope: !2360)
!2417 = !DILocalVariable(name: "errnum", arg: 1, scope: !2418, file: !676, line: 188, type: !63)
!2418 = distinct !DISubprogram(name: "print_errno_message", scope: !676, file: !676, line: 188, type: !1047, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !2419)
!2419 = !{!2417, !2420, !2421}
!2420 = !DILocalVariable(name: "s", scope: !2418, file: !676, line: 190, type: !100)
!2421 = !DILocalVariable(name: "errbuf", scope: !2418, file: !676, line: 193, type: !2422)
!2422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2423)
!2423 = !{!2424}
!2424 = !DISubrange(count: 1024)
!2425 = !DILocation(line: 0, scope: !2418, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 234, column: 5, scope: !2415)
!2427 = !DILocation(line: 193, column: 3, scope: !2418, inlinedAt: !2426)
!2428 = !DILocation(line: 193, column: 8, scope: !2418, inlinedAt: !2426)
!2429 = !DILocation(line: 195, column: 7, scope: !2418, inlinedAt: !2426)
!2430 = !DILocation(line: 207, column: 9, scope: !2431, inlinedAt: !2426)
!2431 = distinct !DILexicalBlock(scope: !2418, file: !676, line: 207, column: 7)
!2432 = !DILocation(line: 207, column: 7, scope: !2418, inlinedAt: !2426)
!2433 = !DILocation(line: 208, column: 9, scope: !2431, inlinedAt: !2426)
!2434 = !DILocation(line: 208, column: 5, scope: !2431, inlinedAt: !2426)
!2435 = !DILocation(line: 214, column: 3, scope: !2418, inlinedAt: !2426)
!2436 = !DILocation(line: 216, column: 1, scope: !2418, inlinedAt: !2426)
!2437 = !DILocation(line: 234, column: 5, scope: !2415)
!2438 = !DILocation(line: 238, column: 3, scope: !2360)
!2439 = !DILocalVariable(name: "__c", arg: 1, scope: !2440, file: !1367, line: 101, type: !63)
!2440 = distinct !DISubprogram(name: "putc_unlocked", scope: !1367, file: !1367, line: 101, type: !2441, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !2443)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!63, !63, !2373}
!2443 = !{!2439, !2444}
!2444 = !DILocalVariable(name: "__stream", arg: 2, scope: !2440, file: !1367, line: 101, type: !2373)
!2445 = !DILocation(line: 0, scope: !2440, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 238, column: 3, scope: !2360)
!2447 = !DILocation(line: 103, column: 10, scope: !2440, inlinedAt: !2446)
!2448 = !DILocation(line: 240, column: 3, scope: !2360)
!2449 = !DILocation(line: 241, column: 7, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2360, file: !676, line: 241, column: 7)
!2451 = !DILocation(line: 241, column: 7, scope: !2360)
!2452 = !DILocation(line: 242, column: 5, scope: !2450)
!2453 = !DILocation(line: 243, column: 1, scope: !2360)
!2454 = !DISubprogram(name: "__vfprintf_chk", scope: !1113, file: !1113, line: 96, type: !2455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!63, !2372, !63, !1117, !686}
!2457 = !DISubprogram(name: "strerror_r", scope: !1248, file: !1248, line: 444, type: !2458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!94, !63, !94, !97}
!2460 = !DISubprogram(name: "fcntl", scope: !2461, file: !2461, line: 149, type: !2462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!2461 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!63, !63, !63, null}
!2464 = distinct !DISubprogram(name: "error", scope: !676, file: !676, line: 285, type: !2465, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !2467)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{null, !63, !63, !100, null}
!2467 = !{!2468, !2469, !2470, !2471}
!2468 = !DILocalVariable(name: "status", arg: 1, scope: !2464, file: !676, line: 285, type: !63)
!2469 = !DILocalVariable(name: "errnum", arg: 2, scope: !2464, file: !676, line: 285, type: !63)
!2470 = !DILocalVariable(name: "message", arg: 3, scope: !2464, file: !676, line: 285, type: !100)
!2471 = !DILocalVariable(name: "ap", scope: !2464, file: !676, line: 287, type: !2472)
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1122, line: 52, baseType: !2473)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2474, line: 14, baseType: !2475)
!2474 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!2475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !690, baseType: !2476)
!2476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 192, elements: !45)
!2477 = !DILocation(line: 0, scope: !2464)
!2478 = !DILocation(line: 287, column: 3, scope: !2464)
!2479 = !DILocation(line: 287, column: 11, scope: !2464)
!2480 = !DILocation(line: 288, column: 3, scope: !2464)
!2481 = !DILocation(line: 289, column: 3, scope: !2464)
!2482 = !DILocation(line: 290, column: 3, scope: !2464)
!2483 = !DILocation(line: 291, column: 1, scope: !2464)
!2484 = !DILocation(line: 0, scope: !683)
!2485 = !DILocation(line: 302, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !683, file: !676, line: 302, column: 7)
!2487 = !DILocation(line: 302, column: 7, scope: !683)
!2488 = !DILocation(line: 307, column: 11, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !676, line: 307, column: 11)
!2490 = distinct !DILexicalBlock(scope: !2486, file: !676, line: 303, column: 5)
!2491 = !DILocation(line: 307, column: 27, scope: !2489)
!2492 = !DILocation(line: 308, column: 11, scope: !2489)
!2493 = !DILocation(line: 308, column: 28, scope: !2489)
!2494 = !DILocation(line: 308, column: 25, scope: !2489)
!2495 = !DILocation(line: 309, column: 15, scope: !2489)
!2496 = !DILocation(line: 309, column: 33, scope: !2489)
!2497 = !DILocation(line: 310, column: 19, scope: !2489)
!2498 = !DILocation(line: 311, column: 22, scope: !2489)
!2499 = !DILocation(line: 311, column: 56, scope: !2489)
!2500 = !DILocation(line: 307, column: 11, scope: !2490)
!2501 = !DILocation(line: 316, column: 21, scope: !2490)
!2502 = !DILocation(line: 317, column: 23, scope: !2490)
!2503 = !DILocation(line: 318, column: 5, scope: !2490)
!2504 = !DILocation(line: 327, column: 3, scope: !683)
!2505 = !DILocation(line: 331, column: 7, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !683, file: !676, line: 331, column: 7)
!2507 = !DILocation(line: 331, column: 7, scope: !683)
!2508 = !DILocation(line: 332, column: 5, scope: !2506)
!2509 = !DILocation(line: 338, column: 7, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2506, file: !676, line: 334, column: 5)
!2511 = !DILocation(line: 346, column: 3, scope: !683)
!2512 = !DILocation(line: 350, column: 3, scope: !683)
!2513 = !DILocation(line: 356, column: 1, scope: !683)
!2514 = distinct !DISubprogram(name: "error_at_line", scope: !676, file: !676, line: 359, type: !2515, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !2517)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{null, !63, !63, !100, !69, !100, null}
!2517 = !{!2518, !2519, !2520, !2521, !2522, !2523}
!2518 = !DILocalVariable(name: "status", arg: 1, scope: !2514, file: !676, line: 359, type: !63)
!2519 = !DILocalVariable(name: "errnum", arg: 2, scope: !2514, file: !676, line: 359, type: !63)
!2520 = !DILocalVariable(name: "file_name", arg: 3, scope: !2514, file: !676, line: 359, type: !100)
!2521 = !DILocalVariable(name: "line_number", arg: 4, scope: !2514, file: !676, line: 360, type: !69)
!2522 = !DILocalVariable(name: "message", arg: 5, scope: !2514, file: !676, line: 360, type: !100)
!2523 = !DILocalVariable(name: "ap", scope: !2514, file: !676, line: 362, type: !2472)
!2524 = !DILocation(line: 0, scope: !2514)
!2525 = !DILocation(line: 362, column: 3, scope: !2514)
!2526 = !DILocation(line: 362, column: 11, scope: !2514)
!2527 = !DILocation(line: 363, column: 3, scope: !2514)
!2528 = !DILocation(line: 364, column: 3, scope: !2514)
!2529 = !DILocation(line: 366, column: 3, scope: !2514)
!2530 = !DILocation(line: 367, column: 1, scope: !2514)
!2531 = distinct !DISubprogram(name: "fdadvise", scope: !972, file: !972, line: 25, type: !2532, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !2536)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{null, !63, !2534, !2534, !2535}
!2534 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1122, line: 63, baseType: !175)
!2535 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !426, line: 51, baseType: !425)
!2536 = !{!2537, !2538, !2539, !2540}
!2537 = !DILocalVariable(name: "fd", arg: 1, scope: !2531, file: !972, line: 25, type: !63)
!2538 = !DILocalVariable(name: "offset", arg: 2, scope: !2531, file: !972, line: 25, type: !2534)
!2539 = !DILocalVariable(name: "len", arg: 3, scope: !2531, file: !972, line: 25, type: !2534)
!2540 = !DILocalVariable(name: "advice", arg: 4, scope: !2531, file: !972, line: 25, type: !2535)
!2541 = !DILocation(line: 0, scope: !2531)
!2542 = !DILocation(line: 28, column: 3, scope: !2531)
!2543 = !DILocation(line: 30, column: 1, scope: !2531)
!2544 = !DISubprogram(name: "posix_fadvise", scope: !2461, file: !2461, line: 273, type: !2545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!63, !63, !2534, !2534, !63}
!2547 = distinct !DISubprogram(name: "fadvise", scope: !972, file: !972, line: 33, type: !2548, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !2584)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{null, !2550, !2535}
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2552)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2553)
!2553 = !{!2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2552, file: !153, line: 51, baseType: !63, size: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2552, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2552, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2552, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2552, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2552, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2552, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2552, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2552, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2552, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2552, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2552, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2552, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2552, file: !153, line: 70, baseType: !2568, size: 64, offset: 832)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2552, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2552, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2552, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2552, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2552, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2552, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2552, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2552, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2552, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2552, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2552, file: !153, line: 93, baseType: !2568, size: 64, offset: 1344)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2552, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2552, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2552, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2552, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2584 = !{!2585, !2586}
!2585 = !DILocalVariable(name: "fp", arg: 1, scope: !2547, file: !972, line: 33, type: !2550)
!2586 = !DILocalVariable(name: "advice", arg: 2, scope: !2547, file: !972, line: 33, type: !2535)
!2587 = !DILocation(line: 0, scope: !2547)
!2588 = !DILocation(line: 35, column: 7, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2547, file: !972, line: 35, column: 7)
!2590 = !DILocation(line: 35, column: 7, scope: !2547)
!2591 = !DILocation(line: 36, column: 15, scope: !2589)
!2592 = !DILocation(line: 0, scope: !2531, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 36, column: 5, scope: !2589)
!2594 = !DILocation(line: 28, column: 3, scope: !2531, inlinedAt: !2593)
!2595 = !DILocation(line: 36, column: 5, scope: !2589)
!2596 = !DILocation(line: 37, column: 1, scope: !2547)
!2597 = !DISubprogram(name: "fileno", scope: !1122, file: !1122, line: 809, type: !2598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!63, !2550}
!2600 = distinct !DISubprogram(name: "rpl_fclose", scope: !975, file: !975, line: 58, type: !2601, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !974, retainedNodes: !2637)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!63, !2603}
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2605)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2606)
!2606 = !{!2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2605, file: !153, line: 51, baseType: !63, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2605, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2605, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2605, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2605, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2605, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2605, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2605, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2605, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2605, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2605, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2605, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2605, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2605, file: !153, line: 70, baseType: !2621, size: 64, offset: 832)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2605, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2605, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2605, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2605, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2605, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2605, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2605, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2605, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2605, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2605, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2605, file: !153, line: 93, baseType: !2621, size: 64, offset: 1344)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2605, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2605, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2605, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2605, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2637 = !{!2638, !2639, !2640, !2641}
!2638 = !DILocalVariable(name: "fp", arg: 1, scope: !2600, file: !975, line: 58, type: !2603)
!2639 = !DILocalVariable(name: "saved_errno", scope: !2600, file: !975, line: 60, type: !63)
!2640 = !DILocalVariable(name: "fd", scope: !2600, file: !975, line: 63, type: !63)
!2641 = !DILocalVariable(name: "result", scope: !2600, file: !975, line: 74, type: !63)
!2642 = !DILocation(line: 0, scope: !2600)
!2643 = !DILocation(line: 63, column: 12, scope: !2600)
!2644 = !DILocation(line: 64, column: 10, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2600, file: !975, line: 64, column: 7)
!2646 = !DILocation(line: 64, column: 7, scope: !2600)
!2647 = !DILocation(line: 65, column: 12, scope: !2645)
!2648 = !DILocation(line: 65, column: 5, scope: !2645)
!2649 = !DILocation(line: 70, column: 9, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2600, file: !975, line: 70, column: 7)
!2651 = !DILocation(line: 70, column: 23, scope: !2650)
!2652 = !DILocation(line: 70, column: 33, scope: !2650)
!2653 = !DILocation(line: 70, column: 26, scope: !2650)
!2654 = !DILocation(line: 70, column: 59, scope: !2650)
!2655 = !DILocation(line: 71, column: 7, scope: !2650)
!2656 = !DILocation(line: 71, column: 10, scope: !2650)
!2657 = !DILocation(line: 70, column: 7, scope: !2600)
!2658 = !DILocation(line: 100, column: 12, scope: !2600)
!2659 = !DILocation(line: 105, column: 7, scope: !2600)
!2660 = !DILocation(line: 72, column: 19, scope: !2650)
!2661 = !DILocation(line: 105, column: 19, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2600, file: !975, line: 105, column: 7)
!2663 = !DILocation(line: 107, column: 13, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2662, file: !975, line: 106, column: 5)
!2665 = !DILocation(line: 109, column: 5, scope: !2664)
!2666 = !DILocation(line: 112, column: 1, scope: !2600)
!2667 = !DISubprogram(name: "fclose", scope: !1122, file: !1122, line: 178, type: !2601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!2668 = !DISubprogram(name: "__freading", scope: !2669, file: !2669, line: 51, type: !2601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!2669 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2670 = !DISubprogram(name: "lseek", scope: !2326, file: !2326, line: 339, type: !2671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!175, !63, !175, !63}
!2673 = distinct !DISubprogram(name: "rpl_fflush", scope: !977, file: !977, line: 130, type: !2674, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !2710)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!63, !2676}
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2678)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2679)
!2679 = !{!2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2678, file: !153, line: 51, baseType: !63, size: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2678, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2678, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2678, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2678, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2678, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2678, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2678, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2678, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2678, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2678, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2678, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2678, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2678, file: !153, line: 70, baseType: !2694, size: 64, offset: 832)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2678, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2678, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2678, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2678, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2678, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2678, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2678, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2678, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2678, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2678, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2678, file: !153, line: 93, baseType: !2694, size: 64, offset: 1344)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2678, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2678, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2678, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2678, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2710 = !{!2711}
!2711 = !DILocalVariable(name: "stream", arg: 1, scope: !2673, file: !977, line: 130, type: !2676)
!2712 = !DILocation(line: 0, scope: !2673)
!2713 = !DILocation(line: 151, column: 14, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2673, file: !977, line: 151, column: 7)
!2715 = !DILocation(line: 151, column: 22, scope: !2714)
!2716 = !DILocation(line: 151, column: 27, scope: !2714)
!2717 = !DILocation(line: 151, column: 7, scope: !2673)
!2718 = !DILocation(line: 152, column: 12, scope: !2714)
!2719 = !DILocation(line: 152, column: 5, scope: !2714)
!2720 = !DILocalVariable(name: "fp", arg: 1, scope: !2721, file: !977, line: 42, type: !2676)
!2721 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !977, file: !977, line: 42, type: !2722, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !2724)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{null, !2676}
!2724 = !{!2720}
!2725 = !DILocation(line: 0, scope: !2721, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 157, column: 3, scope: !2673)
!2727 = !DILocation(line: 44, column: 12, scope: !2728, inlinedAt: !2726)
!2728 = distinct !DILexicalBlock(scope: !2721, file: !977, line: 44, column: 7)
!2729 = !DILocation(line: 44, column: 19, scope: !2728, inlinedAt: !2726)
!2730 = !DILocation(line: 44, column: 7, scope: !2721, inlinedAt: !2726)
!2731 = !DILocation(line: 46, column: 5, scope: !2728, inlinedAt: !2726)
!2732 = !DILocation(line: 159, column: 10, scope: !2673)
!2733 = !DILocation(line: 159, column: 3, scope: !2673)
!2734 = !DILocation(line: 236, column: 1, scope: !2673)
!2735 = !DISubprogram(name: "fflush", scope: !1122, file: !1122, line: 230, type: !2674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!2736 = distinct !DISubprogram(name: "fpurge", scope: !980, file: !980, line: 32, type: !2737, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !979, retainedNodes: !2773)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!63, !2739}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2741)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2742)
!2742 = !{!2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2741, file: !153, line: 51, baseType: !63, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2741, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2741, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2741, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2741, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2741, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2741, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2741, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2741, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2741, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2741, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2741, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2741, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2741, file: !153, line: 70, baseType: !2757, size: 64, offset: 832)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2741, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2741, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2741, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2741, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2741, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2741, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2741, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2741, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2741, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2741, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2741, file: !153, line: 93, baseType: !2757, size: 64, offset: 1344)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2741, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2741, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2741, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2741, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2773 = !{!2774}
!2774 = !DILocalVariable(name: "fp", arg: 1, scope: !2736, file: !980, line: 32, type: !2739)
!2775 = !DILocation(line: 0, scope: !2736)
!2776 = !DILocation(line: 36, column: 3, scope: !2736)
!2777 = !DILocation(line: 38, column: 3, scope: !2736)
!2778 = !DISubprogram(name: "__fpurge", scope: !2669, file: !2669, line: 72, type: !2779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{null, !2739}
!2781 = distinct !DISubprogram(name: "rpl_fseeko", scope: !982, file: !982, line: 28, type: !2782, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !981, retainedNodes: !2818)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!63, !2784, !2534, !63}
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2786)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2787)
!2787 = !{!2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2786, file: !153, line: 51, baseType: !63, size: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2786, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2786, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2786, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2786, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2786, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2786, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2786, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2786, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2786, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2786, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2786, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2786, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2786, file: !153, line: 70, baseType: !2802, size: 64, offset: 832)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2786, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2786, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2786, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2786, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2786, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2786, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2786, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2786, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2786, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2786, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2786, file: !153, line: 93, baseType: !2802, size: 64, offset: 1344)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2786, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2786, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2786, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2786, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2818 = !{!2819, !2820, !2821, !2822}
!2819 = !DILocalVariable(name: "fp", arg: 1, scope: !2781, file: !982, line: 28, type: !2784)
!2820 = !DILocalVariable(name: "offset", arg: 2, scope: !2781, file: !982, line: 28, type: !2534)
!2821 = !DILocalVariable(name: "whence", arg: 3, scope: !2781, file: !982, line: 28, type: !63)
!2822 = !DILocalVariable(name: "pos", scope: !2823, file: !982, line: 123, type: !2534)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !982, line: 119, column: 5)
!2824 = distinct !DILexicalBlock(scope: !2781, file: !982, line: 55, column: 7)
!2825 = !DILocation(line: 0, scope: !2781)
!2826 = !DILocation(line: 55, column: 12, scope: !2824)
!2827 = !{!1375, !1058, i64 16}
!2828 = !DILocation(line: 55, column: 33, scope: !2824)
!2829 = !{!1375, !1058, i64 8}
!2830 = !DILocation(line: 55, column: 25, scope: !2824)
!2831 = !DILocation(line: 56, column: 7, scope: !2824)
!2832 = !DILocation(line: 56, column: 15, scope: !2824)
!2833 = !DILocation(line: 56, column: 37, scope: !2824)
!2834 = !{!1375, !1058, i64 32}
!2835 = !DILocation(line: 56, column: 29, scope: !2824)
!2836 = !DILocation(line: 57, column: 7, scope: !2824)
!2837 = !DILocation(line: 57, column: 15, scope: !2824)
!2838 = !{!1375, !1058, i64 72}
!2839 = !DILocation(line: 57, column: 29, scope: !2824)
!2840 = !DILocation(line: 55, column: 7, scope: !2781)
!2841 = !DILocation(line: 123, column: 26, scope: !2823)
!2842 = !DILocation(line: 123, column: 19, scope: !2823)
!2843 = !DILocation(line: 0, scope: !2823)
!2844 = !DILocation(line: 124, column: 15, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2823, file: !982, line: 124, column: 11)
!2846 = !DILocation(line: 124, column: 11, scope: !2823)
!2847 = !DILocation(line: 135, column: 19, scope: !2823)
!2848 = !DILocation(line: 136, column: 12, scope: !2823)
!2849 = !DILocation(line: 136, column: 20, scope: !2823)
!2850 = !{!1375, !1348, i64 144}
!2851 = !DILocation(line: 167, column: 7, scope: !2823)
!2852 = !DILocation(line: 169, column: 10, scope: !2781)
!2853 = !DILocation(line: 169, column: 3, scope: !2781)
!2854 = !DILocation(line: 170, column: 1, scope: !2781)
!2855 = !DISubprogram(name: "fseeko", scope: !1122, file: !1122, line: 736, type: !2856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!63, !2784, !175, !63}
!2858 = distinct !DISubprogram(name: "getprogname", scope: !984, file: !984, line: 54, type: !2859, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !983, retainedNodes: !1066)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!100}
!2861 = !DILocation(line: 58, column: 10, scope: !2858)
!2862 = !DILocation(line: 58, column: 3, scope: !2858)
!2863 = distinct !DISubprogram(name: "set_program_name", scope: !723, file: !723, line: 37, type: !1078, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !2864)
!2864 = !{!2865, !2866, !2867}
!2865 = !DILocalVariable(name: "argv0", arg: 1, scope: !2863, file: !723, line: 37, type: !100)
!2866 = !DILocalVariable(name: "slash", scope: !2863, file: !723, line: 44, type: !100)
!2867 = !DILocalVariable(name: "base", scope: !2863, file: !723, line: 45, type: !100)
!2868 = !DILocation(line: 0, scope: !2863)
!2869 = !DILocation(line: 44, column: 23, scope: !2863)
!2870 = !DILocation(line: 45, column: 22, scope: !2863)
!2871 = !DILocation(line: 46, column: 17, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2863, file: !723, line: 46, column: 7)
!2873 = !DILocation(line: 46, column: 9, scope: !2872)
!2874 = !DILocation(line: 46, column: 25, scope: !2872)
!2875 = !DILocation(line: 46, column: 40, scope: !2872)
!2876 = !DILocalVariable(name: "__s1", arg: 1, scope: !2877, file: !1140, line: 974, type: !1276)
!2877 = distinct !DISubprogram(name: "memeq", scope: !1140, file: !1140, line: 974, type: !2878, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !2880)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!103, !1276, !1276, !97}
!2880 = !{!2876, !2881, !2882}
!2881 = !DILocalVariable(name: "__s2", arg: 2, scope: !2877, file: !1140, line: 974, type: !1276)
!2882 = !DILocalVariable(name: "__n", arg: 3, scope: !2877, file: !1140, line: 974, type: !97)
!2883 = !DILocation(line: 0, scope: !2877, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 46, column: 28, scope: !2872)
!2885 = !DILocation(line: 976, column: 11, scope: !2877, inlinedAt: !2884)
!2886 = !DILocation(line: 976, column: 10, scope: !2877, inlinedAt: !2884)
!2887 = !DILocation(line: 46, column: 7, scope: !2863)
!2888 = !DILocation(line: 49, column: 11, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !723, line: 49, column: 11)
!2890 = distinct !DILexicalBlock(scope: !2872, file: !723, line: 47, column: 5)
!2891 = !DILocation(line: 49, column: 36, scope: !2889)
!2892 = !DILocation(line: 49, column: 11, scope: !2890)
!2893 = !DILocation(line: 65, column: 16, scope: !2863)
!2894 = !DILocation(line: 71, column: 27, scope: !2863)
!2895 = !DILocation(line: 74, column: 33, scope: !2863)
!2896 = !DILocation(line: 76, column: 1, scope: !2863)
!2897 = !DISubprogram(name: "strrchr", scope: !1248, file: !1248, line: 273, type: !1263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!2898 = !DILocation(line: 0, scope: !732)
!2899 = !DILocation(line: 40, column: 29, scope: !732)
!2900 = !DILocation(line: 41, column: 19, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !732, file: !733, line: 41, column: 7)
!2902 = !DILocation(line: 41, column: 7, scope: !732)
!2903 = !DILocation(line: 47, column: 3, scope: !732)
!2904 = !DILocation(line: 48, column: 3, scope: !732)
!2905 = !DILocation(line: 48, column: 13, scope: !732)
!2906 = !DILocalVariable(name: "ps", arg: 1, scope: !2907, file: !2908, line: 1135, type: !2911)
!2907 = distinct !DISubprogram(name: "mbszero", scope: !2908, file: !2908, line: 1135, type: !2909, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !2912)
!2908 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2909 = !DISubroutineType(types: !2910)
!2910 = !{null, !2911}
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!2912 = !{!2906}
!2913 = !DILocation(line: 0, scope: !2907, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 48, column: 18, scope: !732)
!2915 = !DILocalVariable(name: "__dest", arg: 1, scope: !2916, file: !1385, line: 57, type: !95)
!2916 = distinct !DISubprogram(name: "memset", scope: !1385, file: !1385, line: 57, type: !2917, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !2919)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!95, !95, !63, !97}
!2919 = !{!2915, !2920, !2921}
!2920 = !DILocalVariable(name: "__ch", arg: 2, scope: !2916, file: !1385, line: 57, type: !63)
!2921 = !DILocalVariable(name: "__len", arg: 3, scope: !2916, file: !1385, line: 57, type: !97)
!2922 = !DILocation(line: 0, scope: !2916, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 1137, column: 3, scope: !2907, inlinedAt: !2914)
!2924 = !DILocation(line: 59, column: 10, scope: !2916, inlinedAt: !2923)
!2925 = !DILocation(line: 49, column: 7, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !732, file: !733, line: 49, column: 7)
!2927 = !DILocation(line: 49, column: 39, scope: !2926)
!2928 = !DILocation(line: 49, column: 44, scope: !2926)
!2929 = !DILocation(line: 54, column: 1, scope: !732)
!2930 = distinct !DISubprogram(name: "clone_quoting_options", scope: !759, file: !759, line: 113, type: !2931, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !2934)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!2933, !2933}
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!2934 = !{!2935, !2936, !2937}
!2935 = !DILocalVariable(name: "o", arg: 1, scope: !2930, file: !759, line: 113, type: !2933)
!2936 = !DILocalVariable(name: "saved_errno", scope: !2930, file: !759, line: 115, type: !63)
!2937 = !DILocalVariable(name: "p", scope: !2930, file: !759, line: 116, type: !2933)
!2938 = !DILocation(line: 0, scope: !2930)
!2939 = !DILocation(line: 115, column: 21, scope: !2930)
!2940 = !DILocation(line: 116, column: 40, scope: !2930)
!2941 = !DILocation(line: 116, column: 31, scope: !2930)
!2942 = !DILocation(line: 118, column: 9, scope: !2930)
!2943 = !DILocation(line: 119, column: 3, scope: !2930)
!2944 = distinct !DISubprogram(name: "get_quoting_style", scope: !759, file: !759, line: 124, type: !2945, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !2949)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!411, !2947}
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!2949 = !{!2950}
!2950 = !DILocalVariable(name: "o", arg: 1, scope: !2944, file: !759, line: 124, type: !2947)
!2951 = !DILocation(line: 0, scope: !2944)
!2952 = !DILocation(line: 126, column: 11, scope: !2944)
!2953 = !DILocation(line: 126, column: 46, scope: !2944)
!2954 = !{!2955, !1059, i64 0}
!2955 = !{!"quoting_options", !1059, i64 0, !1128, i64 4, !1059, i64 8, !1058, i64 40, !1058, i64 48}
!2956 = !DILocation(line: 126, column: 3, scope: !2944)
!2957 = distinct !DISubprogram(name: "set_quoting_style", scope: !759, file: !759, line: 132, type: !2958, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !2960)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{null, !2933, !411}
!2960 = !{!2961, !2962}
!2961 = !DILocalVariable(name: "o", arg: 1, scope: !2957, file: !759, line: 132, type: !2933)
!2962 = !DILocalVariable(name: "s", arg: 2, scope: !2957, file: !759, line: 132, type: !411)
!2963 = !DILocation(line: 0, scope: !2957)
!2964 = !DILocation(line: 134, column: 4, scope: !2957)
!2965 = !DILocation(line: 134, column: 45, scope: !2957)
!2966 = !DILocation(line: 135, column: 1, scope: !2957)
!2967 = distinct !DISubprogram(name: "set_char_quoting", scope: !759, file: !759, line: 143, type: !2968, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!63, !2933, !4, !63}
!2970 = !{!2971, !2972, !2973, !2974, !2975, !2977, !2978}
!2971 = !DILocalVariable(name: "o", arg: 1, scope: !2967, file: !759, line: 143, type: !2933)
!2972 = !DILocalVariable(name: "c", arg: 2, scope: !2967, file: !759, line: 143, type: !4)
!2973 = !DILocalVariable(name: "i", arg: 3, scope: !2967, file: !759, line: 143, type: !63)
!2974 = !DILocalVariable(name: "uc", scope: !2967, file: !759, line: 145, type: !102)
!2975 = !DILocalVariable(name: "p", scope: !2967, file: !759, line: 146, type: !2976)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2977 = !DILocalVariable(name: "shift", scope: !2967, file: !759, line: 148, type: !63)
!2978 = !DILocalVariable(name: "r", scope: !2967, file: !759, line: 149, type: !69)
!2979 = !DILocation(line: 0, scope: !2967)
!2980 = !DILocation(line: 147, column: 6, scope: !2967)
!2981 = !DILocation(line: 147, column: 41, scope: !2967)
!2982 = !DILocation(line: 147, column: 62, scope: !2967)
!2983 = !DILocation(line: 147, column: 57, scope: !2967)
!2984 = !DILocation(line: 148, column: 15, scope: !2967)
!2985 = !DILocation(line: 149, column: 21, scope: !2967)
!2986 = !DILocation(line: 149, column: 24, scope: !2967)
!2987 = !DILocation(line: 149, column: 34, scope: !2967)
!2988 = !DILocation(line: 150, column: 19, scope: !2967)
!2989 = !DILocation(line: 150, column: 24, scope: !2967)
!2990 = !DILocation(line: 150, column: 6, scope: !2967)
!2991 = !DILocation(line: 151, column: 3, scope: !2967)
!2992 = distinct !DISubprogram(name: "set_quoting_flags", scope: !759, file: !759, line: 159, type: !2993, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !2995)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!63, !2933, !63}
!2995 = !{!2996, !2997, !2998}
!2996 = !DILocalVariable(name: "o", arg: 1, scope: !2992, file: !759, line: 159, type: !2933)
!2997 = !DILocalVariable(name: "i", arg: 2, scope: !2992, file: !759, line: 159, type: !63)
!2998 = !DILocalVariable(name: "r", scope: !2992, file: !759, line: 163, type: !63)
!2999 = !DILocation(line: 0, scope: !2992)
!3000 = !DILocation(line: 161, column: 8, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2992, file: !759, line: 161, column: 7)
!3002 = !DILocation(line: 161, column: 7, scope: !2992)
!3003 = !DILocation(line: 163, column: 14, scope: !2992)
!3004 = !{!2955, !1128, i64 4}
!3005 = !DILocation(line: 164, column: 12, scope: !2992)
!3006 = !DILocation(line: 165, column: 3, scope: !2992)
!3007 = distinct !DISubprogram(name: "set_custom_quoting", scope: !759, file: !759, line: 169, type: !3008, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3010)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{null, !2933, !100, !100}
!3010 = !{!3011, !3012, !3013}
!3011 = !DILocalVariable(name: "o", arg: 1, scope: !3007, file: !759, line: 169, type: !2933)
!3012 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3007, file: !759, line: 170, type: !100)
!3013 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3007, file: !759, line: 170, type: !100)
!3014 = !DILocation(line: 0, scope: !3007)
!3015 = !DILocation(line: 172, column: 8, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3007, file: !759, line: 172, column: 7)
!3017 = !DILocation(line: 172, column: 7, scope: !3007)
!3018 = !DILocation(line: 174, column: 12, scope: !3007)
!3019 = !DILocation(line: 175, column: 8, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3007, file: !759, line: 175, column: 7)
!3021 = !DILocation(line: 175, column: 19, scope: !3020)
!3022 = !DILocation(line: 176, column: 5, scope: !3020)
!3023 = !DILocation(line: 177, column: 6, scope: !3007)
!3024 = !DILocation(line: 177, column: 17, scope: !3007)
!3025 = !{!2955, !1058, i64 40}
!3026 = !DILocation(line: 178, column: 6, scope: !3007)
!3027 = !DILocation(line: 178, column: 18, scope: !3007)
!3028 = !{!2955, !1058, i64 48}
!3029 = !DILocation(line: 179, column: 1, scope: !3007)
!3030 = !DISubprogram(name: "abort", scope: !1252, file: !1252, line: 598, type: !342, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!3031 = distinct !DISubprogram(name: "quotearg_buffer", scope: !759, file: !759, line: 774, type: !3032, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3034)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!97, !94, !97, !100, !97, !2947}
!3034 = !{!3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042}
!3035 = !DILocalVariable(name: "buffer", arg: 1, scope: !3031, file: !759, line: 774, type: !94)
!3036 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3031, file: !759, line: 774, type: !97)
!3037 = !DILocalVariable(name: "arg", arg: 3, scope: !3031, file: !759, line: 775, type: !100)
!3038 = !DILocalVariable(name: "argsize", arg: 4, scope: !3031, file: !759, line: 775, type: !97)
!3039 = !DILocalVariable(name: "o", arg: 5, scope: !3031, file: !759, line: 776, type: !2947)
!3040 = !DILocalVariable(name: "p", scope: !3031, file: !759, line: 778, type: !2947)
!3041 = !DILocalVariable(name: "saved_errno", scope: !3031, file: !759, line: 779, type: !63)
!3042 = !DILocalVariable(name: "r", scope: !3031, file: !759, line: 780, type: !97)
!3043 = !DILocation(line: 0, scope: !3031)
!3044 = !DILocation(line: 778, column: 37, scope: !3031)
!3045 = !DILocation(line: 779, column: 21, scope: !3031)
!3046 = !DILocation(line: 781, column: 43, scope: !3031)
!3047 = !DILocation(line: 781, column: 53, scope: !3031)
!3048 = !DILocation(line: 781, column: 63, scope: !3031)
!3049 = !DILocation(line: 782, column: 43, scope: !3031)
!3050 = !DILocation(line: 782, column: 58, scope: !3031)
!3051 = !DILocation(line: 780, column: 14, scope: !3031)
!3052 = !DILocation(line: 783, column: 9, scope: !3031)
!3053 = !DILocation(line: 784, column: 3, scope: !3031)
!3054 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !759, file: !759, line: 251, type: !3055, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3059)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!97, !94, !97, !100, !97, !411, !63, !3057, !100, !100}
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!3059 = !{!3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3084, !3086, !3089, !3090, !3091, !3092, !3095, !3096, !3099, !3103, !3104, !3112, !3115, !3116, !3118, !3119, !3120, !3121}
!3060 = !DILocalVariable(name: "buffer", arg: 1, scope: !3054, file: !759, line: 251, type: !94)
!3061 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3054, file: !759, line: 251, type: !97)
!3062 = !DILocalVariable(name: "arg", arg: 3, scope: !3054, file: !759, line: 252, type: !100)
!3063 = !DILocalVariable(name: "argsize", arg: 4, scope: !3054, file: !759, line: 252, type: !97)
!3064 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3054, file: !759, line: 253, type: !411)
!3065 = !DILocalVariable(name: "flags", arg: 6, scope: !3054, file: !759, line: 253, type: !63)
!3066 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3054, file: !759, line: 254, type: !3057)
!3067 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3054, file: !759, line: 255, type: !100)
!3068 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3054, file: !759, line: 256, type: !100)
!3069 = !DILocalVariable(name: "unibyte_locale", scope: !3054, file: !759, line: 258, type: !103)
!3070 = !DILocalVariable(name: "len", scope: !3054, file: !759, line: 260, type: !97)
!3071 = !DILocalVariable(name: "orig_buffersize", scope: !3054, file: !759, line: 261, type: !97)
!3072 = !DILocalVariable(name: "quote_string", scope: !3054, file: !759, line: 262, type: !100)
!3073 = !DILocalVariable(name: "quote_string_len", scope: !3054, file: !759, line: 263, type: !97)
!3074 = !DILocalVariable(name: "backslash_escapes", scope: !3054, file: !759, line: 264, type: !103)
!3075 = !DILocalVariable(name: "elide_outer_quotes", scope: !3054, file: !759, line: 265, type: !103)
!3076 = !DILocalVariable(name: "encountered_single_quote", scope: !3054, file: !759, line: 266, type: !103)
!3077 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3054, file: !759, line: 267, type: !103)
!3078 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3054, file: !759, line: 309, type: !103)
!3079 = !DILocalVariable(name: "lq", scope: !3080, file: !759, line: 361, type: !100)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !759, line: 361, column: 11)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !759, line: 360, column: 13)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !759, line: 333, column: 7)
!3083 = distinct !DILexicalBlock(scope: !3054, file: !759, line: 312, column: 5)
!3084 = !DILocalVariable(name: "i", scope: !3085, file: !759, line: 395, type: !97)
!3085 = distinct !DILexicalBlock(scope: !3054, file: !759, line: 395, column: 3)
!3086 = !DILocalVariable(name: "is_right_quote", scope: !3087, file: !759, line: 397, type: !103)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !759, line: 396, column: 5)
!3088 = distinct !DILexicalBlock(scope: !3085, file: !759, line: 395, column: 3)
!3089 = !DILocalVariable(name: "escaping", scope: !3087, file: !759, line: 398, type: !103)
!3090 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3087, file: !759, line: 399, type: !103)
!3091 = !DILocalVariable(name: "c", scope: !3087, file: !759, line: 417, type: !102)
!3092 = !DILocalVariable(name: "m", scope: !3093, file: !759, line: 598, type: !97)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !759, line: 596, column: 11)
!3094 = distinct !DILexicalBlock(scope: !3087, file: !759, line: 419, column: 9)
!3095 = !DILocalVariable(name: "printable", scope: !3093, file: !759, line: 600, type: !103)
!3096 = !DILocalVariable(name: "mbs", scope: !3097, file: !759, line: 609, type: !832)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !759, line: 608, column: 15)
!3098 = distinct !DILexicalBlock(scope: !3093, file: !759, line: 602, column: 17)
!3099 = !DILocalVariable(name: "w", scope: !3100, file: !759, line: 618, type: !365)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !759, line: 617, column: 19)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !759, line: 616, column: 17)
!3102 = distinct !DILexicalBlock(scope: !3097, file: !759, line: 616, column: 17)
!3103 = !DILocalVariable(name: "bytes", scope: !3100, file: !759, line: 619, type: !97)
!3104 = !DILocalVariable(name: "j", scope: !3105, file: !759, line: 648, type: !97)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !759, line: 648, column: 29)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !759, line: 647, column: 27)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !759, line: 645, column: 29)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !759, line: 636, column: 23)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !759, line: 628, column: 30)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !759, line: 623, column: 30)
!3111 = distinct !DILexicalBlock(scope: !3100, file: !759, line: 621, column: 25)
!3112 = !DILocalVariable(name: "ilim", scope: !3113, file: !759, line: 674, type: !97)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !759, line: 671, column: 15)
!3114 = distinct !DILexicalBlock(scope: !3093, file: !759, line: 670, column: 17)
!3115 = !DILabel(scope: !3054, name: "process_input", file: !759, line: 308)
!3116 = !DILabel(scope: !3117, name: "c_and_shell_escape", file: !759, line: 502)
!3117 = distinct !DILexicalBlock(scope: !3094, file: !759, line: 478, column: 9)
!3118 = !DILabel(scope: !3117, name: "c_escape", file: !759, line: 507)
!3119 = !DILabel(scope: !3087, name: "store_escape", file: !759, line: 709)
!3120 = !DILabel(scope: !3087, name: "store_c", file: !759, line: 712)
!3121 = !DILabel(scope: !3054, name: "force_outer_quoting_style", file: !759, line: 753)
!3122 = !DILocation(line: 0, scope: !3054)
!3123 = !DILocation(line: 258, column: 25, scope: !3054)
!3124 = !DILocation(line: 258, column: 36, scope: !3054)
!3125 = !DILocation(line: 265, column: 8, scope: !3054)
!3126 = !DILocation(line: 267, column: 3, scope: !3054)
!3127 = !DILocation(line: 261, column: 10, scope: !3054)
!3128 = !DILocation(line: 262, column: 15, scope: !3054)
!3129 = !DILocation(line: 263, column: 10, scope: !3054)
!3130 = !DILocation(line: 264, column: 8, scope: !3054)
!3131 = !DILocation(line: 266, column: 8, scope: !3054)
!3132 = !DILocation(line: 267, column: 8, scope: !3054)
!3133 = !DILocation(line: 308, column: 2, scope: !3054)
!3134 = !DILocation(line: 311, column: 3, scope: !3054)
!3135 = !DILocation(line: 318, column: 11, scope: !3083)
!3136 = !DILocation(line: 318, column: 12, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3083, file: !759, line: 318, column: 11)
!3138 = !DILocation(line: 319, column: 9, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !759, line: 319, column: 9)
!3140 = distinct !DILexicalBlock(scope: !3137, file: !759, line: 319, column: 9)
!3141 = !DILocation(line: 319, column: 9, scope: !3140)
!3142 = !DILocation(line: 0, scope: !823, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 357, column: 26, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !759, line: 335, column: 11)
!3145 = distinct !DILexicalBlock(scope: !3082, file: !759, line: 334, column: 13)
!3146 = !DILocation(line: 199, column: 29, scope: !823, inlinedAt: !3143)
!3147 = !DILocation(line: 201, column: 19, scope: !3148, inlinedAt: !3143)
!3148 = distinct !DILexicalBlock(scope: !823, file: !759, line: 201, column: 7)
!3149 = !DILocation(line: 201, column: 7, scope: !823, inlinedAt: !3143)
!3150 = !DILocation(line: 229, column: 3, scope: !823, inlinedAt: !3143)
!3151 = !DILocation(line: 230, column: 3, scope: !823, inlinedAt: !3143)
!3152 = !DILocation(line: 230, column: 13, scope: !823, inlinedAt: !3143)
!3153 = !DILocalVariable(name: "ps", arg: 1, scope: !3154, file: !2908, line: 1135, type: !3157)
!3154 = distinct !DISubprogram(name: "mbszero", scope: !2908, file: !2908, line: 1135, type: !3155, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3158)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{null, !3157}
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!3158 = !{!3153}
!3159 = !DILocation(line: 0, scope: !3154, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 230, column: 18, scope: !823, inlinedAt: !3143)
!3161 = !DILocalVariable(name: "__dest", arg: 1, scope: !3162, file: !1385, line: 57, type: !95)
!3162 = distinct !DISubprogram(name: "memset", scope: !1385, file: !1385, line: 57, type: !2917, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3163)
!3163 = !{!3161, !3164, !3165}
!3164 = !DILocalVariable(name: "__ch", arg: 2, scope: !3162, file: !1385, line: 57, type: !63)
!3165 = !DILocalVariable(name: "__len", arg: 3, scope: !3162, file: !1385, line: 57, type: !97)
!3166 = !DILocation(line: 0, scope: !3162, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 1137, column: 3, scope: !3154, inlinedAt: !3160)
!3168 = !DILocation(line: 59, column: 10, scope: !3162, inlinedAt: !3167)
!3169 = !DILocation(line: 231, column: 7, scope: !3170, inlinedAt: !3143)
!3170 = distinct !DILexicalBlock(scope: !823, file: !759, line: 231, column: 7)
!3171 = !DILocation(line: 231, column: 40, scope: !3170, inlinedAt: !3143)
!3172 = !DILocation(line: 231, column: 45, scope: !3170, inlinedAt: !3143)
!3173 = !DILocation(line: 235, column: 1, scope: !823, inlinedAt: !3143)
!3174 = !DILocation(line: 0, scope: !823, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 358, column: 27, scope: !3144)
!3176 = !DILocation(line: 199, column: 29, scope: !823, inlinedAt: !3175)
!3177 = !DILocation(line: 201, column: 19, scope: !3148, inlinedAt: !3175)
!3178 = !DILocation(line: 201, column: 7, scope: !823, inlinedAt: !3175)
!3179 = !DILocation(line: 229, column: 3, scope: !823, inlinedAt: !3175)
!3180 = !DILocation(line: 230, column: 3, scope: !823, inlinedAt: !3175)
!3181 = !DILocation(line: 230, column: 13, scope: !823, inlinedAt: !3175)
!3182 = !DILocation(line: 0, scope: !3154, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 230, column: 18, scope: !823, inlinedAt: !3175)
!3184 = !DILocation(line: 0, scope: !3162, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 1137, column: 3, scope: !3154, inlinedAt: !3183)
!3186 = !DILocation(line: 59, column: 10, scope: !3162, inlinedAt: !3185)
!3187 = !DILocation(line: 231, column: 7, scope: !3170, inlinedAt: !3175)
!3188 = !DILocation(line: 231, column: 40, scope: !3170, inlinedAt: !3175)
!3189 = !DILocation(line: 231, column: 45, scope: !3170, inlinedAt: !3175)
!3190 = !DILocation(line: 235, column: 1, scope: !823, inlinedAt: !3175)
!3191 = !DILocation(line: 360, column: 14, scope: !3081)
!3192 = !DILocation(line: 360, column: 13, scope: !3082)
!3193 = !DILocation(line: 0, scope: !3080)
!3194 = !DILocation(line: 361, column: 45, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3080, file: !759, line: 361, column: 11)
!3196 = !DILocation(line: 361, column: 11, scope: !3080)
!3197 = !DILocation(line: 362, column: 13, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !759, line: 362, column: 13)
!3199 = distinct !DILexicalBlock(scope: !3195, file: !759, line: 362, column: 13)
!3200 = !DILocation(line: 362, column: 13, scope: !3199)
!3201 = !DILocation(line: 361, column: 52, scope: !3195)
!3202 = distinct !{!3202, !3196, !3203, !1174}
!3203 = !DILocation(line: 362, column: 13, scope: !3080)
!3204 = !DILocation(line: 260, column: 10, scope: !3054)
!3205 = !DILocation(line: 365, column: 28, scope: !3082)
!3206 = !DILocation(line: 367, column: 7, scope: !3083)
!3207 = !DILocation(line: 370, column: 7, scope: !3083)
!3208 = !DILocation(line: 373, column: 7, scope: !3083)
!3209 = !DILocation(line: 376, column: 12, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3083, file: !759, line: 376, column: 11)
!3211 = !DILocation(line: 376, column: 11, scope: !3083)
!3212 = !DILocation(line: 381, column: 12, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3083, file: !759, line: 381, column: 11)
!3214 = !DILocation(line: 381, column: 11, scope: !3083)
!3215 = !DILocation(line: 382, column: 9, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !759, line: 382, column: 9)
!3217 = distinct !DILexicalBlock(scope: !3213, file: !759, line: 382, column: 9)
!3218 = !DILocation(line: 382, column: 9, scope: !3217)
!3219 = !DILocation(line: 389, column: 7, scope: !3083)
!3220 = !DILocation(line: 392, column: 7, scope: !3083)
!3221 = !DILocation(line: 0, scope: !3085)
!3222 = !DILocation(line: 395, column: 8, scope: !3085)
!3223 = !DILocation(line: 309, column: 8, scope: !3054)
!3224 = !DILocation(line: 395, scope: !3085)
!3225 = !DILocation(line: 395, column: 34, scope: !3088)
!3226 = !DILocation(line: 395, column: 26, scope: !3088)
!3227 = !DILocation(line: 395, column: 48, scope: !3088)
!3228 = !DILocation(line: 395, column: 55, scope: !3088)
!3229 = !DILocation(line: 395, column: 3, scope: !3085)
!3230 = !DILocation(line: 395, column: 67, scope: !3088)
!3231 = !DILocation(line: 0, scope: !3087)
!3232 = !DILocation(line: 402, column: 11, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3087, file: !759, line: 401, column: 11)
!3234 = !DILocation(line: 404, column: 17, scope: !3233)
!3235 = !DILocation(line: 405, column: 39, scope: !3233)
!3236 = !DILocation(line: 409, column: 32, scope: !3233)
!3237 = !DILocation(line: 405, column: 19, scope: !3233)
!3238 = !DILocation(line: 405, column: 15, scope: !3233)
!3239 = !DILocation(line: 410, column: 11, scope: !3233)
!3240 = !DILocation(line: 410, column: 25, scope: !3233)
!3241 = !DILocalVariable(name: "__s1", arg: 1, scope: !3242, file: !1140, line: 974, type: !1276)
!3242 = distinct !DISubprogram(name: "memeq", scope: !1140, file: !1140, line: 974, type: !2878, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3243)
!3243 = !{!3241, !3244, !3245}
!3244 = !DILocalVariable(name: "__s2", arg: 2, scope: !3242, file: !1140, line: 974, type: !1276)
!3245 = !DILocalVariable(name: "__n", arg: 3, scope: !3242, file: !1140, line: 974, type: !97)
!3246 = !DILocation(line: 0, scope: !3242, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 410, column: 14, scope: !3233)
!3248 = !DILocation(line: 976, column: 11, scope: !3242, inlinedAt: !3247)
!3249 = !DILocation(line: 976, column: 10, scope: !3242, inlinedAt: !3247)
!3250 = !DILocation(line: 401, column: 11, scope: !3087)
!3251 = !DILocation(line: 417, column: 25, scope: !3087)
!3252 = !DILocation(line: 418, column: 7, scope: !3087)
!3253 = !DILocation(line: 421, column: 15, scope: !3094)
!3254 = !DILocation(line: 423, column: 15, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !759, line: 423, column: 15)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !759, line: 422, column: 13)
!3257 = distinct !DILexicalBlock(scope: !3094, file: !759, line: 421, column: 15)
!3258 = !DILocation(line: 423, column: 15, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3255, file: !759, line: 423, column: 15)
!3260 = !DILocation(line: 423, column: 15, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !759, line: 423, column: 15)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !759, line: 423, column: 15)
!3263 = distinct !DILexicalBlock(scope: !3259, file: !759, line: 423, column: 15)
!3264 = !DILocation(line: 423, column: 15, scope: !3262)
!3265 = !DILocation(line: 423, column: 15, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !759, line: 423, column: 15)
!3267 = distinct !DILexicalBlock(scope: !3263, file: !759, line: 423, column: 15)
!3268 = !DILocation(line: 423, column: 15, scope: !3267)
!3269 = !DILocation(line: 423, column: 15, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !759, line: 423, column: 15)
!3271 = distinct !DILexicalBlock(scope: !3263, file: !759, line: 423, column: 15)
!3272 = !DILocation(line: 423, column: 15, scope: !3271)
!3273 = !DILocation(line: 423, column: 15, scope: !3263)
!3274 = !DILocation(line: 423, column: 15, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3276, file: !759, line: 423, column: 15)
!3276 = distinct !DILexicalBlock(scope: !3255, file: !759, line: 423, column: 15)
!3277 = !DILocation(line: 423, column: 15, scope: !3276)
!3278 = !DILocation(line: 431, column: 19, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3256, file: !759, line: 430, column: 19)
!3280 = !DILocation(line: 431, column: 24, scope: !3279)
!3281 = !DILocation(line: 431, column: 28, scope: !3279)
!3282 = !DILocation(line: 431, column: 38, scope: !3279)
!3283 = !DILocation(line: 431, column: 48, scope: !3279)
!3284 = !DILocation(line: 431, column: 59, scope: !3279)
!3285 = !DILocation(line: 433, column: 19, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !759, line: 433, column: 19)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !759, line: 433, column: 19)
!3288 = distinct !DILexicalBlock(scope: !3279, file: !759, line: 432, column: 17)
!3289 = !DILocation(line: 433, column: 19, scope: !3287)
!3290 = !DILocation(line: 434, column: 19, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !759, line: 434, column: 19)
!3292 = distinct !DILexicalBlock(scope: !3288, file: !759, line: 434, column: 19)
!3293 = !DILocation(line: 434, column: 19, scope: !3292)
!3294 = !DILocation(line: 435, column: 17, scope: !3288)
!3295 = !DILocation(line: 442, column: 20, scope: !3257)
!3296 = !DILocation(line: 447, column: 11, scope: !3094)
!3297 = !DILocation(line: 450, column: 19, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3094, file: !759, line: 448, column: 13)
!3299 = !DILocation(line: 456, column: 19, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3298, file: !759, line: 455, column: 19)
!3301 = !DILocation(line: 456, column: 24, scope: !3300)
!3302 = !DILocation(line: 456, column: 28, scope: !3300)
!3303 = !DILocation(line: 456, column: 38, scope: !3300)
!3304 = !DILocation(line: 456, column: 47, scope: !3300)
!3305 = !DILocation(line: 456, column: 41, scope: !3300)
!3306 = !DILocation(line: 456, column: 52, scope: !3300)
!3307 = !DILocation(line: 455, column: 19, scope: !3298)
!3308 = !DILocation(line: 457, column: 25, scope: !3300)
!3309 = !DILocation(line: 457, column: 17, scope: !3300)
!3310 = !DILocation(line: 464, column: 25, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3300, file: !759, line: 458, column: 19)
!3312 = !DILocation(line: 468, column: 21, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !759, line: 468, column: 21)
!3314 = distinct !DILexicalBlock(scope: !3311, file: !759, line: 468, column: 21)
!3315 = !DILocation(line: 468, column: 21, scope: !3314)
!3316 = !DILocation(line: 469, column: 21, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !759, line: 469, column: 21)
!3318 = distinct !DILexicalBlock(scope: !3311, file: !759, line: 469, column: 21)
!3319 = !DILocation(line: 469, column: 21, scope: !3318)
!3320 = !DILocation(line: 470, column: 21, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !759, line: 470, column: 21)
!3322 = distinct !DILexicalBlock(scope: !3311, file: !759, line: 470, column: 21)
!3323 = !DILocation(line: 470, column: 21, scope: !3322)
!3324 = !DILocation(line: 471, column: 21, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !759, line: 471, column: 21)
!3326 = distinct !DILexicalBlock(scope: !3311, file: !759, line: 471, column: 21)
!3327 = !DILocation(line: 471, column: 21, scope: !3326)
!3328 = !DILocation(line: 472, column: 21, scope: !3311)
!3329 = !DILocation(line: 482, column: 33, scope: !3117)
!3330 = !DILocation(line: 483, column: 33, scope: !3117)
!3331 = !DILocation(line: 485, column: 33, scope: !3117)
!3332 = !DILocation(line: 486, column: 33, scope: !3117)
!3333 = !DILocation(line: 487, column: 33, scope: !3117)
!3334 = !DILocation(line: 490, column: 17, scope: !3117)
!3335 = !DILocation(line: 492, column: 21, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3337, file: !759, line: 491, column: 15)
!3337 = distinct !DILexicalBlock(scope: !3117, file: !759, line: 490, column: 17)
!3338 = !DILocation(line: 499, column: 35, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3117, file: !759, line: 499, column: 17)
!3340 = !DILocation(line: 499, column: 57, scope: !3339)
!3341 = !DILocation(line: 0, scope: !3117)
!3342 = !DILocation(line: 502, column: 11, scope: !3117)
!3343 = !DILocation(line: 504, column: 17, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3117, file: !759, line: 503, column: 17)
!3345 = !DILocation(line: 507, column: 11, scope: !3117)
!3346 = !DILocation(line: 508, column: 17, scope: !3117)
!3347 = !DILocation(line: 517, column: 15, scope: !3094)
!3348 = !DILocation(line: 517, column: 40, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3094, file: !759, line: 517, column: 15)
!3350 = !DILocation(line: 517, column: 47, scope: !3349)
!3351 = !DILocation(line: 517, column: 18, scope: !3349)
!3352 = !DILocation(line: 521, column: 17, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3094, file: !759, line: 521, column: 15)
!3354 = !DILocation(line: 521, column: 15, scope: !3094)
!3355 = !DILocation(line: 525, column: 11, scope: !3094)
!3356 = !DILocation(line: 537, column: 15, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3094, file: !759, line: 536, column: 15)
!3358 = !DILocation(line: 544, column: 15, scope: !3094)
!3359 = !DILocation(line: 546, column: 19, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !759, line: 545, column: 13)
!3361 = distinct !DILexicalBlock(scope: !3094, file: !759, line: 544, column: 15)
!3362 = !DILocation(line: 549, column: 19, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3360, file: !759, line: 549, column: 19)
!3364 = !DILocation(line: 549, column: 30, scope: !3363)
!3365 = !DILocation(line: 558, column: 15, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !759, line: 558, column: 15)
!3367 = distinct !DILexicalBlock(scope: !3360, file: !759, line: 558, column: 15)
!3368 = !DILocation(line: 558, column: 15, scope: !3367)
!3369 = !DILocation(line: 559, column: 15, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !759, line: 559, column: 15)
!3371 = distinct !DILexicalBlock(scope: !3360, file: !759, line: 559, column: 15)
!3372 = !DILocation(line: 559, column: 15, scope: !3371)
!3373 = !DILocation(line: 560, column: 15, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !759, line: 560, column: 15)
!3375 = distinct !DILexicalBlock(scope: !3360, file: !759, line: 560, column: 15)
!3376 = !DILocation(line: 560, column: 15, scope: !3375)
!3377 = !DILocation(line: 562, column: 13, scope: !3360)
!3378 = !DILocation(line: 602, column: 17, scope: !3093)
!3379 = !DILocation(line: 0, scope: !3093)
!3380 = !DILocation(line: 605, column: 29, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3098, file: !759, line: 603, column: 15)
!3382 = !DILocation(line: 605, column: 27, scope: !3381)
!3383 = !DILocation(line: 668, column: 40, scope: !3093)
!3384 = !DILocation(line: 670, column: 23, scope: !3114)
!3385 = !DILocation(line: 609, column: 17, scope: !3097)
!3386 = !DILocation(line: 609, column: 27, scope: !3097)
!3387 = !DILocation(line: 0, scope: !3154, inlinedAt: !3388)
!3388 = distinct !DILocation(line: 609, column: 32, scope: !3097)
!3389 = !DILocation(line: 0, scope: !3162, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 1137, column: 3, scope: !3154, inlinedAt: !3388)
!3391 = !DILocation(line: 59, column: 10, scope: !3162, inlinedAt: !3390)
!3392 = !DILocation(line: 613, column: 29, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3097, file: !759, line: 613, column: 21)
!3394 = !DILocation(line: 613, column: 21, scope: !3097)
!3395 = !DILocation(line: 614, column: 29, scope: !3393)
!3396 = !DILocation(line: 614, column: 19, scope: !3393)
!3397 = !DILocation(line: 618, column: 21, scope: !3100)
!3398 = !DILocation(line: 620, column: 54, scope: !3100)
!3399 = !DILocation(line: 0, scope: !3100)
!3400 = !DILocation(line: 619, column: 36, scope: !3100)
!3401 = !DILocation(line: 621, column: 25, scope: !3100)
!3402 = !DILocation(line: 631, column: 38, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3109, file: !759, line: 629, column: 23)
!3404 = !DILocation(line: 631, column: 48, scope: !3403)
!3405 = !DILocation(line: 665, column: 19, scope: !3101)
!3406 = !DILocation(line: 666, column: 15, scope: !3098)
!3407 = !DILocation(line: 626, column: 25, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3110, file: !759, line: 624, column: 23)
!3409 = !DILocation(line: 631, column: 51, scope: !3403)
!3410 = !DILocation(line: 631, column: 25, scope: !3403)
!3411 = !DILocation(line: 632, column: 28, scope: !3403)
!3412 = !DILocation(line: 631, column: 34, scope: !3403)
!3413 = distinct !{!3413, !3410, !3411, !1174}
!3414 = !DILocation(line: 646, column: 29, scope: !3107)
!3415 = !DILocation(line: 0, scope: !3105)
!3416 = !DILocation(line: 649, column: 49, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3105, file: !759, line: 648, column: 29)
!3418 = !DILocation(line: 649, column: 39, scope: !3417)
!3419 = !DILocation(line: 649, column: 31, scope: !3417)
!3420 = !DILocation(line: 648, column: 60, scope: !3417)
!3421 = !DILocation(line: 648, column: 50, scope: !3417)
!3422 = !DILocation(line: 648, column: 29, scope: !3105)
!3423 = distinct !{!3423, !3422, !3424, !1174}
!3424 = !DILocation(line: 654, column: 33, scope: !3105)
!3425 = !DILocation(line: 657, column: 43, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3108, file: !759, line: 657, column: 29)
!3427 = !DILocalVariable(name: "wc", arg: 1, scope: !3428, file: !1511, line: 865, type: !1514)
!3428 = distinct !DISubprogram(name: "c32isprint", scope: !1511, file: !1511, line: 865, type: !1512, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3429)
!3429 = !{!3427}
!3430 = !DILocation(line: 0, scope: !3428, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 657, column: 31, scope: !3426)
!3432 = !DILocation(line: 871, column: 10, scope: !3428, inlinedAt: !3431)
!3433 = !DILocation(line: 657, column: 31, scope: !3426)
!3434 = !DILocation(line: 657, column: 29, scope: !3108)
!3435 = !DILocation(line: 664, column: 23, scope: !3100)
!3436 = !DILocation(line: 670, column: 19, scope: !3114)
!3437 = !DILocation(line: 670, column: 45, scope: !3114)
!3438 = !DILocation(line: 674, column: 33, scope: !3113)
!3439 = !DILocation(line: 0, scope: !3113)
!3440 = !DILocation(line: 676, column: 17, scope: !3113)
!3441 = !DILocation(line: 398, column: 12, scope: !3087)
!3442 = !DILocation(line: 678, column: 43, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !759, line: 678, column: 25)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !759, line: 677, column: 19)
!3445 = distinct !DILexicalBlock(scope: !3446, file: !759, line: 676, column: 17)
!3446 = distinct !DILexicalBlock(scope: !3113, file: !759, line: 676, column: 17)
!3447 = !DILocation(line: 680, column: 25, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !759, line: 680, column: 25)
!3449 = distinct !DILexicalBlock(scope: !3443, file: !759, line: 679, column: 23)
!3450 = !DILocation(line: 680, column: 25, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3448, file: !759, line: 680, column: 25)
!3452 = !DILocation(line: 680, column: 25, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3454, file: !759, line: 680, column: 25)
!3454 = distinct !DILexicalBlock(scope: !3455, file: !759, line: 680, column: 25)
!3455 = distinct !DILexicalBlock(scope: !3451, file: !759, line: 680, column: 25)
!3456 = !DILocation(line: 680, column: 25, scope: !3454)
!3457 = !DILocation(line: 680, column: 25, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !759, line: 680, column: 25)
!3459 = distinct !DILexicalBlock(scope: !3455, file: !759, line: 680, column: 25)
!3460 = !DILocation(line: 680, column: 25, scope: !3459)
!3461 = !DILocation(line: 680, column: 25, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3463, file: !759, line: 680, column: 25)
!3463 = distinct !DILexicalBlock(scope: !3455, file: !759, line: 680, column: 25)
!3464 = !DILocation(line: 680, column: 25, scope: !3463)
!3465 = !DILocation(line: 680, column: 25, scope: !3455)
!3466 = !DILocation(line: 680, column: 25, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3468, file: !759, line: 680, column: 25)
!3468 = distinct !DILexicalBlock(scope: !3448, file: !759, line: 680, column: 25)
!3469 = !DILocation(line: 680, column: 25, scope: !3468)
!3470 = !DILocation(line: 681, column: 25, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !759, line: 681, column: 25)
!3472 = distinct !DILexicalBlock(scope: !3449, file: !759, line: 681, column: 25)
!3473 = !DILocation(line: 681, column: 25, scope: !3472)
!3474 = !DILocation(line: 682, column: 25, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3476, file: !759, line: 682, column: 25)
!3476 = distinct !DILexicalBlock(scope: !3449, file: !759, line: 682, column: 25)
!3477 = !DILocation(line: 682, column: 25, scope: !3476)
!3478 = !DILocation(line: 683, column: 38, scope: !3449)
!3479 = !DILocation(line: 683, column: 33, scope: !3449)
!3480 = !DILocation(line: 684, column: 23, scope: !3449)
!3481 = !DILocation(line: 685, column: 30, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3443, file: !759, line: 685, column: 30)
!3483 = !DILocation(line: 685, column: 30, scope: !3443)
!3484 = !DILocation(line: 687, column: 25, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3486, file: !759, line: 687, column: 25)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !759, line: 687, column: 25)
!3487 = distinct !DILexicalBlock(scope: !3482, file: !759, line: 686, column: 23)
!3488 = !DILocation(line: 687, column: 25, scope: !3486)
!3489 = !DILocation(line: 689, column: 23, scope: !3487)
!3490 = !DILocation(line: 690, column: 35, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3444, file: !759, line: 690, column: 25)
!3492 = !DILocation(line: 690, column: 30, scope: !3491)
!3493 = !DILocation(line: 690, column: 25, scope: !3444)
!3494 = !DILocation(line: 692, column: 21, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !759, line: 692, column: 21)
!3496 = distinct !DILexicalBlock(scope: !3444, file: !759, line: 692, column: 21)
!3497 = !DILocation(line: 692, column: 21, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !759, line: 692, column: 21)
!3499 = distinct !DILexicalBlock(scope: !3500, file: !759, line: 692, column: 21)
!3500 = distinct !DILexicalBlock(scope: !3495, file: !759, line: 692, column: 21)
!3501 = !DILocation(line: 692, column: 21, scope: !3499)
!3502 = !DILocation(line: 692, column: 21, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !759, line: 692, column: 21)
!3504 = distinct !DILexicalBlock(scope: !3500, file: !759, line: 692, column: 21)
!3505 = !DILocation(line: 692, column: 21, scope: !3504)
!3506 = !DILocation(line: 692, column: 21, scope: !3500)
!3507 = !DILocation(line: 0, scope: !3444)
!3508 = !DILocation(line: 693, column: 21, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !759, line: 693, column: 21)
!3510 = distinct !DILexicalBlock(scope: !3444, file: !759, line: 693, column: 21)
!3511 = !DILocation(line: 693, column: 21, scope: !3510)
!3512 = !DILocation(line: 694, column: 25, scope: !3444)
!3513 = !DILocation(line: 676, column: 17, scope: !3445)
!3514 = distinct !{!3514, !3515, !3516}
!3515 = !DILocation(line: 676, column: 17, scope: !3446)
!3516 = !DILocation(line: 695, column: 19, scope: !3446)
!3517 = !DILocation(line: 409, column: 30, scope: !3233)
!3518 = !DILocation(line: 702, column: 34, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3087, file: !759, line: 702, column: 11)
!3520 = !DILocation(line: 704, column: 14, scope: !3519)
!3521 = !DILocation(line: 705, column: 14, scope: !3519)
!3522 = !DILocation(line: 705, column: 35, scope: !3519)
!3523 = !DILocation(line: 705, column: 17, scope: !3519)
!3524 = !DILocation(line: 705, column: 47, scope: !3519)
!3525 = !DILocation(line: 705, column: 65, scope: !3519)
!3526 = !DILocation(line: 706, column: 11, scope: !3519)
!3527 = !DILocation(line: 702, column: 11, scope: !3087)
!3528 = !DILocation(line: 395, column: 15, scope: !3085)
!3529 = !DILocation(line: 709, column: 5, scope: !3087)
!3530 = !DILocation(line: 710, column: 7, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3087, file: !759, line: 710, column: 7)
!3532 = !DILocation(line: 710, column: 7, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3531, file: !759, line: 710, column: 7)
!3534 = !DILocation(line: 710, column: 7, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !759, line: 710, column: 7)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !759, line: 710, column: 7)
!3537 = distinct !DILexicalBlock(scope: !3533, file: !759, line: 710, column: 7)
!3538 = !DILocation(line: 710, column: 7, scope: !3536)
!3539 = !DILocation(line: 710, column: 7, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !759, line: 710, column: 7)
!3541 = distinct !DILexicalBlock(scope: !3537, file: !759, line: 710, column: 7)
!3542 = !DILocation(line: 710, column: 7, scope: !3541)
!3543 = !DILocation(line: 710, column: 7, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !759, line: 710, column: 7)
!3545 = distinct !DILexicalBlock(scope: !3537, file: !759, line: 710, column: 7)
!3546 = !DILocation(line: 710, column: 7, scope: !3545)
!3547 = !DILocation(line: 710, column: 7, scope: !3537)
!3548 = !DILocation(line: 710, column: 7, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !759, line: 710, column: 7)
!3550 = distinct !DILexicalBlock(scope: !3531, file: !759, line: 710, column: 7)
!3551 = !DILocation(line: 710, column: 7, scope: !3550)
!3552 = !DILocation(line: 712, column: 5, scope: !3087)
!3553 = !DILocation(line: 713, column: 7, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !759, line: 713, column: 7)
!3555 = distinct !DILexicalBlock(scope: !3087, file: !759, line: 713, column: 7)
!3556 = !DILocation(line: 417, column: 21, scope: !3087)
!3557 = !DILocation(line: 713, column: 7, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3559, file: !759, line: 713, column: 7)
!3559 = distinct !DILexicalBlock(scope: !3560, file: !759, line: 713, column: 7)
!3560 = distinct !DILexicalBlock(scope: !3554, file: !759, line: 713, column: 7)
!3561 = !DILocation(line: 713, column: 7, scope: !3559)
!3562 = !DILocation(line: 713, column: 7, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !759, line: 713, column: 7)
!3564 = distinct !DILexicalBlock(scope: !3560, file: !759, line: 713, column: 7)
!3565 = !DILocation(line: 713, column: 7, scope: !3564)
!3566 = !DILocation(line: 713, column: 7, scope: !3560)
!3567 = !DILocation(line: 714, column: 7, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !759, line: 714, column: 7)
!3569 = distinct !DILexicalBlock(scope: !3087, file: !759, line: 714, column: 7)
!3570 = !DILocation(line: 714, column: 7, scope: !3569)
!3571 = !DILocation(line: 716, column: 13, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3087, file: !759, line: 716, column: 11)
!3573 = !DILocation(line: 716, column: 11, scope: !3087)
!3574 = !DILocation(line: 718, column: 5, scope: !3088)
!3575 = !DILocation(line: 395, column: 82, scope: !3088)
!3576 = !DILocation(line: 395, column: 3, scope: !3088)
!3577 = distinct !{!3577, !3229, !3578, !1174}
!3578 = !DILocation(line: 718, column: 5, scope: !3085)
!3579 = !DILocation(line: 720, column: 11, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3054, file: !759, line: 720, column: 7)
!3581 = !DILocation(line: 720, column: 16, scope: !3580)
!3582 = !DILocation(line: 728, column: 51, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3054, file: !759, line: 728, column: 7)
!3584 = !DILocation(line: 731, column: 11, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3586, file: !759, line: 731, column: 11)
!3586 = distinct !DILexicalBlock(scope: !3583, file: !759, line: 730, column: 5)
!3587 = !DILocation(line: 731, column: 11, scope: !3586)
!3588 = !DILocation(line: 732, column: 16, scope: !3585)
!3589 = !DILocation(line: 732, column: 9, scope: !3585)
!3590 = !DILocation(line: 736, column: 18, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3585, file: !759, line: 736, column: 16)
!3592 = !DILocation(line: 736, column: 29, scope: !3591)
!3593 = !DILocation(line: 745, column: 7, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3054, file: !759, line: 745, column: 7)
!3595 = !DILocation(line: 745, column: 20, scope: !3594)
!3596 = !DILocation(line: 746, column: 12, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !759, line: 746, column: 5)
!3598 = distinct !DILexicalBlock(scope: !3594, file: !759, line: 746, column: 5)
!3599 = !DILocation(line: 746, column: 5, scope: !3598)
!3600 = !DILocation(line: 747, column: 7, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !759, line: 747, column: 7)
!3602 = distinct !DILexicalBlock(scope: !3597, file: !759, line: 747, column: 7)
!3603 = !DILocation(line: 747, column: 7, scope: !3602)
!3604 = !DILocation(line: 746, column: 39, scope: !3597)
!3605 = distinct !{!3605, !3599, !3606, !1174}
!3606 = !DILocation(line: 747, column: 7, scope: !3598)
!3607 = !DILocation(line: 749, column: 11, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3054, file: !759, line: 749, column: 7)
!3609 = !DILocation(line: 749, column: 7, scope: !3054)
!3610 = !DILocation(line: 750, column: 5, scope: !3608)
!3611 = !DILocation(line: 750, column: 17, scope: !3608)
!3612 = !DILocation(line: 753, column: 2, scope: !3054)
!3613 = !DILocation(line: 756, column: 51, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3054, file: !759, line: 756, column: 7)
!3615 = !DILocation(line: 756, column: 21, scope: !3614)
!3616 = !DILocation(line: 760, column: 42, scope: !3054)
!3617 = !DILocation(line: 758, column: 10, scope: !3054)
!3618 = !DILocation(line: 758, column: 3, scope: !3054)
!3619 = !DILocation(line: 762, column: 1, scope: !3054)
!3620 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1252, file: !1252, line: 98, type: !3621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!97}
!3623 = !DISubprogram(name: "strlen", scope: !1248, file: !1248, line: 407, type: !3624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!99, !100}
!3626 = !DISubprogram(name: "iswprint", scope: !1657, file: !1657, line: 120, type: !1512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!3627 = distinct !DISubprogram(name: "quotearg_alloc", scope: !759, file: !759, line: 788, type: !3628, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3630)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!94, !100, !97, !2947}
!3630 = !{!3631, !3632, !3633}
!3631 = !DILocalVariable(name: "arg", arg: 1, scope: !3627, file: !759, line: 788, type: !100)
!3632 = !DILocalVariable(name: "argsize", arg: 2, scope: !3627, file: !759, line: 788, type: !97)
!3633 = !DILocalVariable(name: "o", arg: 3, scope: !3627, file: !759, line: 789, type: !2947)
!3634 = !DILocation(line: 0, scope: !3627)
!3635 = !DILocalVariable(name: "arg", arg: 1, scope: !3636, file: !759, line: 801, type: !100)
!3636 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !759, file: !759, line: 801, type: !3637, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3639)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!94, !100, !97, !998, !2947}
!3639 = !{!3635, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647}
!3640 = !DILocalVariable(name: "argsize", arg: 2, scope: !3636, file: !759, line: 801, type: !97)
!3641 = !DILocalVariable(name: "size", arg: 3, scope: !3636, file: !759, line: 801, type: !998)
!3642 = !DILocalVariable(name: "o", arg: 4, scope: !3636, file: !759, line: 802, type: !2947)
!3643 = !DILocalVariable(name: "p", scope: !3636, file: !759, line: 804, type: !2947)
!3644 = !DILocalVariable(name: "saved_errno", scope: !3636, file: !759, line: 805, type: !63)
!3645 = !DILocalVariable(name: "flags", scope: !3636, file: !759, line: 807, type: !63)
!3646 = !DILocalVariable(name: "bufsize", scope: !3636, file: !759, line: 808, type: !97)
!3647 = !DILocalVariable(name: "buf", scope: !3636, file: !759, line: 812, type: !94)
!3648 = !DILocation(line: 0, scope: !3636, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 791, column: 10, scope: !3627)
!3650 = !DILocation(line: 804, column: 37, scope: !3636, inlinedAt: !3649)
!3651 = !DILocation(line: 805, column: 21, scope: !3636, inlinedAt: !3649)
!3652 = !DILocation(line: 807, column: 18, scope: !3636, inlinedAt: !3649)
!3653 = !DILocation(line: 807, column: 24, scope: !3636, inlinedAt: !3649)
!3654 = !DILocation(line: 808, column: 72, scope: !3636, inlinedAt: !3649)
!3655 = !DILocation(line: 809, column: 56, scope: !3636, inlinedAt: !3649)
!3656 = !DILocation(line: 810, column: 49, scope: !3636, inlinedAt: !3649)
!3657 = !DILocation(line: 811, column: 49, scope: !3636, inlinedAt: !3649)
!3658 = !DILocation(line: 808, column: 20, scope: !3636, inlinedAt: !3649)
!3659 = !DILocation(line: 811, column: 62, scope: !3636, inlinedAt: !3649)
!3660 = !DILocation(line: 812, column: 15, scope: !3636, inlinedAt: !3649)
!3661 = !DILocation(line: 813, column: 60, scope: !3636, inlinedAt: !3649)
!3662 = !DILocation(line: 815, column: 32, scope: !3636, inlinedAt: !3649)
!3663 = !DILocation(line: 815, column: 47, scope: !3636, inlinedAt: !3649)
!3664 = !DILocation(line: 813, column: 3, scope: !3636, inlinedAt: !3649)
!3665 = !DILocation(line: 816, column: 9, scope: !3636, inlinedAt: !3649)
!3666 = !DILocation(line: 791, column: 3, scope: !3627)
!3667 = !DILocation(line: 0, scope: !3636)
!3668 = !DILocation(line: 804, column: 37, scope: !3636)
!3669 = !DILocation(line: 805, column: 21, scope: !3636)
!3670 = !DILocation(line: 807, column: 18, scope: !3636)
!3671 = !DILocation(line: 807, column: 27, scope: !3636)
!3672 = !DILocation(line: 807, column: 24, scope: !3636)
!3673 = !DILocation(line: 808, column: 72, scope: !3636)
!3674 = !DILocation(line: 809, column: 56, scope: !3636)
!3675 = !DILocation(line: 810, column: 49, scope: !3636)
!3676 = !DILocation(line: 811, column: 49, scope: !3636)
!3677 = !DILocation(line: 808, column: 20, scope: !3636)
!3678 = !DILocation(line: 811, column: 62, scope: !3636)
!3679 = !DILocation(line: 812, column: 15, scope: !3636)
!3680 = !DILocation(line: 813, column: 60, scope: !3636)
!3681 = !DILocation(line: 815, column: 32, scope: !3636)
!3682 = !DILocation(line: 815, column: 47, scope: !3636)
!3683 = !DILocation(line: 813, column: 3, scope: !3636)
!3684 = !DILocation(line: 816, column: 9, scope: !3636)
!3685 = !DILocation(line: 817, column: 7, scope: !3636)
!3686 = !DILocation(line: 818, column: 11, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3636, file: !759, line: 817, column: 7)
!3688 = !DILocation(line: 818, column: 5, scope: !3687)
!3689 = !DILocation(line: 819, column: 3, scope: !3636)
!3690 = distinct !DISubprogram(name: "quotearg_free", scope: !759, file: !759, line: 837, type: !342, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3691)
!3691 = !{!3692, !3693}
!3692 = !DILocalVariable(name: "sv", scope: !3690, file: !759, line: 839, type: !846)
!3693 = !DILocalVariable(name: "i", scope: !3694, file: !759, line: 840, type: !63)
!3694 = distinct !DILexicalBlock(scope: !3690, file: !759, line: 840, column: 3)
!3695 = !DILocation(line: 839, column: 24, scope: !3690)
!3696 = !DILocation(line: 0, scope: !3690)
!3697 = !DILocation(line: 0, scope: !3694)
!3698 = !DILocation(line: 840, column: 21, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3694, file: !759, line: 840, column: 3)
!3700 = !DILocation(line: 840, column: 3, scope: !3694)
!3701 = !DILocation(line: 842, column: 13, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3690, file: !759, line: 842, column: 7)
!3703 = !{!3704, !1058, i64 8}
!3704 = !{!"slotvec", !1348, i64 0, !1058, i64 8}
!3705 = !DILocation(line: 842, column: 17, scope: !3702)
!3706 = !DILocation(line: 842, column: 7, scope: !3690)
!3707 = !DILocation(line: 841, column: 17, scope: !3699)
!3708 = !DILocation(line: 841, column: 5, scope: !3699)
!3709 = !DILocation(line: 840, column: 32, scope: !3699)
!3710 = distinct !{!3710, !3700, !3711, !1174}
!3711 = !DILocation(line: 841, column: 20, scope: !3694)
!3712 = !DILocation(line: 844, column: 7, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3702, file: !759, line: 843, column: 5)
!3714 = !DILocation(line: 845, column: 21, scope: !3713)
!3715 = !{!3704, !1348, i64 0}
!3716 = !DILocation(line: 846, column: 20, scope: !3713)
!3717 = !DILocation(line: 847, column: 5, scope: !3713)
!3718 = !DILocation(line: 848, column: 10, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3690, file: !759, line: 848, column: 7)
!3720 = !DILocation(line: 848, column: 7, scope: !3690)
!3721 = !DILocation(line: 850, column: 7, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3719, file: !759, line: 849, column: 5)
!3723 = !DILocation(line: 851, column: 15, scope: !3722)
!3724 = !DILocation(line: 852, column: 5, scope: !3722)
!3725 = !DILocation(line: 853, column: 10, scope: !3690)
!3726 = !DILocation(line: 854, column: 1, scope: !3690)
!3727 = distinct !DISubprogram(name: "quotearg_n", scope: !759, file: !759, line: 919, type: !1245, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3728)
!3728 = !{!3729, !3730}
!3729 = !DILocalVariable(name: "n", arg: 1, scope: !3727, file: !759, line: 919, type: !63)
!3730 = !DILocalVariable(name: "arg", arg: 2, scope: !3727, file: !759, line: 919, type: !100)
!3731 = !DILocation(line: 0, scope: !3727)
!3732 = !DILocation(line: 921, column: 10, scope: !3727)
!3733 = !DILocation(line: 921, column: 3, scope: !3727)
!3734 = distinct !DISubprogram(name: "quotearg_n_options", scope: !759, file: !759, line: 866, type: !3735, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3737)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!94, !63, !100, !97, !2947}
!3737 = !{!3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3748, !3749, !3751, !3752, !3753}
!3738 = !DILocalVariable(name: "n", arg: 1, scope: !3734, file: !759, line: 866, type: !63)
!3739 = !DILocalVariable(name: "arg", arg: 2, scope: !3734, file: !759, line: 866, type: !100)
!3740 = !DILocalVariable(name: "argsize", arg: 3, scope: !3734, file: !759, line: 866, type: !97)
!3741 = !DILocalVariable(name: "options", arg: 4, scope: !3734, file: !759, line: 867, type: !2947)
!3742 = !DILocalVariable(name: "saved_errno", scope: !3734, file: !759, line: 869, type: !63)
!3743 = !DILocalVariable(name: "sv", scope: !3734, file: !759, line: 871, type: !846)
!3744 = !DILocalVariable(name: "nslots_max", scope: !3734, file: !759, line: 873, type: !63)
!3745 = !DILocalVariable(name: "preallocated", scope: !3746, file: !759, line: 879, type: !103)
!3746 = distinct !DILexicalBlock(scope: !3747, file: !759, line: 878, column: 5)
!3747 = distinct !DILexicalBlock(scope: !3734, file: !759, line: 877, column: 7)
!3748 = !DILocalVariable(name: "new_nslots", scope: !3746, file: !759, line: 880, type: !354)
!3749 = !DILocalVariable(name: "size", scope: !3750, file: !759, line: 891, type: !97)
!3750 = distinct !DILexicalBlock(scope: !3734, file: !759, line: 890, column: 3)
!3751 = !DILocalVariable(name: "val", scope: !3750, file: !759, line: 892, type: !94)
!3752 = !DILocalVariable(name: "flags", scope: !3750, file: !759, line: 894, type: !63)
!3753 = !DILocalVariable(name: "qsize", scope: !3750, file: !759, line: 895, type: !97)
!3754 = !DILocation(line: 0, scope: !3734)
!3755 = !DILocation(line: 869, column: 21, scope: !3734)
!3756 = !DILocation(line: 871, column: 24, scope: !3734)
!3757 = !DILocation(line: 874, column: 17, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3734, file: !759, line: 874, column: 7)
!3759 = !DILocation(line: 875, column: 5, scope: !3758)
!3760 = !DILocation(line: 877, column: 7, scope: !3747)
!3761 = !DILocation(line: 877, column: 14, scope: !3747)
!3762 = !DILocation(line: 877, column: 7, scope: !3734)
!3763 = !DILocation(line: 879, column: 31, scope: !3746)
!3764 = !DILocation(line: 0, scope: !3746)
!3765 = !DILocation(line: 880, column: 7, scope: !3746)
!3766 = !DILocation(line: 880, column: 26, scope: !3746)
!3767 = !DILocation(line: 880, column: 13, scope: !3746)
!3768 = !DILocation(line: 882, column: 31, scope: !3746)
!3769 = !DILocation(line: 883, column: 33, scope: !3746)
!3770 = !DILocation(line: 883, column: 42, scope: !3746)
!3771 = !DILocation(line: 883, column: 31, scope: !3746)
!3772 = !DILocation(line: 882, column: 22, scope: !3746)
!3773 = !DILocation(line: 882, column: 15, scope: !3746)
!3774 = !DILocation(line: 884, column: 11, scope: !3746)
!3775 = !DILocation(line: 885, column: 15, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3746, file: !759, line: 884, column: 11)
!3777 = !{i64 0, i64 8, !1347, i64 8, i64 8, !1057}
!3778 = !DILocation(line: 885, column: 9, scope: !3776)
!3779 = !DILocation(line: 886, column: 20, scope: !3746)
!3780 = !DILocation(line: 886, column: 18, scope: !3746)
!3781 = !DILocation(line: 886, column: 32, scope: !3746)
!3782 = !DILocation(line: 886, column: 43, scope: !3746)
!3783 = !DILocation(line: 886, column: 53, scope: !3746)
!3784 = !DILocation(line: 0, scope: !3162, inlinedAt: !3785)
!3785 = distinct !DILocation(line: 886, column: 7, scope: !3746)
!3786 = !DILocation(line: 59, column: 10, scope: !3162, inlinedAt: !3785)
!3787 = !DILocation(line: 887, column: 16, scope: !3746)
!3788 = !DILocation(line: 887, column: 14, scope: !3746)
!3789 = !DILocation(line: 888, column: 5, scope: !3747)
!3790 = !DILocation(line: 888, column: 5, scope: !3746)
!3791 = !DILocation(line: 891, column: 19, scope: !3750)
!3792 = !DILocation(line: 891, column: 25, scope: !3750)
!3793 = !DILocation(line: 0, scope: !3750)
!3794 = !DILocation(line: 892, column: 23, scope: !3750)
!3795 = !DILocation(line: 894, column: 26, scope: !3750)
!3796 = !DILocation(line: 894, column: 32, scope: !3750)
!3797 = !DILocation(line: 896, column: 55, scope: !3750)
!3798 = !DILocation(line: 897, column: 55, scope: !3750)
!3799 = !DILocation(line: 898, column: 55, scope: !3750)
!3800 = !DILocation(line: 899, column: 55, scope: !3750)
!3801 = !DILocation(line: 895, column: 20, scope: !3750)
!3802 = !DILocation(line: 901, column: 14, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3750, file: !759, line: 901, column: 9)
!3804 = !DILocation(line: 901, column: 9, scope: !3750)
!3805 = !DILocation(line: 903, column: 35, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3803, file: !759, line: 902, column: 7)
!3807 = !DILocation(line: 903, column: 20, scope: !3806)
!3808 = !DILocation(line: 904, column: 17, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3806, file: !759, line: 904, column: 13)
!3810 = !DILocation(line: 904, column: 13, scope: !3806)
!3811 = !DILocation(line: 905, column: 11, scope: !3809)
!3812 = !DILocation(line: 906, column: 27, scope: !3806)
!3813 = !DILocation(line: 906, column: 19, scope: !3806)
!3814 = !DILocation(line: 907, column: 69, scope: !3806)
!3815 = !DILocation(line: 909, column: 44, scope: !3806)
!3816 = !DILocation(line: 910, column: 44, scope: !3806)
!3817 = !DILocation(line: 907, column: 9, scope: !3806)
!3818 = !DILocation(line: 911, column: 7, scope: !3806)
!3819 = !DILocation(line: 913, column: 11, scope: !3750)
!3820 = !DILocation(line: 914, column: 5, scope: !3750)
!3821 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !759, file: !759, line: 925, type: !3822, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3824)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!94, !63, !100, !97}
!3824 = !{!3825, !3826, !3827}
!3825 = !DILocalVariable(name: "n", arg: 1, scope: !3821, file: !759, line: 925, type: !63)
!3826 = !DILocalVariable(name: "arg", arg: 2, scope: !3821, file: !759, line: 925, type: !100)
!3827 = !DILocalVariable(name: "argsize", arg: 3, scope: !3821, file: !759, line: 925, type: !97)
!3828 = !DILocation(line: 0, scope: !3821)
!3829 = !DILocation(line: 927, column: 10, scope: !3821)
!3830 = !DILocation(line: 927, column: 3, scope: !3821)
!3831 = distinct !DISubprogram(name: "quotearg", scope: !759, file: !759, line: 931, type: !1254, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3832)
!3832 = !{!3833}
!3833 = !DILocalVariable(name: "arg", arg: 1, scope: !3831, file: !759, line: 931, type: !100)
!3834 = !DILocation(line: 0, scope: !3831)
!3835 = !DILocation(line: 0, scope: !3727, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 933, column: 10, scope: !3831)
!3837 = !DILocation(line: 921, column: 10, scope: !3727, inlinedAt: !3836)
!3838 = !DILocation(line: 933, column: 3, scope: !3831)
!3839 = distinct !DISubprogram(name: "quotearg_mem", scope: !759, file: !759, line: 937, type: !3840, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3842)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!94, !100, !97}
!3842 = !{!3843, !3844}
!3843 = !DILocalVariable(name: "arg", arg: 1, scope: !3839, file: !759, line: 937, type: !100)
!3844 = !DILocalVariable(name: "argsize", arg: 2, scope: !3839, file: !759, line: 937, type: !97)
!3845 = !DILocation(line: 0, scope: !3839)
!3846 = !DILocation(line: 0, scope: !3821, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 939, column: 10, scope: !3839)
!3848 = !DILocation(line: 927, column: 10, scope: !3821, inlinedAt: !3847)
!3849 = !DILocation(line: 939, column: 3, scope: !3839)
!3850 = distinct !DISubprogram(name: "quotearg_n_style", scope: !759, file: !759, line: 943, type: !3851, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3853)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!94, !63, !411, !100}
!3853 = !{!3854, !3855, !3856, !3857}
!3854 = !DILocalVariable(name: "n", arg: 1, scope: !3850, file: !759, line: 943, type: !63)
!3855 = !DILocalVariable(name: "s", arg: 2, scope: !3850, file: !759, line: 943, type: !411)
!3856 = !DILocalVariable(name: "arg", arg: 3, scope: !3850, file: !759, line: 943, type: !100)
!3857 = !DILocalVariable(name: "o", scope: !3850, file: !759, line: 945, type: !2948)
!3858 = !DILocation(line: 0, scope: !3850)
!3859 = !DILocation(line: 945, column: 3, scope: !3850)
!3860 = !DILocation(line: 945, column: 32, scope: !3850)
!3861 = !{!3862}
!3862 = distinct !{!3862, !3863, !"quoting_options_from_style: argument 0"}
!3863 = distinct !{!3863, !"quoting_options_from_style"}
!3864 = !DILocation(line: 945, column: 36, scope: !3850)
!3865 = !DILocalVariable(name: "style", arg: 1, scope: !3866, file: !759, line: 183, type: !411)
!3866 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !759, file: !759, line: 183, type: !3867, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3869)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!798, !411}
!3869 = !{!3865, !3870}
!3870 = !DILocalVariable(name: "o", scope: !3866, file: !759, line: 185, type: !798)
!3871 = !DILocation(line: 0, scope: !3866, inlinedAt: !3872)
!3872 = distinct !DILocation(line: 945, column: 36, scope: !3850)
!3873 = !DILocation(line: 185, column: 26, scope: !3866, inlinedAt: !3872)
!3874 = !DILocation(line: 186, column: 13, scope: !3875, inlinedAt: !3872)
!3875 = distinct !DILexicalBlock(scope: !3866, file: !759, line: 186, column: 7)
!3876 = !DILocation(line: 186, column: 7, scope: !3866, inlinedAt: !3872)
!3877 = !DILocation(line: 187, column: 5, scope: !3875, inlinedAt: !3872)
!3878 = !DILocation(line: 188, column: 11, scope: !3866, inlinedAt: !3872)
!3879 = !DILocation(line: 946, column: 10, scope: !3850)
!3880 = !DILocation(line: 947, column: 1, scope: !3850)
!3881 = !DILocation(line: 946, column: 3, scope: !3850)
!3882 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !759, file: !759, line: 950, type: !3883, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3885)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!94, !63, !411, !100, !97}
!3885 = !{!3886, !3887, !3888, !3889, !3890}
!3886 = !DILocalVariable(name: "n", arg: 1, scope: !3882, file: !759, line: 950, type: !63)
!3887 = !DILocalVariable(name: "s", arg: 2, scope: !3882, file: !759, line: 950, type: !411)
!3888 = !DILocalVariable(name: "arg", arg: 3, scope: !3882, file: !759, line: 951, type: !100)
!3889 = !DILocalVariable(name: "argsize", arg: 4, scope: !3882, file: !759, line: 951, type: !97)
!3890 = !DILocalVariable(name: "o", scope: !3882, file: !759, line: 953, type: !2948)
!3891 = !DILocation(line: 0, scope: !3882)
!3892 = !DILocation(line: 953, column: 3, scope: !3882)
!3893 = !DILocation(line: 953, column: 32, scope: !3882)
!3894 = !{!3895}
!3895 = distinct !{!3895, !3896, !"quoting_options_from_style: argument 0"}
!3896 = distinct !{!3896, !"quoting_options_from_style"}
!3897 = !DILocation(line: 953, column: 36, scope: !3882)
!3898 = !DILocation(line: 0, scope: !3866, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 953, column: 36, scope: !3882)
!3900 = !DILocation(line: 185, column: 26, scope: !3866, inlinedAt: !3899)
!3901 = !DILocation(line: 186, column: 13, scope: !3875, inlinedAt: !3899)
!3902 = !DILocation(line: 186, column: 7, scope: !3866, inlinedAt: !3899)
!3903 = !DILocation(line: 187, column: 5, scope: !3875, inlinedAt: !3899)
!3904 = !DILocation(line: 188, column: 11, scope: !3866, inlinedAt: !3899)
!3905 = !DILocation(line: 954, column: 10, scope: !3882)
!3906 = !DILocation(line: 955, column: 1, scope: !3882)
!3907 = !DILocation(line: 954, column: 3, scope: !3882)
!3908 = distinct !DISubprogram(name: "quotearg_style", scope: !759, file: !759, line: 958, type: !3909, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3911)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!94, !411, !100}
!3911 = !{!3912, !3913}
!3912 = !DILocalVariable(name: "s", arg: 1, scope: !3908, file: !759, line: 958, type: !411)
!3913 = !DILocalVariable(name: "arg", arg: 2, scope: !3908, file: !759, line: 958, type: !100)
!3914 = !DILocation(line: 0, scope: !3908)
!3915 = !DILocation(line: 0, scope: !3850, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 960, column: 10, scope: !3908)
!3917 = !DILocation(line: 945, column: 3, scope: !3850, inlinedAt: !3916)
!3918 = !DILocation(line: 945, column: 32, scope: !3850, inlinedAt: !3916)
!3919 = !{!3920}
!3920 = distinct !{!3920, !3921, !"quoting_options_from_style: argument 0"}
!3921 = distinct !{!3921, !"quoting_options_from_style"}
!3922 = !DILocation(line: 945, column: 36, scope: !3850, inlinedAt: !3916)
!3923 = !DILocation(line: 0, scope: !3866, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 945, column: 36, scope: !3850, inlinedAt: !3916)
!3925 = !DILocation(line: 185, column: 26, scope: !3866, inlinedAt: !3924)
!3926 = !DILocation(line: 186, column: 13, scope: !3875, inlinedAt: !3924)
!3927 = !DILocation(line: 186, column: 7, scope: !3866, inlinedAt: !3924)
!3928 = !DILocation(line: 187, column: 5, scope: !3875, inlinedAt: !3924)
!3929 = !DILocation(line: 188, column: 11, scope: !3866, inlinedAt: !3924)
!3930 = !DILocation(line: 946, column: 10, scope: !3850, inlinedAt: !3916)
!3931 = !DILocation(line: 947, column: 1, scope: !3850, inlinedAt: !3916)
!3932 = !DILocation(line: 960, column: 3, scope: !3908)
!3933 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !759, file: !759, line: 964, type: !3934, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3936)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!94, !411, !100, !97}
!3936 = !{!3937, !3938, !3939}
!3937 = !DILocalVariable(name: "s", arg: 1, scope: !3933, file: !759, line: 964, type: !411)
!3938 = !DILocalVariable(name: "arg", arg: 2, scope: !3933, file: !759, line: 964, type: !100)
!3939 = !DILocalVariable(name: "argsize", arg: 3, scope: !3933, file: !759, line: 964, type: !97)
!3940 = !DILocation(line: 0, scope: !3933)
!3941 = !DILocation(line: 0, scope: !3882, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 966, column: 10, scope: !3933)
!3943 = !DILocation(line: 953, column: 3, scope: !3882, inlinedAt: !3942)
!3944 = !DILocation(line: 953, column: 32, scope: !3882, inlinedAt: !3942)
!3945 = !{!3946}
!3946 = distinct !{!3946, !3947, !"quoting_options_from_style: argument 0"}
!3947 = distinct !{!3947, !"quoting_options_from_style"}
!3948 = !DILocation(line: 953, column: 36, scope: !3882, inlinedAt: !3942)
!3949 = !DILocation(line: 0, scope: !3866, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 953, column: 36, scope: !3882, inlinedAt: !3942)
!3951 = !DILocation(line: 185, column: 26, scope: !3866, inlinedAt: !3950)
!3952 = !DILocation(line: 186, column: 13, scope: !3875, inlinedAt: !3950)
!3953 = !DILocation(line: 186, column: 7, scope: !3866, inlinedAt: !3950)
!3954 = !DILocation(line: 187, column: 5, scope: !3875, inlinedAt: !3950)
!3955 = !DILocation(line: 188, column: 11, scope: !3866, inlinedAt: !3950)
!3956 = !DILocation(line: 954, column: 10, scope: !3882, inlinedAt: !3942)
!3957 = !DILocation(line: 955, column: 1, scope: !3882, inlinedAt: !3942)
!3958 = !DILocation(line: 966, column: 3, scope: !3933)
!3959 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !759, file: !759, line: 970, type: !3960, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3962)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!94, !100, !97, !4}
!3962 = !{!3963, !3964, !3965, !3966}
!3963 = !DILocalVariable(name: "arg", arg: 1, scope: !3959, file: !759, line: 970, type: !100)
!3964 = !DILocalVariable(name: "argsize", arg: 2, scope: !3959, file: !759, line: 970, type: !97)
!3965 = !DILocalVariable(name: "ch", arg: 3, scope: !3959, file: !759, line: 970, type: !4)
!3966 = !DILocalVariable(name: "options", scope: !3959, file: !759, line: 972, type: !798)
!3967 = !DILocation(line: 0, scope: !3959)
!3968 = !DILocation(line: 972, column: 3, scope: !3959)
!3969 = !DILocation(line: 972, column: 26, scope: !3959)
!3970 = !DILocation(line: 973, column: 13, scope: !3959)
!3971 = !{i64 0, i64 4, !1136, i64 4, i64 4, !1127, i64 8, i64 32, !1136, i64 40, i64 8, !1057, i64 48, i64 8, !1057}
!3972 = !DILocation(line: 0, scope: !2967, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 974, column: 3, scope: !3959)
!3974 = !DILocation(line: 147, column: 41, scope: !2967, inlinedAt: !3973)
!3975 = !DILocation(line: 147, column: 62, scope: !2967, inlinedAt: !3973)
!3976 = !DILocation(line: 147, column: 57, scope: !2967, inlinedAt: !3973)
!3977 = !DILocation(line: 148, column: 15, scope: !2967, inlinedAt: !3973)
!3978 = !DILocation(line: 149, column: 21, scope: !2967, inlinedAt: !3973)
!3979 = !DILocation(line: 149, column: 24, scope: !2967, inlinedAt: !3973)
!3980 = !DILocation(line: 150, column: 19, scope: !2967, inlinedAt: !3973)
!3981 = !DILocation(line: 150, column: 24, scope: !2967, inlinedAt: !3973)
!3982 = !DILocation(line: 150, column: 6, scope: !2967, inlinedAt: !3973)
!3983 = !DILocation(line: 975, column: 10, scope: !3959)
!3984 = !DILocation(line: 976, column: 1, scope: !3959)
!3985 = !DILocation(line: 975, column: 3, scope: !3959)
!3986 = distinct !DISubprogram(name: "quotearg_char", scope: !759, file: !759, line: 979, type: !3987, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3989)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!94, !100, !4}
!3989 = !{!3990, !3991}
!3990 = !DILocalVariable(name: "arg", arg: 1, scope: !3986, file: !759, line: 979, type: !100)
!3991 = !DILocalVariable(name: "ch", arg: 2, scope: !3986, file: !759, line: 979, type: !4)
!3992 = !DILocation(line: 0, scope: !3986)
!3993 = !DILocation(line: 0, scope: !3959, inlinedAt: !3994)
!3994 = distinct !DILocation(line: 981, column: 10, scope: !3986)
!3995 = !DILocation(line: 972, column: 3, scope: !3959, inlinedAt: !3994)
!3996 = !DILocation(line: 972, column: 26, scope: !3959, inlinedAt: !3994)
!3997 = !DILocation(line: 973, column: 13, scope: !3959, inlinedAt: !3994)
!3998 = !DILocation(line: 0, scope: !2967, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 974, column: 3, scope: !3959, inlinedAt: !3994)
!4000 = !DILocation(line: 147, column: 41, scope: !2967, inlinedAt: !3999)
!4001 = !DILocation(line: 147, column: 62, scope: !2967, inlinedAt: !3999)
!4002 = !DILocation(line: 147, column: 57, scope: !2967, inlinedAt: !3999)
!4003 = !DILocation(line: 148, column: 15, scope: !2967, inlinedAt: !3999)
!4004 = !DILocation(line: 149, column: 21, scope: !2967, inlinedAt: !3999)
!4005 = !DILocation(line: 149, column: 24, scope: !2967, inlinedAt: !3999)
!4006 = !DILocation(line: 150, column: 19, scope: !2967, inlinedAt: !3999)
!4007 = !DILocation(line: 150, column: 24, scope: !2967, inlinedAt: !3999)
!4008 = !DILocation(line: 150, column: 6, scope: !2967, inlinedAt: !3999)
!4009 = !DILocation(line: 975, column: 10, scope: !3959, inlinedAt: !3994)
!4010 = !DILocation(line: 976, column: 1, scope: !3959, inlinedAt: !3994)
!4011 = !DILocation(line: 981, column: 3, scope: !3986)
!4012 = distinct !DISubprogram(name: "quotearg_colon", scope: !759, file: !759, line: 985, type: !1254, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4013)
!4013 = !{!4014}
!4014 = !DILocalVariable(name: "arg", arg: 1, scope: !4012, file: !759, line: 985, type: !100)
!4015 = !DILocation(line: 0, scope: !4012)
!4016 = !DILocation(line: 0, scope: !3986, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 987, column: 10, scope: !4012)
!4018 = !DILocation(line: 0, scope: !3959, inlinedAt: !4019)
!4019 = distinct !DILocation(line: 981, column: 10, scope: !3986, inlinedAt: !4017)
!4020 = !DILocation(line: 972, column: 3, scope: !3959, inlinedAt: !4019)
!4021 = !DILocation(line: 972, column: 26, scope: !3959, inlinedAt: !4019)
!4022 = !DILocation(line: 973, column: 13, scope: !3959, inlinedAt: !4019)
!4023 = !DILocation(line: 0, scope: !2967, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 974, column: 3, scope: !3959, inlinedAt: !4019)
!4025 = !DILocation(line: 147, column: 57, scope: !2967, inlinedAt: !4024)
!4026 = !DILocation(line: 149, column: 21, scope: !2967, inlinedAt: !4024)
!4027 = !DILocation(line: 150, column: 6, scope: !2967, inlinedAt: !4024)
!4028 = !DILocation(line: 975, column: 10, scope: !3959, inlinedAt: !4019)
!4029 = !DILocation(line: 976, column: 1, scope: !3959, inlinedAt: !4019)
!4030 = !DILocation(line: 987, column: 3, scope: !4012)
!4031 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !759, file: !759, line: 991, type: !3840, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4032)
!4032 = !{!4033, !4034}
!4033 = !DILocalVariable(name: "arg", arg: 1, scope: !4031, file: !759, line: 991, type: !100)
!4034 = !DILocalVariable(name: "argsize", arg: 2, scope: !4031, file: !759, line: 991, type: !97)
!4035 = !DILocation(line: 0, scope: !4031)
!4036 = !DILocation(line: 0, scope: !3959, inlinedAt: !4037)
!4037 = distinct !DILocation(line: 993, column: 10, scope: !4031)
!4038 = !DILocation(line: 972, column: 3, scope: !3959, inlinedAt: !4037)
!4039 = !DILocation(line: 972, column: 26, scope: !3959, inlinedAt: !4037)
!4040 = !DILocation(line: 973, column: 13, scope: !3959, inlinedAt: !4037)
!4041 = !DILocation(line: 0, scope: !2967, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 974, column: 3, scope: !3959, inlinedAt: !4037)
!4043 = !DILocation(line: 147, column: 57, scope: !2967, inlinedAt: !4042)
!4044 = !DILocation(line: 149, column: 21, scope: !2967, inlinedAt: !4042)
!4045 = !DILocation(line: 150, column: 6, scope: !2967, inlinedAt: !4042)
!4046 = !DILocation(line: 975, column: 10, scope: !3959, inlinedAt: !4037)
!4047 = !DILocation(line: 976, column: 1, scope: !3959, inlinedAt: !4037)
!4048 = !DILocation(line: 993, column: 3, scope: !4031)
!4049 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !759, file: !759, line: 997, type: !3851, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4050)
!4050 = !{!4051, !4052, !4053, !4054}
!4051 = !DILocalVariable(name: "n", arg: 1, scope: !4049, file: !759, line: 997, type: !63)
!4052 = !DILocalVariable(name: "s", arg: 2, scope: !4049, file: !759, line: 997, type: !411)
!4053 = !DILocalVariable(name: "arg", arg: 3, scope: !4049, file: !759, line: 997, type: !100)
!4054 = !DILocalVariable(name: "options", scope: !4049, file: !759, line: 999, type: !798)
!4055 = !DILocation(line: 185, column: 26, scope: !3866, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 1000, column: 13, scope: !4049)
!4057 = !DILocation(line: 0, scope: !4049)
!4058 = !DILocation(line: 999, column: 3, scope: !4049)
!4059 = !DILocation(line: 999, column: 26, scope: !4049)
!4060 = !DILocation(line: 0, scope: !3866, inlinedAt: !4056)
!4061 = !DILocation(line: 186, column: 13, scope: !3875, inlinedAt: !4056)
!4062 = !DILocation(line: 186, column: 7, scope: !3866, inlinedAt: !4056)
!4063 = !DILocation(line: 187, column: 5, scope: !3875, inlinedAt: !4056)
!4064 = !{!4065}
!4065 = distinct !{!4065, !4066, !"quoting_options_from_style: argument 0"}
!4066 = distinct !{!4066, !"quoting_options_from_style"}
!4067 = !DILocation(line: 1000, column: 13, scope: !4049)
!4068 = !DILocation(line: 0, scope: !2967, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 1001, column: 3, scope: !4049)
!4070 = !DILocation(line: 147, column: 57, scope: !2967, inlinedAt: !4069)
!4071 = !DILocation(line: 149, column: 21, scope: !2967, inlinedAt: !4069)
!4072 = !DILocation(line: 150, column: 6, scope: !2967, inlinedAt: !4069)
!4073 = !DILocation(line: 1002, column: 10, scope: !4049)
!4074 = !DILocation(line: 1003, column: 1, scope: !4049)
!4075 = !DILocation(line: 1002, column: 3, scope: !4049)
!4076 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !759, file: !759, line: 1006, type: !4077, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4079)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!94, !63, !100, !100, !100}
!4079 = !{!4080, !4081, !4082, !4083}
!4080 = !DILocalVariable(name: "n", arg: 1, scope: !4076, file: !759, line: 1006, type: !63)
!4081 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4076, file: !759, line: 1006, type: !100)
!4082 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4076, file: !759, line: 1007, type: !100)
!4083 = !DILocalVariable(name: "arg", arg: 4, scope: !4076, file: !759, line: 1007, type: !100)
!4084 = !DILocation(line: 0, scope: !4076)
!4085 = !DILocalVariable(name: "n", arg: 1, scope: !4086, file: !759, line: 1014, type: !63)
!4086 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !759, file: !759, line: 1014, type: !4087, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4089)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!94, !63, !100, !100, !100, !97}
!4089 = !{!4085, !4090, !4091, !4092, !4093, !4094}
!4090 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4086, file: !759, line: 1014, type: !100)
!4091 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4086, file: !759, line: 1015, type: !100)
!4092 = !DILocalVariable(name: "arg", arg: 4, scope: !4086, file: !759, line: 1016, type: !100)
!4093 = !DILocalVariable(name: "argsize", arg: 5, scope: !4086, file: !759, line: 1016, type: !97)
!4094 = !DILocalVariable(name: "o", scope: !4086, file: !759, line: 1018, type: !798)
!4095 = !DILocation(line: 0, scope: !4086, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 1009, column: 10, scope: !4076)
!4097 = !DILocation(line: 1018, column: 3, scope: !4086, inlinedAt: !4096)
!4098 = !DILocation(line: 1018, column: 26, scope: !4086, inlinedAt: !4096)
!4099 = !DILocation(line: 1018, column: 30, scope: !4086, inlinedAt: !4096)
!4100 = !DILocation(line: 0, scope: !3007, inlinedAt: !4101)
!4101 = distinct !DILocation(line: 1019, column: 3, scope: !4086, inlinedAt: !4096)
!4102 = !DILocation(line: 174, column: 12, scope: !3007, inlinedAt: !4101)
!4103 = !DILocation(line: 175, column: 8, scope: !3020, inlinedAt: !4101)
!4104 = !DILocation(line: 175, column: 19, scope: !3020, inlinedAt: !4101)
!4105 = !DILocation(line: 176, column: 5, scope: !3020, inlinedAt: !4101)
!4106 = !DILocation(line: 177, column: 6, scope: !3007, inlinedAt: !4101)
!4107 = !DILocation(line: 177, column: 17, scope: !3007, inlinedAt: !4101)
!4108 = !DILocation(line: 178, column: 6, scope: !3007, inlinedAt: !4101)
!4109 = !DILocation(line: 178, column: 18, scope: !3007, inlinedAt: !4101)
!4110 = !DILocation(line: 1020, column: 10, scope: !4086, inlinedAt: !4096)
!4111 = !DILocation(line: 1021, column: 1, scope: !4086, inlinedAt: !4096)
!4112 = !DILocation(line: 1009, column: 3, scope: !4076)
!4113 = !DILocation(line: 0, scope: !4086)
!4114 = !DILocation(line: 1018, column: 3, scope: !4086)
!4115 = !DILocation(line: 1018, column: 26, scope: !4086)
!4116 = !DILocation(line: 1018, column: 30, scope: !4086)
!4117 = !DILocation(line: 0, scope: !3007, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 1019, column: 3, scope: !4086)
!4119 = !DILocation(line: 174, column: 12, scope: !3007, inlinedAt: !4118)
!4120 = !DILocation(line: 175, column: 8, scope: !3020, inlinedAt: !4118)
!4121 = !DILocation(line: 175, column: 19, scope: !3020, inlinedAt: !4118)
!4122 = !DILocation(line: 176, column: 5, scope: !3020, inlinedAt: !4118)
!4123 = !DILocation(line: 177, column: 6, scope: !3007, inlinedAt: !4118)
!4124 = !DILocation(line: 177, column: 17, scope: !3007, inlinedAt: !4118)
!4125 = !DILocation(line: 178, column: 6, scope: !3007, inlinedAt: !4118)
!4126 = !DILocation(line: 178, column: 18, scope: !3007, inlinedAt: !4118)
!4127 = !DILocation(line: 1020, column: 10, scope: !4086)
!4128 = !DILocation(line: 1021, column: 1, scope: !4086)
!4129 = !DILocation(line: 1020, column: 3, scope: !4086)
!4130 = distinct !DISubprogram(name: "quotearg_custom", scope: !759, file: !759, line: 1024, type: !4131, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4133)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!94, !100, !100, !100}
!4133 = !{!4134, !4135, !4136}
!4134 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4130, file: !759, line: 1024, type: !100)
!4135 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4130, file: !759, line: 1024, type: !100)
!4136 = !DILocalVariable(name: "arg", arg: 3, scope: !4130, file: !759, line: 1025, type: !100)
!4137 = !DILocation(line: 0, scope: !4130)
!4138 = !DILocation(line: 0, scope: !4076, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 1027, column: 10, scope: !4130)
!4140 = !DILocation(line: 0, scope: !4086, inlinedAt: !4141)
!4141 = distinct !DILocation(line: 1009, column: 10, scope: !4076, inlinedAt: !4139)
!4142 = !DILocation(line: 1018, column: 3, scope: !4086, inlinedAt: !4141)
!4143 = !DILocation(line: 1018, column: 26, scope: !4086, inlinedAt: !4141)
!4144 = !DILocation(line: 1018, column: 30, scope: !4086, inlinedAt: !4141)
!4145 = !DILocation(line: 0, scope: !3007, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 1019, column: 3, scope: !4086, inlinedAt: !4141)
!4147 = !DILocation(line: 174, column: 12, scope: !3007, inlinedAt: !4146)
!4148 = !DILocation(line: 175, column: 8, scope: !3020, inlinedAt: !4146)
!4149 = !DILocation(line: 175, column: 19, scope: !3020, inlinedAt: !4146)
!4150 = !DILocation(line: 176, column: 5, scope: !3020, inlinedAt: !4146)
!4151 = !DILocation(line: 177, column: 6, scope: !3007, inlinedAt: !4146)
!4152 = !DILocation(line: 177, column: 17, scope: !3007, inlinedAt: !4146)
!4153 = !DILocation(line: 178, column: 6, scope: !3007, inlinedAt: !4146)
!4154 = !DILocation(line: 178, column: 18, scope: !3007, inlinedAt: !4146)
!4155 = !DILocation(line: 1020, column: 10, scope: !4086, inlinedAt: !4141)
!4156 = !DILocation(line: 1021, column: 1, scope: !4086, inlinedAt: !4141)
!4157 = !DILocation(line: 1027, column: 3, scope: !4130)
!4158 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !759, file: !759, line: 1031, type: !4159, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4161)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!94, !100, !100, !100, !97}
!4161 = !{!4162, !4163, !4164, !4165}
!4162 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4158, file: !759, line: 1031, type: !100)
!4163 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4158, file: !759, line: 1031, type: !100)
!4164 = !DILocalVariable(name: "arg", arg: 3, scope: !4158, file: !759, line: 1032, type: !100)
!4165 = !DILocalVariable(name: "argsize", arg: 4, scope: !4158, file: !759, line: 1032, type: !97)
!4166 = !DILocation(line: 0, scope: !4158)
!4167 = !DILocation(line: 0, scope: !4086, inlinedAt: !4168)
!4168 = distinct !DILocation(line: 1034, column: 10, scope: !4158)
!4169 = !DILocation(line: 1018, column: 3, scope: !4086, inlinedAt: !4168)
!4170 = !DILocation(line: 1018, column: 26, scope: !4086, inlinedAt: !4168)
!4171 = !DILocation(line: 1018, column: 30, scope: !4086, inlinedAt: !4168)
!4172 = !DILocation(line: 0, scope: !3007, inlinedAt: !4173)
!4173 = distinct !DILocation(line: 1019, column: 3, scope: !4086, inlinedAt: !4168)
!4174 = !DILocation(line: 174, column: 12, scope: !3007, inlinedAt: !4173)
!4175 = !DILocation(line: 175, column: 8, scope: !3020, inlinedAt: !4173)
!4176 = !DILocation(line: 175, column: 19, scope: !3020, inlinedAt: !4173)
!4177 = !DILocation(line: 176, column: 5, scope: !3020, inlinedAt: !4173)
!4178 = !DILocation(line: 177, column: 6, scope: !3007, inlinedAt: !4173)
!4179 = !DILocation(line: 177, column: 17, scope: !3007, inlinedAt: !4173)
!4180 = !DILocation(line: 178, column: 6, scope: !3007, inlinedAt: !4173)
!4181 = !DILocation(line: 178, column: 18, scope: !3007, inlinedAt: !4173)
!4182 = !DILocation(line: 1020, column: 10, scope: !4086, inlinedAt: !4168)
!4183 = !DILocation(line: 1021, column: 1, scope: !4086, inlinedAt: !4168)
!4184 = !DILocation(line: 1034, column: 3, scope: !4158)
!4185 = distinct !DISubprogram(name: "quote_n_mem", scope: !759, file: !759, line: 1049, type: !4186, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4188)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!100, !63, !100, !97}
!4188 = !{!4189, !4190, !4191}
!4189 = !DILocalVariable(name: "n", arg: 1, scope: !4185, file: !759, line: 1049, type: !63)
!4190 = !DILocalVariable(name: "arg", arg: 2, scope: !4185, file: !759, line: 1049, type: !100)
!4191 = !DILocalVariable(name: "argsize", arg: 3, scope: !4185, file: !759, line: 1049, type: !97)
!4192 = !DILocation(line: 0, scope: !4185)
!4193 = !DILocation(line: 1051, column: 10, scope: !4185)
!4194 = !DILocation(line: 1051, column: 3, scope: !4185)
!4195 = distinct !DISubprogram(name: "quote_mem", scope: !759, file: !759, line: 1055, type: !4196, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4198)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!100, !100, !97}
!4198 = !{!4199, !4200}
!4199 = !DILocalVariable(name: "arg", arg: 1, scope: !4195, file: !759, line: 1055, type: !100)
!4200 = !DILocalVariable(name: "argsize", arg: 2, scope: !4195, file: !759, line: 1055, type: !97)
!4201 = !DILocation(line: 0, scope: !4195)
!4202 = !DILocation(line: 0, scope: !4185, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 1057, column: 10, scope: !4195)
!4204 = !DILocation(line: 1051, column: 10, scope: !4185, inlinedAt: !4203)
!4205 = !DILocation(line: 1057, column: 3, scope: !4195)
!4206 = distinct !DISubprogram(name: "quote_n", scope: !759, file: !759, line: 1061, type: !4207, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4209)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!100, !63, !100}
!4209 = !{!4210, !4211}
!4210 = !DILocalVariable(name: "n", arg: 1, scope: !4206, file: !759, line: 1061, type: !63)
!4211 = !DILocalVariable(name: "arg", arg: 2, scope: !4206, file: !759, line: 1061, type: !100)
!4212 = !DILocation(line: 0, scope: !4206)
!4213 = !DILocation(line: 0, scope: !4185, inlinedAt: !4214)
!4214 = distinct !DILocation(line: 1063, column: 10, scope: !4206)
!4215 = !DILocation(line: 1051, column: 10, scope: !4185, inlinedAt: !4214)
!4216 = !DILocation(line: 1063, column: 3, scope: !4206)
!4217 = distinct !DISubprogram(name: "quote", scope: !759, file: !759, line: 1067, type: !4218, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4220)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!100, !100}
!4220 = !{!4221}
!4221 = !DILocalVariable(name: "arg", arg: 1, scope: !4217, file: !759, line: 1067, type: !100)
!4222 = !DILocation(line: 0, scope: !4217)
!4223 = !DILocation(line: 0, scope: !4206, inlinedAt: !4224)
!4224 = distinct !DILocation(line: 1069, column: 10, scope: !4217)
!4225 = !DILocation(line: 0, scope: !4185, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 1063, column: 10, scope: !4206, inlinedAt: !4224)
!4227 = !DILocation(line: 1051, column: 10, scope: !4185, inlinedAt: !4226)
!4228 = !DILocation(line: 1069, column: 3, scope: !4217)
!4229 = distinct !DISubprogram(name: "version_etc_arn", scope: !859, file: !859, line: 61, type: !4230, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !985, retainedNodes: !4267)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{null, !4232, !100, !100, !100, !4266, !97}
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !4234)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !4235)
!4235 = !{!4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4234, file: !153, line: 51, baseType: !63, size: 32)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4234, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4234, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4234, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4234, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4234, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4234, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4234, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4234, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4234, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4234, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4234, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4234, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4234, file: !153, line: 70, baseType: !4250, size: 64, offset: 832)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4234, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4234, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4234, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4234, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4234, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4234, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4234, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4234, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4234, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4234, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4234, file: !153, line: 93, baseType: !4250, size: 64, offset: 1344)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4234, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4234, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4234, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4234, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!4267 = !{!4268, !4269, !4270, !4271, !4272, !4273}
!4268 = !DILocalVariable(name: "stream", arg: 1, scope: !4229, file: !859, line: 61, type: !4232)
!4269 = !DILocalVariable(name: "command_name", arg: 2, scope: !4229, file: !859, line: 62, type: !100)
!4270 = !DILocalVariable(name: "package", arg: 3, scope: !4229, file: !859, line: 62, type: !100)
!4271 = !DILocalVariable(name: "version", arg: 4, scope: !4229, file: !859, line: 63, type: !100)
!4272 = !DILocalVariable(name: "authors", arg: 5, scope: !4229, file: !859, line: 64, type: !4266)
!4273 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4229, file: !859, line: 64, type: !97)
!4274 = !DILocation(line: 0, scope: !4229)
!4275 = !DILocation(line: 66, column: 7, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4229, file: !859, line: 66, column: 7)
!4277 = !DILocation(line: 66, column: 7, scope: !4229)
!4278 = !DILocation(line: 67, column: 5, scope: !4276)
!4279 = !DILocation(line: 69, column: 5, scope: !4276)
!4280 = !DILocation(line: 83, column: 3, scope: !4229)
!4281 = !DILocation(line: 85, column: 3, scope: !4229)
!4282 = !DILocation(line: 88, column: 3, scope: !4229)
!4283 = !DILocation(line: 95, column: 3, scope: !4229)
!4284 = !DILocation(line: 97, column: 3, scope: !4229)
!4285 = !DILocation(line: 105, column: 7, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4229, file: !859, line: 98, column: 5)
!4287 = !DILocation(line: 106, column: 7, scope: !4286)
!4288 = !DILocation(line: 109, column: 7, scope: !4286)
!4289 = !DILocation(line: 110, column: 7, scope: !4286)
!4290 = !DILocation(line: 113, column: 7, scope: !4286)
!4291 = !DILocation(line: 115, column: 7, scope: !4286)
!4292 = !DILocation(line: 120, column: 7, scope: !4286)
!4293 = !DILocation(line: 122, column: 7, scope: !4286)
!4294 = !DILocation(line: 127, column: 7, scope: !4286)
!4295 = !DILocation(line: 129, column: 7, scope: !4286)
!4296 = !DILocation(line: 134, column: 7, scope: !4286)
!4297 = !DILocation(line: 137, column: 7, scope: !4286)
!4298 = !DILocation(line: 142, column: 7, scope: !4286)
!4299 = !DILocation(line: 145, column: 7, scope: !4286)
!4300 = !DILocation(line: 150, column: 7, scope: !4286)
!4301 = !DILocation(line: 154, column: 7, scope: !4286)
!4302 = !DILocation(line: 159, column: 7, scope: !4286)
!4303 = !DILocation(line: 163, column: 7, scope: !4286)
!4304 = !DILocation(line: 170, column: 7, scope: !4286)
!4305 = !DILocation(line: 174, column: 7, scope: !4286)
!4306 = !DILocation(line: 176, column: 1, scope: !4229)
!4307 = distinct !DISubprogram(name: "version_etc_ar", scope: !859, file: !859, line: 183, type: !4308, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !985, retainedNodes: !4310)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{null, !4232, !100, !100, !100, !4266}
!4310 = !{!4311, !4312, !4313, !4314, !4315, !4316}
!4311 = !DILocalVariable(name: "stream", arg: 1, scope: !4307, file: !859, line: 183, type: !4232)
!4312 = !DILocalVariable(name: "command_name", arg: 2, scope: !4307, file: !859, line: 184, type: !100)
!4313 = !DILocalVariable(name: "package", arg: 3, scope: !4307, file: !859, line: 184, type: !100)
!4314 = !DILocalVariable(name: "version", arg: 4, scope: !4307, file: !859, line: 185, type: !100)
!4315 = !DILocalVariable(name: "authors", arg: 5, scope: !4307, file: !859, line: 185, type: !4266)
!4316 = !DILocalVariable(name: "n_authors", scope: !4307, file: !859, line: 187, type: !97)
!4317 = !DILocation(line: 0, scope: !4307)
!4318 = !DILocation(line: 189, column: 8, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4307, file: !859, line: 189, column: 3)
!4320 = !DILocation(line: 189, scope: !4319)
!4321 = !DILocation(line: 189, column: 23, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4319, file: !859, line: 189, column: 3)
!4323 = !DILocation(line: 189, column: 3, scope: !4319)
!4324 = !DILocation(line: 189, column: 52, scope: !4322)
!4325 = distinct !{!4325, !4323, !4326, !1174}
!4326 = !DILocation(line: 190, column: 5, scope: !4319)
!4327 = !DILocation(line: 191, column: 3, scope: !4307)
!4328 = !DILocation(line: 192, column: 1, scope: !4307)
!4329 = distinct !DISubprogram(name: "version_etc_va", scope: !859, file: !859, line: 199, type: !4330, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !985, retainedNodes: !4340)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{null, !4232, !100, !100, !100, !4332}
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4334)
!4334 = !{!4335, !4337, !4338, !4339}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4333, file: !4336, line: 192, baseType: !69, size: 32)
!4336 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4333, file: !4336, line: 192, baseType: !69, size: 32, offset: 32)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4333, file: !4336, line: 192, baseType: !95, size: 64, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4333, file: !4336, line: 192, baseType: !95, size: 64, offset: 128)
!4340 = !{!4341, !4342, !4343, !4344, !4345, !4346, !4347}
!4341 = !DILocalVariable(name: "stream", arg: 1, scope: !4329, file: !859, line: 199, type: !4232)
!4342 = !DILocalVariable(name: "command_name", arg: 2, scope: !4329, file: !859, line: 200, type: !100)
!4343 = !DILocalVariable(name: "package", arg: 3, scope: !4329, file: !859, line: 200, type: !100)
!4344 = !DILocalVariable(name: "version", arg: 4, scope: !4329, file: !859, line: 201, type: !100)
!4345 = !DILocalVariable(name: "authors", arg: 5, scope: !4329, file: !859, line: 201, type: !4332)
!4346 = !DILocalVariable(name: "n_authors", scope: !4329, file: !859, line: 203, type: !97)
!4347 = !DILocalVariable(name: "authtab", scope: !4329, file: !859, line: 204, type: !4348)
!4348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 640, elements: !50)
!4349 = !DILocation(line: 0, scope: !4329)
!4350 = !DILocation(line: 204, column: 3, scope: !4329)
!4351 = !DILocation(line: 204, column: 15, scope: !4329)
!4352 = !DILocation(line: 208, column: 35, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4354, file: !859, line: 206, column: 3)
!4354 = distinct !DILexicalBlock(scope: !4329, file: !859, line: 206, column: 3)
!4355 = !DILocation(line: 208, column: 33, scope: !4353)
!4356 = !DILocation(line: 208, column: 67, scope: !4353)
!4357 = !DILocation(line: 206, column: 3, scope: !4354)
!4358 = !DILocation(line: 208, column: 14, scope: !4353)
!4359 = !DILocation(line: 0, scope: !4354)
!4360 = !DILocation(line: 211, column: 3, scope: !4329)
!4361 = !DILocation(line: 213, column: 1, scope: !4329)
!4362 = distinct !DISubprogram(name: "version_etc", scope: !859, file: !859, line: 230, type: !4363, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !985, retainedNodes: !4365)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{null, !4232, !100, !100, !100, null}
!4365 = !{!4366, !4367, !4368, !4369, !4370}
!4366 = !DILocalVariable(name: "stream", arg: 1, scope: !4362, file: !859, line: 230, type: !4232)
!4367 = !DILocalVariable(name: "command_name", arg: 2, scope: !4362, file: !859, line: 231, type: !100)
!4368 = !DILocalVariable(name: "package", arg: 3, scope: !4362, file: !859, line: 231, type: !100)
!4369 = !DILocalVariable(name: "version", arg: 4, scope: !4362, file: !859, line: 232, type: !100)
!4370 = !DILocalVariable(name: "authors", scope: !4362, file: !859, line: 234, type: !4371)
!4371 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1122, line: 52, baseType: !4372)
!4372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2474, line: 14, baseType: !4373)
!4373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4336, baseType: !4374)
!4374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4333, size: 192, elements: !45)
!4375 = !DILocation(line: 0, scope: !4362)
!4376 = !DILocation(line: 234, column: 3, scope: !4362)
!4377 = !DILocation(line: 234, column: 11, scope: !4362)
!4378 = !DILocation(line: 235, column: 3, scope: !4362)
!4379 = !DILocation(line: 236, column: 3, scope: !4362)
!4380 = !DILocation(line: 237, column: 3, scope: !4362)
!4381 = !DILocation(line: 238, column: 1, scope: !4362)
!4382 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !859, file: !859, line: 241, type: !342, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !985, retainedNodes: !1066)
!4383 = !DILocation(line: 243, column: 3, scope: !4382)
!4384 = !DILocation(line: 248, column: 3, scope: !4382)
!4385 = !DILocation(line: 254, column: 3, scope: !4382)
!4386 = !DILocation(line: 259, column: 3, scope: !4382)
!4387 = !DILocation(line: 261, column: 1, scope: !4382)
!4388 = distinct !DISubprogram(name: "xnrealloc", scope: !4389, file: !4389, line: 147, type: !4390, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4392)
!4389 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!95, !95, !97, !97}
!4392 = !{!4393, !4394, !4395}
!4393 = !DILocalVariable(name: "p", arg: 1, scope: !4388, file: !4389, line: 147, type: !95)
!4394 = !DILocalVariable(name: "n", arg: 2, scope: !4388, file: !4389, line: 147, type: !97)
!4395 = !DILocalVariable(name: "s", arg: 3, scope: !4388, file: !4389, line: 147, type: !97)
!4396 = !DILocation(line: 0, scope: !4388)
!4397 = !DILocalVariable(name: "p", arg: 1, scope: !4398, file: !992, line: 83, type: !95)
!4398 = distinct !DISubprogram(name: "xreallocarray", scope: !992, file: !992, line: 83, type: !4390, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4399)
!4399 = !{!4397, !4400, !4401}
!4400 = !DILocalVariable(name: "n", arg: 2, scope: !4398, file: !992, line: 83, type: !97)
!4401 = !DILocalVariable(name: "s", arg: 3, scope: !4398, file: !992, line: 83, type: !97)
!4402 = !DILocation(line: 0, scope: !4398, inlinedAt: !4403)
!4403 = distinct !DILocation(line: 149, column: 10, scope: !4388)
!4404 = !DILocation(line: 85, column: 25, scope: !4398, inlinedAt: !4403)
!4405 = !DILocalVariable(name: "p", arg: 1, scope: !4406, file: !992, line: 37, type: !95)
!4406 = distinct !DISubprogram(name: "check_nonnull", scope: !992, file: !992, line: 37, type: !4407, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4409)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!95, !95}
!4409 = !{!4405}
!4410 = !DILocation(line: 0, scope: !4406, inlinedAt: !4411)
!4411 = distinct !DILocation(line: 85, column: 10, scope: !4398, inlinedAt: !4403)
!4412 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4411)
!4413 = distinct !DILexicalBlock(scope: !4406, file: !992, line: 39, column: 7)
!4414 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4411)
!4415 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4411)
!4416 = !DILocation(line: 149, column: 3, scope: !4388)
!4417 = !DILocation(line: 0, scope: !4398)
!4418 = !DILocation(line: 85, column: 25, scope: !4398)
!4419 = !DILocation(line: 0, scope: !4406, inlinedAt: !4420)
!4420 = distinct !DILocation(line: 85, column: 10, scope: !4398)
!4421 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4420)
!4422 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4420)
!4423 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4420)
!4424 = !DILocation(line: 85, column: 3, scope: !4398)
!4425 = distinct !DISubprogram(name: "xmalloc", scope: !992, file: !992, line: 47, type: !4426, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4428)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!95, !97}
!4428 = !{!4429}
!4429 = !DILocalVariable(name: "s", arg: 1, scope: !4425, file: !992, line: 47, type: !97)
!4430 = !DILocation(line: 0, scope: !4425)
!4431 = !DILocation(line: 49, column: 25, scope: !4425)
!4432 = !DILocation(line: 0, scope: !4406, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 49, column: 10, scope: !4425)
!4434 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4433)
!4435 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4433)
!4436 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4433)
!4437 = !DILocation(line: 49, column: 3, scope: !4425)
!4438 = !DISubprogram(name: "malloc", scope: !1252, file: !1252, line: 540, type: !4426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!4439 = distinct !DISubprogram(name: "ximalloc", scope: !992, file: !992, line: 53, type: !4440, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4442)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!95, !354}
!4442 = !{!4443}
!4443 = !DILocalVariable(name: "s", arg: 1, scope: !4439, file: !992, line: 53, type: !354)
!4444 = !DILocation(line: 0, scope: !4439)
!4445 = !DILocalVariable(name: "s", arg: 1, scope: !4446, file: !4447, line: 55, type: !354)
!4446 = distinct !DISubprogram(name: "imalloc", scope: !4447, file: !4447, line: 55, type: !4440, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4448)
!4447 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4448 = !{!4445}
!4449 = !DILocation(line: 0, scope: !4446, inlinedAt: !4450)
!4450 = distinct !DILocation(line: 55, column: 25, scope: !4439)
!4451 = !DILocation(line: 57, column: 26, scope: !4446, inlinedAt: !4450)
!4452 = !DILocation(line: 0, scope: !4406, inlinedAt: !4453)
!4453 = distinct !DILocation(line: 55, column: 10, scope: !4439)
!4454 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4453)
!4455 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4453)
!4456 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4453)
!4457 = !DILocation(line: 55, column: 3, scope: !4439)
!4458 = distinct !DISubprogram(name: "xcharalloc", scope: !992, file: !992, line: 59, type: !4459, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4461)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!94, !97}
!4461 = !{!4462}
!4462 = !DILocalVariable(name: "n", arg: 1, scope: !4458, file: !992, line: 59, type: !97)
!4463 = !DILocation(line: 0, scope: !4458)
!4464 = !DILocation(line: 0, scope: !4425, inlinedAt: !4465)
!4465 = distinct !DILocation(line: 61, column: 10, scope: !4458)
!4466 = !DILocation(line: 49, column: 25, scope: !4425, inlinedAt: !4465)
!4467 = !DILocation(line: 0, scope: !4406, inlinedAt: !4468)
!4468 = distinct !DILocation(line: 49, column: 10, scope: !4425, inlinedAt: !4465)
!4469 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4468)
!4470 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4468)
!4471 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4468)
!4472 = !DILocation(line: 61, column: 3, scope: !4458)
!4473 = distinct !DISubprogram(name: "xrealloc", scope: !992, file: !992, line: 68, type: !4474, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4476)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!95, !95, !97}
!4476 = !{!4477, !4478}
!4477 = !DILocalVariable(name: "p", arg: 1, scope: !4473, file: !992, line: 68, type: !95)
!4478 = !DILocalVariable(name: "s", arg: 2, scope: !4473, file: !992, line: 68, type: !97)
!4479 = !DILocation(line: 0, scope: !4473)
!4480 = !DILocalVariable(name: "ptr", arg: 1, scope: !4481, file: !4482, line: 2057, type: !95)
!4481 = distinct !DISubprogram(name: "rpl_realloc", scope: !4482, file: !4482, line: 2057, type: !4474, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4483)
!4482 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4483 = !{!4480, !4484}
!4484 = !DILocalVariable(name: "size", arg: 2, scope: !4481, file: !4482, line: 2057, type: !97)
!4485 = !DILocation(line: 0, scope: !4481, inlinedAt: !4486)
!4486 = distinct !DILocation(line: 70, column: 25, scope: !4473)
!4487 = !DILocation(line: 2059, column: 24, scope: !4481, inlinedAt: !4486)
!4488 = !DILocation(line: 2059, column: 10, scope: !4481, inlinedAt: !4486)
!4489 = !DILocation(line: 0, scope: !4406, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 70, column: 10, scope: !4473)
!4491 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4490)
!4492 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4490)
!4493 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4490)
!4494 = !DILocation(line: 70, column: 3, scope: !4473)
!4495 = !DISubprogram(name: "realloc", scope: !1252, file: !1252, line: 551, type: !4474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!4496 = distinct !DISubprogram(name: "xirealloc", scope: !992, file: !992, line: 74, type: !4497, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4499)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!95, !95, !354}
!4499 = !{!4500, !4501}
!4500 = !DILocalVariable(name: "p", arg: 1, scope: !4496, file: !992, line: 74, type: !95)
!4501 = !DILocalVariable(name: "s", arg: 2, scope: !4496, file: !992, line: 74, type: !354)
!4502 = !DILocation(line: 0, scope: !4496)
!4503 = !DILocalVariable(name: "p", arg: 1, scope: !4504, file: !4447, line: 66, type: !95)
!4504 = distinct !DISubprogram(name: "irealloc", scope: !4447, file: !4447, line: 66, type: !4497, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4505)
!4505 = !{!4503, !4506}
!4506 = !DILocalVariable(name: "s", arg: 2, scope: !4504, file: !4447, line: 66, type: !354)
!4507 = !DILocation(line: 0, scope: !4504, inlinedAt: !4508)
!4508 = distinct !DILocation(line: 76, column: 25, scope: !4496)
!4509 = !DILocation(line: 0, scope: !4481, inlinedAt: !4510)
!4510 = distinct !DILocation(line: 68, column: 26, scope: !4504, inlinedAt: !4508)
!4511 = !DILocation(line: 2059, column: 24, scope: !4481, inlinedAt: !4510)
!4512 = !DILocation(line: 2059, column: 10, scope: !4481, inlinedAt: !4510)
!4513 = !DILocation(line: 0, scope: !4406, inlinedAt: !4514)
!4514 = distinct !DILocation(line: 76, column: 10, scope: !4496)
!4515 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4514)
!4516 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4514)
!4517 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4514)
!4518 = !DILocation(line: 76, column: 3, scope: !4496)
!4519 = distinct !DISubprogram(name: "xireallocarray", scope: !992, file: !992, line: 89, type: !4520, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4522)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!95, !95, !354, !354}
!4522 = !{!4523, !4524, !4525}
!4523 = !DILocalVariable(name: "p", arg: 1, scope: !4519, file: !992, line: 89, type: !95)
!4524 = !DILocalVariable(name: "n", arg: 2, scope: !4519, file: !992, line: 89, type: !354)
!4525 = !DILocalVariable(name: "s", arg: 3, scope: !4519, file: !992, line: 89, type: !354)
!4526 = !DILocation(line: 0, scope: !4519)
!4527 = !DILocalVariable(name: "p", arg: 1, scope: !4528, file: !4447, line: 98, type: !95)
!4528 = distinct !DISubprogram(name: "ireallocarray", scope: !4447, file: !4447, line: 98, type: !4520, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4529)
!4529 = !{!4527, !4530, !4531}
!4530 = !DILocalVariable(name: "n", arg: 2, scope: !4528, file: !4447, line: 98, type: !354)
!4531 = !DILocalVariable(name: "s", arg: 3, scope: !4528, file: !4447, line: 98, type: !354)
!4532 = !DILocation(line: 0, scope: !4528, inlinedAt: !4533)
!4533 = distinct !DILocation(line: 91, column: 25, scope: !4519)
!4534 = !DILocation(line: 101, column: 13, scope: !4528, inlinedAt: !4533)
!4535 = !DILocation(line: 0, scope: !4406, inlinedAt: !4536)
!4536 = distinct !DILocation(line: 91, column: 10, scope: !4519)
!4537 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4536)
!4538 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4536)
!4539 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4536)
!4540 = !DILocation(line: 91, column: 3, scope: !4519)
!4541 = distinct !DISubprogram(name: "xnmalloc", scope: !992, file: !992, line: 98, type: !4542, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4544)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!95, !97, !97}
!4544 = !{!4545, !4546}
!4545 = !DILocalVariable(name: "n", arg: 1, scope: !4541, file: !992, line: 98, type: !97)
!4546 = !DILocalVariable(name: "s", arg: 2, scope: !4541, file: !992, line: 98, type: !97)
!4547 = !DILocation(line: 0, scope: !4541)
!4548 = !DILocation(line: 0, scope: !4398, inlinedAt: !4549)
!4549 = distinct !DILocation(line: 100, column: 10, scope: !4541)
!4550 = !DILocation(line: 85, column: 25, scope: !4398, inlinedAt: !4549)
!4551 = !DILocation(line: 0, scope: !4406, inlinedAt: !4552)
!4552 = distinct !DILocation(line: 85, column: 10, scope: !4398, inlinedAt: !4549)
!4553 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4552)
!4554 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4552)
!4555 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4552)
!4556 = !DILocation(line: 100, column: 3, scope: !4541)
!4557 = distinct !DISubprogram(name: "xinmalloc", scope: !992, file: !992, line: 104, type: !4558, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4560)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!95, !354, !354}
!4560 = !{!4561, !4562}
!4561 = !DILocalVariable(name: "n", arg: 1, scope: !4557, file: !992, line: 104, type: !354)
!4562 = !DILocalVariable(name: "s", arg: 2, scope: !4557, file: !992, line: 104, type: !354)
!4563 = !DILocation(line: 0, scope: !4557)
!4564 = !DILocation(line: 0, scope: !4519, inlinedAt: !4565)
!4565 = distinct !DILocation(line: 106, column: 10, scope: !4557)
!4566 = !DILocation(line: 0, scope: !4528, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 91, column: 25, scope: !4519, inlinedAt: !4565)
!4568 = !DILocation(line: 101, column: 13, scope: !4528, inlinedAt: !4567)
!4569 = !DILocation(line: 0, scope: !4406, inlinedAt: !4570)
!4570 = distinct !DILocation(line: 91, column: 10, scope: !4519, inlinedAt: !4565)
!4571 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4570)
!4572 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4570)
!4573 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4570)
!4574 = !DILocation(line: 106, column: 3, scope: !4557)
!4575 = distinct !DISubprogram(name: "x2realloc", scope: !992, file: !992, line: 116, type: !4576, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4578)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!95, !95, !998}
!4578 = !{!4579, !4580}
!4579 = !DILocalVariable(name: "p", arg: 1, scope: !4575, file: !992, line: 116, type: !95)
!4580 = !DILocalVariable(name: "ps", arg: 2, scope: !4575, file: !992, line: 116, type: !998)
!4581 = !DILocation(line: 0, scope: !4575)
!4582 = !DILocation(line: 0, scope: !995, inlinedAt: !4583)
!4583 = distinct !DILocation(line: 118, column: 10, scope: !4575)
!4584 = !DILocation(line: 178, column: 14, scope: !995, inlinedAt: !4583)
!4585 = !DILocation(line: 180, column: 9, scope: !4586, inlinedAt: !4583)
!4586 = distinct !DILexicalBlock(scope: !995, file: !992, line: 180, column: 7)
!4587 = !DILocation(line: 180, column: 7, scope: !995, inlinedAt: !4583)
!4588 = !DILocation(line: 182, column: 13, scope: !4589, inlinedAt: !4583)
!4589 = distinct !DILexicalBlock(scope: !4590, file: !992, line: 182, column: 11)
!4590 = distinct !DILexicalBlock(scope: !4586, file: !992, line: 181, column: 5)
!4591 = !DILocation(line: 182, column: 11, scope: !4590, inlinedAt: !4583)
!4592 = !DILocation(line: 197, column: 11, scope: !4593, inlinedAt: !4583)
!4593 = distinct !DILexicalBlock(scope: !4594, file: !992, line: 197, column: 11)
!4594 = distinct !DILexicalBlock(scope: !4586, file: !992, line: 195, column: 5)
!4595 = !DILocation(line: 197, column: 11, scope: !4594, inlinedAt: !4583)
!4596 = !DILocation(line: 198, column: 9, scope: !4593, inlinedAt: !4583)
!4597 = !DILocation(line: 0, scope: !4398, inlinedAt: !4598)
!4598 = distinct !DILocation(line: 201, column: 7, scope: !995, inlinedAt: !4583)
!4599 = !DILocation(line: 85, column: 25, scope: !4398, inlinedAt: !4598)
!4600 = !DILocation(line: 0, scope: !4406, inlinedAt: !4601)
!4601 = distinct !DILocation(line: 85, column: 10, scope: !4398, inlinedAt: !4598)
!4602 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4601)
!4603 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4601)
!4604 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4601)
!4605 = !DILocation(line: 202, column: 7, scope: !995, inlinedAt: !4583)
!4606 = !DILocation(line: 118, column: 3, scope: !4575)
!4607 = !DILocation(line: 0, scope: !995)
!4608 = !DILocation(line: 178, column: 14, scope: !995)
!4609 = !DILocation(line: 180, column: 9, scope: !4586)
!4610 = !DILocation(line: 180, column: 7, scope: !995)
!4611 = !DILocation(line: 182, column: 13, scope: !4589)
!4612 = !DILocation(line: 182, column: 11, scope: !4590)
!4613 = !DILocation(line: 190, column: 30, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4589, file: !992, line: 183, column: 9)
!4615 = !DILocation(line: 191, column: 16, scope: !4614)
!4616 = !DILocation(line: 191, column: 13, scope: !4614)
!4617 = !DILocation(line: 192, column: 9, scope: !4614)
!4618 = !DILocation(line: 197, column: 11, scope: !4593)
!4619 = !DILocation(line: 197, column: 11, scope: !4594)
!4620 = !DILocation(line: 198, column: 9, scope: !4593)
!4621 = !DILocation(line: 0, scope: !4398, inlinedAt: !4622)
!4622 = distinct !DILocation(line: 201, column: 7, scope: !995)
!4623 = !DILocation(line: 85, column: 25, scope: !4398, inlinedAt: !4622)
!4624 = !DILocation(line: 0, scope: !4406, inlinedAt: !4625)
!4625 = distinct !DILocation(line: 85, column: 10, scope: !4398, inlinedAt: !4622)
!4626 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4625)
!4627 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4625)
!4628 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4625)
!4629 = !DILocation(line: 202, column: 7, scope: !995)
!4630 = !DILocation(line: 203, column: 3, scope: !995)
!4631 = !DILocation(line: 0, scope: !1007)
!4632 = !DILocation(line: 230, column: 14, scope: !1007)
!4633 = !DILocation(line: 238, column: 7, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !1007, file: !992, line: 238, column: 7)
!4635 = !DILocation(line: 238, column: 7, scope: !1007)
!4636 = !DILocation(line: 240, column: 9, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !1007, file: !992, line: 240, column: 7)
!4638 = !DILocation(line: 240, column: 18, scope: !4637)
!4639 = !DILocation(line: 253, column: 8, scope: !1007)
!4640 = !DILocation(line: 258, column: 27, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4642, file: !992, line: 257, column: 5)
!4642 = distinct !DILexicalBlock(scope: !1007, file: !992, line: 256, column: 7)
!4643 = !DILocation(line: 259, column: 50, scope: !4641)
!4644 = !DILocation(line: 259, column: 32, scope: !4641)
!4645 = !DILocation(line: 260, column: 5, scope: !4641)
!4646 = !DILocation(line: 262, column: 9, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !1007, file: !992, line: 262, column: 7)
!4648 = !DILocation(line: 262, column: 7, scope: !1007)
!4649 = !DILocation(line: 263, column: 9, scope: !4647)
!4650 = !DILocation(line: 263, column: 5, scope: !4647)
!4651 = !DILocation(line: 264, column: 9, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !1007, file: !992, line: 264, column: 7)
!4653 = !DILocation(line: 264, column: 14, scope: !4652)
!4654 = !DILocation(line: 265, column: 7, scope: !4652)
!4655 = !DILocation(line: 265, column: 11, scope: !4652)
!4656 = !DILocation(line: 266, column: 11, scope: !4652)
!4657 = !DILocation(line: 267, column: 14, scope: !4652)
!4658 = !DILocation(line: 264, column: 7, scope: !1007)
!4659 = !DILocation(line: 268, column: 5, scope: !4652)
!4660 = !DILocation(line: 0, scope: !4473, inlinedAt: !4661)
!4661 = distinct !DILocation(line: 269, column: 8, scope: !1007)
!4662 = !DILocation(line: 0, scope: !4481, inlinedAt: !4663)
!4663 = distinct !DILocation(line: 70, column: 25, scope: !4473, inlinedAt: !4661)
!4664 = !DILocation(line: 2059, column: 24, scope: !4481, inlinedAt: !4663)
!4665 = !DILocation(line: 2059, column: 10, scope: !4481, inlinedAt: !4663)
!4666 = !DILocation(line: 0, scope: !4406, inlinedAt: !4667)
!4667 = distinct !DILocation(line: 70, column: 10, scope: !4473, inlinedAt: !4661)
!4668 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4667)
!4669 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4667)
!4670 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4667)
!4671 = !DILocation(line: 270, column: 7, scope: !1007)
!4672 = !DILocation(line: 271, column: 3, scope: !1007)
!4673 = distinct !DISubprogram(name: "xzalloc", scope: !992, file: !992, line: 279, type: !4426, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4674)
!4674 = !{!4675}
!4675 = !DILocalVariable(name: "s", arg: 1, scope: !4673, file: !992, line: 279, type: !97)
!4676 = !DILocation(line: 0, scope: !4673)
!4677 = !DILocalVariable(name: "n", arg: 1, scope: !4678, file: !992, line: 294, type: !97)
!4678 = distinct !DISubprogram(name: "xcalloc", scope: !992, file: !992, line: 294, type: !4542, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4679)
!4679 = !{!4677, !4680}
!4680 = !DILocalVariable(name: "s", arg: 2, scope: !4678, file: !992, line: 294, type: !97)
!4681 = !DILocation(line: 0, scope: !4678, inlinedAt: !4682)
!4682 = distinct !DILocation(line: 281, column: 10, scope: !4673)
!4683 = !DILocation(line: 296, column: 25, scope: !4678, inlinedAt: !4682)
!4684 = !DILocation(line: 0, scope: !4406, inlinedAt: !4685)
!4685 = distinct !DILocation(line: 296, column: 10, scope: !4678, inlinedAt: !4682)
!4686 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4685)
!4687 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4685)
!4688 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4685)
!4689 = !DILocation(line: 281, column: 3, scope: !4673)
!4690 = !DISubprogram(name: "calloc", scope: !1252, file: !1252, line: 543, type: !4542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!4691 = !DILocation(line: 0, scope: !4678)
!4692 = !DILocation(line: 296, column: 25, scope: !4678)
!4693 = !DILocation(line: 0, scope: !4406, inlinedAt: !4694)
!4694 = distinct !DILocation(line: 296, column: 10, scope: !4678)
!4695 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4694)
!4696 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4694)
!4697 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4694)
!4698 = !DILocation(line: 296, column: 3, scope: !4678)
!4699 = distinct !DISubprogram(name: "xizalloc", scope: !992, file: !992, line: 285, type: !4440, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4700)
!4700 = !{!4701}
!4701 = !DILocalVariable(name: "s", arg: 1, scope: !4699, file: !992, line: 285, type: !354)
!4702 = !DILocation(line: 0, scope: !4699)
!4703 = !DILocalVariable(name: "n", arg: 1, scope: !4704, file: !992, line: 300, type: !354)
!4704 = distinct !DISubprogram(name: "xicalloc", scope: !992, file: !992, line: 300, type: !4558, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4705)
!4705 = !{!4703, !4706}
!4706 = !DILocalVariable(name: "s", arg: 2, scope: !4704, file: !992, line: 300, type: !354)
!4707 = !DILocation(line: 0, scope: !4704, inlinedAt: !4708)
!4708 = distinct !DILocation(line: 287, column: 10, scope: !4699)
!4709 = !DILocalVariable(name: "n", arg: 1, scope: !4710, file: !4447, line: 77, type: !354)
!4710 = distinct !DISubprogram(name: "icalloc", scope: !4447, file: !4447, line: 77, type: !4558, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4711)
!4711 = !{!4709, !4712}
!4712 = !DILocalVariable(name: "s", arg: 2, scope: !4710, file: !4447, line: 77, type: !354)
!4713 = !DILocation(line: 0, scope: !4710, inlinedAt: !4714)
!4714 = distinct !DILocation(line: 302, column: 25, scope: !4704, inlinedAt: !4708)
!4715 = !DILocation(line: 91, column: 10, scope: !4710, inlinedAt: !4714)
!4716 = !DILocation(line: 0, scope: !4406, inlinedAt: !4717)
!4717 = distinct !DILocation(line: 302, column: 10, scope: !4704, inlinedAt: !4708)
!4718 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4717)
!4719 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4717)
!4720 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4717)
!4721 = !DILocation(line: 287, column: 3, scope: !4699)
!4722 = !DILocation(line: 0, scope: !4704)
!4723 = !DILocation(line: 0, scope: !4710, inlinedAt: !4724)
!4724 = distinct !DILocation(line: 302, column: 25, scope: !4704)
!4725 = !DILocation(line: 91, column: 10, scope: !4710, inlinedAt: !4724)
!4726 = !DILocation(line: 0, scope: !4406, inlinedAt: !4727)
!4727 = distinct !DILocation(line: 302, column: 10, scope: !4704)
!4728 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4727)
!4729 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4727)
!4730 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4727)
!4731 = !DILocation(line: 302, column: 3, scope: !4704)
!4732 = distinct !DISubprogram(name: "xmemdup", scope: !992, file: !992, line: 310, type: !4733, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4735)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!95, !1276, !97}
!4735 = !{!4736, !4737}
!4736 = !DILocalVariable(name: "p", arg: 1, scope: !4732, file: !992, line: 310, type: !1276)
!4737 = !DILocalVariable(name: "s", arg: 2, scope: !4732, file: !992, line: 310, type: !97)
!4738 = !DILocation(line: 0, scope: !4732)
!4739 = !DILocation(line: 0, scope: !4425, inlinedAt: !4740)
!4740 = distinct !DILocation(line: 312, column: 18, scope: !4732)
!4741 = !DILocation(line: 49, column: 25, scope: !4425, inlinedAt: !4740)
!4742 = !DILocation(line: 0, scope: !4406, inlinedAt: !4743)
!4743 = distinct !DILocation(line: 49, column: 10, scope: !4425, inlinedAt: !4740)
!4744 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4743)
!4745 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4743)
!4746 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4743)
!4747 = !DILocalVariable(name: "__dest", arg: 1, scope: !4748, file: !1385, line: 26, type: !4751)
!4748 = distinct !DISubprogram(name: "memcpy", scope: !1385, file: !1385, line: 26, type: !4749, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4752)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!95, !4751, !1275, !97}
!4751 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !95)
!4752 = !{!4747, !4753, !4754}
!4753 = !DILocalVariable(name: "__src", arg: 2, scope: !4748, file: !1385, line: 26, type: !1275)
!4754 = !DILocalVariable(name: "__len", arg: 3, scope: !4748, file: !1385, line: 26, type: !97)
!4755 = !DILocation(line: 0, scope: !4748, inlinedAt: !4756)
!4756 = distinct !DILocation(line: 312, column: 10, scope: !4732)
!4757 = !DILocation(line: 29, column: 10, scope: !4748, inlinedAt: !4756)
!4758 = !DILocation(line: 312, column: 3, scope: !4732)
!4759 = distinct !DISubprogram(name: "ximemdup", scope: !992, file: !992, line: 316, type: !4760, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4762)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!95, !1276, !354}
!4762 = !{!4763, !4764}
!4763 = !DILocalVariable(name: "p", arg: 1, scope: !4759, file: !992, line: 316, type: !1276)
!4764 = !DILocalVariable(name: "s", arg: 2, scope: !4759, file: !992, line: 316, type: !354)
!4765 = !DILocation(line: 0, scope: !4759)
!4766 = !DILocation(line: 0, scope: !4439, inlinedAt: !4767)
!4767 = distinct !DILocation(line: 318, column: 18, scope: !4759)
!4768 = !DILocation(line: 0, scope: !4446, inlinedAt: !4769)
!4769 = distinct !DILocation(line: 55, column: 25, scope: !4439, inlinedAt: !4767)
!4770 = !DILocation(line: 57, column: 26, scope: !4446, inlinedAt: !4769)
!4771 = !DILocation(line: 0, scope: !4406, inlinedAt: !4772)
!4772 = distinct !DILocation(line: 55, column: 10, scope: !4439, inlinedAt: !4767)
!4773 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4772)
!4774 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4772)
!4775 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4772)
!4776 = !DILocation(line: 0, scope: !4748, inlinedAt: !4777)
!4777 = distinct !DILocation(line: 318, column: 10, scope: !4759)
!4778 = !DILocation(line: 29, column: 10, scope: !4748, inlinedAt: !4777)
!4779 = !DILocation(line: 318, column: 3, scope: !4759)
!4780 = distinct !DISubprogram(name: "ximemdup0", scope: !992, file: !992, line: 325, type: !4781, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4783)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!94, !1276, !354}
!4783 = !{!4784, !4785, !4786}
!4784 = !DILocalVariable(name: "p", arg: 1, scope: !4780, file: !992, line: 325, type: !1276)
!4785 = !DILocalVariable(name: "s", arg: 2, scope: !4780, file: !992, line: 325, type: !354)
!4786 = !DILocalVariable(name: "result", scope: !4780, file: !992, line: 327, type: !94)
!4787 = !DILocation(line: 0, scope: !4780)
!4788 = !DILocation(line: 327, column: 30, scope: !4780)
!4789 = !DILocation(line: 0, scope: !4439, inlinedAt: !4790)
!4790 = distinct !DILocation(line: 327, column: 18, scope: !4780)
!4791 = !DILocation(line: 0, scope: !4446, inlinedAt: !4792)
!4792 = distinct !DILocation(line: 55, column: 25, scope: !4439, inlinedAt: !4790)
!4793 = !DILocation(line: 57, column: 26, scope: !4446, inlinedAt: !4792)
!4794 = !DILocation(line: 0, scope: !4406, inlinedAt: !4795)
!4795 = distinct !DILocation(line: 55, column: 10, scope: !4439, inlinedAt: !4790)
!4796 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4795)
!4797 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4795)
!4798 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4795)
!4799 = !DILocation(line: 328, column: 3, scope: !4780)
!4800 = !DILocation(line: 328, column: 13, scope: !4780)
!4801 = !DILocation(line: 0, scope: !4748, inlinedAt: !4802)
!4802 = distinct !DILocation(line: 329, column: 10, scope: !4780)
!4803 = !DILocation(line: 29, column: 10, scope: !4748, inlinedAt: !4802)
!4804 = !DILocation(line: 329, column: 3, scope: !4780)
!4805 = distinct !DISubprogram(name: "xstrdup", scope: !992, file: !992, line: 335, type: !1254, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4806)
!4806 = !{!4807}
!4807 = !DILocalVariable(name: "string", arg: 1, scope: !4805, file: !992, line: 335, type: !100)
!4808 = !DILocation(line: 0, scope: !4805)
!4809 = !DILocation(line: 337, column: 27, scope: !4805)
!4810 = !DILocation(line: 337, column: 43, scope: !4805)
!4811 = !DILocation(line: 0, scope: !4732, inlinedAt: !4812)
!4812 = distinct !DILocation(line: 337, column: 10, scope: !4805)
!4813 = !DILocation(line: 0, scope: !4425, inlinedAt: !4814)
!4814 = distinct !DILocation(line: 312, column: 18, scope: !4732, inlinedAt: !4812)
!4815 = !DILocation(line: 49, column: 25, scope: !4425, inlinedAt: !4814)
!4816 = !DILocation(line: 0, scope: !4406, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 49, column: 10, scope: !4425, inlinedAt: !4814)
!4818 = !DILocation(line: 39, column: 8, scope: !4413, inlinedAt: !4817)
!4819 = !DILocation(line: 39, column: 7, scope: !4406, inlinedAt: !4817)
!4820 = !DILocation(line: 40, column: 5, scope: !4413, inlinedAt: !4817)
!4821 = !DILocation(line: 0, scope: !4748, inlinedAt: !4822)
!4822 = distinct !DILocation(line: 312, column: 10, scope: !4732, inlinedAt: !4812)
!4823 = !DILocation(line: 29, column: 10, scope: !4748, inlinedAt: !4822)
!4824 = !DILocation(line: 337, column: 3, scope: !4805)
!4825 = distinct !DISubprogram(name: "xalloc_die", scope: !945, file: !945, line: 32, type: !342, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !4826)
!4826 = !{!4827}
!4827 = !DILocalVariable(name: "__errstatus", scope: !4828, file: !945, line: 34, type: !4829)
!4828 = distinct !DILexicalBlock(scope: !4825, file: !945, line: 34, column: 3)
!4829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!4830 = !DILocation(line: 34, column: 3, scope: !4828)
!4831 = !DILocation(line: 0, scope: !4828)
!4832 = !DILocation(line: 40, column: 3, scope: !4825)
!4833 = distinct !DISubprogram(name: "rpl_fopen", scope: !1025, file: !1025, line: 46, type: !4834, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4870)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!4836, !100, !100}
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !4838)
!4838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !4839)
!4839 = !{!4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4838, file: !153, line: 51, baseType: !63, size: 32)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4838, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4838, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4838, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4838, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4838, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4838, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4838, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4838, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4838, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4838, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4838, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4838, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4838, file: !153, line: 70, baseType: !4854, size: 64, offset: 832)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4838, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4838, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4838, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4838, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4838, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4838, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4838, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4838, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4838, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4838, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4838, file: !153, line: 93, baseType: !4854, size: 64, offset: 1344)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4838, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4838, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4838, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4838, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!4870 = !{!4871, !4872, !4873, !4874, !4875, !4876, !4880, !4882, !4883, !4888, !4891, !4892}
!4871 = !DILocalVariable(name: "filename", arg: 1, scope: !4833, file: !1025, line: 46, type: !100)
!4872 = !DILocalVariable(name: "mode", arg: 2, scope: !4833, file: !1025, line: 46, type: !100)
!4873 = !DILocalVariable(name: "open_direction", scope: !4833, file: !1025, line: 54, type: !63)
!4874 = !DILocalVariable(name: "open_flags", scope: !4833, file: !1025, line: 55, type: !63)
!4875 = !DILocalVariable(name: "open_flags_gnu", scope: !4833, file: !1025, line: 57, type: !103)
!4876 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4833, file: !1025, line: 59, type: !4877)
!4877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4878)
!4878 = !{!4879}
!4879 = !DISubrange(count: 81)
!4880 = !DILocalVariable(name: "p", scope: !4881, file: !1025, line: 62, type: !100)
!4881 = distinct !DILexicalBlock(scope: !4833, file: !1025, line: 61, column: 3)
!4882 = !DILocalVariable(name: "q", scope: !4881, file: !1025, line: 64, type: !94)
!4883 = !DILocalVariable(name: "len", scope: !4884, file: !1025, line: 128, type: !97)
!4884 = distinct !DILexicalBlock(scope: !4885, file: !1025, line: 127, column: 9)
!4885 = distinct !DILexicalBlock(scope: !4886, file: !1025, line: 68, column: 7)
!4886 = distinct !DILexicalBlock(scope: !4887, file: !1025, line: 67, column: 5)
!4887 = distinct !DILexicalBlock(scope: !4881, file: !1025, line: 67, column: 5)
!4888 = !DILocalVariable(name: "fd", scope: !4889, file: !1025, line: 199, type: !63)
!4889 = distinct !DILexicalBlock(scope: !4890, file: !1025, line: 198, column: 5)
!4890 = distinct !DILexicalBlock(scope: !4833, file: !1025, line: 197, column: 7)
!4891 = !DILocalVariable(name: "fp", scope: !4889, file: !1025, line: 204, type: !4836)
!4892 = !DILocalVariable(name: "saved_errno", scope: !4893, file: !1025, line: 207, type: !63)
!4893 = distinct !DILexicalBlock(scope: !4894, file: !1025, line: 206, column: 9)
!4894 = distinct !DILexicalBlock(scope: !4889, file: !1025, line: 205, column: 11)
!4895 = !DILocation(line: 0, scope: !4833)
!4896 = !DILocation(line: 59, column: 3, scope: !4833)
!4897 = !DILocation(line: 59, column: 8, scope: !4833)
!4898 = !DILocation(line: 0, scope: !4881)
!4899 = !DILocation(line: 67, column: 12, scope: !4886)
!4900 = !DILocation(line: 67, column: 15, scope: !4886)
!4901 = !DILocation(line: 67, column: 5, scope: !4887)
!4902 = !DILocation(line: 138, column: 8, scope: !4881)
!4903 = !DILocation(line: 197, column: 7, scope: !4833)
!4904 = !DILocation(line: 69, column: 9, scope: !4885)
!4905 = !DILocation(line: 74, column: 19, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4907, file: !1025, line: 74, column: 17)
!4907 = distinct !DILexicalBlock(scope: !4885, file: !1025, line: 70, column: 11)
!4908 = !DILocation(line: 74, column: 17, scope: !4907)
!4909 = !DILocation(line: 75, column: 17, scope: !4906)
!4910 = !DILocation(line: 75, column: 20, scope: !4906)
!4911 = !DILocation(line: 75, column: 15, scope: !4906)
!4912 = !DILocation(line: 80, column: 24, scope: !4907)
!4913 = !DILocation(line: 82, column: 19, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4907, file: !1025, line: 82, column: 17)
!4915 = !DILocation(line: 82, column: 17, scope: !4907)
!4916 = !DILocation(line: 83, column: 17, scope: !4914)
!4917 = !DILocation(line: 83, column: 20, scope: !4914)
!4918 = !DILocation(line: 83, column: 15, scope: !4914)
!4919 = !DILocation(line: 88, column: 24, scope: !4907)
!4920 = !DILocation(line: 90, column: 19, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4907, file: !1025, line: 90, column: 17)
!4922 = !DILocation(line: 90, column: 17, scope: !4907)
!4923 = !DILocation(line: 91, column: 17, scope: !4921)
!4924 = !DILocation(line: 91, column: 20, scope: !4921)
!4925 = !DILocation(line: 91, column: 15, scope: !4921)
!4926 = !DILocation(line: 100, column: 19, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4907, file: !1025, line: 100, column: 17)
!4928 = !DILocation(line: 100, column: 17, scope: !4907)
!4929 = !DILocation(line: 101, column: 17, scope: !4927)
!4930 = !DILocation(line: 101, column: 20, scope: !4927)
!4931 = !DILocation(line: 101, column: 15, scope: !4927)
!4932 = !DILocation(line: 107, column: 19, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4907, file: !1025, line: 107, column: 17)
!4934 = !DILocation(line: 107, column: 17, scope: !4907)
!4935 = !DILocation(line: 108, column: 17, scope: !4933)
!4936 = !DILocation(line: 108, column: 20, scope: !4933)
!4937 = !DILocation(line: 108, column: 15, scope: !4933)
!4938 = !DILocation(line: 113, column: 24, scope: !4907)
!4939 = !DILocation(line: 115, column: 13, scope: !4907)
!4940 = !DILocation(line: 117, column: 24, scope: !4907)
!4941 = !DILocation(line: 119, column: 13, scope: !4907)
!4942 = !DILocation(line: 128, column: 24, scope: !4884)
!4943 = !DILocation(line: 0, scope: !4884)
!4944 = !DILocation(line: 129, column: 48, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4884, file: !1025, line: 129, column: 15)
!4946 = !DILocation(line: 129, column: 15, scope: !4884)
!4947 = !DILocalVariable(name: "__dest", arg: 1, scope: !4948, file: !1385, line: 26, type: !4751)
!4948 = distinct !DISubprogram(name: "memcpy", scope: !1385, file: !1385, line: 26, type: !4749, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4949)
!4949 = !{!4947, !4950, !4951}
!4950 = !DILocalVariable(name: "__src", arg: 2, scope: !4948, file: !1385, line: 26, type: !1275)
!4951 = !DILocalVariable(name: "__len", arg: 3, scope: !4948, file: !1385, line: 26, type: !97)
!4952 = !DILocation(line: 0, scope: !4948, inlinedAt: !4953)
!4953 = distinct !DILocation(line: 131, column: 11, scope: !4884)
!4954 = !DILocation(line: 29, column: 10, scope: !4948, inlinedAt: !4953)
!4955 = !DILocation(line: 132, column: 13, scope: !4884)
!4956 = !DILocation(line: 135, column: 9, scope: !4885)
!4957 = !DILocation(line: 67, column: 25, scope: !4886)
!4958 = distinct !{!4958, !4901, !4959, !1174}
!4959 = !DILocation(line: 136, column: 7, scope: !4887)
!4960 = !DILocation(line: 197, column: 7, scope: !4890)
!4961 = !DILocation(line: 199, column: 47, scope: !4889)
!4962 = !DILocation(line: 199, column: 16, scope: !4889)
!4963 = !DILocation(line: 0, scope: !4889)
!4964 = !DILocation(line: 201, column: 14, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4889, file: !1025, line: 201, column: 11)
!4966 = !DILocation(line: 201, column: 11, scope: !4889)
!4967 = !DILocation(line: 204, column: 18, scope: !4889)
!4968 = !DILocation(line: 205, column: 14, scope: !4894)
!4969 = !DILocation(line: 205, column: 11, scope: !4889)
!4970 = !DILocation(line: 207, column: 29, scope: !4893)
!4971 = !DILocation(line: 0, scope: !4893)
!4972 = !DILocation(line: 208, column: 11, scope: !4893)
!4973 = !DILocation(line: 209, column: 17, scope: !4893)
!4974 = !DILocation(line: 210, column: 9, scope: !4893)
!4975 = !DILocalVariable(name: "filename", arg: 1, scope: !4976, file: !1025, line: 30, type: !100)
!4976 = distinct !DISubprogram(name: "orig_fopen", scope: !1025, file: !1025, line: 30, type: !4834, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4977)
!4977 = !{!4975, !4978}
!4978 = !DILocalVariable(name: "mode", arg: 2, scope: !4976, file: !1025, line: 30, type: !100)
!4979 = !DILocation(line: 0, scope: !4976, inlinedAt: !4980)
!4980 = distinct !DILocation(line: 219, column: 10, scope: !4833)
!4981 = !DILocation(line: 32, column: 10, scope: !4976, inlinedAt: !4980)
!4982 = !DILocation(line: 219, column: 3, scope: !4833)
!4983 = !DILocation(line: 220, column: 1, scope: !4833)
!4984 = !DISubprogram(name: "open", scope: !2461, file: !2461, line: 181, type: !4985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!63, !100, !63, null}
!4987 = !DISubprogram(name: "fdopen", scope: !1122, file: !1122, line: 293, type: !4988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!4836, !63, !100}
!4990 = !DISubprogram(name: "close", scope: !2326, file: !2326, line: 358, type: !1531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!4991 = !DISubprogram(name: "fopen", scope: !1122, file: !1122, line: 258, type: !4992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!4836, !1117, !1117}
!4994 = distinct !DISubprogram(name: "close_stream", scope: !1027, file: !1027, line: 55, type: !4995, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1026, retainedNodes: !5031)
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!63, !4997}
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !4999)
!4999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !5000)
!5000 = !{!5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4999, file: !153, line: 51, baseType: !63, size: 32)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4999, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4999, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4999, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4999, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4999, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4999, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4999, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4999, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4999, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4999, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4999, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4999, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4999, file: !153, line: 70, baseType: !5015, size: 64, offset: 832)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4999, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4999, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4999, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4999, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4999, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4999, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4999, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4999, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4999, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4999, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4999, file: !153, line: 93, baseType: !5015, size: 64, offset: 1344)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4999, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4999, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4999, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4999, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!5031 = !{!5032, !5033, !5035, !5036}
!5032 = !DILocalVariable(name: "stream", arg: 1, scope: !4994, file: !1027, line: 55, type: !4997)
!5033 = !DILocalVariable(name: "some_pending", scope: !4994, file: !1027, line: 57, type: !5034)
!5034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!5035 = !DILocalVariable(name: "prev_fail", scope: !4994, file: !1027, line: 58, type: !5034)
!5036 = !DILocalVariable(name: "fclose_fail", scope: !4994, file: !1027, line: 59, type: !5034)
!5037 = !DILocation(line: 0, scope: !4994)
!5038 = !DILocation(line: 57, column: 30, scope: !4994)
!5039 = !DILocalVariable(name: "__stream", arg: 1, scope: !5040, file: !1367, line: 135, type: !4997)
!5040 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1367, file: !1367, line: 135, type: !4995, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1026, retainedNodes: !5041)
!5041 = !{!5039}
!5042 = !DILocation(line: 0, scope: !5040, inlinedAt: !5043)
!5043 = distinct !DILocation(line: 58, column: 27, scope: !4994)
!5044 = !DILocation(line: 137, column: 10, scope: !5040, inlinedAt: !5043)
!5045 = !DILocation(line: 58, column: 43, scope: !4994)
!5046 = !DILocation(line: 59, column: 29, scope: !4994)
!5047 = !DILocation(line: 59, column: 45, scope: !4994)
!5048 = !DILocation(line: 69, column: 17, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !4994, file: !1027, line: 69, column: 7)
!5050 = !DILocation(line: 57, column: 50, scope: !4994)
!5051 = !DILocation(line: 69, column: 33, scope: !5049)
!5052 = !DILocation(line: 69, column: 53, scope: !5049)
!5053 = !DILocation(line: 69, column: 59, scope: !5049)
!5054 = !DILocation(line: 69, column: 7, scope: !4994)
!5055 = !DILocation(line: 71, column: 11, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5049, file: !1027, line: 70, column: 5)
!5057 = !DILocation(line: 72, column: 9, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5056, file: !1027, line: 71, column: 11)
!5059 = !DILocation(line: 72, column: 15, scope: !5058)
!5060 = !DILocation(line: 77, column: 1, scope: !4994)
!5061 = !DISubprogram(name: "__fpending", scope: !2669, file: !2669, line: 75, type: !5062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!5062 = !DISubroutineType(types: !5063)
!5063 = !{!97, !4997}
!5064 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !952, file: !952, line: 100, type: !5065, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5068)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{!97, !1653, !100, !97, !5067}
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!5068 = !{!5069, !5070, !5071, !5072, !5073}
!5069 = !DILocalVariable(name: "pwc", arg: 1, scope: !5064, file: !952, line: 100, type: !1653)
!5070 = !DILocalVariable(name: "s", arg: 2, scope: !5064, file: !952, line: 100, type: !100)
!5071 = !DILocalVariable(name: "n", arg: 3, scope: !5064, file: !952, line: 100, type: !97)
!5072 = !DILocalVariable(name: "ps", arg: 4, scope: !5064, file: !952, line: 100, type: !5067)
!5073 = !DILocalVariable(name: "ret", scope: !5064, file: !952, line: 130, type: !97)
!5074 = !DILocation(line: 0, scope: !5064)
!5075 = !DILocation(line: 105, column: 9, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5064, file: !952, line: 105, column: 7)
!5077 = !DILocation(line: 105, column: 7, scope: !5064)
!5078 = !DILocation(line: 117, column: 10, scope: !5079)
!5079 = distinct !DILexicalBlock(scope: !5064, file: !952, line: 117, column: 7)
!5080 = !DILocation(line: 117, column: 7, scope: !5064)
!5081 = !DILocation(line: 130, column: 16, scope: !5064)
!5082 = !DILocation(line: 135, column: 11, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5064, file: !952, line: 135, column: 7)
!5084 = !DILocation(line: 135, column: 25, scope: !5083)
!5085 = !DILocation(line: 135, column: 30, scope: !5083)
!5086 = !DILocation(line: 135, column: 7, scope: !5064)
!5087 = !DILocalVariable(name: "ps", arg: 1, scope: !5088, file: !2908, line: 1135, type: !5067)
!5088 = distinct !DISubprogram(name: "mbszero", scope: !2908, file: !2908, line: 1135, type: !5089, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5091)
!5089 = !DISubroutineType(types: !5090)
!5090 = !{null, !5067}
!5091 = !{!5087}
!5092 = !DILocation(line: 0, scope: !5088, inlinedAt: !5093)
!5093 = distinct !DILocation(line: 137, column: 5, scope: !5083)
!5094 = !DILocalVariable(name: "__dest", arg: 1, scope: !5095, file: !1385, line: 57, type: !95)
!5095 = distinct !DISubprogram(name: "memset", scope: !1385, file: !1385, line: 57, type: !2917, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5096)
!5096 = !{!5094, !5097, !5098}
!5097 = !DILocalVariable(name: "__ch", arg: 2, scope: !5095, file: !1385, line: 57, type: !63)
!5098 = !DILocalVariable(name: "__len", arg: 3, scope: !5095, file: !1385, line: 57, type: !97)
!5099 = !DILocation(line: 0, scope: !5095, inlinedAt: !5100)
!5100 = distinct !DILocation(line: 1137, column: 3, scope: !5088, inlinedAt: !5093)
!5101 = !DILocation(line: 59, column: 10, scope: !5095, inlinedAt: !5100)
!5102 = !DILocation(line: 137, column: 5, scope: !5083)
!5103 = !DILocation(line: 138, column: 11, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5064, file: !952, line: 138, column: 7)
!5105 = !DILocation(line: 138, column: 7, scope: !5064)
!5106 = !DILocation(line: 139, column: 5, scope: !5104)
!5107 = !DILocation(line: 143, column: 26, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5064, file: !952, line: 143, column: 7)
!5109 = !DILocation(line: 143, column: 41, scope: !5108)
!5110 = !DILocation(line: 143, column: 7, scope: !5064)
!5111 = !DILocation(line: 145, column: 15, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5113, file: !952, line: 145, column: 11)
!5113 = distinct !DILexicalBlock(scope: !5108, file: !952, line: 144, column: 5)
!5114 = !DILocation(line: 145, column: 11, scope: !5113)
!5115 = !DILocation(line: 146, column: 32, scope: !5112)
!5116 = !DILocation(line: 146, column: 16, scope: !5112)
!5117 = !DILocation(line: 146, column: 14, scope: !5112)
!5118 = !DILocation(line: 146, column: 9, scope: !5112)
!5119 = !DILocation(line: 286, column: 1, scope: !5064)
!5120 = !DISubprogram(name: "mbsinit", scope: !1670, file: !1670, line: 293, type: !5121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1066)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!63, !5123}
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !958)
!5125 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1029, file: !1029, line: 27, type: !4390, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !5126)
!5126 = !{!5127, !5128, !5129, !5130}
!5127 = !DILocalVariable(name: "ptr", arg: 1, scope: !5125, file: !1029, line: 27, type: !95)
!5128 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5125, file: !1029, line: 27, type: !97)
!5129 = !DILocalVariable(name: "size", arg: 3, scope: !5125, file: !1029, line: 27, type: !97)
!5130 = !DILocalVariable(name: "nbytes", scope: !5125, file: !1029, line: 29, type: !97)
!5131 = !DILocation(line: 0, scope: !5125)
!5132 = !DILocation(line: 30, column: 7, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5125, file: !1029, line: 30, column: 7)
!5134 = !DILocalVariable(name: "ptr", arg: 1, scope: !5135, file: !4482, line: 2057, type: !95)
!5135 = distinct !DISubprogram(name: "rpl_realloc", scope: !4482, file: !4482, line: 2057, type: !4474, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !5136)
!5136 = !{!5134, !5137}
!5137 = !DILocalVariable(name: "size", arg: 2, scope: !5135, file: !4482, line: 2057, type: !97)
!5138 = !DILocation(line: 0, scope: !5135, inlinedAt: !5139)
!5139 = distinct !DILocation(line: 37, column: 10, scope: !5125)
!5140 = !DILocation(line: 2059, column: 24, scope: !5135, inlinedAt: !5139)
!5141 = !DILocation(line: 2059, column: 10, scope: !5135, inlinedAt: !5139)
!5142 = !DILocation(line: 37, column: 3, scope: !5125)
!5143 = !DILocation(line: 32, column: 7, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5133, file: !1029, line: 31, column: 5)
!5145 = !DILocation(line: 32, column: 13, scope: !5144)
!5146 = !DILocation(line: 33, column: 7, scope: !5144)
!5147 = !DILocation(line: 38, column: 1, scope: !5125)
!5148 = distinct !DISubprogram(name: "hard_locale", scope: !970, file: !970, line: 28, type: !1840, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !5149)
!5149 = !{!5150, !5151}
!5150 = !DILocalVariable(name: "category", arg: 1, scope: !5148, file: !970, line: 28, type: !63)
!5151 = !DILocalVariable(name: "locale", scope: !5148, file: !970, line: 30, type: !5152)
!5152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5153)
!5153 = !{!5154}
!5154 = !DISubrange(count: 257)
!5155 = !DILocation(line: 0, scope: !5148)
!5156 = !DILocation(line: 30, column: 3, scope: !5148)
!5157 = !DILocation(line: 30, column: 8, scope: !5148)
!5158 = !DILocation(line: 32, column: 7, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5148, file: !970, line: 32, column: 7)
!5160 = !DILocation(line: 32, column: 7, scope: !5148)
!5161 = !DILocalVariable(name: "__s1", arg: 1, scope: !5162, file: !1140, line: 1359, type: !100)
!5162 = distinct !DISubprogram(name: "streq", scope: !1140, file: !1140, line: 1359, type: !1141, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !5163)
!5163 = !{!5161, !5164}
!5164 = !DILocalVariable(name: "__s2", arg: 2, scope: !5162, file: !1140, line: 1359, type: !100)
!5165 = !DILocation(line: 0, scope: !5162, inlinedAt: !5166)
!5166 = distinct !DILocation(line: 35, column: 9, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5148, file: !970, line: 35, column: 7)
!5168 = !DILocation(line: 1361, column: 11, scope: !5162, inlinedAt: !5166)
!5169 = !DILocation(line: 35, column: 29, scope: !5167)
!5170 = !DILocation(line: 0, scope: !5162, inlinedAt: !5171)
!5171 = distinct !DILocation(line: 35, column: 32, scope: !5167)
!5172 = !DILocation(line: 1361, column: 11, scope: !5162, inlinedAt: !5171)
!5173 = !DILocation(line: 1361, column: 10, scope: !5162, inlinedAt: !5171)
!5174 = !DILocation(line: 35, column: 7, scope: !5148)
!5175 = !DILocation(line: 46, column: 3, scope: !5148)
!5176 = !DILocation(line: 47, column: 1, scope: !5148)
!5177 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1036, file: !1036, line: 154, type: !5178, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1035, retainedNodes: !5180)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!63, !63, !94, !97}
!5180 = !{!5181, !5182, !5183}
!5181 = !DILocalVariable(name: "category", arg: 1, scope: !5177, file: !1036, line: 154, type: !63)
!5182 = !DILocalVariable(name: "buf", arg: 2, scope: !5177, file: !1036, line: 154, type: !94)
!5183 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5177, file: !1036, line: 154, type: !97)
!5184 = !DILocation(line: 0, scope: !5177)
!5185 = !DILocation(line: 159, column: 10, scope: !5177)
!5186 = !DILocation(line: 159, column: 3, scope: !5177)
!5187 = distinct !DISubprogram(name: "setlocale_null", scope: !1036, file: !1036, line: 186, type: !5188, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1035, retainedNodes: !5190)
!5188 = !DISubroutineType(types: !5189)
!5189 = !{!100, !63}
!5190 = !{!5191}
!5191 = !DILocalVariable(name: "category", arg: 1, scope: !5187, file: !1036, line: 186, type: !63)
!5192 = !DILocation(line: 0, scope: !5187)
!5193 = !DILocation(line: 189, column: 10, scope: !5187)
!5194 = !DILocation(line: 189, column: 3, scope: !5187)
!5195 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1038, file: !1038, line: 35, type: !5188, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !5196)
!5196 = !{!5197, !5198}
!5197 = !DILocalVariable(name: "category", arg: 1, scope: !5195, file: !1038, line: 35, type: !63)
!5198 = !DILocalVariable(name: "result", scope: !5195, file: !1038, line: 37, type: !100)
!5199 = !DILocation(line: 0, scope: !5195)
!5200 = !DILocation(line: 37, column: 24, scope: !5195)
!5201 = !DILocation(line: 62, column: 3, scope: !5195)
!5202 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1038, file: !1038, line: 66, type: !5178, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !5203)
!5203 = !{!5204, !5205, !5206, !5207, !5208}
!5204 = !DILocalVariable(name: "category", arg: 1, scope: !5202, file: !1038, line: 66, type: !63)
!5205 = !DILocalVariable(name: "buf", arg: 2, scope: !5202, file: !1038, line: 66, type: !94)
!5206 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5202, file: !1038, line: 66, type: !97)
!5207 = !DILocalVariable(name: "result", scope: !5202, file: !1038, line: 111, type: !100)
!5208 = !DILocalVariable(name: "length", scope: !5209, file: !1038, line: 125, type: !97)
!5209 = distinct !DILexicalBlock(scope: !5210, file: !1038, line: 124, column: 5)
!5210 = distinct !DILexicalBlock(scope: !5202, file: !1038, line: 113, column: 7)
!5211 = !DILocation(line: 0, scope: !5202)
!5212 = !DILocation(line: 0, scope: !5195, inlinedAt: !5213)
!5213 = distinct !DILocation(line: 111, column: 24, scope: !5202)
!5214 = !DILocation(line: 37, column: 24, scope: !5195, inlinedAt: !5213)
!5215 = !DILocation(line: 113, column: 14, scope: !5210)
!5216 = !DILocation(line: 113, column: 7, scope: !5202)
!5217 = !DILocation(line: 116, column: 19, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5219, file: !1038, line: 116, column: 11)
!5219 = distinct !DILexicalBlock(scope: !5210, file: !1038, line: 114, column: 5)
!5220 = !DILocation(line: 116, column: 11, scope: !5219)
!5221 = !DILocation(line: 120, column: 16, scope: !5218)
!5222 = !DILocation(line: 120, column: 9, scope: !5218)
!5223 = !DILocation(line: 125, column: 23, scope: !5209)
!5224 = !DILocation(line: 0, scope: !5209)
!5225 = !DILocation(line: 126, column: 18, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5209, file: !1038, line: 126, column: 11)
!5227 = !DILocation(line: 126, column: 11, scope: !5209)
!5228 = !DILocation(line: 128, column: 39, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5226, file: !1038, line: 127, column: 9)
!5230 = !DILocalVariable(name: "__dest", arg: 1, scope: !5231, file: !1385, line: 26, type: !4751)
!5231 = distinct !DISubprogram(name: "memcpy", scope: !1385, file: !1385, line: 26, type: !4749, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !5232)
!5232 = !{!5230, !5233, !5234}
!5233 = !DILocalVariable(name: "__src", arg: 2, scope: !5231, file: !1385, line: 26, type: !1275)
!5234 = !DILocalVariable(name: "__len", arg: 3, scope: !5231, file: !1385, line: 26, type: !97)
!5235 = !DILocation(line: 0, scope: !5231, inlinedAt: !5236)
!5236 = distinct !DILocation(line: 128, column: 11, scope: !5229)
!5237 = !DILocation(line: 29, column: 10, scope: !5231, inlinedAt: !5236)
!5238 = !DILocation(line: 129, column: 11, scope: !5229)
!5239 = !DILocation(line: 133, column: 23, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5241, file: !1038, line: 133, column: 15)
!5241 = distinct !DILexicalBlock(scope: !5226, file: !1038, line: 132, column: 9)
!5242 = !DILocation(line: 133, column: 15, scope: !5241)
!5243 = !DILocation(line: 138, column: 44, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5240, file: !1038, line: 134, column: 13)
!5245 = !DILocation(line: 0, scope: !5231, inlinedAt: !5246)
!5246 = distinct !DILocation(line: 138, column: 15, scope: !5244)
!5247 = !DILocation(line: 29, column: 10, scope: !5231, inlinedAt: !5246)
!5248 = !DILocation(line: 139, column: 15, scope: !5244)
!5249 = !DILocation(line: 139, column: 32, scope: !5244)
!5250 = !DILocation(line: 140, column: 13, scope: !5244)
!5251 = !DILocation(line: 0, scope: !5210)
!5252 = !DILocation(line: 145, column: 1, scope: !5202)
