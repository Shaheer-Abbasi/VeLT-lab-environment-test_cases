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
@expand.line_in = internal global [262144 x i8] zeroinitializer, align 4, !dbg !339
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
@stdin_argv = internal global [2 x ptr] [ptr @.str.6.34, ptr null], align 8, !dbg !561
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !671
@.str.64 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !663
@.str.1.65 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !665
@.str.2.66 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !667
@.str.3.67 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !669
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !673
@stderr = external local_unnamed_addr global ptr, align 8
@.str.68 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !679
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !716
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !681
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !797
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !811
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !849
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !856
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !813
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !858
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !801
@.str.10.111 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !818
@.str.11.109 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !820
@.str.12.112 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !822
@.str.13.110 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !824
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !826
@.str.119 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !862
@.str.1.120 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !865
@.str.2.121 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !867
@.str.3.122 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !869
@.str.4.123 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !871
@.str.5.124 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !873
@.str.6.125 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !878
@.str.7.126 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !881
@.str.8.127 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !883
@.str.9.128 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !885
@.str.10.129 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !887
@.str.11.130 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !892
@.str.12.131 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !897
@.str.13.132 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !899
@.str.14.133 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !904
@.str.15.134 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !909
@.str.16.135 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !914
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.140 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !919
@.str.18.141 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !921
@.str.19.142 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !923
@.str.20.143 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !925
@.str.21.144 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !927
@.str.22.145 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !929
@.str.23.146 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !931
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !936
@exit_failure = dso_local global i32 1, align 4, !dbg !942
@.str.161 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !948
@.str.1.159 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !951
@.str.2.160 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !953
@.str.168 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !955
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !958
@.str.173 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !973
@.str.1.174 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !976

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1052 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1056, metadata !DIExpression()), !dbg !1057
  %2 = icmp eq i32 %0, 0, !dbg !1058
  br i1 %2, label %8, label %3, !dbg !1060

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1061, !tbaa !1063
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !1061
  %6 = load ptr, ptr @program_name, align 8, !dbg !1061, !tbaa !1063
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !1061
  br label %39, !dbg !1061

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !1067
  %10 = load ptr, ptr @program_name, align 8, !dbg !1067, !tbaa !1063
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !1067
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !1069
  %13 = load ptr, ptr @stdout, align 8, !dbg !1069, !tbaa !1063
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1069
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #37, !dbg !1070
  %16 = load ptr, ptr @stdout, align 8, !dbg !1070, !tbaa !1063
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1070
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #37, !dbg !1074
  %19 = load ptr, ptr @stdout, align 8, !dbg !1074, !tbaa !1063
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !1074
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !1077
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1077
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !1078
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1078
  tail call void @emit_tab_list_info(ptr noundef nonnull @.str.3) #37, !dbg !1079
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !1080
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1080
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !1081
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1081
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1082, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1094, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata ptr poison, metadata !1094, metadata !DIExpression()), !dbg !1099
  tail call void @emit_bug_reporting_address() #37, !dbg !1101
  %25 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !1102
  call void @llvm.dbg.value(metadata ptr %25, metadata !1097, metadata !DIExpression()), !dbg !1099
  %26 = icmp eq ptr %25, null, !dbg !1103
  br i1 %26, label %34, label %27, !dbg !1105

27:                                               ; preds = %8
  %28 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(4) @.str.45, i64 noundef 3) #38, !dbg !1106
  %29 = icmp eq i32 %28, 0, !dbg !1106
  br i1 %29, label %34, label %30, !dbg !1107

30:                                               ; preds = %27
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #37, !dbg !1108
  %32 = load ptr, ptr @stdout, align 8, !dbg !1108, !tbaa !1063
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !1108
  br label %34, !dbg !1110

34:                                               ; preds = %8, %27, %30
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1094, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1098, metadata !DIExpression()), !dbg !1099
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #37, !dbg !1111
  %36 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %35, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3) #37, !dbg !1111
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #37, !dbg !1112
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.49) #37, !dbg !1112
  br label %39

39:                                               ; preds = %34, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !1113
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
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !127 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !131, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata ptr %0, metadata !132, metadata !DIExpression()), !dbg !1130
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1131, !tbaa !1132
  %3 = icmp eq i32 %2, -1, !dbg !1134
  br i1 %3, label %4, label %16, !dbg !1135

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #37, !dbg !1136
  call void @llvm.dbg.value(metadata ptr %5, metadata !133, metadata !DIExpression()), !dbg !1137
  %6 = icmp eq ptr %5, null, !dbg !1138
  br i1 %6, label %14, label %7, !dbg !1139

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1140, !tbaa !1141
  %9 = icmp eq i8 %8, 0, !dbg !1140
  br i1 %9, label %14, label %10, !dbg !1142

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1143, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !1149, metadata !DIExpression()), !dbg !1150
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.16) #38, !dbg !1152
  %12 = icmp eq i32 %11, 0, !dbg !1153
  %13 = zext i1 %12 to i32, !dbg !1142
  br label %14, !dbg !1142

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1154, !tbaa !1132
  br label %16, !dbg !1155

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1156
  %18 = icmp eq i32 %17, 0, !dbg !1156
  br i1 %18, label %22, label %19, !dbg !1158

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1159, !tbaa !1063
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1159
  br label %122, !dbg !1161

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !136, metadata !DIExpression()), !dbg !1130
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.17) #38, !dbg !1162
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1163
  call void @llvm.dbg.value(metadata ptr %24, metadata !137, metadata !DIExpression()), !dbg !1130
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !1164
  call void @llvm.dbg.value(metadata ptr %25, metadata !138, metadata !DIExpression()), !dbg !1130
  %26 = icmp eq ptr %25, null, !dbg !1165
  br i1 %26, label %54, label %27, !dbg !1166

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1167
  br i1 %28, label %54, label %29, !dbg !1168

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !139, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i64 0, metadata !143, metadata !DIExpression()), !dbg !1169
  %30 = icmp ult ptr %24, %25, !dbg !1170
  br i1 %30, label %31, label %52, !dbg !1171

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !1130
  %33 = load ptr, ptr %32, align 8, !tbaa !1063
  br label %34, !dbg !1171

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !139, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i64 %36, metadata !143, metadata !DIExpression()), !dbg !1169
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1172
  call void @llvm.dbg.value(metadata ptr %37, metadata !139, metadata !DIExpression()), !dbg !1169
  %38 = load i8, ptr %35, align 1, !dbg !1172, !tbaa !1141
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1172
  %41 = load i16, ptr %40, align 2, !dbg !1172, !tbaa !1173
  %42 = freeze i16 %41, !dbg !1175
  %43 = lshr i16 %42, 13, !dbg !1175
  %44 = and i16 %43, 1, !dbg !1175
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1176
  call void @llvm.dbg.value(metadata i64 %46, metadata !143, metadata !DIExpression()), !dbg !1169
  %47 = icmp ult ptr %37, %25, !dbg !1170
  %48 = icmp ult i64 %46, 2, !dbg !1177
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1177
  br i1 %49, label %34, label %50, !dbg !1171, !llvm.loop !1178

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1180
  br i1 %51, label %52, label %54, !dbg !1182

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1182

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !1130
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !136, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata ptr %55, metadata !138, metadata !DIExpression()), !dbg !1130
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.18) #38, !dbg !1183
  call void @llvm.dbg.value(metadata i64 %57, metadata !144, metadata !DIExpression()), !dbg !1130
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1184
  call void @llvm.dbg.value(metadata ptr %58, metadata !145, metadata !DIExpression()), !dbg !1130
  br label %59, !dbg !1185

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !1130
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !136, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata ptr %60, metadata !145, metadata !DIExpression()), !dbg !1130
  %62 = load i8, ptr %60, align 1, !dbg !1186, !tbaa !1141
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !1187

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1188
  %65 = load i8, ptr %64, align 1, !dbg !1191, !tbaa !1141
  %66 = icmp ne i8 %65, 45, !dbg !1192
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1193
  br label %68, !dbg !1193

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !136, metadata !DIExpression()), !dbg !1130
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !1194
  %71 = load ptr, ptr %70, align 8, !dbg !1194, !tbaa !1063
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1194
  %74 = load i16, ptr %73, align 2, !dbg !1194, !tbaa !1173
  %75 = and i16 %74, 8192, !dbg !1194
  %76 = icmp eq i16 %75, 0, !dbg !1194
  br i1 %76, label %90, label %77, !dbg !1196

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1197
  br i1 %78, label %92, label %79, !dbg !1200

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1201
  %81 = load i8, ptr %80, align 1, !dbg !1201, !tbaa !1141
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1201
  %84 = load i16, ptr %83, align 2, !dbg !1201, !tbaa !1173
  %85 = and i16 %84, 8192, !dbg !1201
  %86 = icmp eq i16 %85, 0, !dbg !1201
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1202
  br i1 %89, label %90, label %92, !dbg !1202

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1203
  call void @llvm.dbg.value(metadata ptr %91, metadata !145, metadata !DIExpression()), !dbg !1130
  br label %59, !dbg !1185, !llvm.loop !1204

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1206
  %94 = load ptr, ptr @stdout, align 8, !dbg !1206, !tbaa !1063
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1206
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1143, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1143, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1143, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1143, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1143, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1143, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1143, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1143, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1143, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !202, metadata !DIExpression()), !dbg !1130
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #38, !dbg !1227
  %97 = icmp eq i32 %96, 0, !dbg !1227
  br i1 %97, label %101, label %98, !dbg !1229

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.33, i64 noundef 9) #38, !dbg !1230
  %100 = icmp eq i32 %99, 0, !dbg !1230
  br i1 %100, label %101, label %104, !dbg !1231

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1232
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #37, !dbg !1232
  br label %107, !dbg !1234

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1235
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #37, !dbg !1235
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1237, !tbaa !1063
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %108), !dbg !1237
  %110 = load ptr, ptr @stdout, align 8, !dbg !1238, !tbaa !1063
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %110), !dbg !1238
  %112 = ptrtoint ptr %60 to i64, !dbg !1239
  %113 = sub i64 %112, %93, !dbg !1239
  %114 = load ptr, ptr @stdout, align 8, !dbg !1239, !tbaa !1063
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1239
  %116 = load ptr, ptr @stdout, align 8, !dbg !1240, !tbaa !1063
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %116), !dbg !1240
  %118 = load ptr, ptr @stdout, align 8, !dbg !1241, !tbaa !1063
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %118), !dbg !1241
  %120 = load ptr, ptr @stdout, align 8, !dbg !1242, !tbaa !1063
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1242
  br label %122, !dbg !1243

122:                                              ; preds = %107, %19
  ret void, !dbg !1243
}

; Function Attrs: nounwind
declare !dbg !1244 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1248 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1252 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1254 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1257 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1260 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1263 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1266 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1272 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1273 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1279 {
  %3 = alloca %struct.__mbstate_t, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca [2 x i8], align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1283, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata ptr %1, metadata !1284, metadata !DIExpression()), !dbg !1291
  %8 = load ptr, ptr %1, align 8, !dbg !1292, !tbaa !1063
  tail call void @set_program_name(ptr noundef %8) #37, !dbg !1293
  %9 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #37, !dbg !1294
  %10 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #37, !dbg !1295
  %11 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #37, !dbg !1296
  %12 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1297
  store i8 1, ptr @convert_entire_line, align 1, !dbg !1298, !tbaa !1299
  %13 = getelementptr inbounds [2 x i8], ptr %7, i64 0, i64 1
  br label %14, !dbg !1301

14:                                               ; preds = %24, %2
  %15 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @shortopts, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1302
  call void @llvm.dbg.value(metadata i32 %15, metadata !1285, metadata !DIExpression()), !dbg !1291
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
  ], !dbg !1301

16:                                               ; preds = %14
  store i8 0, ptr @convert_entire_line, align 1, !dbg !1303, !tbaa !1299
  br label %24, !dbg !1304

17:                                               ; preds = %14
  %18 = load ptr, ptr @optarg, align 8, !dbg !1305, !tbaa !1063
  call void @parse_tab_stops(ptr noundef %18) #37, !dbg !1306
  br label %24, !dbg !1307

19:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %20 = load ptr, ptr @optarg, align 8, !dbg !1308, !tbaa !1063
  %21 = icmp eq ptr %20, null, !dbg !1308
  br i1 %21, label %25, label %22, !dbg !1309

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %20, i64 -1, !dbg !1310
  call void @parse_tab_stops(ptr noundef nonnull %23) #37, !dbg !1311
  br label %24, !dbg !1311

24:                                               ; preds = %22, %25, %17, %16
  br label %14, !dbg !1302, !llvm.loop !1312

25:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #37, !dbg !1314
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1286, metadata !DIExpression()), !dbg !1315
  %26 = trunc i32 %15 to i8, !dbg !1316
  store i8 %26, ptr %7, align 4, !dbg !1317, !tbaa !1141
  store i8 0, ptr %13, align 1, !dbg !1318, !tbaa !1141
  call void @parse_tab_stops(ptr noundef nonnull %7) #37, !dbg !1319
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #37, !dbg !1320
  br label %24

27:                                               ; preds = %14
  call void @usage(i32 noundef 0) #41, !dbg !1321
  unreachable, !dbg !1321

28:                                               ; preds = %14
  %29 = load ptr, ptr @stdout, align 8, !dbg !1322, !tbaa !1063
  %30 = load ptr, ptr @Version, align 8, !dbg !1322, !tbaa !1063
  %31 = call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #37, !dbg !1322
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef %30, ptr noundef %31, ptr noundef null) #37, !dbg !1322
  call void @exit(i32 noundef 0) #39, !dbg !1322
  unreachable, !dbg !1322

32:                                               ; preds = %14
  call void @usage(i32 noundef 1) #41, !dbg !1323
  unreachable, !dbg !1323

33:                                               ; preds = %14
  call void @finalize_tab_stops() #37, !dbg !1324
  %34 = load i32, ptr @optind, align 4, !dbg !1325, !tbaa !1132
  %35 = icmp slt i32 %34, %0, !dbg !1326
  %36 = sext i32 %34 to i64, !dbg !1325
  %37 = getelementptr inbounds ptr, ptr %1, i64 %36, !dbg !1325
  %38 = select i1 %35, ptr %37, ptr null, !dbg !1325
  call void @set_file_list(ptr noundef %38) #37, !dbg !1327
  %39 = call ptr @next_file(ptr noundef null) #37, !dbg !1328
  call void @llvm.dbg.value(metadata ptr %39, metadata !345, metadata !DIExpression()), !dbg !1330
  %40 = icmp eq ptr %39, null, !dbg !1331
  br i1 %40, label %297, label %41, !dbg !1333

41:                                               ; preds = %33, %295
  %42 = phi i64 [ %180, %295 ], [ 0, %33 ], !dbg !1330
  %43 = phi i64 [ %181, %295 ], [ 0, %33 ], !dbg !1330
  %44 = phi ptr [ %185, %295 ], [ %39, %33 ], !dbg !1334
  %45 = phi ptr [ %186, %295 ], [ %39, %33 ], !dbg !1330
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata ptr %44, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 262144, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %43, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %42, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata ptr %45, metadata !345, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 1, metadata !371, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i64 0, metadata !372, metadata !DIExpression()), !dbg !1345
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !1346
  call void @llvm.dbg.value(metadata i64 0, metadata !378, metadata !DIExpression()), !dbg !1345
  store i64 0, ptr %5, align 8, !dbg !1347, !tbaa !1348
  br label %46, !dbg !1350

46:                                               ; preds = %291, %41
  %47 = phi i64 [ %42, %41 ], [ %180, %291 ], !dbg !1330
  %48 = phi i64 [ %43, %41 ], [ %181, %291 ], !dbg !1330
  %49 = phi ptr [ %44, %41 ], [ %185, %291 ], !dbg !1334
  %50 = phi i64 [ 0, %41 ], [ %292, %291 ], !dbg !1345
  %51 = phi i1 [ true, %41 ], [ %293, %291 ]
  %52 = phi ptr [ %45, %41 ], [ %186, %291 ], !dbg !1330
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata ptr %49, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 262144, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %48, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %47, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata ptr %52, metadata !345, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 poison, metadata !371, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %50, metadata !372, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata ptr %49, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 262144, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %48, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %47, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata ptr %52, metadata !345, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata ptr undef, metadata !1351, metadata !DIExpression()), !dbg !1361
  %53 = sub nsw i64 %47, %48, !dbg !1363
  call void @llvm.dbg.value(metadata i64 %53, metadata !1356, metadata !DIExpression()), !dbg !1361
  %54 = icmp slt i64 %53, 4, !dbg !1364
  br i1 %54, label %55, label %75, !dbg !1365

55:                                               ; preds = %46
  call void @llvm.dbg.value(metadata ptr %49, metadata !1366, metadata !DIExpression()), !dbg !1372
  %56 = load i32, ptr %49, align 8, !dbg !1374, !tbaa !1375
  %57 = and i32 %56, 16, !dbg !1377
  %58 = icmp eq i32 %57, 0, !dbg !1377
  br i1 %58, label %59, label %70, !dbg !1378

59:                                               ; preds = %55
  %60 = icmp sgt i64 %53, 0, !dbg !1379
  br i1 %60, label %61, label %64, !dbg !1381

61:                                               ; preds = %59
  %62 = getelementptr inbounds i8, ptr @expand.line_in, i64 %48, !dbg !1382
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !1384, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata ptr %62, metadata !1390, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %53, metadata !1391, metadata !DIExpression()), !dbg !1392
  %63 = call ptr @__memmove_chk(ptr noundef nonnull @expand.line_in, ptr noundef nonnull %62, i64 noundef %53, i64 noundef 262144) #37, !dbg !1394
  call void @llvm.dbg.value(metadata i64 %53, metadata !1357, metadata !DIExpression()), !dbg !1395
  br label %64

64:                                               ; preds = %61, %59
  %65 = phi i64 [ %53, %61 ], [ 0, %59 ], !dbg !1396
  call void @llvm.dbg.value(metadata i64 %65, metadata !1357, metadata !DIExpression()), !dbg !1395
  %66 = getelementptr inbounds i8, ptr @expand.line_in, i64 %65, !dbg !1397
  %67 = sub nuw nsw i64 262144, %65, !dbg !1397
  %68 = call i64 @fread_unlocked(ptr noundef nonnull %66, i64 noundef 1, i64 noundef %67, ptr noundef nonnull %49), !dbg !1397
  %69 = add i64 %68, %65, !dbg !1398
  call void @llvm.dbg.value(metadata i64 %69, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %69, metadata !1356, metadata !DIExpression()), !dbg !1361
  br label %70, !dbg !1399

70:                                               ; preds = %64, %55
  %71 = phi i64 [ %69, %64 ], [ %47, %55 ], !dbg !1330
  %72 = phi i64 [ 0, %64 ], [ %48, %55 ], !dbg !1330
  %73 = phi i64 [ %69, %64 ], [ %53, %55 ], !dbg !1361
  call void @llvm.dbg.value(metadata i64 %72, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %71, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %73, metadata !1356, metadata !DIExpression()), !dbg !1361
  %74 = icmp slt i64 %73, 1, !dbg !1400
  br i1 %74, label %121, label %75, !dbg !1402

75:                                               ; preds = %70, %46
  %76 = phi i64 [ %71, %70 ], [ %47, %46 ], !dbg !1330
  %77 = phi i64 [ %72, %70 ], [ %48, %46 ], !dbg !1330
  call void @llvm.dbg.value(metadata i64 %77, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %76, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1330
  %78 = getelementptr inbounds i8, ptr @expand.line_in, i64 %77, !dbg !1403
  call void @llvm.dbg.value(metadata ptr %78, metadata !1404, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1409, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1424
  %79 = load i8, ptr %78, align 1, !dbg !1426, !tbaa !1141
  call void @llvm.dbg.value(metadata i8 %79, metadata !1410, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i8 %79, metadata !1427, metadata !DIExpression()), !dbg !1432
  %80 = icmp sgt i8 %79, -1, !dbg !1435
  br i1 %80, label %102, label %81, !dbg !1436

81:                                               ; preds = %75
  call void @llvm.dbg.value(metadata !DIArgList(ptr @expand.line_in, i64 %76), metadata !1409, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1424
  %82 = getelementptr inbounds i8, ptr @expand.line_in, i64 %76, !dbg !1437
  call void @llvm.dbg.value(metadata ptr %82, metadata !1409, metadata !DIExpression()), !dbg !1424
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #37, !dbg !1438
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1411, metadata !DIExpression()), !dbg !1439
  store i32 0, ptr %3, align 4, !dbg !1440, !tbaa !1441
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #37, !dbg !1443
  %83 = ptrtoint ptr %82 to i64, !dbg !1444
  %84 = ptrtoint ptr %78 to i64, !dbg !1444
  %85 = sub i64 %83, %84, !dbg !1444
  call void @llvm.dbg.value(metadata ptr %4, metadata !1422, metadata !DIExpression(DW_OP_deref)), !dbg !1424
  %86 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %78, i64 noundef %85, ptr noundef nonnull %3) #37, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %86, metadata !1423, metadata !DIExpression()), !dbg !1424
  %87 = icmp slt i64 %86, 0, !dbg !1446
  br i1 %87, label %96, label %88, !dbg !1448, !prof !1449

88:                                               ; preds = %81
  %89 = load i32, ptr %4, align 4, !dbg !1450, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 %89, metadata !1422, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i32 %89, metadata !1451, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %86, metadata !1456, metadata !DIExpression()), !dbg !1457
  %90 = icmp ne i64 %86, 0, !dbg !1459
  call void @llvm.assume(i1 %90), !dbg !1459
  %91 = icmp ult i64 %86, 5, !dbg !1460
  call void @llvm.assume(i1 %91), !dbg !1460
  %92 = icmp ult i32 %89, 1114112, !dbg !1461
  call void @llvm.assume(i1 %92), !dbg !1461
  %93 = shl nuw nsw i64 %86, 40, !dbg !1462
  %94 = zext i32 %89 to i64, !dbg !1462
  %95 = or i64 %93, %94, !dbg !1462
  br label %100, !dbg !1463

96:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i8 %79, metadata !1464, metadata !DIExpression()), !dbg !1469
  %97 = zext i8 %79 to i64, !dbg !1471
  %98 = shl nuw nsw i64 %97, 32, !dbg !1471
  %99 = or i64 %98, 1099511627776, !dbg !1471
  br label %100, !dbg !1472

100:                                              ; preds = %96, %88
  %101 = phi i64 [ %99, %96 ], [ %95, %88 ], !dbg !1424
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #37, !dbg !1473
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #37, !dbg !1473
  br label %105

102:                                              ; preds = %75
  call void @llvm.dbg.value(metadata i64 1, metadata !1456, metadata !DIExpression()), !dbg !1474
  %103 = zext i8 %79 to i64, !dbg !1476
  call void @llvm.dbg.value(metadata i64 %103, metadata !1451, metadata !DIExpression()), !dbg !1474
  %104 = or i64 %103, 1099511627776, !dbg !1476
  br label %105, !dbg !1477

105:                                              ; preds = %102, %100
  %106 = phi i64 [ %104, %102 ], [ %101, %100 ], !dbg !1424
  call void @llvm.dbg.value(metadata i64 %106, metadata !1360, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %106, metadata !1360, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %106, metadata !1360, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %106, metadata !1360, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1361
  %107 = and i64 %106, 1095216660480, !dbg !1478
  %108 = icmp eq i64 %107, 0, !dbg !1478
  br i1 %108, label %112, label %109, !dbg !1480

109:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i64 %77, metadata !346, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1330
  %110 = load i8, ptr %78, align 1, !dbg !1481, !tbaa !1141
  %111 = zext i8 %110 to i64, !dbg !1483
  call void @llvm.dbg.value(metadata i8 %110, metadata !1360, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1361
  br label %114

112:                                              ; preds = %105
  %113 = lshr i64 %106, 40, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %113, metadata !1360, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %106, metadata !1360, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1361
  call void @llvm.dbg.value(metadata !DIArgList(i64 %77, i64 %113), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1330
  br label %114, !dbg !1485

114:                                              ; preds = %112, %109
  %115 = phi i64 [ %113, %112 ], [ 1, %109 ]
  %116 = phi i64 [ %106, %112 ], [ %111, %109 ], !dbg !1361
  %117 = add nsw i64 %115, %77, !dbg !1486
  call void @llvm.dbg.value(metadata i64 %117, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i32 poison, metadata !1360, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1361
  %118 = and i64 %106, -4294967296, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %76, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i16 poison, metadata !1360, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1361
  call void @llvm.dbg.value(metadata i32 poison, metadata !1360, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1361
  call void @llvm.dbg.value(metadata i8 poison, metadata !1360, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1361
  call void @llvm.dbg.value(metadata i8 poison, metadata !1360, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %116, metadata !359, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %118, metadata !359, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %118, metadata !359, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1345
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !359, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1345
  %119 = and i64 %116, 4294967295, !dbg !1488
  %120 = icmp eq i64 %119, 4294967295, !dbg !1488
  br i1 %120, label %121, label %179, !dbg !1489

121:                                              ; preds = %114, %70
  %122 = phi i64 [ %118, %114 ], [ 0, %70 ]
  %123 = phi i64 [ %116, %114 ], [ 4294967295, %70 ]
  %124 = phi i64 [ %117, %114 ], [ %72, %70 ]
  %125 = phi i64 [ %76, %114 ], [ %71, %70 ]
  %126 = call ptr @next_file(ptr noundef %52) #37, !dbg !1490
  call void @llvm.dbg.value(metadata ptr %126, metadata !345, metadata !DIExpression()), !dbg !1330
  %127 = icmp eq ptr %126, null, !dbg !1489
  br i1 %127, label %179, label %128, !dbg !1491

128:                                              ; preds = %121, %172
  %129 = phi ptr [ %177, %172 ], [ %126, %121 ], !dbg !1330
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata ptr %129, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 262144, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata ptr %129, metadata !345, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata ptr undef, metadata !1351, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i64 0, metadata !1356, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata ptr %129, metadata !1366, metadata !DIExpression()), !dbg !1372
  %130 = load i32, ptr %129, align 8, !dbg !1374, !tbaa !1375
  %131 = and i32 %130, 16, !dbg !1377
  %132 = icmp eq i32 %131, 0, !dbg !1377
  br i1 %132, label %133, label %172, !dbg !1378

133:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 0, metadata !1357, metadata !DIExpression()), !dbg !1395
  %134 = call i64 @fread_unlocked(ptr noundef nonnull @expand.line_in, i64 noundef 1, i64 noundef 262144, ptr noundef nonnull %129), !dbg !1397
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %134, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %134, metadata !1356, metadata !DIExpression()), !dbg !1361
  %135 = icmp slt i64 %134, 1, !dbg !1400
  br i1 %135, label %172, label %136, !dbg !1402

136:                                              ; preds = %133
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %134, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !1404, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1409, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1424
  %137 = load i8, ptr @expand.line_in, align 4, !dbg !1426, !tbaa !1141
  call void @llvm.dbg.value(metadata i8 %137, metadata !1410, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i8 %137, metadata !1427, metadata !DIExpression()), !dbg !1432
  %138 = icmp sgt i8 %137, -1, !dbg !1435
  br i1 %138, label %139, label %142, !dbg !1436

139:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i64 1, metadata !1456, metadata !DIExpression()), !dbg !1474
  %140 = zext i8 %137 to i64, !dbg !1476
  call void @llvm.dbg.value(metadata i64 %140, metadata !1451, metadata !DIExpression()), !dbg !1474
  %141 = or i64 %140, 1099511627776, !dbg !1476
  br label %161, !dbg !1477

142:                                              ; preds = %136
  call void @llvm.dbg.value(metadata !DIArgList(ptr @expand.line_in, i64 %134), metadata !1409, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1424
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #37, !dbg !1438
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1411, metadata !DIExpression()), !dbg !1439
  store i32 0, ptr %3, align 4, !dbg !1440, !tbaa !1441
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #37, !dbg !1443
  call void @llvm.dbg.value(metadata ptr %4, metadata !1422, metadata !DIExpression(DW_OP_deref)), !dbg !1424
  %143 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull @expand.line_in, i64 noundef %134, ptr noundef nonnull %3) #37, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %143, metadata !1423, metadata !DIExpression()), !dbg !1424
  %144 = icmp slt i64 %143, 0, !dbg !1446
  br i1 %144, label %145, label %149, !dbg !1448, !prof !1449

145:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i8 %137, metadata !1464, metadata !DIExpression()), !dbg !1469
  %146 = zext i8 %137 to i64, !dbg !1471
  %147 = shl nuw nsw i64 %146, 32, !dbg !1471
  %148 = or i64 %147, 1099511627776, !dbg !1471
  br label %157, !dbg !1472

149:                                              ; preds = %142
  %150 = load i32, ptr %4, align 4, !dbg !1450, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 %150, metadata !1422, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i32 %150, metadata !1451, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %143, metadata !1456, metadata !DIExpression()), !dbg !1457
  %151 = icmp ne i64 %143, 0, !dbg !1459
  call void @llvm.assume(i1 %151), !dbg !1459
  %152 = icmp ult i64 %143, 5, !dbg !1460
  call void @llvm.assume(i1 %152), !dbg !1460
  %153 = icmp ult i32 %150, 1114112, !dbg !1461
  call void @llvm.assume(i1 %153), !dbg !1461
  %154 = shl nuw nsw i64 %143, 40, !dbg !1462
  %155 = zext i32 %150 to i64, !dbg !1462
  %156 = or i64 %154, %155, !dbg !1462
  br label %157, !dbg !1463

157:                                              ; preds = %149, %145
  %158 = phi i64 [ %148, %145 ], [ %156, %149 ], !dbg !1424
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #37, !dbg !1473
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #37, !dbg !1473
  %159 = load i8, ptr @expand.line_in, align 4, !dbg !1480
  %160 = zext i8 %159 to i64, !dbg !1480
  br label %161

161:                                              ; preds = %157, %139
  %162 = phi i64 [ %160, %157 ], [ %140, %139 ], !dbg !1480
  %163 = phi i64 [ %158, %157 ], [ %141, %139 ], !dbg !1424
  call void @llvm.dbg.value(metadata i64 %163, metadata !1360, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %163, metadata !1360, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %163, metadata !1360, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %163, metadata !1360, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1361
  %164 = and i64 %163, 1095216660480, !dbg !1478
  %165 = icmp eq i64 %164, 0, !dbg !1478
  %166 = lshr i64 %163, 40, !dbg !1480
  %167 = select i1 %165, i64 %166, i64 1, !dbg !1480
  %168 = select i1 %165, i64 %163, i64 %162, !dbg !1480
  call void @llvm.dbg.value(metadata i64 %167, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i32 poison, metadata !1360, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1361
  %169 = and i64 %163, -4294967296, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %134, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1330
  call void @llvm.dbg.value(metadata i16 poison, metadata !1360, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1361
  call void @llvm.dbg.value(metadata i32 poison, metadata !1360, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1361
  call void @llvm.dbg.value(metadata i8 poison, metadata !1360, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1361
  call void @llvm.dbg.value(metadata i8 poison, metadata !1360, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %168, metadata !359, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %169, metadata !359, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %169, metadata !359, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1345
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !359, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1345
  %170 = and i64 %168, 4294967295, !dbg !1488
  %171 = icmp eq i64 %170, 4294967295, !dbg !1488
  br i1 %171, label %172, label %179, !dbg !1489

172:                                              ; preds = %161, %133, %128
  %173 = phi i64 [ %169, %161 ], [ 0, %133 ], [ 0, %128 ]
  %174 = phi i64 [ %168, %161 ], [ 4294967295, %133 ], [ 4294967295, %128 ]
  %175 = phi i64 [ %167, %161 ], [ 0, %133 ], [ 0, %128 ]
  %176 = phi i64 [ %134, %161 ], [ %134, %133 ], [ 0, %128 ]
  %177 = call ptr @next_file(ptr noundef nonnull %129) #37, !dbg !1490
  call void @llvm.dbg.value(metadata ptr %177, metadata !345, metadata !DIExpression()), !dbg !1330
  %178 = icmp eq ptr %177, null, !dbg !1489
  br i1 %178, label %179, label %128, !dbg !1491, !llvm.loop !1492

179:                                              ; preds = %172, %161, %121, %114
  %180 = phi i64 [ %76, %114 ], [ %125, %121 ], [ %134, %161 ], [ %176, %172 ], !dbg !1495
  %181 = phi i64 [ %117, %114 ], [ %124, %121 ], [ %167, %161 ], [ %175, %172 ], !dbg !1361
  %182 = phi i64 [ %116, %114 ], [ %123, %121 ], [ %168, %161 ], [ %174, %172 ], !dbg !1361
  %183 = phi i64 [ %118, %114 ], [ %122, %121 ], [ %169, %161 ], [ %173, %172 ], !dbg !1496
  %184 = phi i1 [ false, %114 ], [ true, %121 ], [ false, %161 ], [ true, %172 ], !dbg !1488
  %185 = phi ptr [ %49, %114 ], [ %49, %121 ], [ %129, %161 ], [ %129, %172 ], !dbg !1330
  %186 = phi ptr [ %52, %114 ], [ null, %121 ], [ %129, %161 ], [ null, %172 ], !dbg !1330
  %187 = trunc i64 %182 to i32, !dbg !1497
  %188 = lshr i64 %183, 40, !dbg !1497
  call void @llvm.dbg.value(metadata ptr %186, metadata !345, metadata !DIExpression()), !dbg !1330
  br i1 %51, label %189, label %268, !dbg !1498

189:                                              ; preds = %179
  %190 = load i8, ptr @convert_entire_line, align 1, !dbg !1499, !tbaa !1299, !range !1500, !noundef !1072
  %191 = icmp eq i8 %190, 0, !dbg !1499
  br i1 %191, label %192, label %195, !dbg !1501

192:                                              ; preds = %189
  call void @llvm.dbg.value(metadata i32 %187, metadata !1502, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i32 %187, metadata !1509, metadata !DIExpression()), !dbg !1517
  %193 = call i32 @iswblank(i32 noundef %187) #37, !dbg !1519
  %194 = icmp ne i32 %193, 0, !dbg !1520
  br label %195, !dbg !1501

195:                                              ; preds = %192, %189
  %196 = phi i1 [ true, %189 ], [ %194, %192 ]
  call void @llvm.dbg.value(metadata i1 %196, metadata !371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1345
  switch i32 %187, label %257 [
    i32 9, label %197
    i32 8, label %249
  ], !dbg !1521

197:                                              ; preds = %195
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #37, !dbg !1522
  call void @llvm.dbg.value(metadata ptr %5, metadata !378, metadata !DIExpression(DW_OP_deref)), !dbg !1345
  call void @llvm.dbg.value(metadata ptr %6, metadata !379, metadata !DIExpression(DW_OP_deref)), !dbg !1523
  %198 = call i64 @get_next_tab_column(i64 noundef %50, ptr noundef nonnull %5, ptr noundef nonnull %6) #37, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %198, metadata !385, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %50, metadata !372, metadata !DIExpression()), !dbg !1345
  %199 = add nsw i64 %50, 1, !dbg !1525
  call void @llvm.dbg.value(metadata i64 %199, metadata !372, metadata !DIExpression()), !dbg !1345
  %200 = icmp slt i64 %199, %198, !dbg !1526
  br i1 %200, label %201, label %226, !dbg !1527

201:                                              ; preds = %197, %223
  %202 = phi i64 [ %224, %223 ], [ %199, %197 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1528, metadata !DIExpression()), !dbg !1533
  %203 = load ptr, ptr @stdout, align 8, !dbg !1536, !tbaa !1063
  %204 = getelementptr inbounds %struct._IO_FILE, ptr %203, i64 0, i32 5, !dbg !1536
  %205 = load ptr, ptr %204, align 8, !dbg !1536, !tbaa !1537
  %206 = getelementptr inbounds %struct._IO_FILE, ptr %203, i64 0, i32 6, !dbg !1536
  %207 = load ptr, ptr %206, align 8, !dbg !1536, !tbaa !1538
  %208 = icmp ult ptr %205, %207, !dbg !1536
  br i1 %208, label %209, label %211, !dbg !1536, !prof !1539

209:                                              ; preds = %201
  %210 = getelementptr inbounds i8, ptr %205, i64 1, !dbg !1536
  store ptr %210, ptr %204, align 8, !dbg !1536, !tbaa !1537
  store i8 32, ptr %205, align 1, !dbg !1536, !tbaa !1141
  br label %223, !dbg !1540

211:                                              ; preds = %201
  %212 = call i32 @__overflow(ptr noundef nonnull %203, i32 noundef 32) #37, !dbg !1536
  %213 = icmp slt i32 %212, 0, !dbg !1541
  br i1 %213, label %214, label %223, !dbg !1540

214:                                              ; preds = %211
  %215 = tail call ptr @__errno_location() #40, !dbg !1542
  %216 = load i32, ptr %215, align 4, !dbg !1542, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 %216, metadata !1545, metadata !DIExpression()), !dbg !1547
  %217 = load ptr, ptr @stdout, align 8, !dbg !1548, !tbaa !1063
  %218 = call i32 @fflush_unlocked(ptr noundef %217) #37, !dbg !1548
  %219 = load ptr, ptr @stdout, align 8, !dbg !1549, !tbaa !1063
  %220 = call i32 @fpurge(ptr noundef %219) #37, !dbg !1550
  %221 = load ptr, ptr @stdout, align 8, !dbg !1551, !tbaa !1063
  call void @clearerr_unlocked(ptr noundef %221) #37, !dbg !1551
  %222 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #37, !dbg !1552
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %216, ptr noundef %222) #37, !dbg !1552
  unreachable, !dbg !1552

223:                                              ; preds = %211, %209
  call void @llvm.dbg.value(metadata i64 %202, metadata !372, metadata !DIExpression()), !dbg !1345
  %224 = add i64 %202, 1, !dbg !1525
  call void @llvm.dbg.value(metadata i64 %224, metadata !372, metadata !DIExpression()), !dbg !1345
  %225 = icmp eq i64 %224, %198, !dbg !1526
  br i1 %225, label %226, label %201, !dbg !1527, !llvm.loop !1553

226:                                              ; preds = %223, %197
  %227 = phi i64 [ %199, %197 ], [ %198, %223 ], !dbg !1525
  call void @llvm.dbg.value(metadata i32 32, metadata !1528, metadata !DIExpression()), !dbg !1555
  %228 = load ptr, ptr @stdout, align 8, !dbg !1558, !tbaa !1063
  %229 = getelementptr inbounds %struct._IO_FILE, ptr %228, i64 0, i32 5, !dbg !1558
  %230 = load ptr, ptr %229, align 8, !dbg !1558, !tbaa !1537
  %231 = getelementptr inbounds %struct._IO_FILE, ptr %228, i64 0, i32 6, !dbg !1558
  %232 = load ptr, ptr %231, align 8, !dbg !1558, !tbaa !1538
  %233 = icmp ult ptr %230, %232, !dbg !1558
  br i1 %233, label %234, label %236, !dbg !1558, !prof !1539

234:                                              ; preds = %226
  %235 = getelementptr inbounds i8, ptr %230, i64 1, !dbg !1558
  store ptr %235, ptr %229, align 8, !dbg !1558, !tbaa !1537
  store i8 32, ptr %230, align 1, !dbg !1558, !tbaa !1141
  br label %248, !dbg !1559

236:                                              ; preds = %226
  %237 = call i32 @__overflow(ptr noundef nonnull %228, i32 noundef 32) #37, !dbg !1558
  %238 = icmp slt i32 %237, 0, !dbg !1560
  br i1 %238, label %239, label %248, !dbg !1559

239:                                              ; preds = %236
  %240 = tail call ptr @__errno_location() #40, !dbg !1561
  %241 = load i32, ptr %240, align 4, !dbg !1561, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 %241, metadata !1545, metadata !DIExpression()), !dbg !1563
  %242 = load ptr, ptr @stdout, align 8, !dbg !1564, !tbaa !1063
  %243 = call i32 @fflush_unlocked(ptr noundef %242) #37, !dbg !1564
  %244 = load ptr, ptr @stdout, align 8, !dbg !1565, !tbaa !1063
  %245 = call i32 @fpurge(ptr noundef %244) #37, !dbg !1566
  %246 = load ptr, ptr @stdout, align 8, !dbg !1567, !tbaa !1063
  call void @clearerr_unlocked(ptr noundef %246) #37, !dbg !1567
  %247 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #37, !dbg !1568
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %241, ptr noundef %247) #37, !dbg !1568
  unreachable, !dbg !1568

248:                                              ; preds = %236, %234
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #37, !dbg !1569
  br label %291

249:                                              ; preds = %195
  %250 = icmp ne i64 %50, 0, !dbg !1570
  %251 = sext i1 %250 to i64
  %252 = add i64 %50, %251, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %252, metadata !372, metadata !DIExpression()), !dbg !1345
  %253 = load i64, ptr %5, align 8, !dbg !1573, !tbaa !1348
  call void @llvm.dbg.value(metadata i64 %253, metadata !378, metadata !DIExpression()), !dbg !1345
  %254 = icmp ne i64 %253, 0, !dbg !1574
  %255 = sext i1 %254 to i64
  %256 = add i64 %253, %255, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %256, metadata !378, metadata !DIExpression()), !dbg !1345
  store i64 %256, ptr %5, align 8, !dbg !1575, !tbaa !1348
  call void @llvm.dbg.value(metadata i8 poison, metadata !371, metadata !DIExpression()), !dbg !1345
  br label %271, !dbg !1576

257:                                              ; preds = %195
  call void @llvm.dbg.value(metadata i32 %187, metadata !1577, metadata !DIExpression()), !dbg !1582
  %258 = call i32 @wcwidth(i32 noundef %187) #37, !dbg !1584
  call void @llvm.dbg.value(metadata i32 %258, metadata !386, metadata !DIExpression()), !dbg !1585
  %259 = icmp slt i32 %258, 0, !dbg !1586
  %260 = select i1 %259, i32 1, i32 %258, !dbg !1586
  %261 = zext i32 %260 to i64, !dbg !1586
  %262 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %50, i64 %261), !dbg !1586
  %263 = extractvalue { i64, i1 } %262, 1, !dbg !1586
  call void @llvm.dbg.value(metadata i64 poison, metadata !372, metadata !DIExpression()), !dbg !1345
  br i1 %263, label %264, label %266, !dbg !1588

264:                                              ; preds = %257
  %265 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #37, !dbg !1589
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %265) #37, !dbg !1589
  unreachable, !dbg !1589

266:                                              ; preds = %257
  %267 = extractvalue { i64, i1 } %262, 0, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %267, metadata !372, metadata !DIExpression()), !dbg !1345
  br label %268

268:                                              ; preds = %266, %179
  %269 = phi i64 [ %267, %266 ], [ %50, %179 ], !dbg !1345
  %270 = phi i1 [ %196, %266 ], [ false, %179 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !371, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %269, metadata !372, metadata !DIExpression()), !dbg !1345
  br i1 %184, label %296, label %271, !dbg !1576

271:                                              ; preds = %268, %249
  %272 = phi i1 [ %196, %249 ], [ %270, %268 ]
  %273 = phi i64 [ %252, %249 ], [ %269, %268 ]
  call void @llvm.dbg.value(metadata i64 %188, metadata !1590, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %188, metadata !1590, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1598
  %274 = icmp sge i64 %181, %188, !dbg !1600
  call void @llvm.assume(i1 %274), !dbg !1600
  call void @llvm.dbg.value(metadata !DIArgList(i64 %188, i64 %188), metadata !1590, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 65280, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709486080, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 0, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1598
  call void @llvm.dbg.value(metadata !DIArgList(i64 %188, i64 %188), metadata !1590, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 65280, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709486080, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 0, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1598
  call void @llvm.dbg.value(metadata ptr undef, metadata !1595, metadata !DIExpression()), !dbg !1598
  %275 = sub nsw i64 %181, %188, !dbg !1601
  %276 = getelementptr inbounds i8, ptr @expand.line_in, i64 %275, !dbg !1602
  %277 = load ptr, ptr @stdout, align 8, !dbg !1600, !tbaa !1063
  %278 = call i64 @fwrite_unlocked(ptr noundef nonnull %276, i64 noundef 1, i64 noundef %188, ptr noundef %277), !dbg !1600
  %279 = load ptr, ptr @stdout, align 8, !dbg !1603, !tbaa !1063
  call void @llvm.dbg.value(metadata ptr %279, metadata !1605, metadata !DIExpression()), !dbg !1608
  %280 = load i32, ptr %279, align 8, !dbg !1610, !tbaa !1375
  %281 = and i32 %280, 32, !dbg !1603
  %282 = icmp eq i32 %281, 0, !dbg !1603
  br i1 %282, label %291, label %283, !dbg !1611

283:                                              ; preds = %271
  %284 = tail call ptr @__errno_location() #40, !dbg !1612
  %285 = load i32, ptr %284, align 4, !dbg !1612, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 %285, metadata !1545, metadata !DIExpression()), !dbg !1614
  %286 = call i32 @fflush_unlocked(ptr noundef nonnull %279) #37, !dbg !1615
  %287 = load ptr, ptr @stdout, align 8, !dbg !1616, !tbaa !1063
  %288 = call i32 @fpurge(ptr noundef %287) #37, !dbg !1617
  %289 = load ptr, ptr @stdout, align 8, !dbg !1618, !tbaa !1063
  call void @clearerr_unlocked(ptr noundef %289) #37, !dbg !1618
  %290 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #37, !dbg !1619
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %285, ptr noundef %290) #37, !dbg !1619
  unreachable, !dbg !1619

291:                                              ; preds = %271, %248
  %292 = phi i64 [ %227, %248 ], [ %273, %271 ], !dbg !1620
  %293 = phi i1 [ %196, %248 ], [ %272, %271 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !371, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %292, metadata !372, metadata !DIExpression()), !dbg !1345
  %294 = icmp eq i32 %187, 10, !dbg !1621
  br i1 %294, label %295, label %46, !dbg !1622, !llvm.loop !1623

295:                                              ; preds = %291
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !1625
  br label %41, !llvm.loop !1626

296:                                              ; preds = %268
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !1625
  br label %297

297:                                              ; preds = %33, %296
  call void @cleanup_file_list_stdin() #37, !dbg !1628
  %298 = load i32, ptr @exit_status, align 4, !dbg !1629, !tbaa !1132
  ret i32 %298, !dbg !1630
}

; Function Attrs: nounwind
declare !dbg !1631 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1634 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1635 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1638 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1644 ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1648 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nounwind
declare !dbg !1655 i32 @iswblank(i32 noundef) local_unnamed_addr #2

declare !dbg !1657 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1660 ptr @__errno_location() local_unnamed_addr #9

declare !dbg !1664 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1665 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1668 i32 @wcwidth(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local void @add_tab_stop(i64 noundef %0) local_unnamed_addr #10 !dbg !1673 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1677, metadata !DIExpression()), !dbg !1680
  %2 = load i64, ptr @first_free_tab, align 8, !dbg !1681, !tbaa !1348
  %3 = icmp eq i64 %2, 0, !dbg !1681
  br i1 %3, label %9, label %4, !dbg !1681

4:                                                ; preds = %1
  %5 = load ptr, ptr @tab_list, align 8, !dbg !1682, !tbaa !1063
  %6 = add nsw i64 %2, -1, !dbg !1683
  %7 = getelementptr inbounds i64, ptr %5, i64 %6, !dbg !1682
  %8 = load i64, ptr %7, align 8, !dbg !1682, !tbaa !1348
  br label %9, !dbg !1681

9:                                                ; preds = %1, %4
  %10 = phi i64 [ %8, %4 ], [ 0, %1 ], !dbg !1681
  call void @llvm.dbg.value(metadata i64 %10, metadata !1678, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i64 poison, metadata !1679, metadata !DIExpression()), !dbg !1680
  %11 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1684, !tbaa !1348
  %12 = icmp eq i64 %2, %11, !dbg !1686
  %13 = load ptr, ptr @tab_list, align 8, !dbg !1680, !tbaa !1063
  br i1 %12, label %14, label %17, !dbg !1687

14:                                               ; preds = %9
  %15 = tail call nonnull ptr @xpalloc(ptr noundef %13, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #37, !dbg !1688
  store ptr %15, ptr @tab_list, align 8, !dbg !1689, !tbaa !1063
  %16 = load i64, ptr @first_free_tab, align 8, !dbg !1690, !tbaa !1348
  br label %17, !dbg !1691

17:                                               ; preds = %9, %14
  %18 = phi i64 [ %16, %14 ], [ %2, %9 ], !dbg !1690
  %19 = phi ptr [ %15, %14 ], [ %13, %9 ], !dbg !1692
  %20 = icmp sgt i64 %10, %0, !dbg !1693
  %21 = sub nsw i64 %0, %10, !dbg !1694
  %22 = select i1 %20, i64 0, i64 %21, !dbg !1694
  call void @llvm.dbg.value(metadata i64 %22, metadata !1679, metadata !DIExpression()), !dbg !1680
  %23 = add nsw i64 %18, 1, !dbg !1690
  store i64 %23, ptr @first_free_tab, align 8, !dbg !1690, !tbaa !1348
  %24 = getelementptr inbounds i64, ptr %19, i64 %18, !dbg !1692
  store i64 %0, ptr %24, align 8, !dbg !1695, !tbaa !1348
  call void @llvm.dbg.value(metadata i64 %22, metadata !1696, metadata !DIExpression()), !dbg !1699
  %25 = load i64, ptr @max_column_width, align 8, !dbg !1701, !tbaa !1348
  %26 = icmp slt i64 %25, %22, !dbg !1703
  br i1 %26, label %27, label %28, !dbg !1704

27:                                               ; preds = %17
  store i64 %22, ptr @max_column_width, align 8, !dbg !1705
  br label %28

28:                                               ; preds = %17, %27
  ret void, !dbg !1708
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_tab_stops(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !1709 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1711, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 0, metadata !1712, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i64 0, metadata !1713, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 0, metadata !1715, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata ptr null, metadata !1716, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 1, metadata !1717, metadata !DIExpression()), !dbg !1730
  br label %2, !dbg !1731

2:                                                ; preds = %108, %1
  %3 = phi i64 [ 0, %1 ], [ %109, %108 ], !dbg !1732
  %4 = phi i1 [ false, %1 ], [ %110, %108 ]
  %5 = phi i1 [ false, %1 ], [ %111, %108 ]
  %6 = phi ptr [ null, %1 ], [ %112, %108 ], !dbg !1733
  %7 = phi i1 [ true, %1 ], [ %113, %108 ]
  %8 = phi i1 [ false, %1 ], [ %114, %108 ]
  %9 = phi ptr [ %0, %1 ], [ %116, %108 ]
  call void @llvm.dbg.value(metadata ptr %9, metadata !1711, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 poison, metadata !1712, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 poison, metadata !1717, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata ptr %6, metadata !1716, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 poison, metadata !1715, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 poison, metadata !1714, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i64 %3, metadata !1713, metadata !DIExpression()), !dbg !1730
  %10 = load i8, ptr %9, align 1, !dbg !1734, !tbaa !1141
  switch i8 %10, label %11 [
    i8 0, label %117
    i8 44, label %19
  ], !dbg !1735

11:                                               ; preds = %2
  %12 = tail call ptr @__ctype_b_loc() #40, !dbg !1736
  %13 = load ptr, ptr %12, align 8, !dbg !1736, !tbaa !1063
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds i16, ptr %13, i64 %14, !dbg !1736
  %16 = load i16, ptr %15, align 2, !dbg !1736, !tbaa !1173
  %17 = and i16 %16, 1, !dbg !1736
  %18 = icmp eq i16 %17, 0, !dbg !1736
  br i1 %18, label %68, label %19, !dbg !1737

19:                                               ; preds = %2, %11
  br i1 %8, label %20, label %108, !dbg !1738

20:                                               ; preds = %19
  br i1 %4, label %21, label %31, !dbg !1740

21:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 %3, metadata !1743, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 1, metadata !1748, metadata !DIExpression()), !dbg !1749
  %22 = load i64, ptr @extend_size, align 8, !dbg !1754, !tbaa !1348
  %23 = icmp eq i64 %22, 0, !dbg !1754
  br i1 %23, label %26, label %24, !dbg !1756

24:                                               ; preds = %21
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12.7, i32 noundef 5) #37, !dbg !1757
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %25) #37, !dbg !1757
  call void @llvm.dbg.value(metadata i8 0, metadata !1748, metadata !DIExpression()), !dbg !1749
  br label %26, !dbg !1759

26:                                               ; preds = %24, %21
  call void @llvm.dbg.value(metadata i8 poison, metadata !1748, metadata !DIExpression()), !dbg !1749
  store i64 %3, ptr @extend_size, align 8, !dbg !1760, !tbaa !1348
  call void @llvm.dbg.value(metadata i64 %3, metadata !1696, metadata !DIExpression()), !dbg !1761
  %27 = load i64, ptr @max_column_width, align 8, !dbg !1763, !tbaa !1348
  %28 = icmp slt i64 %27, %3, !dbg !1764
  br i1 %28, label %29, label %30, !dbg !1765

29:                                               ; preds = %26
  store i64 %3, ptr @max_column_width, align 8, !dbg !1766
  br label %30

30:                                               ; preds = %26, %29
  br i1 %23, label %108, label %169, !dbg !1767

31:                                               ; preds = %20
  br i1 %5, label %32, label %42, !dbg !1768

32:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %3, metadata !1769, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 1, metadata !1772, metadata !DIExpression()), !dbg !1773
  %33 = load i64, ptr @increment_size, align 8, !dbg !1778, !tbaa !1348
  %34 = icmp eq i64 %33, 0, !dbg !1778
  br i1 %34, label %37, label %35, !dbg !1780

35:                                               ; preds = %32
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13.8, i32 noundef 5) #37, !dbg !1781
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %36) #37, !dbg !1781
  call void @llvm.dbg.value(metadata i8 0, metadata !1772, metadata !DIExpression()), !dbg !1773
  br label %37, !dbg !1783

37:                                               ; preds = %35, %32
  call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1773
  store i64 %3, ptr @increment_size, align 8, !dbg !1784, !tbaa !1348
  call void @llvm.dbg.value(metadata i64 %3, metadata !1696, metadata !DIExpression()), !dbg !1785
  %38 = load i64, ptr @max_column_width, align 8, !dbg !1787, !tbaa !1348
  %39 = icmp slt i64 %38, %3, !dbg !1788
  br i1 %39, label %40, label %41, !dbg !1789

40:                                               ; preds = %37
  store i64 %3, ptr @max_column_width, align 8, !dbg !1790
  br label %41

41:                                               ; preds = %37, %40
  br i1 %34, label %108, label %169, !dbg !1791

42:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %3, metadata !1677, metadata !DIExpression()), !dbg !1792
  %43 = load i64, ptr @first_free_tab, align 8, !dbg !1794, !tbaa !1348
  %44 = icmp eq i64 %43, 0, !dbg !1794
  %45 = load ptr, ptr @tab_list, align 8, !dbg !1792, !tbaa !1063
  br i1 %44, label %50, label %46, !dbg !1794

46:                                               ; preds = %42
  %47 = add nsw i64 %43, -1, !dbg !1795
  %48 = getelementptr inbounds i64, ptr %45, i64 %47, !dbg !1796
  %49 = load i64, ptr %48, align 8, !dbg !1796, !tbaa !1348
  br label %50, !dbg !1794

50:                                               ; preds = %42, %46
  %51 = phi i64 [ %49, %46 ], [ 0, %42 ], !dbg !1794
  call void @llvm.dbg.value(metadata i64 %51, metadata !1678, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i64 poison, metadata !1679, metadata !DIExpression()), !dbg !1792
  %52 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1797, !tbaa !1348
  %53 = icmp eq i64 %43, %52, !dbg !1798
  br i1 %53, label %54, label %57, !dbg !1799

54:                                               ; preds = %50
  %55 = tail call nonnull ptr @xpalloc(ptr noundef %45, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #37, !dbg !1800
  store ptr %55, ptr @tab_list, align 8, !dbg !1801, !tbaa !1063
  %56 = load i64, ptr @first_free_tab, align 8, !dbg !1802, !tbaa !1348
  br label %57, !dbg !1803

57:                                               ; preds = %54, %50
  %58 = phi i64 [ %56, %54 ], [ %43, %50 ], !dbg !1802
  %59 = phi ptr [ %55, %54 ], [ %45, %50 ], !dbg !1804
  %60 = icmp slt i64 %3, %51, !dbg !1805
  %61 = sub nsw i64 %3, %51, !dbg !1806
  %62 = select i1 %60, i64 0, i64 %61, !dbg !1806
  call void @llvm.dbg.value(metadata i64 %62, metadata !1679, metadata !DIExpression()), !dbg !1792
  %63 = add nsw i64 %58, 1, !dbg !1802
  store i64 %63, ptr @first_free_tab, align 8, !dbg !1802, !tbaa !1348
  %64 = getelementptr inbounds i64, ptr %59, i64 %58, !dbg !1804
  store i64 %3, ptr %64, align 8, !dbg !1807, !tbaa !1348
  call void @llvm.dbg.value(metadata i64 %62, metadata !1696, metadata !DIExpression()), !dbg !1808
  %65 = load i64, ptr @max_column_width, align 8, !dbg !1810, !tbaa !1348
  %66 = icmp slt i64 %65, %62, !dbg !1811
  br i1 %66, label %67, label %108, !dbg !1812

67:                                               ; preds = %57
  store i64 %62, ptr @max_column_width, align 8, !dbg !1813
  br label %108

68:                                               ; preds = %11
  switch i8 %10, label %77 [
    i8 47, label %69
    i8 43, label %73
  ], !dbg !1814

69:                                               ; preds = %68
  br i1 %8, label %70, label %108, !dbg !1815

70:                                               ; preds = %69
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #37, !dbg !1817
  %72 = tail call ptr @quote(ptr noundef nonnull %9) #37, !dbg !1817
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %71, ptr noundef %72) #37, !dbg !1817
  call void @llvm.dbg.value(metadata i8 0, metadata !1717, metadata !DIExpression()), !dbg !1730
  br label %108, !dbg !1820

73:                                               ; preds = %68
  br i1 %8, label %74, label %108, !dbg !1821

74:                                               ; preds = %73
  %75 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.20, i32 noundef 5) #37, !dbg !1823
  %76 = tail call ptr @quote(ptr noundef nonnull %9) #37, !dbg !1823
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %75, ptr noundef %76) #37, !dbg !1823
  call void @llvm.dbg.value(metadata i8 0, metadata !1717, metadata !DIExpression()), !dbg !1730
  br label %108, !dbg !1826

77:                                               ; preds = %68
  %78 = zext i8 %10 to i32, !dbg !1827
  call void @llvm.dbg.value(metadata i32 %78, metadata !1828, metadata !DIExpression()), !dbg !1834
  %79 = add nsw i32 %78, -48, !dbg !1836
  %80 = icmp ult i32 %79, 10, !dbg !1836
  br i1 %80, label %81, label %105, !dbg !1837

81:                                               ; preds = %77
  %82 = select i1 %8, i64 %3, i64 0, !dbg !1838
  %83 = select i1 %8, ptr %6, ptr %9, !dbg !1838
  call void @llvm.dbg.value(metadata i8 poison, metadata !1712, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata ptr %83, metadata !1716, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i64 %82, metadata !1713, metadata !DIExpression()), !dbg !1730
  %84 = icmp slt i64 %82, 0, !dbg !1839
  br i1 %84, label %85, label %87, !dbg !1839

85:                                               ; preds = %81
  %86 = icmp ult i64 %82, -922337203685477580, !dbg !1839
  br i1 %86, label %89, label %91, !dbg !1839

87:                                               ; preds = %81
  %88 = icmp ugt i64 %82, 922337203685477580, !dbg !1839
  br i1 %88, label %89, label %91, !dbg !1839

89:                                               ; preds = %85, %87
  %90 = mul i64 %82, 10, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %90, metadata !1713, metadata !DIExpression()), !dbg !1730
  br label %97, !dbg !1839

91:                                               ; preds = %85, %87
  call void @llvm.dbg.value(metadata i64 %82, metadata !1713, metadata !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value)), !dbg !1730
  %92 = mul nsw i64 %82, 10, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %92, metadata !1713, metadata !DIExpression()), !dbg !1730
  %93 = add nsw i64 %14, -48, !dbg !1839
  %94 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %92, i64 %93), !dbg !1839
  %95 = extractvalue { i64, i1 } %94, 1, !dbg !1839
  %96 = extractvalue { i64, i1 } %94, 0, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %96, metadata !1713, metadata !DIExpression()), !dbg !1730
  br i1 %95, label %97, label %108, !dbg !1840

97:                                               ; preds = %89, %91
  %98 = phi i64 [ %96, %91 ], [ %90, %89 ], !dbg !1839
  call void @llvm.dbg.value(metadata i64 %98, metadata !1713, metadata !DIExpression()), !dbg !1730
  %99 = tail call i64 @strspn(ptr noundef %83, ptr noundef nonnull @.str.2.21) #38, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %99, metadata !1718, metadata !DIExpression()), !dbg !1842
  %100 = tail call noalias nonnull ptr @ximemdup0(ptr noundef %83, i64 noundef %99) #37, !dbg !1843
  call void @llvm.dbg.value(metadata ptr %100, metadata !1729, metadata !DIExpression()), !dbg !1842
  %101 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3.22, i32 noundef 5) #37, !dbg !1844
  %102 = tail call ptr @quote(ptr noundef nonnull %100) #37, !dbg !1844
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %101, ptr noundef %102) #37, !dbg !1844
  tail call void @free(ptr noundef nonnull %100) #37, !dbg !1845
  call void @llvm.dbg.value(metadata i8 0, metadata !1717, metadata !DIExpression()), !dbg !1730
  %103 = getelementptr i8, ptr %83, i64 -1, !dbg !1846
  %104 = getelementptr i8, ptr %103, i64 %99, !dbg !1847
  call void @llvm.dbg.value(metadata ptr %104, metadata !1711, metadata !DIExpression()), !dbg !1730
  br label %108, !dbg !1848

105:                                              ; preds = %77
  %106 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4.23, i32 noundef 5) #37, !dbg !1849
  %107 = tail call ptr @quote(ptr noundef nonnull %9) #37, !dbg !1849
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %106, ptr noundef %107) #37, !dbg !1849
  call void @llvm.dbg.value(metadata i8 0, metadata !1717, metadata !DIExpression()), !dbg !1730
  br label %169, !dbg !1851

108:                                              ; preds = %67, %57, %73, %74, %69, %70, %19, %41, %30, %91, %97
  %109 = phi i64 [ %98, %97 ], [ %96, %91 ], [ %3, %30 ], [ %3, %41 ], [ %3, %19 ], [ %3, %70 ], [ %3, %69 ], [ %3, %74 ], [ %3, %73 ], [ %3, %57 ], [ %3, %67 ], !dbg !1730
  %110 = phi i1 [ %4, %97 ], [ %4, %91 ], [ true, %30 ], [ false, %41 ], [ %4, %19 ], [ true, %70 ], [ true, %69 ], [ false, %74 ], [ false, %73 ], [ false, %57 ], [ false, %67 ]
  %111 = phi i1 [ %5, %97 ], [ %5, %91 ], [ %5, %30 ], [ true, %41 ], [ %5, %19 ], [ false, %70 ], [ false, %69 ], [ true, %74 ], [ true, %73 ], [ false, %57 ], [ false, %67 ]
  %112 = phi ptr [ %83, %97 ], [ %83, %91 ], [ %6, %30 ], [ %6, %41 ], [ %6, %19 ], [ %6, %70 ], [ %6, %69 ], [ %6, %74 ], [ %6, %73 ], [ %6, %57 ], [ %6, %67 ], !dbg !1733
  %113 = phi i1 [ false, %97 ], [ %7, %91 ], [ %7, %30 ], [ %7, %41 ], [ %7, %19 ], [ false, %70 ], [ %7, %69 ], [ false, %74 ], [ %7, %73 ], [ %7, %57 ], [ %7, %67 ]
  %114 = phi i1 [ true, %97 ], [ true, %91 ], [ false, %30 ], [ false, %41 ], [ false, %19 ], [ true, %70 ], [ false, %69 ], [ true, %74 ], [ false, %73 ], [ false, %57 ], [ false, %67 ]
  %115 = phi ptr [ %104, %97 ], [ %9, %91 ], [ %9, %30 ], [ %9, %41 ], [ %9, %19 ], [ %9, %70 ], [ %9, %69 ], [ %9, %74 ], [ %9, %73 ], [ %9, %57 ], [ %9, %67 ]
  call void @llvm.dbg.value(metadata ptr %115, metadata !1711, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 poison, metadata !1712, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 poison, metadata !1717, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata ptr %112, metadata !1716, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 poison, metadata !1715, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 poison, metadata !1714, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i64 %109, metadata !1713, metadata !DIExpression()), !dbg !1730
  %116 = getelementptr inbounds i8, ptr %115, i64 1, !dbg !1852
  call void @llvm.dbg.value(metadata ptr %116, metadata !1711, metadata !DIExpression()), !dbg !1730
  br label %2, !dbg !1853, !llvm.loop !1854

117:                                              ; preds = %2
  call void @llvm.dbg.value(metadata i8 poison, metadata !1717, metadata !DIExpression()), !dbg !1730
  %118 = and i1 %7, %8, !dbg !1856
  br i1 %118, label %119, label %168, !dbg !1856

119:                                              ; preds = %117
  br i1 %4, label %120, label %131, !dbg !1858

120:                                              ; preds = %119
  call void @llvm.dbg.value(metadata i64 %3, metadata !1743, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8 1, metadata !1748, metadata !DIExpression()), !dbg !1860
  %121 = load i64, ptr @extend_size, align 8, !dbg !1863, !tbaa !1348
  %122 = icmp eq i64 %121, 0, !dbg !1863
  br i1 %122, label %123, label %126, !dbg !1864

123:                                              ; preds = %120
  call void @llvm.dbg.value(metadata i8 poison, metadata !1748, metadata !DIExpression()), !dbg !1860
  store i64 %3, ptr @extend_size, align 8, !dbg !1865, !tbaa !1348
  call void @llvm.dbg.value(metadata i64 %3, metadata !1696, metadata !DIExpression()), !dbg !1866
  %124 = load i64, ptr @max_column_width, align 8, !dbg !1868, !tbaa !1348
  %125 = icmp slt i64 %124, %3, !dbg !1869
  br i1 %125, label %170, label %172, !dbg !1870

126:                                              ; preds = %120
  %127 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12.7, i32 noundef 5) #37, !dbg !1871
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %127) #37, !dbg !1871
  call void @llvm.dbg.value(metadata i8 poison, metadata !1748, metadata !DIExpression()), !dbg !1860
  store i64 %3, ptr @extend_size, align 8, !dbg !1865, !tbaa !1348
  call void @llvm.dbg.value(metadata i64 %3, metadata !1696, metadata !DIExpression()), !dbg !1866
  %128 = load i64, ptr @max_column_width, align 8, !dbg !1868, !tbaa !1348
  %129 = icmp slt i64 %128, %3, !dbg !1869
  br i1 %129, label %130, label %169, !dbg !1870

130:                                              ; preds = %126
  store i64 %3, ptr @max_column_width, align 8, !dbg !1872
  call void @llvm.dbg.value(metadata i8 poison, metadata !1717, metadata !DIExpression()), !dbg !1730
  br label %169, !dbg !1873

131:                                              ; preds = %119
  br i1 %5, label %132, label %143, !dbg !1874

132:                                              ; preds = %131
  call void @llvm.dbg.value(metadata i64 %3, metadata !1769, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 1, metadata !1772, metadata !DIExpression()), !dbg !1875
  %133 = load i64, ptr @increment_size, align 8, !dbg !1878, !tbaa !1348
  %134 = icmp eq i64 %133, 0, !dbg !1878
  br i1 %134, label %135, label %138, !dbg !1879

135:                                              ; preds = %132
  call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1875
  store i64 %3, ptr @increment_size, align 8, !dbg !1880, !tbaa !1348
  call void @llvm.dbg.value(metadata i64 %3, metadata !1696, metadata !DIExpression()), !dbg !1881
  %136 = load i64, ptr @max_column_width, align 8, !dbg !1883, !tbaa !1348
  %137 = icmp slt i64 %136, %3, !dbg !1884
  br i1 %137, label %170, label %172, !dbg !1885

138:                                              ; preds = %132
  %139 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13.8, i32 noundef 5) #37, !dbg !1886
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %139) #37, !dbg !1886
  call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1875
  store i64 %3, ptr @increment_size, align 8, !dbg !1880, !tbaa !1348
  call void @llvm.dbg.value(metadata i64 %3, metadata !1696, metadata !DIExpression()), !dbg !1881
  %140 = load i64, ptr @max_column_width, align 8, !dbg !1883, !tbaa !1348
  %141 = icmp slt i64 %140, %3, !dbg !1884
  br i1 %141, label %142, label %169, !dbg !1885

142:                                              ; preds = %138
  store i64 %3, ptr @max_column_width, align 8, !dbg !1887
  call void @llvm.dbg.value(metadata i8 poison, metadata !1717, metadata !DIExpression()), !dbg !1730
  br label %169, !dbg !1873

143:                                              ; preds = %131
  call void @llvm.dbg.value(metadata i64 %3, metadata !1677, metadata !DIExpression()), !dbg !1888
  %144 = load i64, ptr @first_free_tab, align 8, !dbg !1890, !tbaa !1348
  %145 = icmp eq i64 %144, 0, !dbg !1890
  %146 = load ptr, ptr @tab_list, align 8, !dbg !1888, !tbaa !1063
  br i1 %145, label %151, label %147, !dbg !1890

147:                                              ; preds = %143
  %148 = add nsw i64 %144, -1, !dbg !1891
  %149 = getelementptr inbounds i64, ptr %146, i64 %148, !dbg !1892
  %150 = load i64, ptr %149, align 8, !dbg !1892, !tbaa !1348
  br label %151, !dbg !1890

151:                                              ; preds = %143, %147
  %152 = phi i64 [ %150, %147 ], [ 0, %143 ], !dbg !1890
  call void @llvm.dbg.value(metadata i64 %152, metadata !1678, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i64 poison, metadata !1679, metadata !DIExpression()), !dbg !1888
  %153 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1893, !tbaa !1348
  %154 = icmp eq i64 %144, %153, !dbg !1894
  br i1 %154, label %155, label %158, !dbg !1895

155:                                              ; preds = %151
  %156 = tail call nonnull ptr @xpalloc(ptr noundef %146, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #37, !dbg !1896
  store ptr %156, ptr @tab_list, align 8, !dbg !1897, !tbaa !1063
  %157 = load i64, ptr @first_free_tab, align 8, !dbg !1898, !tbaa !1348
  br label %158, !dbg !1899

158:                                              ; preds = %155, %151
  %159 = phi i64 [ %157, %155 ], [ %144, %151 ], !dbg !1898
  %160 = phi ptr [ %156, %155 ], [ %146, %151 ], !dbg !1900
  %161 = icmp slt i64 %3, %152, !dbg !1901
  %162 = sub nsw i64 %3, %152, !dbg !1902
  %163 = select i1 %161, i64 0, i64 %162, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %163, metadata !1679, metadata !DIExpression()), !dbg !1888
  %164 = add nsw i64 %159, 1, !dbg !1898
  store i64 %164, ptr @first_free_tab, align 8, !dbg !1898, !tbaa !1348
  %165 = getelementptr inbounds i64, ptr %160, i64 %159, !dbg !1900
  store i64 %3, ptr %165, align 8, !dbg !1903, !tbaa !1348
  call void @llvm.dbg.value(metadata i64 %163, metadata !1696, metadata !DIExpression()), !dbg !1904
  %166 = load i64, ptr @max_column_width, align 8, !dbg !1906, !tbaa !1348
  %167 = icmp slt i64 %166, %163, !dbg !1907
  br i1 %167, label %170, label %172, !dbg !1908

168:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i8 poison, metadata !1717, metadata !DIExpression()), !dbg !1730
  br i1 %7, label %172, label %169, !dbg !1873

169:                                              ; preds = %30, %41, %138, %126, %142, %130, %105, %168
  tail call void @exit(i32 noundef 1) #39, !dbg !1909
  unreachable, !dbg !1909

170:                                              ; preds = %158, %135, %123
  %171 = phi i64 [ %3, %123 ], [ %3, %135 ], [ %163, %158 ]
  store i64 %171, ptr @max_column_width, align 8, !dbg !1911
  br label %172, !dbg !1912

172:                                              ; preds = %170, %158, %135, %123, %168
  ret void, !dbg !1912
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1913 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @finalize_tab_stops() local_unnamed_addr #10 !dbg !1916 {
  %1 = load ptr, ptr @tab_list, align 8, !dbg !1917, !tbaa !1063
  %2 = load i64, ptr @first_free_tab, align 8, !dbg !1918, !tbaa !1348
  call void @llvm.dbg.value(metadata ptr %1, metadata !1919, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 %2, metadata !1926, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 0, metadata !1927, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 0, metadata !1928, metadata !DIExpression()), !dbg !1932
  %3 = icmp sgt i64 %2, 0, !dbg !1933
  br i1 %3, label %13, label %7, !dbg !1935

4:                                                ; preds = %21
  %5 = add nuw nsw i64 %14, 1, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %5, metadata !1928, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %14, metadata !1928, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %17, metadata !1927, metadata !DIExpression()), !dbg !1930
  %6 = icmp eq i64 %5, %2, !dbg !1933
  br i1 %6, label %7, label %13, !dbg !1935, !llvm.loop !1937

7:                                                ; preds = %4, %0
  %8 = load i64, ptr @increment_size, align 8, !dbg !1939, !tbaa !1348
  %9 = icmp ne i64 %8, 0, !dbg !1939
  %10 = load i64, ptr @extend_size, align 8
  %11 = icmp ne i64 %10, 0
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1941
  br i1 %12, label %25, label %27, !dbg !1941

13:                                               ; preds = %0, %4
  %14 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %15 = phi i64 [ %17, %4 ], [ 0, %0 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !1928, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %15, metadata !1927, metadata !DIExpression()), !dbg !1930
  %16 = getelementptr inbounds i64, ptr %1, i64 %14, !dbg !1942
  %17 = load i64, ptr %16, align 8, !dbg !1942, !tbaa !1348
  %18 = icmp eq i64 %17, 0, !dbg !1945
  br i1 %18, label %19, label %21, !dbg !1946

19:                                               ; preds = %13
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14.26, i32 noundef 5) #37, !dbg !1947
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %20) #37, !dbg !1947
  unreachable, !dbg !1947

21:                                               ; preds = %13
  %22 = icmp sgt i64 %17, %15, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %17, metadata !1927, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 %14, metadata !1928, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1932
  br i1 %22, label %4, label %23, !dbg !1950

23:                                               ; preds = %21
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15.27, i32 noundef 5) #37, !dbg !1951
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %24) #37, !dbg !1951
  unreachable, !dbg !1951

25:                                               ; preds = %7
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16.28, i32 noundef 5) #37, !dbg !1952
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %26) #37, !dbg !1952
  unreachable, !dbg !1952

27:                                               ; preds = %7
  %28 = icmp eq i64 %2, 0, !dbg !1953
  br i1 %28, label %29, label %34, !dbg !1955

29:                                               ; preds = %27
  %30 = icmp eq i64 %10, 0, !dbg !1956
  %31 = icmp eq i64 %8, 0, !dbg !1956
  %32 = select i1 %31, i64 8, i64 %8, !dbg !1956
  %33 = select i1 %30, i64 %32, i64 %10, !dbg !1956
  store i64 %33, ptr @max_column_width, align 8, !dbg !1957, !tbaa !1348
  br label %40, !dbg !1958

34:                                               ; preds = %27
  %35 = icmp ne i64 %2, 1, !dbg !1959
  %36 = select i1 %35, i1 true, i1 %11, !dbg !1961
  %37 = select i1 %36, i1 true, i1 %9, !dbg !1961
  br i1 %37, label %40, label %38, !dbg !1961

38:                                               ; preds = %34
  %39 = load i64, ptr %1, align 8, !dbg !1962, !tbaa !1348
  br label %40, !dbg !1963

40:                                               ; preds = %34, %38, %29
  %41 = phi i64 [ %39, %38 ], [ %33, %29 ], [ 0, %34 ]
  store i64 %41, ptr @tab_size, align 8, !dbg !1964, !tbaa !1348
  ret void, !dbg !1965
}

; Function Attrs: nounwind uwtable
define dso_local i64 @get_next_tab_column(i64 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef nonnull writeonly %2) local_unnamed_addr #10 !dbg !1966 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1971, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata ptr %1, metadata !1972, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata ptr %2, metadata !1973, metadata !DIExpression()), !dbg !1986
  store i8 0, ptr %2, align 1, !dbg !1987, !tbaa !1299
  %4 = load i64, ptr @tab_size, align 8, !dbg !1988, !tbaa !1348
  %5 = icmp eq i64 %4, 0, !dbg !1988
  br i1 %5, label %6, label %12, !dbg !1989

6:                                                ; preds = %3
  %7 = load i64, ptr @first_free_tab, align 8, !tbaa !1348
  %8 = load i64, ptr %1, align 8, !tbaa !1348
  %9 = icmp slt i64 %8, %7, !dbg !1990
  br i1 %9, label %10, label %23, !dbg !1991

10:                                               ; preds = %6
  %11 = load ptr, ptr @tab_list, align 8, !tbaa !1063
  br label %15, !dbg !1991

12:                                               ; preds = %3
  %13 = srem i64 %0, %4, !dbg !1992
  %14 = sub nsw i64 %4, %13, !dbg !1993
  call void @llvm.dbg.value(metadata i64 %14, metadata !1974, metadata !DIExpression()), !dbg !1986
  br label %41, !dbg !1994

15:                                               ; preds = %10, %20
  %16 = phi i64 [ %8, %10 ], [ %21, %20 ]
  %17 = getelementptr inbounds i64, ptr %11, i64 %16, !dbg !1995
  %18 = load i64, ptr %17, align 8, !dbg !1995, !tbaa !1348
  call void @llvm.dbg.value(metadata i64 %18, metadata !1975, metadata !DIExpression()), !dbg !1996
  %19 = icmp sgt i64 %18, %0, !dbg !1997
  br i1 %19, label %49, label %20

20:                                               ; preds = %15
  %21 = add i64 %16, 1, !dbg !1999
  store i64 %21, ptr %1, align 8, !dbg !1999, !tbaa !1348
  %22 = icmp eq i64 %21, %7, !dbg !1990
  br i1 %22, label %23, label %15, !dbg !1991, !llvm.loop !2000

23:                                               ; preds = %20, %6
  %24 = load i64, ptr @extend_size, align 8, !dbg !2002, !tbaa !1348
  %25 = icmp eq i64 %24, 0, !dbg !2002
  br i1 %25, label %29, label %26, !dbg !2003

26:                                               ; preds = %23
  %27 = srem i64 %0, %24, !dbg !2004
  %28 = sub nsw i64 %24, %27, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %28, metadata !1974, metadata !DIExpression()), !dbg !1986
  br label %41, !dbg !2006

29:                                               ; preds = %23
  %30 = load i64, ptr @increment_size, align 8, !dbg !2007, !tbaa !1348
  %31 = icmp eq i64 %30, 0, !dbg !2007
  br i1 %31, label %40, label %32, !dbg !2008

32:                                               ; preds = %29
  %33 = load ptr, ptr @tab_list, align 8, !dbg !2009, !tbaa !1063
  %34 = add nsw i64 %7, -1, !dbg !2010
  %35 = getelementptr inbounds i64, ptr %33, i64 %34, !dbg !2009
  %36 = load i64, ptr %35, align 8, !dbg !2009, !tbaa !1348
  call void @llvm.dbg.value(metadata i64 %36, metadata !1981, metadata !DIExpression()), !dbg !2011
  %37 = sub nsw i64 %0, %36, !dbg !2012
  %38 = srem i64 %37, %30, !dbg !2013
  %39 = sub nsw i64 %30, %38, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %39, metadata !1974, metadata !DIExpression()), !dbg !1986
  br label %41, !dbg !2015

40:                                               ; preds = %29
  store i8 1, ptr %2, align 1, !dbg !2016, !tbaa !1299
  call void @llvm.dbg.value(metadata i64 1, metadata !1974, metadata !DIExpression()), !dbg !1986
  br label %41

41:                                               ; preds = %26, %40, %32, %12
  %42 = phi i64 [ %14, %12 ], [ %28, %26 ], [ %39, %32 ], [ 1, %40 ], !dbg !2018
  call void @llvm.dbg.value(metadata i64 %42, metadata !1974, metadata !DIExpression()), !dbg !1986
  %43 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 %42), !dbg !2019
  %44 = extractvalue { i64, i1 } %43, 1, !dbg !2019
  call void @llvm.dbg.value(metadata i64 poison, metadata !1985, metadata !DIExpression()), !dbg !1986
  br i1 %44, label %45, label %47, !dbg !2021

45:                                               ; preds = %41
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5.31, i32 noundef 5) #37, !dbg !2022
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %46) #37, !dbg !2022
  unreachable, !dbg !2022

47:                                               ; preds = %41
  %48 = extractvalue { i64, i1 } %43, 0, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %48, metadata !1985, metadata !DIExpression()), !dbg !1986
  br label %49

49:                                               ; preds = %15, %47
  %50 = phi i64 [ %48, %47 ], [ %18, %15 ], !dbg !1986
  ret i64 %50, !dbg !2023
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_file_list(ptr noundef %0) local_unnamed_addr #14 !dbg !2024 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2028, metadata !DIExpression()), !dbg !2029
  store i1 false, ptr @have_read_stdin, align 1, !dbg !2030
  %2 = icmp eq ptr %0, null, !dbg !2031
  %3 = select i1 %2, ptr @stdin_argv, ptr %0
  store ptr %3, ptr @file_list, align 8, !dbg !2033, !tbaa !1063
  ret void, !dbg !2034
}

; Function Attrs: nounwind uwtable
define dso_local ptr @next_file(ptr noundef %0) local_unnamed_addr #10 !dbg !464 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !502, metadata !DIExpression()), !dbg !2035
  %2 = icmp eq ptr %0, null, !dbg !2036
  br i1 %2, label %25, label %3, !dbg !2037

3:                                                ; preds = %1
  %4 = tail call ptr @__errno_location() #40, !dbg !2038
  %5 = load i32, ptr %4, align 4, !dbg !2038, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 %5, metadata !504, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata ptr %0, metadata !2040, metadata !DIExpression()), !dbg !2045
  %6 = load i32, ptr %0, align 8, !dbg !2048, !tbaa !1375
  %7 = and i32 %6, 32, !dbg !2049
  %8 = icmp eq i32 %7, 0, !dbg !2049
  %9 = select i1 %8, i32 0, i32 %5, !dbg !2050
  call void @llvm.dbg.value(metadata i32 %9, metadata !504, metadata !DIExpression()), !dbg !2039
  %10 = load ptr, ptr @next_file.prev_file, align 8, !dbg !2051, !tbaa !1063
  call void @llvm.dbg.value(metadata ptr %10, metadata !2053, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata ptr @.str.6.34, metadata !2056, metadata !DIExpression()), !dbg !2057
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.6.34) #38, !dbg !2059
  %12 = icmp eq i32 %11, 0, !dbg !2060
  br i1 %12, label %13, label %14, !dbg !2061

13:                                               ; preds = %3
  tail call void @clearerr_unlocked(ptr noundef nonnull %0) #37, !dbg !2062
  br label %19, !dbg !2062

14:                                               ; preds = %3
  %15 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !2063
  %16 = icmp eq i32 %15, 0, !dbg !2065
  br i1 %16, label %19, label %17, !dbg !2066

17:                                               ; preds = %14
  %18 = load i32, ptr %4, align 4, !dbg !2067, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 %18, metadata !504, metadata !DIExpression()), !dbg !2039
  br label %19, !dbg !2068

19:                                               ; preds = %14, %17, %13
  %20 = phi i32 [ %9, %13 ], [ %18, %17 ], [ %9, %14 ], !dbg !2039
  call void @llvm.dbg.value(metadata i32 %20, metadata !504, metadata !DIExpression()), !dbg !2039
  %21 = icmp eq i32 %20, 0, !dbg !2069
  br i1 %21, label %25, label %22, !dbg !2071

22:                                               ; preds = %19
  %23 = load ptr, ptr @next_file.prev_file, align 8, !dbg !2072, !tbaa !1063
  %24 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %23) #37, !dbg !2072
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %20, ptr noundef nonnull @.str.7.37, ptr noundef %24) #37, !dbg !2072
  store i32 1, ptr @exit_status, align 4, !dbg !2074, !tbaa !1132
  br label %25, !dbg !2075

25:                                               ; preds = %19, %22, %1
  %26 = load ptr, ptr @file_list, align 8, !dbg !2076, !tbaa !1063
  %27 = getelementptr inbounds ptr, ptr %26, i64 1, !dbg !2076
  store ptr %27, ptr @file_list, align 8, !dbg !2076, !tbaa !1063
  %28 = load ptr, ptr %26, align 8, !dbg !2077, !tbaa !1063
  call void @llvm.dbg.value(metadata ptr %28, metadata !503, metadata !DIExpression()), !dbg !2035
  %29 = icmp eq ptr %28, null, !dbg !2078
  br i1 %29, label %50, label %30, !dbg !2079

30:                                               ; preds = %25, %42
  %31 = phi ptr [ %48, %42 ], [ %28, %25 ]
  call void @llvm.dbg.value(metadata ptr %31, metadata !2053, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata ptr @.str.6.34, metadata !2056, metadata !DIExpression()), !dbg !2080
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(2) @.str.6.34) #38, !dbg !2084
  %33 = icmp eq i32 %32, 0, !dbg !2085
  br i1 %33, label %34, label %36, !dbg !2086

34:                                               ; preds = %30
  store i1 true, ptr @have_read_stdin, align 1, !dbg !2087
  %35 = load ptr, ptr @stdin, align 8, !dbg !2089, !tbaa !1063
  call void @llvm.dbg.value(metadata ptr %35, metadata !502, metadata !DIExpression()), !dbg !2035
  br label %38, !dbg !2090

36:                                               ; preds = %30
  %37 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull %31, ptr noundef nonnull @.str.8.38) #37, !dbg !2091
  call void @llvm.dbg.value(metadata ptr %37, metadata !502, metadata !DIExpression()), !dbg !2035
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %35, %34 ], [ %37, %36 ], !dbg !2092
  call void @llvm.dbg.value(metadata ptr %39, metadata !502, metadata !DIExpression()), !dbg !2035
  %40 = icmp eq ptr %39, null, !dbg !2093
  br i1 %40, label %42, label %41, !dbg !2095

41:                                               ; preds = %38
  store ptr %31, ptr @next_file.prev_file, align 8, !dbg !2096, !tbaa !1063
  tail call void @fadvise(ptr noundef nonnull %39, i32 noundef 2) #37, !dbg !2098
  br label %50, !dbg !2099

42:                                               ; preds = %38
  %43 = tail call ptr @__errno_location() #40, !dbg !2100
  %44 = load i32, ptr %43, align 4, !dbg !2100, !tbaa !1132
  %45 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %31) #37, !dbg !2100
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %44, ptr noundef nonnull @.str.7.37, ptr noundef %45) #37, !dbg !2100
  store i32 1, ptr @exit_status, align 4, !dbg !2101, !tbaa !1132
  %46 = load ptr, ptr @file_list, align 8, !dbg !2076, !tbaa !1063
  %47 = getelementptr inbounds ptr, ptr %46, i64 1, !dbg !2076
  store ptr %47, ptr @file_list, align 8, !dbg !2076, !tbaa !1063
  %48 = load ptr, ptr %46, align 8, !dbg !2077, !tbaa !1063
  call void @llvm.dbg.value(metadata ptr %48, metadata !503, metadata !DIExpression()), !dbg !2035
  %49 = icmp eq ptr %48, null, !dbg !2078
  br i1 %49, label %50, label %30, !dbg !2079, !llvm.loop !2102

50:                                               ; preds = %42, %25, %41
  %51 = phi ptr [ %39, %41 ], [ null, %25 ], [ null, %42 ], !dbg !2035
  ret ptr %51, !dbg !2104
}

; Function Attrs: nounwind uwtable
define dso_local void @cleanup_file_list_stdin() local_unnamed_addr #10 !dbg !2105 {
  %1 = load i1, ptr @have_read_stdin, align 1, !dbg !2106
  br i1 %1, label %2, label %9, !dbg !2108

2:                                                ; preds = %0
  %3 = load ptr, ptr @stdin, align 8, !dbg !2109, !tbaa !1063
  %4 = tail call i32 @rpl_fclose(ptr noundef %3) #37, !dbg !2110
  %5 = icmp eq i32 %4, 0, !dbg !2111
  br i1 %5, label %9, label %6, !dbg !2112

6:                                                ; preds = %2
  %7 = tail call ptr @__errno_location() #40, !dbg !2113
  %8 = load i32, ptr %7, align 4, !dbg !2113, !tbaa !1132
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %8, ptr noundef nonnull @.str.6.34) #37, !dbg !2113
  unreachable, !dbg !2113

9:                                                ; preds = %2, %0
  ret void, !dbg !2114
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_tab_list_info(ptr noundef %0) local_unnamed_addr #10 !dbg !2115 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2117, metadata !DIExpression()), !dbg !2118
  %2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9.43, i32 noundef 5) #37, !dbg !2119
  call void @llvm.dbg.value(metadata ptr %0, metadata !572, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata ptr %2, metadata !573, metadata !DIExpression()), !dbg !2120
  %3 = load i32, ptr @oputs_.help_no_sgr.44, align 4, !dbg !2122, !tbaa !1132
  %4 = icmp eq i32 %3, -1, !dbg !2123
  br i1 %4, label %5, label %17, !dbg !2124

5:                                                ; preds = %1
  %6 = tail call ptr @getenv(ptr noundef nonnull @.str.17.45) #37, !dbg !2125
  call void @llvm.dbg.value(metadata ptr %6, metadata !574, metadata !DIExpression()), !dbg !2126
  %7 = icmp eq ptr %6, null, !dbg !2127
  br i1 %7, label %15, label %8, !dbg !2128

8:                                                ; preds = %5
  %9 = load i8, ptr %6, align 1, !dbg !2129, !tbaa !1141
  %10 = icmp eq i8 %9, 0, !dbg !2129
  br i1 %10, label %15, label %11, !dbg !2130

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata ptr %6, metadata !2053, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata ptr @.str.18.46, metadata !2056, metadata !DIExpression()), !dbg !2131
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.18.46) #38, !dbg !2133
  %13 = icmp eq i32 %12, 0, !dbg !2134
  %14 = zext i1 %13 to i32, !dbg !2130
  br label %15, !dbg !2130

15:                                               ; preds = %11, %8, %5
  %16 = phi i32 [ 1, %8 ], [ 1, %5 ], [ %14, %11 ]
  store i32 %16, ptr @oputs_.help_no_sgr.44, align 4, !dbg !2135, !tbaa !1132
  br label %17, !dbg !2136

17:                                               ; preds = %15, %1
  %18 = phi i32 [ %16, %15 ], [ %3, %1 ], !dbg !2137
  %19 = icmp eq i32 %18, 0, !dbg !2137
  br i1 %19, label %23, label %20, !dbg !2139

20:                                               ; preds = %17
  %21 = load ptr, ptr @stdout, align 8, !dbg !2140, !tbaa !1063
  %22 = tail call i32 @fputs_unlocked(ptr noundef %2, ptr noundef %21), !dbg !2140
  br label %155, !dbg !2142

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 1, metadata !577, metadata !DIExpression()), !dbg !2120
  %24 = tail call i64 @strspn(ptr noundef %2, ptr noundef nonnull @.str.19.47) #38, !dbg !2143
  %25 = getelementptr inbounds i8, ptr %2, i64 %24, !dbg !2144
  call void @llvm.dbg.value(metadata ptr %25, metadata !578, metadata !DIExpression()), !dbg !2120
  %26 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 45) #38, !dbg !2145
  call void @llvm.dbg.value(metadata ptr %26, metadata !579, metadata !DIExpression()), !dbg !2120
  %27 = icmp eq ptr %26, null, !dbg !2146
  br i1 %27, label %55, label %28, !dbg !2147

28:                                               ; preds = %23
  %29 = icmp eq ptr %26, %25, !dbg !2148
  br i1 %29, label %55, label %30, !dbg !2149

30:                                               ; preds = %28
  call void @llvm.dbg.value(metadata ptr %25, metadata !580, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i64 0, metadata !584, metadata !DIExpression()), !dbg !2150
  %31 = icmp ult ptr %25, %26, !dbg !2151
  br i1 %31, label %32, label %52, !dbg !2152

32:                                               ; preds = %30
  %33 = tail call ptr @__ctype_b_loc() #40, !dbg !2120
  %34 = load ptr, ptr %33, align 8, !tbaa !1063
  br label %35, !dbg !2152

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %25, %32 ], [ %38, %35 ]
  %37 = phi i64 [ 0, %32 ], [ %46, %35 ]
  call void @llvm.dbg.value(metadata ptr %36, metadata !580, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i64 %37, metadata !584, metadata !DIExpression()), !dbg !2150
  %38 = getelementptr inbounds i8, ptr %36, i64 1, !dbg !2153
  call void @llvm.dbg.value(metadata ptr %38, metadata !580, metadata !DIExpression()), !dbg !2150
  %39 = load i8, ptr %36, align 1, !dbg !2153, !tbaa !1141
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, ptr %34, i64 %40, !dbg !2153
  %42 = load i16, ptr %41, align 2, !dbg !2153, !tbaa !1173
  %43 = lshr i16 %42, 13, !dbg !2154
  %44 = and i16 %43, 1, !dbg !2154
  %45 = zext i16 %44 to i64
  %46 = add nuw nsw i64 %37, %45, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %46, metadata !584, metadata !DIExpression()), !dbg !2150
  %47 = icmp ult ptr %38, %26, !dbg !2151
  %48 = icmp ult i64 %46, 2, !dbg !2156
  %49 = select i1 %47, i1 %48, i1 false, !dbg !2156
  br i1 %49, label %35, label %50, !dbg !2152, !llvm.loop !2157

50:                                               ; preds = %35
  %51 = icmp ne i64 %46, 2, !dbg !2158
  br label %52, !dbg !2158

52:                                               ; preds = %50, %30
  %53 = phi i1 [ true, %30 ], [ %51, %50 ]
  %54 = select i1 %53, ptr %26, ptr %25, !dbg !2160
  call void @llvm.dbg.value(metadata i8 poison, metadata !577, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata ptr %54, metadata !579, metadata !DIExpression()), !dbg !2120
  br label %55, !dbg !2161

55:                                               ; preds = %52, %28, %23
  %56 = phi ptr [ %54, %52 ], [ %25, %28 ], [ %25, %23 ], !dbg !2120
  %57 = phi i1 [ %53, %52 ], [ true, %28 ], [ false, %23 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !577, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata ptr %56, metadata !579, metadata !DIExpression()), !dbg !2120
  %58 = tail call i64 @strcspn(ptr noundef %56, ptr noundef nonnull @.str.20) #38, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %58, metadata !585, metadata !DIExpression()), !dbg !2120
  %59 = getelementptr inbounds i8, ptr %56, i64 %58, !dbg !2163
  call void @llvm.dbg.value(metadata ptr %59, metadata !586, metadata !DIExpression()), !dbg !2120
  br label %60, !dbg !2164

60:                                               ; preds = %91, %55
  %61 = phi ptr [ %59, %55 ], [ %92, %91 ], !dbg !2120
  %62 = phi i1 [ %57, %55 ], [ %70, %91 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !577, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata ptr %61, metadata !586, metadata !DIExpression()), !dbg !2120
  %63 = load i8, ptr %61, align 1, !dbg !2165, !tbaa !1141
  switch i8 %63, label %69 [
    i8 0, label %93
    i8 10, label %93
    i8 45, label %64
  ], !dbg !2166

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !2167
  %66 = load i8, ptr %65, align 1, !dbg !2170, !tbaa !1141
  %67 = icmp ne i8 %66, 45, !dbg !2171
  %68 = select i1 %67, i1 %62, i1 false, !dbg !2172
  br label %69, !dbg !2172

69:                                               ; preds = %64, %60
  %70 = phi i1 [ %62, %60 ], [ %68, %64 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !577, metadata !DIExpression()), !dbg !2120
  %71 = tail call ptr @__ctype_b_loc() #40, !dbg !2173
  %72 = load ptr, ptr %71, align 8, !dbg !2173, !tbaa !1063
  %73 = zext i8 %63 to i64
  %74 = getelementptr inbounds i16, ptr %72, i64 %73, !dbg !2173
  %75 = load i16, ptr %74, align 2, !dbg !2173, !tbaa !1173
  %76 = and i16 %75, 8192, !dbg !2173
  %77 = icmp eq i16 %76, 0, !dbg !2173
  br i1 %77, label %91, label %78, !dbg !2175

78:                                               ; preds = %69
  %79 = icmp eq i8 %63, 9, !dbg !2176
  br i1 %79, label %93, label %80, !dbg !2179

80:                                               ; preds = %78
  %81 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !2180
  %82 = load i8, ptr %81, align 1, !dbg !2180, !tbaa !1141
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds i16, ptr %72, i64 %83, !dbg !2180
  %85 = load i16, ptr %84, align 2, !dbg !2180, !tbaa !1173
  %86 = and i16 %85, 8192, !dbg !2180
  %87 = icmp eq i16 %86, 0, !dbg !2180
  %88 = icmp eq i8 %82, 45
  %89 = select i1 %70, i1 true, i1 %88
  %90 = select i1 %87, i1 %89, i1 false, !dbg !2181
  br i1 %90, label %91, label %93, !dbg !2181

91:                                               ; preds = %80, %69
  %92 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !2182
  call void @llvm.dbg.value(metadata ptr %92, metadata !586, metadata !DIExpression()), !dbg !2120
  br label %60, !dbg !2164, !llvm.loop !2183

93:                                               ; preds = %80, %78, %60, %60
  %94 = ptrtoint ptr %25 to i64, !dbg !2185
  %95 = load ptr, ptr @stdout, align 8, !dbg !2185, !tbaa !1063
  %96 = tail call i64 @fwrite_unlocked(ptr noundef %2, i64 noundef 1, i64 noundef %24, ptr noundef %95), !dbg !2185
  call void @llvm.dbg.value(metadata ptr %0, metadata !2053, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata ptr @.str.21, metadata !2056, metadata !DIExpression()), !dbg !2186
  %97 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.21) #38, !dbg !2188
  %98 = icmp eq i32 %97, 0, !dbg !2189
  br i1 %98, label %127, label %99, !dbg !2190

99:                                               ; preds = %93
  call void @llvm.dbg.value(metadata ptr %0, metadata !2053, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !2056, metadata !DIExpression()), !dbg !2191
  %100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.23) #38, !dbg !2193
  %101 = icmp eq i32 %100, 0, !dbg !2194
  br i1 %101, label %127, label %102, !dbg !2195

102:                                              ; preds = %99
  call void @llvm.dbg.value(metadata ptr %0, metadata !2053, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata ptr @.str.25, metadata !2056, metadata !DIExpression()), !dbg !2196
  %103 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.25) #38, !dbg !2198
  %104 = icmp eq i32 %103, 0, !dbg !2199
  br i1 %104, label %127, label %105, !dbg !2200

105:                                              ; preds = %102
  call void @llvm.dbg.value(metadata ptr %0, metadata !2053, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !2056, metadata !DIExpression()), !dbg !2201
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.26) #38, !dbg !2203
  %107 = icmp eq i32 %106, 0, !dbg !2204
  br i1 %107, label %127, label %108, !dbg !2205

108:                                              ; preds = %105
  call void @llvm.dbg.value(metadata ptr %0, metadata !2053, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !2056, metadata !DIExpression()), !dbg !2206
  %109 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.28) #38, !dbg !2208
  %110 = icmp eq i32 %109, 0, !dbg !2209
  br i1 %110, label %127, label %111, !dbg !2210

111:                                              ; preds = %108
  call void @llvm.dbg.value(metadata ptr %0, metadata !2053, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata ptr @.str.29, metadata !2056, metadata !DIExpression()), !dbg !2211
  %112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.29) #38, !dbg !2213
  %113 = icmp eq i32 %112, 0, !dbg !2214
  br i1 %113, label %127, label %114, !dbg !2215

114:                                              ; preds = %111
  call void @llvm.dbg.value(metadata ptr %0, metadata !2053, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !2056, metadata !DIExpression()), !dbg !2216
  %115 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.30) #38, !dbg !2218
  %116 = icmp eq i32 %115, 0, !dbg !2219
  br i1 %116, label %127, label %117, !dbg !2220

117:                                              ; preds = %114
  call void @llvm.dbg.value(metadata ptr %0, metadata !2053, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !2056, metadata !DIExpression()), !dbg !2221
  %118 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.31) #38, !dbg !2223
  %119 = icmp eq i32 %118, 0, !dbg !2224
  br i1 %119, label %127, label %120, !dbg !2225

120:                                              ; preds = %117
  call void @llvm.dbg.value(metadata ptr %0, metadata !2053, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata ptr @.str.32.48, metadata !2056, metadata !DIExpression()), !dbg !2226
  %121 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.32.48) #38, !dbg !2228
  %122 = icmp eq i32 %121, 0, !dbg !2229
  br i1 %122, label %127, label %123, !dbg !2230

123:                                              ; preds = %120
  call void @llvm.dbg.value(metadata ptr %0, metadata !2053, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata ptr @.str.33.49, metadata !2056, metadata !DIExpression()), !dbg !2231
  %124 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.33.49) #38, !dbg !2233
  %125 = icmp eq i32 %124, 0, !dbg !2234
  %126 = select i1 %125, ptr @.str.27, ptr %0, !dbg !2235
  br label %127, !dbg !2230

127:                                              ; preds = %123, %120, %117, %114, %111, %108, %105, %102, %99, %93
  %128 = phi ptr [ @.str.22, %93 ], [ @.str.24, %99 ], [ @.str.24, %102 ], [ @.str.27, %105 ], [ @.str.27, %108 ], [ @.str.27, %111 ], [ @.str.27, %114 ], [ @.str.27, %117 ], [ %126, %123 ], [ @.str.27, %120 ], !dbg !2190
  call void @llvm.dbg.value(metadata ptr %128, metadata !591, metadata !DIExpression()), !dbg !2120
  %129 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(7) @.str.34.50, i64 noundef 6) #38, !dbg !2236
  %130 = icmp eq i32 %129, 0, !dbg !2236
  br i1 %130, label %134, label %131, !dbg !2238

131:                                              ; preds = %127
  %132 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(10) @.str.35.51, i64 noundef 9) #38, !dbg !2239
  %133 = icmp eq i32 %132, 0, !dbg !2239
  br i1 %133, label %134, label %137, !dbg !2240

134:                                              ; preds = %131, %127
  %135 = trunc i64 %58 to i32, !dbg !2241
  %136 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36.52, ptr noundef nonnull @.str.37.53, ptr noundef %128, ptr noundef %128, i32 noundef %135, ptr noundef %56) #37, !dbg !2241
  br label %140, !dbg !2243

137:                                              ; preds = %131
  %138 = trunc i64 %58 to i32, !dbg !2244
  %139 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38.54, ptr noundef nonnull @.str.39.55, ptr noundef %128, i32 noundef %138, ptr noundef %56) #37, !dbg !2244
  br label %140

140:                                              ; preds = %137, %134
  %141 = load ptr, ptr @stdout, align 8, !dbg !2246, !tbaa !1063
  %142 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40.56, ptr noundef %141), !dbg !2246
  %143 = load ptr, ptr @stdout, align 8, !dbg !2247, !tbaa !1063
  %144 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41.57, ptr noundef %143), !dbg !2247
  %145 = ptrtoint ptr %61 to i64, !dbg !2248
  %146 = sub i64 %145, %94, !dbg !2248
  %147 = load ptr, ptr @stdout, align 8, !dbg !2248, !tbaa !1063
  %148 = tail call i64 @fwrite_unlocked(ptr noundef %25, i64 noundef 1, i64 noundef %146, ptr noundef %147), !dbg !2248
  %149 = load ptr, ptr @stdout, align 8, !dbg !2249, !tbaa !1063
  %150 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %149), !dbg !2249
  %151 = load ptr, ptr @stdout, align 8, !dbg !2250, !tbaa !1063
  %152 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %151), !dbg !2250
  %153 = load ptr, ptr @stdout, align 8, !dbg !2251, !tbaa !1063
  %154 = tail call i32 @fputs_unlocked(ptr noundef nonnull %61, ptr noundef %153), !dbg !2251
  br label %155, !dbg !2252

155:                                              ; preds = %20, %140
  %156 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10.58, i32 noundef 5) #37, !dbg !2253
  %157 = load ptr, ptr @stdout, align 8, !dbg !2253, !tbaa !1063
  %158 = tail call i32 @fputs_unlocked(ptr noundef %156, ptr noundef %157), !dbg !2253
  ret void, !dbg !2254
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #14 !dbg !2255 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2257, metadata !DIExpression()), !dbg !2258
  store ptr %0, ptr @file_name, align 8, !dbg !2259, !tbaa !1063
  ret void, !dbg !2260
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !2261 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2265, metadata !DIExpression()), !dbg !2266
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !2267, !tbaa !1299
  ret void, !dbg !2268
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2269 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2274, !tbaa !1063
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !2275
  %3 = icmp eq i32 %2, 0, !dbg !2276
  br i1 %3, label %22, label %4, !dbg !2277

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !2278, !tbaa !1299, !range !1500, !noundef !1072
  %6 = icmp eq i8 %5, 0, !dbg !2278
  br i1 %6, label %11, label %7, !dbg !2279

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !2280
  %9 = load i32, ptr %8, align 4, !dbg !2280, !tbaa !1132
  %10 = icmp eq i32 %9, 32, !dbg !2281
  br i1 %10, label %22, label %11, !dbg !2282

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1.65, i32 noundef 5) #37, !dbg !2283
  call void @llvm.dbg.value(metadata ptr %12, metadata !2271, metadata !DIExpression()), !dbg !2284
  %13 = load ptr, ptr @file_name, align 8, !dbg !2285, !tbaa !1063
  %14 = icmp eq ptr %13, null, !dbg !2285
  %15 = tail call ptr @__errno_location() #40, !dbg !2287
  %16 = load i32, ptr %15, align 4, !dbg !2287, !tbaa !1132
  br i1 %14, label %19, label %17, !dbg !2288

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !2289
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.66, ptr noundef %18, ptr noundef %12) #37, !dbg !2289
  br label %20, !dbg !2289

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.67, ptr noundef %12) #37, !dbg !2290
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2291, !tbaa !1132
  tail call void @_exit(i32 noundef %21) #39, !dbg !2292
  unreachable, !dbg !2292

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2293, !tbaa !1063
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !2295
  %25 = icmp eq i32 %24, 0, !dbg !2296
  br i1 %25, label %28, label %26, !dbg !2297

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2298, !tbaa !1132
  tail call void @_exit(i32 noundef %27) #39, !dbg !2299
  unreachable, !dbg !2299

28:                                               ; preds = %22
  ret void, !dbg !2300
}

; Function Attrs: noreturn
declare !dbg !2301 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !2303 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2307, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 %1, metadata !2308, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata ptr %2, metadata !2309, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2310, metadata !DIExpression()), !dbg !2312
  tail call fastcc void @flush_stdout(), !dbg !2313
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2314, !tbaa !1063
  %7 = icmp eq ptr %6, null, !dbg !2314
  br i1 %7, label %9, label %8, !dbg !2316

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !2317
  br label %13, !dbg !2317

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2318, !tbaa !1063
  %11 = tail call ptr @getprogname() #38, !dbg !2318
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.68, ptr noundef %11) #37, !dbg !2318
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !2320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2320, !tbaa.struct !2321
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2320
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !2320
  ret void, !dbg !2322
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2323 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2325, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i32 1, metadata !2327, metadata !DIExpression()), !dbg !2330
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !2333
  %2 = icmp slt i32 %1, 0, !dbg !2334
  br i1 %2, label %6, label %3, !dbg !2335

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2336, !tbaa !1063
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !2336
  br label %6, !dbg !2336

6:                                                ; preds = %3, %0
  ret void, !dbg !2337
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2338 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2340, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i32 %1, metadata !2341, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata ptr %2, metadata !2342, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2343, metadata !DIExpression()), !dbg !2345
  %7 = load ptr, ptr @stderr, align 8, !dbg !2346, !tbaa !1063
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !2347, !noalias !2391
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2395
  call void @llvm.dbg.value(metadata ptr %7, metadata !2387, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata ptr %2, metadata !2388, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2389, metadata !DIExpression()), !dbg !2397
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !2347
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !2347, !noalias !2391
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2398, !tbaa !1132
  %10 = add i32 %9, 1, !dbg !2398
  store i32 %10, ptr @error_message_count, align 4, !dbg !2398, !tbaa !1132
  %11 = icmp eq i32 %1, 0, !dbg !2399
  br i1 %11, label %21, label %12, !dbg !2401

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2402, metadata !DIExpression()), !dbg !2410
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !2412
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2406, metadata !DIExpression()), !dbg !2413
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !2414
  call void @llvm.dbg.value(metadata ptr %13, metadata !2405, metadata !DIExpression()), !dbg !2410
  %14 = icmp eq ptr %13, null, !dbg !2415
  br i1 %14, label %15, label %17, !dbg !2417

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.69, ptr noundef nonnull @.str.5.70, i32 noundef 5) #37, !dbg !2418
  call void @llvm.dbg.value(metadata ptr %16, metadata !2405, metadata !DIExpression()), !dbg !2410
  br label %17, !dbg !2419

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2410
  call void @llvm.dbg.value(metadata ptr %18, metadata !2405, metadata !DIExpression()), !dbg !2410
  %19 = load ptr, ptr @stderr, align 8, !dbg !2420, !tbaa !1063
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.71, ptr noundef %18) #37, !dbg !2420
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !2421
  br label %21, !dbg !2422

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2423, !tbaa !1063
  call void @llvm.dbg.value(metadata i32 10, metadata !2424, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata ptr %22, metadata !2429, metadata !DIExpression()), !dbg !2430
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2432
  %24 = load ptr, ptr %23, align 8, !dbg !2432, !tbaa !1537
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2432
  %26 = load ptr, ptr %25, align 8, !dbg !2432, !tbaa !1538
  %27 = icmp ult ptr %24, %26, !dbg !2432
  br i1 %27, label %30, label %28, !dbg !2432, !prof !1539

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !2432
  br label %32, !dbg !2432

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2432
  store ptr %31, ptr %23, align 8, !dbg !2432, !tbaa !1537
  store i8 10, ptr %24, align 1, !dbg !2432, !tbaa !1141
  br label %32, !dbg !2432

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2433, !tbaa !1063
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !2433
  %35 = icmp eq i32 %0, 0, !dbg !2434
  br i1 %35, label %37, label %36, !dbg !2436

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #39, !dbg !2437
  unreachable, !dbg !2437

37:                                               ; preds = %32
  ret void, !dbg !2438
}

declare !dbg !2439 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2442 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2445 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2449 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2453, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 %1, metadata !2454, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata ptr %2, metadata !2455, metadata !DIExpression()), !dbg !2457
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !2458
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2456, metadata !DIExpression()), !dbg !2459
  call void @llvm.va_start(ptr nonnull %4), !dbg !2460
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !2461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2461, !tbaa.struct !2321
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #42, !dbg !2461
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !2461
  call void @llvm.va_end(ptr nonnull %4), !dbg !2462
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !2463
  ret void, !dbg !2463
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !683 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !700, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i32 %1, metadata !701, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata ptr %2, metadata !702, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i32 %3, metadata !703, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata ptr %4, metadata !704, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.declare(metadata ptr %5, metadata !705, metadata !DIExpression()), !dbg !2465
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2466, !tbaa !1132
  %9 = icmp eq i32 %8, 0, !dbg !2466
  br i1 %9, label %24, label %10, !dbg !2468

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2469, !tbaa !1132
  %12 = icmp eq i32 %11, %3, !dbg !2472
  br i1 %12, label %13, label %23, !dbg !2473

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2474, !tbaa !1063
  %15 = icmp eq ptr %14, %2, !dbg !2475
  br i1 %15, label %37, label %16, !dbg !2476

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2477
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2478
  br i1 %19, label %20, label %23, !dbg !2478

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2479
  %22 = icmp eq i32 %21, 0, !dbg !2480
  br i1 %22, label %37, label %23, !dbg !2481

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2482, !tbaa !1063
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2483, !tbaa !1132
  br label %24, !dbg !2484

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2485
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2486, !tbaa !1063
  %26 = icmp eq ptr %25, null, !dbg !2486
  br i1 %26, label %28, label %27, !dbg !2488

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !2489
  br label %32, !dbg !2489

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2490, !tbaa !1063
  %30 = tail call ptr @getprogname() #38, !dbg !2490
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.74, ptr noundef %30) #37, !dbg !2490
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2492, !tbaa !1063
  %34 = icmp eq ptr %2, null, !dbg !2492
  %35 = select i1 %34, ptr @.str.3.75, ptr @.str.2.76, !dbg !2492
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !2492
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !2493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2493, !tbaa.struct !2321
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2493
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !2493
  br label %37, !dbg !2494

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2494
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2495 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2499, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i32 %1, metadata !2500, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata ptr %2, metadata !2501, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i32 %3, metadata !2502, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata ptr %4, metadata !2503, metadata !DIExpression()), !dbg !2505
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !2506
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2504, metadata !DIExpression()), !dbg !2507
  call void @llvm.va_start(ptr nonnull %6), !dbg !2508
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !2509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2509, !tbaa.struct !2321
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #42, !dbg !2509
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !2509
  call void @llvm.va_end(ptr nonnull %6), !dbg !2510
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !2511
  ret void, !dbg !2511
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2512 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2518, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i64 %1, metadata !2519, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i64 %2, metadata !2520, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i32 %3, metadata !2521, metadata !DIExpression()), !dbg !2522
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #37, !dbg !2523
  ret void, !dbg !2524
}

; Function Attrs: nounwind
declare !dbg !2525 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2528 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2566, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i32 %1, metadata !2567, metadata !DIExpression()), !dbg !2568
  %3 = icmp eq ptr %0, null, !dbg !2569
  br i1 %3, label %7, label %4, !dbg !2571

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2572
  call void @llvm.dbg.value(metadata i32 %5, metadata !2518, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i64 0, metadata !2519, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i64 0, metadata !2520, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i32 %1, metadata !2521, metadata !DIExpression()), !dbg !2573
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #37, !dbg !2575
  br label %7, !dbg !2576

7:                                                ; preds = %4, %2
  ret void, !dbg !2577
}

; Function Attrs: nofree nounwind
declare !dbg !2578 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2581 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2619, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i32 0, metadata !2620, metadata !DIExpression()), !dbg !2623
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2624
  call void @llvm.dbg.value(metadata i32 %2, metadata !2621, metadata !DIExpression()), !dbg !2623
  %3 = icmp slt i32 %2, 0, !dbg !2625
  br i1 %3, label %4, label %6, !dbg !2627

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2628
  br label %24, !dbg !2629

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !2630
  %8 = icmp eq i32 %7, 0, !dbg !2630
  br i1 %8, label %13, label %9, !dbg !2632

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2633
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !2634
  %12 = icmp eq i64 %11, -1, !dbg !2635
  br i1 %12, label %16, label %13, !dbg !2636

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !2637
  %15 = icmp eq i32 %14, 0, !dbg !2637
  br i1 %15, label %16, label %18, !dbg !2638

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2620, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i32 0, metadata !2622, metadata !DIExpression()), !dbg !2623
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2639
  call void @llvm.dbg.value(metadata i32 %17, metadata !2622, metadata !DIExpression()), !dbg !2623
  br label %24, !dbg !2640

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !2641
  %20 = load i32, ptr %19, align 4, !dbg !2641, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 %20, metadata !2620, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i32 0, metadata !2622, metadata !DIExpression()), !dbg !2623
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2639
  call void @llvm.dbg.value(metadata i32 %21, metadata !2622, metadata !DIExpression()), !dbg !2623
  %22 = icmp eq i32 %20, 0, !dbg !2642
  br i1 %22, label %24, label %23, !dbg !2640

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2644, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 -1, metadata !2622, metadata !DIExpression()), !dbg !2623
  br label %24, !dbg !2646

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2623
  ret i32 %25, !dbg !2647
}

; Function Attrs: nofree nounwind
declare !dbg !2648 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2649 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2651 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2654 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2692, metadata !DIExpression()), !dbg !2693
  %2 = icmp eq ptr %0, null, !dbg !2694
  br i1 %2, label %6, label %3, !dbg !2696

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !2697
  %5 = icmp eq i32 %4, 0, !dbg !2697
  br i1 %5, label %6, label %8, !dbg !2698

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2699
  br label %16, !dbg !2700

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2701, metadata !DIExpression()), !dbg !2706
  %9 = load i32, ptr %0, align 8, !dbg !2708, !tbaa !1375
  %10 = and i32 %9, 256, !dbg !2710
  %11 = icmp eq i32 %10, 0, !dbg !2710
  br i1 %11, label %14, label %12, !dbg !2711

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !2712
  br label %14, !dbg !2712

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2713
  br label %16, !dbg !2714

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2693
  ret i32 %17, !dbg !2715
}

; Function Attrs: nofree nounwind
declare !dbg !2716 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2717 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2755, metadata !DIExpression()), !dbg !2756
  tail call void @__fpurge(ptr noundef nonnull %0) #37, !dbg !2757
  ret i32 0, !dbg !2758
}

; Function Attrs: nounwind
declare !dbg !2759 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2762 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2800, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i64 %1, metadata !2801, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 %2, metadata !2802, metadata !DIExpression()), !dbg !2806
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2807
  %5 = load ptr, ptr %4, align 8, !dbg !2807, !tbaa !2808
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2809
  %7 = load ptr, ptr %6, align 8, !dbg !2809, !tbaa !2810
  %8 = icmp eq ptr %5, %7, !dbg !2811
  br i1 %8, label %9, label %27, !dbg !2812

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2813
  %11 = load ptr, ptr %10, align 8, !dbg !2813, !tbaa !1537
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2814
  %13 = load ptr, ptr %12, align 8, !dbg !2814, !tbaa !2815
  %14 = icmp eq ptr %11, %13, !dbg !2816
  br i1 %14, label %15, label %27, !dbg !2817

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2818
  %17 = load ptr, ptr %16, align 8, !dbg !2818, !tbaa !2819
  %18 = icmp eq ptr %17, null, !dbg !2820
  br i1 %18, label %19, label %27, !dbg !2821

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2822
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !2823
  call void @llvm.dbg.value(metadata i64 %21, metadata !2803, metadata !DIExpression()), !dbg !2824
  %22 = icmp eq i64 %21, -1, !dbg !2825
  br i1 %22, label %29, label %23, !dbg !2827

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2828, !tbaa !1375
  %25 = and i32 %24, -17, !dbg !2828
  store i32 %25, ptr %0, align 8, !dbg !2828, !tbaa !1375
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2829
  store i64 %21, ptr %26, align 8, !dbg !2830, !tbaa !2831
  br label %29, !dbg !2832

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2833
  br label %29, !dbg !2834

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2806
  ret i32 %30, !dbg !2835
}

; Function Attrs: nofree nounwind
declare !dbg !2836 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !2839 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2842, !tbaa !1063
  ret ptr %1, !dbg !2843
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !2844 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2846, metadata !DIExpression()), !dbg !2849
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !2850
  call void @llvm.dbg.value(metadata ptr %2, metadata !2847, metadata !DIExpression()), !dbg !2849
  %3 = icmp eq ptr %2, null, !dbg !2851
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2851
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2851
  call void @llvm.dbg.value(metadata ptr %5, metadata !2848, metadata !DIExpression()), !dbg !2849
  %6 = ptrtoint ptr %5 to i64, !dbg !2852
  %7 = ptrtoint ptr %0 to i64, !dbg !2852
  %8 = sub i64 %6, %7, !dbg !2852
  %9 = icmp sgt i64 %8, 6, !dbg !2854
  br i1 %9, label %10, label %19, !dbg !2855

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2856
  call void @llvm.dbg.value(metadata ptr %11, metadata !2857, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata ptr @.str.95, metadata !2862, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 7, metadata !2863, metadata !DIExpression()), !dbg !2864
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.95, i64 7), !dbg !2866
  %13 = icmp eq i32 %12, 0, !dbg !2867
  br i1 %13, label %14, label %19, !dbg !2868

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2846, metadata !DIExpression()), !dbg !2849
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.96, i64 noundef 3) #38, !dbg !2869
  %16 = icmp eq i32 %15, 0, !dbg !2872
  %17 = select i1 %16, i64 3, i64 0, !dbg !2873
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2873
  br label %19, !dbg !2873

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2849
  call void @llvm.dbg.value(metadata ptr %21, metadata !2848, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata ptr %20, metadata !2846, metadata !DIExpression()), !dbg !2849
  store ptr %20, ptr @program_name, align 8, !dbg !2874, !tbaa !1063
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2875, !tbaa !1063
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2876, !tbaa !1063
  ret void, !dbg !2877
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2878 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !737 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !744, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata ptr %1, metadata !745, metadata !DIExpression()), !dbg !2879
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !2880
  call void @llvm.dbg.value(metadata ptr %5, metadata !746, metadata !DIExpression()), !dbg !2879
  %6 = icmp eq ptr %5, %0, !dbg !2881
  br i1 %6, label %7, label %14, !dbg !2883

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !2884
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !2885
  call void @llvm.dbg.declare(metadata ptr %4, metadata !748, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata ptr %4, metadata !2887, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata ptr %4, metadata !2896, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i32 0, metadata !2901, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i64 8, metadata !2902, metadata !DIExpression()), !dbg !2903
  store i64 0, ptr %4, align 8, !dbg !2905
  call void @llvm.dbg.value(metadata ptr %3, metadata !747, metadata !DIExpression(DW_OP_deref)), !dbg !2879
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !2906
  %9 = icmp eq i64 %8, 2, !dbg !2908
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !747, metadata !DIExpression()), !dbg !2879
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2909
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2879
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !2910
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !2910
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2879
  ret ptr %15, !dbg !2910
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2911 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2916, metadata !DIExpression()), !dbg !2919
  %2 = tail call ptr @__errno_location() #40, !dbg !2920
  %3 = load i32, ptr %2, align 4, !dbg !2920, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 %3, metadata !2917, metadata !DIExpression()), !dbg !2919
  %4 = icmp eq ptr %0, null, !dbg !2921
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2921
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #43, !dbg !2922
  call void @llvm.dbg.value(metadata ptr %6, metadata !2918, metadata !DIExpression()), !dbg !2919
  store i32 %3, ptr %2, align 4, !dbg !2923, !tbaa !1132
  ret ptr %6, !dbg !2924
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !2925 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2931, metadata !DIExpression()), !dbg !2932
  %2 = icmp eq ptr %0, null, !dbg !2933
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2933
  %4 = load i32, ptr %3, align 8, !dbg !2934, !tbaa !2935
  ret i32 %4, !dbg !2937
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2938 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2942, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i32 %1, metadata !2943, metadata !DIExpression()), !dbg !2944
  %3 = icmp eq ptr %0, null, !dbg !2945
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2945
  store i32 %1, ptr %4, align 8, !dbg !2946, !tbaa !2935
  ret void, !dbg !2947
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !2948 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2952, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 %1, metadata !2953, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 %2, metadata !2954, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 %1, metadata !2955, metadata !DIExpression()), !dbg !2960
  %4 = icmp eq ptr %0, null, !dbg !2961
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2961
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2962
  %7 = lshr i8 %1, 5, !dbg !2963
  %8 = zext i8 %7 to i64, !dbg !2963
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2964
  call void @llvm.dbg.value(metadata ptr %9, metadata !2956, metadata !DIExpression()), !dbg !2960
  %10 = and i8 %1, 31, !dbg !2965
  %11 = zext i8 %10 to i32, !dbg !2965
  call void @llvm.dbg.value(metadata i32 %11, metadata !2958, metadata !DIExpression()), !dbg !2960
  %12 = load i32, ptr %9, align 4, !dbg !2966, !tbaa !1132
  %13 = lshr i32 %12, %11, !dbg !2967
  %14 = and i32 %13, 1, !dbg !2968
  call void @llvm.dbg.value(metadata i32 %14, metadata !2959, metadata !DIExpression()), !dbg !2960
  %15 = xor i32 %13, %2, !dbg !2969
  %16 = and i32 %15, 1, !dbg !2969
  %17 = shl nuw i32 %16, %11, !dbg !2970
  %18 = xor i32 %17, %12, !dbg !2971
  store i32 %18, ptr %9, align 4, !dbg !2971, !tbaa !1132
  ret i32 %14, !dbg !2972
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2973 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2977, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i32 %1, metadata !2978, metadata !DIExpression()), !dbg !2980
  %3 = icmp eq ptr %0, null, !dbg !2981
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2983
  call void @llvm.dbg.value(metadata ptr %4, metadata !2977, metadata !DIExpression()), !dbg !2980
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2984
  %6 = load i32, ptr %5, align 4, !dbg !2984, !tbaa !2985
  call void @llvm.dbg.value(metadata i32 %6, metadata !2979, metadata !DIExpression()), !dbg !2980
  store i32 %1, ptr %5, align 4, !dbg !2986, !tbaa !2985
  ret i32 %6, !dbg !2987
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2988 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2992, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata ptr %1, metadata !2993, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata ptr %2, metadata !2994, metadata !DIExpression()), !dbg !2995
  %4 = icmp eq ptr %0, null, !dbg !2996
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2998
  call void @llvm.dbg.value(metadata ptr %5, metadata !2992, metadata !DIExpression()), !dbg !2995
  store i32 10, ptr %5, align 8, !dbg !2999, !tbaa !2935
  %6 = icmp ne ptr %1, null, !dbg !3000
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3002
  br i1 %8, label %10, label %9, !dbg !3002

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3003
  unreachable, !dbg !3003

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3004
  store ptr %1, ptr %11, align 8, !dbg !3005, !tbaa !3006
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3007
  store ptr %2, ptr %12, align 8, !dbg !3008, !tbaa !3009
  ret void, !dbg !3010
}

; Function Attrs: noreturn nounwind
declare !dbg !3011 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3012 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3016, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %1, metadata !3017, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %2, metadata !3018, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %3, metadata !3019, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %4, metadata !3020, metadata !DIExpression()), !dbg !3024
  %6 = icmp eq ptr %4, null, !dbg !3025
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3025
  call void @llvm.dbg.value(metadata ptr %7, metadata !3021, metadata !DIExpression()), !dbg !3024
  %8 = tail call ptr @__errno_location() #40, !dbg !3026
  %9 = load i32, ptr %8, align 4, !dbg !3026, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 %9, metadata !3022, metadata !DIExpression()), !dbg !3024
  %10 = load i32, ptr %7, align 8, !dbg !3027, !tbaa !2935
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3028
  %12 = load i32, ptr %11, align 4, !dbg !3028, !tbaa !2985
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3029
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3030
  %15 = load ptr, ptr %14, align 8, !dbg !3030, !tbaa !3006
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3031
  %17 = load ptr, ptr %16, align 8, !dbg !3031, !tbaa !3009
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %18, metadata !3023, metadata !DIExpression()), !dbg !3024
  store i32 %9, ptr %8, align 4, !dbg !3033, !tbaa !1132
  ret i64 %18, !dbg !3034
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3035 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3041, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %1, metadata !3042, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %2, metadata !3043, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %3, metadata !3044, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i32 %4, metadata !3045, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i32 %5, metadata !3046, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %6, metadata !3047, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %7, metadata !3048, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %8, metadata !3049, metadata !DIExpression()), !dbg !3103
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !3104
  %17 = icmp eq i64 %16, 1, !dbg !3105
  call void @llvm.dbg.value(metadata i1 %17, metadata !3050, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3103
  call void @llvm.dbg.value(metadata i64 0, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 0, metadata !3052, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr null, metadata !3053, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 0, metadata !3054, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 0, metadata !3055, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i32 %5, metadata !3056, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3103
  call void @llvm.dbg.value(metadata i8 0, metadata !3057, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 1, metadata !3058, metadata !DIExpression()), !dbg !3103
  %18 = and i32 %5, 2, !dbg !3106
  %19 = icmp ne i32 %18, 0, !dbg !3106
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !3106

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !3107
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !3108
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !3109
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !3042, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 poison, metadata !3058, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 poison, metadata !3057, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 poison, metadata !3056, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 poison, metadata !3055, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %34, metadata !3054, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %33, metadata !3053, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %32, metadata !3052, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 0, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %31, metadata !3044, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %30, metadata !3049, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %29, metadata !3048, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i32 %28, metadata !3045, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.label(metadata !3096), !dbg !3110
  call void @llvm.dbg.value(metadata i8 0, metadata !3059, metadata !DIExpression()), !dbg !3103
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
  ], !dbg !3111

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3056, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i32 5, metadata !3045, metadata !DIExpression()), !dbg !3103
  br label %102, !dbg !3112

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3056, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i32 5, metadata !3045, metadata !DIExpression()), !dbg !3103
  br i1 %36, label %102, label %42, !dbg !3112

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !3113
  br i1 %43, label %102, label %44, !dbg !3117

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !3113, !tbaa !1141
  br label %102, !dbg !3113

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.109, metadata !832, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 %28, metadata !833, metadata !DIExpression()), !dbg !3118
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.110, ptr noundef nonnull @.str.11.109, i32 noundef 5) #37, !dbg !3122
  call void @llvm.dbg.value(metadata ptr %46, metadata !834, metadata !DIExpression()), !dbg !3118
  %47 = icmp eq ptr %46, @.str.11.109, !dbg !3123
  br i1 %47, label %48, label %57, !dbg !3125

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !3126
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !3127
  call void @llvm.dbg.declare(metadata ptr %13, metadata !836, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata ptr %13, metadata !3129, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata ptr %13, metadata !3137, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i32 0, metadata !3140, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 8, metadata !3141, metadata !DIExpression()), !dbg !3142
  store i64 0, ptr %13, align 8, !dbg !3144
  call void @llvm.dbg.value(metadata ptr %12, metadata !835, metadata !DIExpression(DW_OP_deref)), !dbg !3118
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !3145
  %50 = icmp eq i64 %49, 3, !dbg !3147
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !835, metadata !DIExpression()), !dbg !3118
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !3148
  %54 = icmp eq i32 %28, 9, !dbg !3148
  %55 = select i1 %54, ptr @.str.10.111, ptr @.str.12.112, !dbg !3148
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !3148
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !3149
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !3149
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !3118
  call void @llvm.dbg.value(metadata ptr %58, metadata !3048, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr @.str.12.112, metadata !832, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i32 %28, metadata !833, metadata !DIExpression()), !dbg !3150
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.110, ptr noundef nonnull @.str.12.112, i32 noundef 5) #37, !dbg !3152
  call void @llvm.dbg.value(metadata ptr %59, metadata !834, metadata !DIExpression()), !dbg !3150
  %60 = icmp eq ptr %59, @.str.12.112, !dbg !3153
  br i1 %60, label %61, label %70, !dbg !3154

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !3155
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !3156
  call void @llvm.dbg.declare(metadata ptr %11, metadata !836, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata ptr %11, metadata !3129, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata ptr %11, metadata !3137, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i32 0, metadata !3140, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 8, metadata !3141, metadata !DIExpression()), !dbg !3160
  store i64 0, ptr %11, align 8, !dbg !3162
  call void @llvm.dbg.value(metadata ptr %10, metadata !835, metadata !DIExpression(DW_OP_deref)), !dbg !3150
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !3163
  %63 = icmp eq i64 %62, 3, !dbg !3164
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !835, metadata !DIExpression()), !dbg !3150
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !3165
  %67 = icmp eq i32 %28, 9, !dbg !3165
  %68 = select i1 %67, ptr @.str.10.111, ptr @.str.12.112, !dbg !3165
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !3165
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !3166
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !3166
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !3049, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %71, metadata !3048, metadata !DIExpression()), !dbg !3103
  br i1 %36, label %88, label %73, !dbg !3167

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !3060, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i64 0, metadata !3051, metadata !DIExpression()), !dbg !3103
  %74 = load i8, ptr %71, align 1, !dbg !3169, !tbaa !1141
  %75 = icmp eq i8 %74, 0, !dbg !3171
  br i1 %75, label %88, label %76, !dbg !3171

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !3060, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i64 %79, metadata !3051, metadata !DIExpression()), !dbg !3103
  %80 = icmp ult i64 %79, %39, !dbg !3172
  br i1 %80, label %81, label %83, !dbg !3175

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !3172
  store i8 %77, ptr %82, align 1, !dbg !3172, !tbaa !1141
  br label %83, !dbg !3172

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !3175
  call void @llvm.dbg.value(metadata i64 %84, metadata !3051, metadata !DIExpression()), !dbg !3103
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !3176
  call void @llvm.dbg.value(metadata ptr %85, metadata !3060, metadata !DIExpression()), !dbg !3168
  %86 = load i8, ptr %85, align 1, !dbg !3169, !tbaa !1141
  %87 = icmp eq i8 %86, 0, !dbg !3171
  br i1 %87, label %88, label %76, !dbg !3171, !llvm.loop !3177

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !3179
  call void @llvm.dbg.value(metadata i64 %89, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 1, metadata !3055, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %72, metadata !3053, metadata !DIExpression()), !dbg !3103
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !3180
  call void @llvm.dbg.value(metadata i64 %90, metadata !3054, metadata !DIExpression()), !dbg !3103
  br label %102, !dbg !3181

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !3055, metadata !DIExpression()), !dbg !3103
  br label %93, !dbg !3182

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3056, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 poison, metadata !3055, metadata !DIExpression()), !dbg !3103
  br i1 %36, label %102, label %96, !dbg !3183

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3056, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 poison, metadata !3055, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i32 2, metadata !3045, metadata !DIExpression()), !dbg !3103
  br label %102, !dbg !3184

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3056, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 poison, metadata !3055, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i32 2, metadata !3045, metadata !DIExpression()), !dbg !3103
  br i1 %36, label %102, label %96, !dbg !3184

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !3185
  br i1 %98, label %102, label %99, !dbg !3189

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !3185, !tbaa !1141
  br label %102, !dbg !3185

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !3056, metadata !DIExpression()), !dbg !3103
  br label %102, !dbg !3190

101:                                              ; preds = %27
  call void @abort() #39, !dbg !3191
  unreachable, !dbg !3191

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !3179
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.111, %42 ], [ @.str.10.111, %44 ], [ @.str.10.111, %41 ], [ %33, %27 ], [ @.str.12.112, %96 ], [ @.str.12.112, %99 ], [ @.str.12.112, %95 ], [ @.str.10.111, %40 ], [ @.str.12.112, %93 ], [ @.str.12.112, %92 ], !dbg !3103
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !3103
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3056, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 poison, metadata !3055, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %108, metadata !3054, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %107, metadata !3053, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %106, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %105, metadata !3049, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %104, metadata !3048, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i32 %103, metadata !3045, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 0, metadata !3065, metadata !DIExpression()), !dbg !3192
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
  br label %122, !dbg !3193

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !3179
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !3107
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !3194
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !3042, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %129, metadata !3065, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i8 poison, metadata !3059, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 poison, metadata !3058, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 poison, metadata !3057, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %125, metadata !3052, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %124, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %123, metadata !3044, metadata !DIExpression()), !dbg !3103
  %131 = icmp eq i64 %123, -1, !dbg !3195
  br i1 %131, label %132, label %136, !dbg !3196

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3197
  %134 = load i8, ptr %133, align 1, !dbg !3197, !tbaa !1141
  %135 = icmp eq i8 %134, 0, !dbg !3198
  br i1 %135, label %579, label %138, !dbg !3199

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !3200
  br i1 %137, label %579, label %138, !dbg !3199

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !3067, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 0, metadata !3070, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 0, metadata !3071, metadata !DIExpression()), !dbg !3201
  br i1 %114, label %139, label %152, !dbg !3202

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !3204
  %141 = select i1 %131, i1 %115, i1 false, !dbg !3205
  br i1 %141, label %142, label %144, !dbg !3205

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !3206
  call void @llvm.dbg.value(metadata i64 %143, metadata !3044, metadata !DIExpression()), !dbg !3103
  br label %144, !dbg !3207

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !3207
  call void @llvm.dbg.value(metadata i64 %145, metadata !3044, metadata !DIExpression()), !dbg !3103
  %146 = icmp ugt i64 %140, %145, !dbg !3208
  br i1 %146, label %152, label %147, !dbg !3209

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3210
  call void @llvm.dbg.value(metadata ptr %148, metadata !3211, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata ptr %107, metadata !3214, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64 %108, metadata !3215, metadata !DIExpression()), !dbg !3216
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !3218
  %150 = icmp eq i32 %149, 0, !dbg !3219
  %151 = and i1 %150, %110, !dbg !3220
  br i1 %151, label %630, label %152, !dbg !3220

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3067, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %153, metadata !3044, metadata !DIExpression()), !dbg !3103
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3221
  %156 = load i8, ptr %155, align 1, !dbg !3221, !tbaa !1141
  call void @llvm.dbg.value(metadata i8 %156, metadata !3072, metadata !DIExpression()), !dbg !3201
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
  ], !dbg !3222

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !3223

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !3224

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !3070, metadata !DIExpression()), !dbg !3201
  %160 = select i1 %111, i1 true, i1 %128, !dbg !3228
  br i1 %160, label %177, label %161, !dbg !3228

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !3230
  br i1 %162, label %163, label %165, !dbg !3234

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3230
  store i8 39, ptr %164, align 1, !dbg !3230, !tbaa !1141
  br label %165, !dbg !3230

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !3234
  call void @llvm.dbg.value(metadata i64 %166, metadata !3051, metadata !DIExpression()), !dbg !3103
  %167 = icmp ult i64 %166, %130, !dbg !3235
  br i1 %167, label %168, label %170, !dbg !3238

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !3235
  store i8 36, ptr %169, align 1, !dbg !3235, !tbaa !1141
  br label %170, !dbg !3235

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !3238
  call void @llvm.dbg.value(metadata i64 %171, metadata !3051, metadata !DIExpression()), !dbg !3103
  %172 = icmp ult i64 %171, %130, !dbg !3239
  br i1 %172, label %173, label %175, !dbg !3242

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !3239
  store i8 39, ptr %174, align 1, !dbg !3239, !tbaa !1141
  br label %175, !dbg !3239

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !3242
  call void @llvm.dbg.value(metadata i64 %176, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 1, metadata !3059, metadata !DIExpression()), !dbg !3103
  br label %177, !dbg !3243

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !3103
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3059, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %178, metadata !3051, metadata !DIExpression()), !dbg !3103
  %180 = icmp ult i64 %178, %130, !dbg !3244
  br i1 %180, label %181, label %183, !dbg !3247

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !3244
  store i8 92, ptr %182, align 1, !dbg !3244, !tbaa !1141
  br label %183, !dbg !3244

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !3247
  call void @llvm.dbg.value(metadata i64 %184, metadata !3051, metadata !DIExpression()), !dbg !3103
  br i1 %111, label %185, label %482, !dbg !3248

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !3250
  %187 = icmp ult i64 %186, %153, !dbg !3251
  br i1 %187, label %188, label %439, !dbg !3252

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !3253
  %190 = load i8, ptr %189, align 1, !dbg !3253, !tbaa !1141
  %191 = add i8 %190, -48, !dbg !3254
  %192 = icmp ult i8 %191, 10, !dbg !3254
  br i1 %192, label %193, label %439, !dbg !3254

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !3255
  br i1 %194, label %195, label %197, !dbg !3259

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !3255
  store i8 48, ptr %196, align 1, !dbg !3255, !tbaa !1141
  br label %197, !dbg !3255

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !3259
  call void @llvm.dbg.value(metadata i64 %198, metadata !3051, metadata !DIExpression()), !dbg !3103
  %199 = icmp ult i64 %198, %130, !dbg !3260
  br i1 %199, label %200, label %202, !dbg !3263

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !3260
  store i8 48, ptr %201, align 1, !dbg !3260, !tbaa !1141
  br label %202, !dbg !3260

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !3263
  call void @llvm.dbg.value(metadata i64 %203, metadata !3051, metadata !DIExpression()), !dbg !3103
  br label %439, !dbg !3264

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !3265

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !3266

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !3267

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !3269

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !3271
  %210 = icmp ult i64 %209, %153, !dbg !3272
  br i1 %210, label %211, label %439, !dbg !3273

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !3274
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !3275
  %214 = load i8, ptr %213, align 1, !dbg !3275, !tbaa !1141
  %215 = icmp eq i8 %214, 63, !dbg !3276
  br i1 %215, label %216, label %439, !dbg !3277

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !3278
  %218 = load i8, ptr %217, align 1, !dbg !3278, !tbaa !1141
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
  ], !dbg !3279

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !3280

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !3072, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %209, metadata !3065, metadata !DIExpression()), !dbg !3192
  %221 = icmp ult i64 %124, %130, !dbg !3282
  br i1 %221, label %222, label %224, !dbg !3285

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3282
  store i8 63, ptr %223, align 1, !dbg !3282, !tbaa !1141
  br label %224, !dbg !3282

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !3285
  call void @llvm.dbg.value(metadata i64 %225, metadata !3051, metadata !DIExpression()), !dbg !3103
  %226 = icmp ult i64 %225, %130, !dbg !3286
  br i1 %226, label %227, label %229, !dbg !3289

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !3286
  store i8 34, ptr %228, align 1, !dbg !3286, !tbaa !1141
  br label %229, !dbg !3286

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %230, metadata !3051, metadata !DIExpression()), !dbg !3103
  %231 = icmp ult i64 %230, %130, !dbg !3290
  br i1 %231, label %232, label %234, !dbg !3293

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !3290
  store i8 34, ptr %233, align 1, !dbg !3290, !tbaa !1141
  br label %234, !dbg !3290

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !3293
  call void @llvm.dbg.value(metadata i64 %235, metadata !3051, metadata !DIExpression()), !dbg !3103
  %236 = icmp ult i64 %235, %130, !dbg !3294
  br i1 %236, label %237, label %239, !dbg !3297

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !3294
  store i8 63, ptr %238, align 1, !dbg !3294, !tbaa !1141
  br label %239, !dbg !3294

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %240, metadata !3051, metadata !DIExpression()), !dbg !3103
  br label %439, !dbg !3298

241:                                              ; preds = %152
  br label %251, !dbg !3299

242:                                              ; preds = %152
  br label %251, !dbg !3300

243:                                              ; preds = %152
  br label %249, !dbg !3301

244:                                              ; preds = %152
  br label %249, !dbg !3302

245:                                              ; preds = %152
  br label %251, !dbg !3303

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !3304

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !3305

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !3308

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !3310
  call void @llvm.dbg.label(metadata !3097), !dbg !3311
  br i1 %119, label %621, label %251, !dbg !3312

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !3310
  call void @llvm.dbg.label(metadata !3099), !dbg !3314
  br i1 %109, label %493, label %450, !dbg !3315

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !3316

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !3317, !tbaa !1141
  %256 = icmp eq i8 %255, 0, !dbg !3319
  br i1 %256, label %257, label %439, !dbg !3320

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !3321
  br i1 %258, label %259, label %439, !dbg !3323

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !3071, metadata !DIExpression()), !dbg !3201
  br label %260, !dbg !3324

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3071, metadata !DIExpression()), !dbg !3201
  br i1 %116, label %262, label %439, !dbg !3325

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !3327

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !3057, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 1, metadata !3071, metadata !DIExpression()), !dbg !3201
  br i1 %116, label %264, label %439, !dbg !3328

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !3329

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !3332
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !3334
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !3334
  %270 = select i1 %268, i64 %130, i64 0, !dbg !3334
  call void @llvm.dbg.value(metadata i64 %270, metadata !3042, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %269, metadata !3052, metadata !DIExpression()), !dbg !3103
  %271 = icmp ult i64 %124, %270, !dbg !3335
  br i1 %271, label %272, label %274, !dbg !3338

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3335
  store i8 39, ptr %273, align 1, !dbg !3335, !tbaa !1141
  br label %274, !dbg !3335

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !3338
  call void @llvm.dbg.value(metadata i64 %275, metadata !3051, metadata !DIExpression()), !dbg !3103
  %276 = icmp ult i64 %275, %270, !dbg !3339
  br i1 %276, label %277, label %279, !dbg !3342

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !3339
  store i8 92, ptr %278, align 1, !dbg !3339, !tbaa !1141
  br label %279, !dbg !3339

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !3342
  call void @llvm.dbg.value(metadata i64 %280, metadata !3051, metadata !DIExpression()), !dbg !3103
  %281 = icmp ult i64 %280, %270, !dbg !3343
  br i1 %281, label %282, label %284, !dbg !3346

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !3343
  store i8 39, ptr %283, align 1, !dbg !3343, !tbaa !1141
  br label %284, !dbg !3343

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !3346
  call void @llvm.dbg.value(metadata i64 %285, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 0, metadata !3059, metadata !DIExpression()), !dbg !3103
  br label %439, !dbg !3347

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !3348

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !3073, metadata !DIExpression()), !dbg !3349
  %288 = tail call ptr @__ctype_b_loc() #40, !dbg !3350
  %289 = load ptr, ptr %288, align 8, !dbg !3350, !tbaa !1063
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !3350
  %292 = load i16, ptr %291, align 2, !dbg !3350, !tbaa !1173
  %293 = and i16 %292, 16384, !dbg !3350
  %294 = icmp ne i16 %293, 0, !dbg !3352
  call void @llvm.dbg.value(metadata i1 %294, metadata !3076, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3349
  br label %337, !dbg !3353

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !3354
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3077, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata ptr %14, metadata !3129, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata ptr %14, metadata !3137, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i32 0, metadata !3140, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i64 8, metadata !3141, metadata !DIExpression()), !dbg !3358
  store i64 0, ptr %14, align 8, !dbg !3360
  call void @llvm.dbg.value(metadata i64 0, metadata !3073, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i8 1, metadata !3076, metadata !DIExpression()), !dbg !3349
  %296 = icmp eq i64 %153, -1, !dbg !3361
  br i1 %296, label %297, label %299, !dbg !3363

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !3364
  call void @llvm.dbg.value(metadata i64 %298, metadata !3044, metadata !DIExpression()), !dbg !3103
  br label %299, !dbg !3365

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !3201
  call void @llvm.dbg.value(metadata i64 %300, metadata !3044, metadata !DIExpression()), !dbg !3103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !3366
  %301 = sub i64 %300, %129, !dbg !3367
  call void @llvm.dbg.value(metadata ptr %15, metadata !3080, metadata !DIExpression(DW_OP_deref)), !dbg !3368
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #37, !dbg !3369
  call void @llvm.dbg.value(metadata i64 %302, metadata !3084, metadata !DIExpression()), !dbg !3368
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !3370

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !3073, metadata !DIExpression()), !dbg !3349
  %304 = icmp ugt i64 %300, %129, !dbg !3371
  br i1 %304, label %306, label %332, !dbg !3373

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !3076, metadata !DIExpression()), !dbg !3349
  br label %332, !dbg !3374

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !3073, metadata !DIExpression()), !dbg !3349
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !3376
  %310 = load i8, ptr %309, align 1, !dbg !3376, !tbaa !1141
  %311 = icmp eq i8 %310, 0, !dbg !3373
  br i1 %311, label %332, label %312, !dbg !3377

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !3378
  call void @llvm.dbg.value(metadata i64 %313, metadata !3073, metadata !DIExpression()), !dbg !3349
  %314 = add i64 %313, %129, !dbg !3379
  %315 = icmp eq i64 %313, %301, !dbg !3371
  br i1 %315, label %332, label %306, !dbg !3373, !llvm.loop !3380

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !3381
  %319 = and i1 %318, %110, !dbg !3381
  call void @llvm.dbg.value(metadata i64 1, metadata !3085, metadata !DIExpression()), !dbg !3382
  br i1 %319, label %320, label %328, !dbg !3381

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !3085, metadata !DIExpression()), !dbg !3382
  %322 = add i64 %321, %129, !dbg !3383
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !3385
  %324 = load i8, ptr %323, align 1, !dbg !3385, !tbaa !1141
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !3386

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !3387
  call void @llvm.dbg.value(metadata i64 %326, metadata !3085, metadata !DIExpression()), !dbg !3382
  %327 = icmp eq i64 %326, %302, !dbg !3388
  br i1 %327, label %328, label %320, !dbg !3389, !llvm.loop !3390

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !3392, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 %329, metadata !3080, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i32 %329, metadata !3394, metadata !DIExpression()), !dbg !3397
  %330 = call i32 @iswprint(i32 noundef %329) #37, !dbg !3399
  %331 = icmp ne i32 %330, 0, !dbg !3400
  call void @llvm.dbg.value(metadata i8 poison, metadata !3076, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64 %302, metadata !3073, metadata !DIExpression()), !dbg !3349
  br label %332, !dbg !3401

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3076, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64 %333, metadata !3073, metadata !DIExpression()), !dbg !3349
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !3402
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !3403
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !3076, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64 0, metadata !3073, metadata !DIExpression()), !dbg !3349
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !3402
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !3403
  call void @llvm.dbg.label(metadata !3102), !dbg !3404
  %336 = select i1 %109, i32 4, i32 2, !dbg !3405
  br label %626, !dbg !3405

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !3201
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !3407
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3076, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64 %339, metadata !3073, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64 %338, metadata !3044, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i1 %340, metadata !3071, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3201
  %341 = icmp ult i64 %339, 2, !dbg !3408
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !3409
  br i1 %343, label %439, label %344, !dbg !3409

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !3410
  call void @llvm.dbg.value(metadata i64 %345, metadata !3093, metadata !DIExpression()), !dbg !3411
  br label %346, !dbg !3412

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !3103
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !3192
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !3413
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !3201
  call void @llvm.dbg.value(metadata i8 %352, metadata !3072, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 %351, metadata !3070, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3067, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %349, metadata !3065, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i8 poison, metadata !3059, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %347, metadata !3051, metadata !DIExpression()), !dbg !3103
  br i1 %342, label %397, label %353, !dbg !3414

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !3419

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !3070, metadata !DIExpression()), !dbg !3201
  %355 = select i1 %111, i1 true, i1 %348, !dbg !3422
  br i1 %355, label %372, label %356, !dbg !3422

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !3424
  br i1 %357, label %358, label %360, !dbg !3428

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3424
  store i8 39, ptr %359, align 1, !dbg !3424, !tbaa !1141
  br label %360, !dbg !3424

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !3428
  call void @llvm.dbg.value(metadata i64 %361, metadata !3051, metadata !DIExpression()), !dbg !3103
  %362 = icmp ult i64 %361, %130, !dbg !3429
  br i1 %362, label %363, label %365, !dbg !3432

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !3429
  store i8 36, ptr %364, align 1, !dbg !3429, !tbaa !1141
  br label %365, !dbg !3429

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !3432
  call void @llvm.dbg.value(metadata i64 %366, metadata !3051, metadata !DIExpression()), !dbg !3103
  %367 = icmp ult i64 %366, %130, !dbg !3433
  br i1 %367, label %368, label %370, !dbg !3436

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !3433
  store i8 39, ptr %369, align 1, !dbg !3433, !tbaa !1141
  br label %370, !dbg !3433

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !3436
  call void @llvm.dbg.value(metadata i64 %371, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 1, metadata !3059, metadata !DIExpression()), !dbg !3103
  br label %372, !dbg !3437

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !3103
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3059, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %373, metadata !3051, metadata !DIExpression()), !dbg !3103
  %375 = icmp ult i64 %373, %130, !dbg !3438
  br i1 %375, label %376, label %378, !dbg !3441

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !3438
  store i8 92, ptr %377, align 1, !dbg !3438, !tbaa !1141
  br label %378, !dbg !3438

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !3441
  call void @llvm.dbg.value(metadata i64 %379, metadata !3051, metadata !DIExpression()), !dbg !3103
  %380 = icmp ult i64 %379, %130, !dbg !3442
  br i1 %380, label %381, label %385, !dbg !3445

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !3442
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !3442
  store i8 %383, ptr %384, align 1, !dbg !3442, !tbaa !1141
  br label %385, !dbg !3442

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !3445
  call void @llvm.dbg.value(metadata i64 %386, metadata !3051, metadata !DIExpression()), !dbg !3103
  %387 = icmp ult i64 %386, %130, !dbg !3446
  br i1 %387, label %388, label %393, !dbg !3449

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !3446
  %391 = or i8 %390, 48, !dbg !3446
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3446
  store i8 %391, ptr %392, align 1, !dbg !3446, !tbaa !1141
  br label %393, !dbg !3446

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !3449
  call void @llvm.dbg.value(metadata i64 %394, metadata !3051, metadata !DIExpression()), !dbg !3103
  %395 = and i8 %352, 7, !dbg !3450
  %396 = or i8 %395, 48, !dbg !3451
  call void @llvm.dbg.value(metadata i8 %396, metadata !3072, metadata !DIExpression()), !dbg !3201
  br label %404, !dbg !3452

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !3453

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !3454
  br i1 %399, label %400, label %402, !dbg !3459

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3454
  store i8 92, ptr %401, align 1, !dbg !3454, !tbaa !1141
  br label %402, !dbg !3454

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !3459
  call void @llvm.dbg.value(metadata i64 %403, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 0, metadata !3067, metadata !DIExpression()), !dbg !3201
  br label %404, !dbg !3460

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !3103
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !3201
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !3201
  call void @llvm.dbg.value(metadata i8 %409, metadata !3072, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 %408, metadata !3070, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3067, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3059, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %405, metadata !3051, metadata !DIExpression()), !dbg !3103
  %410 = add i64 %349, 1, !dbg !3461
  %411 = icmp ugt i64 %345, %410, !dbg !3463
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !3464

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !3465
  %415 = select i1 %406, i1 %414, i1 false, !dbg !3465
  br i1 %415, label %416, label %427, !dbg !3465

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !3468
  br i1 %417, label %418, label %420, !dbg !3472

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !3468
  store i8 39, ptr %419, align 1, !dbg !3468, !tbaa !1141
  br label %420, !dbg !3468

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !3472
  call void @llvm.dbg.value(metadata i64 %421, metadata !3051, metadata !DIExpression()), !dbg !3103
  %422 = icmp ult i64 %421, %130, !dbg !3473
  br i1 %422, label %423, label %425, !dbg !3476

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !3473
  store i8 39, ptr %424, align 1, !dbg !3473, !tbaa !1141
  br label %425, !dbg !3473

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !3476
  call void @llvm.dbg.value(metadata i64 %426, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 0, metadata !3059, metadata !DIExpression()), !dbg !3103
  br label %427, !dbg !3477

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !3478
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3059, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %428, metadata !3051, metadata !DIExpression()), !dbg !3103
  %430 = icmp ult i64 %428, %130, !dbg !3479
  br i1 %430, label %431, label %433, !dbg !3482

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !3479
  store i8 %409, ptr %432, align 1, !dbg !3479, !tbaa !1141
  br label %433, !dbg !3479

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !3482
  call void @llvm.dbg.value(metadata i64 %434, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %410, metadata !3065, metadata !DIExpression()), !dbg !3192
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !3483
  %436 = load i8, ptr %435, align 1, !dbg !3483, !tbaa !1141
  call void @llvm.dbg.value(metadata i8 %436, metadata !3072, metadata !DIExpression()), !dbg !3201
  br label %346, !dbg !3484, !llvm.loop !3485

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !3072, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i1 %340, metadata !3071, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3201
  call void @llvm.dbg.value(metadata i8 %408, metadata !3070, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3067, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %349, metadata !3065, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i8 poison, metadata !3059, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %405, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %338, metadata !3044, metadata !DIExpression()), !dbg !3103
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !3488
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !3103
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !3107
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !3192
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !3201
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !3042, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 %448, metadata !3072, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3071, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3070, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3067, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %445, metadata !3065, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i8 poison, metadata !3059, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 poison, metadata !3057, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %442, metadata !3052, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %441, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %440, metadata !3044, metadata !DIExpression()), !dbg !3103
  br i1 %112, label %461, label %450, !dbg !3489

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
  br i1 %121, label %462, label %482, !dbg !3491

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !3492

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
  %473 = lshr i8 %464, 5, !dbg !3493
  %474 = zext i8 %473 to i64, !dbg !3493
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !3494
  %476 = load i32, ptr %475, align 4, !dbg !3494, !tbaa !1132
  %477 = and i8 %464, 31, !dbg !3495
  %478 = zext i8 %477 to i32, !dbg !3495
  %479 = shl nuw i32 1, %478, !dbg !3496
  %480 = and i32 %476, %479, !dbg !3496
  %481 = icmp eq i32 %480, 0, !dbg !3496
  br i1 %481, label %482, label %493, !dbg !3497

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
  br i1 %154, label %493, label %529, !dbg !3498

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !3488
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !3103
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !3107
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !3499
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !3201
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !3042, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 %501, metadata !3072, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3071, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %499, metadata !3065, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i8 poison, metadata !3059, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 poison, metadata !3057, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %496, metadata !3052, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %495, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %494, metadata !3044, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.label(metadata !3100), !dbg !3500
  br i1 %110, label %621, label %503, !dbg !3501

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !3070, metadata !DIExpression()), !dbg !3201
  %504 = select i1 %111, i1 true, i1 %498, !dbg !3503
  br i1 %504, label %521, label %505, !dbg !3503

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !3505
  br i1 %506, label %507, label %509, !dbg !3509

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !3505
  store i8 39, ptr %508, align 1, !dbg !3505, !tbaa !1141
  br label %509, !dbg !3505

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !3509
  call void @llvm.dbg.value(metadata i64 %510, metadata !3051, metadata !DIExpression()), !dbg !3103
  %511 = icmp ult i64 %510, %502, !dbg !3510
  br i1 %511, label %512, label %514, !dbg !3513

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !3510
  store i8 36, ptr %513, align 1, !dbg !3510, !tbaa !1141
  br label %514, !dbg !3510

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !3513
  call void @llvm.dbg.value(metadata i64 %515, metadata !3051, metadata !DIExpression()), !dbg !3103
  %516 = icmp ult i64 %515, %502, !dbg !3514
  br i1 %516, label %517, label %519, !dbg !3517

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !3514
  store i8 39, ptr %518, align 1, !dbg !3514, !tbaa !1141
  br label %519, !dbg !3514

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !3517
  call void @llvm.dbg.value(metadata i64 %520, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 1, metadata !3059, metadata !DIExpression()), !dbg !3103
  br label %521, !dbg !3518

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !3201
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3059, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %522, metadata !3051, metadata !DIExpression()), !dbg !3103
  %524 = icmp ult i64 %522, %502, !dbg !3519
  br i1 %524, label %525, label %527, !dbg !3522

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3519
  store i8 92, ptr %526, align 1, !dbg !3519, !tbaa !1141
  br label %527, !dbg !3519

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !3522
  call void @llvm.dbg.value(metadata i64 %502, metadata !3042, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 %501, metadata !3072, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3071, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3070, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %499, metadata !3065, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i8 poison, metadata !3059, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 poison, metadata !3057, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %496, metadata !3052, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %528, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %494, metadata !3044, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.label(metadata !3101), !dbg !3523
  br label %553, !dbg !3524

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !3488
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !3103
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !3107
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !3499
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3527
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !3042, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 %538, metadata !3072, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3071, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3070, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %535, metadata !3065, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i8 poison, metadata !3059, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 poison, metadata !3057, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %532, metadata !3052, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %531, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %530, metadata !3044, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.label(metadata !3101), !dbg !3523
  %540 = xor i1 %534, true, !dbg !3524
  %541 = select i1 %540, i1 true, i1 %536, !dbg !3524
  br i1 %541, label %553, label %542, !dbg !3524

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3528
  br i1 %543, label %544, label %546, !dbg !3532

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3528
  store i8 39, ptr %545, align 1, !dbg !3528, !tbaa !1141
  br label %546, !dbg !3528

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3532
  call void @llvm.dbg.value(metadata i64 %547, metadata !3051, metadata !DIExpression()), !dbg !3103
  %548 = icmp ult i64 %547, %539, !dbg !3533
  br i1 %548, label %549, label %551, !dbg !3536

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3533
  store i8 39, ptr %550, align 1, !dbg !3533, !tbaa !1141
  br label %551, !dbg !3533

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3536
  call void @llvm.dbg.value(metadata i64 %552, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 0, metadata !3059, metadata !DIExpression()), !dbg !3103
  br label %553, !dbg !3537

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !3201
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3059, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %561, metadata !3051, metadata !DIExpression()), !dbg !3103
  %563 = icmp ult i64 %561, %554, !dbg !3538
  br i1 %563, label %564, label %566, !dbg !3541

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3538
  store i8 %555, ptr %565, align 1, !dbg !3538, !tbaa !1141
  br label %566, !dbg !3538

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3541
  call void @llvm.dbg.value(metadata i64 %567, metadata !3051, metadata !DIExpression()), !dbg !3103
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3542
  call void @llvm.dbg.value(metadata i8 poison, metadata !3058, metadata !DIExpression()), !dbg !3103
  br label %569, !dbg !3543

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !3488
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !3103
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !3107
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !3499
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !3042, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %576, metadata !3065, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i8 poison, metadata !3059, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 poison, metadata !3058, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 poison, metadata !3057, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %572, metadata !3052, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %571, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %570, metadata !3044, metadata !DIExpression()), !dbg !3103
  %578 = add i64 %576, 1, !dbg !3544
  call void @llvm.dbg.value(metadata i64 %578, metadata !3065, metadata !DIExpression()), !dbg !3192
  br label %122, !dbg !3545, !llvm.loop !3546

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !3042, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 poison, metadata !3058, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 poison, metadata !3057, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %125, metadata !3052, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %124, metadata !3051, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %123, metadata !3044, metadata !DIExpression()), !dbg !3103
  %580 = icmp ne i64 %124, 0, !dbg !3548
  %581 = xor i1 %110, true, !dbg !3550
  %582 = or i1 %580, %581, !dbg !3550
  %583 = or i1 %582, %111, !dbg !3550
  br i1 %583, label %584, label %621, !dbg !3550

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3551
  %586 = xor i1 %126, true, !dbg !3551
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3551
  br i1 %587, label %595, label %588, !dbg !3551

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3553

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3555
  br label %636, !dbg !3557

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3558
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3560
  br i1 %594, label %27, label %595, !dbg !3560

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3561
  %598 = or i1 %597, %596, !dbg !3563
  br i1 %598, label %614, label %599, !dbg !3563

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !3053, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %124, metadata !3051, metadata !DIExpression()), !dbg !3103
  %600 = load i8, ptr %107, align 1, !dbg !3564, !tbaa !1141
  %601 = icmp eq i8 %600, 0, !dbg !3567
  br i1 %601, label %614, label %602, !dbg !3567

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !3053, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %605, metadata !3051, metadata !DIExpression()), !dbg !3103
  %606 = icmp ult i64 %605, %130, !dbg !3568
  br i1 %606, label %607, label %609, !dbg !3571

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3568
  store i8 %603, ptr %608, align 1, !dbg !3568, !tbaa !1141
  br label %609, !dbg !3568

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3571
  call void @llvm.dbg.value(metadata i64 %610, metadata !3051, metadata !DIExpression()), !dbg !3103
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3572
  call void @llvm.dbg.value(metadata ptr %611, metadata !3053, metadata !DIExpression()), !dbg !3103
  %612 = load i8, ptr %611, align 1, !dbg !3564, !tbaa !1141
  %613 = icmp eq i8 %612, 0, !dbg !3567
  br i1 %613, label %614, label %602, !dbg !3567, !llvm.loop !3573

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !3179
  call void @llvm.dbg.value(metadata i64 %615, metadata !3051, metadata !DIExpression()), !dbg !3103
  %616 = icmp ult i64 %615, %130, !dbg !3575
  br i1 %616, label %617, label %636, !dbg !3577

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3578
  store i8 0, ptr %618, align 1, !dbg !3579, !tbaa !1141
  br label %636, !dbg !3578

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !3102), !dbg !3404
  %620 = icmp eq i32 %103, 2, !dbg !3580
  br i1 %620, label %626, label %630, !dbg !3405

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !3102), !dbg !3404
  %624 = icmp eq i32 %103, 2, !dbg !3580
  %625 = select i1 %109, i32 4, i32 2, !dbg !3405
  br i1 %624, label %626, label %630, !dbg !3405

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !3405

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !3045, metadata !DIExpression()), !dbg !3103
  %634 = and i32 %5, -3, !dbg !3581
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3582
  br label %636, !dbg !3583

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3584
}

; Function Attrs: nounwind
declare !dbg !3585 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3588 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3591 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3592 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3596, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i64 %1, metadata !3597, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata ptr %2, metadata !3598, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata ptr %0, metadata !3600, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i64 %1, metadata !3605, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata ptr null, metadata !3606, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata ptr %2, metadata !3607, metadata !DIExpression()), !dbg !3613
  %4 = icmp eq ptr %2, null, !dbg !3615
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3615
  call void @llvm.dbg.value(metadata ptr %5, metadata !3608, metadata !DIExpression()), !dbg !3613
  %6 = tail call ptr @__errno_location() #40, !dbg !3616
  %7 = load i32, ptr %6, align 4, !dbg !3616, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 %7, metadata !3609, metadata !DIExpression()), !dbg !3613
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3617
  %9 = load i32, ptr %8, align 4, !dbg !3617, !tbaa !2985
  %10 = or i32 %9, 1, !dbg !3618
  call void @llvm.dbg.value(metadata i32 %10, metadata !3610, metadata !DIExpression()), !dbg !3613
  %11 = load i32, ptr %5, align 8, !dbg !3619, !tbaa !2935
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3620
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3621
  %14 = load ptr, ptr %13, align 8, !dbg !3621, !tbaa !3006
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3622
  %16 = load ptr, ptr %15, align 8, !dbg !3622, !tbaa !3009
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3623
  %18 = add i64 %17, 1, !dbg !3624
  call void @llvm.dbg.value(metadata i64 %18, metadata !3611, metadata !DIExpression()), !dbg !3613
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !3625
  call void @llvm.dbg.value(metadata ptr %19, metadata !3612, metadata !DIExpression()), !dbg !3613
  %20 = load i32, ptr %5, align 8, !dbg !3626, !tbaa !2935
  %21 = load ptr, ptr %13, align 8, !dbg !3627, !tbaa !3006
  %22 = load ptr, ptr %15, align 8, !dbg !3628, !tbaa !3009
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3629
  store i32 %7, ptr %6, align 4, !dbg !3630, !tbaa !1132
  ret ptr %19, !dbg !3631
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3601 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3600, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 %1, metadata !3605, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata ptr %2, metadata !3606, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata ptr %3, metadata !3607, metadata !DIExpression()), !dbg !3632
  %5 = icmp eq ptr %3, null, !dbg !3633
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3633
  call void @llvm.dbg.value(metadata ptr %6, metadata !3608, metadata !DIExpression()), !dbg !3632
  %7 = tail call ptr @__errno_location() #40, !dbg !3634
  %8 = load i32, ptr %7, align 4, !dbg !3634, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 %8, metadata !3609, metadata !DIExpression()), !dbg !3632
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3635
  %10 = load i32, ptr %9, align 4, !dbg !3635, !tbaa !2985
  %11 = icmp eq ptr %2, null, !dbg !3636
  %12 = zext i1 %11 to i32, !dbg !3636
  %13 = or i32 %10, %12, !dbg !3637
  call void @llvm.dbg.value(metadata i32 %13, metadata !3610, metadata !DIExpression()), !dbg !3632
  %14 = load i32, ptr %6, align 8, !dbg !3638, !tbaa !2935
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3639
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3640
  %17 = load ptr, ptr %16, align 8, !dbg !3640, !tbaa !3006
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3641
  %19 = load ptr, ptr %18, align 8, !dbg !3641, !tbaa !3009
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3642
  %21 = add i64 %20, 1, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %21, metadata !3611, metadata !DIExpression()), !dbg !3632
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !3644
  call void @llvm.dbg.value(metadata ptr %22, metadata !3612, metadata !DIExpression()), !dbg !3632
  %23 = load i32, ptr %6, align 8, !dbg !3645, !tbaa !2935
  %24 = load ptr, ptr %16, align 8, !dbg !3646, !tbaa !3006
  %25 = load ptr, ptr %18, align 8, !dbg !3647, !tbaa !3009
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3648
  store i32 %8, ptr %7, align 4, !dbg !3649, !tbaa !1132
  br i1 %11, label %28, label %27, !dbg !3650

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3651, !tbaa !1348
  br label %28, !dbg !3653

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3654
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3655 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3660, !tbaa !1063
  call void @llvm.dbg.value(metadata ptr %1, metadata !3657, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i32 1, metadata !3658, metadata !DIExpression()), !dbg !3662
  %2 = load i32, ptr @nslots, align 4, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 1, metadata !3658, metadata !DIExpression()), !dbg !3662
  %3 = icmp sgt i32 %2, 1, !dbg !3663
  br i1 %3, label %4, label %6, !dbg !3665

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3663
  br label %10, !dbg !3665

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3666
  %8 = load ptr, ptr %7, align 8, !dbg !3666, !tbaa !3668
  %9 = icmp eq ptr %8, @slot0, !dbg !3670
  br i1 %9, label %17, label %16, !dbg !3671

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3658, metadata !DIExpression()), !dbg !3662
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3672
  %13 = load ptr, ptr %12, align 8, !dbg !3672, !tbaa !3668
  tail call void @free(ptr noundef %13) #37, !dbg !3673
  %14 = add nuw nsw i64 %11, 1, !dbg !3674
  call void @llvm.dbg.value(metadata i64 %14, metadata !3658, metadata !DIExpression()), !dbg !3662
  %15 = icmp eq i64 %14, %5, !dbg !3663
  br i1 %15, label %6, label %10, !dbg !3665, !llvm.loop !3675

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !3677
  store i64 256, ptr @slotvec0, align 8, !dbg !3679, !tbaa !3680
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3681, !tbaa !3668
  br label %17, !dbg !3682

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3683
  br i1 %18, label %20, label %19, !dbg !3685

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !3686
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3688, !tbaa !1063
  br label %20, !dbg !3689

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3690, !tbaa !1132
  ret void, !dbg !3691
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3692 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3694, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata ptr %1, metadata !3695, metadata !DIExpression()), !dbg !3696
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3697
  ret ptr %3, !dbg !3698
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3699 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3703, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata ptr %1, metadata !3704, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i64 %2, metadata !3705, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata ptr %3, metadata !3706, metadata !DIExpression()), !dbg !3719
  %6 = tail call ptr @__errno_location() #40, !dbg !3720
  %7 = load i32, ptr %6, align 4, !dbg !3720, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 %7, metadata !3707, metadata !DIExpression()), !dbg !3719
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3721, !tbaa !1063
  call void @llvm.dbg.value(metadata ptr %8, metadata !3708, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3709, metadata !DIExpression()), !dbg !3719
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3722
  br i1 %9, label %10, label %11, !dbg !3722

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !3724
  unreachable, !dbg !3724

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3725, !tbaa !1132
  %13 = icmp sgt i32 %12, %0, !dbg !3726
  br i1 %13, label %32, label %14, !dbg !3727

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3728
  call void @llvm.dbg.value(metadata i1 %15, metadata !3710, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3729
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !3730
  %16 = sext i32 %12 to i64, !dbg !3731
  call void @llvm.dbg.value(metadata i64 %16, metadata !3713, metadata !DIExpression()), !dbg !3729
  store i64 %16, ptr %5, align 8, !dbg !3732, !tbaa !1348
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3733
  %18 = add nuw nsw i32 %0, 1, !dbg !3734
  %19 = sub i32 %18, %12, !dbg !3735
  %20 = sext i32 %19 to i64, !dbg !3736
  call void @llvm.dbg.value(metadata ptr %5, metadata !3713, metadata !DIExpression(DW_OP_deref)), !dbg !3729
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !3737
  call void @llvm.dbg.value(metadata ptr %21, metadata !3708, metadata !DIExpression()), !dbg !3719
  store ptr %21, ptr @slotvec, align 8, !dbg !3738, !tbaa !1063
  br i1 %15, label %22, label %23, !dbg !3739

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3740, !tbaa.struct !3742
  br label %23, !dbg !3743

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3744, !tbaa !1132
  %25 = sext i32 %24 to i64, !dbg !3745
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3745
  %27 = load i64, ptr %5, align 8, !dbg !3746, !tbaa !1348
  call void @llvm.dbg.value(metadata i64 %27, metadata !3713, metadata !DIExpression()), !dbg !3729
  %28 = sub nsw i64 %27, %25, !dbg !3747
  %29 = shl i64 %28, 4, !dbg !3748
  call void @llvm.dbg.value(metadata ptr %26, metadata !3137, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i32 0, metadata !3140, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i64 %29, metadata !3141, metadata !DIExpression()), !dbg !3749
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !3751
  %30 = load i64, ptr %5, align 8, !dbg !3752, !tbaa !1348
  call void @llvm.dbg.value(metadata i64 %30, metadata !3713, metadata !DIExpression()), !dbg !3729
  %31 = trunc i64 %30 to i32, !dbg !3752
  store i32 %31, ptr @nslots, align 4, !dbg !3753, !tbaa !1132
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !3754
  br label %32, !dbg !3755

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3719
  call void @llvm.dbg.value(metadata ptr %33, metadata !3708, metadata !DIExpression()), !dbg !3719
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3756
  %36 = load i64, ptr %35, align 8, !dbg !3757, !tbaa !3680
  call void @llvm.dbg.value(metadata i64 %36, metadata !3714, metadata !DIExpression()), !dbg !3758
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3759
  %38 = load ptr, ptr %37, align 8, !dbg !3759, !tbaa !3668
  call void @llvm.dbg.value(metadata ptr %38, metadata !3716, metadata !DIExpression()), !dbg !3758
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3760
  %40 = load i32, ptr %39, align 4, !dbg !3760, !tbaa !2985
  %41 = or i32 %40, 1, !dbg !3761
  call void @llvm.dbg.value(metadata i32 %41, metadata !3717, metadata !DIExpression()), !dbg !3758
  %42 = load i32, ptr %3, align 8, !dbg !3762, !tbaa !2935
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3763
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3764
  %45 = load ptr, ptr %44, align 8, !dbg !3764, !tbaa !3006
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3765
  %47 = load ptr, ptr %46, align 8, !dbg !3765, !tbaa !3009
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3766
  call void @llvm.dbg.value(metadata i64 %48, metadata !3718, metadata !DIExpression()), !dbg !3758
  %49 = icmp ugt i64 %36, %48, !dbg !3767
  br i1 %49, label %60, label %50, !dbg !3769

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3770
  call void @llvm.dbg.value(metadata i64 %51, metadata !3714, metadata !DIExpression()), !dbg !3758
  store i64 %51, ptr %35, align 8, !dbg !3772, !tbaa !3680
  %52 = icmp eq ptr %38, @slot0, !dbg !3773
  br i1 %52, label %54, label %53, !dbg !3775

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !3776
  br label %54, !dbg !3776

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !3777
  call void @llvm.dbg.value(metadata ptr %55, metadata !3716, metadata !DIExpression()), !dbg !3758
  store ptr %55, ptr %37, align 8, !dbg !3778, !tbaa !3668
  %56 = load i32, ptr %3, align 8, !dbg !3779, !tbaa !2935
  %57 = load ptr, ptr %44, align 8, !dbg !3780, !tbaa !3006
  %58 = load ptr, ptr %46, align 8, !dbg !3781, !tbaa !3009
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3782
  br label %60, !dbg !3783

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3758
  call void @llvm.dbg.value(metadata ptr %61, metadata !3716, metadata !DIExpression()), !dbg !3758
  store i32 %7, ptr %6, align 4, !dbg !3784, !tbaa !1132
  ret ptr %61, !dbg !3785
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3786 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3790, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata ptr %1, metadata !3791, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i64 %2, metadata !3792, metadata !DIExpression()), !dbg !3793
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3794
  ret ptr %4, !dbg !3795
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3796 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3798, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata ptr %0, metadata !3695, metadata !DIExpression()), !dbg !3800
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3802
  ret ptr %2, !dbg !3803
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3804 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3808, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i64 %1, metadata !3809, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i32 0, metadata !3790, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata ptr %0, metadata !3791, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i64 %1, metadata !3792, metadata !DIExpression()), !dbg !3811
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3813
  ret ptr %3, !dbg !3814
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3815 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3819, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %1, metadata !3820, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata ptr %2, metadata !3821, metadata !DIExpression()), !dbg !3823
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3824
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3822, metadata !DIExpression()), !dbg !3825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3826), !dbg !3829
  call void @llvm.dbg.value(metadata i32 %1, metadata !3830, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3835, metadata !DIExpression()), !dbg !3838
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3838, !alias.scope !3826
  %5 = icmp eq i32 %1, 10, !dbg !3839
  br i1 %5, label %6, label %7, !dbg !3841

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3842, !noalias !3826
  unreachable, !dbg !3842

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3843, !tbaa !2935, !alias.scope !3826
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3844
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3845
  ret ptr %8, !dbg !3846
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3847 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3851, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i32 %1, metadata !3852, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata ptr %2, metadata !3853, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i64 %3, metadata !3854, metadata !DIExpression()), !dbg !3856
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3857
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3855, metadata !DIExpression()), !dbg !3858
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3859), !dbg !3862
  call void @llvm.dbg.value(metadata i32 %1, metadata !3830, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3835, metadata !DIExpression()), !dbg !3865
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3865, !alias.scope !3859
  %6 = icmp eq i32 %1, 10, !dbg !3866
  br i1 %6, label %7, label %8, !dbg !3867

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3868, !noalias !3859
  unreachable, !dbg !3868

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3869, !tbaa !2935, !alias.scope !3859
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3870
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3871
  ret ptr %9, !dbg !3872
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3873 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3877, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata ptr %1, metadata !3878, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i32 0, metadata !3819, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i32 %0, metadata !3820, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata ptr %1, metadata !3821, metadata !DIExpression()), !dbg !3880
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !3882
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3822, metadata !DIExpression()), !dbg !3883
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3884), !dbg !3887
  call void @llvm.dbg.value(metadata i32 %0, metadata !3830, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3835, metadata !DIExpression()), !dbg !3890
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3890, !alias.scope !3884
  %4 = icmp eq i32 %0, 10, !dbg !3891
  br i1 %4, label %5, label %6, !dbg !3892

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !3893, !noalias !3884
  unreachable, !dbg !3893

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3894, !tbaa !2935, !alias.scope !3884
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3895
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !3896
  ret ptr %7, !dbg !3897
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3898 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3902, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata ptr %1, metadata !3903, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata i64 %2, metadata !3904, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata i32 0, metadata !3851, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 %0, metadata !3852, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata ptr %1, metadata !3853, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i64 %2, metadata !3854, metadata !DIExpression()), !dbg !3906
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3908
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3855, metadata !DIExpression()), !dbg !3909
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3910), !dbg !3913
  call void @llvm.dbg.value(metadata i32 %0, metadata !3830, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3835, metadata !DIExpression()), !dbg !3916
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3916, !alias.scope !3910
  %5 = icmp eq i32 %0, 10, !dbg !3917
  br i1 %5, label %6, label %7, !dbg !3918

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3919, !noalias !3910
  unreachable, !dbg !3919

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3920, !tbaa !2935, !alias.scope !3910
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3921
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3922
  ret ptr %8, !dbg !3923
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3924 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3928, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i64 %1, metadata !3929, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i8 %2, metadata !3930, metadata !DIExpression()), !dbg !3932
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3933
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3931, metadata !DIExpression()), !dbg !3934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3935, !tbaa.struct !3936
  call void @llvm.dbg.value(metadata ptr %4, metadata !2952, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i8 %2, metadata !2953, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 1, metadata !2954, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i8 %2, metadata !2955, metadata !DIExpression()), !dbg !3937
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3939
  %6 = lshr i8 %2, 5, !dbg !3940
  %7 = zext i8 %6 to i64, !dbg !3940
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3941
  call void @llvm.dbg.value(metadata ptr %8, metadata !2956, metadata !DIExpression()), !dbg !3937
  %9 = and i8 %2, 31, !dbg !3942
  %10 = zext i8 %9 to i32, !dbg !3942
  call void @llvm.dbg.value(metadata i32 %10, metadata !2958, metadata !DIExpression()), !dbg !3937
  %11 = load i32, ptr %8, align 4, !dbg !3943, !tbaa !1132
  %12 = lshr i32 %11, %10, !dbg !3944
  call void @llvm.dbg.value(metadata i32 %12, metadata !2959, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3937
  %13 = and i32 %12, 1, !dbg !3945
  %14 = xor i32 %13, 1, !dbg !3945
  %15 = shl nuw i32 %14, %10, !dbg !3946
  %16 = xor i32 %15, %11, !dbg !3947
  store i32 %16, ptr %8, align 4, !dbg !3947, !tbaa !1132
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3948
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3949
  ret ptr %17, !dbg !3950
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3951 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3955, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i8 %1, metadata !3956, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata ptr %0, metadata !3928, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i64 -1, metadata !3929, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i8 %1, metadata !3930, metadata !DIExpression()), !dbg !3958
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !3960
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3931, metadata !DIExpression()), !dbg !3961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3962, !tbaa.struct !3936
  call void @llvm.dbg.value(metadata ptr %3, metadata !2952, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i8 %1, metadata !2953, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i32 1, metadata !2954, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i8 %1, metadata !2955, metadata !DIExpression()), !dbg !3963
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3965
  %5 = lshr i8 %1, 5, !dbg !3966
  %6 = zext i8 %5 to i64, !dbg !3966
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3967
  call void @llvm.dbg.value(metadata ptr %7, metadata !2956, metadata !DIExpression()), !dbg !3963
  %8 = and i8 %1, 31, !dbg !3968
  %9 = zext i8 %8 to i32, !dbg !3968
  call void @llvm.dbg.value(metadata i32 %9, metadata !2958, metadata !DIExpression()), !dbg !3963
  %10 = load i32, ptr %7, align 4, !dbg !3969, !tbaa !1132
  %11 = lshr i32 %10, %9, !dbg !3970
  call void @llvm.dbg.value(metadata i32 %11, metadata !2959, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3963
  %12 = and i32 %11, 1, !dbg !3971
  %13 = xor i32 %12, 1, !dbg !3971
  %14 = shl nuw i32 %13, %9, !dbg !3972
  %15 = xor i32 %14, %10, !dbg !3973
  store i32 %15, ptr %7, align 4, !dbg !3973, !tbaa !1132
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3974
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !3975
  ret ptr %16, !dbg !3976
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3977 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3979, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata ptr %0, metadata !3955, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i8 58, metadata !3956, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata ptr %0, metadata !3928, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i64 -1, metadata !3929, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i8 58, metadata !3930, metadata !DIExpression()), !dbg !3983
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !3985
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3931, metadata !DIExpression()), !dbg !3986
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3987, !tbaa.struct !3936
  call void @llvm.dbg.value(metadata ptr %2, metadata !2952, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata i8 58, metadata !2953, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata i32 1, metadata !2954, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata i8 58, metadata !2955, metadata !DIExpression()), !dbg !3988
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3990
  call void @llvm.dbg.value(metadata ptr %3, metadata !2956, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata i32 26, metadata !2958, metadata !DIExpression()), !dbg !3988
  %4 = load i32, ptr %3, align 4, !dbg !3991, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 %4, metadata !2959, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3988
  %5 = or i32 %4, 67108864, !dbg !3992
  store i32 %5, ptr %3, align 4, !dbg !3992, !tbaa !1132
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3993
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !3994
  ret ptr %6, !dbg !3995
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3996 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3998, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i64 %1, metadata !3999, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata ptr %0, metadata !3928, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 %1, metadata !3929, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i8 58, metadata !3930, metadata !DIExpression()), !dbg !4001
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !4003
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3931, metadata !DIExpression()), !dbg !4004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4005, !tbaa.struct !3936
  call void @llvm.dbg.value(metadata ptr %3, metadata !2952, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i8 58, metadata !2953, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i32 1, metadata !2954, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i8 58, metadata !2955, metadata !DIExpression()), !dbg !4006
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4008
  call void @llvm.dbg.value(metadata ptr %4, metadata !2956, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i32 26, metadata !2958, metadata !DIExpression()), !dbg !4006
  %5 = load i32, ptr %4, align 4, !dbg !4009, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 %5, metadata !2959, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4006
  %6 = or i32 %5, 67108864, !dbg !4010
  store i32 %6, ptr %4, align 4, !dbg !4010, !tbaa !1132
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4011
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !4012
  ret ptr %7, !dbg !4013
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4014 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3835, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4020
  call void @llvm.dbg.value(metadata i32 %0, metadata !4016, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata i32 %1, metadata !4017, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata ptr %2, metadata !4018, metadata !DIExpression()), !dbg !4022
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !4023
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4019, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i32 %1, metadata !3830, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 0, metadata !3835, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4025
  %5 = icmp eq i32 %1, 10, !dbg !4026
  br i1 %5, label %6, label %7, !dbg !4027

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !4028, !noalias !4029
  unreachable, !dbg !4028

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3835, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4025
  store i32 %1, ptr %4, align 8, !dbg !4032, !tbaa.struct !3936
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4032
  call void @llvm.dbg.value(metadata ptr %4, metadata !2952, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i8 58, metadata !2953, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i32 1, metadata !2954, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i8 58, metadata !2955, metadata !DIExpression()), !dbg !4033
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4035
  call void @llvm.dbg.value(metadata ptr %9, metadata !2956, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i32 26, metadata !2958, metadata !DIExpression()), !dbg !4033
  %10 = load i32, ptr %9, align 4, !dbg !4036, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 %10, metadata !2959, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4033
  %11 = or i32 %10, 67108864, !dbg !4037
  store i32 %11, ptr %9, align 4, !dbg !4037, !tbaa !1132
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4038
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !4039
  ret ptr %12, !dbg !4040
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4041 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4045, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %1, metadata !4046, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %2, metadata !4047, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %3, metadata !4048, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i32 %0, metadata !4050, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata ptr %1, metadata !4055, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata ptr %2, metadata !4056, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata ptr %3, metadata !4057, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i64 -1, metadata !4058, metadata !DIExpression()), !dbg !4060
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !4062
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4059, metadata !DIExpression()), !dbg !4063
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4064, !tbaa.struct !3936
  call void @llvm.dbg.value(metadata ptr %5, metadata !2992, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata ptr %1, metadata !2993, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata ptr %2, metadata !2994, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata ptr %5, metadata !2992, metadata !DIExpression()), !dbg !4065
  store i32 10, ptr %5, align 8, !dbg !4067, !tbaa !2935
  %6 = icmp ne ptr %1, null, !dbg !4068
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4069
  br i1 %8, label %10, label %9, !dbg !4069

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !4070
  unreachable, !dbg !4070

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4071
  store ptr %1, ptr %11, align 8, !dbg !4072, !tbaa !3006
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4073
  store ptr %2, ptr %12, align 8, !dbg !4074, !tbaa !3009
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4075
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !4076
  ret ptr %13, !dbg !4077
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4051 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4050, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata ptr %1, metadata !4055, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata ptr %2, metadata !4056, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata ptr %3, metadata !4057, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata i64 %4, metadata !4058, metadata !DIExpression()), !dbg !4078
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !4079
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4059, metadata !DIExpression()), !dbg !4080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4081, !tbaa.struct !3936
  call void @llvm.dbg.value(metadata ptr %6, metadata !2992, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata ptr %1, metadata !2993, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata ptr %2, metadata !2994, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata ptr %6, metadata !2992, metadata !DIExpression()), !dbg !4082
  store i32 10, ptr %6, align 8, !dbg !4084, !tbaa !2935
  %7 = icmp ne ptr %1, null, !dbg !4085
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4086
  br i1 %9, label %11, label %10, !dbg !4086

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !4087
  unreachable, !dbg !4087

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4088
  store ptr %1, ptr %12, align 8, !dbg !4089, !tbaa !3006
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4090
  store ptr %2, ptr %13, align 8, !dbg !4091, !tbaa !3009
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4092
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !4093
  ret ptr %14, !dbg !4094
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4095 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4099, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata ptr %1, metadata !4100, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata ptr %2, metadata !4101, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i32 0, metadata !4045, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata ptr %0, metadata !4046, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata ptr %1, metadata !4047, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata ptr %2, metadata !4048, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i32 0, metadata !4050, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata ptr %0, metadata !4055, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata ptr %1, metadata !4056, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata ptr %2, metadata !4057, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i64 -1, metadata !4058, metadata !DIExpression()), !dbg !4105
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !4107
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4059, metadata !DIExpression()), !dbg !4108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4109, !tbaa.struct !3936
  call void @llvm.dbg.value(metadata ptr %4, metadata !2992, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata ptr %0, metadata !2993, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata ptr %1, metadata !2994, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata ptr %4, metadata !2992, metadata !DIExpression()), !dbg !4110
  store i32 10, ptr %4, align 8, !dbg !4112, !tbaa !2935
  %5 = icmp ne ptr %0, null, !dbg !4113
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4114
  br i1 %7, label %9, label %8, !dbg !4114

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !4115
  unreachable, !dbg !4115

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4116
  store ptr %0, ptr %10, align 8, !dbg !4117, !tbaa !3006
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4118
  store ptr %1, ptr %11, align 8, !dbg !4119, !tbaa !3009
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4120
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !4121
  ret ptr %12, !dbg !4122
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4123 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4127, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata ptr %1, metadata !4128, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata ptr %2, metadata !4129, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i64 %3, metadata !4130, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 0, metadata !4050, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata ptr %0, metadata !4055, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata ptr %1, metadata !4056, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata ptr %2, metadata !4057, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i64 %3, metadata !4058, metadata !DIExpression()), !dbg !4132
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !4134
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4059, metadata !DIExpression()), !dbg !4135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4136, !tbaa.struct !3936
  call void @llvm.dbg.value(metadata ptr %5, metadata !2992, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata ptr %0, metadata !2993, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata ptr %1, metadata !2994, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata ptr %5, metadata !2992, metadata !DIExpression()), !dbg !4137
  store i32 10, ptr %5, align 8, !dbg !4139, !tbaa !2935
  %6 = icmp ne ptr %0, null, !dbg !4140
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4141
  br i1 %8, label %10, label %9, !dbg !4141

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !4142
  unreachable, !dbg !4142

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4143
  store ptr %0, ptr %11, align 8, !dbg !4144, !tbaa !3006
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4145
  store ptr %1, ptr %12, align 8, !dbg !4146, !tbaa !3009
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4147
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !4148
  ret ptr %13, !dbg !4149
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4150 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4154, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata ptr %1, metadata !4155, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i64 %2, metadata !4156, metadata !DIExpression()), !dbg !4157
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4158
  ret ptr %4, !dbg !4159
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4160 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4164, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i64 %1, metadata !4165, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i32 0, metadata !4154, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata ptr %0, metadata !4155, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i64 %1, metadata !4156, metadata !DIExpression()), !dbg !4167
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4169
  ret ptr %3, !dbg !4170
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4171 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4175, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata ptr %1, metadata !4176, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i32 %0, metadata !4154, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata ptr %1, metadata !4155, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata i64 -1, metadata !4156, metadata !DIExpression()), !dbg !4178
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4180
  ret ptr %3, !dbg !4181
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4182 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4186, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i32 0, metadata !4175, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata ptr %0, metadata !4176, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata i32 0, metadata !4154, metadata !DIExpression()), !dbg !4190
  call void @llvm.dbg.value(metadata ptr %0, metadata !4155, metadata !DIExpression()), !dbg !4190
  call void @llvm.dbg.value(metadata i64 -1, metadata !4156, metadata !DIExpression()), !dbg !4190
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4192
  ret ptr %2, !dbg !4193
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4194 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4233, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata ptr %1, metadata !4234, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata ptr %2, metadata !4235, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata ptr %3, metadata !4236, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata ptr %4, metadata !4237, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i64 %5, metadata !4238, metadata !DIExpression()), !dbg !4239
  %7 = icmp eq ptr %1, null, !dbg !4240
  br i1 %7, label %10, label %8, !dbg !4242

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.119, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !4243
  br label %12, !dbg !4243

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.120, ptr noundef %2, ptr noundef %3) #37, !dbg !4244
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.3.122, i32 noundef 5) #37, !dbg !4245
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !4245
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %0), !dbg !4246
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.5.124, i32 noundef 5) #37, !dbg !4247
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.125) #37, !dbg !4247
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %0), !dbg !4248
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
  ], !dbg !4249

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.7.126, i32 noundef 5) #37, !dbg !4250
  %21 = load ptr, ptr %4, align 8, !dbg !4250, !tbaa !1063
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !4250
  br label %147, !dbg !4252

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.8.127, i32 noundef 5) #37, !dbg !4253
  %25 = load ptr, ptr %4, align 8, !dbg !4253, !tbaa !1063
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4253
  %27 = load ptr, ptr %26, align 8, !dbg !4253, !tbaa !1063
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !4253
  br label %147, !dbg !4254

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.9.128, i32 noundef 5) #37, !dbg !4255
  %31 = load ptr, ptr %4, align 8, !dbg !4255, !tbaa !1063
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4255
  %33 = load ptr, ptr %32, align 8, !dbg !4255, !tbaa !1063
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4255
  %35 = load ptr, ptr %34, align 8, !dbg !4255, !tbaa !1063
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !4255
  br label %147, !dbg !4256

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.10.129, i32 noundef 5) #37, !dbg !4257
  %39 = load ptr, ptr %4, align 8, !dbg !4257, !tbaa !1063
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4257
  %41 = load ptr, ptr %40, align 8, !dbg !4257, !tbaa !1063
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4257
  %43 = load ptr, ptr %42, align 8, !dbg !4257, !tbaa !1063
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4257
  %45 = load ptr, ptr %44, align 8, !dbg !4257, !tbaa !1063
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !4257
  br label %147, !dbg !4258

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.11.130, i32 noundef 5) #37, !dbg !4259
  %49 = load ptr, ptr %4, align 8, !dbg !4259, !tbaa !1063
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4259
  %51 = load ptr, ptr %50, align 8, !dbg !4259, !tbaa !1063
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4259
  %53 = load ptr, ptr %52, align 8, !dbg !4259, !tbaa !1063
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4259
  %55 = load ptr, ptr %54, align 8, !dbg !4259, !tbaa !1063
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4259
  %57 = load ptr, ptr %56, align 8, !dbg !4259, !tbaa !1063
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !4259
  br label %147, !dbg !4260

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.12.131, i32 noundef 5) #37, !dbg !4261
  %61 = load ptr, ptr %4, align 8, !dbg !4261, !tbaa !1063
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4261
  %63 = load ptr, ptr %62, align 8, !dbg !4261, !tbaa !1063
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4261
  %65 = load ptr, ptr %64, align 8, !dbg !4261, !tbaa !1063
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4261
  %67 = load ptr, ptr %66, align 8, !dbg !4261, !tbaa !1063
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4261
  %69 = load ptr, ptr %68, align 8, !dbg !4261, !tbaa !1063
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4261
  %71 = load ptr, ptr %70, align 8, !dbg !4261, !tbaa !1063
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !4261
  br label %147, !dbg !4262

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.13.132, i32 noundef 5) #37, !dbg !4263
  %75 = load ptr, ptr %4, align 8, !dbg !4263, !tbaa !1063
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4263
  %77 = load ptr, ptr %76, align 8, !dbg !4263, !tbaa !1063
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4263
  %79 = load ptr, ptr %78, align 8, !dbg !4263, !tbaa !1063
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4263
  %81 = load ptr, ptr %80, align 8, !dbg !4263, !tbaa !1063
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4263
  %83 = load ptr, ptr %82, align 8, !dbg !4263, !tbaa !1063
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4263
  %85 = load ptr, ptr %84, align 8, !dbg !4263, !tbaa !1063
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4263
  %87 = load ptr, ptr %86, align 8, !dbg !4263, !tbaa !1063
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !4263
  br label %147, !dbg !4264

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.14.133, i32 noundef 5) #37, !dbg !4265
  %91 = load ptr, ptr %4, align 8, !dbg !4265, !tbaa !1063
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4265
  %93 = load ptr, ptr %92, align 8, !dbg !4265, !tbaa !1063
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4265
  %95 = load ptr, ptr %94, align 8, !dbg !4265, !tbaa !1063
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4265
  %97 = load ptr, ptr %96, align 8, !dbg !4265, !tbaa !1063
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4265
  %99 = load ptr, ptr %98, align 8, !dbg !4265, !tbaa !1063
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4265
  %101 = load ptr, ptr %100, align 8, !dbg !4265, !tbaa !1063
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4265
  %103 = load ptr, ptr %102, align 8, !dbg !4265, !tbaa !1063
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4265
  %105 = load ptr, ptr %104, align 8, !dbg !4265, !tbaa !1063
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !4265
  br label %147, !dbg !4266

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.15.134, i32 noundef 5) #37, !dbg !4267
  %109 = load ptr, ptr %4, align 8, !dbg !4267, !tbaa !1063
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4267
  %111 = load ptr, ptr %110, align 8, !dbg !4267, !tbaa !1063
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4267
  %113 = load ptr, ptr %112, align 8, !dbg !4267, !tbaa !1063
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4267
  %115 = load ptr, ptr %114, align 8, !dbg !4267, !tbaa !1063
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4267
  %117 = load ptr, ptr %116, align 8, !dbg !4267, !tbaa !1063
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4267
  %119 = load ptr, ptr %118, align 8, !dbg !4267, !tbaa !1063
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4267
  %121 = load ptr, ptr %120, align 8, !dbg !4267, !tbaa !1063
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4267
  %123 = load ptr, ptr %122, align 8, !dbg !4267, !tbaa !1063
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4267
  %125 = load ptr, ptr %124, align 8, !dbg !4267, !tbaa !1063
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !4267
  br label %147, !dbg !4268

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.16.135, i32 noundef 5) #37, !dbg !4269
  %129 = load ptr, ptr %4, align 8, !dbg !4269, !tbaa !1063
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4269
  %131 = load ptr, ptr %130, align 8, !dbg !4269, !tbaa !1063
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4269
  %133 = load ptr, ptr %132, align 8, !dbg !4269, !tbaa !1063
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4269
  %135 = load ptr, ptr %134, align 8, !dbg !4269, !tbaa !1063
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4269
  %137 = load ptr, ptr %136, align 8, !dbg !4269, !tbaa !1063
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4269
  %139 = load ptr, ptr %138, align 8, !dbg !4269, !tbaa !1063
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4269
  %141 = load ptr, ptr %140, align 8, !dbg !4269, !tbaa !1063
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4269
  %143 = load ptr, ptr %142, align 8, !dbg !4269, !tbaa !1063
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4269
  %145 = load ptr, ptr %144, align 8, !dbg !4269, !tbaa !1063
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !4269
  br label %147, !dbg !4270

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4271
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4272 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4276, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata ptr %1, metadata !4277, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata ptr %2, metadata !4278, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata ptr %3, metadata !4279, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata ptr %4, metadata !4280, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i64 0, metadata !4281, metadata !DIExpression()), !dbg !4282
  br label %6, !dbg !4283

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4285
  call void @llvm.dbg.value(metadata i64 %7, metadata !4281, metadata !DIExpression()), !dbg !4282
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4286
  %9 = load ptr, ptr %8, align 8, !dbg !4286, !tbaa !1063
  %10 = icmp eq ptr %9, null, !dbg !4288
  %11 = add i64 %7, 1, !dbg !4289
  call void @llvm.dbg.value(metadata i64 %11, metadata !4281, metadata !DIExpression()), !dbg !4282
  br i1 %10, label %12, label %6, !dbg !4288, !llvm.loop !4290

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4292
  ret void, !dbg !4293
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4294 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4309, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata ptr %1, metadata !4310, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata ptr %2, metadata !4311, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata ptr %3, metadata !4312, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4313, metadata !DIExpression()), !dbg !4318
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !4319
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4315, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i64 0, metadata !4314, metadata !DIExpression()), !dbg !4317
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4314, metadata !DIExpression()), !dbg !4317
  %10 = icmp sgt i32 %9, -1, !dbg !4321
  br i1 %10, label %18, label %11, !dbg !4321

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4321
  store i32 %12, ptr %7, align 8, !dbg !4321
  %13 = icmp ult i32 %9, -7, !dbg !4321
  br i1 %13, label %14, label %18, !dbg !4321

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4321
  %16 = sext i32 %9 to i64, !dbg !4321
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4321
  br label %22, !dbg !4321

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4321
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4321
  store ptr %21, ptr %4, align 8, !dbg !4321
  br label %22, !dbg !4321

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4321
  %25 = load ptr, ptr %24, align 8, !dbg !4321
  store ptr %25, ptr %6, align 8, !dbg !4324, !tbaa !1063
  %26 = icmp eq ptr %25, null, !dbg !4325
  br i1 %26, label %197, label %27, !dbg !4326

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !4314, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 1, metadata !4314, metadata !DIExpression()), !dbg !4317
  %28 = icmp sgt i32 %23, -1, !dbg !4321
  br i1 %28, label %36, label %29, !dbg !4321

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4321
  store i32 %30, ptr %7, align 8, !dbg !4321
  %31 = icmp ult i32 %23, -7, !dbg !4321
  br i1 %31, label %32, label %36, !dbg !4321

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4321
  %34 = sext i32 %23 to i64, !dbg !4321
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4321
  br label %40, !dbg !4321

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4321
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4321
  store ptr %39, ptr %4, align 8, !dbg !4321
  br label %40, !dbg !4321

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4321
  %43 = load ptr, ptr %42, align 8, !dbg !4321
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4327
  store ptr %43, ptr %44, align 8, !dbg !4324, !tbaa !1063
  %45 = icmp eq ptr %43, null, !dbg !4325
  br i1 %45, label %197, label %46, !dbg !4326

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4314, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 2, metadata !4314, metadata !DIExpression()), !dbg !4317
  %47 = icmp sgt i32 %41, -1, !dbg !4321
  br i1 %47, label %55, label %48, !dbg !4321

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4321
  store i32 %49, ptr %7, align 8, !dbg !4321
  %50 = icmp ult i32 %41, -7, !dbg !4321
  br i1 %50, label %51, label %55, !dbg !4321

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4321
  %53 = sext i32 %41 to i64, !dbg !4321
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4321
  br label %59, !dbg !4321

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4321
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4321
  store ptr %58, ptr %4, align 8, !dbg !4321
  br label %59, !dbg !4321

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4321
  %62 = load ptr, ptr %61, align 8, !dbg !4321
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4327
  store ptr %62, ptr %63, align 8, !dbg !4324, !tbaa !1063
  %64 = icmp eq ptr %62, null, !dbg !4325
  br i1 %64, label %197, label %65, !dbg !4326

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !4314, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 3, metadata !4314, metadata !DIExpression()), !dbg !4317
  %66 = icmp sgt i32 %60, -1, !dbg !4321
  br i1 %66, label %74, label %67, !dbg !4321

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4321
  store i32 %68, ptr %7, align 8, !dbg !4321
  %69 = icmp ult i32 %60, -7, !dbg !4321
  br i1 %69, label %70, label %74, !dbg !4321

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4321
  %72 = sext i32 %60 to i64, !dbg !4321
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4321
  br label %78, !dbg !4321

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4321
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4321
  store ptr %77, ptr %4, align 8, !dbg !4321
  br label %78, !dbg !4321

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4321
  %81 = load ptr, ptr %80, align 8, !dbg !4321
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4327
  store ptr %81, ptr %82, align 8, !dbg !4324, !tbaa !1063
  %83 = icmp eq ptr %81, null, !dbg !4325
  br i1 %83, label %197, label %84, !dbg !4326

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !4314, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 4, metadata !4314, metadata !DIExpression()), !dbg !4317
  %85 = icmp sgt i32 %79, -1, !dbg !4321
  br i1 %85, label %93, label %86, !dbg !4321

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4321
  store i32 %87, ptr %7, align 8, !dbg !4321
  %88 = icmp ult i32 %79, -7, !dbg !4321
  br i1 %88, label %89, label %93, !dbg !4321

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4321
  %91 = sext i32 %79 to i64, !dbg !4321
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4321
  br label %97, !dbg !4321

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4321
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4321
  store ptr %96, ptr %4, align 8, !dbg !4321
  br label %97, !dbg !4321

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4321
  %100 = load ptr, ptr %99, align 8, !dbg !4321
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4327
  store ptr %100, ptr %101, align 8, !dbg !4324, !tbaa !1063
  %102 = icmp eq ptr %100, null, !dbg !4325
  br i1 %102, label %197, label %103, !dbg !4326

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !4314, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 5, metadata !4314, metadata !DIExpression()), !dbg !4317
  %104 = icmp sgt i32 %98, -1, !dbg !4321
  br i1 %104, label %112, label %105, !dbg !4321

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4321
  store i32 %106, ptr %7, align 8, !dbg !4321
  %107 = icmp ult i32 %98, -7, !dbg !4321
  br i1 %107, label %108, label %112, !dbg !4321

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4321
  %110 = sext i32 %98 to i64, !dbg !4321
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4321
  br label %116, !dbg !4321

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4321
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4321
  store ptr %115, ptr %4, align 8, !dbg !4321
  br label %116, !dbg !4321

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4321
  %119 = load ptr, ptr %118, align 8, !dbg !4321
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4327
  store ptr %119, ptr %120, align 8, !dbg !4324, !tbaa !1063
  %121 = icmp eq ptr %119, null, !dbg !4325
  br i1 %121, label %197, label %122, !dbg !4326

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !4314, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 6, metadata !4314, metadata !DIExpression()), !dbg !4317
  %123 = icmp sgt i32 %117, -1, !dbg !4321
  br i1 %123, label %131, label %124, !dbg !4321

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4321
  store i32 %125, ptr %7, align 8, !dbg !4321
  %126 = icmp ult i32 %117, -7, !dbg !4321
  br i1 %126, label %127, label %131, !dbg !4321

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4321
  %129 = sext i32 %117 to i64, !dbg !4321
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4321
  br label %135, !dbg !4321

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4321
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4321
  store ptr %134, ptr %4, align 8, !dbg !4321
  br label %135, !dbg !4321

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4321
  %138 = load ptr, ptr %137, align 8, !dbg !4321
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4327
  store ptr %138, ptr %139, align 8, !dbg !4324, !tbaa !1063
  %140 = icmp eq ptr %138, null, !dbg !4325
  br i1 %140, label %197, label %141, !dbg !4326

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !4314, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 7, metadata !4314, metadata !DIExpression()), !dbg !4317
  %142 = icmp sgt i32 %136, -1, !dbg !4321
  br i1 %142, label %150, label %143, !dbg !4321

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4321
  store i32 %144, ptr %7, align 8, !dbg !4321
  %145 = icmp ult i32 %136, -7, !dbg !4321
  br i1 %145, label %146, label %150, !dbg !4321

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4321
  %148 = sext i32 %136 to i64, !dbg !4321
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4321
  br label %154, !dbg !4321

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4321
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4321
  store ptr %153, ptr %4, align 8, !dbg !4321
  br label %154, !dbg !4321

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4321
  %157 = load ptr, ptr %156, align 8, !dbg !4321
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4327
  store ptr %157, ptr %158, align 8, !dbg !4324, !tbaa !1063
  %159 = icmp eq ptr %157, null, !dbg !4325
  br i1 %159, label %197, label %160, !dbg !4326

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !4314, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 8, metadata !4314, metadata !DIExpression()), !dbg !4317
  %161 = icmp sgt i32 %155, -1, !dbg !4321
  br i1 %161, label %169, label %162, !dbg !4321

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4321
  store i32 %163, ptr %7, align 8, !dbg !4321
  %164 = icmp ult i32 %155, -7, !dbg !4321
  br i1 %164, label %165, label %169, !dbg !4321

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4321
  %167 = sext i32 %155 to i64, !dbg !4321
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4321
  br label %173, !dbg !4321

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4321
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4321
  store ptr %172, ptr %4, align 8, !dbg !4321
  br label %173, !dbg !4321

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4321
  %176 = load ptr, ptr %175, align 8, !dbg !4321
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4327
  store ptr %176, ptr %177, align 8, !dbg !4324, !tbaa !1063
  %178 = icmp eq ptr %176, null, !dbg !4325
  br i1 %178, label %197, label %179, !dbg !4326

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !4314, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 9, metadata !4314, metadata !DIExpression()), !dbg !4317
  %180 = icmp sgt i32 %174, -1, !dbg !4321
  br i1 %180, label %188, label %181, !dbg !4321

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4321
  store i32 %182, ptr %7, align 8, !dbg !4321
  %183 = icmp ult i32 %174, -7, !dbg !4321
  br i1 %183, label %184, label %188, !dbg !4321

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4321
  %186 = sext i32 %174 to i64, !dbg !4321
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4321
  br label %191, !dbg !4321

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4321
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4321
  store ptr %190, ptr %4, align 8, !dbg !4321
  br label %191, !dbg !4321

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4321
  %193 = load ptr, ptr %192, align 8, !dbg !4321
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4327
  store ptr %193, ptr %194, align 8, !dbg !4324, !tbaa !1063
  %195 = icmp eq ptr %193, null, !dbg !4325
  %196 = select i1 %195, i64 9, i64 10, !dbg !4326
  br label %197, !dbg !4326

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4328
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4329
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !4330
  ret void, !dbg !4330
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4331 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4335, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata ptr %1, metadata !4336, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata ptr %2, metadata !4337, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata ptr %3, metadata !4338, metadata !DIExpression()), !dbg !4340
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !4341
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4339, metadata !DIExpression()), !dbg !4342
  call void @llvm.va_start(ptr nonnull %5), !dbg !4343
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !4344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4344, !tbaa.struct !2321
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4344
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !4344
  call void @llvm.va_end(ptr nonnull %5), !dbg !4345
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !4346
  ret void, !dbg !4346
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4347 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4348, !tbaa !1063
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %1), !dbg !4348
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.17.140, i32 noundef 5) #37, !dbg !4349
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.141) #37, !dbg !4349
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.19.142, i32 noundef 5) #37, !dbg !4350
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.143, ptr noundef nonnull @.str.21.144) #37, !dbg !4350
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.22.145, i32 noundef 5) #37, !dbg !4351
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.146) #37, !dbg !4351
  ret void, !dbg !4352
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !4353 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4358, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata i64 %1, metadata !4359, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata i64 %2, metadata !4360, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata ptr %0, metadata !4362, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i64 %1, metadata !4365, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i64 %2, metadata !4366, metadata !DIExpression()), !dbg !4367
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !4369
  call void @llvm.dbg.value(metadata ptr %4, metadata !4370, metadata !DIExpression()), !dbg !4375
  %5 = icmp eq ptr %4, null, !dbg !4377
  br i1 %5, label %6, label %7, !dbg !4379

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !4380
  unreachable, !dbg !4380

7:                                                ; preds = %3
  ret ptr %4, !dbg !4381
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4363 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4362, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata i64 %1, metadata !4365, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata i64 %2, metadata !4366, metadata !DIExpression()), !dbg !4382
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !4383
  call void @llvm.dbg.value(metadata ptr %4, metadata !4370, metadata !DIExpression()), !dbg !4384
  %5 = icmp eq ptr %4, null, !dbg !4386
  br i1 %5, label %6, label %7, !dbg !4387

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !4388
  unreachable, !dbg !4388

7:                                                ; preds = %3
  ret ptr %4, !dbg !4389
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4390 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4394, metadata !DIExpression()), !dbg !4395
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4396
  call void @llvm.dbg.value(metadata ptr %2, metadata !4370, metadata !DIExpression()), !dbg !4397
  %3 = icmp eq ptr %2, null, !dbg !4399
  br i1 %3, label %4, label %5, !dbg !4400

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4401
  unreachable, !dbg !4401

5:                                                ; preds = %1
  ret ptr %2, !dbg !4402
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4403 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4404 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4408, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i64 %0, metadata !4410, metadata !DIExpression()), !dbg !4414
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4416
  call void @llvm.dbg.value(metadata ptr %2, metadata !4370, metadata !DIExpression()), !dbg !4417
  %3 = icmp eq ptr %2, null, !dbg !4419
  br i1 %3, label %4, label %5, !dbg !4420

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4421
  unreachable, !dbg !4421

5:                                                ; preds = %1
  ret ptr %2, !dbg !4422
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4423 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4427, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i64 %0, metadata !4394, metadata !DIExpression()), !dbg !4429
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4431
  call void @llvm.dbg.value(metadata ptr %2, metadata !4370, metadata !DIExpression()), !dbg !4432
  %3 = icmp eq ptr %2, null, !dbg !4434
  br i1 %3, label %4, label %5, !dbg !4435

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4436
  unreachable, !dbg !4436

5:                                                ; preds = %1
  ret ptr %2, !dbg !4437
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4438 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4442, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i64 %1, metadata !4443, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata ptr %0, metadata !4445, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64 %1, metadata !4449, metadata !DIExpression()), !dbg !4450
  %3 = icmp eq i64 %1, 0, !dbg !4452
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4452
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #43, !dbg !4453
  call void @llvm.dbg.value(metadata ptr %5, metadata !4370, metadata !DIExpression()), !dbg !4454
  %6 = icmp eq ptr %5, null, !dbg !4456
  br i1 %6, label %7, label %8, !dbg !4457

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4458
  unreachable, !dbg !4458

8:                                                ; preds = %2
  ret ptr %5, !dbg !4459
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4460 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4461 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4465, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.value(metadata i64 %1, metadata !4466, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.value(metadata ptr %0, metadata !4468, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i64 %1, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata ptr %0, metadata !4445, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata i64 %1, metadata !4449, metadata !DIExpression()), !dbg !4474
  %3 = icmp eq i64 %1, 0, !dbg !4476
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4476
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #43, !dbg !4477
  call void @llvm.dbg.value(metadata ptr %5, metadata !4370, metadata !DIExpression()), !dbg !4478
  %6 = icmp eq ptr %5, null, !dbg !4480
  br i1 %6, label %7, label %8, !dbg !4481

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4482
  unreachable, !dbg !4482

8:                                                ; preds = %2
  ret ptr %5, !dbg !4483
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4484 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4488, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata i64 %1, metadata !4489, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata i64 %2, metadata !4490, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata ptr %0, metadata !4492, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i64 %1, metadata !4495, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i64 %2, metadata !4496, metadata !DIExpression()), !dbg !4497
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !4499
  call void @llvm.dbg.value(metadata ptr %4, metadata !4370, metadata !DIExpression()), !dbg !4500
  %5 = icmp eq ptr %4, null, !dbg !4502
  br i1 %5, label %6, label %7, !dbg !4503

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !4504
  unreachable, !dbg !4504

7:                                                ; preds = %3
  ret ptr %4, !dbg !4505
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4506 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4510, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i64 %1, metadata !4511, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata ptr null, metadata !4362, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i64 %0, metadata !4365, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i64 %1, metadata !4366, metadata !DIExpression()), !dbg !4513
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !4515
  call void @llvm.dbg.value(metadata ptr %3, metadata !4370, metadata !DIExpression()), !dbg !4516
  %4 = icmp eq ptr %3, null, !dbg !4518
  br i1 %4, label %5, label %6, !dbg !4519

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4520
  unreachable, !dbg !4520

6:                                                ; preds = %2
  ret ptr %3, !dbg !4521
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4522 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4526, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata i64 %1, metadata !4527, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata ptr null, metadata !4488, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata i64 %0, metadata !4489, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata i64 %1, metadata !4490, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata ptr null, metadata !4492, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata i64 %0, metadata !4495, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata i64 %1, metadata !4496, metadata !DIExpression()), !dbg !4531
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !4533
  call void @llvm.dbg.value(metadata ptr %3, metadata !4370, metadata !DIExpression()), !dbg !4534
  %4 = icmp eq ptr %3, null, !dbg !4536
  br i1 %4, label %5, label %6, !dbg !4537

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4538
  unreachable, !dbg !4538

6:                                                ; preds = %2
  ret ptr %3, !dbg !4539
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4540 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4544, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata ptr %1, metadata !4545, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata ptr %0, metadata !1007, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata ptr %1, metadata !1008, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i64 1, metadata !1009, metadata !DIExpression()), !dbg !4547
  %3 = load i64, ptr %1, align 8, !dbg !4549, !tbaa !1348
  call void @llvm.dbg.value(metadata i64 %3, metadata !1010, metadata !DIExpression()), !dbg !4547
  %4 = icmp eq ptr %0, null, !dbg !4550
  br i1 %4, label %5, label %8, !dbg !4552

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4553
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4556
  br label %15, !dbg !4556

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4557
  %10 = add nuw i64 %9, 1, !dbg !4557
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4557
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4557
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4557
  call void @llvm.dbg.value(metadata i64 %13, metadata !1010, metadata !DIExpression()), !dbg !4547
  br i1 %12, label %14, label %15, !dbg !4560

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !4561
  unreachable, !dbg !4561

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4547
  call void @llvm.dbg.value(metadata i64 %16, metadata !1010, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata ptr %0, metadata !4362, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i64 %16, metadata !4365, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i64 1, metadata !4366, metadata !DIExpression()), !dbg !4562
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !4564
  call void @llvm.dbg.value(metadata ptr %17, metadata !4370, metadata !DIExpression()), !dbg !4565
  %18 = icmp eq ptr %17, null, !dbg !4567
  br i1 %18, label %19, label %20, !dbg !4568

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !4569
  unreachable, !dbg !4569

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !1007, metadata !DIExpression()), !dbg !4547
  store i64 %16, ptr %1, align 8, !dbg !4570, !tbaa !1348
  ret ptr %17, !dbg !4571
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1002 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1007, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata ptr %1, metadata !1008, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %2, metadata !1009, metadata !DIExpression()), !dbg !4572
  %4 = load i64, ptr %1, align 8, !dbg !4573, !tbaa !1348
  call void @llvm.dbg.value(metadata i64 %4, metadata !1010, metadata !DIExpression()), !dbg !4572
  %5 = icmp eq ptr %0, null, !dbg !4574
  br i1 %5, label %6, label %13, !dbg !4575

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4576
  br i1 %7, label %8, label %20, !dbg !4577

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4578
  call void @llvm.dbg.value(metadata i64 %9, metadata !1010, metadata !DIExpression()), !dbg !4572
  %10 = icmp ugt i64 %2, 128, !dbg !4580
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4581
  call void @llvm.dbg.value(metadata i64 %12, metadata !1010, metadata !DIExpression()), !dbg !4572
  br label %20, !dbg !4582

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4583
  %15 = add nuw i64 %14, 1, !dbg !4583
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4583
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4583
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4583
  call void @llvm.dbg.value(metadata i64 %18, metadata !1010, metadata !DIExpression()), !dbg !4572
  br i1 %17, label %19, label %20, !dbg !4584

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !4585
  unreachable, !dbg !4585

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4572
  call void @llvm.dbg.value(metadata i64 %21, metadata !1010, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata ptr %0, metadata !4362, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 %21, metadata !4365, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 %2, metadata !4366, metadata !DIExpression()), !dbg !4586
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !4588
  call void @llvm.dbg.value(metadata ptr %22, metadata !4370, metadata !DIExpression()), !dbg !4589
  %23 = icmp eq ptr %22, null, !dbg !4591
  br i1 %23, label %24, label %25, !dbg !4592

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !4593
  unreachable, !dbg !4593

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !1007, metadata !DIExpression()), !dbg !4572
  store i64 %21, ptr %1, align 8, !dbg !4594, !tbaa !1348
  ret ptr %22, !dbg !4595
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !1014 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1019, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.value(metadata ptr %1, metadata !1020, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.value(metadata i64 %2, metadata !1021, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.value(metadata i64 %3, metadata !1022, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.value(metadata i64 %4, metadata !1023, metadata !DIExpression()), !dbg !4596
  %6 = load i64, ptr %1, align 8, !dbg !4597, !tbaa !1348
  call void @llvm.dbg.value(metadata i64 %6, metadata !1024, metadata !DIExpression()), !dbg !4596
  %7 = ashr i64 %6, 1, !dbg !4598
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4598
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4598
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4598
  call void @llvm.dbg.value(metadata i64 %10, metadata !1025, metadata !DIExpression()), !dbg !4596
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4600
  call void @llvm.dbg.value(metadata i64 %11, metadata !1025, metadata !DIExpression()), !dbg !4596
  %12 = icmp sgt i64 %3, -1, !dbg !4601
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4603
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4603
  call void @llvm.dbg.value(metadata i64 %15, metadata !1025, metadata !DIExpression()), !dbg !4596
  %16 = icmp slt i64 %4, 0, !dbg !4604
  br i1 %16, label %17, label %30, !dbg !4604

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4604
  br i1 %18, label %19, label %24, !dbg !4604

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4604
  %21 = udiv i64 9223372036854775807, %20, !dbg !4604
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4604
  br i1 %23, label %46, label %43, !dbg !4604

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4604
  br i1 %25, label %43, label %26, !dbg !4604

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4604
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4604
  %29 = icmp ult i64 %28, %15, !dbg !4604
  br i1 %29, label %46, label %43, !dbg !4604

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4604
  br i1 %31, label %43, label %32, !dbg !4604

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4604
  br i1 %33, label %34, label %40, !dbg !4604

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4604
  br i1 %35, label %43, label %36, !dbg !4604

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4604
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4604
  %39 = icmp ult i64 %38, %4, !dbg !4604
  br i1 %39, label %46, label %43, !dbg !4604

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4604
  br i1 %42, label %46, label %43, !dbg !4604

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !1026, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4596
  %44 = mul i64 %15, %4, !dbg !4604
  call void @llvm.dbg.value(metadata i64 %44, metadata !1026, metadata !DIExpression()), !dbg !4596
  %45 = icmp slt i64 %44, 128, !dbg !4604
  br i1 %45, label %46, label %52, !dbg !4604

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !1027, metadata !DIExpression()), !dbg !4596
  %48 = sdiv i64 %47, %4, !dbg !4605
  call void @llvm.dbg.value(metadata i64 %48, metadata !1025, metadata !DIExpression()), !dbg !4596
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4608
  call void @llvm.dbg.value(metadata i64 %51, metadata !1026, metadata !DIExpression()), !dbg !4596
  br label %52, !dbg !4609

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4596
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4596
  call void @llvm.dbg.value(metadata i64 %54, metadata !1026, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.value(metadata i64 %53, metadata !1025, metadata !DIExpression()), !dbg !4596
  %55 = icmp eq ptr %0, null, !dbg !4610
  br i1 %55, label %56, label %57, !dbg !4612

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4613, !tbaa !1348
  br label %57, !dbg !4614

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4615
  %59 = icmp slt i64 %58, %2, !dbg !4617
  br i1 %59, label %60, label %97, !dbg !4618

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4619
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4619
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4619
  call void @llvm.dbg.value(metadata i64 %63, metadata !1025, metadata !DIExpression()), !dbg !4596
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4620
  br i1 %66, label %96, label %67, !dbg !4620

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4621

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4621
  br i1 %69, label %70, label %75, !dbg !4621

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4621
  %72 = udiv i64 9223372036854775807, %71, !dbg !4621
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4621
  br i1 %74, label %96, label %94, !dbg !4621

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4621
  br i1 %76, label %94, label %77, !dbg !4621

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4621
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4621
  %80 = icmp ult i64 %79, %63, !dbg !4621
  br i1 %80, label %96, label %94, !dbg !4621

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4621
  br i1 %82, label %94, label %83, !dbg !4621

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4621
  br i1 %84, label %85, label %91, !dbg !4621

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4621
  br i1 %86, label %94, label %87, !dbg !4621

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4621
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4621
  %90 = icmp ult i64 %89, %4, !dbg !4621
  br i1 %90, label %96, label %94, !dbg !4621

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4621
  br i1 %93, label %96, label %94, !dbg !4621

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !1026, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4596
  %95 = mul i64 %63, %4, !dbg !4621
  call void @llvm.dbg.value(metadata i64 %95, metadata !1026, metadata !DIExpression()), !dbg !4596
  br label %97, !dbg !4622

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #39, !dbg !4623
  unreachable, !dbg !4623

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4596
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4596
  call void @llvm.dbg.value(metadata i64 %99, metadata !1026, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.value(metadata i64 %98, metadata !1025, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.value(metadata ptr %0, metadata !4442, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.value(metadata i64 %99, metadata !4443, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.value(metadata ptr %0, metadata !4445, metadata !DIExpression()), !dbg !4626
  call void @llvm.dbg.value(metadata i64 %99, metadata !4449, metadata !DIExpression()), !dbg !4626
  %100 = icmp eq i64 %99, 0, !dbg !4628
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4628
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #43, !dbg !4629
  call void @llvm.dbg.value(metadata ptr %102, metadata !4370, metadata !DIExpression()), !dbg !4630
  %103 = icmp eq ptr %102, null, !dbg !4632
  br i1 %103, label %104, label %105, !dbg !4633

104:                                              ; preds = %97
  tail call void @xalloc_die() #39, !dbg !4634
  unreachable, !dbg !4634

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !1019, metadata !DIExpression()), !dbg !4596
  store i64 %98, ptr %1, align 8, !dbg !4635, !tbaa !1348
  ret ptr %102, !dbg !4636
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4637 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4639, metadata !DIExpression()), !dbg !4640
  call void @llvm.dbg.value(metadata i64 %0, metadata !4641, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata i64 1, metadata !4644, metadata !DIExpression()), !dbg !4645
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !4647
  call void @llvm.dbg.value(metadata ptr %2, metadata !4370, metadata !DIExpression()), !dbg !4648
  %3 = icmp eq ptr %2, null, !dbg !4650
  br i1 %3, label %4, label %5, !dbg !4651

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4652
  unreachable, !dbg !4652

5:                                                ; preds = %1
  ret ptr %2, !dbg !4653
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4654 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4642 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4641, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.value(metadata i64 %1, metadata !4644, metadata !DIExpression()), !dbg !4655
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !4656
  call void @llvm.dbg.value(metadata ptr %3, metadata !4370, metadata !DIExpression()), !dbg !4657
  %4 = icmp eq ptr %3, null, !dbg !4659
  br i1 %4, label %5, label %6, !dbg !4660

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4661
  unreachable, !dbg !4661

6:                                                ; preds = %2
  ret ptr %3, !dbg !4662
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4663 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4665, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata i64 %0, metadata !4667, metadata !DIExpression()), !dbg !4671
  call void @llvm.dbg.value(metadata i64 1, metadata !4670, metadata !DIExpression()), !dbg !4671
  call void @llvm.dbg.value(metadata i64 %0, metadata !4673, metadata !DIExpression()), !dbg !4677
  call void @llvm.dbg.value(metadata i64 1, metadata !4676, metadata !DIExpression()), !dbg !4677
  call void @llvm.dbg.value(metadata i64 %0, metadata !4673, metadata !DIExpression()), !dbg !4677
  call void @llvm.dbg.value(metadata i64 1, metadata !4676, metadata !DIExpression()), !dbg !4677
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !4679
  call void @llvm.dbg.value(metadata ptr %2, metadata !4370, metadata !DIExpression()), !dbg !4680
  %3 = icmp eq ptr %2, null, !dbg !4682
  br i1 %3, label %4, label %5, !dbg !4683

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4684
  unreachable, !dbg !4684

5:                                                ; preds = %1
  ret ptr %2, !dbg !4685
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4668 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4667, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.value(metadata i64 %1, metadata !4670, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.value(metadata i64 %0, metadata !4673, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.value(metadata i64 %1, metadata !4676, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.value(metadata i64 %0, metadata !4673, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.value(metadata i64 %1, metadata !4676, metadata !DIExpression()), !dbg !4687
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !4689
  call void @llvm.dbg.value(metadata ptr %3, metadata !4370, metadata !DIExpression()), !dbg !4690
  %4 = icmp eq ptr %3, null, !dbg !4692
  br i1 %4, label %5, label %6, !dbg !4693

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4694
  unreachable, !dbg !4694

6:                                                ; preds = %2
  ret ptr %3, !dbg !4695
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4696 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4700, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.value(metadata i64 %1, metadata !4701, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.value(metadata i64 %1, metadata !4394, metadata !DIExpression()), !dbg !4703
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4705
  call void @llvm.dbg.value(metadata ptr %3, metadata !4370, metadata !DIExpression()), !dbg !4706
  %4 = icmp eq ptr %3, null, !dbg !4708
  br i1 %4, label %5, label %6, !dbg !4709

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4710
  unreachable, !dbg !4710

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4711, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata ptr %0, metadata !4717, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata i64 %1, metadata !4718, metadata !DIExpression()), !dbg !4719
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4721
  ret ptr %3, !dbg !4722
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4723 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4727, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i64 %1, metadata !4728, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i64 %1, metadata !4408, metadata !DIExpression()), !dbg !4730
  call void @llvm.dbg.value(metadata i64 %1, metadata !4410, metadata !DIExpression()), !dbg !4732
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4734
  call void @llvm.dbg.value(metadata ptr %3, metadata !4370, metadata !DIExpression()), !dbg !4735
  %4 = icmp eq ptr %3, null, !dbg !4737
  br i1 %4, label %5, label %6, !dbg !4738

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4739
  unreachable, !dbg !4739

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4711, metadata !DIExpression()), !dbg !4740
  call void @llvm.dbg.value(metadata ptr %0, metadata !4717, metadata !DIExpression()), !dbg !4740
  call void @llvm.dbg.value(metadata i64 %1, metadata !4718, metadata !DIExpression()), !dbg !4740
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4742
  ret ptr %3, !dbg !4743
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4744 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4748, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i64 %1, metadata !4749, metadata !DIExpression()), !dbg !4751
  %3 = add nsw i64 %1, 1, !dbg !4752
  call void @llvm.dbg.value(metadata i64 %3, metadata !4408, metadata !DIExpression()), !dbg !4753
  call void @llvm.dbg.value(metadata i64 %3, metadata !4410, metadata !DIExpression()), !dbg !4755
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4757
  call void @llvm.dbg.value(metadata ptr %4, metadata !4370, metadata !DIExpression()), !dbg !4758
  %5 = icmp eq ptr %4, null, !dbg !4760
  br i1 %5, label %6, label %7, !dbg !4761

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4762
  unreachable, !dbg !4762

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4750, metadata !DIExpression()), !dbg !4751
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4763
  store i8 0, ptr %8, align 1, !dbg !4764, !tbaa !1141
  call void @llvm.dbg.value(metadata ptr %4, metadata !4711, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata ptr %0, metadata !4717, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata i64 %1, metadata !4718, metadata !DIExpression()), !dbg !4765
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4767
  ret ptr %4, !dbg !4768
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4769 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4771, metadata !DIExpression()), !dbg !4772
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !4773
  %3 = add i64 %2, 1, !dbg !4774
  call void @llvm.dbg.value(metadata ptr %0, metadata !4700, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata i64 %3, metadata !4701, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata i64 %3, metadata !4394, metadata !DIExpression()), !dbg !4777
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4779
  call void @llvm.dbg.value(metadata ptr %4, metadata !4370, metadata !DIExpression()), !dbg !4780
  %5 = icmp eq ptr %4, null, !dbg !4782
  br i1 %5, label %6, label %7, !dbg !4783

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4784
  unreachable, !dbg !4784

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4711, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata ptr %0, metadata !4717, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata i64 %3, metadata !4718, metadata !DIExpression()), !dbg !4785
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !4787
  ret ptr %4, !dbg !4788
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4789 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4794, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 %1, metadata !4791, metadata !DIExpression()), !dbg !4795
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.159, ptr noundef nonnull @.str.2.160, i32 noundef 5) #37, !dbg !4794
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.161, ptr noundef %2) #37, !dbg !4794
  %3 = icmp eq i32 %1, 0, !dbg !4794
  tail call void @llvm.assume(i1 %3), !dbg !4794
  tail call void @abort() #39, !dbg !4796
  unreachable, !dbg !4796
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4797 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !4835, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata ptr %1, metadata !4836, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i32 0, metadata !4837, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i32 0, metadata !4838, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i8 0, metadata !4839, metadata !DIExpression()), !dbg !4859
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #37, !dbg !4860
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4840, metadata !DIExpression()), !dbg !4861
  call void @llvm.dbg.value(metadata ptr %1, metadata !4844, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.value(metadata ptr %3, metadata !4846, metadata !DIExpression()), !dbg !4862
  br label %4, !dbg !4863

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4862
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4859
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4864
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4859
  call void @llvm.dbg.value(metadata i32 %9, metadata !4837, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i32 %8, metadata !4838, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata ptr %10, metadata !4846, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.value(metadata ptr %6, metadata !4844, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.value(metadata i8 poison, metadata !4839, metadata !DIExpression()), !dbg !4859
  %11 = load i8, ptr %6, align 1, !dbg !4865, !tbaa !1141
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4866

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !4837, metadata !DIExpression()), !dbg !4859
  %13 = icmp slt i64 %7, 80, !dbg !4867
  br i1 %13, label %14, label %43, !dbg !4870

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4871
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4846, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4862
  store i8 114, ptr %10, align 1, !dbg !4872, !tbaa !1141
  br label %43, !dbg !4873

16:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !4837, metadata !DIExpression()), !dbg !4859
  %17 = or i32 %8, 576, !dbg !4874
  call void @llvm.dbg.value(metadata i32 %17, metadata !4838, metadata !DIExpression()), !dbg !4859
  %18 = icmp slt i64 %7, 80, !dbg !4875
  br i1 %18, label %19, label %43, !dbg !4877

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4878
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4846, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4862
  store i8 119, ptr %10, align 1, !dbg !4879, !tbaa !1141
  br label %43, !dbg !4880

21:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !4837, metadata !DIExpression()), !dbg !4859
  %22 = or i32 %8, 1088, !dbg !4881
  call void @llvm.dbg.value(metadata i32 %22, metadata !4838, metadata !DIExpression()), !dbg !4859
  %23 = icmp slt i64 %7, 80, !dbg !4882
  br i1 %23, label %24, label %43, !dbg !4884

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4885
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4846, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4862
  store i8 97, ptr %10, align 1, !dbg !4886, !tbaa !1141
  br label %43, !dbg !4887

26:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %8, metadata !4838, metadata !DIExpression()), !dbg !4859
  %27 = icmp slt i64 %7, 80, !dbg !4888
  br i1 %27, label %28, label %43, !dbg !4890

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4891
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4846, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4862
  store i8 98, ptr %10, align 1, !dbg !4892, !tbaa !1141
  br label %43, !dbg !4893

30:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 2, metadata !4837, metadata !DIExpression()), !dbg !4859
  %31 = icmp slt i64 %7, 80, !dbg !4894
  br i1 %31, label %32, label %43, !dbg !4896

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4897
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4846, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4862
  store i8 43, ptr %10, align 1, !dbg !4898, !tbaa !1141
  br label %43, !dbg !4899

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4900
  call void @llvm.dbg.value(metadata i32 %35, metadata !4838, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i8 1, metadata !4839, metadata !DIExpression()), !dbg !4859
  br label %43, !dbg !4901

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4902
  call void @llvm.dbg.value(metadata i32 %37, metadata !4838, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i8 1, metadata !4839, metadata !DIExpression()), !dbg !4859
  br label %43, !dbg !4903

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #38, !dbg !4904
  call void @llvm.dbg.value(metadata i64 %39, metadata !4847, metadata !DIExpression()), !dbg !4905
  %40 = sub nsw i64 80, %7, !dbg !4906
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !4908
  call void @llvm.dbg.value(metadata i64 %41, metadata !4847, metadata !DIExpression()), !dbg !4905
  call void @llvm.dbg.value(metadata ptr %10, metadata !4909, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata ptr %6, metadata !4912, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata i64 %41, metadata !4913, metadata !DIExpression()), !dbg !4914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #37, !dbg !4916
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !4917
  call void @llvm.dbg.value(metadata ptr %42, metadata !4846, metadata !DIExpression()), !dbg !4862
  br label %49, !dbg !4918

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4859
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4859
  call void @llvm.dbg.value(metadata i32 %47, metadata !4837, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i32 %46, metadata !4838, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4846, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4862
  call void @llvm.dbg.value(metadata i8 poison, metadata !4839, metadata !DIExpression()), !dbg !4859
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !4919
  call void @llvm.dbg.value(metadata ptr %48, metadata !4844, metadata !DIExpression()), !dbg !4862
  br label %4, !dbg !4920, !llvm.loop !4921

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !4862
  call void @llvm.dbg.value(metadata ptr %50, metadata !4846, metadata !DIExpression()), !dbg !4862
  store i8 0, ptr %50, align 1, !dbg !4923, !tbaa !1141
  br i1 %5, label %51, label %62, !dbg !4924

51:                                               ; preds = %49
  %52 = or i32 %9, %8, !dbg !4925
  %53 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %52, i32 noundef 438) #37, !dbg !4926
  call void @llvm.dbg.value(metadata i32 %53, metadata !4852, metadata !DIExpression()), !dbg !4927
  %54 = icmp slt i32 %53, 0, !dbg !4928
  br i1 %54, label %64, label %55, !dbg !4930

55:                                               ; preds = %51
  %56 = call noalias ptr @fdopen(i32 noundef %53, ptr noundef nonnull %3) #37, !dbg !4931
  call void @llvm.dbg.value(metadata ptr %56, metadata !4855, metadata !DIExpression()), !dbg !4927
  %57 = icmp eq ptr %56, null, !dbg !4932
  br i1 %57, label %58, label %64, !dbg !4933

58:                                               ; preds = %55
  %59 = tail call ptr @__errno_location() #40, !dbg !4934
  %60 = load i32, ptr %59, align 4, !dbg !4934, !tbaa !1132
  call void @llvm.dbg.value(metadata i32 %60, metadata !4856, metadata !DIExpression()), !dbg !4935
  %61 = tail call i32 @close(i32 noundef %53) #37, !dbg !4936
  store i32 %60, ptr %59, align 4, !dbg !4937, !tbaa !1132
  br label %64, !dbg !4938

62:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !4939, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata ptr %1, metadata !4942, metadata !DIExpression()), !dbg !4943
  %63 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4945
  br label %64, !dbg !4946

64:                                               ; preds = %51, %58, %55, %62
  %65 = phi ptr [ %63, %62 ], [ null, %51 ], [ null, %58 ], [ %56, %55 ], !dbg !4859
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #37, !dbg !4947
  ret ptr %65, !dbg !4947
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !4948 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #34

; Function Attrs: nofree nounwind
declare !dbg !4951 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4954 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4955 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4958 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4996, metadata !DIExpression()), !dbg !5001
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !5002
  call void @llvm.dbg.value(metadata i1 poison, metadata !4997, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5001
  call void @llvm.dbg.value(metadata ptr %0, metadata !5003, metadata !DIExpression()), !dbg !5006
  %3 = load i32, ptr %0, align 8, !dbg !5008, !tbaa !1375
  %4 = and i32 %3, 32, !dbg !5009
  %5 = icmp eq i32 %4, 0, !dbg !5009
  call void @llvm.dbg.value(metadata i1 %5, metadata !4999, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5001
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !5010
  %7 = icmp eq i32 %6, 0, !dbg !5011
  call void @llvm.dbg.value(metadata i1 %7, metadata !5000, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5001
  br i1 %5, label %8, label %18, !dbg !5012

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5014
  call void @llvm.dbg.value(metadata i1 %9, metadata !4997, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5001
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5015
  %11 = xor i1 %7, true, !dbg !5015
  %12 = sext i1 %11 to i32, !dbg !5015
  br i1 %10, label %21, label %13, !dbg !5015

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !5016
  %15 = load i32, ptr %14, align 4, !dbg !5016, !tbaa !1132
  %16 = icmp ne i32 %15, 9, !dbg !5017
  %17 = sext i1 %16 to i32, !dbg !5018
  br label %21, !dbg !5018

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5019

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !5021
  store i32 0, ptr %20, align 4, !dbg !5023, !tbaa !1132
  br label %21, !dbg !5021

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5001
  ret i32 %22, !dbg !5024
}

; Function Attrs: nounwind
declare !dbg !5025 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5028 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5033, metadata !DIExpression()), !dbg !5038
  call void @llvm.dbg.value(metadata ptr %1, metadata !5034, metadata !DIExpression()), !dbg !5038
  call void @llvm.dbg.value(metadata i64 %2, metadata !5035, metadata !DIExpression()), !dbg !5038
  call void @llvm.dbg.value(metadata ptr %3, metadata !5036, metadata !DIExpression()), !dbg !5038
  %5 = icmp eq ptr %1, null, !dbg !5039
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5041
  %7 = select i1 %5, ptr @.str.168, ptr %1, !dbg !5041
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5041
  call void @llvm.dbg.value(metadata i64 %8, metadata !5035, metadata !DIExpression()), !dbg !5038
  call void @llvm.dbg.value(metadata ptr %7, metadata !5034, metadata !DIExpression()), !dbg !5038
  call void @llvm.dbg.value(metadata ptr %6, metadata !5033, metadata !DIExpression()), !dbg !5038
  %9 = icmp eq ptr %3, null, !dbg !5042
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5044
  call void @llvm.dbg.value(metadata ptr %10, metadata !5036, metadata !DIExpression()), !dbg !5038
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #37, !dbg !5045
  call void @llvm.dbg.value(metadata i64 %11, metadata !5037, metadata !DIExpression()), !dbg !5038
  %12 = icmp ult i64 %11, -3, !dbg !5046
  br i1 %12, label %13, label %17, !dbg !5048

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #38, !dbg !5049
  %15 = icmp eq i32 %14, 0, !dbg !5049
  br i1 %15, label %16, label %29, !dbg !5050

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5051, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata ptr %10, metadata !5058, metadata !DIExpression()), !dbg !5063
  call void @llvm.dbg.value(metadata i32 0, metadata !5061, metadata !DIExpression()), !dbg !5063
  call void @llvm.dbg.value(metadata i64 8, metadata !5062, metadata !DIExpression()), !dbg !5063
  store i64 0, ptr %10, align 1, !dbg !5065
  br label %29, !dbg !5066

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5067
  br i1 %18, label %19, label %20, !dbg !5069

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !5070
  unreachable, !dbg !5070

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5071

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !5073
  br i1 %23, label %29, label %24, !dbg !5074

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5075
  br i1 %25, label %29, label %26, !dbg !5078

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5079, !tbaa !1141
  %28 = zext i8 %27 to i32, !dbg !5080
  store i32 %28, ptr %6, align 4, !dbg !5081, !tbaa !1132
  br label %29, !dbg !5082

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5038
  ret i64 %30, !dbg !5083
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5084 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !5089 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5091, metadata !DIExpression()), !dbg !5095
  call void @llvm.dbg.value(metadata i64 %1, metadata !5092, metadata !DIExpression()), !dbg !5095
  call void @llvm.dbg.value(metadata i64 %2, metadata !5093, metadata !DIExpression()), !dbg !5095
  %4 = icmp eq i64 %2, 0, !dbg !5096
  br i1 %4, label %8, label %5, !dbg !5096

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5096
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5096
  br i1 %7, label %13, label %8, !dbg !5096

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5094, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5095
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5094, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5095
  %9 = mul i64 %2, %1, !dbg !5096
  call void @llvm.dbg.value(metadata i64 %9, metadata !5094, metadata !DIExpression()), !dbg !5095
  call void @llvm.dbg.value(metadata ptr %0, metadata !5098, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata i64 %9, metadata !5101, metadata !DIExpression()), !dbg !5102
  %10 = icmp eq i64 %9, 0, !dbg !5104
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5104
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #43, !dbg !5105
  br label %15, !dbg !5106

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5094, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5095
  %14 = tail call ptr @__errno_location() #40, !dbg !5107
  store i32 12, ptr %14, align 4, !dbg !5109, !tbaa !1132
  br label %15, !dbg !5110

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5095
  ret ptr %16, !dbg !5111
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5112 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5114, metadata !DIExpression()), !dbg !5119
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !5120
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5115, metadata !DIExpression()), !dbg !5121
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !5122
  %4 = icmp eq i32 %3, 0, !dbg !5122
  br i1 %4, label %5, label %12, !dbg !5124

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5125, metadata !DIExpression()), !dbg !5129
  call void @llvm.dbg.value(metadata ptr @.str.173, metadata !5128, metadata !DIExpression()), !dbg !5129
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.173, i64 2), !dbg !5132
  %7 = icmp eq i32 %6, 0, !dbg !5133
  br i1 %7, label %11, label %8, !dbg !5134

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5125, metadata !DIExpression()), !dbg !5135
  call void @llvm.dbg.value(metadata ptr @.str.1.174, metadata !5128, metadata !DIExpression()), !dbg !5135
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.174, i64 6), !dbg !5137
  %10 = icmp eq i32 %9, 0, !dbg !5138
  br i1 %10, label %11, label %12, !dbg !5139

11:                                               ; preds = %8, %5
  br label %12, !dbg !5140

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5119
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !5141
  ret i1 %13, !dbg !5141
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5142 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5146, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.value(metadata ptr %1, metadata !5147, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.value(metadata i64 %2, metadata !5148, metadata !DIExpression()), !dbg !5149
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !5150
  ret i32 %4, !dbg !5151
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5152 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5156, metadata !DIExpression()), !dbg !5157
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !5158
  ret ptr %2, !dbg !5159
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5160 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5162, metadata !DIExpression()), !dbg !5164
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !5165
  call void @llvm.dbg.value(metadata ptr %2, metadata !5163, metadata !DIExpression()), !dbg !5164
  ret ptr %2, !dbg !5166
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5167 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5169, metadata !DIExpression()), !dbg !5176
  call void @llvm.dbg.value(metadata ptr %1, metadata !5170, metadata !DIExpression()), !dbg !5176
  call void @llvm.dbg.value(metadata i64 %2, metadata !5171, metadata !DIExpression()), !dbg !5176
  call void @llvm.dbg.value(metadata i32 %0, metadata !5162, metadata !DIExpression()), !dbg !5177
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !5179
  call void @llvm.dbg.value(metadata ptr %4, metadata !5163, metadata !DIExpression()), !dbg !5177
  call void @llvm.dbg.value(metadata ptr %4, metadata !5172, metadata !DIExpression()), !dbg !5176
  %5 = icmp eq ptr %4, null, !dbg !5180
  br i1 %5, label %6, label %9, !dbg !5181

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5182
  br i1 %7, label %19, label %8, !dbg !5185

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5186, !tbaa !1141
  br label %19, !dbg !5187

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !5188
  call void @llvm.dbg.value(metadata i64 %10, metadata !5173, metadata !DIExpression()), !dbg !5189
  %11 = icmp ult i64 %10, %2, !dbg !5190
  br i1 %11, label %12, label %14, !dbg !5192

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5193
  call void @llvm.dbg.value(metadata ptr %1, metadata !5195, metadata !DIExpression()), !dbg !5200
  call void @llvm.dbg.value(metadata ptr %4, metadata !5198, metadata !DIExpression()), !dbg !5200
  call void @llvm.dbg.value(metadata i64 %13, metadata !5199, metadata !DIExpression()), !dbg !5200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #37, !dbg !5202
  br label %19, !dbg !5203

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5204
  br i1 %15, label %19, label %16, !dbg !5207

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5208
  call void @llvm.dbg.value(metadata ptr %1, metadata !5195, metadata !DIExpression()), !dbg !5210
  call void @llvm.dbg.value(metadata ptr %4, metadata !5198, metadata !DIExpression()), !dbg !5210
  call void @llvm.dbg.value(metadata i64 %17, metadata !5199, metadata !DIExpression()), !dbg !5210
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !5212
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5213
  store i8 0, ptr %18, align 1, !dbg !5214, !tbaa !1141
  br label %19, !dbg !5215

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5216
  ret i32 %20, !dbg !5217
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
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!59, !408, !656, !660, !675, !944, !978, !981, !983, !986, !988, !990, !727, !741, !788, !992, !938, !998, !1029, !1031, !1033, !960, !1035, !1038, !1040, !1042}
!llvm.ident = !{!1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044, !1044}
!llvm.module.flags = !{!1045, !1046, !1047, !1048, !1049, !1050, !1051}

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
!58 = distinct !DIGlobalVariable(name: "shortopts", scope: !59, file: !2, line: 52, type: !403, isLocal: true, isDefinition: true)
!59 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !60, retainedTypes: !93, globals: !104, splitDebugInlining: false, nameTableKind: None)
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
!332 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!674 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !675, file: !676, line: 66, type: !724, isLocal: false, isDefinition: true)
!675 = distinct !DICompileUnit(language: DW_LANG_C11, file: !676, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !677, globals: !678, splitDebugInlining: false, nameTableKind: None)
!676 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!677 = !{!95, !102}
!678 = !{!679, !681, !706, !708, !710, !712, !673, !714, !716, !718, !720, !722}
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !676, line: 272, type: !209, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(name: "old_file_name", scope: !683, file: !676, line: 304, type: !100, isLocal: true, isDefinition: true)
!683 = distinct !DISubprogram(name: "verror_at_line", scope: !676, file: !676, line: 298, type: !684, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !699)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !63, !63, !100, !69, !100, !686}
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !687, line: 52, baseType: !688)
!687 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !689, line: 14, baseType: !690)
!689 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !691, baseType: !692)
!691 = !DIFile(filename: "lib/error.c", directory: "/src")
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !693)
!693 = !{!694, !695, !696, !697, !698}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !692, file: !691, baseType: !95, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !692, file: !691, baseType: !95, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !692, file: !691, baseType: !95, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !692, file: !691, baseType: !63, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !692, file: !691, baseType: !63, size: 32, offset: 224)
!699 = !{!700, !701, !702, !703, !704, !705}
!700 = !DILocalVariable(name: "status", arg: 1, scope: !683, file: !676, line: 298, type: !63)
!701 = !DILocalVariable(name: "errnum", arg: 2, scope: !683, file: !676, line: 298, type: !63)
!702 = !DILocalVariable(name: "file_name", arg: 3, scope: !683, file: !676, line: 298, type: !100)
!703 = !DILocalVariable(name: "line_number", arg: 4, scope: !683, file: !676, line: 298, type: !69)
!704 = !DILocalVariable(name: "message", arg: 5, scope: !683, file: !676, line: 298, type: !100)
!705 = !DILocalVariable(name: "args", arg: 6, scope: !683, file: !676, line: 298, type: !686)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(name: "old_line_number", scope: !683, file: !676, line: 305, type: !69, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !676, line: 338, type: !216, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !676, line: 346, type: !248, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !676, line: 346, type: !226, isLocal: true, isDefinition: true)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(name: "error_message_count", scope: !675, file: !676, line: 69, type: !69, isLocal: false, isDefinition: true)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !675, file: !676, line: 295, type: !63, isLocal: false, isDefinition: true)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !676, line: 208, type: !19, isLocal: true, isDefinition: true)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !676, line: 208, type: !540, isLocal: true, isDefinition: true)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !676, line: 214, type: !209, isLocal: true, isDefinition: true)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(name: "program_name", scope: !727, file: !728, line: 31, type: !100, isLocal: false, isDefinition: true)
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !728, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !729, globals: !730, splitDebugInlining: false, nameTableKind: None)
!728 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!729 = !{!94}
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
!741 = distinct !DICompileUnit(language: DW_LANG_C11, file: !738, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !742, splitDebugInlining: false, nameTableKind: None)
!742 = !{!735}
!743 = !{!744, !745, !746, !747, !748}
!744 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !737, file: !738, line: 38, type: !100)
!745 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !737, file: !738, line: 38, type: !100)
!746 = !DILocalVariable(name: "translation", scope: !737, file: !738, line: 40, type: !100)
!747 = !DILocalVariable(name: "w", scope: !737, file: !738, line: 47, type: !365)
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
!787 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !788, file: !764, line: 76, type: !860, isLocal: false, isDefinition: true)
!788 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !789, retainedTypes: !795, globals: !796, splitDebugInlining: false, nameTableKind: None)
!789 = !{!411, !790, !67}
!790 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !412, line: 254, baseType: !69, size: 32, elements: !791)
!791 = !{!792, !793, !794}
!792 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!793 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!794 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!795 = !{!63, !96, !97}
!796 = !{!762, !765, !767, !772, !774, !776, !778, !780, !782, !784, !786, !797, !801, !811, !813, !818, !820, !822, !824, !826, !849, !856, !858}
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !788, file: !764, line: 92, type: !799, isLocal: false, isDefinition: true)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 320, elements: !50)
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !788, file: !764, line: 1040, type: !803, isLocal: false, isDefinition: true)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !764, line: 56, size: 448, elements: !804)
!804 = !{!805, !806, !807, !809, !810}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !803, file: !764, line: 59, baseType: !411, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !803, file: !764, line: 62, baseType: !63, size: 32, offset: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !803, file: !764, line: 66, baseType: !808, size: 256, offset: 64)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !249)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !803, file: !764, line: 69, baseType: !100, size: 64, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !803, file: !764, line: 72, baseType: !100, size: 64, offset: 384)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !788, file: !764, line: 107, type: !803, isLocal: true, isDefinition: true)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(name: "slot0", scope: !788, file: !764, line: 831, type: !815, isLocal: true, isDefinition: true)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 256)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !764, line: 321, type: !226, isLocal: true, isDefinition: true)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !764, line: 357, type: !226, isLocal: true, isDefinition: true)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(scope: null, file: !764, line: 358, type: !226, isLocal: true, isDefinition: true)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(scope: null, file: !764, line: 199, type: !19, isLocal: true, isDefinition: true)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(name: "quote", scope: !828, file: !764, line: 228, type: !847, isLocal: true, isDefinition: true)
!828 = distinct !DISubprogram(name: "gettext_quote", scope: !764, file: !764, line: 197, type: !829, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !831)
!829 = !DISubroutineType(types: !830)
!830 = !{!100, !100, !411}
!831 = !{!832, !833, !834, !835, !836}
!832 = !DILocalVariable(name: "msgid", arg: 1, scope: !828, file: !764, line: 197, type: !100)
!833 = !DILocalVariable(name: "s", arg: 2, scope: !828, file: !764, line: 197, type: !411)
!834 = !DILocalVariable(name: "translation", scope: !828, file: !764, line: 199, type: !100)
!835 = !DILocalVariable(name: "w", scope: !828, file: !764, line: 229, type: !365)
!836 = !DILocalVariable(name: "mbs", scope: !828, file: !764, line: 230, type: !837)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !750, line: 6, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !752, line: 21, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 13, size: 64, elements: !840)
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !839, file: !752, line: 15, baseType: !63, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !839, file: !752, line: 20, baseType: !843, size: 32, offset: 32)
!843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !839, file: !752, line: 16, size: 32, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !843, file: !752, line: 18, baseType: !69, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !843, file: !752, line: 19, baseType: !216, size: 32)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 64, elements: !848)
!848 = !{!228, !218}
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(name: "slotvec", scope: !788, file: !764, line: 834, type: !851, isLocal: true, isDefinition: true)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !764, line: 823, size: 128, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !852, file: !764, line: 825, baseType: !97, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !852, file: !764, line: 826, baseType: !94, size: 64, offset: 64)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(name: "nslots", scope: !788, file: !764, line: 832, type: !63, isLocal: true, isDefinition: true)
!858 = !DIGlobalVariableExpression(var: !859, expr: !DIExpression())
!859 = distinct !DIGlobalVariable(name: "slotvec0", scope: !788, file: !764, line: 833, type: !852, isLocal: true, isDefinition: true)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 704, elements: !448)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(scope: null, file: !864, line: 67, type: !316, isLocal: true, isDefinition: true)
!864 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(scope: null, file: !864, line: 69, type: !19, isLocal: true, isDefinition: true)
!867 = !DIGlobalVariableExpression(var: !868, expr: !DIExpression())
!868 = distinct !DIGlobalVariable(scope: null, file: !864, line: 83, type: !19, isLocal: true, isDefinition: true)
!869 = !DIGlobalVariableExpression(var: !870, expr: !DIExpression())
!870 = distinct !DIGlobalVariable(scope: null, file: !864, line: 83, type: !216, isLocal: true, isDefinition: true)
!871 = !DIGlobalVariableExpression(var: !872, expr: !DIExpression())
!872 = distinct !DIGlobalVariable(scope: null, file: !864, line: 85, type: !226, isLocal: true, isDefinition: true)
!873 = !DIGlobalVariableExpression(var: !874, expr: !DIExpression())
!874 = distinct !DIGlobalVariable(scope: null, file: !864, line: 88, type: !875, isLocal: true, isDefinition: true)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !876)
!876 = !{!877}
!877 = !DISubrange(count: 171)
!878 = !DIGlobalVariableExpression(var: !879, expr: !DIExpression())
!879 = distinct !DIGlobalVariable(scope: null, file: !864, line: 88, type: !880, isLocal: true, isDefinition: true)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !404)
!881 = !DIGlobalVariableExpression(var: !882, expr: !DIExpression())
!882 = distinct !DIGlobalVariable(scope: null, file: !864, line: 105, type: !112, isLocal: true, isDefinition: true)
!883 = !DIGlobalVariableExpression(var: !884, expr: !DIExpression())
!884 = distinct !DIGlobalVariable(scope: null, file: !864, line: 109, type: !398, isLocal: true, isDefinition: true)
!885 = !DIGlobalVariableExpression(var: !886, expr: !DIExpression())
!886 = distinct !DIGlobalVariable(scope: null, file: !864, line: 113, type: !545, isLocal: true, isDefinition: true)
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression())
!888 = distinct !DIGlobalVariable(scope: null, file: !864, line: 120, type: !889, isLocal: true, isDefinition: true)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !890)
!890 = !{!891}
!891 = !DISubrange(count: 32)
!892 = !DIGlobalVariableExpression(var: !893, expr: !DIExpression())
!893 = distinct !DIGlobalVariable(scope: null, file: !864, line: 127, type: !894, isLocal: true, isDefinition: true)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !895)
!895 = !{!896}
!896 = !DISubrange(count: 36)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(scope: null, file: !864, line: 134, type: !270, isLocal: true, isDefinition: true)
!899 = !DIGlobalVariableExpression(var: !900, expr: !DIExpression())
!900 = distinct !DIGlobalVariable(scope: null, file: !864, line: 142, type: !901, isLocal: true, isDefinition: true)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !902)
!902 = !{!903}
!903 = !DISubrange(count: 44)
!904 = !DIGlobalVariableExpression(var: !905, expr: !DIExpression())
!905 = distinct !DIGlobalVariable(scope: null, file: !864, line: 150, type: !906, isLocal: true, isDefinition: true)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !907)
!907 = !{!908}
!908 = !DISubrange(count: 48)
!909 = !DIGlobalVariableExpression(var: !910, expr: !DIExpression())
!910 = distinct !DIGlobalVariable(scope: null, file: !864, line: 159, type: !911, isLocal: true, isDefinition: true)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !912)
!912 = !{!913}
!913 = !DISubrange(count: 52)
!914 = !DIGlobalVariableExpression(var: !915, expr: !DIExpression())
!915 = distinct !DIGlobalVariable(scope: null, file: !864, line: 170, type: !916, isLocal: true, isDefinition: true)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !917)
!917 = !{!918}
!918 = !DISubrange(count: 60)
!919 = !DIGlobalVariableExpression(var: !920, expr: !DIExpression())
!920 = distinct !DIGlobalVariable(scope: null, file: !864, line: 248, type: !198, isLocal: true, isDefinition: true)
!921 = !DIGlobalVariableExpression(var: !922, expr: !DIExpression())
!922 = distinct !DIGlobalVariable(scope: null, file: !864, line: 248, type: !292, isLocal: true, isDefinition: true)
!923 = !DIGlobalVariableExpression(var: !924, expr: !DIExpression())
!924 = distinct !DIGlobalVariable(scope: null, file: !864, line: 254, type: !198, isLocal: true, isDefinition: true)
!925 = !DIGlobalVariableExpression(var: !926, expr: !DIExpression())
!926 = distinct !DIGlobalVariable(scope: null, file: !864, line: 254, type: !107, isLocal: true, isDefinition: true)
!927 = !DIGlobalVariableExpression(var: !928, expr: !DIExpression())
!928 = distinct !DIGlobalVariable(scope: null, file: !864, line: 254, type: !270, isLocal: true, isDefinition: true)
!929 = !DIGlobalVariableExpression(var: !930, expr: !DIExpression())
!930 = distinct !DIGlobalVariable(scope: null, file: !864, line: 259, type: !3, isLocal: true, isDefinition: true)
!931 = !DIGlobalVariableExpression(var: !932, expr: !DIExpression())
!932 = distinct !DIGlobalVariable(scope: null, file: !864, line: 259, type: !933, isLocal: true, isDefinition: true)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !934)
!934 = !{!935}
!935 = !DISubrange(count: 29)
!936 = !DIGlobalVariableExpression(var: !937, expr: !DIExpression())
!937 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !938, file: !939, line: 26, type: !941, isLocal: false, isDefinition: true)
!938 = distinct !DICompileUnit(language: DW_LANG_C11, file: !939, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !940, splitDebugInlining: false, nameTableKind: None)
!939 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!940 = !{!936}
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 376, elements: !534)
!942 = !DIGlobalVariableExpression(var: !943, expr: !DIExpression())
!943 = distinct !DIGlobalVariable(name: "exit_failure", scope: !944, file: !945, line: 24, type: !947, isLocal: false, isDefinition: true)
!944 = distinct !DICompileUnit(language: DW_LANG_C11, file: !945, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !946, splitDebugInlining: false, nameTableKind: None)
!945 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!946 = !{!942}
!947 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!948 = !DIGlobalVariableExpression(var: !949, expr: !DIExpression())
!949 = distinct !DIGlobalVariable(scope: null, file: !950, line: 34, type: !235, isLocal: true, isDefinition: true)
!950 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!951 = !DIGlobalVariableExpression(var: !952, expr: !DIExpression())
!952 = distinct !DIGlobalVariable(scope: null, file: !950, line: 34, type: !19, isLocal: true, isDefinition: true)
!953 = !DIGlobalVariableExpression(var: !954, expr: !DIExpression())
!954 = distinct !DIGlobalVariable(scope: null, file: !950, line: 34, type: !265, isLocal: true, isDefinition: true)
!955 = !DIGlobalVariableExpression(var: !956, expr: !DIExpression())
!956 = distinct !DIGlobalVariable(scope: null, file: !957, line: 108, type: !44, isLocal: true, isDefinition: true)
!957 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!958 = !DIGlobalVariableExpression(var: !959, expr: !DIExpression())
!959 = distinct !DIGlobalVariable(name: "internal_state", scope: !960, file: !957, line: 97, type: !963, isLocal: true, isDefinition: true)
!960 = distinct !DICompileUnit(language: DW_LANG_C11, file: !957, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !961, globals: !962, splitDebugInlining: false, nameTableKind: None)
!961 = !{!95, !97, !102}
!962 = !{!955, !958}
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !750, line: 6, baseType: !964)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !752, line: 21, baseType: !965)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 13, size: 64, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !965, file: !752, line: 15, baseType: !63, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !965, file: !752, line: 20, baseType: !969, size: 32, offset: 32)
!969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !965, file: !752, line: 16, size: 32, elements: !970)
!970 = !{!971, !972}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !969, file: !752, line: 18, baseType: !69, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !969, file: !752, line: 19, baseType: !216, size: 32)
!973 = !DIGlobalVariableExpression(var: !974, expr: !DIExpression())
!974 = distinct !DIGlobalVariable(scope: null, file: !975, line: 35, type: !226, isLocal: true, isDefinition: true)
!975 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!976 = !DIGlobalVariableExpression(var: !977, expr: !DIExpression())
!977 = distinct !DIGlobalVariable(scope: null, file: !975, line: 35, type: !221, isLocal: true, isDefinition: true)
!978 = distinct !DICompileUnit(language: DW_LANG_C11, file: !979, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !980, splitDebugInlining: false, nameTableKind: None)
!979 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!980 = !{!425}
!981 = distinct !DICompileUnit(language: DW_LANG_C11, file: !982, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!982 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!983 = distinct !DICompileUnit(language: DW_LANG_C11, file: !984, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !985, splitDebugInlining: false, nameTableKind: None)
!984 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!985 = !{!95}
!986 = distinct !DICompileUnit(language: DW_LANG_C11, file: !987, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!987 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!988 = distinct !DICompileUnit(language: DW_LANG_C11, file: !989, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !985, splitDebugInlining: false, nameTableKind: None)
!989 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!990 = distinct !DICompileUnit(language: DW_LANG_C11, file: !991, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!991 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!992 = distinct !DICompileUnit(language: DW_LANG_C11, file: !864, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !993, retainedTypes: !985, globals: !997, splitDebugInlining: false, nameTableKind: None)
!993 = !{!994}
!994 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !864, line: 40, baseType: !69, size: 32, elements: !995)
!995 = !{!996}
!996 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!997 = !{!862, !865, !867, !869, !871, !873, !878, !881, !883, !885, !887, !892, !897, !899, !904, !909, !914, !919, !921, !923, !925, !927, !929, !931}
!998 = distinct !DICompileUnit(language: DW_LANG_C11, file: !999, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1000, retainedTypes: !1028, splitDebugInlining: false, nameTableKind: None)
!999 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!1000 = !{!1001, !1013}
!1001 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1002, file: !999, line: 188, baseType: !69, size: 32, elements: !1011)
!1002 = distinct !DISubprogram(name: "x2nrealloc", scope: !999, file: !999, line: 176, type: !1003, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !1006)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!95, !95, !1005, !97}
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!1006 = !{!1007, !1008, !1009, !1010}
!1007 = !DILocalVariable(name: "p", arg: 1, scope: !1002, file: !999, line: 176, type: !95)
!1008 = !DILocalVariable(name: "pn", arg: 2, scope: !1002, file: !999, line: 176, type: !1005)
!1009 = !DILocalVariable(name: "s", arg: 3, scope: !1002, file: !999, line: 176, type: !97)
!1010 = !DILocalVariable(name: "n", scope: !1002, file: !999, line: 178, type: !97)
!1011 = !{!1012}
!1012 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!1013 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1014, file: !999, line: 228, baseType: !69, size: 32, elements: !1011)
!1014 = distinct !DISubprogram(name: "xpalloc", scope: !999, file: !999, line: 223, type: !1015, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !1018)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!95, !95, !1017, !354, !356, !354}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!1018 = !{!1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027}
!1019 = !DILocalVariable(name: "pa", arg: 1, scope: !1014, file: !999, line: 223, type: !95)
!1020 = !DILocalVariable(name: "pn", arg: 2, scope: !1014, file: !999, line: 223, type: !1017)
!1021 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !1014, file: !999, line: 223, type: !354)
!1022 = !DILocalVariable(name: "n_max", arg: 4, scope: !1014, file: !999, line: 223, type: !356)
!1023 = !DILocalVariable(name: "s", arg: 5, scope: !1014, file: !999, line: 223, type: !354)
!1024 = !DILocalVariable(name: "n0", scope: !1014, file: !999, line: 230, type: !354)
!1025 = !DILocalVariable(name: "n", scope: !1014, file: !999, line: 237, type: !354)
!1026 = !DILocalVariable(name: "nbytes", scope: !1014, file: !999, line: 248, type: !354)
!1027 = !DILocalVariable(name: "adjusted_nbytes", scope: !1014, file: !999, line: 252, type: !354)
!1028 = !{!94, !95, !103, !177, !99}
!1029 = distinct !DICompileUnit(language: DW_LANG_C11, file: !950, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1030, splitDebugInlining: false, nameTableKind: None)
!1030 = !{!948, !951, !953}
!1031 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1032, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !985, splitDebugInlining: false, nameTableKind: None)
!1032 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!1033 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1034, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1034 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1035 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1036, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1037, splitDebugInlining: false, nameTableKind: None)
!1036 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1037 = !{!103, !99, !95}
!1038 = distinct !DICompileUnit(language: DW_LANG_C11, file: !975, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1039, splitDebugInlining: false, nameTableKind: None)
!1039 = !{!973, !976}
!1040 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1041, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1041 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1042 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1043, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !985, splitDebugInlining: false, nameTableKind: None)
!1043 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1044 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!1045 = !{i32 7, !"Dwarf Version", i32 5}
!1046 = !{i32 2, !"Debug Info Version", i32 3}
!1047 = !{i32 1, !"wchar_size", i32 4}
!1048 = !{i32 8, !"PIC Level", i32 2}
!1049 = !{i32 7, !"PIE Level", i32 2}
!1050 = !{i32 7, !"uwtable", i32 2}
!1051 = !{i32 7, !"frame-pointer", i32 1}
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
!1070 = !DILocation(line: 729, column: 3, scope: !1071, inlinedAt: !1073)
!1071 = distinct !DISubprogram(name: "emit_stdin_note", scope: !62, file: !62, line: 727, type: !342, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1072)
!1072 = !{}
!1073 = distinct !DILocation(line: 78, column: 7, scope: !1068)
!1074 = !DILocation(line: 736, column: 3, scope: !1075, inlinedAt: !1076)
!1075 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !62, file: !62, line: 734, type: !342, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1072)
!1076 = distinct !DILocation(line: 79, column: 7, scope: !1068)
!1077 = !DILocation(line: 81, column: 7, scope: !1068)
!1078 = !DILocation(line: 85, column: 7, scope: !1068)
!1079 = !DILocation(line: 89, column: 7, scope: !1068)
!1080 = !DILocation(line: 90, column: 7, scope: !1068)
!1081 = !DILocation(line: 91, column: 7, scope: !1068)
!1082 = !DILocalVariable(name: "program", arg: 1, scope: !1083, file: !62, line: 836, type: !100)
!1083 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !62, file: !62, line: 836, type: !1084, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1086)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{null, !100}
!1086 = !{!1082, !1087, !1094, !1095, !1097, !1098}
!1087 = !DILocalVariable(name: "infomap", scope: !1083, file: !62, line: 838, type: !1088)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1089, size: 896, elements: !20)
!1089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1090)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1083, file: !62, line: 838, size: 128, elements: !1091)
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1090, file: !62, line: 838, baseType: !100, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1090, file: !62, line: 838, baseType: !100, size: 64, offset: 64)
!1094 = !DILocalVariable(name: "node", scope: !1083, file: !62, line: 848, type: !100)
!1095 = !DILocalVariable(name: "map_prog", scope: !1083, file: !62, line: 849, type: !1096)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1097 = !DILocalVariable(name: "lc_messages", scope: !1083, file: !62, line: 861, type: !100)
!1098 = !DILocalVariable(name: "url_program", scope: !1083, file: !62, line: 874, type: !100)
!1099 = !DILocation(line: 0, scope: !1083, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 92, column: 7, scope: !1068)
!1101 = !DILocation(line: 857, column: 3, scope: !1083, inlinedAt: !1100)
!1102 = !DILocation(line: 861, column: 29, scope: !1083, inlinedAt: !1100)
!1103 = !DILocation(line: 862, column: 7, scope: !1104, inlinedAt: !1100)
!1104 = distinct !DILexicalBlock(scope: !1083, file: !62, line: 862, column: 7)
!1105 = !DILocation(line: 862, column: 19, scope: !1104, inlinedAt: !1100)
!1106 = !DILocation(line: 862, column: 22, scope: !1104, inlinedAt: !1100)
!1107 = !DILocation(line: 862, column: 7, scope: !1083, inlinedAt: !1100)
!1108 = !DILocation(line: 868, column: 7, scope: !1109, inlinedAt: !1100)
!1109 = distinct !DILexicalBlock(scope: !1104, file: !62, line: 863, column: 5)
!1110 = !DILocation(line: 870, column: 5, scope: !1109, inlinedAt: !1100)
!1111 = !DILocation(line: 875, column: 3, scope: !1083, inlinedAt: !1100)
!1112 = !DILocation(line: 877, column: 3, scope: !1083, inlinedAt: !1100)
!1113 = !DILocation(line: 94, column: 3, scope: !1052)
!1114 = !DISubprogram(name: "dcgettext", scope: !1115, file: !1115, line: 51, type: !1116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1115 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!94, !100, !100, !63}
!1118 = !DISubprogram(name: "__fprintf_chk", scope: !1119, file: !1119, line: 93, type: !1120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1119 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!63, !1122, !63, !1123, null}
!1122 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!1123 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!1124 = !DISubprogram(name: "__printf_chk", scope: !1119, file: !1119, line: 95, type: !1125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!63, !63, !1123, null}
!1127 = !DISubprogram(name: "fputs_unlocked", scope: !687, file: !687, line: 691, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!63, !1123, !1122}
!1130 = !DILocation(line: 0, scope: !127)
!1131 = !DILocation(line: 581, column: 7, scope: !135)
!1132 = !{!1133, !1133, i64 0}
!1133 = !{!"int", !1065, i64 0}
!1134 = !DILocation(line: 581, column: 19, scope: !135)
!1135 = !DILocation(line: 581, column: 7, scope: !127)
!1136 = !DILocation(line: 585, column: 26, scope: !134)
!1137 = !DILocation(line: 0, scope: !134)
!1138 = !DILocation(line: 586, column: 23, scope: !134)
!1139 = !DILocation(line: 586, column: 28, scope: !134)
!1140 = !DILocation(line: 586, column: 32, scope: !134)
!1141 = !{!1065, !1065, i64 0}
!1142 = !DILocation(line: 586, column: 38, scope: !134)
!1143 = !DILocalVariable(name: "__s1", arg: 1, scope: !1144, file: !1145, line: 1359, type: !100)
!1144 = distinct !DISubprogram(name: "streq", scope: !1145, file: !1145, line: 1359, type: !1146, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1148)
!1145 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!103, !100, !100}
!1148 = !{!1143, !1149}
!1149 = !DILocalVariable(name: "__s2", arg: 2, scope: !1144, file: !1145, line: 1359, type: !100)
!1150 = !DILocation(line: 0, scope: !1144, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 586, column: 41, scope: !134)
!1152 = !DILocation(line: 1361, column: 11, scope: !1144, inlinedAt: !1151)
!1153 = !DILocation(line: 1361, column: 10, scope: !1144, inlinedAt: !1151)
!1154 = !DILocation(line: 586, column: 19, scope: !134)
!1155 = !DILocation(line: 587, column: 5, scope: !134)
!1156 = !DILocation(line: 588, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !127, file: !62, line: 588, column: 7)
!1158 = !DILocation(line: 588, column: 7, scope: !127)
!1159 = !DILocation(line: 590, column: 7, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !62, line: 589, column: 5)
!1161 = !DILocation(line: 591, column: 7, scope: !1160)
!1162 = !DILocation(line: 595, column: 37, scope: !127)
!1163 = !DILocation(line: 595, column: 35, scope: !127)
!1164 = !DILocation(line: 596, column: 29, scope: !127)
!1165 = !DILocation(line: 597, column: 8, scope: !142)
!1166 = !DILocation(line: 597, column: 7, scope: !127)
!1167 = !DILocation(line: 604, column: 24, scope: !141)
!1168 = !DILocation(line: 604, column: 12, scope: !142)
!1169 = !DILocation(line: 0, scope: !140)
!1170 = !DILocation(line: 610, column: 16, scope: !140)
!1171 = !DILocation(line: 610, column: 7, scope: !140)
!1172 = !DILocation(line: 611, column: 21, scope: !140)
!1173 = !{!1174, !1174, i64 0}
!1174 = !{!"short", !1065, i64 0}
!1175 = !DILocation(line: 611, column: 19, scope: !140)
!1176 = !DILocation(line: 611, column: 16, scope: !140)
!1177 = !DILocation(line: 610, column: 30, scope: !140)
!1178 = distinct !{!1178, !1171, !1172, !1179}
!1179 = !{!"llvm.loop.mustprogress"}
!1180 = !DILocation(line: 612, column: 18, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !140, file: !62, line: 612, column: 11)
!1182 = !DILocation(line: 612, column: 11, scope: !140)
!1183 = !DILocation(line: 620, column: 23, scope: !127)
!1184 = !DILocation(line: 625, column: 39, scope: !127)
!1185 = !DILocation(line: 626, column: 3, scope: !127)
!1186 = !DILocation(line: 626, column: 10, scope: !127)
!1187 = !DILocation(line: 626, column: 21, scope: !127)
!1188 = !DILocation(line: 628, column: 44, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !62, line: 628, column: 11)
!1190 = distinct !DILexicalBlock(scope: !127, file: !62, line: 627, column: 5)
!1191 = !DILocation(line: 628, column: 32, scope: !1189)
!1192 = !DILocation(line: 628, column: 49, scope: !1189)
!1193 = !DILocation(line: 628, column: 11, scope: !1190)
!1194 = !DILocation(line: 630, column: 11, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1190, file: !62, line: 630, column: 11)
!1196 = !DILocation(line: 630, column: 11, scope: !1190)
!1197 = !DILocation(line: 632, column: 26, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !62, line: 632, column: 15)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !62, line: 631, column: 9)
!1200 = !DILocation(line: 632, column: 34, scope: !1198)
!1201 = !DILocation(line: 632, column: 37, scope: !1198)
!1202 = !DILocation(line: 632, column: 15, scope: !1199)
!1203 = !DILocation(line: 640, column: 16, scope: !1190)
!1204 = distinct !{!1204, !1185, !1205, !1179}
!1205 = !DILocation(line: 641, column: 5, scope: !127)
!1206 = !DILocation(line: 644, column: 3, scope: !127)
!1207 = !DILocation(line: 0, scope: !1144, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 648, column: 31, scope: !127)
!1209 = !DILocation(line: 0, scope: !1144, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 649, column: 31, scope: !127)
!1211 = !DILocation(line: 0, scope: !1144, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 650, column: 31, scope: !127)
!1213 = !DILocation(line: 0, scope: !1144, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 651, column: 31, scope: !127)
!1215 = !DILocation(line: 0, scope: !1144, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 652, column: 31, scope: !127)
!1217 = !DILocation(line: 0, scope: !1144, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 653, column: 31, scope: !127)
!1219 = !DILocation(line: 0, scope: !1144, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 654, column: 31, scope: !127)
!1221 = !DILocation(line: 0, scope: !1144, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 655, column: 31, scope: !127)
!1223 = !DILocation(line: 0, scope: !1144, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 656, column: 31, scope: !127)
!1225 = !DILocation(line: 0, scope: !1144, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 657, column: 31, scope: !127)
!1227 = !DILocation(line: 663, column: 7, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !127, file: !62, line: 663, column: 7)
!1229 = !DILocation(line: 664, column: 7, scope: !1228)
!1230 = !DILocation(line: 664, column: 10, scope: !1228)
!1231 = !DILocation(line: 663, column: 7, scope: !127)
!1232 = !DILocation(line: 669, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1228, file: !62, line: 665, column: 5)
!1234 = !DILocation(line: 671, column: 5, scope: !1233)
!1235 = !DILocation(line: 676, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1228, file: !62, line: 673, column: 5)
!1237 = !DILocation(line: 679, column: 3, scope: !127)
!1238 = !DILocation(line: 683, column: 3, scope: !127)
!1239 = !DILocation(line: 686, column: 3, scope: !127)
!1240 = !DILocation(line: 688, column: 3, scope: !127)
!1241 = !DILocation(line: 691, column: 3, scope: !127)
!1242 = !DILocation(line: 695, column: 3, scope: !127)
!1243 = !DILocation(line: 696, column: 1, scope: !127)
!1244 = !DISubprogram(name: "setlocale", scope: !1245, file: !1245, line: 122, type: !1246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1245 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!94, !63, !100}
!1248 = !DISubprogram(name: "strncmp", scope: !1249, file: !1249, line: 159, type: !1250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1249 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!63, !100, !100, !97}
!1252 = !DISubprogram(name: "exit", scope: !1253, file: !1253, line: 624, type: !1053, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1253 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1254 = !DISubprogram(name: "getenv", scope: !1253, file: !1253, line: 641, type: !1255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!94, !100}
!1257 = !DISubprogram(name: "strcmp", scope: !1249, file: !1249, line: 156, type: !1258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!63, !100, !100}
!1260 = !DISubprogram(name: "strspn", scope: !1249, file: !1249, line: 297, type: !1261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!99, !100, !100}
!1263 = !DISubprogram(name: "strchr", scope: !1249, file: !1249, line: 246, type: !1264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!94, !100, !63}
!1266 = !DISubprogram(name: "__ctype_b_loc", scope: !68, file: !68, line: 79, type: !1267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!1269}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!1272 = !DISubprogram(name: "strcspn", scope: !1249, file: !1249, line: 293, type: !1261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1273 = !DISubprogram(name: "fwrite_unlocked", scope: !687, file: !687, line: 704, type: !1274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!97, !1276, !97, !97, !1122}
!1276 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1277)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1279 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 189, type: !1280, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1282)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!63, !63, !566}
!1282 = !{!1283, !1284, !1285, !1286}
!1283 = !DILocalVariable(name: "argc", arg: 1, scope: !1279, file: !2, line: 189, type: !63)
!1284 = !DILocalVariable(name: "argv", arg: 2, scope: !1279, file: !2, line: 189, type: !566)
!1285 = !DILocalVariable(name: "c", scope: !1279, file: !2, line: 191, type: !63)
!1286 = !DILocalVariable(name: "tab_stop", scope: !1287, file: !2, line: 220, type: !226)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 219, column: 13)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 216, column: 15)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 205, column: 9)
!1290 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 203, column: 5)
!1291 = !DILocation(line: 0, scope: !1279)
!1292 = !DILocation(line: 194, column: 21, scope: !1279)
!1293 = !DILocation(line: 194, column: 3, scope: !1279)
!1294 = !DILocation(line: 195, column: 3, scope: !1279)
!1295 = !DILocation(line: 196, column: 3, scope: !1279)
!1296 = !DILocation(line: 197, column: 3, scope: !1279)
!1297 = !DILocation(line: 199, column: 3, scope: !1279)
!1298 = !DILocation(line: 200, column: 23, scope: !1279)
!1299 = !{!1300, !1300, i64 0}
!1300 = !{!"_Bool", !1065, i64 0}
!1301 = !DILocation(line: 202, column: 3, scope: !1279)
!1302 = !DILocation(line: 202, column: 15, scope: !1279)
!1303 = !DILocation(line: 207, column: 31, scope: !1289)
!1304 = !DILocation(line: 208, column: 11, scope: !1289)
!1305 = !DILocation(line: 211, column: 28, scope: !1289)
!1306 = !DILocation(line: 211, column: 11, scope: !1289)
!1307 = !DILocation(line: 212, column: 11, scope: !1289)
!1308 = !DILocation(line: 216, column: 15, scope: !1288)
!1309 = !DILocation(line: 216, column: 15, scope: !1289)
!1310 = !DILocation(line: 217, column: 37, scope: !1288)
!1311 = !DILocation(line: 217, column: 13, scope: !1288)
!1312 = distinct !{!1312, !1301, !1313, !1179}
!1313 = !DILocation(line: 234, column: 5, scope: !1279)
!1314 = !DILocation(line: 220, column: 15, scope: !1287)
!1315 = !DILocation(line: 220, column: 20, scope: !1287)
!1316 = !DILocation(line: 221, column: 29, scope: !1287)
!1317 = !DILocation(line: 221, column: 27, scope: !1287)
!1318 = !DILocation(line: 222, column: 27, scope: !1287)
!1319 = !DILocation(line: 223, column: 15, scope: !1287)
!1320 = !DILocation(line: 224, column: 13, scope: !1288)
!1321 = !DILocation(line: 227, column: 9, scope: !1289)
!1322 = !DILocation(line: 229, column: 9, scope: !1289)
!1323 = !DILocation(line: 232, column: 11, scope: !1289)
!1324 = !DILocation(line: 236, column: 3, scope: !1279)
!1325 = !DILocation(line: 238, column: 18, scope: !1279)
!1326 = !DILocation(line: 238, column: 25, scope: !1279)
!1327 = !DILocation(line: 238, column: 3, scope: !1279)
!1328 = !DILocation(line: 105, column: 14, scope: !341, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 240, column: 3, scope: !1279)
!1330 = !DILocation(line: 0, scope: !341, inlinedAt: !1329)
!1331 = !DILocation(line: 107, column: 8, scope: !1332, inlinedAt: !1329)
!1332 = distinct !DILexicalBlock(scope: !341, file: !2, line: 107, column: 7)
!1333 = !DILocation(line: 107, column: 7, scope: !341, inlinedAt: !1329)
!1334 = !DILocation(line: 61, column: 13, scope: !1335, inlinedAt: !1344)
!1335 = distinct !DISubprogram(name: "mbbuf_init", scope: !348, file: !348, line: 56, type: !1336, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1339)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{null, !1338, !94, !354, !149}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!1339 = !{!1340, !1341, !1342, !1343}
!1340 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1335, file: !348, line: 56, type: !1338)
!1341 = !DILocalVariable(name: "buffer", arg: 2, scope: !1335, file: !348, line: 56, type: !94)
!1342 = !DILocalVariable(name: "size", arg: 3, scope: !1335, file: !348, line: 56, type: !354)
!1343 = !DILocalVariable(name: "fp", arg: 4, scope: !1335, file: !348, line: 56, type: !149)
!1344 = distinct !DILocation(line: 112, column: 3, scope: !341, inlinedAt: !1329)
!1345 = !DILocation(line: 0, scope: !360, inlinedAt: !1329)
!1346 = !DILocation(line: 130, column: 7, scope: !360, inlinedAt: !1329)
!1347 = !DILocation(line: 130, column: 13, scope: !360, inlinedAt: !1329)
!1348 = !{!1349, !1349, i64 0}
!1349 = !{!"long", !1065, i64 0}
!1350 = !DILocation(line: 135, column: 7, scope: !360, inlinedAt: !1329)
!1351 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1352, file: !348, line: 71, type: !1338)
!1352 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !348, file: !348, line: 71, type: !1353, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1355)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!361, !1338}
!1355 = !{!1351, !1356, !1357, !1360}
!1356 = !DILocalVariable(name: "available", scope: !1352, file: !348, line: 73, type: !354)
!1357 = !DILocalVariable(name: "start", scope: !1358, file: !348, line: 77, type: !354)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !348, line: 76, column: 5)
!1359 = distinct !DILexicalBlock(scope: !1352, file: !348, line: 75, column: 7)
!1360 = !DILocalVariable(name: "g", scope: !1352, file: !348, line: 92, type: !361)
!1361 = !DILocation(line: 0, scope: !1352, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 137, column: 23, scope: !384, inlinedAt: !1329)
!1363 = !DILocation(line: 73, column: 35, scope: !1352, inlinedAt: !1362)
!1364 = !DILocation(line: 75, column: 17, scope: !1359, inlinedAt: !1362)
!1365 = !DILocation(line: 75, column: 32, scope: !1359, inlinedAt: !1362)
!1366 = !DILocalVariable(name: "__stream", arg: 1, scope: !1367, file: !1368, line: 128, type: !149)
!1367 = distinct !DISubprogram(name: "feof_unlocked", scope: !1368, file: !1368, line: 128, type: !1369, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1371)
!1368 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!63, !149}
!1371 = !{!1366}
!1372 = !DILocation(line: 0, scope: !1367, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 75, column: 37, scope: !1359, inlinedAt: !1362)
!1374 = !DILocation(line: 130, column: 10, scope: !1367, inlinedAt: !1373)
!1375 = !{!1376, !1133, i64 0}
!1376 = !{!"_IO_FILE", !1133, i64 0, !1064, i64 8, !1064, i64 16, !1064, i64 24, !1064, i64 32, !1064, i64 40, !1064, i64 48, !1064, i64 56, !1064, i64 64, !1064, i64 72, !1064, i64 80, !1064, i64 88, !1064, i64 96, !1064, i64 104, !1133, i64 112, !1133, i64 116, !1349, i64 120, !1174, i64 128, !1065, i64 130, !1065, i64 131, !1064, i64 136, !1349, i64 144, !1064, i64 152, !1064, i64 160, !1064, i64 168, !1064, i64 176, !1349, i64 184, !1133, i64 192, !1065, i64 196}
!1377 = !DILocation(line: 75, column: 37, scope: !1359, inlinedAt: !1362)
!1378 = !DILocation(line: 75, column: 7, scope: !1352, inlinedAt: !1362)
!1379 = !DILocation(line: 78, column: 15, scope: !1380, inlinedAt: !1362)
!1380 = distinct !DILexicalBlock(scope: !1358, file: !348, line: 78, column: 11)
!1381 = !DILocation(line: 78, column: 11, scope: !1358, inlinedAt: !1362)
!1382 = !DILocation(line: 82, column: 49, scope: !1383, inlinedAt: !1362)
!1383 = distinct !DILexicalBlock(scope: !1380, file: !348, line: 81, column: 9)
!1384 = !DILocalVariable(name: "__dest", arg: 1, scope: !1385, file: !1386, line: 34, type: !95)
!1385 = distinct !DISubprogram(name: "memmove", scope: !1386, file: !1386, line: 34, type: !1387, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1389)
!1386 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!95, !95, !1277, !97}
!1389 = !{!1384, !1390, !1391}
!1390 = !DILocalVariable(name: "__src", arg: 2, scope: !1385, file: !1386, line: 34, type: !1277)
!1391 = !DILocalVariable(name: "__len", arg: 3, scope: !1385, file: !1386, line: 34, type: !97)
!1392 = !DILocation(line: 0, scope: !1385, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 82, column: 11, scope: !1383, inlinedAt: !1362)
!1394 = !DILocation(line: 36, column: 10, scope: !1385, inlinedAt: !1393)
!1395 = !DILocation(line: 0, scope: !1358, inlinedAt: !1362)
!1396 = !DILocation(line: 0, scope: !1380, inlinedAt: !1362)
!1397 = !DILocation(line: 85, column: 23, scope: !1358, inlinedAt: !1362)
!1398 = !DILocation(line: 86, column: 41, scope: !1358, inlinedAt: !1362)
!1399 = !DILocation(line: 89, column: 5, scope: !1358, inlinedAt: !1362)
!1400 = !DILocation(line: 90, column: 17, scope: !1401, inlinedAt: !1362)
!1401 = distinct !DILexicalBlock(scope: !1352, file: !348, line: 90, column: 7)
!1402 = !DILocation(line: 90, column: 7, scope: !1352, inlinedAt: !1362)
!1403 = !DILocation(line: 92, column: 39, scope: !1352, inlinedAt: !1362)
!1404 = !DILocalVariable(name: "p", arg: 1, scope: !1405, file: !84, line: 230, type: !100)
!1405 = distinct !DISubprogram(name: "mcel_scan", scope: !84, file: !84, line: 230, type: !1406, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1408)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!361, !100, !100}
!1408 = !{!1404, !1409, !1410, !1411, !1422, !1423}
!1409 = !DILocalVariable(name: "lim", arg: 2, scope: !1405, file: !84, line: 230, type: !100)
!1410 = !DILocalVariable(name: "c", scope: !1405, file: !84, line: 235, type: !4)
!1411 = !DILocalVariable(name: "mbs", scope: !1405, file: !84, line: 244, type: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !750, line: 6, baseType: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !752, line: 21, baseType: !1414)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 13, size: 64, elements: !1415)
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1414, file: !752, line: 15, baseType: !63, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1414, file: !752, line: 20, baseType: !1418, size: 32, offset: 32)
!1418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !752, line: 16, size: 32, elements: !1419)
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1418, file: !752, line: 18, baseType: !69, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1418, file: !752, line: 19, baseType: !216, size: 32)
!1422 = !DILocalVariable(name: "ch", scope: !1405, file: !84, line: 267, type: !365)
!1423 = !DILocalVariable(name: "len", scope: !1405, file: !84, line: 268, type: !97)
!1424 = !DILocation(line: 0, scope: !1405, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 92, column: 14, scope: !1352, inlinedAt: !1362)
!1426 = !DILocation(line: 235, column: 12, scope: !1405, inlinedAt: !1425)
!1427 = !DILocalVariable(name: "c", arg: 1, scope: !1428, file: !84, line: 215, type: !4)
!1428 = distinct !DISubprogram(name: "mcel_isbasic", scope: !84, file: !84, line: 215, type: !1429, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1431)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!103, !4}
!1431 = !{!1427}
!1432 = !DILocation(line: 0, scope: !1428, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 236, column: 7, scope: !1434, inlinedAt: !1425)
!1434 = distinct !DILexicalBlock(scope: !1405, file: !84, line: 236, column: 7)
!1435 = !DILocation(line: 217, column: 10, scope: !1428, inlinedAt: !1433)
!1436 = !DILocation(line: 236, column: 7, scope: !1405, inlinedAt: !1425)
!1437 = !DILocation(line: 93, column: 39, scope: !1352, inlinedAt: !1362)
!1438 = !DILocation(line: 244, column: 3, scope: !1405, inlinedAt: !1425)
!1439 = !DILocation(line: 244, column: 13, scope: !1405, inlinedAt: !1425)
!1440 = !DILocation(line: 244, column: 30, scope: !1405, inlinedAt: !1425)
!1441 = !{!1442, !1133, i64 0}
!1442 = !{!"", !1133, i64 0, !1065, i64 4}
!1443 = !DILocation(line: 267, column: 3, scope: !1405, inlinedAt: !1425)
!1444 = !DILocation(line: 268, column: 38, scope: !1405, inlinedAt: !1425)
!1445 = !DILocation(line: 268, column: 16, scope: !1405, inlinedAt: !1425)
!1446 = !DILocation(line: 274, column: 7, scope: !1447, inlinedAt: !1425)
!1447 = distinct !DILexicalBlock(scope: !1405, file: !84, line: 274, column: 7)
!1448 = !DILocation(line: 274, column: 7, scope: !1405, inlinedAt: !1425)
!1449 = !{!"branch_weights", i32 1, i32 2000}
!1450 = !DILocation(line: 279, column: 19, scope: !1405, inlinedAt: !1425)
!1451 = !DILocalVariable(name: "ch", arg: 1, scope: !1452, file: !84, line: 167, type: !365)
!1452 = distinct !DISubprogram(name: "mcel_ch", scope: !84, file: !84, line: 167, type: !1453, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1455)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!361, !365, !97}
!1455 = !{!1451, !1456}
!1456 = !DILocalVariable(name: "len", arg: 2, scope: !1452, file: !84, line: 167, type: !97)
!1457 = !DILocation(line: 0, scope: !1452, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 279, column: 10, scope: !1405, inlinedAt: !1425)
!1459 = !DILocation(line: 169, column: 3, scope: !1452, inlinedAt: !1458)
!1460 = !DILocation(line: 170, column: 3, scope: !1452, inlinedAt: !1458)
!1461 = !DILocation(line: 171, column: 3, scope: !1452, inlinedAt: !1458)
!1462 = !DILocation(line: 172, column: 3, scope: !1452, inlinedAt: !1458)
!1463 = !DILocation(line: 279, column: 3, scope: !1405, inlinedAt: !1425)
!1464 = !DILocalVariable(name: "err", arg: 1, scope: !1465, file: !84, line: 175, type: !102)
!1465 = distinct !DISubprogram(name: "mcel_err", scope: !84, file: !84, line: 175, type: !1466, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1468)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!361, !102}
!1468 = !{!1464}
!1469 = !DILocation(line: 0, scope: !1465, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 275, column: 12, scope: !1447, inlinedAt: !1425)
!1471 = !DILocation(line: 178, column: 3, scope: !1465, inlinedAt: !1470)
!1472 = !DILocation(line: 275, column: 5, scope: !1447, inlinedAt: !1425)
!1473 = !DILocation(line: 280, column: 1, scope: !1405, inlinedAt: !1425)
!1474 = !DILocation(line: 0, scope: !1452, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 237, column: 12, scope: !1434, inlinedAt: !1425)
!1476 = !DILocation(line: 172, column: 3, scope: !1452, inlinedAt: !1475)
!1477 = !DILocation(line: 237, column: 5, scope: !1434, inlinedAt: !1425)
!1478 = !DILocation(line: 94, column: 9, scope: !1479, inlinedAt: !1362)
!1479 = distinct !DILexicalBlock(scope: !1352, file: !348, line: 94, column: 7)
!1480 = !DILocation(line: 94, column: 7, scope: !1352, inlinedAt: !1362)
!1481 = !DILocation(line: 99, column: 30, scope: !1482, inlinedAt: !1362)
!1482 = distinct !DILexicalBlock(scope: !1479, file: !348, line: 97, column: 5)
!1483 = !DILocation(line: 99, column: 14, scope: !1482, inlinedAt: !1362)
!1484 = !DILocation(line: 92, column: 14, scope: !1352, inlinedAt: !1362)
!1485 = !DILocation(line: 95, column: 5, scope: !1479, inlinedAt: !1362)
!1486 = !DILocation(line: 0, scope: !1479, inlinedAt: !1362)
!1487 = !DILocation(line: 101, column: 3, scope: !1352, inlinedAt: !1362)
!1488 = !DILocation(line: 137, column: 51, scope: !384, inlinedAt: !1329)
!1489 = !DILocation(line: 138, column: 18, scope: !384, inlinedAt: !1329)
!1490 = !DILocation(line: 138, column: 27, scope: !384, inlinedAt: !1329)
!1491 = !DILocation(line: 137, column: 11, scope: !384, inlinedAt: !1329)
!1492 = distinct !{!1492, !1491, !1493, !1179, !1494}
!1493 = !DILocation(line: 139, column: 60, scope: !384, inlinedAt: !1329)
!1494 = !{!"llvm.loop.peeled.count", i32 1}
!1495 = !DILocation(line: 85, column: 21, scope: !1358, inlinedAt: !1362)
!1496 = !DILocation(line: 102, column: 1, scope: !1352, inlinedAt: !1362)
!1497 = !DILocation(line: 137, column: 23, scope: !384, inlinedAt: !1329)
!1498 = !DILocation(line: 141, column: 15, scope: !384, inlinedAt: !1329)
!1499 = !DILocation(line: 143, column: 26, scope: !382, inlinedAt: !1329)
!1500 = !{i8 0, i8 2}
!1501 = !DILocation(line: 143, column: 46, scope: !382, inlinedAt: !1329)
!1502 = !DILocalVariable(name: "wc", arg: 1, scope: !1503, file: !62, line: 178, type: !365)
!1503 = distinct !DISubprogram(name: "c32issep", scope: !62, file: !62, line: 178, type: !1504, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1506)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!103, !365}
!1506 = !{!1502}
!1507 = !DILocation(line: 0, scope: !1503, inlinedAt: !1508)
!1508 = distinct !DILocation(line: 143, column: 49, scope: !382, inlinedAt: !1329)
!1509 = !DILocalVariable(name: "wc", arg: 1, scope: !1510, file: !1511, line: 770, type: !1514)
!1510 = distinct !DISubprogram(name: "c32isblank", scope: !1511, file: !1511, line: 770, type: !1512, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1516)
!1511 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!63, !1514}
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1515, line: 20, baseType: !69)
!1515 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1516 = !{!1509}
!1517 = !DILocation(line: 0, scope: !1510, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 181, column: 13, scope: !1503, inlinedAt: !1508)
!1519 = !DILocation(line: 776, column: 10, scope: !1510, inlinedAt: !1518)
!1520 = !DILocation(line: 181, column: 11, scope: !1503, inlinedAt: !1508)
!1521 = !DILocation(line: 145, column: 19, scope: !382, inlinedAt: !1329)
!1522 = !DILocation(line: 148, column: 19, scope: !380, inlinedAt: !1329)
!1523 = !DILocation(line: 0, scope: !380, inlinedAt: !1329)
!1524 = !DILocation(line: 150, column: 23, scope: !380, inlinedAt: !1329)
!1525 = !DILocation(line: 152, column: 26, scope: !380, inlinedAt: !1329)
!1526 = !DILocation(line: 152, column: 35, scope: !380, inlinedAt: !1329)
!1527 = !DILocation(line: 152, column: 19, scope: !380, inlinedAt: !1329)
!1528 = !DILocalVariable(name: "__c", arg: 1, scope: !1529, file: !1368, line: 108, type: !63)
!1529 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1368, file: !1368, line: 108, type: !1530, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1532)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!63, !63}
!1532 = !{!1528}
!1533 = !DILocation(line: 0, scope: !1529, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 153, column: 25, scope: !1535, inlinedAt: !1329)
!1535 = distinct !DILexicalBlock(scope: !380, file: !2, line: 153, column: 25)
!1536 = !DILocation(line: 110, column: 10, scope: !1529, inlinedAt: !1534)
!1537 = !{!1376, !1064, i64 40}
!1538 = !{!1376, !1064, i64 48}
!1539 = !{!"branch_weights", i32 2000, i32 1}
!1540 = !DILocation(line: 153, column: 25, scope: !380, inlinedAt: !1329)
!1541 = !DILocation(line: 153, column: 39, scope: !1535, inlinedAt: !1329)
!1542 = !DILocation(line: 948, column: 21, scope: !1543, inlinedAt: !1546)
!1543 = distinct !DISubprogram(name: "write_error", scope: !62, file: !62, line: 946, type: !342, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1544)
!1544 = !{!1545}
!1545 = !DILocalVariable(name: "saved_errno", scope: !1543, file: !62, line: 948, type: !63)
!1546 = distinct !DILocation(line: 154, column: 23, scope: !1535, inlinedAt: !1329)
!1547 = !DILocation(line: 0, scope: !1543, inlinedAt: !1546)
!1548 = !DILocation(line: 949, column: 3, scope: !1543, inlinedAt: !1546)
!1549 = !DILocation(line: 950, column: 11, scope: !1543, inlinedAt: !1546)
!1550 = !DILocation(line: 950, column: 3, scope: !1543, inlinedAt: !1546)
!1551 = !DILocation(line: 951, column: 3, scope: !1543, inlinedAt: !1546)
!1552 = !DILocation(line: 952, column: 3, scope: !1543, inlinedAt: !1546)
!1553 = distinct !{!1553, !1527, !1554, !1179}
!1554 = !DILocation(line: 154, column: 36, scope: !380, inlinedAt: !1329)
!1555 = !DILocation(line: 0, scope: !1529, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 156, column: 23, scope: !1557, inlinedAt: !1329)
!1557 = distinct !DILexicalBlock(scope: !380, file: !2, line: 156, column: 23)
!1558 = !DILocation(line: 110, column: 10, scope: !1529, inlinedAt: !1556)
!1559 = !DILocation(line: 156, column: 23, scope: !380, inlinedAt: !1329)
!1560 = !DILocation(line: 156, column: 37, scope: !1557, inlinedAt: !1329)
!1561 = !DILocation(line: 948, column: 21, scope: !1543, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 157, column: 21, scope: !1557, inlinedAt: !1329)
!1563 = !DILocation(line: 0, scope: !1543, inlinedAt: !1562)
!1564 = !DILocation(line: 949, column: 3, scope: !1543, inlinedAt: !1562)
!1565 = !DILocation(line: 950, column: 11, scope: !1543, inlinedAt: !1562)
!1566 = !DILocation(line: 950, column: 3, scope: !1543, inlinedAt: !1562)
!1567 = !DILocation(line: 951, column: 3, scope: !1543, inlinedAt: !1562)
!1568 = !DILocation(line: 952, column: 3, scope: !1543, inlinedAt: !1562)
!1569 = !DILocation(line: 160, column: 17, scope: !381, inlinedAt: !1329)
!1570 = !DILocation(line: 165, column: 30, scope: !1571, inlinedAt: !1329)
!1571 = distinct !DILexicalBlock(scope: !388, file: !2, line: 162, column: 17)
!1572 = !DILocation(line: 165, column: 26, scope: !1571, inlinedAt: !1329)
!1573 = !DILocation(line: 166, column: 34, scope: !1571, inlinedAt: !1329)
!1574 = !DILocation(line: 166, column: 33, scope: !1571, inlinedAt: !1329)
!1575 = !DILocation(line: 166, column: 29, scope: !1571, inlinedAt: !1329)
!1576 = !DILocation(line: 177, column: 15, scope: !384, inlinedAt: !1329)
!1577 = !DILocalVariable(name: "wc", arg: 1, scope: !1578, file: !1511, line: 1004, type: !365)
!1578 = distinct !DISubprogram(name: "c32width", scope: !1511, file: !1511, line: 1004, type: !1579, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1581)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!63, !365}
!1581 = !{!1577}
!1582 = !DILocation(line: 0, scope: !1578, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 170, column: 31, scope: !387, inlinedAt: !1329)
!1584 = !DILocation(line: 1010, column: 10, scope: !1578, inlinedAt: !1583)
!1585 = !DILocation(line: 0, scope: !387, inlinedAt: !1329)
!1586 = !DILocation(line: 171, column: 23, scope: !1587, inlinedAt: !1329)
!1587 = distinct !DILexicalBlock(scope: !387, file: !2, line: 171, column: 23)
!1588 = !DILocation(line: 171, column: 23, scope: !387, inlinedAt: !1329)
!1589 = !DILocation(line: 172, column: 21, scope: !1587, inlinedAt: !1329)
!1590 = !DILocalVariable(name: "g", arg: 2, scope: !1591, file: !348, line: 107, type: !361)
!1591 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !348, file: !348, line: 107, type: !1592, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1594)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!94, !1338, !361}
!1594 = !{!1595, !1590}
!1595 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1591, file: !348, line: 107, type: !1338)
!1596 = !DILocation(line: 0, scope: !1591, inlinedAt: !1597)
!1597 = distinct !DILocation(line: 180, column: 11, scope: !390, inlinedAt: !1329)
!1598 = !DILocation(line: 0, scope: !1591, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 180, column: 11, scope: !384, inlinedAt: !1329)
!1600 = !DILocation(line: 180, column: 11, scope: !384, inlinedAt: !1329)
!1601 = !DILocation(line: 111, column: 41, scope: !1591, inlinedAt: !1599)
!1602 = !DILocation(line: 111, column: 24, scope: !1591, inlinedAt: !1599)
!1603 = !DILocation(line: 181, column: 15, scope: !1604, inlinedAt: !1329)
!1604 = distinct !DILexicalBlock(scope: !384, file: !2, line: 181, column: 15)
!1605 = !DILocalVariable(name: "__stream", arg: 1, scope: !1606, file: !1368, line: 135, type: !149)
!1606 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1368, file: !1368, line: 135, type: !1369, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1607)
!1607 = !{!1605}
!1608 = !DILocation(line: 0, scope: !1606, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 181, column: 15, scope: !1604, inlinedAt: !1329)
!1610 = !DILocation(line: 137, column: 10, scope: !1606, inlinedAt: !1609)
!1611 = !DILocation(line: 181, column: 15, scope: !384, inlinedAt: !1329)
!1612 = !DILocation(line: 948, column: 21, scope: !1543, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 182, column: 13, scope: !1604, inlinedAt: !1329)
!1614 = !DILocation(line: 0, scope: !1543, inlinedAt: !1613)
!1615 = !DILocation(line: 949, column: 3, scope: !1543, inlinedAt: !1613)
!1616 = !DILocation(line: 950, column: 11, scope: !1543, inlinedAt: !1613)
!1617 = !DILocation(line: 950, column: 3, scope: !1543, inlinedAt: !1613)
!1618 = !DILocation(line: 951, column: 3, scope: !1543, inlinedAt: !1613)
!1619 = !DILocation(line: 952, column: 3, scope: !1543, inlinedAt: !1613)
!1620 = !DILocation(line: 0, scope: !381, inlinedAt: !1329)
!1621 = !DILocation(line: 184, column: 19, scope: !360, inlinedAt: !1329)
!1622 = !DILocation(line: 183, column: 9, scope: !384, inlinedAt: !1329)
!1623 = distinct !{!1623, !1350, !1624, !1179}
!1624 = !DILocation(line: 184, column: 26, scope: !360, inlinedAt: !1329)
!1625 = !DILocation(line: 185, column: 5, scope: !341, inlinedAt: !1329)
!1626 = distinct !{!1626, !1627, !1625}
!1627 = !DILocation(line: 114, column: 3, scope: !341, inlinedAt: !1329)
!1628 = !DILocation(line: 242, column: 3, scope: !1279)
!1629 = !DILocation(line: 244, column: 10, scope: !1279)
!1630 = !DILocation(line: 244, column: 3, scope: !1279)
!1631 = !DISubprogram(name: "bindtextdomain", scope: !1115, file: !1115, line: 86, type: !1632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!94, !100, !100}
!1634 = !DISubprogram(name: "textdomain", scope: !1115, file: !1115, line: 82, type: !1255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1635 = !DISubprogram(name: "atexit", scope: !1253, file: !1253, line: 602, type: !1636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!63, !724}
!1638 = !DISubprogram(name: "getopt_long", scope: !332, file: !332, line: 66, type: !1639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!63, !63, !1641, !100, !1643, !337}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!1644 = !DISubprogram(name: "__builtin___memmove_chk", scope: !1645, file: !1645, line: 25, type: !1646, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1645 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/strings_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "2c53309439f074d781ca95a346401d78")
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!95, !95, !1277, !99, !99}
!1648 = !DISubprogram(name: "mbrtoc32", scope: !366, file: !366, line: 57, type: !1649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!97, !1651, !1123, !97, !1653}
!1651 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1652)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1654)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1655 = !DISubprogram(name: "iswblank", scope: !1656, file: !1656, line: 146, type: !1512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1656 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1657 = !DISubprogram(name: "__overflow", scope: !687, file: !687, line: 886, type: !1658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!63, !149, !63}
!1660 = !DISubprogram(name: "__errno_location", scope: !1661, file: !1661, line: 37, type: !1662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1661 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!337}
!1664 = !DISubprogram(name: "fflush_unlocked", scope: !687, file: !687, line: 239, type: !1369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1665 = !DISubprogram(name: "clearerr_unlocked", scope: !687, file: !687, line: 794, type: !1666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{null, !149}
!1668 = !DISubprogram(name: "wcwidth", scope: !1669, file: !1669, line: 368, type: !1670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1669 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!63, !1672}
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !98, line: 74, baseType: !69)
!1673 = distinct !DISubprogram(name: "add_tab_stop", scope: !409, file: !409, line: 84, type: !1674, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1676)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null, !373}
!1676 = !{!1677, !1678, !1679}
!1677 = !DILocalVariable(name: "tabval", arg: 1, scope: !1673, file: !409, line: 84, type: !373)
!1678 = !DILocalVariable(name: "prev_column", scope: !1673, file: !409, line: 86, type: !373)
!1679 = !DILocalVariable(name: "column_width", scope: !1673, file: !409, line: 87, type: !373)
!1680 = !DILocation(line: 0, scope: !1673)
!1681 = !DILocation(line: 86, column: 23, scope: !1673)
!1682 = !DILocation(line: 86, column: 40, scope: !1673)
!1683 = !DILocation(line: 86, column: 64, scope: !1673)
!1684 = !DILocation(line: 89, column: 25, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1673, file: !409, line: 89, column: 7)
!1686 = !DILocation(line: 89, column: 22, scope: !1685)
!1687 = !DILocation(line: 89, column: 7, scope: !1673)
!1688 = !DILocation(line: 90, column: 16, scope: !1685)
!1689 = !DILocation(line: 90, column: 14, scope: !1685)
!1690 = !DILocation(line: 91, column: 26, scope: !1673)
!1691 = !DILocation(line: 90, column: 5, scope: !1685)
!1692 = !DILocation(line: 91, column: 3, scope: !1673)
!1693 = !DILocation(line: 87, column: 36, scope: !1673)
!1694 = !DILocation(line: 87, column: 24, scope: !1673)
!1695 = !DILocation(line: 91, column: 30, scope: !1673)
!1696 = !DILocalVariable(name: "width", arg: 1, scope: !1697, file: !409, line: 73, type: !373)
!1697 = distinct !DISubprogram(name: "set_max_column_width", scope: !409, file: !409, line: 73, type: !1674, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1698)
!1698 = !{!1696}
!1699 = !DILocation(line: 0, scope: !1697, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 93, column: 3, scope: !1673)
!1701 = !DILocation(line: 75, column: 7, scope: !1702, inlinedAt: !1700)
!1702 = distinct !DILexicalBlock(scope: !1697, file: !409, line: 75, column: 7)
!1703 = !DILocation(line: 75, column: 24, scope: !1702, inlinedAt: !1700)
!1704 = !DILocation(line: 75, column: 7, scope: !1697, inlinedAt: !1700)
!1705 = !DILocation(line: 77, column: 11, scope: !1706, inlinedAt: !1700)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !409, line: 77, column: 11)
!1707 = distinct !DILexicalBlock(scope: !1702, file: !409, line: 76, column: 5)
!1708 = !DILocation(line: 94, column: 1, scope: !1673)
!1709 = distinct !DISubprogram(name: "parse_tab_stops", scope: !409, file: !409, line: 137, type: !1084, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1710)
!1710 = !{!1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1729}
!1711 = !DILocalVariable(name: "stops", arg: 1, scope: !1709, file: !409, line: 137, type: !100)
!1712 = !DILocalVariable(name: "have_tabval", scope: !1709, file: !409, line: 139, type: !103)
!1713 = !DILocalVariable(name: "tabval", scope: !1709, file: !409, line: 140, type: !373)
!1714 = !DILocalVariable(name: "extend_tabval", scope: !1709, file: !409, line: 141, type: !103)
!1715 = !DILocalVariable(name: "increment_tabval", scope: !1709, file: !409, line: 142, type: !103)
!1716 = !DILocalVariable(name: "num_start", scope: !1709, file: !409, line: 143, type: !100)
!1717 = !DILocalVariable(name: "ok", scope: !1709, file: !409, line: 144, type: !103)
!1718 = !DILocalVariable(name: "len", scope: !1719, file: !409, line: 207, type: !354)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !409, line: 206, column: 13)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !409, line: 205, column: 15)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !409, line: 196, column: 9)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !409, line: 195, column: 16)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !409, line: 184, column: 16)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !409, line: 173, column: 16)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !409, line: 148, column: 11)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !409, line: 147, column: 5)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !409, line: 146, column: 3)
!1728 = distinct !DILexicalBlock(scope: !1709, file: !409, line: 146, column: 3)
!1729 = !DILocalVariable(name: "bad_num", scope: !1719, file: !409, line: 208, type: !94)
!1730 = !DILocation(line: 0, scope: !1709)
!1731 = !DILocation(line: 146, column: 3, scope: !1709)
!1732 = !DILocation(line: 140, column: 9, scope: !1709)
!1733 = !DILocation(line: 143, column: 15, scope: !1709)
!1734 = !DILocation(line: 146, column: 10, scope: !1727)
!1735 = !DILocation(line: 146, column: 3, scope: !1728)
!1736 = !DILocation(line: 148, column: 28, scope: !1725)
!1737 = !DILocation(line: 148, column: 11, scope: !1726)
!1738 = !DILocation(line: 150, column: 15, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1725, file: !409, line: 149, column: 9)
!1740 = !DILocation(line: 152, column: 19, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !409, line: 151, column: 13)
!1742 = distinct !DILexicalBlock(scope: !1739, file: !409, line: 150, column: 15)
!1743 = !DILocalVariable(name: "tabval", arg: 1, scope: !1744, file: !409, line: 97, type: !373)
!1744 = distinct !DISubprogram(name: "set_extend_size", scope: !409, file: !409, line: 97, type: !1745, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1747)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!103, !373}
!1747 = !{!1743, !1748}
!1748 = !DILocalVariable(name: "ok", scope: !1744, file: !409, line: 99, type: !103)
!1749 = !DILocation(line: 0, scope: !1744, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 154, column: 25, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !409, line: 154, column: 23)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !409, line: 153, column: 17)
!1753 = distinct !DILexicalBlock(scope: !1741, file: !409, line: 152, column: 19)
!1754 = !DILocation(line: 101, column: 7, scope: !1755, inlinedAt: !1750)
!1755 = distinct !DILexicalBlock(scope: !1744, file: !409, line: 101, column: 7)
!1756 = !DILocation(line: 101, column: 7, scope: !1744, inlinedAt: !1750)
!1757 = !DILocation(line: 103, column: 7, scope: !1758, inlinedAt: !1750)
!1758 = distinct !DILexicalBlock(scope: !1755, file: !409, line: 102, column: 5)
!1759 = !DILocation(line: 107, column: 5, scope: !1758, inlinedAt: !1750)
!1760 = !DILocation(line: 108, column: 15, scope: !1744, inlinedAt: !1750)
!1761 = !DILocation(line: 0, scope: !1697, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 110, column: 3, scope: !1744, inlinedAt: !1750)
!1763 = !DILocation(line: 75, column: 7, scope: !1702, inlinedAt: !1762)
!1764 = !DILocation(line: 75, column: 24, scope: !1702, inlinedAt: !1762)
!1765 = !DILocation(line: 75, column: 7, scope: !1697, inlinedAt: !1762)
!1766 = !DILocation(line: 77, column: 11, scope: !1706, inlinedAt: !1762)
!1767 = !DILocation(line: 154, column: 23, scope: !1752)
!1768 = !DILocation(line: 160, column: 24, scope: !1753)
!1769 = !DILocalVariable(name: "tabval", arg: 1, scope: !1770, file: !409, line: 116, type: !373)
!1770 = distinct !DISubprogram(name: "set_increment_size", scope: !409, file: !409, line: 116, type: !1745, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1771)
!1771 = !{!1769, !1772}
!1772 = !DILocalVariable(name: "ok", scope: !1770, file: !409, line: 118, type: !103)
!1773 = !DILocation(line: 0, scope: !1770, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 162, column: 25, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !409, line: 162, column: 23)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !409, line: 161, column: 17)
!1777 = distinct !DILexicalBlock(scope: !1753, file: !409, line: 160, column: 24)
!1778 = !DILocation(line: 120, column: 7, scope: !1779, inlinedAt: !1774)
!1779 = distinct !DILexicalBlock(scope: !1770, file: !409, line: 120, column: 7)
!1780 = !DILocation(line: 120, column: 7, scope: !1770, inlinedAt: !1774)
!1781 = !DILocation(line: 122, column: 7, scope: !1782, inlinedAt: !1774)
!1782 = distinct !DILexicalBlock(scope: !1779, file: !409, line: 121, column: 5)
!1783 = !DILocation(line: 126, column: 5, scope: !1782, inlinedAt: !1774)
!1784 = !DILocation(line: 127, column: 18, scope: !1770, inlinedAt: !1774)
!1785 = !DILocation(line: 0, scope: !1697, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 129, column: 3, scope: !1770, inlinedAt: !1774)
!1787 = !DILocation(line: 75, column: 7, scope: !1702, inlinedAt: !1786)
!1788 = !DILocation(line: 75, column: 24, scope: !1702, inlinedAt: !1786)
!1789 = !DILocation(line: 75, column: 7, scope: !1697, inlinedAt: !1786)
!1790 = !DILocation(line: 77, column: 11, scope: !1706, inlinedAt: !1786)
!1791 = !DILocation(line: 162, column: 23, scope: !1776)
!1792 = !DILocation(line: 0, scope: !1673, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 169, column: 17, scope: !1777)
!1794 = !DILocation(line: 86, column: 23, scope: !1673, inlinedAt: !1793)
!1795 = !DILocation(line: 86, column: 64, scope: !1673, inlinedAt: !1793)
!1796 = !DILocation(line: 86, column: 40, scope: !1673, inlinedAt: !1793)
!1797 = !DILocation(line: 89, column: 25, scope: !1685, inlinedAt: !1793)
!1798 = !DILocation(line: 89, column: 22, scope: !1685, inlinedAt: !1793)
!1799 = !DILocation(line: 89, column: 7, scope: !1673, inlinedAt: !1793)
!1800 = !DILocation(line: 90, column: 16, scope: !1685, inlinedAt: !1793)
!1801 = !DILocation(line: 90, column: 14, scope: !1685, inlinedAt: !1793)
!1802 = !DILocation(line: 91, column: 26, scope: !1673, inlinedAt: !1793)
!1803 = !DILocation(line: 90, column: 5, scope: !1685, inlinedAt: !1793)
!1804 = !DILocation(line: 91, column: 3, scope: !1673, inlinedAt: !1793)
!1805 = !DILocation(line: 87, column: 36, scope: !1673, inlinedAt: !1793)
!1806 = !DILocation(line: 87, column: 24, scope: !1673, inlinedAt: !1793)
!1807 = !DILocation(line: 91, column: 30, scope: !1673, inlinedAt: !1793)
!1808 = !DILocation(line: 0, scope: !1697, inlinedAt: !1809)
!1809 = distinct !DILocation(line: 93, column: 3, scope: !1673, inlinedAt: !1793)
!1810 = !DILocation(line: 75, column: 7, scope: !1702, inlinedAt: !1809)
!1811 = !DILocation(line: 75, column: 24, scope: !1702, inlinedAt: !1809)
!1812 = !DILocation(line: 75, column: 7, scope: !1697, inlinedAt: !1809)
!1813 = !DILocation(line: 77, column: 11, scope: !1706, inlinedAt: !1809)
!1814 = !DILocation(line: 173, column: 16, scope: !1725)
!1815 = !DILocation(line: 175, column: 15, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1724, file: !409, line: 174, column: 9)
!1817 = !DILocation(line: 177, column: 15, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !409, line: 176, column: 13)
!1819 = distinct !DILexicalBlock(scope: !1816, file: !409, line: 175, column: 15)
!1820 = !DILocation(line: 180, column: 13, scope: !1818)
!1821 = !DILocation(line: 186, column: 15, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1723, file: !409, line: 185, column: 9)
!1823 = !DILocation(line: 188, column: 15, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !409, line: 187, column: 13)
!1825 = distinct !DILexicalBlock(scope: !1822, file: !409, line: 186, column: 15)
!1826 = !DILocation(line: 191, column: 13, scope: !1824)
!1827 = !DILocation(line: 173, column: 16, scope: !1724)
!1828 = !DILocalVariable(name: "c", arg: 1, scope: !1829, file: !1830, line: 233, type: !63)
!1829 = distinct !DISubprogram(name: "c_isdigit", scope: !1830, file: !1830, line: 233, type: !1831, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1833)
!1830 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!103, !63}
!1833 = !{!1828}
!1834 = !DILocation(line: 0, scope: !1829, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 195, column: 16, scope: !1722)
!1836 = !DILocation(line: 235, column: 3, scope: !1829, inlinedAt: !1835)
!1837 = !DILocation(line: 195, column: 16, scope: !1723)
!1838 = !DILocation(line: 197, column: 15, scope: !1721)
!1839 = !DILocation(line: 205, column: 16, scope: !1720)
!1840 = !DILocation(line: 205, column: 15, scope: !1721)
!1841 = !DILocation(line: 207, column: 27, scope: !1719)
!1842 = !DILocation(line: 0, scope: !1719)
!1843 = !DILocation(line: 208, column: 31, scope: !1719)
!1844 = !DILocation(line: 209, column: 15, scope: !1719)
!1845 = !DILocation(line: 210, column: 15, scope: !1719)
!1846 = !DILocation(line: 212, column: 33, scope: !1719)
!1847 = !DILocation(line: 212, column: 39, scope: !1719)
!1848 = !DILocation(line: 213, column: 13, scope: !1719)
!1849 = !DILocation(line: 217, column: 11, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1722, file: !409, line: 216, column: 9)
!1851 = !DILocation(line: 220, column: 11, scope: !1850)
!1852 = !DILocation(line: 146, column: 23, scope: !1727)
!1853 = !DILocation(line: 146, column: 3, scope: !1727)
!1854 = distinct !{!1854, !1735, !1855, !1179}
!1855 = !DILocation(line: 222, column: 5, scope: !1728)
!1856 = !DILocation(line: 224, column: 10, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1709, file: !409, line: 224, column: 7)
!1858 = !DILocation(line: 226, column: 11, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1857, file: !409, line: 225, column: 5)
!1860 = !DILocation(line: 0, scope: !1744, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 227, column: 15, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1859, file: !409, line: 226, column: 11)
!1863 = !DILocation(line: 101, column: 7, scope: !1755, inlinedAt: !1861)
!1864 = !DILocation(line: 101, column: 7, scope: !1744, inlinedAt: !1861)
!1865 = !DILocation(line: 108, column: 15, scope: !1744, inlinedAt: !1861)
!1866 = !DILocation(line: 0, scope: !1697, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 110, column: 3, scope: !1744, inlinedAt: !1861)
!1868 = !DILocation(line: 75, column: 7, scope: !1702, inlinedAt: !1867)
!1869 = !DILocation(line: 75, column: 24, scope: !1702, inlinedAt: !1867)
!1870 = !DILocation(line: 75, column: 7, scope: !1697, inlinedAt: !1867)
!1871 = !DILocation(line: 103, column: 7, scope: !1758, inlinedAt: !1861)
!1872 = !DILocation(line: 77, column: 11, scope: !1706, inlinedAt: !1867)
!1873 = !DILocation(line: 234, column: 7, scope: !1709)
!1874 = !DILocation(line: 228, column: 16, scope: !1862)
!1875 = !DILocation(line: 0, scope: !1770, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 229, column: 15, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1862, file: !409, line: 228, column: 16)
!1878 = !DILocation(line: 120, column: 7, scope: !1779, inlinedAt: !1876)
!1879 = !DILocation(line: 120, column: 7, scope: !1770, inlinedAt: !1876)
!1880 = !DILocation(line: 127, column: 18, scope: !1770, inlinedAt: !1876)
!1881 = !DILocation(line: 0, scope: !1697, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 129, column: 3, scope: !1770, inlinedAt: !1876)
!1883 = !DILocation(line: 75, column: 7, scope: !1702, inlinedAt: !1882)
!1884 = !DILocation(line: 75, column: 24, scope: !1702, inlinedAt: !1882)
!1885 = !DILocation(line: 75, column: 7, scope: !1697, inlinedAt: !1882)
!1886 = !DILocation(line: 122, column: 7, scope: !1782, inlinedAt: !1876)
!1887 = !DILocation(line: 77, column: 11, scope: !1706, inlinedAt: !1882)
!1888 = !DILocation(line: 0, scope: !1673, inlinedAt: !1889)
!1889 = distinct !DILocation(line: 231, column: 9, scope: !1877)
!1890 = !DILocation(line: 86, column: 23, scope: !1673, inlinedAt: !1889)
!1891 = !DILocation(line: 86, column: 64, scope: !1673, inlinedAt: !1889)
!1892 = !DILocation(line: 86, column: 40, scope: !1673, inlinedAt: !1889)
!1893 = !DILocation(line: 89, column: 25, scope: !1685, inlinedAt: !1889)
!1894 = !DILocation(line: 89, column: 22, scope: !1685, inlinedAt: !1889)
!1895 = !DILocation(line: 89, column: 7, scope: !1673, inlinedAt: !1889)
!1896 = !DILocation(line: 90, column: 16, scope: !1685, inlinedAt: !1889)
!1897 = !DILocation(line: 90, column: 14, scope: !1685, inlinedAt: !1889)
!1898 = !DILocation(line: 91, column: 26, scope: !1673, inlinedAt: !1889)
!1899 = !DILocation(line: 90, column: 5, scope: !1685, inlinedAt: !1889)
!1900 = !DILocation(line: 91, column: 3, scope: !1673, inlinedAt: !1889)
!1901 = !DILocation(line: 87, column: 36, scope: !1673, inlinedAt: !1889)
!1902 = !DILocation(line: 87, column: 24, scope: !1673, inlinedAt: !1889)
!1903 = !DILocation(line: 91, column: 30, scope: !1673, inlinedAt: !1889)
!1904 = !DILocation(line: 0, scope: !1697, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 93, column: 3, scope: !1673, inlinedAt: !1889)
!1906 = !DILocation(line: 75, column: 7, scope: !1702, inlinedAt: !1905)
!1907 = !DILocation(line: 75, column: 24, scope: !1702, inlinedAt: !1905)
!1908 = !DILocation(line: 75, column: 7, scope: !1697, inlinedAt: !1905)
!1909 = !DILocation(line: 235, column: 5, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1709, file: !409, line: 234, column: 7)
!1911 = !DILocation(line: 0, scope: !1862)
!1912 = !DILocation(line: 236, column: 1, scope: !1709)
!1913 = !DISubprogram(name: "free", scope: !1253, file: !1253, line: 555, type: !1914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{null, !95}
!1916 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !409, file: !409, line: 268, type: !342, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1072)
!1917 = !DILocation(line: 270, column: 23, scope: !1916)
!1918 = !DILocation(line: 270, column: 33, scope: !1916)
!1919 = !DILocalVariable(name: "tabs", arg: 1, scope: !1920, file: !409, line: 242, type: !1923)
!1920 = distinct !DISubprogram(name: "validate_tab_stops", scope: !409, file: !409, line: 242, type: !1921, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1925)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !1923, !354}
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!1925 = !{!1919, !1926, !1927, !1928}
!1926 = !DILocalVariable(name: "entries", arg: 2, scope: !1920, file: !409, line: 242, type: !354)
!1927 = !DILocalVariable(name: "prev_tab", scope: !1920, file: !409, line: 244, type: !373)
!1928 = !DILocalVariable(name: "i", scope: !1929, file: !409, line: 246, type: !354)
!1929 = distinct !DILexicalBlock(scope: !1920, file: !409, line: 246, column: 3)
!1930 = !DILocation(line: 0, scope: !1920, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 270, column: 3, scope: !1916)
!1932 = !DILocation(line: 0, scope: !1929, inlinedAt: !1931)
!1933 = !DILocation(line: 246, column: 23, scope: !1934, inlinedAt: !1931)
!1934 = distinct !DILexicalBlock(scope: !1929, file: !409, line: 246, column: 3)
!1935 = !DILocation(line: 246, column: 3, scope: !1929, inlinedAt: !1931)
!1936 = !DILocation(line: 246, column: 35, scope: !1934, inlinedAt: !1931)
!1937 = distinct !{!1937, !1935, !1938, !1179}
!1938 = !DILocation(line: 253, column: 5, scope: !1929, inlinedAt: !1931)
!1939 = !DILocation(line: 255, column: 7, scope: !1940, inlinedAt: !1931)
!1940 = distinct !DILexicalBlock(scope: !1920, file: !409, line: 255, column: 7)
!1941 = !DILocation(line: 255, column: 22, scope: !1940, inlinedAt: !1931)
!1942 = !DILocation(line: 248, column: 11, scope: !1943, inlinedAt: !1931)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !409, line: 248, column: 11)
!1944 = distinct !DILexicalBlock(scope: !1934, file: !409, line: 247, column: 5)
!1945 = !DILocation(line: 248, column: 19, scope: !1943, inlinedAt: !1931)
!1946 = !DILocation(line: 248, column: 11, scope: !1944, inlinedAt: !1931)
!1947 = !DILocation(line: 249, column: 9, scope: !1943, inlinedAt: !1931)
!1948 = !DILocation(line: 250, column: 19, scope: !1949, inlinedAt: !1931)
!1949 = distinct !DILexicalBlock(scope: !1944, file: !409, line: 250, column: 11)
!1950 = !DILocation(line: 250, column: 11, scope: !1944, inlinedAt: !1931)
!1951 = !DILocation(line: 251, column: 9, scope: !1949, inlinedAt: !1931)
!1952 = !DILocation(line: 256, column: 5, scope: !1940, inlinedAt: !1931)
!1953 = !DILocation(line: 272, column: 22, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1916, file: !409, line: 272, column: 7)
!1955 = !DILocation(line: 272, column: 7, scope: !1916)
!1956 = !DILocation(line: 273, column: 35, scope: !1954)
!1957 = !DILocation(line: 273, column: 33, scope: !1954)
!1958 = !DILocation(line: 273, column: 5, scope: !1954)
!1959 = !DILocation(line: 276, column: 27, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1954, file: !409, line: 276, column: 12)
!1961 = !DILocation(line: 276, column: 32, scope: !1960)
!1962 = !DILocation(line: 277, column: 16, scope: !1960)
!1963 = !DILocation(line: 277, column: 5, scope: !1960)
!1964 = !DILocation(line: 0, scope: !1954)
!1965 = !DILocation(line: 280, column: 1, scope: !1916)
!1966 = distinct !DISubprogram(name: "get_next_tab_column", scope: !409, file: !409, line: 288, type: !1967, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1970)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!373, !373, !1017, !1969}
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1970 = !{!1971, !1972, !1973, !1974, !1975, !1981, !1985}
!1971 = !DILocalVariable(name: "column", arg: 1, scope: !1966, file: !409, line: 288, type: !373)
!1972 = !DILocalVariable(name: "tab_index", arg: 2, scope: !1966, file: !409, line: 288, type: !1017)
!1973 = !DILocalVariable(name: "last_tab", arg: 3, scope: !1966, file: !409, line: 288, type: !1969)
!1974 = !DILocalVariable(name: "tab_distance", scope: !1966, file: !409, line: 291, type: !373)
!1975 = !DILocalVariable(name: "tab", scope: !1976, file: !409, line: 302, type: !373)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !409, line: 301, column: 9)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !409, line: 300, column: 7)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !409, line: 300, column: 7)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !409, line: 297, column: 5)
!1980 = distinct !DILexicalBlock(scope: !1966, file: !409, line: 294, column: 7)
!1981 = !DILocalVariable(name: "end_tab", scope: !1982, file: !409, line: 314, type: !373)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !409, line: 311, column: 9)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !409, line: 310, column: 16)
!1984 = distinct !DILexicalBlock(scope: !1979, file: !409, line: 308, column: 11)
!1985 = !DILocalVariable(name: "tab_stop", scope: !1966, file: !409, line: 324, type: !373)
!1986 = !DILocation(line: 0, scope: !1966)
!1987 = !DILocation(line: 290, column: 13, scope: !1966)
!1988 = !DILocation(line: 294, column: 7, scope: !1980)
!1989 = !DILocation(line: 294, column: 7, scope: !1966)
!1990 = !DILocation(line: 300, column: 26, scope: !1977)
!1991 = !DILocation(line: 300, column: 7, scope: !1978)
!1992 = !DILocation(line: 295, column: 38, scope: !1980)
!1993 = !DILocation(line: 295, column: 29, scope: !1980)
!1994 = !DILocation(line: 295, column: 5, scope: !1980)
!1995 = !DILocation(line: 302, column: 23, scope: !1976)
!1996 = !DILocation(line: 0, scope: !1976)
!1997 = !DILocation(line: 303, column: 22, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1976, file: !409, line: 303, column: 15)
!1999 = !DILocation(line: 300, column: 57, scope: !1977)
!2000 = distinct !{!2000, !1991, !2001, !1179}
!2001 = !DILocation(line: 305, column: 9, scope: !1978)
!2002 = !DILocation(line: 308, column: 11, scope: !1984)
!2003 = !DILocation(line: 308, column: 11, scope: !1979)
!2004 = !DILocation(line: 309, column: 45, scope: !1984)
!2005 = !DILocation(line: 309, column: 36, scope: !1984)
!2006 = !DILocation(line: 309, column: 9, scope: !1984)
!2007 = !DILocation(line: 310, column: 16, scope: !1983)
!2008 = !DILocation(line: 310, column: 16, scope: !1984)
!2009 = !DILocation(line: 314, column: 27, scope: !1982)
!2010 = !DILocation(line: 314, column: 51, scope: !1982)
!2011 = !DILocation(line: 0, scope: !1982)
!2012 = !DILocation(line: 315, column: 52, scope: !1982)
!2013 = !DILocation(line: 315, column: 63, scope: !1982)
!2014 = !DILocation(line: 315, column: 41, scope: !1982)
!2015 = !DILocation(line: 316, column: 9, scope: !1982)
!2016 = !DILocation(line: 319, column: 21, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1983, file: !409, line: 318, column: 9)
!2018 = !DILocation(line: 0, scope: !1980)
!2019 = !DILocation(line: 325, column: 7, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1966, file: !409, line: 325, column: 7)
!2021 = !DILocation(line: 325, column: 7, scope: !1966)
!2022 = !DILocation(line: 326, column: 5, scope: !2020)
!2023 = !DILocation(line: 328, column: 1, scope: !1966)
!2024 = distinct !DISubprogram(name: "set_file_list", scope: !409, file: !409, line: 333, type: !2025, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2027)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{null, !566}
!2027 = !{!2028}
!2028 = !DILocalVariable(name: "list", arg: 1, scope: !2024, file: !409, line: 333, type: !566)
!2029 = !DILocation(line: 0, scope: !2024)
!2030 = !DILocation(line: 335, column: 19, scope: !2024)
!2031 = !DILocation(line: 337, column: 8, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2024, file: !409, line: 337, column: 7)
!2033 = !DILocation(line: 0, scope: !2032)
!2034 = !DILocation(line: 341, column: 1, scope: !2024)
!2035 = !DILocation(line: 0, scope: !464)
!2036 = !DILocation(line: 354, column: 7, scope: !506)
!2037 = !DILocation(line: 354, column: 7, scope: !464)
!2038 = !DILocation(line: 356, column: 17, scope: !505)
!2039 = !DILocation(line: 0, scope: !505)
!2040 = !DILocalVariable(name: "__stream", arg: 1, scope: !2041, file: !1368, line: 135, type: !467)
!2041 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1368, file: !1368, line: 135, type: !2042, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!63, !467}
!2044 = !{!2040}
!2045 = !DILocation(line: 0, scope: !2041, inlinedAt: !2046)
!2046 = distinct !DILocation(line: 357, column: 12, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !505, file: !409, line: 357, column: 11)
!2048 = !DILocation(line: 137, column: 10, scope: !2041, inlinedAt: !2046)
!2049 = !DILocation(line: 357, column: 12, scope: !2047)
!2050 = !DILocation(line: 357, column: 11, scope: !505)
!2051 = !DILocation(line: 359, column: 18, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !505, file: !409, line: 359, column: 11)
!2053 = !DILocalVariable(name: "__s1", arg: 1, scope: !2054, file: !1145, line: 1359, type: !100)
!2054 = distinct !DISubprogram(name: "streq", scope: !1145, file: !1145, line: 1359, type: !1146, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2055)
!2055 = !{!2053, !2056}
!2056 = !DILocalVariable(name: "__s2", arg: 2, scope: !2054, file: !1145, line: 1359, type: !100)
!2057 = !DILocation(line: 0, scope: !2054, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 359, column: 11, scope: !2052)
!2059 = !DILocation(line: 1361, column: 11, scope: !2054, inlinedAt: !2058)
!2060 = !DILocation(line: 1361, column: 10, scope: !2054, inlinedAt: !2058)
!2061 = !DILocation(line: 359, column: 11, scope: !505)
!2062 = !DILocation(line: 360, column: 9, scope: !2052)
!2063 = !DILocation(line: 361, column: 16, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2052, file: !409, line: 361, column: 16)
!2065 = !DILocation(line: 361, column: 28, scope: !2064)
!2066 = !DILocation(line: 361, column: 16, scope: !2052)
!2067 = !DILocation(line: 362, column: 15, scope: !2064)
!2068 = !DILocation(line: 362, column: 9, scope: !2064)
!2069 = !DILocation(line: 363, column: 11, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !505, file: !409, line: 363, column: 11)
!2071 = !DILocation(line: 363, column: 11, scope: !505)
!2072 = !DILocation(line: 365, column: 11, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2070, file: !409, line: 364, column: 9)
!2074 = !DILocation(line: 366, column: 23, scope: !2073)
!2075 = !DILocation(line: 367, column: 9, scope: !2073)
!2076 = !DILocation(line: 370, column: 28, scope: !464)
!2077 = !DILocation(line: 370, column: 18, scope: !464)
!2078 = !DILocation(line: 370, column: 32, scope: !464)
!2079 = !DILocation(line: 370, column: 3, scope: !464)
!2080 = !DILocation(line: 0, scope: !2054, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 372, column: 11, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !409, line: 372, column: 11)
!2083 = distinct !DILexicalBlock(scope: !464, file: !409, line: 371, column: 5)
!2084 = !DILocation(line: 1361, column: 11, scope: !2054, inlinedAt: !2081)
!2085 = !DILocation(line: 1361, column: 10, scope: !2054, inlinedAt: !2081)
!2086 = !DILocation(line: 372, column: 11, scope: !2083)
!2087 = !DILocation(line: 374, column: 27, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2082, file: !409, line: 373, column: 9)
!2089 = !DILocation(line: 375, column: 16, scope: !2088)
!2090 = !DILocation(line: 376, column: 9, scope: !2088)
!2091 = !DILocation(line: 378, column: 14, scope: !2082)
!2092 = !DILocation(line: 0, scope: !2082)
!2093 = !DILocation(line: 379, column: 11, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2083, file: !409, line: 379, column: 11)
!2095 = !DILocation(line: 379, column: 11, scope: !2083)
!2096 = !DILocation(line: 381, column: 21, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2094, file: !409, line: 380, column: 9)
!2098 = !DILocation(line: 382, column: 11, scope: !2097)
!2099 = !DILocation(line: 383, column: 11, scope: !2097)
!2100 = !DILocation(line: 385, column: 7, scope: !2083)
!2101 = !DILocation(line: 386, column: 19, scope: !2083)
!2102 = distinct !{!2102, !2079, !2103, !1179}
!2103 = !DILocation(line: 387, column: 5, scope: !464)
!2104 = !DILocation(line: 389, column: 1, scope: !464)
!2105 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !409, file: !409, line: 393, type: !342, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1072)
!2106 = !DILocation(line: 395, column: 9, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2105, file: !409, line: 395, column: 9)
!2108 = !DILocation(line: 395, column: 25, scope: !2107)
!2109 = !DILocation(line: 395, column: 36, scope: !2107)
!2110 = !DILocation(line: 395, column: 28, scope: !2107)
!2111 = !DILocation(line: 395, column: 43, scope: !2107)
!2112 = !DILocation(line: 395, column: 9, scope: !2105)
!2113 = !DILocation(line: 396, column: 7, scope: !2107)
!2114 = !DILocation(line: 397, column: 1, scope: !2105)
!2115 = distinct !DISubprogram(name: "emit_tab_list_info", scope: !409, file: !409, line: 402, type: !1084, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2116)
!2116 = !{!2117}
!2117 = !DILocalVariable(name: "program", arg: 1, scope: !2115, file: !409, line: 402, type: !100)
!2118 = !DILocation(line: 0, scope: !2115)
!2119 = !DILocation(line: 405, column: 20, scope: !2115)
!2120 = !DILocation(line: 0, scope: !569, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 405, column: 3, scope: !2115)
!2122 = !DILocation(line: 581, column: 7, scope: !576, inlinedAt: !2121)
!2123 = !DILocation(line: 581, column: 19, scope: !576, inlinedAt: !2121)
!2124 = !DILocation(line: 581, column: 7, scope: !569, inlinedAt: !2121)
!2125 = !DILocation(line: 585, column: 26, scope: !575, inlinedAt: !2121)
!2126 = !DILocation(line: 0, scope: !575, inlinedAt: !2121)
!2127 = !DILocation(line: 586, column: 23, scope: !575, inlinedAt: !2121)
!2128 = !DILocation(line: 586, column: 28, scope: !575, inlinedAt: !2121)
!2129 = !DILocation(line: 586, column: 32, scope: !575, inlinedAt: !2121)
!2130 = !DILocation(line: 586, column: 38, scope: !575, inlinedAt: !2121)
!2131 = !DILocation(line: 0, scope: !2054, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 586, column: 41, scope: !575, inlinedAt: !2121)
!2133 = !DILocation(line: 1361, column: 11, scope: !2054, inlinedAt: !2132)
!2134 = !DILocation(line: 1361, column: 10, scope: !2054, inlinedAt: !2132)
!2135 = !DILocation(line: 586, column: 19, scope: !575, inlinedAt: !2121)
!2136 = !DILocation(line: 587, column: 5, scope: !575, inlinedAt: !2121)
!2137 = !DILocation(line: 588, column: 7, scope: !2138, inlinedAt: !2121)
!2138 = distinct !DILexicalBlock(scope: !569, file: !62, line: 588, column: 7)
!2139 = !DILocation(line: 588, column: 7, scope: !569, inlinedAt: !2121)
!2140 = !DILocation(line: 590, column: 7, scope: !2141, inlinedAt: !2121)
!2141 = distinct !DILexicalBlock(scope: !2138, file: !62, line: 589, column: 5)
!2142 = !DILocation(line: 591, column: 7, scope: !2141, inlinedAt: !2121)
!2143 = !DILocation(line: 595, column: 37, scope: !569, inlinedAt: !2121)
!2144 = !DILocation(line: 595, column: 35, scope: !569, inlinedAt: !2121)
!2145 = !DILocation(line: 596, column: 29, scope: !569, inlinedAt: !2121)
!2146 = !DILocation(line: 597, column: 8, scope: !583, inlinedAt: !2121)
!2147 = !DILocation(line: 597, column: 7, scope: !569, inlinedAt: !2121)
!2148 = !DILocation(line: 604, column: 24, scope: !582, inlinedAt: !2121)
!2149 = !DILocation(line: 604, column: 12, scope: !583, inlinedAt: !2121)
!2150 = !DILocation(line: 0, scope: !581, inlinedAt: !2121)
!2151 = !DILocation(line: 610, column: 16, scope: !581, inlinedAt: !2121)
!2152 = !DILocation(line: 610, column: 7, scope: !581, inlinedAt: !2121)
!2153 = !DILocation(line: 611, column: 21, scope: !581, inlinedAt: !2121)
!2154 = !DILocation(line: 611, column: 19, scope: !581, inlinedAt: !2121)
!2155 = !DILocation(line: 611, column: 16, scope: !581, inlinedAt: !2121)
!2156 = !DILocation(line: 610, column: 30, scope: !581, inlinedAt: !2121)
!2157 = distinct !{!2157, !2152, !2153, !1179}
!2158 = !DILocation(line: 612, column: 18, scope: !2159, inlinedAt: !2121)
!2159 = distinct !DILexicalBlock(scope: !581, file: !62, line: 612, column: 11)
!2160 = !DILocation(line: 612, column: 11, scope: !581, inlinedAt: !2121)
!2161 = !DILocation(line: 618, column: 5, scope: !581, inlinedAt: !2121)
!2162 = !DILocation(line: 620, column: 23, scope: !569, inlinedAt: !2121)
!2163 = !DILocation(line: 625, column: 39, scope: !569, inlinedAt: !2121)
!2164 = !DILocation(line: 626, column: 3, scope: !569, inlinedAt: !2121)
!2165 = !DILocation(line: 626, column: 10, scope: !569, inlinedAt: !2121)
!2166 = !DILocation(line: 626, column: 21, scope: !569, inlinedAt: !2121)
!2167 = !DILocation(line: 628, column: 44, scope: !2168, inlinedAt: !2121)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !62, line: 628, column: 11)
!2169 = distinct !DILexicalBlock(scope: !569, file: !62, line: 627, column: 5)
!2170 = !DILocation(line: 628, column: 32, scope: !2168, inlinedAt: !2121)
!2171 = !DILocation(line: 628, column: 49, scope: !2168, inlinedAt: !2121)
!2172 = !DILocation(line: 628, column: 11, scope: !2169, inlinedAt: !2121)
!2173 = !DILocation(line: 630, column: 11, scope: !2174, inlinedAt: !2121)
!2174 = distinct !DILexicalBlock(scope: !2169, file: !62, line: 630, column: 11)
!2175 = !DILocation(line: 630, column: 11, scope: !2169, inlinedAt: !2121)
!2176 = !DILocation(line: 632, column: 26, scope: !2177, inlinedAt: !2121)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !62, line: 632, column: 15)
!2178 = distinct !DILexicalBlock(scope: !2174, file: !62, line: 631, column: 9)
!2179 = !DILocation(line: 632, column: 34, scope: !2177, inlinedAt: !2121)
!2180 = !DILocation(line: 632, column: 37, scope: !2177, inlinedAt: !2121)
!2181 = !DILocation(line: 632, column: 15, scope: !2178, inlinedAt: !2121)
!2182 = !DILocation(line: 640, column: 16, scope: !2169, inlinedAt: !2121)
!2183 = distinct !{!2183, !2164, !2184, !1179}
!2184 = !DILocation(line: 641, column: 5, scope: !569, inlinedAt: !2121)
!2185 = !DILocation(line: 644, column: 3, scope: !569, inlinedAt: !2121)
!2186 = !DILocation(line: 0, scope: !2054, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 648, column: 31, scope: !569, inlinedAt: !2121)
!2188 = !DILocation(line: 1361, column: 11, scope: !2054, inlinedAt: !2187)
!2189 = !DILocation(line: 1361, column: 10, scope: !2054, inlinedAt: !2187)
!2190 = !DILocation(line: 648, column: 31, scope: !569, inlinedAt: !2121)
!2191 = !DILocation(line: 0, scope: !2054, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 649, column: 31, scope: !569, inlinedAt: !2121)
!2193 = !DILocation(line: 1361, column: 11, scope: !2054, inlinedAt: !2192)
!2194 = !DILocation(line: 1361, column: 10, scope: !2054, inlinedAt: !2192)
!2195 = !DILocation(line: 649, column: 31, scope: !569, inlinedAt: !2121)
!2196 = !DILocation(line: 0, scope: !2054, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 650, column: 31, scope: !569, inlinedAt: !2121)
!2198 = !DILocation(line: 1361, column: 11, scope: !2054, inlinedAt: !2197)
!2199 = !DILocation(line: 1361, column: 10, scope: !2054, inlinedAt: !2197)
!2200 = !DILocation(line: 650, column: 31, scope: !569, inlinedAt: !2121)
!2201 = !DILocation(line: 0, scope: !2054, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 651, column: 31, scope: !569, inlinedAt: !2121)
!2203 = !DILocation(line: 1361, column: 11, scope: !2054, inlinedAt: !2202)
!2204 = !DILocation(line: 1361, column: 10, scope: !2054, inlinedAt: !2202)
!2205 = !DILocation(line: 651, column: 31, scope: !569, inlinedAt: !2121)
!2206 = !DILocation(line: 0, scope: !2054, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 652, column: 31, scope: !569, inlinedAt: !2121)
!2208 = !DILocation(line: 1361, column: 11, scope: !2054, inlinedAt: !2207)
!2209 = !DILocation(line: 1361, column: 10, scope: !2054, inlinedAt: !2207)
!2210 = !DILocation(line: 652, column: 31, scope: !569, inlinedAt: !2121)
!2211 = !DILocation(line: 0, scope: !2054, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 653, column: 31, scope: !569, inlinedAt: !2121)
!2213 = !DILocation(line: 1361, column: 11, scope: !2054, inlinedAt: !2212)
!2214 = !DILocation(line: 1361, column: 10, scope: !2054, inlinedAt: !2212)
!2215 = !DILocation(line: 653, column: 31, scope: !569, inlinedAt: !2121)
!2216 = !DILocation(line: 0, scope: !2054, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 654, column: 31, scope: !569, inlinedAt: !2121)
!2218 = !DILocation(line: 1361, column: 11, scope: !2054, inlinedAt: !2217)
!2219 = !DILocation(line: 1361, column: 10, scope: !2054, inlinedAt: !2217)
!2220 = !DILocation(line: 654, column: 31, scope: !569, inlinedAt: !2121)
!2221 = !DILocation(line: 0, scope: !2054, inlinedAt: !2222)
!2222 = distinct !DILocation(line: 655, column: 31, scope: !569, inlinedAt: !2121)
!2223 = !DILocation(line: 1361, column: 11, scope: !2054, inlinedAt: !2222)
!2224 = !DILocation(line: 1361, column: 10, scope: !2054, inlinedAt: !2222)
!2225 = !DILocation(line: 655, column: 31, scope: !569, inlinedAt: !2121)
!2226 = !DILocation(line: 0, scope: !2054, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 656, column: 31, scope: !569, inlinedAt: !2121)
!2228 = !DILocation(line: 1361, column: 11, scope: !2054, inlinedAt: !2227)
!2229 = !DILocation(line: 1361, column: 10, scope: !2054, inlinedAt: !2227)
!2230 = !DILocation(line: 656, column: 31, scope: !569, inlinedAt: !2121)
!2231 = !DILocation(line: 0, scope: !2054, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 657, column: 31, scope: !569, inlinedAt: !2121)
!2233 = !DILocation(line: 1361, column: 11, scope: !2054, inlinedAt: !2232)
!2234 = !DILocation(line: 1361, column: 10, scope: !2054, inlinedAt: !2232)
!2235 = !DILocation(line: 657, column: 31, scope: !569, inlinedAt: !2121)
!2236 = !DILocation(line: 663, column: 7, scope: !2237, inlinedAt: !2121)
!2237 = distinct !DILexicalBlock(scope: !569, file: !62, line: 663, column: 7)
!2238 = !DILocation(line: 664, column: 7, scope: !2237, inlinedAt: !2121)
!2239 = !DILocation(line: 664, column: 10, scope: !2237, inlinedAt: !2121)
!2240 = !DILocation(line: 663, column: 7, scope: !569, inlinedAt: !2121)
!2241 = !DILocation(line: 669, column: 7, scope: !2242, inlinedAt: !2121)
!2242 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 665, column: 5)
!2243 = !DILocation(line: 671, column: 5, scope: !2242, inlinedAt: !2121)
!2244 = !DILocation(line: 676, column: 7, scope: !2245, inlinedAt: !2121)
!2245 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 673, column: 5)
!2246 = !DILocation(line: 679, column: 3, scope: !569, inlinedAt: !2121)
!2247 = !DILocation(line: 683, column: 3, scope: !569, inlinedAt: !2121)
!2248 = !DILocation(line: 686, column: 3, scope: !569, inlinedAt: !2121)
!2249 = !DILocation(line: 688, column: 3, scope: !569, inlinedAt: !2121)
!2250 = !DILocation(line: 691, column: 3, scope: !569, inlinedAt: !2121)
!2251 = !DILocation(line: 695, column: 3, scope: !569, inlinedAt: !2121)
!2252 = !DILocation(line: 696, column: 1, scope: !569, inlinedAt: !2121)
!2253 = !DILocation(line: 409, column: 3, scope: !2115)
!2254 = !DILocation(line: 416, column: 1, scope: !2115)
!2255 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !661, file: !661, line: 50, type: !1084, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !2256)
!2256 = !{!2257}
!2257 = !DILocalVariable(name: "file", arg: 1, scope: !2255, file: !661, line: 50, type: !100)
!2258 = !DILocation(line: 0, scope: !2255)
!2259 = !DILocation(line: 52, column: 13, scope: !2255)
!2260 = !DILocation(line: 53, column: 1, scope: !2255)
!2261 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !661, file: !661, line: 87, type: !2262, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{null, !103}
!2264 = !{!2265}
!2265 = !DILocalVariable(name: "ignore", arg: 1, scope: !2261, file: !661, line: 87, type: !103)
!2266 = !DILocation(line: 0, scope: !2261)
!2267 = !DILocation(line: 89, column: 16, scope: !2261)
!2268 = !DILocation(line: 90, column: 1, scope: !2261)
!2269 = distinct !DISubprogram(name: "close_stdout", scope: !661, file: !661, line: 116, type: !342, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !2270)
!2270 = !{!2271}
!2271 = !DILocalVariable(name: "write_error", scope: !2272, file: !661, line: 121, type: !100)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !661, line: 120, column: 5)
!2273 = distinct !DILexicalBlock(scope: !2269, file: !661, line: 118, column: 7)
!2274 = !DILocation(line: 118, column: 21, scope: !2273)
!2275 = !DILocation(line: 118, column: 7, scope: !2273)
!2276 = !DILocation(line: 118, column: 29, scope: !2273)
!2277 = !DILocation(line: 119, column: 7, scope: !2273)
!2278 = !DILocation(line: 119, column: 12, scope: !2273)
!2279 = !DILocation(line: 119, column: 25, scope: !2273)
!2280 = !DILocation(line: 119, column: 28, scope: !2273)
!2281 = !DILocation(line: 119, column: 34, scope: !2273)
!2282 = !DILocation(line: 118, column: 7, scope: !2269)
!2283 = !DILocation(line: 121, column: 33, scope: !2272)
!2284 = !DILocation(line: 0, scope: !2272)
!2285 = !DILocation(line: 122, column: 11, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2272, file: !661, line: 122, column: 11)
!2287 = !DILocation(line: 0, scope: !2286)
!2288 = !DILocation(line: 122, column: 11, scope: !2272)
!2289 = !DILocation(line: 123, column: 9, scope: !2286)
!2290 = !DILocation(line: 126, column: 9, scope: !2286)
!2291 = !DILocation(line: 128, column: 14, scope: !2272)
!2292 = !DILocation(line: 128, column: 7, scope: !2272)
!2293 = !DILocation(line: 133, column: 42, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2269, file: !661, line: 133, column: 7)
!2295 = !DILocation(line: 133, column: 28, scope: !2294)
!2296 = !DILocation(line: 133, column: 50, scope: !2294)
!2297 = !DILocation(line: 133, column: 7, scope: !2269)
!2298 = !DILocation(line: 134, column: 12, scope: !2294)
!2299 = !DILocation(line: 134, column: 5, scope: !2294)
!2300 = !DILocation(line: 135, column: 1, scope: !2269)
!2301 = !DISubprogram(name: "_exit", scope: !2302, file: !2302, line: 624, type: !1053, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!2302 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2303 = distinct !DISubprogram(name: "verror", scope: !676, file: !676, line: 251, type: !2304, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !2306)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{null, !63, !63, !100, !686}
!2306 = !{!2307, !2308, !2309, !2310}
!2307 = !DILocalVariable(name: "status", arg: 1, scope: !2303, file: !676, line: 251, type: !63)
!2308 = !DILocalVariable(name: "errnum", arg: 2, scope: !2303, file: !676, line: 251, type: !63)
!2309 = !DILocalVariable(name: "message", arg: 3, scope: !2303, file: !676, line: 251, type: !100)
!2310 = !DILocalVariable(name: "args", arg: 4, scope: !2303, file: !676, line: 251, type: !686)
!2311 = !DILocation(line: 0, scope: !2303)
!2312 = !DILocation(line: 251, column: 1, scope: !2303)
!2313 = !DILocation(line: 261, column: 3, scope: !2303)
!2314 = !DILocation(line: 265, column: 7, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2303, file: !676, line: 265, column: 7)
!2316 = !DILocation(line: 265, column: 7, scope: !2303)
!2317 = !DILocation(line: 266, column: 5, scope: !2315)
!2318 = !DILocation(line: 272, column: 7, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2315, file: !676, line: 268, column: 5)
!2320 = !DILocation(line: 276, column: 3, scope: !2303)
!2321 = !{i64 0, i64 8, !1063, i64 8, i64 8, !1063, i64 16, i64 8, !1063, i64 24, i64 4, !1132, i64 28, i64 4, !1132}
!2322 = !DILocation(line: 282, column: 1, scope: !2303)
!2323 = distinct !DISubprogram(name: "flush_stdout", scope: !676, file: !676, line: 163, type: !342, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !2324)
!2324 = !{!2325}
!2325 = !DILocalVariable(name: "stdout_fd", scope: !2323, file: !676, line: 166, type: !63)
!2326 = !DILocation(line: 0, scope: !2323)
!2327 = !DILocalVariable(name: "fd", arg: 1, scope: !2328, file: !676, line: 145, type: !63)
!2328 = distinct !DISubprogram(name: "is_open", scope: !676, file: !676, line: 145, type: !1530, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !2329)
!2329 = !{!2327}
!2330 = !DILocation(line: 0, scope: !2328, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 182, column: 25, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2323, file: !676, line: 182, column: 7)
!2333 = !DILocation(line: 157, column: 15, scope: !2328, inlinedAt: !2331)
!2334 = !DILocation(line: 157, column: 12, scope: !2328, inlinedAt: !2331)
!2335 = !DILocation(line: 182, column: 7, scope: !2323)
!2336 = !DILocation(line: 184, column: 5, scope: !2332)
!2337 = !DILocation(line: 185, column: 1, scope: !2323)
!2338 = distinct !DISubprogram(name: "error_tail", scope: !676, file: !676, line: 219, type: !2304, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !2339)
!2339 = !{!2340, !2341, !2342, !2343}
!2340 = !DILocalVariable(name: "status", arg: 1, scope: !2338, file: !676, line: 219, type: !63)
!2341 = !DILocalVariable(name: "errnum", arg: 2, scope: !2338, file: !676, line: 219, type: !63)
!2342 = !DILocalVariable(name: "message", arg: 3, scope: !2338, file: !676, line: 219, type: !100)
!2343 = !DILocalVariable(name: "args", arg: 4, scope: !2338, file: !676, line: 219, type: !686)
!2344 = !DILocation(line: 0, scope: !2338)
!2345 = !DILocation(line: 219, column: 1, scope: !2338)
!2346 = !DILocation(line: 229, column: 13, scope: !2338)
!2347 = !DILocation(line: 135, column: 10, scope: !2348, inlinedAt: !2390)
!2348 = distinct !DISubprogram(name: "vfprintf", scope: !1119, file: !1119, line: 132, type: !2349, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !2386)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!63, !2351, !1123, !688}
!2351 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2352)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2354)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2355)
!2355 = !{!2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2354, file: !153, line: 51, baseType: !63, size: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2354, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2354, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2354, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2354, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2354, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2354, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2354, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2354, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2354, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2354, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2354, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2354, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2354, file: !153, line: 70, baseType: !2370, size: 64, offset: 832)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2354, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2354, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2354, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2354, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2354, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2354, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2354, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2354, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2354, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2354, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2354, file: !153, line: 93, baseType: !2370, size: 64, offset: 1344)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2354, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2354, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2354, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2354, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2386 = !{!2387, !2388, !2389}
!2387 = !DILocalVariable(name: "__stream", arg: 1, scope: !2348, file: !1119, line: 132, type: !2351)
!2388 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2348, file: !1119, line: 133, type: !1123)
!2389 = !DILocalVariable(name: "__ap", arg: 3, scope: !2348, file: !1119, line: 133, type: !688)
!2390 = distinct !DILocation(line: 229, column: 3, scope: !2338)
!2391 = !{!2392, !2394}
!2392 = distinct !{!2392, !2393, !"vfprintf.inline: argument 0"}
!2393 = distinct !{!2393, !"vfprintf.inline"}
!2394 = distinct !{!2394, !2393, !"vfprintf.inline: argument 1"}
!2395 = !DILocation(line: 229, column: 3, scope: !2338)
!2396 = !DILocation(line: 0, scope: !2348, inlinedAt: !2390)
!2397 = !DILocation(line: 133, column: 49, scope: !2348, inlinedAt: !2390)
!2398 = !DILocation(line: 232, column: 3, scope: !2338)
!2399 = !DILocation(line: 233, column: 7, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2338, file: !676, line: 233, column: 7)
!2401 = !DILocation(line: 233, column: 7, scope: !2338)
!2402 = !DILocalVariable(name: "errnum", arg: 1, scope: !2403, file: !676, line: 188, type: !63)
!2403 = distinct !DISubprogram(name: "print_errno_message", scope: !676, file: !676, line: 188, type: !1053, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !2404)
!2404 = !{!2402, !2405, !2406}
!2405 = !DILocalVariable(name: "s", scope: !2403, file: !676, line: 190, type: !100)
!2406 = !DILocalVariable(name: "errbuf", scope: !2403, file: !676, line: 193, type: !2407)
!2407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2408)
!2408 = !{!2409}
!2409 = !DISubrange(count: 1024)
!2410 = !DILocation(line: 0, scope: !2403, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 234, column: 5, scope: !2400)
!2412 = !DILocation(line: 193, column: 3, scope: !2403, inlinedAt: !2411)
!2413 = !DILocation(line: 193, column: 8, scope: !2403, inlinedAt: !2411)
!2414 = !DILocation(line: 195, column: 7, scope: !2403, inlinedAt: !2411)
!2415 = !DILocation(line: 207, column: 9, scope: !2416, inlinedAt: !2411)
!2416 = distinct !DILexicalBlock(scope: !2403, file: !676, line: 207, column: 7)
!2417 = !DILocation(line: 207, column: 7, scope: !2403, inlinedAt: !2411)
!2418 = !DILocation(line: 208, column: 9, scope: !2416, inlinedAt: !2411)
!2419 = !DILocation(line: 208, column: 5, scope: !2416, inlinedAt: !2411)
!2420 = !DILocation(line: 214, column: 3, scope: !2403, inlinedAt: !2411)
!2421 = !DILocation(line: 216, column: 1, scope: !2403, inlinedAt: !2411)
!2422 = !DILocation(line: 234, column: 5, scope: !2400)
!2423 = !DILocation(line: 238, column: 3, scope: !2338)
!2424 = !DILocalVariable(name: "__c", arg: 1, scope: !2425, file: !1368, line: 101, type: !63)
!2425 = distinct !DISubprogram(name: "putc_unlocked", scope: !1368, file: !1368, line: 101, type: !2426, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !2428)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!63, !63, !2352}
!2428 = !{!2424, !2429}
!2429 = !DILocalVariable(name: "__stream", arg: 2, scope: !2425, file: !1368, line: 101, type: !2352)
!2430 = !DILocation(line: 0, scope: !2425, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 238, column: 3, scope: !2338)
!2432 = !DILocation(line: 103, column: 10, scope: !2425, inlinedAt: !2431)
!2433 = !DILocation(line: 240, column: 3, scope: !2338)
!2434 = !DILocation(line: 241, column: 7, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2338, file: !676, line: 241, column: 7)
!2436 = !DILocation(line: 241, column: 7, scope: !2338)
!2437 = !DILocation(line: 242, column: 5, scope: !2435)
!2438 = !DILocation(line: 243, column: 1, scope: !2338)
!2439 = !DISubprogram(name: "__vfprintf_chk", scope: !1119, file: !1119, line: 96, type: !2440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!63, !2351, !63, !1123, !688}
!2442 = !DISubprogram(name: "strerror_r", scope: !1249, file: !1249, line: 444, type: !2443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!94, !63, !94, !97}
!2445 = !DISubprogram(name: "fcntl", scope: !2446, file: !2446, line: 149, type: !2447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!2446 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!63, !63, !63, null}
!2449 = distinct !DISubprogram(name: "error", scope: !676, file: !676, line: 285, type: !2450, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !2452)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{null, !63, !63, !100, null}
!2452 = !{!2453, !2454, !2455, !2456}
!2453 = !DILocalVariable(name: "status", arg: 1, scope: !2449, file: !676, line: 285, type: !63)
!2454 = !DILocalVariable(name: "errnum", arg: 2, scope: !2449, file: !676, line: 285, type: !63)
!2455 = !DILocalVariable(name: "message", arg: 3, scope: !2449, file: !676, line: 285, type: !100)
!2456 = !DILocalVariable(name: "ap", scope: !2449, file: !676, line: 287, type: !686)
!2457 = !DILocation(line: 0, scope: !2449)
!2458 = !DILocation(line: 287, column: 3, scope: !2449)
!2459 = !DILocation(line: 287, column: 11, scope: !2449)
!2460 = !DILocation(line: 288, column: 3, scope: !2449)
!2461 = !DILocation(line: 289, column: 3, scope: !2449)
!2462 = !DILocation(line: 290, column: 3, scope: !2449)
!2463 = !DILocation(line: 291, column: 1, scope: !2449)
!2464 = !DILocation(line: 0, scope: !683)
!2465 = !DILocation(line: 298, column: 1, scope: !683)
!2466 = !DILocation(line: 302, column: 7, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !683, file: !676, line: 302, column: 7)
!2468 = !DILocation(line: 302, column: 7, scope: !683)
!2469 = !DILocation(line: 307, column: 11, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !676, line: 307, column: 11)
!2471 = distinct !DILexicalBlock(scope: !2467, file: !676, line: 303, column: 5)
!2472 = !DILocation(line: 307, column: 27, scope: !2470)
!2473 = !DILocation(line: 308, column: 11, scope: !2470)
!2474 = !DILocation(line: 308, column: 28, scope: !2470)
!2475 = !DILocation(line: 308, column: 25, scope: !2470)
!2476 = !DILocation(line: 309, column: 15, scope: !2470)
!2477 = !DILocation(line: 309, column: 33, scope: !2470)
!2478 = !DILocation(line: 310, column: 19, scope: !2470)
!2479 = !DILocation(line: 311, column: 22, scope: !2470)
!2480 = !DILocation(line: 311, column: 56, scope: !2470)
!2481 = !DILocation(line: 307, column: 11, scope: !2471)
!2482 = !DILocation(line: 316, column: 21, scope: !2471)
!2483 = !DILocation(line: 317, column: 23, scope: !2471)
!2484 = !DILocation(line: 318, column: 5, scope: !2471)
!2485 = !DILocation(line: 327, column: 3, scope: !683)
!2486 = !DILocation(line: 331, column: 7, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !683, file: !676, line: 331, column: 7)
!2488 = !DILocation(line: 331, column: 7, scope: !683)
!2489 = !DILocation(line: 332, column: 5, scope: !2487)
!2490 = !DILocation(line: 338, column: 7, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2487, file: !676, line: 334, column: 5)
!2492 = !DILocation(line: 346, column: 3, scope: !683)
!2493 = !DILocation(line: 350, column: 3, scope: !683)
!2494 = !DILocation(line: 356, column: 1, scope: !683)
!2495 = distinct !DISubprogram(name: "error_at_line", scope: !676, file: !676, line: 359, type: !2496, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{null, !63, !63, !100, !69, !100, null}
!2498 = !{!2499, !2500, !2501, !2502, !2503, !2504}
!2499 = !DILocalVariable(name: "status", arg: 1, scope: !2495, file: !676, line: 359, type: !63)
!2500 = !DILocalVariable(name: "errnum", arg: 2, scope: !2495, file: !676, line: 359, type: !63)
!2501 = !DILocalVariable(name: "file_name", arg: 3, scope: !2495, file: !676, line: 359, type: !100)
!2502 = !DILocalVariable(name: "line_number", arg: 4, scope: !2495, file: !676, line: 360, type: !69)
!2503 = !DILocalVariable(name: "message", arg: 5, scope: !2495, file: !676, line: 360, type: !100)
!2504 = !DILocalVariable(name: "ap", scope: !2495, file: !676, line: 362, type: !686)
!2505 = !DILocation(line: 0, scope: !2495)
!2506 = !DILocation(line: 362, column: 3, scope: !2495)
!2507 = !DILocation(line: 362, column: 11, scope: !2495)
!2508 = !DILocation(line: 363, column: 3, scope: !2495)
!2509 = !DILocation(line: 364, column: 3, scope: !2495)
!2510 = !DILocation(line: 366, column: 3, scope: !2495)
!2511 = !DILocation(line: 367, column: 1, scope: !2495)
!2512 = distinct !DISubprogram(name: "fdadvise", scope: !979, file: !979, line: 25, type: !2513, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !978, retainedNodes: !2517)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{null, !63, !2515, !2515, !2516}
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !687, line: 63, baseType: !175)
!2516 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !426, line: 51, baseType: !425)
!2517 = !{!2518, !2519, !2520, !2521}
!2518 = !DILocalVariable(name: "fd", arg: 1, scope: !2512, file: !979, line: 25, type: !63)
!2519 = !DILocalVariable(name: "offset", arg: 2, scope: !2512, file: !979, line: 25, type: !2515)
!2520 = !DILocalVariable(name: "len", arg: 3, scope: !2512, file: !979, line: 25, type: !2515)
!2521 = !DILocalVariable(name: "advice", arg: 4, scope: !2512, file: !979, line: 25, type: !2516)
!2522 = !DILocation(line: 0, scope: !2512)
!2523 = !DILocation(line: 28, column: 3, scope: !2512)
!2524 = !DILocation(line: 30, column: 1, scope: !2512)
!2525 = !DISubprogram(name: "posix_fadvise", scope: !2446, file: !2446, line: 273, type: !2526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!63, !63, !2515, !2515, !63}
!2528 = distinct !DISubprogram(name: "fadvise", scope: !979, file: !979, line: 33, type: !2529, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !978, retainedNodes: !2565)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{null, !2531, !2516}
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2533)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2534)
!2534 = !{!2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2533, file: !153, line: 51, baseType: !63, size: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2533, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2533, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2533, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2533, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2533, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2533, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2533, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2533, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2533, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2533, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2533, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2533, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2533, file: !153, line: 70, baseType: !2549, size: 64, offset: 832)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2533, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2533, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2533, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2533, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2533, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2533, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2533, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2533, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2533, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2533, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2533, file: !153, line: 93, baseType: !2549, size: 64, offset: 1344)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2533, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2533, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2533, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2533, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2565 = !{!2566, !2567}
!2566 = !DILocalVariable(name: "fp", arg: 1, scope: !2528, file: !979, line: 33, type: !2531)
!2567 = !DILocalVariable(name: "advice", arg: 2, scope: !2528, file: !979, line: 33, type: !2516)
!2568 = !DILocation(line: 0, scope: !2528)
!2569 = !DILocation(line: 35, column: 7, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2528, file: !979, line: 35, column: 7)
!2571 = !DILocation(line: 35, column: 7, scope: !2528)
!2572 = !DILocation(line: 36, column: 15, scope: !2570)
!2573 = !DILocation(line: 0, scope: !2512, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 36, column: 5, scope: !2570)
!2575 = !DILocation(line: 28, column: 3, scope: !2512, inlinedAt: !2574)
!2576 = !DILocation(line: 36, column: 5, scope: !2570)
!2577 = !DILocation(line: 37, column: 1, scope: !2528)
!2578 = !DISubprogram(name: "fileno", scope: !687, file: !687, line: 809, type: !2579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!63, !2531}
!2581 = distinct !DISubprogram(name: "rpl_fclose", scope: !982, file: !982, line: 58, type: !2582, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !981, retainedNodes: !2618)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!63, !2584}
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2586)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2587)
!2587 = !{!2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2586, file: !153, line: 51, baseType: !63, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2586, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2586, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2586, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2586, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2586, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2586, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2586, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2586, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2586, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2586, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2586, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2586, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2586, file: !153, line: 70, baseType: !2602, size: 64, offset: 832)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2586, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2586, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2586, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2586, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2586, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2586, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2586, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2586, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2586, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2586, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2586, file: !153, line: 93, baseType: !2602, size: 64, offset: 1344)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2586, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2586, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2586, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2586, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2618 = !{!2619, !2620, !2621, !2622}
!2619 = !DILocalVariable(name: "fp", arg: 1, scope: !2581, file: !982, line: 58, type: !2584)
!2620 = !DILocalVariable(name: "saved_errno", scope: !2581, file: !982, line: 60, type: !63)
!2621 = !DILocalVariable(name: "fd", scope: !2581, file: !982, line: 63, type: !63)
!2622 = !DILocalVariable(name: "result", scope: !2581, file: !982, line: 74, type: !63)
!2623 = !DILocation(line: 0, scope: !2581)
!2624 = !DILocation(line: 63, column: 12, scope: !2581)
!2625 = !DILocation(line: 64, column: 10, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2581, file: !982, line: 64, column: 7)
!2627 = !DILocation(line: 64, column: 7, scope: !2581)
!2628 = !DILocation(line: 65, column: 12, scope: !2626)
!2629 = !DILocation(line: 65, column: 5, scope: !2626)
!2630 = !DILocation(line: 70, column: 9, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2581, file: !982, line: 70, column: 7)
!2632 = !DILocation(line: 70, column: 23, scope: !2631)
!2633 = !DILocation(line: 70, column: 33, scope: !2631)
!2634 = !DILocation(line: 70, column: 26, scope: !2631)
!2635 = !DILocation(line: 70, column: 59, scope: !2631)
!2636 = !DILocation(line: 71, column: 7, scope: !2631)
!2637 = !DILocation(line: 71, column: 10, scope: !2631)
!2638 = !DILocation(line: 70, column: 7, scope: !2581)
!2639 = !DILocation(line: 100, column: 12, scope: !2581)
!2640 = !DILocation(line: 105, column: 7, scope: !2581)
!2641 = !DILocation(line: 72, column: 19, scope: !2631)
!2642 = !DILocation(line: 105, column: 19, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2581, file: !982, line: 105, column: 7)
!2644 = !DILocation(line: 107, column: 13, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2643, file: !982, line: 106, column: 5)
!2646 = !DILocation(line: 109, column: 5, scope: !2645)
!2647 = !DILocation(line: 112, column: 1, scope: !2581)
!2648 = !DISubprogram(name: "fclose", scope: !687, file: !687, line: 178, type: !2582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!2649 = !DISubprogram(name: "__freading", scope: !2650, file: !2650, line: 51, type: !2582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!2650 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2651 = !DISubprogram(name: "lseek", scope: !2302, file: !2302, line: 339, type: !2652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!175, !63, !175, !63}
!2654 = distinct !DISubprogram(name: "rpl_fflush", scope: !984, file: !984, line: 130, type: !2655, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !983, retainedNodes: !2691)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!63, !2657}
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2659)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2660)
!2660 = !{!2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2659, file: !153, line: 51, baseType: !63, size: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2659, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2659, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2659, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2659, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2659, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2659, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2659, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2659, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2659, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2659, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2659, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2659, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2659, file: !153, line: 70, baseType: !2675, size: 64, offset: 832)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2659, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2659, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2659, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2659, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2659, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2659, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2659, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2659, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2659, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2659, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2659, file: !153, line: 93, baseType: !2675, size: 64, offset: 1344)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2659, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2659, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2659, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2659, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2691 = !{!2692}
!2692 = !DILocalVariable(name: "stream", arg: 1, scope: !2654, file: !984, line: 130, type: !2657)
!2693 = !DILocation(line: 0, scope: !2654)
!2694 = !DILocation(line: 151, column: 14, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2654, file: !984, line: 151, column: 7)
!2696 = !DILocation(line: 151, column: 22, scope: !2695)
!2697 = !DILocation(line: 151, column: 27, scope: !2695)
!2698 = !DILocation(line: 151, column: 7, scope: !2654)
!2699 = !DILocation(line: 152, column: 12, scope: !2695)
!2700 = !DILocation(line: 152, column: 5, scope: !2695)
!2701 = !DILocalVariable(name: "fp", arg: 1, scope: !2702, file: !984, line: 42, type: !2657)
!2702 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !984, file: !984, line: 42, type: !2703, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !983, retainedNodes: !2705)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{null, !2657}
!2705 = !{!2701}
!2706 = !DILocation(line: 0, scope: !2702, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 157, column: 3, scope: !2654)
!2708 = !DILocation(line: 44, column: 12, scope: !2709, inlinedAt: !2707)
!2709 = distinct !DILexicalBlock(scope: !2702, file: !984, line: 44, column: 7)
!2710 = !DILocation(line: 44, column: 19, scope: !2709, inlinedAt: !2707)
!2711 = !DILocation(line: 44, column: 7, scope: !2702, inlinedAt: !2707)
!2712 = !DILocation(line: 46, column: 5, scope: !2709, inlinedAt: !2707)
!2713 = !DILocation(line: 159, column: 10, scope: !2654)
!2714 = !DILocation(line: 159, column: 3, scope: !2654)
!2715 = !DILocation(line: 236, column: 1, scope: !2654)
!2716 = !DISubprogram(name: "fflush", scope: !687, file: !687, line: 230, type: !2655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!2717 = distinct !DISubprogram(name: "fpurge", scope: !987, file: !987, line: 32, type: !2718, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !2754)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!63, !2720}
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2722)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2723)
!2723 = !{!2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2722, file: !153, line: 51, baseType: !63, size: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2722, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2722, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2722, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2722, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2722, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2722, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2722, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2722, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2722, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2722, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2722, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2722, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2722, file: !153, line: 70, baseType: !2738, size: 64, offset: 832)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2722, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2722, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2722, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2722, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2722, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2722, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2722, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2722, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2722, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2722, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2722, file: !153, line: 93, baseType: !2738, size: 64, offset: 1344)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2722, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2722, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2722, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2722, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2754 = !{!2755}
!2755 = !DILocalVariable(name: "fp", arg: 1, scope: !2717, file: !987, line: 32, type: !2720)
!2756 = !DILocation(line: 0, scope: !2717)
!2757 = !DILocation(line: 36, column: 3, scope: !2717)
!2758 = !DILocation(line: 38, column: 3, scope: !2717)
!2759 = !DISubprogram(name: "__fpurge", scope: !2650, file: !2650, line: 72, type: !2760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{null, !2720}
!2762 = distinct !DISubprogram(name: "rpl_fseeko", scope: !989, file: !989, line: 28, type: !2763, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !988, retainedNodes: !2799)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!63, !2765, !2515, !63}
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2767)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2768)
!2768 = !{!2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2767, file: !153, line: 51, baseType: !63, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2767, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2767, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2767, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2767, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2767, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2767, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2767, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2767, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2767, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2767, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2767, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2767, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2767, file: !153, line: 70, baseType: !2783, size: 64, offset: 832)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2767, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2767, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2767, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2767, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2767, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2767, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2767, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2767, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2767, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2767, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2767, file: !153, line: 93, baseType: !2783, size: 64, offset: 1344)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2767, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2767, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2767, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2767, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2799 = !{!2800, !2801, !2802, !2803}
!2800 = !DILocalVariable(name: "fp", arg: 1, scope: !2762, file: !989, line: 28, type: !2765)
!2801 = !DILocalVariable(name: "offset", arg: 2, scope: !2762, file: !989, line: 28, type: !2515)
!2802 = !DILocalVariable(name: "whence", arg: 3, scope: !2762, file: !989, line: 28, type: !63)
!2803 = !DILocalVariable(name: "pos", scope: !2804, file: !989, line: 123, type: !2515)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !989, line: 119, column: 5)
!2805 = distinct !DILexicalBlock(scope: !2762, file: !989, line: 55, column: 7)
!2806 = !DILocation(line: 0, scope: !2762)
!2807 = !DILocation(line: 55, column: 12, scope: !2805)
!2808 = !{!1376, !1064, i64 16}
!2809 = !DILocation(line: 55, column: 33, scope: !2805)
!2810 = !{!1376, !1064, i64 8}
!2811 = !DILocation(line: 55, column: 25, scope: !2805)
!2812 = !DILocation(line: 56, column: 7, scope: !2805)
!2813 = !DILocation(line: 56, column: 15, scope: !2805)
!2814 = !DILocation(line: 56, column: 37, scope: !2805)
!2815 = !{!1376, !1064, i64 32}
!2816 = !DILocation(line: 56, column: 29, scope: !2805)
!2817 = !DILocation(line: 57, column: 7, scope: !2805)
!2818 = !DILocation(line: 57, column: 15, scope: !2805)
!2819 = !{!1376, !1064, i64 72}
!2820 = !DILocation(line: 57, column: 29, scope: !2805)
!2821 = !DILocation(line: 55, column: 7, scope: !2762)
!2822 = !DILocation(line: 123, column: 26, scope: !2804)
!2823 = !DILocation(line: 123, column: 19, scope: !2804)
!2824 = !DILocation(line: 0, scope: !2804)
!2825 = !DILocation(line: 124, column: 15, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2804, file: !989, line: 124, column: 11)
!2827 = !DILocation(line: 124, column: 11, scope: !2804)
!2828 = !DILocation(line: 135, column: 19, scope: !2804)
!2829 = !DILocation(line: 136, column: 12, scope: !2804)
!2830 = !DILocation(line: 136, column: 20, scope: !2804)
!2831 = !{!1376, !1349, i64 144}
!2832 = !DILocation(line: 167, column: 7, scope: !2804)
!2833 = !DILocation(line: 169, column: 10, scope: !2762)
!2834 = !DILocation(line: 169, column: 3, scope: !2762)
!2835 = !DILocation(line: 170, column: 1, scope: !2762)
!2836 = !DISubprogram(name: "fseeko", scope: !687, file: !687, line: 736, type: !2837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!63, !2765, !175, !63}
!2839 = distinct !DISubprogram(name: "getprogname", scope: !991, file: !991, line: 54, type: !2840, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !990, retainedNodes: !1072)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!100}
!2842 = !DILocation(line: 58, column: 10, scope: !2839)
!2843 = !DILocation(line: 58, column: 3, scope: !2839)
!2844 = distinct !DISubprogram(name: "set_program_name", scope: !728, file: !728, line: 37, type: !1084, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !2845)
!2845 = !{!2846, !2847, !2848}
!2846 = !DILocalVariable(name: "argv0", arg: 1, scope: !2844, file: !728, line: 37, type: !100)
!2847 = !DILocalVariable(name: "slash", scope: !2844, file: !728, line: 44, type: !100)
!2848 = !DILocalVariable(name: "base", scope: !2844, file: !728, line: 45, type: !100)
!2849 = !DILocation(line: 0, scope: !2844)
!2850 = !DILocation(line: 44, column: 23, scope: !2844)
!2851 = !DILocation(line: 45, column: 22, scope: !2844)
!2852 = !DILocation(line: 46, column: 17, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2844, file: !728, line: 46, column: 7)
!2854 = !DILocation(line: 46, column: 9, scope: !2853)
!2855 = !DILocation(line: 46, column: 25, scope: !2853)
!2856 = !DILocation(line: 46, column: 40, scope: !2853)
!2857 = !DILocalVariable(name: "__s1", arg: 1, scope: !2858, file: !1145, line: 974, type: !1277)
!2858 = distinct !DISubprogram(name: "memeq", scope: !1145, file: !1145, line: 974, type: !2859, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !2861)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!103, !1277, !1277, !97}
!2861 = !{!2857, !2862, !2863}
!2862 = !DILocalVariable(name: "__s2", arg: 2, scope: !2858, file: !1145, line: 974, type: !1277)
!2863 = !DILocalVariable(name: "__n", arg: 3, scope: !2858, file: !1145, line: 974, type: !97)
!2864 = !DILocation(line: 0, scope: !2858, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 46, column: 28, scope: !2853)
!2866 = !DILocation(line: 976, column: 11, scope: !2858, inlinedAt: !2865)
!2867 = !DILocation(line: 976, column: 10, scope: !2858, inlinedAt: !2865)
!2868 = !DILocation(line: 46, column: 7, scope: !2844)
!2869 = !DILocation(line: 49, column: 11, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !728, line: 49, column: 11)
!2871 = distinct !DILexicalBlock(scope: !2853, file: !728, line: 47, column: 5)
!2872 = !DILocation(line: 49, column: 36, scope: !2870)
!2873 = !DILocation(line: 49, column: 11, scope: !2871)
!2874 = !DILocation(line: 65, column: 16, scope: !2844)
!2875 = !DILocation(line: 71, column: 27, scope: !2844)
!2876 = !DILocation(line: 74, column: 33, scope: !2844)
!2877 = !DILocation(line: 76, column: 1, scope: !2844)
!2878 = !DISubprogram(name: "strrchr", scope: !1249, file: !1249, line: 273, type: !1264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!2879 = !DILocation(line: 0, scope: !737)
!2880 = !DILocation(line: 40, column: 29, scope: !737)
!2881 = !DILocation(line: 41, column: 19, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !737, file: !738, line: 41, column: 7)
!2883 = !DILocation(line: 41, column: 7, scope: !737)
!2884 = !DILocation(line: 47, column: 3, scope: !737)
!2885 = !DILocation(line: 48, column: 3, scope: !737)
!2886 = !DILocation(line: 48, column: 13, scope: !737)
!2887 = !DILocalVariable(name: "ps", arg: 1, scope: !2888, file: !2889, line: 1135, type: !2892)
!2888 = distinct !DISubprogram(name: "mbszero", scope: !2889, file: !2889, line: 1135, type: !2890, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !2893)
!2889 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2890 = !DISubroutineType(types: !2891)
!2891 = !{null, !2892}
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!2893 = !{!2887}
!2894 = !DILocation(line: 0, scope: !2888, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 48, column: 18, scope: !737)
!2896 = !DILocalVariable(name: "__dest", arg: 1, scope: !2897, file: !1386, line: 57, type: !95)
!2897 = distinct !DISubprogram(name: "memset", scope: !1386, file: !1386, line: 57, type: !2898, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !2900)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!95, !95, !63, !97}
!2900 = !{!2896, !2901, !2902}
!2901 = !DILocalVariable(name: "__ch", arg: 2, scope: !2897, file: !1386, line: 57, type: !63)
!2902 = !DILocalVariable(name: "__len", arg: 3, scope: !2897, file: !1386, line: 57, type: !97)
!2903 = !DILocation(line: 0, scope: !2897, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 1137, column: 3, scope: !2888, inlinedAt: !2895)
!2905 = !DILocation(line: 59, column: 10, scope: !2897, inlinedAt: !2904)
!2906 = !DILocation(line: 49, column: 7, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !737, file: !738, line: 49, column: 7)
!2908 = !DILocation(line: 49, column: 39, scope: !2907)
!2909 = !DILocation(line: 49, column: 44, scope: !2907)
!2910 = !DILocation(line: 54, column: 1, scope: !737)
!2911 = distinct !DISubprogram(name: "clone_quoting_options", scope: !764, file: !764, line: 113, type: !2912, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !2915)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!2914, !2914}
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!2915 = !{!2916, !2917, !2918}
!2916 = !DILocalVariable(name: "o", arg: 1, scope: !2911, file: !764, line: 113, type: !2914)
!2917 = !DILocalVariable(name: "saved_errno", scope: !2911, file: !764, line: 115, type: !63)
!2918 = !DILocalVariable(name: "p", scope: !2911, file: !764, line: 116, type: !2914)
!2919 = !DILocation(line: 0, scope: !2911)
!2920 = !DILocation(line: 115, column: 21, scope: !2911)
!2921 = !DILocation(line: 116, column: 40, scope: !2911)
!2922 = !DILocation(line: 116, column: 31, scope: !2911)
!2923 = !DILocation(line: 118, column: 9, scope: !2911)
!2924 = !DILocation(line: 119, column: 3, scope: !2911)
!2925 = distinct !DISubprogram(name: "get_quoting_style", scope: !764, file: !764, line: 124, type: !2926, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !2930)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!411, !2928}
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !803)
!2930 = !{!2931}
!2931 = !DILocalVariable(name: "o", arg: 1, scope: !2925, file: !764, line: 124, type: !2928)
!2932 = !DILocation(line: 0, scope: !2925)
!2933 = !DILocation(line: 126, column: 11, scope: !2925)
!2934 = !DILocation(line: 126, column: 46, scope: !2925)
!2935 = !{!2936, !1065, i64 0}
!2936 = !{!"quoting_options", !1065, i64 0, !1133, i64 4, !1065, i64 8, !1064, i64 40, !1064, i64 48}
!2937 = !DILocation(line: 126, column: 3, scope: !2925)
!2938 = distinct !DISubprogram(name: "set_quoting_style", scope: !764, file: !764, line: 132, type: !2939, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !2941)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{null, !2914, !411}
!2941 = !{!2942, !2943}
!2942 = !DILocalVariable(name: "o", arg: 1, scope: !2938, file: !764, line: 132, type: !2914)
!2943 = !DILocalVariable(name: "s", arg: 2, scope: !2938, file: !764, line: 132, type: !411)
!2944 = !DILocation(line: 0, scope: !2938)
!2945 = !DILocation(line: 134, column: 4, scope: !2938)
!2946 = !DILocation(line: 134, column: 45, scope: !2938)
!2947 = !DILocation(line: 135, column: 1, scope: !2938)
!2948 = distinct !DISubprogram(name: "set_char_quoting", scope: !764, file: !764, line: 143, type: !2949, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !2951)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!63, !2914, !4, !63}
!2951 = !{!2952, !2953, !2954, !2955, !2956, !2958, !2959}
!2952 = !DILocalVariable(name: "o", arg: 1, scope: !2948, file: !764, line: 143, type: !2914)
!2953 = !DILocalVariable(name: "c", arg: 2, scope: !2948, file: !764, line: 143, type: !4)
!2954 = !DILocalVariable(name: "i", arg: 3, scope: !2948, file: !764, line: 143, type: !63)
!2955 = !DILocalVariable(name: "uc", scope: !2948, file: !764, line: 145, type: !102)
!2956 = !DILocalVariable(name: "p", scope: !2948, file: !764, line: 146, type: !2957)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2958 = !DILocalVariable(name: "shift", scope: !2948, file: !764, line: 148, type: !63)
!2959 = !DILocalVariable(name: "r", scope: !2948, file: !764, line: 149, type: !69)
!2960 = !DILocation(line: 0, scope: !2948)
!2961 = !DILocation(line: 147, column: 6, scope: !2948)
!2962 = !DILocation(line: 147, column: 41, scope: !2948)
!2963 = !DILocation(line: 147, column: 62, scope: !2948)
!2964 = !DILocation(line: 147, column: 57, scope: !2948)
!2965 = !DILocation(line: 148, column: 15, scope: !2948)
!2966 = !DILocation(line: 149, column: 21, scope: !2948)
!2967 = !DILocation(line: 149, column: 24, scope: !2948)
!2968 = !DILocation(line: 149, column: 34, scope: !2948)
!2969 = !DILocation(line: 150, column: 19, scope: !2948)
!2970 = !DILocation(line: 150, column: 24, scope: !2948)
!2971 = !DILocation(line: 150, column: 6, scope: !2948)
!2972 = !DILocation(line: 151, column: 3, scope: !2948)
!2973 = distinct !DISubprogram(name: "set_quoting_flags", scope: !764, file: !764, line: 159, type: !2974, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!63, !2914, !63}
!2976 = !{!2977, !2978, !2979}
!2977 = !DILocalVariable(name: "o", arg: 1, scope: !2973, file: !764, line: 159, type: !2914)
!2978 = !DILocalVariable(name: "i", arg: 2, scope: !2973, file: !764, line: 159, type: !63)
!2979 = !DILocalVariable(name: "r", scope: !2973, file: !764, line: 163, type: !63)
!2980 = !DILocation(line: 0, scope: !2973)
!2981 = !DILocation(line: 161, column: 8, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2973, file: !764, line: 161, column: 7)
!2983 = !DILocation(line: 161, column: 7, scope: !2973)
!2984 = !DILocation(line: 163, column: 14, scope: !2973)
!2985 = !{!2936, !1133, i64 4}
!2986 = !DILocation(line: 164, column: 12, scope: !2973)
!2987 = !DILocation(line: 165, column: 3, scope: !2973)
!2988 = distinct !DISubprogram(name: "set_custom_quoting", scope: !764, file: !764, line: 169, type: !2989, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{null, !2914, !100, !100}
!2991 = !{!2992, !2993, !2994}
!2992 = !DILocalVariable(name: "o", arg: 1, scope: !2988, file: !764, line: 169, type: !2914)
!2993 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2988, file: !764, line: 170, type: !100)
!2994 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2988, file: !764, line: 170, type: !100)
!2995 = !DILocation(line: 0, scope: !2988)
!2996 = !DILocation(line: 172, column: 8, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2988, file: !764, line: 172, column: 7)
!2998 = !DILocation(line: 172, column: 7, scope: !2988)
!2999 = !DILocation(line: 174, column: 12, scope: !2988)
!3000 = !DILocation(line: 175, column: 8, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2988, file: !764, line: 175, column: 7)
!3002 = !DILocation(line: 175, column: 19, scope: !3001)
!3003 = !DILocation(line: 176, column: 5, scope: !3001)
!3004 = !DILocation(line: 177, column: 6, scope: !2988)
!3005 = !DILocation(line: 177, column: 17, scope: !2988)
!3006 = !{!2936, !1064, i64 40}
!3007 = !DILocation(line: 178, column: 6, scope: !2988)
!3008 = !DILocation(line: 178, column: 18, scope: !2988)
!3009 = !{!2936, !1064, i64 48}
!3010 = !DILocation(line: 179, column: 1, scope: !2988)
!3011 = !DISubprogram(name: "abort", scope: !1253, file: !1253, line: 598, type: !342, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!3012 = distinct !DISubprogram(name: "quotearg_buffer", scope: !764, file: !764, line: 774, type: !3013, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3015)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!97, !94, !97, !100, !97, !2928}
!3015 = !{!3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023}
!3016 = !DILocalVariable(name: "buffer", arg: 1, scope: !3012, file: !764, line: 774, type: !94)
!3017 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3012, file: !764, line: 774, type: !97)
!3018 = !DILocalVariable(name: "arg", arg: 3, scope: !3012, file: !764, line: 775, type: !100)
!3019 = !DILocalVariable(name: "argsize", arg: 4, scope: !3012, file: !764, line: 775, type: !97)
!3020 = !DILocalVariable(name: "o", arg: 5, scope: !3012, file: !764, line: 776, type: !2928)
!3021 = !DILocalVariable(name: "p", scope: !3012, file: !764, line: 778, type: !2928)
!3022 = !DILocalVariable(name: "saved_errno", scope: !3012, file: !764, line: 779, type: !63)
!3023 = !DILocalVariable(name: "r", scope: !3012, file: !764, line: 780, type: !97)
!3024 = !DILocation(line: 0, scope: !3012)
!3025 = !DILocation(line: 778, column: 37, scope: !3012)
!3026 = !DILocation(line: 779, column: 21, scope: !3012)
!3027 = !DILocation(line: 781, column: 43, scope: !3012)
!3028 = !DILocation(line: 781, column: 53, scope: !3012)
!3029 = !DILocation(line: 781, column: 63, scope: !3012)
!3030 = !DILocation(line: 782, column: 43, scope: !3012)
!3031 = !DILocation(line: 782, column: 58, scope: !3012)
!3032 = !DILocation(line: 780, column: 14, scope: !3012)
!3033 = !DILocation(line: 783, column: 9, scope: !3012)
!3034 = !DILocation(line: 784, column: 3, scope: !3012)
!3035 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !764, file: !764, line: 251, type: !3036, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3040)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!97, !94, !97, !100, !97, !411, !63, !3038, !100, !100}
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!3040 = !{!3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3065, !3067, !3070, !3071, !3072, !3073, !3076, !3077, !3080, !3084, !3085, !3093, !3096, !3097, !3099, !3100, !3101, !3102}
!3041 = !DILocalVariable(name: "buffer", arg: 1, scope: !3035, file: !764, line: 251, type: !94)
!3042 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3035, file: !764, line: 251, type: !97)
!3043 = !DILocalVariable(name: "arg", arg: 3, scope: !3035, file: !764, line: 252, type: !100)
!3044 = !DILocalVariable(name: "argsize", arg: 4, scope: !3035, file: !764, line: 252, type: !97)
!3045 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3035, file: !764, line: 253, type: !411)
!3046 = !DILocalVariable(name: "flags", arg: 6, scope: !3035, file: !764, line: 253, type: !63)
!3047 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3035, file: !764, line: 254, type: !3038)
!3048 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3035, file: !764, line: 255, type: !100)
!3049 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3035, file: !764, line: 256, type: !100)
!3050 = !DILocalVariable(name: "unibyte_locale", scope: !3035, file: !764, line: 258, type: !103)
!3051 = !DILocalVariable(name: "len", scope: !3035, file: !764, line: 260, type: !97)
!3052 = !DILocalVariable(name: "orig_buffersize", scope: !3035, file: !764, line: 261, type: !97)
!3053 = !DILocalVariable(name: "quote_string", scope: !3035, file: !764, line: 262, type: !100)
!3054 = !DILocalVariable(name: "quote_string_len", scope: !3035, file: !764, line: 263, type: !97)
!3055 = !DILocalVariable(name: "backslash_escapes", scope: !3035, file: !764, line: 264, type: !103)
!3056 = !DILocalVariable(name: "elide_outer_quotes", scope: !3035, file: !764, line: 265, type: !103)
!3057 = !DILocalVariable(name: "encountered_single_quote", scope: !3035, file: !764, line: 266, type: !103)
!3058 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3035, file: !764, line: 267, type: !103)
!3059 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3035, file: !764, line: 309, type: !103)
!3060 = !DILocalVariable(name: "lq", scope: !3061, file: !764, line: 361, type: !100)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !764, line: 361, column: 11)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !764, line: 360, column: 13)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !764, line: 333, column: 7)
!3064 = distinct !DILexicalBlock(scope: !3035, file: !764, line: 312, column: 5)
!3065 = !DILocalVariable(name: "i", scope: !3066, file: !764, line: 395, type: !97)
!3066 = distinct !DILexicalBlock(scope: !3035, file: !764, line: 395, column: 3)
!3067 = !DILocalVariable(name: "is_right_quote", scope: !3068, file: !764, line: 397, type: !103)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !764, line: 396, column: 5)
!3069 = distinct !DILexicalBlock(scope: !3066, file: !764, line: 395, column: 3)
!3070 = !DILocalVariable(name: "escaping", scope: !3068, file: !764, line: 398, type: !103)
!3071 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3068, file: !764, line: 399, type: !103)
!3072 = !DILocalVariable(name: "c", scope: !3068, file: !764, line: 417, type: !102)
!3073 = !DILocalVariable(name: "m", scope: !3074, file: !764, line: 598, type: !97)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !764, line: 596, column: 11)
!3075 = distinct !DILexicalBlock(scope: !3068, file: !764, line: 419, column: 9)
!3076 = !DILocalVariable(name: "printable", scope: !3074, file: !764, line: 600, type: !103)
!3077 = !DILocalVariable(name: "mbs", scope: !3078, file: !764, line: 609, type: !837)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !764, line: 608, column: 15)
!3079 = distinct !DILexicalBlock(scope: !3074, file: !764, line: 602, column: 17)
!3080 = !DILocalVariable(name: "w", scope: !3081, file: !764, line: 618, type: !365)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !764, line: 617, column: 19)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !764, line: 616, column: 17)
!3083 = distinct !DILexicalBlock(scope: !3078, file: !764, line: 616, column: 17)
!3084 = !DILocalVariable(name: "bytes", scope: !3081, file: !764, line: 619, type: !97)
!3085 = !DILocalVariable(name: "j", scope: !3086, file: !764, line: 648, type: !97)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !764, line: 648, column: 29)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !764, line: 647, column: 27)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !764, line: 645, column: 29)
!3089 = distinct !DILexicalBlock(scope: !3090, file: !764, line: 636, column: 23)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !764, line: 628, column: 30)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !764, line: 623, column: 30)
!3092 = distinct !DILexicalBlock(scope: !3081, file: !764, line: 621, column: 25)
!3093 = !DILocalVariable(name: "ilim", scope: !3094, file: !764, line: 674, type: !97)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !764, line: 671, column: 15)
!3095 = distinct !DILexicalBlock(scope: !3074, file: !764, line: 670, column: 17)
!3096 = !DILabel(scope: !3035, name: "process_input", file: !764, line: 308)
!3097 = !DILabel(scope: !3098, name: "c_and_shell_escape", file: !764, line: 502)
!3098 = distinct !DILexicalBlock(scope: !3075, file: !764, line: 478, column: 9)
!3099 = !DILabel(scope: !3098, name: "c_escape", file: !764, line: 507)
!3100 = !DILabel(scope: !3068, name: "store_escape", file: !764, line: 709)
!3101 = !DILabel(scope: !3068, name: "store_c", file: !764, line: 712)
!3102 = !DILabel(scope: !3035, name: "force_outer_quoting_style", file: !764, line: 753)
!3103 = !DILocation(line: 0, scope: !3035)
!3104 = !DILocation(line: 258, column: 25, scope: !3035)
!3105 = !DILocation(line: 258, column: 36, scope: !3035)
!3106 = !DILocation(line: 267, column: 3, scope: !3035)
!3107 = !DILocation(line: 261, column: 10, scope: !3035)
!3108 = !DILocation(line: 262, column: 15, scope: !3035)
!3109 = !DILocation(line: 263, column: 10, scope: !3035)
!3110 = !DILocation(line: 308, column: 2, scope: !3035)
!3111 = !DILocation(line: 311, column: 3, scope: !3035)
!3112 = !DILocation(line: 318, column: 11, scope: !3064)
!3113 = !DILocation(line: 319, column: 9, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !764, line: 319, column: 9)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !764, line: 319, column: 9)
!3116 = distinct !DILexicalBlock(scope: !3064, file: !764, line: 318, column: 11)
!3117 = !DILocation(line: 319, column: 9, scope: !3115)
!3118 = !DILocation(line: 0, scope: !828, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 357, column: 26, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !764, line: 335, column: 11)
!3121 = distinct !DILexicalBlock(scope: !3063, file: !764, line: 334, column: 13)
!3122 = !DILocation(line: 199, column: 29, scope: !828, inlinedAt: !3119)
!3123 = !DILocation(line: 201, column: 19, scope: !3124, inlinedAt: !3119)
!3124 = distinct !DILexicalBlock(scope: !828, file: !764, line: 201, column: 7)
!3125 = !DILocation(line: 201, column: 7, scope: !828, inlinedAt: !3119)
!3126 = !DILocation(line: 229, column: 3, scope: !828, inlinedAt: !3119)
!3127 = !DILocation(line: 230, column: 3, scope: !828, inlinedAt: !3119)
!3128 = !DILocation(line: 230, column: 13, scope: !828, inlinedAt: !3119)
!3129 = !DILocalVariable(name: "ps", arg: 1, scope: !3130, file: !2889, line: 1135, type: !3133)
!3130 = distinct !DISubprogram(name: "mbszero", scope: !2889, file: !2889, line: 1135, type: !3131, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3134)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{null, !3133}
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!3134 = !{!3129}
!3135 = !DILocation(line: 0, scope: !3130, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 230, column: 18, scope: !828, inlinedAt: !3119)
!3137 = !DILocalVariable(name: "__dest", arg: 1, scope: !3138, file: !1386, line: 57, type: !95)
!3138 = distinct !DISubprogram(name: "memset", scope: !1386, file: !1386, line: 57, type: !2898, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3139)
!3139 = !{!3137, !3140, !3141}
!3140 = !DILocalVariable(name: "__ch", arg: 2, scope: !3138, file: !1386, line: 57, type: !63)
!3141 = !DILocalVariable(name: "__len", arg: 3, scope: !3138, file: !1386, line: 57, type: !97)
!3142 = !DILocation(line: 0, scope: !3138, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 1137, column: 3, scope: !3130, inlinedAt: !3136)
!3144 = !DILocation(line: 59, column: 10, scope: !3138, inlinedAt: !3143)
!3145 = !DILocation(line: 231, column: 7, scope: !3146, inlinedAt: !3119)
!3146 = distinct !DILexicalBlock(scope: !828, file: !764, line: 231, column: 7)
!3147 = !DILocation(line: 231, column: 40, scope: !3146, inlinedAt: !3119)
!3148 = !DILocation(line: 231, column: 45, scope: !3146, inlinedAt: !3119)
!3149 = !DILocation(line: 235, column: 1, scope: !828, inlinedAt: !3119)
!3150 = !DILocation(line: 0, scope: !828, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 358, column: 27, scope: !3120)
!3152 = !DILocation(line: 199, column: 29, scope: !828, inlinedAt: !3151)
!3153 = !DILocation(line: 201, column: 19, scope: !3124, inlinedAt: !3151)
!3154 = !DILocation(line: 201, column: 7, scope: !828, inlinedAt: !3151)
!3155 = !DILocation(line: 229, column: 3, scope: !828, inlinedAt: !3151)
!3156 = !DILocation(line: 230, column: 3, scope: !828, inlinedAt: !3151)
!3157 = !DILocation(line: 230, column: 13, scope: !828, inlinedAt: !3151)
!3158 = !DILocation(line: 0, scope: !3130, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 230, column: 18, scope: !828, inlinedAt: !3151)
!3160 = !DILocation(line: 0, scope: !3138, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 1137, column: 3, scope: !3130, inlinedAt: !3159)
!3162 = !DILocation(line: 59, column: 10, scope: !3138, inlinedAt: !3161)
!3163 = !DILocation(line: 231, column: 7, scope: !3146, inlinedAt: !3151)
!3164 = !DILocation(line: 231, column: 40, scope: !3146, inlinedAt: !3151)
!3165 = !DILocation(line: 231, column: 45, scope: !3146, inlinedAt: !3151)
!3166 = !DILocation(line: 235, column: 1, scope: !828, inlinedAt: !3151)
!3167 = !DILocation(line: 360, column: 13, scope: !3063)
!3168 = !DILocation(line: 0, scope: !3061)
!3169 = !DILocation(line: 361, column: 45, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3061, file: !764, line: 361, column: 11)
!3171 = !DILocation(line: 361, column: 11, scope: !3061)
!3172 = !DILocation(line: 362, column: 13, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !764, line: 362, column: 13)
!3174 = distinct !DILexicalBlock(scope: !3170, file: !764, line: 362, column: 13)
!3175 = !DILocation(line: 362, column: 13, scope: !3174)
!3176 = !DILocation(line: 361, column: 52, scope: !3170)
!3177 = distinct !{!3177, !3171, !3178, !1179}
!3178 = !DILocation(line: 362, column: 13, scope: !3061)
!3179 = !DILocation(line: 260, column: 10, scope: !3035)
!3180 = !DILocation(line: 365, column: 28, scope: !3063)
!3181 = !DILocation(line: 367, column: 7, scope: !3064)
!3182 = !DILocation(line: 370, column: 7, scope: !3064)
!3183 = !DILocation(line: 376, column: 11, scope: !3064)
!3184 = !DILocation(line: 381, column: 11, scope: !3064)
!3185 = !DILocation(line: 382, column: 9, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !764, line: 382, column: 9)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !764, line: 382, column: 9)
!3188 = distinct !DILexicalBlock(scope: !3064, file: !764, line: 381, column: 11)
!3189 = !DILocation(line: 382, column: 9, scope: !3187)
!3190 = !DILocation(line: 389, column: 7, scope: !3064)
!3191 = !DILocation(line: 392, column: 7, scope: !3064)
!3192 = !DILocation(line: 0, scope: !3066)
!3193 = !DILocation(line: 395, column: 8, scope: !3066)
!3194 = !DILocation(line: 395, scope: !3066)
!3195 = !DILocation(line: 395, column: 34, scope: !3069)
!3196 = !DILocation(line: 395, column: 26, scope: !3069)
!3197 = !DILocation(line: 395, column: 48, scope: !3069)
!3198 = !DILocation(line: 395, column: 55, scope: !3069)
!3199 = !DILocation(line: 395, column: 3, scope: !3066)
!3200 = !DILocation(line: 395, column: 67, scope: !3069)
!3201 = !DILocation(line: 0, scope: !3068)
!3202 = !DILocation(line: 402, column: 11, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3068, file: !764, line: 401, column: 11)
!3204 = !DILocation(line: 404, column: 17, scope: !3203)
!3205 = !DILocation(line: 405, column: 39, scope: !3203)
!3206 = !DILocation(line: 409, column: 32, scope: !3203)
!3207 = !DILocation(line: 405, column: 19, scope: !3203)
!3208 = !DILocation(line: 405, column: 15, scope: !3203)
!3209 = !DILocation(line: 410, column: 11, scope: !3203)
!3210 = !DILocation(line: 410, column: 25, scope: !3203)
!3211 = !DILocalVariable(name: "__s1", arg: 1, scope: !3212, file: !1145, line: 974, type: !1277)
!3212 = distinct !DISubprogram(name: "memeq", scope: !1145, file: !1145, line: 974, type: !2859, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3213)
!3213 = !{!3211, !3214, !3215}
!3214 = !DILocalVariable(name: "__s2", arg: 2, scope: !3212, file: !1145, line: 974, type: !1277)
!3215 = !DILocalVariable(name: "__n", arg: 3, scope: !3212, file: !1145, line: 974, type: !97)
!3216 = !DILocation(line: 0, scope: !3212, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 410, column: 14, scope: !3203)
!3218 = !DILocation(line: 976, column: 11, scope: !3212, inlinedAt: !3217)
!3219 = !DILocation(line: 976, column: 10, scope: !3212, inlinedAt: !3217)
!3220 = !DILocation(line: 401, column: 11, scope: !3068)
!3221 = !DILocation(line: 417, column: 25, scope: !3068)
!3222 = !DILocation(line: 418, column: 7, scope: !3068)
!3223 = !DILocation(line: 421, column: 15, scope: !3075)
!3224 = !DILocation(line: 423, column: 15, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !764, line: 423, column: 15)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !764, line: 422, column: 13)
!3227 = distinct !DILexicalBlock(scope: !3075, file: !764, line: 421, column: 15)
!3228 = !DILocation(line: 423, column: 15, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3225, file: !764, line: 423, column: 15)
!3230 = !DILocation(line: 423, column: 15, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !764, line: 423, column: 15)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !764, line: 423, column: 15)
!3233 = distinct !DILexicalBlock(scope: !3229, file: !764, line: 423, column: 15)
!3234 = !DILocation(line: 423, column: 15, scope: !3232)
!3235 = !DILocation(line: 423, column: 15, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !764, line: 423, column: 15)
!3237 = distinct !DILexicalBlock(scope: !3233, file: !764, line: 423, column: 15)
!3238 = !DILocation(line: 423, column: 15, scope: !3237)
!3239 = !DILocation(line: 423, column: 15, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3241, file: !764, line: 423, column: 15)
!3241 = distinct !DILexicalBlock(scope: !3233, file: !764, line: 423, column: 15)
!3242 = !DILocation(line: 423, column: 15, scope: !3241)
!3243 = !DILocation(line: 423, column: 15, scope: !3233)
!3244 = !DILocation(line: 423, column: 15, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !764, line: 423, column: 15)
!3246 = distinct !DILexicalBlock(scope: !3225, file: !764, line: 423, column: 15)
!3247 = !DILocation(line: 423, column: 15, scope: !3246)
!3248 = !DILocation(line: 431, column: 19, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3226, file: !764, line: 430, column: 19)
!3250 = !DILocation(line: 431, column: 24, scope: !3249)
!3251 = !DILocation(line: 431, column: 28, scope: !3249)
!3252 = !DILocation(line: 431, column: 38, scope: !3249)
!3253 = !DILocation(line: 431, column: 48, scope: !3249)
!3254 = !DILocation(line: 431, column: 59, scope: !3249)
!3255 = !DILocation(line: 433, column: 19, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !764, line: 433, column: 19)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !764, line: 433, column: 19)
!3258 = distinct !DILexicalBlock(scope: !3249, file: !764, line: 432, column: 17)
!3259 = !DILocation(line: 433, column: 19, scope: !3257)
!3260 = !DILocation(line: 434, column: 19, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !764, line: 434, column: 19)
!3262 = distinct !DILexicalBlock(scope: !3258, file: !764, line: 434, column: 19)
!3263 = !DILocation(line: 434, column: 19, scope: !3262)
!3264 = !DILocation(line: 435, column: 17, scope: !3258)
!3265 = !DILocation(line: 442, column: 20, scope: !3227)
!3266 = !DILocation(line: 447, column: 11, scope: !3075)
!3267 = !DILocation(line: 450, column: 19, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3075, file: !764, line: 448, column: 13)
!3269 = !DILocation(line: 456, column: 19, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3268, file: !764, line: 455, column: 19)
!3271 = !DILocation(line: 456, column: 24, scope: !3270)
!3272 = !DILocation(line: 456, column: 28, scope: !3270)
!3273 = !DILocation(line: 456, column: 38, scope: !3270)
!3274 = !DILocation(line: 456, column: 47, scope: !3270)
!3275 = !DILocation(line: 456, column: 41, scope: !3270)
!3276 = !DILocation(line: 456, column: 52, scope: !3270)
!3277 = !DILocation(line: 455, column: 19, scope: !3268)
!3278 = !DILocation(line: 457, column: 25, scope: !3270)
!3279 = !DILocation(line: 457, column: 17, scope: !3270)
!3280 = !DILocation(line: 464, column: 25, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3270, file: !764, line: 458, column: 19)
!3282 = !DILocation(line: 468, column: 21, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3284, file: !764, line: 468, column: 21)
!3284 = distinct !DILexicalBlock(scope: !3281, file: !764, line: 468, column: 21)
!3285 = !DILocation(line: 468, column: 21, scope: !3284)
!3286 = !DILocation(line: 469, column: 21, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !764, line: 469, column: 21)
!3288 = distinct !DILexicalBlock(scope: !3281, file: !764, line: 469, column: 21)
!3289 = !DILocation(line: 469, column: 21, scope: !3288)
!3290 = !DILocation(line: 470, column: 21, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !764, line: 470, column: 21)
!3292 = distinct !DILexicalBlock(scope: !3281, file: !764, line: 470, column: 21)
!3293 = !DILocation(line: 470, column: 21, scope: !3292)
!3294 = !DILocation(line: 471, column: 21, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !764, line: 471, column: 21)
!3296 = distinct !DILexicalBlock(scope: !3281, file: !764, line: 471, column: 21)
!3297 = !DILocation(line: 471, column: 21, scope: !3296)
!3298 = !DILocation(line: 472, column: 21, scope: !3281)
!3299 = !DILocation(line: 482, column: 33, scope: !3098)
!3300 = !DILocation(line: 483, column: 33, scope: !3098)
!3301 = !DILocation(line: 485, column: 33, scope: !3098)
!3302 = !DILocation(line: 486, column: 33, scope: !3098)
!3303 = !DILocation(line: 487, column: 33, scope: !3098)
!3304 = !DILocation(line: 490, column: 17, scope: !3098)
!3305 = !DILocation(line: 492, column: 21, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !764, line: 491, column: 15)
!3307 = distinct !DILexicalBlock(scope: !3098, file: !764, line: 490, column: 17)
!3308 = !DILocation(line: 499, column: 35, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3098, file: !764, line: 499, column: 17)
!3310 = !DILocation(line: 0, scope: !3098)
!3311 = !DILocation(line: 502, column: 11, scope: !3098)
!3312 = !DILocation(line: 504, column: 17, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3098, file: !764, line: 503, column: 17)
!3314 = !DILocation(line: 507, column: 11, scope: !3098)
!3315 = !DILocation(line: 508, column: 17, scope: !3098)
!3316 = !DILocation(line: 517, column: 15, scope: !3075)
!3317 = !DILocation(line: 517, column: 40, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3075, file: !764, line: 517, column: 15)
!3319 = !DILocation(line: 517, column: 47, scope: !3318)
!3320 = !DILocation(line: 517, column: 18, scope: !3318)
!3321 = !DILocation(line: 521, column: 17, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3075, file: !764, line: 521, column: 15)
!3323 = !DILocation(line: 521, column: 15, scope: !3075)
!3324 = !DILocation(line: 525, column: 11, scope: !3075)
!3325 = !DILocation(line: 537, column: 15, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3075, file: !764, line: 536, column: 15)
!3327 = !DILocation(line: 536, column: 15, scope: !3075)
!3328 = !DILocation(line: 544, column: 15, scope: !3075)
!3329 = !DILocation(line: 546, column: 19, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !764, line: 545, column: 13)
!3331 = distinct !DILexicalBlock(scope: !3075, file: !764, line: 544, column: 15)
!3332 = !DILocation(line: 549, column: 19, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3330, file: !764, line: 549, column: 19)
!3334 = !DILocation(line: 549, column: 30, scope: !3333)
!3335 = !DILocation(line: 558, column: 15, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3337, file: !764, line: 558, column: 15)
!3337 = distinct !DILexicalBlock(scope: !3330, file: !764, line: 558, column: 15)
!3338 = !DILocation(line: 558, column: 15, scope: !3337)
!3339 = !DILocation(line: 559, column: 15, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !764, line: 559, column: 15)
!3341 = distinct !DILexicalBlock(scope: !3330, file: !764, line: 559, column: 15)
!3342 = !DILocation(line: 559, column: 15, scope: !3341)
!3343 = !DILocation(line: 560, column: 15, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !764, line: 560, column: 15)
!3345 = distinct !DILexicalBlock(scope: !3330, file: !764, line: 560, column: 15)
!3346 = !DILocation(line: 560, column: 15, scope: !3345)
!3347 = !DILocation(line: 562, column: 13, scope: !3330)
!3348 = !DILocation(line: 602, column: 17, scope: !3074)
!3349 = !DILocation(line: 0, scope: !3074)
!3350 = !DILocation(line: 605, column: 29, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3079, file: !764, line: 603, column: 15)
!3352 = !DILocation(line: 605, column: 41, scope: !3351)
!3353 = !DILocation(line: 606, column: 15, scope: !3351)
!3354 = !DILocation(line: 609, column: 17, scope: !3078)
!3355 = !DILocation(line: 609, column: 27, scope: !3078)
!3356 = !DILocation(line: 0, scope: !3130, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 609, column: 32, scope: !3078)
!3358 = !DILocation(line: 0, scope: !3138, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 1137, column: 3, scope: !3130, inlinedAt: !3357)
!3360 = !DILocation(line: 59, column: 10, scope: !3138, inlinedAt: !3359)
!3361 = !DILocation(line: 613, column: 29, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3078, file: !764, line: 613, column: 21)
!3363 = !DILocation(line: 613, column: 21, scope: !3078)
!3364 = !DILocation(line: 614, column: 29, scope: !3362)
!3365 = !DILocation(line: 614, column: 19, scope: !3362)
!3366 = !DILocation(line: 618, column: 21, scope: !3081)
!3367 = !DILocation(line: 620, column: 54, scope: !3081)
!3368 = !DILocation(line: 0, scope: !3081)
!3369 = !DILocation(line: 619, column: 36, scope: !3081)
!3370 = !DILocation(line: 621, column: 25, scope: !3081)
!3371 = !DILocation(line: 631, column: 38, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3090, file: !764, line: 629, column: 23)
!3373 = !DILocation(line: 631, column: 48, scope: !3372)
!3374 = !DILocation(line: 626, column: 25, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3091, file: !764, line: 624, column: 23)
!3376 = !DILocation(line: 631, column: 51, scope: !3372)
!3377 = !DILocation(line: 631, column: 25, scope: !3372)
!3378 = !DILocation(line: 632, column: 28, scope: !3372)
!3379 = !DILocation(line: 631, column: 34, scope: !3372)
!3380 = distinct !{!3380, !3377, !3378, !1179}
!3381 = !DILocation(line: 646, column: 29, scope: !3088)
!3382 = !DILocation(line: 0, scope: !3086)
!3383 = !DILocation(line: 649, column: 49, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3086, file: !764, line: 648, column: 29)
!3385 = !DILocation(line: 649, column: 39, scope: !3384)
!3386 = !DILocation(line: 649, column: 31, scope: !3384)
!3387 = !DILocation(line: 648, column: 60, scope: !3384)
!3388 = !DILocation(line: 648, column: 50, scope: !3384)
!3389 = !DILocation(line: 648, column: 29, scope: !3086)
!3390 = distinct !{!3390, !3389, !3391, !1179}
!3391 = !DILocation(line: 654, column: 33, scope: !3086)
!3392 = !DILocation(line: 657, column: 43, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3089, file: !764, line: 657, column: 29)
!3394 = !DILocalVariable(name: "wc", arg: 1, scope: !3395, file: !1511, line: 865, type: !1514)
!3395 = distinct !DISubprogram(name: "c32isprint", scope: !1511, file: !1511, line: 865, type: !1512, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3396)
!3396 = !{!3394}
!3397 = !DILocation(line: 0, scope: !3395, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 657, column: 31, scope: !3393)
!3399 = !DILocation(line: 871, column: 10, scope: !3395, inlinedAt: !3398)
!3400 = !DILocation(line: 657, column: 31, scope: !3393)
!3401 = !DILocation(line: 664, column: 23, scope: !3081)
!3402 = !DILocation(line: 665, column: 19, scope: !3082)
!3403 = !DILocation(line: 666, column: 15, scope: !3079)
!3404 = !DILocation(line: 753, column: 2, scope: !3035)
!3405 = !DILocation(line: 756, column: 51, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3035, file: !764, line: 756, column: 7)
!3407 = !DILocation(line: 0, scope: !3079)
!3408 = !DILocation(line: 670, column: 19, scope: !3095)
!3409 = !DILocation(line: 670, column: 23, scope: !3095)
!3410 = !DILocation(line: 674, column: 33, scope: !3094)
!3411 = !DILocation(line: 0, scope: !3094)
!3412 = !DILocation(line: 676, column: 17, scope: !3094)
!3413 = !DILocation(line: 398, column: 12, scope: !3068)
!3414 = !DILocation(line: 678, column: 43, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3416, file: !764, line: 678, column: 25)
!3416 = distinct !DILexicalBlock(scope: !3417, file: !764, line: 677, column: 19)
!3417 = distinct !DILexicalBlock(scope: !3418, file: !764, line: 676, column: 17)
!3418 = distinct !DILexicalBlock(scope: !3094, file: !764, line: 676, column: 17)
!3419 = !DILocation(line: 680, column: 25, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !764, line: 680, column: 25)
!3421 = distinct !DILexicalBlock(scope: !3415, file: !764, line: 679, column: 23)
!3422 = !DILocation(line: 680, column: 25, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3420, file: !764, line: 680, column: 25)
!3424 = !DILocation(line: 680, column: 25, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !764, line: 680, column: 25)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !764, line: 680, column: 25)
!3427 = distinct !DILexicalBlock(scope: !3423, file: !764, line: 680, column: 25)
!3428 = !DILocation(line: 680, column: 25, scope: !3426)
!3429 = !DILocation(line: 680, column: 25, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !764, line: 680, column: 25)
!3431 = distinct !DILexicalBlock(scope: !3427, file: !764, line: 680, column: 25)
!3432 = !DILocation(line: 680, column: 25, scope: !3431)
!3433 = !DILocation(line: 680, column: 25, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !764, line: 680, column: 25)
!3435 = distinct !DILexicalBlock(scope: !3427, file: !764, line: 680, column: 25)
!3436 = !DILocation(line: 680, column: 25, scope: !3435)
!3437 = !DILocation(line: 680, column: 25, scope: !3427)
!3438 = !DILocation(line: 680, column: 25, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !764, line: 680, column: 25)
!3440 = distinct !DILexicalBlock(scope: !3420, file: !764, line: 680, column: 25)
!3441 = !DILocation(line: 680, column: 25, scope: !3440)
!3442 = !DILocation(line: 681, column: 25, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !764, line: 681, column: 25)
!3444 = distinct !DILexicalBlock(scope: !3421, file: !764, line: 681, column: 25)
!3445 = !DILocation(line: 681, column: 25, scope: !3444)
!3446 = !DILocation(line: 682, column: 25, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3448, file: !764, line: 682, column: 25)
!3448 = distinct !DILexicalBlock(scope: !3421, file: !764, line: 682, column: 25)
!3449 = !DILocation(line: 682, column: 25, scope: !3448)
!3450 = !DILocation(line: 683, column: 38, scope: !3421)
!3451 = !DILocation(line: 683, column: 33, scope: !3421)
!3452 = !DILocation(line: 684, column: 23, scope: !3421)
!3453 = !DILocation(line: 685, column: 30, scope: !3415)
!3454 = !DILocation(line: 687, column: 25, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3456, file: !764, line: 687, column: 25)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !764, line: 687, column: 25)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !764, line: 686, column: 23)
!3458 = distinct !DILexicalBlock(scope: !3415, file: !764, line: 685, column: 30)
!3459 = !DILocation(line: 687, column: 25, scope: !3456)
!3460 = !DILocation(line: 689, column: 23, scope: !3457)
!3461 = !DILocation(line: 690, column: 35, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3416, file: !764, line: 690, column: 25)
!3463 = !DILocation(line: 690, column: 30, scope: !3462)
!3464 = !DILocation(line: 690, column: 25, scope: !3416)
!3465 = !DILocation(line: 692, column: 21, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3467, file: !764, line: 692, column: 21)
!3467 = distinct !DILexicalBlock(scope: !3416, file: !764, line: 692, column: 21)
!3468 = !DILocation(line: 692, column: 21, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3470, file: !764, line: 692, column: 21)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !764, line: 692, column: 21)
!3471 = distinct !DILexicalBlock(scope: !3466, file: !764, line: 692, column: 21)
!3472 = !DILocation(line: 692, column: 21, scope: !3470)
!3473 = !DILocation(line: 692, column: 21, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !764, line: 692, column: 21)
!3475 = distinct !DILexicalBlock(scope: !3471, file: !764, line: 692, column: 21)
!3476 = !DILocation(line: 692, column: 21, scope: !3475)
!3477 = !DILocation(line: 692, column: 21, scope: !3471)
!3478 = !DILocation(line: 0, scope: !3416)
!3479 = !DILocation(line: 693, column: 21, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !764, line: 693, column: 21)
!3481 = distinct !DILexicalBlock(scope: !3416, file: !764, line: 693, column: 21)
!3482 = !DILocation(line: 693, column: 21, scope: !3481)
!3483 = !DILocation(line: 694, column: 25, scope: !3416)
!3484 = !DILocation(line: 676, column: 17, scope: !3417)
!3485 = distinct !{!3485, !3486, !3487}
!3486 = !DILocation(line: 676, column: 17, scope: !3418)
!3487 = !DILocation(line: 695, column: 19, scope: !3418)
!3488 = !DILocation(line: 409, column: 30, scope: !3203)
!3489 = !DILocation(line: 702, column: 34, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3068, file: !764, line: 702, column: 11)
!3491 = !DILocation(line: 704, column: 14, scope: !3490)
!3492 = !DILocation(line: 705, column: 14, scope: !3490)
!3493 = !DILocation(line: 705, column: 35, scope: !3490)
!3494 = !DILocation(line: 705, column: 17, scope: !3490)
!3495 = !DILocation(line: 705, column: 47, scope: !3490)
!3496 = !DILocation(line: 705, column: 65, scope: !3490)
!3497 = !DILocation(line: 706, column: 11, scope: !3490)
!3498 = !DILocation(line: 702, column: 11, scope: !3068)
!3499 = !DILocation(line: 395, column: 15, scope: !3066)
!3500 = !DILocation(line: 709, column: 5, scope: !3068)
!3501 = !DILocation(line: 710, column: 7, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3068, file: !764, line: 710, column: 7)
!3503 = !DILocation(line: 710, column: 7, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3502, file: !764, line: 710, column: 7)
!3505 = !DILocation(line: 710, column: 7, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !764, line: 710, column: 7)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !764, line: 710, column: 7)
!3508 = distinct !DILexicalBlock(scope: !3504, file: !764, line: 710, column: 7)
!3509 = !DILocation(line: 710, column: 7, scope: !3507)
!3510 = !DILocation(line: 710, column: 7, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3512, file: !764, line: 710, column: 7)
!3512 = distinct !DILexicalBlock(scope: !3508, file: !764, line: 710, column: 7)
!3513 = !DILocation(line: 710, column: 7, scope: !3512)
!3514 = !DILocation(line: 710, column: 7, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3516, file: !764, line: 710, column: 7)
!3516 = distinct !DILexicalBlock(scope: !3508, file: !764, line: 710, column: 7)
!3517 = !DILocation(line: 710, column: 7, scope: !3516)
!3518 = !DILocation(line: 710, column: 7, scope: !3508)
!3519 = !DILocation(line: 710, column: 7, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3521, file: !764, line: 710, column: 7)
!3521 = distinct !DILexicalBlock(scope: !3502, file: !764, line: 710, column: 7)
!3522 = !DILocation(line: 710, column: 7, scope: !3521)
!3523 = !DILocation(line: 712, column: 5, scope: !3068)
!3524 = !DILocation(line: 713, column: 7, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !764, line: 713, column: 7)
!3526 = distinct !DILexicalBlock(scope: !3068, file: !764, line: 713, column: 7)
!3527 = !DILocation(line: 417, column: 21, scope: !3068)
!3528 = !DILocation(line: 713, column: 7, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !764, line: 713, column: 7)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !764, line: 713, column: 7)
!3531 = distinct !DILexicalBlock(scope: !3525, file: !764, line: 713, column: 7)
!3532 = !DILocation(line: 713, column: 7, scope: !3530)
!3533 = !DILocation(line: 713, column: 7, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !764, line: 713, column: 7)
!3535 = distinct !DILexicalBlock(scope: !3531, file: !764, line: 713, column: 7)
!3536 = !DILocation(line: 713, column: 7, scope: !3535)
!3537 = !DILocation(line: 713, column: 7, scope: !3531)
!3538 = !DILocation(line: 714, column: 7, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !764, line: 714, column: 7)
!3540 = distinct !DILexicalBlock(scope: !3068, file: !764, line: 714, column: 7)
!3541 = !DILocation(line: 714, column: 7, scope: !3540)
!3542 = !DILocation(line: 716, column: 11, scope: !3068)
!3543 = !DILocation(line: 718, column: 5, scope: !3069)
!3544 = !DILocation(line: 395, column: 82, scope: !3069)
!3545 = !DILocation(line: 395, column: 3, scope: !3069)
!3546 = distinct !{!3546, !3199, !3547, !1179}
!3547 = !DILocation(line: 718, column: 5, scope: !3066)
!3548 = !DILocation(line: 720, column: 11, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3035, file: !764, line: 720, column: 7)
!3550 = !DILocation(line: 720, column: 16, scope: !3549)
!3551 = !DILocation(line: 728, column: 51, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3035, file: !764, line: 728, column: 7)
!3553 = !DILocation(line: 731, column: 11, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3552, file: !764, line: 730, column: 5)
!3555 = !DILocation(line: 732, column: 16, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3554, file: !764, line: 731, column: 11)
!3557 = !DILocation(line: 732, column: 9, scope: !3556)
!3558 = !DILocation(line: 736, column: 18, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3556, file: !764, line: 736, column: 16)
!3560 = !DILocation(line: 736, column: 29, scope: !3559)
!3561 = !DILocation(line: 745, column: 7, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3035, file: !764, line: 745, column: 7)
!3563 = !DILocation(line: 745, column: 20, scope: !3562)
!3564 = !DILocation(line: 746, column: 12, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !764, line: 746, column: 5)
!3566 = distinct !DILexicalBlock(scope: !3562, file: !764, line: 746, column: 5)
!3567 = !DILocation(line: 746, column: 5, scope: !3566)
!3568 = !DILocation(line: 747, column: 7, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !764, line: 747, column: 7)
!3570 = distinct !DILexicalBlock(scope: !3565, file: !764, line: 747, column: 7)
!3571 = !DILocation(line: 747, column: 7, scope: !3570)
!3572 = !DILocation(line: 746, column: 39, scope: !3565)
!3573 = distinct !{!3573, !3567, !3574, !1179}
!3574 = !DILocation(line: 747, column: 7, scope: !3566)
!3575 = !DILocation(line: 749, column: 11, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3035, file: !764, line: 749, column: 7)
!3577 = !DILocation(line: 749, column: 7, scope: !3035)
!3578 = !DILocation(line: 750, column: 5, scope: !3576)
!3579 = !DILocation(line: 750, column: 17, scope: !3576)
!3580 = !DILocation(line: 756, column: 21, scope: !3406)
!3581 = !DILocation(line: 760, column: 42, scope: !3035)
!3582 = !DILocation(line: 758, column: 10, scope: !3035)
!3583 = !DILocation(line: 758, column: 3, scope: !3035)
!3584 = !DILocation(line: 762, column: 1, scope: !3035)
!3585 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1253, file: !1253, line: 98, type: !3586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!97}
!3588 = !DISubprogram(name: "strlen", scope: !1249, file: !1249, line: 407, type: !3589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!99, !100}
!3591 = !DISubprogram(name: "iswprint", scope: !1656, file: !1656, line: 120, type: !1512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!3592 = distinct !DISubprogram(name: "quotearg_alloc", scope: !764, file: !764, line: 788, type: !3593, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3595)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!94, !100, !97, !2928}
!3595 = !{!3596, !3597, !3598}
!3596 = !DILocalVariable(name: "arg", arg: 1, scope: !3592, file: !764, line: 788, type: !100)
!3597 = !DILocalVariable(name: "argsize", arg: 2, scope: !3592, file: !764, line: 788, type: !97)
!3598 = !DILocalVariable(name: "o", arg: 3, scope: !3592, file: !764, line: 789, type: !2928)
!3599 = !DILocation(line: 0, scope: !3592)
!3600 = !DILocalVariable(name: "arg", arg: 1, scope: !3601, file: !764, line: 801, type: !100)
!3601 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !764, file: !764, line: 801, type: !3602, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3604)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!94, !100, !97, !1005, !2928}
!3604 = !{!3600, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612}
!3605 = !DILocalVariable(name: "argsize", arg: 2, scope: !3601, file: !764, line: 801, type: !97)
!3606 = !DILocalVariable(name: "size", arg: 3, scope: !3601, file: !764, line: 801, type: !1005)
!3607 = !DILocalVariable(name: "o", arg: 4, scope: !3601, file: !764, line: 802, type: !2928)
!3608 = !DILocalVariable(name: "p", scope: !3601, file: !764, line: 804, type: !2928)
!3609 = !DILocalVariable(name: "saved_errno", scope: !3601, file: !764, line: 805, type: !63)
!3610 = !DILocalVariable(name: "flags", scope: !3601, file: !764, line: 807, type: !63)
!3611 = !DILocalVariable(name: "bufsize", scope: !3601, file: !764, line: 808, type: !97)
!3612 = !DILocalVariable(name: "buf", scope: !3601, file: !764, line: 812, type: !94)
!3613 = !DILocation(line: 0, scope: !3601, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 791, column: 10, scope: !3592)
!3615 = !DILocation(line: 804, column: 37, scope: !3601, inlinedAt: !3614)
!3616 = !DILocation(line: 805, column: 21, scope: !3601, inlinedAt: !3614)
!3617 = !DILocation(line: 807, column: 18, scope: !3601, inlinedAt: !3614)
!3618 = !DILocation(line: 807, column: 24, scope: !3601, inlinedAt: !3614)
!3619 = !DILocation(line: 808, column: 72, scope: !3601, inlinedAt: !3614)
!3620 = !DILocation(line: 809, column: 56, scope: !3601, inlinedAt: !3614)
!3621 = !DILocation(line: 810, column: 49, scope: !3601, inlinedAt: !3614)
!3622 = !DILocation(line: 811, column: 49, scope: !3601, inlinedAt: !3614)
!3623 = !DILocation(line: 808, column: 20, scope: !3601, inlinedAt: !3614)
!3624 = !DILocation(line: 811, column: 62, scope: !3601, inlinedAt: !3614)
!3625 = !DILocation(line: 812, column: 15, scope: !3601, inlinedAt: !3614)
!3626 = !DILocation(line: 813, column: 60, scope: !3601, inlinedAt: !3614)
!3627 = !DILocation(line: 815, column: 32, scope: !3601, inlinedAt: !3614)
!3628 = !DILocation(line: 815, column: 47, scope: !3601, inlinedAt: !3614)
!3629 = !DILocation(line: 813, column: 3, scope: !3601, inlinedAt: !3614)
!3630 = !DILocation(line: 816, column: 9, scope: !3601, inlinedAt: !3614)
!3631 = !DILocation(line: 791, column: 3, scope: !3592)
!3632 = !DILocation(line: 0, scope: !3601)
!3633 = !DILocation(line: 804, column: 37, scope: !3601)
!3634 = !DILocation(line: 805, column: 21, scope: !3601)
!3635 = !DILocation(line: 807, column: 18, scope: !3601)
!3636 = !DILocation(line: 807, column: 27, scope: !3601)
!3637 = !DILocation(line: 807, column: 24, scope: !3601)
!3638 = !DILocation(line: 808, column: 72, scope: !3601)
!3639 = !DILocation(line: 809, column: 56, scope: !3601)
!3640 = !DILocation(line: 810, column: 49, scope: !3601)
!3641 = !DILocation(line: 811, column: 49, scope: !3601)
!3642 = !DILocation(line: 808, column: 20, scope: !3601)
!3643 = !DILocation(line: 811, column: 62, scope: !3601)
!3644 = !DILocation(line: 812, column: 15, scope: !3601)
!3645 = !DILocation(line: 813, column: 60, scope: !3601)
!3646 = !DILocation(line: 815, column: 32, scope: !3601)
!3647 = !DILocation(line: 815, column: 47, scope: !3601)
!3648 = !DILocation(line: 813, column: 3, scope: !3601)
!3649 = !DILocation(line: 816, column: 9, scope: !3601)
!3650 = !DILocation(line: 817, column: 7, scope: !3601)
!3651 = !DILocation(line: 818, column: 11, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3601, file: !764, line: 817, column: 7)
!3653 = !DILocation(line: 818, column: 5, scope: !3652)
!3654 = !DILocation(line: 819, column: 3, scope: !3601)
!3655 = distinct !DISubprogram(name: "quotearg_free", scope: !764, file: !764, line: 837, type: !342, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3656)
!3656 = !{!3657, !3658}
!3657 = !DILocalVariable(name: "sv", scope: !3655, file: !764, line: 839, type: !851)
!3658 = !DILocalVariable(name: "i", scope: !3659, file: !764, line: 840, type: !63)
!3659 = distinct !DILexicalBlock(scope: !3655, file: !764, line: 840, column: 3)
!3660 = !DILocation(line: 839, column: 24, scope: !3655)
!3661 = !DILocation(line: 0, scope: !3655)
!3662 = !DILocation(line: 0, scope: !3659)
!3663 = !DILocation(line: 840, column: 21, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3659, file: !764, line: 840, column: 3)
!3665 = !DILocation(line: 840, column: 3, scope: !3659)
!3666 = !DILocation(line: 842, column: 13, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3655, file: !764, line: 842, column: 7)
!3668 = !{!3669, !1064, i64 8}
!3669 = !{!"slotvec", !1349, i64 0, !1064, i64 8}
!3670 = !DILocation(line: 842, column: 17, scope: !3667)
!3671 = !DILocation(line: 842, column: 7, scope: !3655)
!3672 = !DILocation(line: 841, column: 17, scope: !3664)
!3673 = !DILocation(line: 841, column: 5, scope: !3664)
!3674 = !DILocation(line: 840, column: 32, scope: !3664)
!3675 = distinct !{!3675, !3665, !3676, !1179}
!3676 = !DILocation(line: 841, column: 20, scope: !3659)
!3677 = !DILocation(line: 844, column: 7, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3667, file: !764, line: 843, column: 5)
!3679 = !DILocation(line: 845, column: 21, scope: !3678)
!3680 = !{!3669, !1349, i64 0}
!3681 = !DILocation(line: 846, column: 20, scope: !3678)
!3682 = !DILocation(line: 847, column: 5, scope: !3678)
!3683 = !DILocation(line: 848, column: 10, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3655, file: !764, line: 848, column: 7)
!3685 = !DILocation(line: 848, column: 7, scope: !3655)
!3686 = !DILocation(line: 850, column: 7, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3684, file: !764, line: 849, column: 5)
!3688 = !DILocation(line: 851, column: 15, scope: !3687)
!3689 = !DILocation(line: 852, column: 5, scope: !3687)
!3690 = !DILocation(line: 853, column: 10, scope: !3655)
!3691 = !DILocation(line: 854, column: 1, scope: !3655)
!3692 = distinct !DISubprogram(name: "quotearg_n", scope: !764, file: !764, line: 919, type: !1246, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3693)
!3693 = !{!3694, !3695}
!3694 = !DILocalVariable(name: "n", arg: 1, scope: !3692, file: !764, line: 919, type: !63)
!3695 = !DILocalVariable(name: "arg", arg: 2, scope: !3692, file: !764, line: 919, type: !100)
!3696 = !DILocation(line: 0, scope: !3692)
!3697 = !DILocation(line: 921, column: 10, scope: !3692)
!3698 = !DILocation(line: 921, column: 3, scope: !3692)
!3699 = distinct !DISubprogram(name: "quotearg_n_options", scope: !764, file: !764, line: 866, type: !3700, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3702)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!94, !63, !100, !97, !2928}
!3702 = !{!3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3713, !3714, !3716, !3717, !3718}
!3703 = !DILocalVariable(name: "n", arg: 1, scope: !3699, file: !764, line: 866, type: !63)
!3704 = !DILocalVariable(name: "arg", arg: 2, scope: !3699, file: !764, line: 866, type: !100)
!3705 = !DILocalVariable(name: "argsize", arg: 3, scope: !3699, file: !764, line: 866, type: !97)
!3706 = !DILocalVariable(name: "options", arg: 4, scope: !3699, file: !764, line: 867, type: !2928)
!3707 = !DILocalVariable(name: "saved_errno", scope: !3699, file: !764, line: 869, type: !63)
!3708 = !DILocalVariable(name: "sv", scope: !3699, file: !764, line: 871, type: !851)
!3709 = !DILocalVariable(name: "nslots_max", scope: !3699, file: !764, line: 873, type: !63)
!3710 = !DILocalVariable(name: "preallocated", scope: !3711, file: !764, line: 879, type: !103)
!3711 = distinct !DILexicalBlock(scope: !3712, file: !764, line: 878, column: 5)
!3712 = distinct !DILexicalBlock(scope: !3699, file: !764, line: 877, column: 7)
!3713 = !DILocalVariable(name: "new_nslots", scope: !3711, file: !764, line: 880, type: !354)
!3714 = !DILocalVariable(name: "size", scope: !3715, file: !764, line: 891, type: !97)
!3715 = distinct !DILexicalBlock(scope: !3699, file: !764, line: 890, column: 3)
!3716 = !DILocalVariable(name: "val", scope: !3715, file: !764, line: 892, type: !94)
!3717 = !DILocalVariable(name: "flags", scope: !3715, file: !764, line: 894, type: !63)
!3718 = !DILocalVariable(name: "qsize", scope: !3715, file: !764, line: 895, type: !97)
!3719 = !DILocation(line: 0, scope: !3699)
!3720 = !DILocation(line: 869, column: 21, scope: !3699)
!3721 = !DILocation(line: 871, column: 24, scope: !3699)
!3722 = !DILocation(line: 874, column: 17, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3699, file: !764, line: 874, column: 7)
!3724 = !DILocation(line: 875, column: 5, scope: !3723)
!3725 = !DILocation(line: 877, column: 7, scope: !3712)
!3726 = !DILocation(line: 877, column: 14, scope: !3712)
!3727 = !DILocation(line: 877, column: 7, scope: !3699)
!3728 = !DILocation(line: 879, column: 31, scope: !3711)
!3729 = !DILocation(line: 0, scope: !3711)
!3730 = !DILocation(line: 880, column: 7, scope: !3711)
!3731 = !DILocation(line: 880, column: 26, scope: !3711)
!3732 = !DILocation(line: 880, column: 13, scope: !3711)
!3733 = !DILocation(line: 882, column: 31, scope: !3711)
!3734 = !DILocation(line: 883, column: 33, scope: !3711)
!3735 = !DILocation(line: 883, column: 42, scope: !3711)
!3736 = !DILocation(line: 883, column: 31, scope: !3711)
!3737 = !DILocation(line: 882, column: 22, scope: !3711)
!3738 = !DILocation(line: 882, column: 15, scope: !3711)
!3739 = !DILocation(line: 884, column: 11, scope: !3711)
!3740 = !DILocation(line: 885, column: 15, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3711, file: !764, line: 884, column: 11)
!3742 = !{i64 0, i64 8, !1348, i64 8, i64 8, !1063}
!3743 = !DILocation(line: 885, column: 9, scope: !3741)
!3744 = !DILocation(line: 886, column: 20, scope: !3711)
!3745 = !DILocation(line: 886, column: 18, scope: !3711)
!3746 = !DILocation(line: 886, column: 32, scope: !3711)
!3747 = !DILocation(line: 886, column: 43, scope: !3711)
!3748 = !DILocation(line: 886, column: 53, scope: !3711)
!3749 = !DILocation(line: 0, scope: !3138, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 886, column: 7, scope: !3711)
!3751 = !DILocation(line: 59, column: 10, scope: !3138, inlinedAt: !3750)
!3752 = !DILocation(line: 887, column: 16, scope: !3711)
!3753 = !DILocation(line: 887, column: 14, scope: !3711)
!3754 = !DILocation(line: 888, column: 5, scope: !3712)
!3755 = !DILocation(line: 888, column: 5, scope: !3711)
!3756 = !DILocation(line: 891, column: 19, scope: !3715)
!3757 = !DILocation(line: 891, column: 25, scope: !3715)
!3758 = !DILocation(line: 0, scope: !3715)
!3759 = !DILocation(line: 892, column: 23, scope: !3715)
!3760 = !DILocation(line: 894, column: 26, scope: !3715)
!3761 = !DILocation(line: 894, column: 32, scope: !3715)
!3762 = !DILocation(line: 896, column: 55, scope: !3715)
!3763 = !DILocation(line: 897, column: 55, scope: !3715)
!3764 = !DILocation(line: 898, column: 55, scope: !3715)
!3765 = !DILocation(line: 899, column: 55, scope: !3715)
!3766 = !DILocation(line: 895, column: 20, scope: !3715)
!3767 = !DILocation(line: 901, column: 14, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3715, file: !764, line: 901, column: 9)
!3769 = !DILocation(line: 901, column: 9, scope: !3715)
!3770 = !DILocation(line: 903, column: 35, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3768, file: !764, line: 902, column: 7)
!3772 = !DILocation(line: 903, column: 20, scope: !3771)
!3773 = !DILocation(line: 904, column: 17, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3771, file: !764, line: 904, column: 13)
!3775 = !DILocation(line: 904, column: 13, scope: !3771)
!3776 = !DILocation(line: 905, column: 11, scope: !3774)
!3777 = !DILocation(line: 906, column: 27, scope: !3771)
!3778 = !DILocation(line: 906, column: 19, scope: !3771)
!3779 = !DILocation(line: 907, column: 69, scope: !3771)
!3780 = !DILocation(line: 909, column: 44, scope: !3771)
!3781 = !DILocation(line: 910, column: 44, scope: !3771)
!3782 = !DILocation(line: 907, column: 9, scope: !3771)
!3783 = !DILocation(line: 911, column: 7, scope: !3771)
!3784 = !DILocation(line: 913, column: 11, scope: !3715)
!3785 = !DILocation(line: 914, column: 5, scope: !3715)
!3786 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !764, file: !764, line: 925, type: !3787, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3789)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!94, !63, !100, !97}
!3789 = !{!3790, !3791, !3792}
!3790 = !DILocalVariable(name: "n", arg: 1, scope: !3786, file: !764, line: 925, type: !63)
!3791 = !DILocalVariable(name: "arg", arg: 2, scope: !3786, file: !764, line: 925, type: !100)
!3792 = !DILocalVariable(name: "argsize", arg: 3, scope: !3786, file: !764, line: 925, type: !97)
!3793 = !DILocation(line: 0, scope: !3786)
!3794 = !DILocation(line: 927, column: 10, scope: !3786)
!3795 = !DILocation(line: 927, column: 3, scope: !3786)
!3796 = distinct !DISubprogram(name: "quotearg", scope: !764, file: !764, line: 931, type: !1255, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3797)
!3797 = !{!3798}
!3798 = !DILocalVariable(name: "arg", arg: 1, scope: !3796, file: !764, line: 931, type: !100)
!3799 = !DILocation(line: 0, scope: !3796)
!3800 = !DILocation(line: 0, scope: !3692, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 933, column: 10, scope: !3796)
!3802 = !DILocation(line: 921, column: 10, scope: !3692, inlinedAt: !3801)
!3803 = !DILocation(line: 933, column: 3, scope: !3796)
!3804 = distinct !DISubprogram(name: "quotearg_mem", scope: !764, file: !764, line: 937, type: !3805, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3807)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!94, !100, !97}
!3807 = !{!3808, !3809}
!3808 = !DILocalVariable(name: "arg", arg: 1, scope: !3804, file: !764, line: 937, type: !100)
!3809 = !DILocalVariable(name: "argsize", arg: 2, scope: !3804, file: !764, line: 937, type: !97)
!3810 = !DILocation(line: 0, scope: !3804)
!3811 = !DILocation(line: 0, scope: !3786, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 939, column: 10, scope: !3804)
!3813 = !DILocation(line: 927, column: 10, scope: !3786, inlinedAt: !3812)
!3814 = !DILocation(line: 939, column: 3, scope: !3804)
!3815 = distinct !DISubprogram(name: "quotearg_n_style", scope: !764, file: !764, line: 943, type: !3816, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3818)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!94, !63, !411, !100}
!3818 = !{!3819, !3820, !3821, !3822}
!3819 = !DILocalVariable(name: "n", arg: 1, scope: !3815, file: !764, line: 943, type: !63)
!3820 = !DILocalVariable(name: "s", arg: 2, scope: !3815, file: !764, line: 943, type: !411)
!3821 = !DILocalVariable(name: "arg", arg: 3, scope: !3815, file: !764, line: 943, type: !100)
!3822 = !DILocalVariable(name: "o", scope: !3815, file: !764, line: 945, type: !2929)
!3823 = !DILocation(line: 0, scope: !3815)
!3824 = !DILocation(line: 945, column: 3, scope: !3815)
!3825 = !DILocation(line: 945, column: 32, scope: !3815)
!3826 = !{!3827}
!3827 = distinct !{!3827, !3828, !"quoting_options_from_style: argument 0"}
!3828 = distinct !{!3828, !"quoting_options_from_style"}
!3829 = !DILocation(line: 945, column: 36, scope: !3815)
!3830 = !DILocalVariable(name: "style", arg: 1, scope: !3831, file: !764, line: 183, type: !411)
!3831 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !764, file: !764, line: 183, type: !3832, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3834)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!803, !411}
!3834 = !{!3830, !3835}
!3835 = !DILocalVariable(name: "o", scope: !3831, file: !764, line: 185, type: !803)
!3836 = !DILocation(line: 0, scope: !3831, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 945, column: 36, scope: !3815)
!3838 = !DILocation(line: 185, column: 26, scope: !3831, inlinedAt: !3837)
!3839 = !DILocation(line: 186, column: 13, scope: !3840, inlinedAt: !3837)
!3840 = distinct !DILexicalBlock(scope: !3831, file: !764, line: 186, column: 7)
!3841 = !DILocation(line: 186, column: 7, scope: !3831, inlinedAt: !3837)
!3842 = !DILocation(line: 187, column: 5, scope: !3840, inlinedAt: !3837)
!3843 = !DILocation(line: 188, column: 11, scope: !3831, inlinedAt: !3837)
!3844 = !DILocation(line: 946, column: 10, scope: !3815)
!3845 = !DILocation(line: 947, column: 1, scope: !3815)
!3846 = !DILocation(line: 946, column: 3, scope: !3815)
!3847 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !764, file: !764, line: 950, type: !3848, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3850)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!94, !63, !411, !100, !97}
!3850 = !{!3851, !3852, !3853, !3854, !3855}
!3851 = !DILocalVariable(name: "n", arg: 1, scope: !3847, file: !764, line: 950, type: !63)
!3852 = !DILocalVariable(name: "s", arg: 2, scope: !3847, file: !764, line: 950, type: !411)
!3853 = !DILocalVariable(name: "arg", arg: 3, scope: !3847, file: !764, line: 951, type: !100)
!3854 = !DILocalVariable(name: "argsize", arg: 4, scope: !3847, file: !764, line: 951, type: !97)
!3855 = !DILocalVariable(name: "o", scope: !3847, file: !764, line: 953, type: !2929)
!3856 = !DILocation(line: 0, scope: !3847)
!3857 = !DILocation(line: 953, column: 3, scope: !3847)
!3858 = !DILocation(line: 953, column: 32, scope: !3847)
!3859 = !{!3860}
!3860 = distinct !{!3860, !3861, !"quoting_options_from_style: argument 0"}
!3861 = distinct !{!3861, !"quoting_options_from_style"}
!3862 = !DILocation(line: 953, column: 36, scope: !3847)
!3863 = !DILocation(line: 0, scope: !3831, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 953, column: 36, scope: !3847)
!3865 = !DILocation(line: 185, column: 26, scope: !3831, inlinedAt: !3864)
!3866 = !DILocation(line: 186, column: 13, scope: !3840, inlinedAt: !3864)
!3867 = !DILocation(line: 186, column: 7, scope: !3831, inlinedAt: !3864)
!3868 = !DILocation(line: 187, column: 5, scope: !3840, inlinedAt: !3864)
!3869 = !DILocation(line: 188, column: 11, scope: !3831, inlinedAt: !3864)
!3870 = !DILocation(line: 954, column: 10, scope: !3847)
!3871 = !DILocation(line: 955, column: 1, scope: !3847)
!3872 = !DILocation(line: 954, column: 3, scope: !3847)
!3873 = distinct !DISubprogram(name: "quotearg_style", scope: !764, file: !764, line: 958, type: !3874, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3876)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!94, !411, !100}
!3876 = !{!3877, !3878}
!3877 = !DILocalVariable(name: "s", arg: 1, scope: !3873, file: !764, line: 958, type: !411)
!3878 = !DILocalVariable(name: "arg", arg: 2, scope: !3873, file: !764, line: 958, type: !100)
!3879 = !DILocation(line: 0, scope: !3873)
!3880 = !DILocation(line: 0, scope: !3815, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 960, column: 10, scope: !3873)
!3882 = !DILocation(line: 945, column: 3, scope: !3815, inlinedAt: !3881)
!3883 = !DILocation(line: 945, column: 32, scope: !3815, inlinedAt: !3881)
!3884 = !{!3885}
!3885 = distinct !{!3885, !3886, !"quoting_options_from_style: argument 0"}
!3886 = distinct !{!3886, !"quoting_options_from_style"}
!3887 = !DILocation(line: 945, column: 36, scope: !3815, inlinedAt: !3881)
!3888 = !DILocation(line: 0, scope: !3831, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 945, column: 36, scope: !3815, inlinedAt: !3881)
!3890 = !DILocation(line: 185, column: 26, scope: !3831, inlinedAt: !3889)
!3891 = !DILocation(line: 186, column: 13, scope: !3840, inlinedAt: !3889)
!3892 = !DILocation(line: 186, column: 7, scope: !3831, inlinedAt: !3889)
!3893 = !DILocation(line: 187, column: 5, scope: !3840, inlinedAt: !3889)
!3894 = !DILocation(line: 188, column: 11, scope: !3831, inlinedAt: !3889)
!3895 = !DILocation(line: 946, column: 10, scope: !3815, inlinedAt: !3881)
!3896 = !DILocation(line: 947, column: 1, scope: !3815, inlinedAt: !3881)
!3897 = !DILocation(line: 960, column: 3, scope: !3873)
!3898 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !764, file: !764, line: 964, type: !3899, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3901)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!94, !411, !100, !97}
!3901 = !{!3902, !3903, !3904}
!3902 = !DILocalVariable(name: "s", arg: 1, scope: !3898, file: !764, line: 964, type: !411)
!3903 = !DILocalVariable(name: "arg", arg: 2, scope: !3898, file: !764, line: 964, type: !100)
!3904 = !DILocalVariable(name: "argsize", arg: 3, scope: !3898, file: !764, line: 964, type: !97)
!3905 = !DILocation(line: 0, scope: !3898)
!3906 = !DILocation(line: 0, scope: !3847, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 966, column: 10, scope: !3898)
!3908 = !DILocation(line: 953, column: 3, scope: !3847, inlinedAt: !3907)
!3909 = !DILocation(line: 953, column: 32, scope: !3847, inlinedAt: !3907)
!3910 = !{!3911}
!3911 = distinct !{!3911, !3912, !"quoting_options_from_style: argument 0"}
!3912 = distinct !{!3912, !"quoting_options_from_style"}
!3913 = !DILocation(line: 953, column: 36, scope: !3847, inlinedAt: !3907)
!3914 = !DILocation(line: 0, scope: !3831, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 953, column: 36, scope: !3847, inlinedAt: !3907)
!3916 = !DILocation(line: 185, column: 26, scope: !3831, inlinedAt: !3915)
!3917 = !DILocation(line: 186, column: 13, scope: !3840, inlinedAt: !3915)
!3918 = !DILocation(line: 186, column: 7, scope: !3831, inlinedAt: !3915)
!3919 = !DILocation(line: 187, column: 5, scope: !3840, inlinedAt: !3915)
!3920 = !DILocation(line: 188, column: 11, scope: !3831, inlinedAt: !3915)
!3921 = !DILocation(line: 954, column: 10, scope: !3847, inlinedAt: !3907)
!3922 = !DILocation(line: 955, column: 1, scope: !3847, inlinedAt: !3907)
!3923 = !DILocation(line: 966, column: 3, scope: !3898)
!3924 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !764, file: !764, line: 970, type: !3925, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3927)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!94, !100, !97, !4}
!3927 = !{!3928, !3929, !3930, !3931}
!3928 = !DILocalVariable(name: "arg", arg: 1, scope: !3924, file: !764, line: 970, type: !100)
!3929 = !DILocalVariable(name: "argsize", arg: 2, scope: !3924, file: !764, line: 970, type: !97)
!3930 = !DILocalVariable(name: "ch", arg: 3, scope: !3924, file: !764, line: 970, type: !4)
!3931 = !DILocalVariable(name: "options", scope: !3924, file: !764, line: 972, type: !803)
!3932 = !DILocation(line: 0, scope: !3924)
!3933 = !DILocation(line: 972, column: 3, scope: !3924)
!3934 = !DILocation(line: 972, column: 26, scope: !3924)
!3935 = !DILocation(line: 973, column: 13, scope: !3924)
!3936 = !{i64 0, i64 4, !1141, i64 4, i64 4, !1132, i64 8, i64 32, !1141, i64 40, i64 8, !1063, i64 48, i64 8, !1063}
!3937 = !DILocation(line: 0, scope: !2948, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 974, column: 3, scope: !3924)
!3939 = !DILocation(line: 147, column: 41, scope: !2948, inlinedAt: !3938)
!3940 = !DILocation(line: 147, column: 62, scope: !2948, inlinedAt: !3938)
!3941 = !DILocation(line: 147, column: 57, scope: !2948, inlinedAt: !3938)
!3942 = !DILocation(line: 148, column: 15, scope: !2948, inlinedAt: !3938)
!3943 = !DILocation(line: 149, column: 21, scope: !2948, inlinedAt: !3938)
!3944 = !DILocation(line: 149, column: 24, scope: !2948, inlinedAt: !3938)
!3945 = !DILocation(line: 150, column: 19, scope: !2948, inlinedAt: !3938)
!3946 = !DILocation(line: 150, column: 24, scope: !2948, inlinedAt: !3938)
!3947 = !DILocation(line: 150, column: 6, scope: !2948, inlinedAt: !3938)
!3948 = !DILocation(line: 975, column: 10, scope: !3924)
!3949 = !DILocation(line: 976, column: 1, scope: !3924)
!3950 = !DILocation(line: 975, column: 3, scope: !3924)
!3951 = distinct !DISubprogram(name: "quotearg_char", scope: !764, file: !764, line: 979, type: !3952, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3954)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!94, !100, !4}
!3954 = !{!3955, !3956}
!3955 = !DILocalVariable(name: "arg", arg: 1, scope: !3951, file: !764, line: 979, type: !100)
!3956 = !DILocalVariable(name: "ch", arg: 2, scope: !3951, file: !764, line: 979, type: !4)
!3957 = !DILocation(line: 0, scope: !3951)
!3958 = !DILocation(line: 0, scope: !3924, inlinedAt: !3959)
!3959 = distinct !DILocation(line: 981, column: 10, scope: !3951)
!3960 = !DILocation(line: 972, column: 3, scope: !3924, inlinedAt: !3959)
!3961 = !DILocation(line: 972, column: 26, scope: !3924, inlinedAt: !3959)
!3962 = !DILocation(line: 973, column: 13, scope: !3924, inlinedAt: !3959)
!3963 = !DILocation(line: 0, scope: !2948, inlinedAt: !3964)
!3964 = distinct !DILocation(line: 974, column: 3, scope: !3924, inlinedAt: !3959)
!3965 = !DILocation(line: 147, column: 41, scope: !2948, inlinedAt: !3964)
!3966 = !DILocation(line: 147, column: 62, scope: !2948, inlinedAt: !3964)
!3967 = !DILocation(line: 147, column: 57, scope: !2948, inlinedAt: !3964)
!3968 = !DILocation(line: 148, column: 15, scope: !2948, inlinedAt: !3964)
!3969 = !DILocation(line: 149, column: 21, scope: !2948, inlinedAt: !3964)
!3970 = !DILocation(line: 149, column: 24, scope: !2948, inlinedAt: !3964)
!3971 = !DILocation(line: 150, column: 19, scope: !2948, inlinedAt: !3964)
!3972 = !DILocation(line: 150, column: 24, scope: !2948, inlinedAt: !3964)
!3973 = !DILocation(line: 150, column: 6, scope: !2948, inlinedAt: !3964)
!3974 = !DILocation(line: 975, column: 10, scope: !3924, inlinedAt: !3959)
!3975 = !DILocation(line: 976, column: 1, scope: !3924, inlinedAt: !3959)
!3976 = !DILocation(line: 981, column: 3, scope: !3951)
!3977 = distinct !DISubprogram(name: "quotearg_colon", scope: !764, file: !764, line: 985, type: !1255, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3978)
!3978 = !{!3979}
!3979 = !DILocalVariable(name: "arg", arg: 1, scope: !3977, file: !764, line: 985, type: !100)
!3980 = !DILocation(line: 0, scope: !3977)
!3981 = !DILocation(line: 0, scope: !3951, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 987, column: 10, scope: !3977)
!3983 = !DILocation(line: 0, scope: !3924, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 981, column: 10, scope: !3951, inlinedAt: !3982)
!3985 = !DILocation(line: 972, column: 3, scope: !3924, inlinedAt: !3984)
!3986 = !DILocation(line: 972, column: 26, scope: !3924, inlinedAt: !3984)
!3987 = !DILocation(line: 973, column: 13, scope: !3924, inlinedAt: !3984)
!3988 = !DILocation(line: 0, scope: !2948, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 974, column: 3, scope: !3924, inlinedAt: !3984)
!3990 = !DILocation(line: 147, column: 57, scope: !2948, inlinedAt: !3989)
!3991 = !DILocation(line: 149, column: 21, scope: !2948, inlinedAt: !3989)
!3992 = !DILocation(line: 150, column: 6, scope: !2948, inlinedAt: !3989)
!3993 = !DILocation(line: 975, column: 10, scope: !3924, inlinedAt: !3984)
!3994 = !DILocation(line: 976, column: 1, scope: !3924, inlinedAt: !3984)
!3995 = !DILocation(line: 987, column: 3, scope: !3977)
!3996 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !764, file: !764, line: 991, type: !3805, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3997)
!3997 = !{!3998, !3999}
!3998 = !DILocalVariable(name: "arg", arg: 1, scope: !3996, file: !764, line: 991, type: !100)
!3999 = !DILocalVariable(name: "argsize", arg: 2, scope: !3996, file: !764, line: 991, type: !97)
!4000 = !DILocation(line: 0, scope: !3996)
!4001 = !DILocation(line: 0, scope: !3924, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 993, column: 10, scope: !3996)
!4003 = !DILocation(line: 972, column: 3, scope: !3924, inlinedAt: !4002)
!4004 = !DILocation(line: 972, column: 26, scope: !3924, inlinedAt: !4002)
!4005 = !DILocation(line: 973, column: 13, scope: !3924, inlinedAt: !4002)
!4006 = !DILocation(line: 0, scope: !2948, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 974, column: 3, scope: !3924, inlinedAt: !4002)
!4008 = !DILocation(line: 147, column: 57, scope: !2948, inlinedAt: !4007)
!4009 = !DILocation(line: 149, column: 21, scope: !2948, inlinedAt: !4007)
!4010 = !DILocation(line: 150, column: 6, scope: !2948, inlinedAt: !4007)
!4011 = !DILocation(line: 975, column: 10, scope: !3924, inlinedAt: !4002)
!4012 = !DILocation(line: 976, column: 1, scope: !3924, inlinedAt: !4002)
!4013 = !DILocation(line: 993, column: 3, scope: !3996)
!4014 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !764, file: !764, line: 997, type: !3816, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4015)
!4015 = !{!4016, !4017, !4018, !4019}
!4016 = !DILocalVariable(name: "n", arg: 1, scope: !4014, file: !764, line: 997, type: !63)
!4017 = !DILocalVariable(name: "s", arg: 2, scope: !4014, file: !764, line: 997, type: !411)
!4018 = !DILocalVariable(name: "arg", arg: 3, scope: !4014, file: !764, line: 997, type: !100)
!4019 = !DILocalVariable(name: "options", scope: !4014, file: !764, line: 999, type: !803)
!4020 = !DILocation(line: 185, column: 26, scope: !3831, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 1000, column: 13, scope: !4014)
!4022 = !DILocation(line: 0, scope: !4014)
!4023 = !DILocation(line: 999, column: 3, scope: !4014)
!4024 = !DILocation(line: 999, column: 26, scope: !4014)
!4025 = !DILocation(line: 0, scope: !3831, inlinedAt: !4021)
!4026 = !DILocation(line: 186, column: 13, scope: !3840, inlinedAt: !4021)
!4027 = !DILocation(line: 186, column: 7, scope: !3831, inlinedAt: !4021)
!4028 = !DILocation(line: 187, column: 5, scope: !3840, inlinedAt: !4021)
!4029 = !{!4030}
!4030 = distinct !{!4030, !4031, !"quoting_options_from_style: argument 0"}
!4031 = distinct !{!4031, !"quoting_options_from_style"}
!4032 = !DILocation(line: 1000, column: 13, scope: !4014)
!4033 = !DILocation(line: 0, scope: !2948, inlinedAt: !4034)
!4034 = distinct !DILocation(line: 1001, column: 3, scope: !4014)
!4035 = !DILocation(line: 147, column: 57, scope: !2948, inlinedAt: !4034)
!4036 = !DILocation(line: 149, column: 21, scope: !2948, inlinedAt: !4034)
!4037 = !DILocation(line: 150, column: 6, scope: !2948, inlinedAt: !4034)
!4038 = !DILocation(line: 1002, column: 10, scope: !4014)
!4039 = !DILocation(line: 1003, column: 1, scope: !4014)
!4040 = !DILocation(line: 1002, column: 3, scope: !4014)
!4041 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !764, file: !764, line: 1006, type: !4042, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4044)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!94, !63, !100, !100, !100}
!4044 = !{!4045, !4046, !4047, !4048}
!4045 = !DILocalVariable(name: "n", arg: 1, scope: !4041, file: !764, line: 1006, type: !63)
!4046 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4041, file: !764, line: 1006, type: !100)
!4047 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4041, file: !764, line: 1007, type: !100)
!4048 = !DILocalVariable(name: "arg", arg: 4, scope: !4041, file: !764, line: 1007, type: !100)
!4049 = !DILocation(line: 0, scope: !4041)
!4050 = !DILocalVariable(name: "n", arg: 1, scope: !4051, file: !764, line: 1014, type: !63)
!4051 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !764, file: !764, line: 1014, type: !4052, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4054)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!94, !63, !100, !100, !100, !97}
!4054 = !{!4050, !4055, !4056, !4057, !4058, !4059}
!4055 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4051, file: !764, line: 1014, type: !100)
!4056 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4051, file: !764, line: 1015, type: !100)
!4057 = !DILocalVariable(name: "arg", arg: 4, scope: !4051, file: !764, line: 1016, type: !100)
!4058 = !DILocalVariable(name: "argsize", arg: 5, scope: !4051, file: !764, line: 1016, type: !97)
!4059 = !DILocalVariable(name: "o", scope: !4051, file: !764, line: 1018, type: !803)
!4060 = !DILocation(line: 0, scope: !4051, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 1009, column: 10, scope: !4041)
!4062 = !DILocation(line: 1018, column: 3, scope: !4051, inlinedAt: !4061)
!4063 = !DILocation(line: 1018, column: 26, scope: !4051, inlinedAt: !4061)
!4064 = !DILocation(line: 1018, column: 30, scope: !4051, inlinedAt: !4061)
!4065 = !DILocation(line: 0, scope: !2988, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 1019, column: 3, scope: !4051, inlinedAt: !4061)
!4067 = !DILocation(line: 174, column: 12, scope: !2988, inlinedAt: !4066)
!4068 = !DILocation(line: 175, column: 8, scope: !3001, inlinedAt: !4066)
!4069 = !DILocation(line: 175, column: 19, scope: !3001, inlinedAt: !4066)
!4070 = !DILocation(line: 176, column: 5, scope: !3001, inlinedAt: !4066)
!4071 = !DILocation(line: 177, column: 6, scope: !2988, inlinedAt: !4066)
!4072 = !DILocation(line: 177, column: 17, scope: !2988, inlinedAt: !4066)
!4073 = !DILocation(line: 178, column: 6, scope: !2988, inlinedAt: !4066)
!4074 = !DILocation(line: 178, column: 18, scope: !2988, inlinedAt: !4066)
!4075 = !DILocation(line: 1020, column: 10, scope: !4051, inlinedAt: !4061)
!4076 = !DILocation(line: 1021, column: 1, scope: !4051, inlinedAt: !4061)
!4077 = !DILocation(line: 1009, column: 3, scope: !4041)
!4078 = !DILocation(line: 0, scope: !4051)
!4079 = !DILocation(line: 1018, column: 3, scope: !4051)
!4080 = !DILocation(line: 1018, column: 26, scope: !4051)
!4081 = !DILocation(line: 1018, column: 30, scope: !4051)
!4082 = !DILocation(line: 0, scope: !2988, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 1019, column: 3, scope: !4051)
!4084 = !DILocation(line: 174, column: 12, scope: !2988, inlinedAt: !4083)
!4085 = !DILocation(line: 175, column: 8, scope: !3001, inlinedAt: !4083)
!4086 = !DILocation(line: 175, column: 19, scope: !3001, inlinedAt: !4083)
!4087 = !DILocation(line: 176, column: 5, scope: !3001, inlinedAt: !4083)
!4088 = !DILocation(line: 177, column: 6, scope: !2988, inlinedAt: !4083)
!4089 = !DILocation(line: 177, column: 17, scope: !2988, inlinedAt: !4083)
!4090 = !DILocation(line: 178, column: 6, scope: !2988, inlinedAt: !4083)
!4091 = !DILocation(line: 178, column: 18, scope: !2988, inlinedAt: !4083)
!4092 = !DILocation(line: 1020, column: 10, scope: !4051)
!4093 = !DILocation(line: 1021, column: 1, scope: !4051)
!4094 = !DILocation(line: 1020, column: 3, scope: !4051)
!4095 = distinct !DISubprogram(name: "quotearg_custom", scope: !764, file: !764, line: 1024, type: !4096, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4098)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!94, !100, !100, !100}
!4098 = !{!4099, !4100, !4101}
!4099 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4095, file: !764, line: 1024, type: !100)
!4100 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4095, file: !764, line: 1024, type: !100)
!4101 = !DILocalVariable(name: "arg", arg: 3, scope: !4095, file: !764, line: 1025, type: !100)
!4102 = !DILocation(line: 0, scope: !4095)
!4103 = !DILocation(line: 0, scope: !4041, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 1027, column: 10, scope: !4095)
!4105 = !DILocation(line: 0, scope: !4051, inlinedAt: !4106)
!4106 = distinct !DILocation(line: 1009, column: 10, scope: !4041, inlinedAt: !4104)
!4107 = !DILocation(line: 1018, column: 3, scope: !4051, inlinedAt: !4106)
!4108 = !DILocation(line: 1018, column: 26, scope: !4051, inlinedAt: !4106)
!4109 = !DILocation(line: 1018, column: 30, scope: !4051, inlinedAt: !4106)
!4110 = !DILocation(line: 0, scope: !2988, inlinedAt: !4111)
!4111 = distinct !DILocation(line: 1019, column: 3, scope: !4051, inlinedAt: !4106)
!4112 = !DILocation(line: 174, column: 12, scope: !2988, inlinedAt: !4111)
!4113 = !DILocation(line: 175, column: 8, scope: !3001, inlinedAt: !4111)
!4114 = !DILocation(line: 175, column: 19, scope: !3001, inlinedAt: !4111)
!4115 = !DILocation(line: 176, column: 5, scope: !3001, inlinedAt: !4111)
!4116 = !DILocation(line: 177, column: 6, scope: !2988, inlinedAt: !4111)
!4117 = !DILocation(line: 177, column: 17, scope: !2988, inlinedAt: !4111)
!4118 = !DILocation(line: 178, column: 6, scope: !2988, inlinedAt: !4111)
!4119 = !DILocation(line: 178, column: 18, scope: !2988, inlinedAt: !4111)
!4120 = !DILocation(line: 1020, column: 10, scope: !4051, inlinedAt: !4106)
!4121 = !DILocation(line: 1021, column: 1, scope: !4051, inlinedAt: !4106)
!4122 = !DILocation(line: 1027, column: 3, scope: !4095)
!4123 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !764, file: !764, line: 1031, type: !4124, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4126)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!94, !100, !100, !100, !97}
!4126 = !{!4127, !4128, !4129, !4130}
!4127 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4123, file: !764, line: 1031, type: !100)
!4128 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4123, file: !764, line: 1031, type: !100)
!4129 = !DILocalVariable(name: "arg", arg: 3, scope: !4123, file: !764, line: 1032, type: !100)
!4130 = !DILocalVariable(name: "argsize", arg: 4, scope: !4123, file: !764, line: 1032, type: !97)
!4131 = !DILocation(line: 0, scope: !4123)
!4132 = !DILocation(line: 0, scope: !4051, inlinedAt: !4133)
!4133 = distinct !DILocation(line: 1034, column: 10, scope: !4123)
!4134 = !DILocation(line: 1018, column: 3, scope: !4051, inlinedAt: !4133)
!4135 = !DILocation(line: 1018, column: 26, scope: !4051, inlinedAt: !4133)
!4136 = !DILocation(line: 1018, column: 30, scope: !4051, inlinedAt: !4133)
!4137 = !DILocation(line: 0, scope: !2988, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 1019, column: 3, scope: !4051, inlinedAt: !4133)
!4139 = !DILocation(line: 174, column: 12, scope: !2988, inlinedAt: !4138)
!4140 = !DILocation(line: 175, column: 8, scope: !3001, inlinedAt: !4138)
!4141 = !DILocation(line: 175, column: 19, scope: !3001, inlinedAt: !4138)
!4142 = !DILocation(line: 176, column: 5, scope: !3001, inlinedAt: !4138)
!4143 = !DILocation(line: 177, column: 6, scope: !2988, inlinedAt: !4138)
!4144 = !DILocation(line: 177, column: 17, scope: !2988, inlinedAt: !4138)
!4145 = !DILocation(line: 178, column: 6, scope: !2988, inlinedAt: !4138)
!4146 = !DILocation(line: 178, column: 18, scope: !2988, inlinedAt: !4138)
!4147 = !DILocation(line: 1020, column: 10, scope: !4051, inlinedAt: !4133)
!4148 = !DILocation(line: 1021, column: 1, scope: !4051, inlinedAt: !4133)
!4149 = !DILocation(line: 1034, column: 3, scope: !4123)
!4150 = distinct !DISubprogram(name: "quote_n_mem", scope: !764, file: !764, line: 1049, type: !4151, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4153)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!100, !63, !100, !97}
!4153 = !{!4154, !4155, !4156}
!4154 = !DILocalVariable(name: "n", arg: 1, scope: !4150, file: !764, line: 1049, type: !63)
!4155 = !DILocalVariable(name: "arg", arg: 2, scope: !4150, file: !764, line: 1049, type: !100)
!4156 = !DILocalVariable(name: "argsize", arg: 3, scope: !4150, file: !764, line: 1049, type: !97)
!4157 = !DILocation(line: 0, scope: !4150)
!4158 = !DILocation(line: 1051, column: 10, scope: !4150)
!4159 = !DILocation(line: 1051, column: 3, scope: !4150)
!4160 = distinct !DISubprogram(name: "quote_mem", scope: !764, file: !764, line: 1055, type: !4161, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4163)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!100, !100, !97}
!4163 = !{!4164, !4165}
!4164 = !DILocalVariable(name: "arg", arg: 1, scope: !4160, file: !764, line: 1055, type: !100)
!4165 = !DILocalVariable(name: "argsize", arg: 2, scope: !4160, file: !764, line: 1055, type: !97)
!4166 = !DILocation(line: 0, scope: !4160)
!4167 = !DILocation(line: 0, scope: !4150, inlinedAt: !4168)
!4168 = distinct !DILocation(line: 1057, column: 10, scope: !4160)
!4169 = !DILocation(line: 1051, column: 10, scope: !4150, inlinedAt: !4168)
!4170 = !DILocation(line: 1057, column: 3, scope: !4160)
!4171 = distinct !DISubprogram(name: "quote_n", scope: !764, file: !764, line: 1061, type: !4172, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4174)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!100, !63, !100}
!4174 = !{!4175, !4176}
!4175 = !DILocalVariable(name: "n", arg: 1, scope: !4171, file: !764, line: 1061, type: !63)
!4176 = !DILocalVariable(name: "arg", arg: 2, scope: !4171, file: !764, line: 1061, type: !100)
!4177 = !DILocation(line: 0, scope: !4171)
!4178 = !DILocation(line: 0, scope: !4150, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 1063, column: 10, scope: !4171)
!4180 = !DILocation(line: 1051, column: 10, scope: !4150, inlinedAt: !4179)
!4181 = !DILocation(line: 1063, column: 3, scope: !4171)
!4182 = distinct !DISubprogram(name: "quote", scope: !764, file: !764, line: 1067, type: !4183, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4185)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!100, !100}
!4185 = !{!4186}
!4186 = !DILocalVariable(name: "arg", arg: 1, scope: !4182, file: !764, line: 1067, type: !100)
!4187 = !DILocation(line: 0, scope: !4182)
!4188 = !DILocation(line: 0, scope: !4171, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 1069, column: 10, scope: !4182)
!4190 = !DILocation(line: 0, scope: !4150, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 1063, column: 10, scope: !4171, inlinedAt: !4189)
!4192 = !DILocation(line: 1051, column: 10, scope: !4150, inlinedAt: !4191)
!4193 = !DILocation(line: 1069, column: 3, scope: !4182)
!4194 = distinct !DISubprogram(name: "version_etc_arn", scope: !864, file: !864, line: 61, type: !4195, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !992, retainedNodes: !4232)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{null, !4197, !100, !100, !100, !4231, !97}
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !4199)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !4200)
!4200 = !{!4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4199, file: !153, line: 51, baseType: !63, size: 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4199, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4199, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4199, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4199, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4199, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4199, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4199, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4199, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4199, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4199, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4199, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4199, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4199, file: !153, line: 70, baseType: !4215, size: 64, offset: 832)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4199, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4199, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4199, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4199, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4199, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4199, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4199, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4199, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4199, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4199, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4199, file: !153, line: 93, baseType: !4215, size: 64, offset: 1344)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4199, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4199, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4199, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4199, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!4232 = !{!4233, !4234, !4235, !4236, !4237, !4238}
!4233 = !DILocalVariable(name: "stream", arg: 1, scope: !4194, file: !864, line: 61, type: !4197)
!4234 = !DILocalVariable(name: "command_name", arg: 2, scope: !4194, file: !864, line: 62, type: !100)
!4235 = !DILocalVariable(name: "package", arg: 3, scope: !4194, file: !864, line: 62, type: !100)
!4236 = !DILocalVariable(name: "version", arg: 4, scope: !4194, file: !864, line: 63, type: !100)
!4237 = !DILocalVariable(name: "authors", arg: 5, scope: !4194, file: !864, line: 64, type: !4231)
!4238 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4194, file: !864, line: 64, type: !97)
!4239 = !DILocation(line: 0, scope: !4194)
!4240 = !DILocation(line: 66, column: 7, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4194, file: !864, line: 66, column: 7)
!4242 = !DILocation(line: 66, column: 7, scope: !4194)
!4243 = !DILocation(line: 67, column: 5, scope: !4241)
!4244 = !DILocation(line: 69, column: 5, scope: !4241)
!4245 = !DILocation(line: 83, column: 3, scope: !4194)
!4246 = !DILocation(line: 85, column: 3, scope: !4194)
!4247 = !DILocation(line: 88, column: 3, scope: !4194)
!4248 = !DILocation(line: 95, column: 3, scope: !4194)
!4249 = !DILocation(line: 97, column: 3, scope: !4194)
!4250 = !DILocation(line: 105, column: 7, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4194, file: !864, line: 98, column: 5)
!4252 = !DILocation(line: 106, column: 7, scope: !4251)
!4253 = !DILocation(line: 109, column: 7, scope: !4251)
!4254 = !DILocation(line: 110, column: 7, scope: !4251)
!4255 = !DILocation(line: 113, column: 7, scope: !4251)
!4256 = !DILocation(line: 115, column: 7, scope: !4251)
!4257 = !DILocation(line: 120, column: 7, scope: !4251)
!4258 = !DILocation(line: 122, column: 7, scope: !4251)
!4259 = !DILocation(line: 127, column: 7, scope: !4251)
!4260 = !DILocation(line: 129, column: 7, scope: !4251)
!4261 = !DILocation(line: 134, column: 7, scope: !4251)
!4262 = !DILocation(line: 137, column: 7, scope: !4251)
!4263 = !DILocation(line: 142, column: 7, scope: !4251)
!4264 = !DILocation(line: 145, column: 7, scope: !4251)
!4265 = !DILocation(line: 150, column: 7, scope: !4251)
!4266 = !DILocation(line: 154, column: 7, scope: !4251)
!4267 = !DILocation(line: 159, column: 7, scope: !4251)
!4268 = !DILocation(line: 163, column: 7, scope: !4251)
!4269 = !DILocation(line: 170, column: 7, scope: !4251)
!4270 = !DILocation(line: 174, column: 7, scope: !4251)
!4271 = !DILocation(line: 176, column: 1, scope: !4194)
!4272 = distinct !DISubprogram(name: "version_etc_ar", scope: !864, file: !864, line: 183, type: !4273, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !992, retainedNodes: !4275)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{null, !4197, !100, !100, !100, !4231}
!4275 = !{!4276, !4277, !4278, !4279, !4280, !4281}
!4276 = !DILocalVariable(name: "stream", arg: 1, scope: !4272, file: !864, line: 183, type: !4197)
!4277 = !DILocalVariable(name: "command_name", arg: 2, scope: !4272, file: !864, line: 184, type: !100)
!4278 = !DILocalVariable(name: "package", arg: 3, scope: !4272, file: !864, line: 184, type: !100)
!4279 = !DILocalVariable(name: "version", arg: 4, scope: !4272, file: !864, line: 185, type: !100)
!4280 = !DILocalVariable(name: "authors", arg: 5, scope: !4272, file: !864, line: 185, type: !4231)
!4281 = !DILocalVariable(name: "n_authors", scope: !4272, file: !864, line: 187, type: !97)
!4282 = !DILocation(line: 0, scope: !4272)
!4283 = !DILocation(line: 189, column: 8, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4272, file: !864, line: 189, column: 3)
!4285 = !DILocation(line: 189, scope: !4284)
!4286 = !DILocation(line: 189, column: 23, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4284, file: !864, line: 189, column: 3)
!4288 = !DILocation(line: 189, column: 3, scope: !4284)
!4289 = !DILocation(line: 189, column: 52, scope: !4287)
!4290 = distinct !{!4290, !4288, !4291, !1179}
!4291 = !DILocation(line: 190, column: 5, scope: !4284)
!4292 = !DILocation(line: 191, column: 3, scope: !4272)
!4293 = !DILocation(line: 192, column: 1, scope: !4272)
!4294 = distinct !DISubprogram(name: "version_etc_va", scope: !864, file: !864, line: 199, type: !4295, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !992, retainedNodes: !4308)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{null, !4197, !100, !100, !100, !4297}
!4297 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !687, line: 52, baseType: !4298)
!4298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !689, line: 14, baseType: !4299)
!4299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4300, baseType: !4301)
!4300 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4302)
!4302 = !{!4303, !4304, !4305, !4306, !4307}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4301, file: !4300, line: 192, baseType: !95, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4301, file: !4300, line: 192, baseType: !95, size: 64, offset: 64)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4301, file: !4300, line: 192, baseType: !95, size: 64, offset: 128)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4301, file: !4300, line: 192, baseType: !63, size: 32, offset: 192)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4301, file: !4300, line: 192, baseType: !63, size: 32, offset: 224)
!4308 = !{!4309, !4310, !4311, !4312, !4313, !4314, !4315}
!4309 = !DILocalVariable(name: "stream", arg: 1, scope: !4294, file: !864, line: 199, type: !4197)
!4310 = !DILocalVariable(name: "command_name", arg: 2, scope: !4294, file: !864, line: 200, type: !100)
!4311 = !DILocalVariable(name: "package", arg: 3, scope: !4294, file: !864, line: 200, type: !100)
!4312 = !DILocalVariable(name: "version", arg: 4, scope: !4294, file: !864, line: 201, type: !100)
!4313 = !DILocalVariable(name: "authors", arg: 5, scope: !4294, file: !864, line: 201, type: !4297)
!4314 = !DILocalVariable(name: "n_authors", scope: !4294, file: !864, line: 203, type: !97)
!4315 = !DILocalVariable(name: "authtab", scope: !4294, file: !864, line: 204, type: !4316)
!4316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 640, elements: !50)
!4317 = !DILocation(line: 0, scope: !4294)
!4318 = !DILocation(line: 201, column: 46, scope: !4294)
!4319 = !DILocation(line: 204, column: 3, scope: !4294)
!4320 = !DILocation(line: 204, column: 15, scope: !4294)
!4321 = !DILocation(line: 208, column: 35, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4323, file: !864, line: 206, column: 3)
!4323 = distinct !DILexicalBlock(scope: !4294, file: !864, line: 206, column: 3)
!4324 = !DILocation(line: 208, column: 33, scope: !4322)
!4325 = !DILocation(line: 208, column: 67, scope: !4322)
!4326 = !DILocation(line: 206, column: 3, scope: !4323)
!4327 = !DILocation(line: 208, column: 14, scope: !4322)
!4328 = !DILocation(line: 0, scope: !4323)
!4329 = !DILocation(line: 211, column: 3, scope: !4294)
!4330 = !DILocation(line: 213, column: 1, scope: !4294)
!4331 = distinct !DISubprogram(name: "version_etc", scope: !864, file: !864, line: 230, type: !4332, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !992, retainedNodes: !4334)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{null, !4197, !100, !100, !100, null}
!4334 = !{!4335, !4336, !4337, !4338, !4339}
!4335 = !DILocalVariable(name: "stream", arg: 1, scope: !4331, file: !864, line: 230, type: !4197)
!4336 = !DILocalVariable(name: "command_name", arg: 2, scope: !4331, file: !864, line: 231, type: !100)
!4337 = !DILocalVariable(name: "package", arg: 3, scope: !4331, file: !864, line: 231, type: !100)
!4338 = !DILocalVariable(name: "version", arg: 4, scope: !4331, file: !864, line: 232, type: !100)
!4339 = !DILocalVariable(name: "authors", scope: !4331, file: !864, line: 234, type: !4297)
!4340 = !DILocation(line: 0, scope: !4331)
!4341 = !DILocation(line: 234, column: 3, scope: !4331)
!4342 = !DILocation(line: 234, column: 11, scope: !4331)
!4343 = !DILocation(line: 235, column: 3, scope: !4331)
!4344 = !DILocation(line: 236, column: 3, scope: !4331)
!4345 = !DILocation(line: 237, column: 3, scope: !4331)
!4346 = !DILocation(line: 238, column: 1, scope: !4331)
!4347 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !864, file: !864, line: 241, type: !342, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !992, retainedNodes: !1072)
!4348 = !DILocation(line: 243, column: 3, scope: !4347)
!4349 = !DILocation(line: 248, column: 3, scope: !4347)
!4350 = !DILocation(line: 254, column: 3, scope: !4347)
!4351 = !DILocation(line: 259, column: 3, scope: !4347)
!4352 = !DILocation(line: 261, column: 1, scope: !4347)
!4353 = distinct !DISubprogram(name: "xnrealloc", scope: !4354, file: !4354, line: 147, type: !4355, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4357)
!4354 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!95, !95, !97, !97}
!4357 = !{!4358, !4359, !4360}
!4358 = !DILocalVariable(name: "p", arg: 1, scope: !4353, file: !4354, line: 147, type: !95)
!4359 = !DILocalVariable(name: "n", arg: 2, scope: !4353, file: !4354, line: 147, type: !97)
!4360 = !DILocalVariable(name: "s", arg: 3, scope: !4353, file: !4354, line: 147, type: !97)
!4361 = !DILocation(line: 0, scope: !4353)
!4362 = !DILocalVariable(name: "p", arg: 1, scope: !4363, file: !999, line: 83, type: !95)
!4363 = distinct !DISubprogram(name: "xreallocarray", scope: !999, file: !999, line: 83, type: !4355, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4364)
!4364 = !{!4362, !4365, !4366}
!4365 = !DILocalVariable(name: "n", arg: 2, scope: !4363, file: !999, line: 83, type: !97)
!4366 = !DILocalVariable(name: "s", arg: 3, scope: !4363, file: !999, line: 83, type: !97)
!4367 = !DILocation(line: 0, scope: !4363, inlinedAt: !4368)
!4368 = distinct !DILocation(line: 149, column: 10, scope: !4353)
!4369 = !DILocation(line: 85, column: 25, scope: !4363, inlinedAt: !4368)
!4370 = !DILocalVariable(name: "p", arg: 1, scope: !4371, file: !999, line: 37, type: !95)
!4371 = distinct !DISubprogram(name: "check_nonnull", scope: !999, file: !999, line: 37, type: !4372, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4374)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!95, !95}
!4374 = !{!4370}
!4375 = !DILocation(line: 0, scope: !4371, inlinedAt: !4376)
!4376 = distinct !DILocation(line: 85, column: 10, scope: !4363, inlinedAt: !4368)
!4377 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4376)
!4378 = distinct !DILexicalBlock(scope: !4371, file: !999, line: 39, column: 7)
!4379 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4376)
!4380 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4376)
!4381 = !DILocation(line: 149, column: 3, scope: !4353)
!4382 = !DILocation(line: 0, scope: !4363)
!4383 = !DILocation(line: 85, column: 25, scope: !4363)
!4384 = !DILocation(line: 0, scope: !4371, inlinedAt: !4385)
!4385 = distinct !DILocation(line: 85, column: 10, scope: !4363)
!4386 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4385)
!4387 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4385)
!4388 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4385)
!4389 = !DILocation(line: 85, column: 3, scope: !4363)
!4390 = distinct !DISubprogram(name: "xmalloc", scope: !999, file: !999, line: 47, type: !4391, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4393)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{!95, !97}
!4393 = !{!4394}
!4394 = !DILocalVariable(name: "s", arg: 1, scope: !4390, file: !999, line: 47, type: !97)
!4395 = !DILocation(line: 0, scope: !4390)
!4396 = !DILocation(line: 49, column: 25, scope: !4390)
!4397 = !DILocation(line: 0, scope: !4371, inlinedAt: !4398)
!4398 = distinct !DILocation(line: 49, column: 10, scope: !4390)
!4399 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4398)
!4400 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4398)
!4401 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4398)
!4402 = !DILocation(line: 49, column: 3, scope: !4390)
!4403 = !DISubprogram(name: "malloc", scope: !1253, file: !1253, line: 540, type: !4391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!4404 = distinct !DISubprogram(name: "ximalloc", scope: !999, file: !999, line: 53, type: !4405, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4407)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!95, !354}
!4407 = !{!4408}
!4408 = !DILocalVariable(name: "s", arg: 1, scope: !4404, file: !999, line: 53, type: !354)
!4409 = !DILocation(line: 0, scope: !4404)
!4410 = !DILocalVariable(name: "s", arg: 1, scope: !4411, file: !4412, line: 55, type: !354)
!4411 = distinct !DISubprogram(name: "imalloc", scope: !4412, file: !4412, line: 55, type: !4405, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4413)
!4412 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4413 = !{!4410}
!4414 = !DILocation(line: 0, scope: !4411, inlinedAt: !4415)
!4415 = distinct !DILocation(line: 55, column: 25, scope: !4404)
!4416 = !DILocation(line: 57, column: 26, scope: !4411, inlinedAt: !4415)
!4417 = !DILocation(line: 0, scope: !4371, inlinedAt: !4418)
!4418 = distinct !DILocation(line: 55, column: 10, scope: !4404)
!4419 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4418)
!4420 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4418)
!4421 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4418)
!4422 = !DILocation(line: 55, column: 3, scope: !4404)
!4423 = distinct !DISubprogram(name: "xcharalloc", scope: !999, file: !999, line: 59, type: !4424, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4426)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{!94, !97}
!4426 = !{!4427}
!4427 = !DILocalVariable(name: "n", arg: 1, scope: !4423, file: !999, line: 59, type: !97)
!4428 = !DILocation(line: 0, scope: !4423)
!4429 = !DILocation(line: 0, scope: !4390, inlinedAt: !4430)
!4430 = distinct !DILocation(line: 61, column: 10, scope: !4423)
!4431 = !DILocation(line: 49, column: 25, scope: !4390, inlinedAt: !4430)
!4432 = !DILocation(line: 0, scope: !4371, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 49, column: 10, scope: !4390, inlinedAt: !4430)
!4434 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4433)
!4435 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4433)
!4436 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4433)
!4437 = !DILocation(line: 61, column: 3, scope: !4423)
!4438 = distinct !DISubprogram(name: "xrealloc", scope: !999, file: !999, line: 68, type: !4439, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4441)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!95, !95, !97}
!4441 = !{!4442, !4443}
!4442 = !DILocalVariable(name: "p", arg: 1, scope: !4438, file: !999, line: 68, type: !95)
!4443 = !DILocalVariable(name: "s", arg: 2, scope: !4438, file: !999, line: 68, type: !97)
!4444 = !DILocation(line: 0, scope: !4438)
!4445 = !DILocalVariable(name: "ptr", arg: 1, scope: !4446, file: !4447, line: 2057, type: !95)
!4446 = distinct !DISubprogram(name: "rpl_realloc", scope: !4447, file: !4447, line: 2057, type: !4439, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4448)
!4447 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4448 = !{!4445, !4449}
!4449 = !DILocalVariable(name: "size", arg: 2, scope: !4446, file: !4447, line: 2057, type: !97)
!4450 = !DILocation(line: 0, scope: !4446, inlinedAt: !4451)
!4451 = distinct !DILocation(line: 70, column: 25, scope: !4438)
!4452 = !DILocation(line: 2059, column: 24, scope: !4446, inlinedAt: !4451)
!4453 = !DILocation(line: 2059, column: 10, scope: !4446, inlinedAt: !4451)
!4454 = !DILocation(line: 0, scope: !4371, inlinedAt: !4455)
!4455 = distinct !DILocation(line: 70, column: 10, scope: !4438)
!4456 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4455)
!4457 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4455)
!4458 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4455)
!4459 = !DILocation(line: 70, column: 3, scope: !4438)
!4460 = !DISubprogram(name: "realloc", scope: !1253, file: !1253, line: 551, type: !4439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!4461 = distinct !DISubprogram(name: "xirealloc", scope: !999, file: !999, line: 74, type: !4462, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4464)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!95, !95, !354}
!4464 = !{!4465, !4466}
!4465 = !DILocalVariable(name: "p", arg: 1, scope: !4461, file: !999, line: 74, type: !95)
!4466 = !DILocalVariable(name: "s", arg: 2, scope: !4461, file: !999, line: 74, type: !354)
!4467 = !DILocation(line: 0, scope: !4461)
!4468 = !DILocalVariable(name: "p", arg: 1, scope: !4469, file: !4412, line: 66, type: !95)
!4469 = distinct !DISubprogram(name: "irealloc", scope: !4412, file: !4412, line: 66, type: !4462, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4470)
!4470 = !{!4468, !4471}
!4471 = !DILocalVariable(name: "s", arg: 2, scope: !4469, file: !4412, line: 66, type: !354)
!4472 = !DILocation(line: 0, scope: !4469, inlinedAt: !4473)
!4473 = distinct !DILocation(line: 76, column: 25, scope: !4461)
!4474 = !DILocation(line: 0, scope: !4446, inlinedAt: !4475)
!4475 = distinct !DILocation(line: 68, column: 26, scope: !4469, inlinedAt: !4473)
!4476 = !DILocation(line: 2059, column: 24, scope: !4446, inlinedAt: !4475)
!4477 = !DILocation(line: 2059, column: 10, scope: !4446, inlinedAt: !4475)
!4478 = !DILocation(line: 0, scope: !4371, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 76, column: 10, scope: !4461)
!4480 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4479)
!4481 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4479)
!4482 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4479)
!4483 = !DILocation(line: 76, column: 3, scope: !4461)
!4484 = distinct !DISubprogram(name: "xireallocarray", scope: !999, file: !999, line: 89, type: !4485, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4487)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!95, !95, !354, !354}
!4487 = !{!4488, !4489, !4490}
!4488 = !DILocalVariable(name: "p", arg: 1, scope: !4484, file: !999, line: 89, type: !95)
!4489 = !DILocalVariable(name: "n", arg: 2, scope: !4484, file: !999, line: 89, type: !354)
!4490 = !DILocalVariable(name: "s", arg: 3, scope: !4484, file: !999, line: 89, type: !354)
!4491 = !DILocation(line: 0, scope: !4484)
!4492 = !DILocalVariable(name: "p", arg: 1, scope: !4493, file: !4412, line: 98, type: !95)
!4493 = distinct !DISubprogram(name: "ireallocarray", scope: !4412, file: !4412, line: 98, type: !4485, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4494)
!4494 = !{!4492, !4495, !4496}
!4495 = !DILocalVariable(name: "n", arg: 2, scope: !4493, file: !4412, line: 98, type: !354)
!4496 = !DILocalVariable(name: "s", arg: 3, scope: !4493, file: !4412, line: 98, type: !354)
!4497 = !DILocation(line: 0, scope: !4493, inlinedAt: !4498)
!4498 = distinct !DILocation(line: 91, column: 25, scope: !4484)
!4499 = !DILocation(line: 101, column: 13, scope: !4493, inlinedAt: !4498)
!4500 = !DILocation(line: 0, scope: !4371, inlinedAt: !4501)
!4501 = distinct !DILocation(line: 91, column: 10, scope: !4484)
!4502 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4501)
!4503 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4501)
!4504 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4501)
!4505 = !DILocation(line: 91, column: 3, scope: !4484)
!4506 = distinct !DISubprogram(name: "xnmalloc", scope: !999, file: !999, line: 98, type: !4507, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4509)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!95, !97, !97}
!4509 = !{!4510, !4511}
!4510 = !DILocalVariable(name: "n", arg: 1, scope: !4506, file: !999, line: 98, type: !97)
!4511 = !DILocalVariable(name: "s", arg: 2, scope: !4506, file: !999, line: 98, type: !97)
!4512 = !DILocation(line: 0, scope: !4506)
!4513 = !DILocation(line: 0, scope: !4363, inlinedAt: !4514)
!4514 = distinct !DILocation(line: 100, column: 10, scope: !4506)
!4515 = !DILocation(line: 85, column: 25, scope: !4363, inlinedAt: !4514)
!4516 = !DILocation(line: 0, scope: !4371, inlinedAt: !4517)
!4517 = distinct !DILocation(line: 85, column: 10, scope: !4363, inlinedAt: !4514)
!4518 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4517)
!4519 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4517)
!4520 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4517)
!4521 = !DILocation(line: 100, column: 3, scope: !4506)
!4522 = distinct !DISubprogram(name: "xinmalloc", scope: !999, file: !999, line: 104, type: !4523, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4525)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!95, !354, !354}
!4525 = !{!4526, !4527}
!4526 = !DILocalVariable(name: "n", arg: 1, scope: !4522, file: !999, line: 104, type: !354)
!4527 = !DILocalVariable(name: "s", arg: 2, scope: !4522, file: !999, line: 104, type: !354)
!4528 = !DILocation(line: 0, scope: !4522)
!4529 = !DILocation(line: 0, scope: !4484, inlinedAt: !4530)
!4530 = distinct !DILocation(line: 106, column: 10, scope: !4522)
!4531 = !DILocation(line: 0, scope: !4493, inlinedAt: !4532)
!4532 = distinct !DILocation(line: 91, column: 25, scope: !4484, inlinedAt: !4530)
!4533 = !DILocation(line: 101, column: 13, scope: !4493, inlinedAt: !4532)
!4534 = !DILocation(line: 0, scope: !4371, inlinedAt: !4535)
!4535 = distinct !DILocation(line: 91, column: 10, scope: !4484, inlinedAt: !4530)
!4536 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4535)
!4537 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4535)
!4538 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4535)
!4539 = !DILocation(line: 106, column: 3, scope: !4522)
!4540 = distinct !DISubprogram(name: "x2realloc", scope: !999, file: !999, line: 116, type: !4541, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4543)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!95, !95, !1005}
!4543 = !{!4544, !4545}
!4544 = !DILocalVariable(name: "p", arg: 1, scope: !4540, file: !999, line: 116, type: !95)
!4545 = !DILocalVariable(name: "ps", arg: 2, scope: !4540, file: !999, line: 116, type: !1005)
!4546 = !DILocation(line: 0, scope: !4540)
!4547 = !DILocation(line: 0, scope: !1002, inlinedAt: !4548)
!4548 = distinct !DILocation(line: 118, column: 10, scope: !4540)
!4549 = !DILocation(line: 178, column: 14, scope: !1002, inlinedAt: !4548)
!4550 = !DILocation(line: 180, column: 9, scope: !4551, inlinedAt: !4548)
!4551 = distinct !DILexicalBlock(scope: !1002, file: !999, line: 180, column: 7)
!4552 = !DILocation(line: 180, column: 7, scope: !1002, inlinedAt: !4548)
!4553 = !DILocation(line: 182, column: 13, scope: !4554, inlinedAt: !4548)
!4554 = distinct !DILexicalBlock(scope: !4555, file: !999, line: 182, column: 11)
!4555 = distinct !DILexicalBlock(scope: !4551, file: !999, line: 181, column: 5)
!4556 = !DILocation(line: 182, column: 11, scope: !4555, inlinedAt: !4548)
!4557 = !DILocation(line: 197, column: 11, scope: !4558, inlinedAt: !4548)
!4558 = distinct !DILexicalBlock(scope: !4559, file: !999, line: 197, column: 11)
!4559 = distinct !DILexicalBlock(scope: !4551, file: !999, line: 195, column: 5)
!4560 = !DILocation(line: 197, column: 11, scope: !4559, inlinedAt: !4548)
!4561 = !DILocation(line: 198, column: 9, scope: !4558, inlinedAt: !4548)
!4562 = !DILocation(line: 0, scope: !4363, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 201, column: 7, scope: !1002, inlinedAt: !4548)
!4564 = !DILocation(line: 85, column: 25, scope: !4363, inlinedAt: !4563)
!4565 = !DILocation(line: 0, scope: !4371, inlinedAt: !4566)
!4566 = distinct !DILocation(line: 85, column: 10, scope: !4363, inlinedAt: !4563)
!4567 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4566)
!4568 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4566)
!4569 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4566)
!4570 = !DILocation(line: 202, column: 7, scope: !1002, inlinedAt: !4548)
!4571 = !DILocation(line: 118, column: 3, scope: !4540)
!4572 = !DILocation(line: 0, scope: !1002)
!4573 = !DILocation(line: 178, column: 14, scope: !1002)
!4574 = !DILocation(line: 180, column: 9, scope: !4551)
!4575 = !DILocation(line: 180, column: 7, scope: !1002)
!4576 = !DILocation(line: 182, column: 13, scope: !4554)
!4577 = !DILocation(line: 182, column: 11, scope: !4555)
!4578 = !DILocation(line: 190, column: 30, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4554, file: !999, line: 183, column: 9)
!4580 = !DILocation(line: 191, column: 16, scope: !4579)
!4581 = !DILocation(line: 191, column: 13, scope: !4579)
!4582 = !DILocation(line: 192, column: 9, scope: !4579)
!4583 = !DILocation(line: 197, column: 11, scope: !4558)
!4584 = !DILocation(line: 197, column: 11, scope: !4559)
!4585 = !DILocation(line: 198, column: 9, scope: !4558)
!4586 = !DILocation(line: 0, scope: !4363, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 201, column: 7, scope: !1002)
!4588 = !DILocation(line: 85, column: 25, scope: !4363, inlinedAt: !4587)
!4589 = !DILocation(line: 0, scope: !4371, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 85, column: 10, scope: !4363, inlinedAt: !4587)
!4591 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4590)
!4592 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4590)
!4593 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4590)
!4594 = !DILocation(line: 202, column: 7, scope: !1002)
!4595 = !DILocation(line: 203, column: 3, scope: !1002)
!4596 = !DILocation(line: 0, scope: !1014)
!4597 = !DILocation(line: 230, column: 14, scope: !1014)
!4598 = !DILocation(line: 238, column: 7, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !1014, file: !999, line: 238, column: 7)
!4600 = !DILocation(line: 238, column: 7, scope: !1014)
!4601 = !DILocation(line: 240, column: 9, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !1014, file: !999, line: 240, column: 7)
!4603 = !DILocation(line: 240, column: 18, scope: !4602)
!4604 = !DILocation(line: 253, column: 8, scope: !1014)
!4605 = !DILocation(line: 258, column: 27, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4607, file: !999, line: 257, column: 5)
!4607 = distinct !DILexicalBlock(scope: !1014, file: !999, line: 256, column: 7)
!4608 = !DILocation(line: 259, column: 32, scope: !4606)
!4609 = !DILocation(line: 260, column: 5, scope: !4606)
!4610 = !DILocation(line: 262, column: 9, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !1014, file: !999, line: 262, column: 7)
!4612 = !DILocation(line: 262, column: 7, scope: !1014)
!4613 = !DILocation(line: 263, column: 9, scope: !4611)
!4614 = !DILocation(line: 263, column: 5, scope: !4611)
!4615 = !DILocation(line: 264, column: 9, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !1014, file: !999, line: 264, column: 7)
!4617 = !DILocation(line: 264, column: 14, scope: !4616)
!4618 = !DILocation(line: 265, column: 7, scope: !4616)
!4619 = !DILocation(line: 265, column: 11, scope: !4616)
!4620 = !DILocation(line: 266, column: 11, scope: !4616)
!4621 = !DILocation(line: 267, column: 14, scope: !4616)
!4622 = !DILocation(line: 264, column: 7, scope: !1014)
!4623 = !DILocation(line: 268, column: 5, scope: !4616)
!4624 = !DILocation(line: 0, scope: !4438, inlinedAt: !4625)
!4625 = distinct !DILocation(line: 269, column: 8, scope: !1014)
!4626 = !DILocation(line: 0, scope: !4446, inlinedAt: !4627)
!4627 = distinct !DILocation(line: 70, column: 25, scope: !4438, inlinedAt: !4625)
!4628 = !DILocation(line: 2059, column: 24, scope: !4446, inlinedAt: !4627)
!4629 = !DILocation(line: 2059, column: 10, scope: !4446, inlinedAt: !4627)
!4630 = !DILocation(line: 0, scope: !4371, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 70, column: 10, scope: !4438, inlinedAt: !4625)
!4632 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4631)
!4633 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4631)
!4634 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4631)
!4635 = !DILocation(line: 270, column: 7, scope: !1014)
!4636 = !DILocation(line: 271, column: 3, scope: !1014)
!4637 = distinct !DISubprogram(name: "xzalloc", scope: !999, file: !999, line: 279, type: !4391, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4638)
!4638 = !{!4639}
!4639 = !DILocalVariable(name: "s", arg: 1, scope: !4637, file: !999, line: 279, type: !97)
!4640 = !DILocation(line: 0, scope: !4637)
!4641 = !DILocalVariable(name: "n", arg: 1, scope: !4642, file: !999, line: 294, type: !97)
!4642 = distinct !DISubprogram(name: "xcalloc", scope: !999, file: !999, line: 294, type: !4507, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4643)
!4643 = !{!4641, !4644}
!4644 = !DILocalVariable(name: "s", arg: 2, scope: !4642, file: !999, line: 294, type: !97)
!4645 = !DILocation(line: 0, scope: !4642, inlinedAt: !4646)
!4646 = distinct !DILocation(line: 281, column: 10, scope: !4637)
!4647 = !DILocation(line: 296, column: 25, scope: !4642, inlinedAt: !4646)
!4648 = !DILocation(line: 0, scope: !4371, inlinedAt: !4649)
!4649 = distinct !DILocation(line: 296, column: 10, scope: !4642, inlinedAt: !4646)
!4650 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4649)
!4651 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4649)
!4652 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4649)
!4653 = !DILocation(line: 281, column: 3, scope: !4637)
!4654 = !DISubprogram(name: "calloc", scope: !1253, file: !1253, line: 543, type: !4507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!4655 = !DILocation(line: 0, scope: !4642)
!4656 = !DILocation(line: 296, column: 25, scope: !4642)
!4657 = !DILocation(line: 0, scope: !4371, inlinedAt: !4658)
!4658 = distinct !DILocation(line: 296, column: 10, scope: !4642)
!4659 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4658)
!4660 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4658)
!4661 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4658)
!4662 = !DILocation(line: 296, column: 3, scope: !4642)
!4663 = distinct !DISubprogram(name: "xizalloc", scope: !999, file: !999, line: 285, type: !4405, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4664)
!4664 = !{!4665}
!4665 = !DILocalVariable(name: "s", arg: 1, scope: !4663, file: !999, line: 285, type: !354)
!4666 = !DILocation(line: 0, scope: !4663)
!4667 = !DILocalVariable(name: "n", arg: 1, scope: !4668, file: !999, line: 300, type: !354)
!4668 = distinct !DISubprogram(name: "xicalloc", scope: !999, file: !999, line: 300, type: !4523, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4669)
!4669 = !{!4667, !4670}
!4670 = !DILocalVariable(name: "s", arg: 2, scope: !4668, file: !999, line: 300, type: !354)
!4671 = !DILocation(line: 0, scope: !4668, inlinedAt: !4672)
!4672 = distinct !DILocation(line: 287, column: 10, scope: !4663)
!4673 = !DILocalVariable(name: "n", arg: 1, scope: !4674, file: !4412, line: 77, type: !354)
!4674 = distinct !DISubprogram(name: "icalloc", scope: !4412, file: !4412, line: 77, type: !4523, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4675)
!4675 = !{!4673, !4676}
!4676 = !DILocalVariable(name: "s", arg: 2, scope: !4674, file: !4412, line: 77, type: !354)
!4677 = !DILocation(line: 0, scope: !4674, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 302, column: 25, scope: !4668, inlinedAt: !4672)
!4679 = !DILocation(line: 91, column: 10, scope: !4674, inlinedAt: !4678)
!4680 = !DILocation(line: 0, scope: !4371, inlinedAt: !4681)
!4681 = distinct !DILocation(line: 302, column: 10, scope: !4668, inlinedAt: !4672)
!4682 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4681)
!4683 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4681)
!4684 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4681)
!4685 = !DILocation(line: 287, column: 3, scope: !4663)
!4686 = !DILocation(line: 0, scope: !4668)
!4687 = !DILocation(line: 0, scope: !4674, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 302, column: 25, scope: !4668)
!4689 = !DILocation(line: 91, column: 10, scope: !4674, inlinedAt: !4688)
!4690 = !DILocation(line: 0, scope: !4371, inlinedAt: !4691)
!4691 = distinct !DILocation(line: 302, column: 10, scope: !4668)
!4692 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4691)
!4693 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4691)
!4694 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4691)
!4695 = !DILocation(line: 302, column: 3, scope: !4668)
!4696 = distinct !DISubprogram(name: "xmemdup", scope: !999, file: !999, line: 310, type: !4697, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4699)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!95, !1277, !97}
!4699 = !{!4700, !4701}
!4700 = !DILocalVariable(name: "p", arg: 1, scope: !4696, file: !999, line: 310, type: !1277)
!4701 = !DILocalVariable(name: "s", arg: 2, scope: !4696, file: !999, line: 310, type: !97)
!4702 = !DILocation(line: 0, scope: !4696)
!4703 = !DILocation(line: 0, scope: !4390, inlinedAt: !4704)
!4704 = distinct !DILocation(line: 312, column: 18, scope: !4696)
!4705 = !DILocation(line: 49, column: 25, scope: !4390, inlinedAt: !4704)
!4706 = !DILocation(line: 0, scope: !4371, inlinedAt: !4707)
!4707 = distinct !DILocation(line: 49, column: 10, scope: !4390, inlinedAt: !4704)
!4708 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4707)
!4709 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4707)
!4710 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4707)
!4711 = !DILocalVariable(name: "__dest", arg: 1, scope: !4712, file: !1386, line: 26, type: !4715)
!4712 = distinct !DISubprogram(name: "memcpy", scope: !1386, file: !1386, line: 26, type: !4713, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4716)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!95, !4715, !1276, !97}
!4715 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !95)
!4716 = !{!4711, !4717, !4718}
!4717 = !DILocalVariable(name: "__src", arg: 2, scope: !4712, file: !1386, line: 26, type: !1276)
!4718 = !DILocalVariable(name: "__len", arg: 3, scope: !4712, file: !1386, line: 26, type: !97)
!4719 = !DILocation(line: 0, scope: !4712, inlinedAt: !4720)
!4720 = distinct !DILocation(line: 312, column: 10, scope: !4696)
!4721 = !DILocation(line: 29, column: 10, scope: !4712, inlinedAt: !4720)
!4722 = !DILocation(line: 312, column: 3, scope: !4696)
!4723 = distinct !DISubprogram(name: "ximemdup", scope: !999, file: !999, line: 316, type: !4724, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4726)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!95, !1277, !354}
!4726 = !{!4727, !4728}
!4727 = !DILocalVariable(name: "p", arg: 1, scope: !4723, file: !999, line: 316, type: !1277)
!4728 = !DILocalVariable(name: "s", arg: 2, scope: !4723, file: !999, line: 316, type: !354)
!4729 = !DILocation(line: 0, scope: !4723)
!4730 = !DILocation(line: 0, scope: !4404, inlinedAt: !4731)
!4731 = distinct !DILocation(line: 318, column: 18, scope: !4723)
!4732 = !DILocation(line: 0, scope: !4411, inlinedAt: !4733)
!4733 = distinct !DILocation(line: 55, column: 25, scope: !4404, inlinedAt: !4731)
!4734 = !DILocation(line: 57, column: 26, scope: !4411, inlinedAt: !4733)
!4735 = !DILocation(line: 0, scope: !4371, inlinedAt: !4736)
!4736 = distinct !DILocation(line: 55, column: 10, scope: !4404, inlinedAt: !4731)
!4737 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4736)
!4738 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4736)
!4739 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4736)
!4740 = !DILocation(line: 0, scope: !4712, inlinedAt: !4741)
!4741 = distinct !DILocation(line: 318, column: 10, scope: !4723)
!4742 = !DILocation(line: 29, column: 10, scope: !4712, inlinedAt: !4741)
!4743 = !DILocation(line: 318, column: 3, scope: !4723)
!4744 = distinct !DISubprogram(name: "ximemdup0", scope: !999, file: !999, line: 325, type: !4745, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4747)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!94, !1277, !354}
!4747 = !{!4748, !4749, !4750}
!4748 = !DILocalVariable(name: "p", arg: 1, scope: !4744, file: !999, line: 325, type: !1277)
!4749 = !DILocalVariable(name: "s", arg: 2, scope: !4744, file: !999, line: 325, type: !354)
!4750 = !DILocalVariable(name: "result", scope: !4744, file: !999, line: 327, type: !94)
!4751 = !DILocation(line: 0, scope: !4744)
!4752 = !DILocation(line: 327, column: 30, scope: !4744)
!4753 = !DILocation(line: 0, scope: !4404, inlinedAt: !4754)
!4754 = distinct !DILocation(line: 327, column: 18, scope: !4744)
!4755 = !DILocation(line: 0, scope: !4411, inlinedAt: !4756)
!4756 = distinct !DILocation(line: 55, column: 25, scope: !4404, inlinedAt: !4754)
!4757 = !DILocation(line: 57, column: 26, scope: !4411, inlinedAt: !4756)
!4758 = !DILocation(line: 0, scope: !4371, inlinedAt: !4759)
!4759 = distinct !DILocation(line: 55, column: 10, scope: !4404, inlinedAt: !4754)
!4760 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4759)
!4761 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4759)
!4762 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4759)
!4763 = !DILocation(line: 328, column: 3, scope: !4744)
!4764 = !DILocation(line: 328, column: 13, scope: !4744)
!4765 = !DILocation(line: 0, scope: !4712, inlinedAt: !4766)
!4766 = distinct !DILocation(line: 329, column: 10, scope: !4744)
!4767 = !DILocation(line: 29, column: 10, scope: !4712, inlinedAt: !4766)
!4768 = !DILocation(line: 329, column: 3, scope: !4744)
!4769 = distinct !DISubprogram(name: "xstrdup", scope: !999, file: !999, line: 335, type: !1255, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4770)
!4770 = !{!4771}
!4771 = !DILocalVariable(name: "string", arg: 1, scope: !4769, file: !999, line: 335, type: !100)
!4772 = !DILocation(line: 0, scope: !4769)
!4773 = !DILocation(line: 337, column: 27, scope: !4769)
!4774 = !DILocation(line: 337, column: 43, scope: !4769)
!4775 = !DILocation(line: 0, scope: !4696, inlinedAt: !4776)
!4776 = distinct !DILocation(line: 337, column: 10, scope: !4769)
!4777 = !DILocation(line: 0, scope: !4390, inlinedAt: !4778)
!4778 = distinct !DILocation(line: 312, column: 18, scope: !4696, inlinedAt: !4776)
!4779 = !DILocation(line: 49, column: 25, scope: !4390, inlinedAt: !4778)
!4780 = !DILocation(line: 0, scope: !4371, inlinedAt: !4781)
!4781 = distinct !DILocation(line: 49, column: 10, scope: !4390, inlinedAt: !4778)
!4782 = !DILocation(line: 39, column: 8, scope: !4378, inlinedAt: !4781)
!4783 = !DILocation(line: 39, column: 7, scope: !4371, inlinedAt: !4781)
!4784 = !DILocation(line: 40, column: 5, scope: !4378, inlinedAt: !4781)
!4785 = !DILocation(line: 0, scope: !4712, inlinedAt: !4786)
!4786 = distinct !DILocation(line: 312, column: 10, scope: !4696, inlinedAt: !4776)
!4787 = !DILocation(line: 29, column: 10, scope: !4712, inlinedAt: !4786)
!4788 = !DILocation(line: 337, column: 3, scope: !4769)
!4789 = distinct !DISubprogram(name: "xalloc_die", scope: !950, file: !950, line: 32, type: !342, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !4790)
!4790 = !{!4791}
!4791 = !DILocalVariable(name: "__errstatus", scope: !4792, file: !950, line: 34, type: !4793)
!4792 = distinct !DILexicalBlock(scope: !4789, file: !950, line: 34, column: 3)
!4793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!4794 = !DILocation(line: 34, column: 3, scope: !4792)
!4795 = !DILocation(line: 0, scope: !4792)
!4796 = !DILocation(line: 40, column: 3, scope: !4789)
!4797 = distinct !DISubprogram(name: "rpl_fopen", scope: !1032, file: !1032, line: 46, type: !4798, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4834)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!4800, !100, !100}
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !4802)
!4802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !4803)
!4803 = !{!4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4802, file: !153, line: 51, baseType: !63, size: 32)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4802, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4802, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4802, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4802, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4802, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4802, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4802, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4802, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4802, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4802, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4802, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4802, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4802, file: !153, line: 70, baseType: !4818, size: 64, offset: 832)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4802, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4802, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4802, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4802, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4802, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4802, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4802, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4802, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4802, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4802, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4802, file: !153, line: 93, baseType: !4818, size: 64, offset: 1344)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4802, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4802, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4802, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4802, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!4834 = !{!4835, !4836, !4837, !4838, !4839, !4840, !4844, !4846, !4847, !4852, !4855, !4856}
!4835 = !DILocalVariable(name: "filename", arg: 1, scope: !4797, file: !1032, line: 46, type: !100)
!4836 = !DILocalVariable(name: "mode", arg: 2, scope: !4797, file: !1032, line: 46, type: !100)
!4837 = !DILocalVariable(name: "open_direction", scope: !4797, file: !1032, line: 54, type: !63)
!4838 = !DILocalVariable(name: "open_flags", scope: !4797, file: !1032, line: 55, type: !63)
!4839 = !DILocalVariable(name: "open_flags_gnu", scope: !4797, file: !1032, line: 57, type: !103)
!4840 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4797, file: !1032, line: 59, type: !4841)
!4841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4842)
!4842 = !{!4843}
!4843 = !DISubrange(count: 81)
!4844 = !DILocalVariable(name: "p", scope: !4845, file: !1032, line: 62, type: !100)
!4845 = distinct !DILexicalBlock(scope: !4797, file: !1032, line: 61, column: 3)
!4846 = !DILocalVariable(name: "q", scope: !4845, file: !1032, line: 64, type: !94)
!4847 = !DILocalVariable(name: "len", scope: !4848, file: !1032, line: 128, type: !97)
!4848 = distinct !DILexicalBlock(scope: !4849, file: !1032, line: 127, column: 9)
!4849 = distinct !DILexicalBlock(scope: !4850, file: !1032, line: 68, column: 7)
!4850 = distinct !DILexicalBlock(scope: !4851, file: !1032, line: 67, column: 5)
!4851 = distinct !DILexicalBlock(scope: !4845, file: !1032, line: 67, column: 5)
!4852 = !DILocalVariable(name: "fd", scope: !4853, file: !1032, line: 199, type: !63)
!4853 = distinct !DILexicalBlock(scope: !4854, file: !1032, line: 198, column: 5)
!4854 = distinct !DILexicalBlock(scope: !4797, file: !1032, line: 197, column: 7)
!4855 = !DILocalVariable(name: "fp", scope: !4853, file: !1032, line: 204, type: !4800)
!4856 = !DILocalVariable(name: "saved_errno", scope: !4857, file: !1032, line: 207, type: !63)
!4857 = distinct !DILexicalBlock(scope: !4858, file: !1032, line: 206, column: 9)
!4858 = distinct !DILexicalBlock(scope: !4853, file: !1032, line: 205, column: 11)
!4859 = !DILocation(line: 0, scope: !4797)
!4860 = !DILocation(line: 59, column: 3, scope: !4797)
!4861 = !DILocation(line: 59, column: 8, scope: !4797)
!4862 = !DILocation(line: 0, scope: !4845)
!4863 = !DILocation(line: 67, column: 5, scope: !4845)
!4864 = !DILocation(line: 54, column: 7, scope: !4797)
!4865 = !DILocation(line: 67, column: 12, scope: !4850)
!4866 = !DILocation(line: 67, column: 5, scope: !4851)
!4867 = !DILocation(line: 74, column: 19, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4869, file: !1032, line: 74, column: 17)
!4869 = distinct !DILexicalBlock(scope: !4849, file: !1032, line: 70, column: 11)
!4870 = !DILocation(line: 74, column: 17, scope: !4869)
!4871 = !DILocation(line: 75, column: 17, scope: !4868)
!4872 = !DILocation(line: 75, column: 20, scope: !4868)
!4873 = !DILocation(line: 75, column: 15, scope: !4868)
!4874 = !DILocation(line: 80, column: 24, scope: !4869)
!4875 = !DILocation(line: 82, column: 19, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4869, file: !1032, line: 82, column: 17)
!4877 = !DILocation(line: 82, column: 17, scope: !4869)
!4878 = !DILocation(line: 83, column: 17, scope: !4876)
!4879 = !DILocation(line: 83, column: 20, scope: !4876)
!4880 = !DILocation(line: 83, column: 15, scope: !4876)
!4881 = !DILocation(line: 88, column: 24, scope: !4869)
!4882 = !DILocation(line: 90, column: 19, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4869, file: !1032, line: 90, column: 17)
!4884 = !DILocation(line: 90, column: 17, scope: !4869)
!4885 = !DILocation(line: 91, column: 17, scope: !4883)
!4886 = !DILocation(line: 91, column: 20, scope: !4883)
!4887 = !DILocation(line: 91, column: 15, scope: !4883)
!4888 = !DILocation(line: 100, column: 19, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4869, file: !1032, line: 100, column: 17)
!4890 = !DILocation(line: 100, column: 17, scope: !4869)
!4891 = !DILocation(line: 101, column: 17, scope: !4889)
!4892 = !DILocation(line: 101, column: 20, scope: !4889)
!4893 = !DILocation(line: 101, column: 15, scope: !4889)
!4894 = !DILocation(line: 107, column: 19, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4869, file: !1032, line: 107, column: 17)
!4896 = !DILocation(line: 107, column: 17, scope: !4869)
!4897 = !DILocation(line: 108, column: 17, scope: !4895)
!4898 = !DILocation(line: 108, column: 20, scope: !4895)
!4899 = !DILocation(line: 108, column: 15, scope: !4895)
!4900 = !DILocation(line: 113, column: 24, scope: !4869)
!4901 = !DILocation(line: 115, column: 13, scope: !4869)
!4902 = !DILocation(line: 117, column: 24, scope: !4869)
!4903 = !DILocation(line: 119, column: 13, scope: !4869)
!4904 = !DILocation(line: 128, column: 24, scope: !4848)
!4905 = !DILocation(line: 0, scope: !4848)
!4906 = !DILocation(line: 129, column: 48, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4848, file: !1032, line: 129, column: 15)
!4908 = !DILocation(line: 129, column: 15, scope: !4848)
!4909 = !DILocalVariable(name: "__dest", arg: 1, scope: !4910, file: !1386, line: 26, type: !4715)
!4910 = distinct !DISubprogram(name: "memcpy", scope: !1386, file: !1386, line: 26, type: !4713, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4911)
!4911 = !{!4909, !4912, !4913}
!4912 = !DILocalVariable(name: "__src", arg: 2, scope: !4910, file: !1386, line: 26, type: !1276)
!4913 = !DILocalVariable(name: "__len", arg: 3, scope: !4910, file: !1386, line: 26, type: !97)
!4914 = !DILocation(line: 0, scope: !4910, inlinedAt: !4915)
!4915 = distinct !DILocation(line: 131, column: 11, scope: !4848)
!4916 = !DILocation(line: 29, column: 10, scope: !4910, inlinedAt: !4915)
!4917 = !DILocation(line: 132, column: 13, scope: !4848)
!4918 = !DILocation(line: 135, column: 9, scope: !4849)
!4919 = !DILocation(line: 67, column: 25, scope: !4850)
!4920 = !DILocation(line: 67, column: 5, scope: !4850)
!4921 = distinct !{!4921, !4866, !4922, !1179}
!4922 = !DILocation(line: 136, column: 7, scope: !4851)
!4923 = !DILocation(line: 138, column: 8, scope: !4845)
!4924 = !DILocation(line: 197, column: 7, scope: !4797)
!4925 = !DILocation(line: 199, column: 47, scope: !4853)
!4926 = !DILocation(line: 199, column: 16, scope: !4853)
!4927 = !DILocation(line: 0, scope: !4853)
!4928 = !DILocation(line: 201, column: 14, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4853, file: !1032, line: 201, column: 11)
!4930 = !DILocation(line: 201, column: 11, scope: !4853)
!4931 = !DILocation(line: 204, column: 18, scope: !4853)
!4932 = !DILocation(line: 205, column: 14, scope: !4858)
!4933 = !DILocation(line: 205, column: 11, scope: !4853)
!4934 = !DILocation(line: 207, column: 29, scope: !4857)
!4935 = !DILocation(line: 0, scope: !4857)
!4936 = !DILocation(line: 208, column: 11, scope: !4857)
!4937 = !DILocation(line: 209, column: 17, scope: !4857)
!4938 = !DILocation(line: 210, column: 9, scope: !4857)
!4939 = !DILocalVariable(name: "filename", arg: 1, scope: !4940, file: !1032, line: 30, type: !100)
!4940 = distinct !DISubprogram(name: "orig_fopen", scope: !1032, file: !1032, line: 30, type: !4798, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4941)
!4941 = !{!4939, !4942}
!4942 = !DILocalVariable(name: "mode", arg: 2, scope: !4940, file: !1032, line: 30, type: !100)
!4943 = !DILocation(line: 0, scope: !4940, inlinedAt: !4944)
!4944 = distinct !DILocation(line: 219, column: 10, scope: !4797)
!4945 = !DILocation(line: 32, column: 10, scope: !4940, inlinedAt: !4944)
!4946 = !DILocation(line: 219, column: 3, scope: !4797)
!4947 = !DILocation(line: 220, column: 1, scope: !4797)
!4948 = !DISubprogram(name: "open", scope: !2446, file: !2446, line: 181, type: !4949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!63, !100, !63, null}
!4951 = !DISubprogram(name: "fdopen", scope: !687, file: !687, line: 293, type: !4952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!4952 = !DISubroutineType(types: !4953)
!4953 = !{!4800, !63, !100}
!4954 = !DISubprogram(name: "close", scope: !2302, file: !2302, line: 358, type: !1530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!4955 = !DISubprogram(name: "fopen", scope: !687, file: !687, line: 258, type: !4956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!4800, !1123, !1123}
!4958 = distinct !DISubprogram(name: "close_stream", scope: !1034, file: !1034, line: 55, type: !4959, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1033, retainedNodes: !4995)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!63, !4961}
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !4963)
!4963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !4964)
!4964 = !{!4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4963, file: !153, line: 51, baseType: !63, size: 32)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4963, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4963, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4963, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4963, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4963, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4963, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4963, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4963, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4963, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4963, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4963, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4963, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4963, file: !153, line: 70, baseType: !4979, size: 64, offset: 832)
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4963, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4963, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4963, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4963, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4963, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4963, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4963, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4963, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4963, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4963, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4963, file: !153, line: 93, baseType: !4979, size: 64, offset: 1344)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4963, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4963, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4963, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4963, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!4995 = !{!4996, !4997, !4999, !5000}
!4996 = !DILocalVariable(name: "stream", arg: 1, scope: !4958, file: !1034, line: 55, type: !4961)
!4997 = !DILocalVariable(name: "some_pending", scope: !4958, file: !1034, line: 57, type: !4998)
!4998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!4999 = !DILocalVariable(name: "prev_fail", scope: !4958, file: !1034, line: 58, type: !4998)
!5000 = !DILocalVariable(name: "fclose_fail", scope: !4958, file: !1034, line: 59, type: !4998)
!5001 = !DILocation(line: 0, scope: !4958)
!5002 = !DILocation(line: 57, column: 30, scope: !4958)
!5003 = !DILocalVariable(name: "__stream", arg: 1, scope: !5004, file: !1368, line: 135, type: !4961)
!5004 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1368, file: !1368, line: 135, type: !4959, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1033, retainedNodes: !5005)
!5005 = !{!5003}
!5006 = !DILocation(line: 0, scope: !5004, inlinedAt: !5007)
!5007 = distinct !DILocation(line: 58, column: 27, scope: !4958)
!5008 = !DILocation(line: 137, column: 10, scope: !5004, inlinedAt: !5007)
!5009 = !DILocation(line: 58, column: 43, scope: !4958)
!5010 = !DILocation(line: 59, column: 29, scope: !4958)
!5011 = !DILocation(line: 59, column: 45, scope: !4958)
!5012 = !DILocation(line: 69, column: 17, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !4958, file: !1034, line: 69, column: 7)
!5014 = !DILocation(line: 57, column: 50, scope: !4958)
!5015 = !DILocation(line: 69, column: 33, scope: !5013)
!5016 = !DILocation(line: 69, column: 53, scope: !5013)
!5017 = !DILocation(line: 69, column: 59, scope: !5013)
!5018 = !DILocation(line: 69, column: 7, scope: !4958)
!5019 = !DILocation(line: 71, column: 11, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5013, file: !1034, line: 70, column: 5)
!5021 = !DILocation(line: 72, column: 9, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5020, file: !1034, line: 71, column: 11)
!5023 = !DILocation(line: 72, column: 15, scope: !5022)
!5024 = !DILocation(line: 77, column: 1, scope: !4958)
!5025 = !DISubprogram(name: "__fpending", scope: !2650, file: !2650, line: 75, type: !5026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!5026 = !DISubroutineType(types: !5027)
!5027 = !{!97, !4961}
!5028 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !957, file: !957, line: 100, type: !5029, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !5032)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{!97, !1652, !100, !97, !5031}
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!5032 = !{!5033, !5034, !5035, !5036, !5037}
!5033 = !DILocalVariable(name: "pwc", arg: 1, scope: !5028, file: !957, line: 100, type: !1652)
!5034 = !DILocalVariable(name: "s", arg: 2, scope: !5028, file: !957, line: 100, type: !100)
!5035 = !DILocalVariable(name: "n", arg: 3, scope: !5028, file: !957, line: 100, type: !97)
!5036 = !DILocalVariable(name: "ps", arg: 4, scope: !5028, file: !957, line: 100, type: !5031)
!5037 = !DILocalVariable(name: "ret", scope: !5028, file: !957, line: 130, type: !97)
!5038 = !DILocation(line: 0, scope: !5028)
!5039 = !DILocation(line: 105, column: 9, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5028, file: !957, line: 105, column: 7)
!5041 = !DILocation(line: 105, column: 7, scope: !5028)
!5042 = !DILocation(line: 117, column: 10, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5028, file: !957, line: 117, column: 7)
!5044 = !DILocation(line: 117, column: 7, scope: !5028)
!5045 = !DILocation(line: 130, column: 16, scope: !5028)
!5046 = !DILocation(line: 135, column: 11, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5028, file: !957, line: 135, column: 7)
!5048 = !DILocation(line: 135, column: 25, scope: !5047)
!5049 = !DILocation(line: 135, column: 30, scope: !5047)
!5050 = !DILocation(line: 135, column: 7, scope: !5028)
!5051 = !DILocalVariable(name: "ps", arg: 1, scope: !5052, file: !2889, line: 1135, type: !5031)
!5052 = distinct !DISubprogram(name: "mbszero", scope: !2889, file: !2889, line: 1135, type: !5053, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !5055)
!5053 = !DISubroutineType(types: !5054)
!5054 = !{null, !5031}
!5055 = !{!5051}
!5056 = !DILocation(line: 0, scope: !5052, inlinedAt: !5057)
!5057 = distinct !DILocation(line: 137, column: 5, scope: !5047)
!5058 = !DILocalVariable(name: "__dest", arg: 1, scope: !5059, file: !1386, line: 57, type: !95)
!5059 = distinct !DISubprogram(name: "memset", scope: !1386, file: !1386, line: 57, type: !2898, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !5060)
!5060 = !{!5058, !5061, !5062}
!5061 = !DILocalVariable(name: "__ch", arg: 2, scope: !5059, file: !1386, line: 57, type: !63)
!5062 = !DILocalVariable(name: "__len", arg: 3, scope: !5059, file: !1386, line: 57, type: !97)
!5063 = !DILocation(line: 0, scope: !5059, inlinedAt: !5064)
!5064 = distinct !DILocation(line: 1137, column: 3, scope: !5052, inlinedAt: !5057)
!5065 = !DILocation(line: 59, column: 10, scope: !5059, inlinedAt: !5064)
!5066 = !DILocation(line: 137, column: 5, scope: !5047)
!5067 = !DILocation(line: 138, column: 11, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5028, file: !957, line: 138, column: 7)
!5069 = !DILocation(line: 138, column: 7, scope: !5028)
!5070 = !DILocation(line: 139, column: 5, scope: !5068)
!5071 = !DILocation(line: 143, column: 26, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5028, file: !957, line: 143, column: 7)
!5073 = !DILocation(line: 143, column: 41, scope: !5072)
!5074 = !DILocation(line: 143, column: 7, scope: !5028)
!5075 = !DILocation(line: 145, column: 15, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5077, file: !957, line: 145, column: 11)
!5077 = distinct !DILexicalBlock(scope: !5072, file: !957, line: 144, column: 5)
!5078 = !DILocation(line: 145, column: 11, scope: !5077)
!5079 = !DILocation(line: 146, column: 32, scope: !5076)
!5080 = !DILocation(line: 146, column: 16, scope: !5076)
!5081 = !DILocation(line: 146, column: 14, scope: !5076)
!5082 = !DILocation(line: 146, column: 9, scope: !5076)
!5083 = !DILocation(line: 286, column: 1, scope: !5028)
!5084 = !DISubprogram(name: "mbsinit", scope: !1669, file: !1669, line: 293, type: !5085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1072)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{!63, !5087}
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5088, size: 64)
!5088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !963)
!5089 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1036, file: !1036, line: 27, type: !4355, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1035, retainedNodes: !5090)
!5090 = !{!5091, !5092, !5093, !5094}
!5091 = !DILocalVariable(name: "ptr", arg: 1, scope: !5089, file: !1036, line: 27, type: !95)
!5092 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5089, file: !1036, line: 27, type: !97)
!5093 = !DILocalVariable(name: "size", arg: 3, scope: !5089, file: !1036, line: 27, type: !97)
!5094 = !DILocalVariable(name: "nbytes", scope: !5089, file: !1036, line: 29, type: !97)
!5095 = !DILocation(line: 0, scope: !5089)
!5096 = !DILocation(line: 30, column: 7, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5089, file: !1036, line: 30, column: 7)
!5098 = !DILocalVariable(name: "ptr", arg: 1, scope: !5099, file: !4447, line: 2057, type: !95)
!5099 = distinct !DISubprogram(name: "rpl_realloc", scope: !4447, file: !4447, line: 2057, type: !4439, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1035, retainedNodes: !5100)
!5100 = !{!5098, !5101}
!5101 = !DILocalVariable(name: "size", arg: 2, scope: !5099, file: !4447, line: 2057, type: !97)
!5102 = !DILocation(line: 0, scope: !5099, inlinedAt: !5103)
!5103 = distinct !DILocation(line: 37, column: 10, scope: !5089)
!5104 = !DILocation(line: 2059, column: 24, scope: !5099, inlinedAt: !5103)
!5105 = !DILocation(line: 2059, column: 10, scope: !5099, inlinedAt: !5103)
!5106 = !DILocation(line: 37, column: 3, scope: !5089)
!5107 = !DILocation(line: 32, column: 7, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5097, file: !1036, line: 31, column: 5)
!5109 = !DILocation(line: 32, column: 13, scope: !5108)
!5110 = !DILocation(line: 33, column: 7, scope: !5108)
!5111 = !DILocation(line: 38, column: 1, scope: !5089)
!5112 = distinct !DISubprogram(name: "hard_locale", scope: !975, file: !975, line: 28, type: !1831, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1038, retainedNodes: !5113)
!5113 = !{!5114, !5115}
!5114 = !DILocalVariable(name: "category", arg: 1, scope: !5112, file: !975, line: 28, type: !63)
!5115 = !DILocalVariable(name: "locale", scope: !5112, file: !975, line: 30, type: !5116)
!5116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5117)
!5117 = !{!5118}
!5118 = !DISubrange(count: 257)
!5119 = !DILocation(line: 0, scope: !5112)
!5120 = !DILocation(line: 30, column: 3, scope: !5112)
!5121 = !DILocation(line: 30, column: 8, scope: !5112)
!5122 = !DILocation(line: 32, column: 7, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5112, file: !975, line: 32, column: 7)
!5124 = !DILocation(line: 32, column: 7, scope: !5112)
!5125 = !DILocalVariable(name: "__s1", arg: 1, scope: !5126, file: !1145, line: 1359, type: !100)
!5126 = distinct !DISubprogram(name: "streq", scope: !1145, file: !1145, line: 1359, type: !1146, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1038, retainedNodes: !5127)
!5127 = !{!5125, !5128}
!5128 = !DILocalVariable(name: "__s2", arg: 2, scope: !5126, file: !1145, line: 1359, type: !100)
!5129 = !DILocation(line: 0, scope: !5126, inlinedAt: !5130)
!5130 = distinct !DILocation(line: 35, column: 9, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5112, file: !975, line: 35, column: 7)
!5132 = !DILocation(line: 1361, column: 11, scope: !5126, inlinedAt: !5130)
!5133 = !DILocation(line: 1361, column: 10, scope: !5126, inlinedAt: !5130)
!5134 = !DILocation(line: 35, column: 29, scope: !5131)
!5135 = !DILocation(line: 0, scope: !5126, inlinedAt: !5136)
!5136 = distinct !DILocation(line: 35, column: 32, scope: !5131)
!5137 = !DILocation(line: 1361, column: 11, scope: !5126, inlinedAt: !5136)
!5138 = !DILocation(line: 1361, column: 10, scope: !5126, inlinedAt: !5136)
!5139 = !DILocation(line: 35, column: 7, scope: !5112)
!5140 = !DILocation(line: 46, column: 3, scope: !5112)
!5141 = !DILocation(line: 47, column: 1, scope: !5112)
!5142 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1041, file: !1041, line: 154, type: !5143, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !5145)
!5143 = !DISubroutineType(types: !5144)
!5144 = !{!63, !63, !94, !97}
!5145 = !{!5146, !5147, !5148}
!5146 = !DILocalVariable(name: "category", arg: 1, scope: !5142, file: !1041, line: 154, type: !63)
!5147 = !DILocalVariable(name: "buf", arg: 2, scope: !5142, file: !1041, line: 154, type: !94)
!5148 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5142, file: !1041, line: 154, type: !97)
!5149 = !DILocation(line: 0, scope: !5142)
!5150 = !DILocation(line: 159, column: 10, scope: !5142)
!5151 = !DILocation(line: 159, column: 3, scope: !5142)
!5152 = distinct !DISubprogram(name: "setlocale_null", scope: !1041, file: !1041, line: 186, type: !5153, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !5155)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!100, !63}
!5155 = !{!5156}
!5156 = !DILocalVariable(name: "category", arg: 1, scope: !5152, file: !1041, line: 186, type: !63)
!5157 = !DILocation(line: 0, scope: !5152)
!5158 = !DILocation(line: 189, column: 10, scope: !5152)
!5159 = !DILocation(line: 189, column: 3, scope: !5152)
!5160 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1043, file: !1043, line: 35, type: !5153, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1042, retainedNodes: !5161)
!5161 = !{!5162, !5163}
!5162 = !DILocalVariable(name: "category", arg: 1, scope: !5160, file: !1043, line: 35, type: !63)
!5163 = !DILocalVariable(name: "result", scope: !5160, file: !1043, line: 37, type: !100)
!5164 = !DILocation(line: 0, scope: !5160)
!5165 = !DILocation(line: 37, column: 24, scope: !5160)
!5166 = !DILocation(line: 62, column: 3, scope: !5160)
!5167 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1043, file: !1043, line: 66, type: !5143, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1042, retainedNodes: !5168)
!5168 = !{!5169, !5170, !5171, !5172, !5173}
!5169 = !DILocalVariable(name: "category", arg: 1, scope: !5167, file: !1043, line: 66, type: !63)
!5170 = !DILocalVariable(name: "buf", arg: 2, scope: !5167, file: !1043, line: 66, type: !94)
!5171 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5167, file: !1043, line: 66, type: !97)
!5172 = !DILocalVariable(name: "result", scope: !5167, file: !1043, line: 111, type: !100)
!5173 = !DILocalVariable(name: "length", scope: !5174, file: !1043, line: 125, type: !97)
!5174 = distinct !DILexicalBlock(scope: !5175, file: !1043, line: 124, column: 5)
!5175 = distinct !DILexicalBlock(scope: !5167, file: !1043, line: 113, column: 7)
!5176 = !DILocation(line: 0, scope: !5167)
!5177 = !DILocation(line: 0, scope: !5160, inlinedAt: !5178)
!5178 = distinct !DILocation(line: 111, column: 24, scope: !5167)
!5179 = !DILocation(line: 37, column: 24, scope: !5160, inlinedAt: !5178)
!5180 = !DILocation(line: 113, column: 14, scope: !5175)
!5181 = !DILocation(line: 113, column: 7, scope: !5167)
!5182 = !DILocation(line: 116, column: 19, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5184, file: !1043, line: 116, column: 11)
!5184 = distinct !DILexicalBlock(scope: !5175, file: !1043, line: 114, column: 5)
!5185 = !DILocation(line: 116, column: 11, scope: !5184)
!5186 = !DILocation(line: 120, column: 16, scope: !5183)
!5187 = !DILocation(line: 120, column: 9, scope: !5183)
!5188 = !DILocation(line: 125, column: 23, scope: !5174)
!5189 = !DILocation(line: 0, scope: !5174)
!5190 = !DILocation(line: 126, column: 18, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5174, file: !1043, line: 126, column: 11)
!5192 = !DILocation(line: 126, column: 11, scope: !5174)
!5193 = !DILocation(line: 128, column: 39, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5191, file: !1043, line: 127, column: 9)
!5195 = !DILocalVariable(name: "__dest", arg: 1, scope: !5196, file: !1386, line: 26, type: !4715)
!5196 = distinct !DISubprogram(name: "memcpy", scope: !1386, file: !1386, line: 26, type: !4713, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1042, retainedNodes: !5197)
!5197 = !{!5195, !5198, !5199}
!5198 = !DILocalVariable(name: "__src", arg: 2, scope: !5196, file: !1386, line: 26, type: !1276)
!5199 = !DILocalVariable(name: "__len", arg: 3, scope: !5196, file: !1386, line: 26, type: !97)
!5200 = !DILocation(line: 0, scope: !5196, inlinedAt: !5201)
!5201 = distinct !DILocation(line: 128, column: 11, scope: !5194)
!5202 = !DILocation(line: 29, column: 10, scope: !5196, inlinedAt: !5201)
!5203 = !DILocation(line: 129, column: 11, scope: !5194)
!5204 = !DILocation(line: 133, column: 23, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5206, file: !1043, line: 133, column: 15)
!5206 = distinct !DILexicalBlock(scope: !5191, file: !1043, line: 132, column: 9)
!5207 = !DILocation(line: 133, column: 15, scope: !5206)
!5208 = !DILocation(line: 138, column: 44, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5205, file: !1043, line: 134, column: 13)
!5210 = !DILocation(line: 0, scope: !5196, inlinedAt: !5211)
!5211 = distinct !DILocation(line: 138, column: 15, scope: !5209)
!5212 = !DILocation(line: 29, column: 10, scope: !5196, inlinedAt: !5211)
!5213 = !DILocation(line: 139, column: 15, scope: !5209)
!5214 = !DILocation(line: 139, column: 32, scope: !5209)
!5215 = !DILocation(line: 140, column: 13, scope: !5209)
!5216 = !DILocation(line: 0, scope: !5175)
!5217 = !DILocation(line: 145, column: 1, scope: !5167)
