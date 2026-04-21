; ModuleID = 'src/comm.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.linebuffer = type { i64, i64, ptr }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [35 x i8] c"Usage: %s [OPTION]... FILE1 FILE2\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [52 x i8] c"Compare sorted files FILE1 and FILE2 line by line.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [60 x i8] c"\0AWhen FILE1 or FILE2 (not both) is -, read standard input.\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [189 x i8] c"\0AWith no options, produce three-column output.  Column one contains\0Alines unique to FILE1, column two contains lines unique to FILE2,\0Aand column three contains lines common to both files.\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [5 x i8] c"comm\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [52 x i8] c"  -1     suppress column 1 (lines unique to FILE1)\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [52 x i8] c"  -2     suppress column 2 (lines unique to FILE2)\0A\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [62 x i8] c"  -3     suppress column 3 (lines that appear in both files)\0A\00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [118 x i8] c"      --check-order\0A         check that the input is correctly sorted,\0A         even if all input lines are pairable\0A\00", align 1, !dbg !41
@.str.10 = private unnamed_addr constant [80 x i8] c"      --nocheck-order\0A         do not check that the input is correctly sorted\0A\00", align 1, !dbg !46
@.str.11 = private unnamed_addr constant [65 x i8] c"      --output-delimiter=STR\0A         separate columns with STR\0A\00", align 1, !dbg !51
@.str.12 = private unnamed_addr constant [41 x i8] c"      --total\0A         output a summary\0A\00", align 1, !dbg !56
@.str.13 = private unnamed_addr constant [69 x i8] c"  -z, --zero-terminated\0A         line delimiter is NUL, not newline\0A\00", align 1, !dbg !61
@.str.14 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !66
@.str.15 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !71
@.str.16 = private unnamed_addr constant [57 x i8] c"\0AComparisons honor the rules specified by 'LC_COLLATE'.\0A\00", align 1, !dbg !73
@.str.17 = private unnamed_addr constant [156 x i8] c"\0AExamples:\0A  %s -12 file1 file2  Print only lines present in both file1 and file2.\0A  %s -3 file1 file2  Print lines in file1 not in file2, and vice versa.\0A\00", align 1, !dbg !78
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !83
@.str.19 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !88
@.str.20 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !93
@hard_LC_COLLATE = internal unnamed_addr global i8 0, align 4, !dbg !98
@.str.21 = private unnamed_addr constant [5 x i8] c"123z\00", align 1, !dbg !169
@long_options = internal constant [8 x %struct.option] [%struct.option { ptr @.str.64, i32 0, ptr null, i32 256 }, %struct.option { ptr @.str.65, i32 0, ptr null, i32 257 }, %struct.option { ptr @.str.66, i32 1, ptr null, i32 258 }, %struct.option { ptr @.str.67, i32 0, ptr null, i32 259 }, %struct.option { ptr @.str.68, i32 0, ptr null, i32 122 }, %struct.option { ptr @.str.69, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.70, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !413
@only_file_1 = internal unnamed_addr global i1 false, align 1, !dbg !466
@only_file_2 = internal unnamed_addr global i1 false, align 1, !dbg !467
@both = internal unnamed_addr global i1 false, align 1, !dbg !468
@delim = internal unnamed_addr global i1 false, align 1, !dbg !469
@check_input_order = internal unnamed_addr global i32 0, align 4, !dbg !206
@col_sep_len = internal unnamed_addr global i64 0, align 8, !dbg !433
@col_sep = internal unnamed_addr global ptr @.str.71, align 8, !dbg !437
@optarg = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [37 x i8] c"multiple output delimiters specified\00", align 1, !dbg !171
@total_option = internal unnamed_addr global i1 false, align 1, !dbg !470
@.str.23 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !176
@.str.24 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1, !dbg !181
@.str.25 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !186
@optind = external local_unnamed_addr global i32, align 4
@.str.26 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !191
@.str.27 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1, !dbg !193
@.str.28 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !198
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !208
@.str.29 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !287
@.str.30 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !289
@.str.31 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !291
@.str.32 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !296
@.str.46 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !339
@.str.47 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !341
@.str.48 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !343
@.str.49 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !345
@.str.50 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !350
@.str.51 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !355
@.str.52 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !360
@.str.53 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !362
@.str.54 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !364
@.str.55 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !366
@.str.59 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !377
@.str.60 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !379
@.str.61 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !384
@.str.62 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !389
@.str.63 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !394
@.str.64 = private unnamed_addr constant [12 x i8] c"check-order\00", align 1, !dbg !399
@.str.65 = private unnamed_addr constant [14 x i8] c"nocheck-order\00", align 1, !dbg !401
@.str.66 = private unnamed_addr constant [17 x i8] c"output-delimiter\00", align 1, !dbg !403
@.str.67 = private unnamed_addr constant [6 x i8] c"total\00", align 1, !dbg !405
@.str.68 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1, !dbg !407
@.str.69 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !409
@.str.70 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !411
@.str.71 = private unnamed_addr constant [2 x i8] c"\09\00", align 1, !dbg !435
@.str.72 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !439
@stdin = external local_unnamed_addr global ptr, align 8
@.str.73 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !441
@.str.74 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !443
@seen_unpairable = internal unnamed_addr global i1 false, align 1, !dbg !471
@.str.75 = private unnamed_addr constant [20 x i8] c"%ju%c%ju%c%ju%c%s%c\00", align 1, !dbg !445
@.str.76 = private unnamed_addr constant [20 x i8] c"%ju%s%ju%s%ju%s%s%c\00", align 1, !dbg !447
@issued_disorder_warning = internal unnamed_addr global [2 x i8] zeroinitializer, align 4, !dbg !463
@.str.77 = private unnamed_addr constant [29 x i8] c"input is not in sorted order\00", align 1, !dbg !449
@.str.78 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !454
@.str.79 = private unnamed_addr constant [31 x i8] c"file %d is not in sorted order\00", align 1, !dbg !458
@.str.33 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !472
@Version = dso_local local_unnamed_addr global ptr @.str.33, align 8, !dbg !475
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !479
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !492
@.str.36 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !484
@.str.1.37 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !486
@.str.2.38 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !488
@.str.3.39 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !490
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !494
@stderr = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !500
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !537
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !502
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !527
@.str.1.46 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !529
@.str.2.48 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !531
@.str.3.47 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !533
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !535
@.str.4.41 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !539
@.str.5.42 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !541
@.str.6.43 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !546
@.str.80 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !551
@.str.1.81 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !554
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !556
@.str.92 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !562
@.str.1.93 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !564
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !566
@.str.96 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !597
@.str.1.97 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !600
@.str.2.98 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !602
@.str.3.99 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !607
@.str.4.100 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !609
@.str.5.101 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !611
@.str.6.102 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !613
@.str.7.103 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !615
@.str.8.104 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !617
@.str.9.105 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !619
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.96, ptr @.str.1.97, ptr @.str.2.98, ptr @.str.3.99, ptr @.str.4.100, ptr @.str.5.101, ptr @.str.6.102, ptr @.str.7.103, ptr @.str.8.104, ptr @.str.9.105, ptr null], align 8, !dbg !621
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !632
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !646
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !684
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !691
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !648
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !693
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !636
@.str.10.108 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !653
@.str.11.106 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !655
@.str.12.109 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !657
@.str.13.107 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !659
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !661
@.str.124 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !699
@.str.1.125 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !702
@.str.2.126 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !704
@.str.3.127 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !706
@.str.4.128 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !708
@.str.5.129 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !710
@.str.6.130 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !715
@.str.7.131 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !720
@.str.8.132 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !722
@.str.9.133 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !727
@.str.10.134 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !732
@.str.11.135 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !737
@.str.12.136 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !742
@.str.13.137 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !744
@.str.14.138 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !749
@.str.15.139 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !754
@.str.16.140 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !756
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.145 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !758
@.str.18.146 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !760
@.str.19.147 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !762
@.str.20.148 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !764
@.str.21.149 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !766
@.str.22.150 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !768
@.str.23.151 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !770
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !772
@.str.164 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !780
@.str.1.162 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !783
@.str.2.163 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !785
@.str.167 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !787
@.str.1.168 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1, !dbg !790
@.str.2.169 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1, !dbg !792
@exit_failure = dso_local global i32 1, align 4, !dbg !797
@.str.3.170 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1, !dbg !803
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !805
@.str.179 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !823
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !826

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !933 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !937, metadata !DIExpression()), !dbg !938
  %2 = icmp eq i32 %0, 0, !dbg !939
  br i1 %2, label %8, label %3, !dbg !941

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !942, !tbaa !944
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #41, !dbg !942
  %6 = load ptr, ptr @program_name, align 8, !dbg !942, !tbaa !944
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #41, !dbg !942
  br label %51, !dbg !942

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #41, !dbg !948
  %10 = load ptr, ptr @program_name, align 8, !dbg !948, !tbaa !944
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #41, !dbg !948
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #41, !dbg !950
  %13 = load ptr, ptr @stdout, align 8, !dbg !950, !tbaa !944
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !950
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #41, !dbg !951
  %16 = load ptr, ptr @stdout, align 8, !dbg !951, !tbaa !944
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !951
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #41, !dbg !952
  %19 = load ptr, ptr @stdout, align 8, !dbg !952, !tbaa !944
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !952
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #41, !dbg !953
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !953
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #41, !dbg !954
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !954
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #41, !dbg !955
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !955
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #41, !dbg !956
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !956
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #41, !dbg !957
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !957
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #41, !dbg !958
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !958
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #41, !dbg !959
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !959
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #41, !dbg !960
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !960
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #41, !dbg !961
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !961
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #41, !dbg !962
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !962
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #41, !dbg !963
  %32 = load ptr, ptr @stdout, align 8, !dbg !963, !tbaa !944
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !963
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #41, !dbg !964
  %35 = load ptr, ptr @program_name, align 8, !dbg !964, !tbaa !944
  %36 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef %35, ptr noundef %35) #41, !dbg !964
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !965, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !977, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata ptr poison, metadata !977, metadata !DIExpression()), !dbg !982
  tail call void @emit_bug_reporting_address() #41, !dbg !984
  %37 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #41, !dbg !985
  call void @llvm.dbg.value(metadata ptr %37, metadata !980, metadata !DIExpression()), !dbg !982
  %38 = icmp eq ptr %37, null, !dbg !986
  br i1 %38, label %46, label %39, !dbg !988

39:                                               ; preds = %8
  %40 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(4) @.str.59, i64 noundef 3) #42, !dbg !989
  %41 = icmp eq i32 %40, 0, !dbg !989
  br i1 %41, label %46, label %42, !dbg !990

42:                                               ; preds = %39
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #41, !dbg !991
  %44 = load ptr, ptr @stdout, align 8, !dbg !991, !tbaa !944
  %45 = tail call i32 @fputs_unlocked(ptr noundef %43, ptr noundef %44), !dbg !991
  br label %46, !dbg !993

46:                                               ; preds = %8, %39, %42
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !977, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !981, metadata !DIExpression()), !dbg !982
  %47 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #41, !dbg !994
  %48 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %47, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.5) #41, !dbg !994
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #41, !dbg !995
  %50 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %49, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.63) #41, !dbg !995
  br label %51

51:                                               ; preds = %46, %3
  tail call void @exit(i32 noundef %0) #43, !dbg !996
  unreachable, !dbg !996
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !997 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1002 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1008 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1011 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !210 {
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !214, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata ptr %0, metadata !215, metadata !DIExpression()), !dbg !1014
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1015, !tbaa !1016
  %3 = icmp eq i32 %2, -1, !dbg !1018
  br i1 %3, label %4, label %16, !dbg !1019

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.29) #41, !dbg !1020
  call void @llvm.dbg.value(metadata ptr %5, metadata !216, metadata !DIExpression()), !dbg !1021
  %6 = icmp eq ptr %5, null, !dbg !1022
  br i1 %6, label %14, label %7, !dbg !1023

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1024, !tbaa !1025
  %9 = icmp eq i8 %8, 0, !dbg !1024
  br i1 %9, label %14, label %10, !dbg !1026

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1027, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !1033, metadata !DIExpression()), !dbg !1034
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.30) #42, !dbg !1036
  %12 = icmp eq i32 %11, 0, !dbg !1037
  %13 = zext i1 %12 to i32, !dbg !1026
  br label %14, !dbg !1026

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1038, !tbaa !1016
  br label %16, !dbg !1039

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1040
  %18 = icmp eq i32 %17, 0, !dbg !1040
  br i1 %18, label %22, label %19, !dbg !1042

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1043, !tbaa !944
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1043
  br label %122, !dbg !1045

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !219, metadata !DIExpression()), !dbg !1014
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.31) #42, !dbg !1046
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1047
  call void @llvm.dbg.value(metadata ptr %24, metadata !220, metadata !DIExpression()), !dbg !1014
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #42, !dbg !1048
  call void @llvm.dbg.value(metadata ptr %25, metadata !221, metadata !DIExpression()), !dbg !1014
  %26 = icmp eq ptr %25, null, !dbg !1049
  br i1 %26, label %54, label %27, !dbg !1050

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1051
  br i1 %28, label %54, label %29, !dbg !1052

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !222, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i64 0, metadata !226, metadata !DIExpression()), !dbg !1053
  %30 = icmp ult ptr %24, %25, !dbg !1054
  br i1 %30, label %31, label %52, !dbg !1055

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #44, !dbg !1014
  %33 = load ptr, ptr %32, align 8, !tbaa !944
  br label %34, !dbg !1055

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !222, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i64 %36, metadata !226, metadata !DIExpression()), !dbg !1053
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1056
  call void @llvm.dbg.value(metadata ptr %37, metadata !222, metadata !DIExpression()), !dbg !1053
  %38 = load i8, ptr %35, align 1, !dbg !1056, !tbaa !1025
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1056
  %41 = load i16, ptr %40, align 2, !dbg !1056, !tbaa !1057
  %42 = freeze i16 %41, !dbg !1059
  %43 = lshr i16 %42, 13, !dbg !1059
  %44 = and i16 %43, 1, !dbg !1059
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1060
  call void @llvm.dbg.value(metadata i64 %46, metadata !226, metadata !DIExpression()), !dbg !1053
  %47 = icmp ult ptr %37, %25, !dbg !1054
  %48 = icmp ult i64 %46, 2, !dbg !1061
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1061
  br i1 %49, label %34, label %50, !dbg !1055, !llvm.loop !1062

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1064
  br i1 %51, label %52, label %54, !dbg !1066

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1066

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !1014
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !219, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata ptr %55, metadata !221, metadata !DIExpression()), !dbg !1014
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.32) #42, !dbg !1067
  call void @llvm.dbg.value(metadata i64 %57, metadata !227, metadata !DIExpression()), !dbg !1014
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1068
  call void @llvm.dbg.value(metadata ptr %58, metadata !228, metadata !DIExpression()), !dbg !1014
  br label %59, !dbg !1069

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !1014
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !219, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata ptr %60, metadata !228, metadata !DIExpression()), !dbg !1014
  %62 = load i8, ptr %60, align 1, !dbg !1070, !tbaa !1025
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !1071

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1072
  %65 = load i8, ptr %64, align 1, !dbg !1075, !tbaa !1025
  %66 = icmp ne i8 %65, 45, !dbg !1076
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1077
  br label %68, !dbg !1077

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !219, metadata !DIExpression()), !dbg !1014
  %70 = tail call ptr @__ctype_b_loc() #44, !dbg !1078
  %71 = load ptr, ptr %70, align 8, !dbg !1078, !tbaa !944
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1078
  %74 = load i16, ptr %73, align 2, !dbg !1078, !tbaa !1057
  %75 = and i16 %74, 8192, !dbg !1078
  %76 = icmp eq i16 %75, 0, !dbg !1078
  br i1 %76, label %90, label %77, !dbg !1080

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1081
  br i1 %78, label %92, label %79, !dbg !1084

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1085
  %81 = load i8, ptr %80, align 1, !dbg !1085, !tbaa !1025
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1085
  %84 = load i16, ptr %83, align 2, !dbg !1085, !tbaa !1057
  %85 = and i16 %84, 8192, !dbg !1085
  %86 = icmp eq i16 %85, 0, !dbg !1085
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1086
  br i1 %89, label %90, label %92, !dbg !1086

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1087
  call void @llvm.dbg.value(metadata ptr %91, metadata !228, metadata !DIExpression()), !dbg !1014
  br label %59, !dbg !1069, !llvm.loop !1088

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1090
  %94 = load ptr, ptr @stdout, align 8, !dbg !1090, !tbaa !944
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1090
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1027, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1027, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1027, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1027, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1027, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1027, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1027, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1027, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1027, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1027, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !282, metadata !DIExpression()), !dbg !1014
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.46, i64 noundef 6) #42, !dbg !1111
  %97 = icmp eq i32 %96, 0, !dbg !1111
  br i1 %97, label %101, label %98, !dbg !1113

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.47, i64 noundef 9) #42, !dbg !1114
  %100 = icmp eq i32 %99, 0, !dbg !1114
  br i1 %100, label %101, label %104, !dbg !1115

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1116
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.5, i32 noundef %102, ptr noundef %55) #41, !dbg !1116
  br label %107, !dbg !1118

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1119
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.5, i32 noundef %105, ptr noundef %55) #41, !dbg !1119
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1121, !tbaa !944
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %108), !dbg !1121
  %110 = load ptr, ptr @stdout, align 8, !dbg !1122, !tbaa !944
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %110), !dbg !1122
  %112 = ptrtoint ptr %60 to i64, !dbg !1123
  %113 = sub i64 %112, %93, !dbg !1123
  %114 = load ptr, ptr @stdout, align 8, !dbg !1123, !tbaa !944
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1123
  %116 = load ptr, ptr @stdout, align 8, !dbg !1124, !tbaa !944
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.54, ptr noundef %116), !dbg !1124
  %118 = load ptr, ptr @stdout, align 8, !dbg !1125, !tbaa !944
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.55, ptr noundef %118), !dbg !1125
  %120 = load ptr, ptr @stdout, align 8, !dbg !1126, !tbaa !944
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1126
  br label %122, !dbg !1127

122:                                              ; preds = %107, %19
  ret void, !dbg !1127
}

; Function Attrs: nounwind
declare !dbg !1128 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1132 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1136 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1138 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1141 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1144 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1147 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1150 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1156 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1157 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1163 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1168, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata ptr %1, metadata !1169, metadata !DIExpression()), !dbg !1171
  %3 = load ptr, ptr %1, align 8, !dbg !1172, !tbaa !944
  tail call void @set_program_name(ptr noundef %3) #41, !dbg !1173
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.18) #41, !dbg !1174
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #41, !dbg !1175
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.19) #41, !dbg !1176
  %7 = tail call i1 @hard_locale(i32 noundef 3) #41, !dbg !1177
  %8 = zext i1 %7 to i8, !dbg !1178
  store i8 %8, ptr @hard_LC_COLLATE, align 4, !dbg !1178, !tbaa !1179
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #41, !dbg !1181
  br label %10, !dbg !1182

10:                                               ; preds = %39, %2
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.21, ptr noundef nonnull @long_options, ptr noundef null) #41, !dbg !1183
  call void @llvm.dbg.value(metadata i32 %11, metadata !1170, metadata !DIExpression()), !dbg !1171
  switch i32 %11, label %46 [
    i32 -1, label %47
    i32 49, label %12
    i32 50, label %13
    i32 51, label %14
    i32 122, label %15
    i32 257, label %16
    i32 256, label %17
    i32 258, label %18
    i32 259, label %38
    i32 -2, label %40
    i32 -3, label %41
  ], !dbg !1182

12:                                               ; preds = %10
  store i1 true, ptr @only_file_1, align 1, !dbg !1184
  br label %39, !dbg !1186

13:                                               ; preds = %10
  store i1 true, ptr @only_file_2, align 1, !dbg !1187
  br label %39, !dbg !1188

14:                                               ; preds = %10
  store i1 true, ptr @both, align 1, !dbg !1189
  br label %39, !dbg !1190

15:                                               ; preds = %10
  store i1 true, ptr @delim, align 1, !dbg !1191
  br label %39, !dbg !1192

16:                                               ; preds = %10
  store i32 2, ptr @check_input_order, align 4, !dbg !1193, !tbaa !1025
  br label %39, !dbg !1194

17:                                               ; preds = %10
  store i32 1, ptr @check_input_order, align 4, !dbg !1195, !tbaa !1025
  br label %39, !dbg !1196

18:                                               ; preds = %10
  %19 = load i64, ptr @col_sep_len, align 8, !dbg !1197, !tbaa !1199
  %20 = icmp eq i64 %19, 0, !dbg !1197
  br i1 %20, label %21, label %23, !dbg !1201

21:                                               ; preds = %18
  %22 = load ptr, ptr @optarg, align 8, !dbg !1202, !tbaa !944
  br label %30, !dbg !1201

23:                                               ; preds = %18
  %24 = load ptr, ptr @col_sep, align 8, !dbg !1203, !tbaa !944
  %25 = load ptr, ptr @optarg, align 8, !dbg !1204, !tbaa !944
  call void @llvm.dbg.value(metadata ptr %24, metadata !1027, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata ptr %25, metadata !1033, metadata !DIExpression()), !dbg !1205
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) %25) #42, !dbg !1207
  %27 = icmp eq i32 %26, 0, !dbg !1208
  br i1 %27, label %30, label %28, !dbg !1209

28:                                               ; preds = %23
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #41, !dbg !1210
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %29) #41, !dbg !1210
  unreachable, !dbg !1210

30:                                               ; preds = %21, %23
  %31 = phi ptr [ %22, %21 ], [ %25, %23 ], !dbg !1202
  store ptr %31, ptr @col_sep, align 8, !dbg !1211, !tbaa !944
  %32 = load i8, ptr %31, align 1, !dbg !1212, !tbaa !1025
  %33 = icmp eq i8 %32, 0, !dbg !1212
  br i1 %33, label %36, label %34, !dbg !1212

34:                                               ; preds = %30
  %35 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31) #42, !dbg !1213
  br label %36, !dbg !1212

36:                                               ; preds = %30, %34
  %37 = phi i64 [ %35, %34 ], [ 1, %30 ], !dbg !1212
  store i64 %37, ptr @col_sep_len, align 8, !dbg !1214, !tbaa !1199
  br label %39, !dbg !1215

38:                                               ; preds = %10
  store i1 true, ptr @total_option, align 1, !dbg !1216
  br label %39, !dbg !1217

39:                                               ; preds = %38, %36, %17, %16, %15, %14, %13, %12
  br label %10, !dbg !1183, !llvm.loop !1218

40:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #45, !dbg !1220
  unreachable, !dbg !1220

41:                                               ; preds = %10
  %42 = load ptr, ptr @stdout, align 8, !dbg !1221, !tbaa !944
  %43 = load ptr, ptr @Version, align 8, !dbg !1221, !tbaa !944
  %44 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24) #41, !dbg !1221
  %45 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.25) #41, !dbg !1221
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %42, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.23, ptr noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef null) #41, !dbg !1221
  tail call void @exit(i32 noundef 0) #43, !dbg !1221
  unreachable, !dbg !1221

46:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #45, !dbg !1222
  unreachable, !dbg !1222

47:                                               ; preds = %10
  %48 = load i64, ptr @col_sep_len, align 8, !dbg !1223, !tbaa !1199
  %49 = icmp eq i64 %48, 0, !dbg !1223
  br i1 %49, label %50, label %51, !dbg !1225

50:                                               ; preds = %47
  store i64 1, ptr @col_sep_len, align 8, !dbg !1226, !tbaa !1199
  br label %51, !dbg !1227

51:                                               ; preds = %50, %47
  %52 = load i32, ptr @optind, align 4, !dbg !1228, !tbaa !1016
  %53 = sub nsw i32 %0, %52, !dbg !1230
  %54 = icmp slt i32 %53, 2, !dbg !1231
  br i1 %54, label %55, label %67, !dbg !1232

55:                                               ; preds = %51
  %56 = icmp slt i32 %52, %0, !dbg !1233
  br i1 %56, label %59, label %57, !dbg !1236

57:                                               ; preds = %55
  %58 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #41, !dbg !1237
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %58) #41, !dbg !1237
  br label %66, !dbg !1237

59:                                               ; preds = %55
  %60 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #41, !dbg !1238
  %61 = add nsw i32 %0, -1, !dbg !1238
  %62 = sext i32 %61 to i64, !dbg !1238
  %63 = getelementptr inbounds ptr, ptr %1, i64 %62, !dbg !1238
  %64 = load ptr, ptr %63, align 8, !dbg !1238, !tbaa !944
  %65 = tail call ptr @quote(ptr noundef %64) #41, !dbg !1238
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %60, ptr noundef %65) #41, !dbg !1238
  br label %66

66:                                               ; preds = %59, %57
  tail call void @usage(i32 noundef 1) #45, !dbg !1239
  unreachable, !dbg !1239

67:                                               ; preds = %51
  %68 = icmp eq i32 %53, 2, !dbg !1240
  br i1 %68, label %77, label %69, !dbg !1242

69:                                               ; preds = %67
  %70 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #41, !dbg !1243
  %71 = load i32, ptr @optind, align 4, !dbg !1243, !tbaa !1016
  %72 = add nsw i32 %71, 2, !dbg !1243
  %73 = sext i32 %72 to i64, !dbg !1243
  %74 = getelementptr inbounds ptr, ptr %1, i64 %73, !dbg !1243
  %75 = load ptr, ptr %74, align 8, !dbg !1243, !tbaa !944
  %76 = tail call ptr @quote(ptr noundef %75) #41, !dbg !1243
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %70, ptr noundef %76) #41, !dbg !1243
  tail call void @usage(i32 noundef 1) #45, !dbg !1245
  unreachable, !dbg !1245

77:                                               ; preds = %67
  %78 = sext i32 %52 to i64, !dbg !1246
  %79 = getelementptr inbounds ptr, ptr %1, i64 %78, !dbg !1246
  tail call fastcc void @compare_files(ptr noundef nonnull %79) #45, !dbg !1247
  unreachable, !dbg !1247
}

; Function Attrs: nounwind
declare !dbg !1248 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1251 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1252 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1255 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1261 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @compare_files(ptr nocapture noundef readonly %0) unnamed_addr #0 !dbg !1264 {
  %2 = alloca [2 x [4 x %struct.linebuffer]], align 8
  %3 = alloca [2 x [4 x ptr]], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1268, metadata !DIExpression()), !dbg !1311
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %2) #41, !dbg !1312
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1269, metadata !DIExpression()), !dbg !1313
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #41, !dbg !1314
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1280, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i64 0, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i64 0, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i64 0, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i32 0, metadata !1292, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 0, metadata !1292, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32 0, metadata !1294, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 0, metadata !1294, metadata !DIExpression()), !dbg !1317
  call void @initbuffer(ptr noundef nonnull %2) #41, !dbg !1318
  store ptr %2, ptr %3, align 8, !dbg !1321, !tbaa !944
  call void @llvm.dbg.value(metadata i64 1, metadata !1294, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 1, metadata !1294, metadata !DIExpression()), !dbg !1317
  %4 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 0, i64 1, !dbg !1322
  call void @initbuffer(ptr noundef nonnull %4) #41, !dbg !1318
  %5 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 1, !dbg !1323
  store ptr %4, ptr %5, align 8, !dbg !1321, !tbaa !944
  call void @llvm.dbg.value(metadata i64 2, metadata !1294, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 2, metadata !1294, metadata !DIExpression()), !dbg !1317
  %6 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 0, i64 2, !dbg !1322
  call void @initbuffer(ptr noundef nonnull %6) #41, !dbg !1318
  %7 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 2, !dbg !1323
  store ptr %6, ptr %7, align 8, !dbg !1321, !tbaa !944
  call void @llvm.dbg.value(metadata i64 3, metadata !1294, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 3, metadata !1294, metadata !DIExpression()), !dbg !1317
  %8 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 0, i64 3, !dbg !1322
  call void @initbuffer(ptr noundef nonnull %8) #41, !dbg !1318
  %9 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 3, !dbg !1323
  store ptr %8, ptr %9, align 8, !dbg !1321, !tbaa !944
  call void @llvm.dbg.value(metadata i64 4, metadata !1294, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i32 0, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1311
  call void @llvm.dbg.value(metadata i32 0, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1311
  call void @llvm.dbg.value(metadata i32 0, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1311
  %10 = load ptr, ptr %0, align 8, !dbg !1324, !tbaa !944
  call void @llvm.dbg.value(metadata ptr %10, metadata !1027, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata ptr @.str.72, metadata !1033, metadata !DIExpression()), !dbg !1325
  %11 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.72) #42, !dbg !1327
  %12 = icmp eq i32 %11, 0, !dbg !1328
  br i1 %12, label %13, label %15, !dbg !1329

13:                                               ; preds = %1
  %14 = load ptr, ptr @stdin, align 8, !dbg !1330, !tbaa !944
  br label %17, !dbg !1329

15:                                               ; preds = %1
  %16 = call ptr @fopen_safer(ptr noundef %10, ptr noundef nonnull @.str.73) #41, !dbg !1331
  br label %17, !dbg !1329

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ], !dbg !1329
  call void @llvm.dbg.value(metadata ptr %18, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1311
  %19 = icmp eq ptr %18, null, !dbg !1332
  br i1 %19, label %20, label %27, !dbg !1334

20:                                               ; preds = %58, %17
  %21 = phi i64 [ 0, %17 ], [ 1, %58 ]
  %22 = getelementptr inbounds ptr, ptr %0, i64 %21, !dbg !1324
  %23 = tail call ptr @__errno_location() #44, !dbg !1335
  %24 = load i32, ptr %23, align 4, !dbg !1335, !tbaa !1016
  %25 = load ptr, ptr %22, align 8, !dbg !1335, !tbaa !944
  %26 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %25) #41, !dbg !1335
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %24, ptr noundef nonnull @.str.74, ptr noundef %26) #41, !dbg !1335
  unreachable, !dbg !1335

27:                                               ; preds = %17
  call void @fadvise(ptr noundef nonnull %18, i32 noundef 2) #41, !dbg !1336
  %28 = load i1, ptr @delim, align 1, !dbg !1337
  %29 = select i1 %28, i8 0, i8 10, !dbg !1337
  %30 = call ptr @readlinebuffer_delim(ptr noundef nonnull %2, ptr noundef nonnull %18, i8 noundef %29) #41, !dbg !1338
  call void @llvm.dbg.value(metadata ptr %30, metadata !1277, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata ptr %18, metadata !1339, metadata !DIExpression()), !dbg !1345
  %31 = load i32, ptr %18, align 8, !dbg !1348, !tbaa !1349
  %32 = and i32 %31, 32, !dbg !1351
  %33 = icmp eq i32 %32, 0, !dbg !1351
  br i1 %33, label %41, label %34, !dbg !1352

34:                                               ; preds = %61, %27
  %35 = phi i64 [ 0, %27 ], [ 1, %61 ]
  %36 = getelementptr inbounds ptr, ptr %0, i64 %35, !dbg !1324
  %37 = tail call ptr @__errno_location() #44, !dbg !1353
  %38 = load i32, ptr %37, align 4, !dbg !1353, !tbaa !1016
  %39 = load ptr, ptr %36, align 8, !dbg !1353, !tbaa !944
  %40 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %39) #41, !dbg !1353
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %38, ptr noundef nonnull @.str.74, ptr noundef %40) #41, !dbg !1353
  unreachable, !dbg !1353

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i64 1, metadata !1292, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 1, metadata !1292, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32 0, metadata !1294, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 0, metadata !1294, metadata !DIExpression()), !dbg !1317
  %42 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 1, i64 0, !dbg !1322
  call void @initbuffer(ptr noundef nonnull %42) #41, !dbg !1318
  %43 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 0, !dbg !1323
  store ptr %42, ptr %43, align 8, !dbg !1321, !tbaa !944
  call void @llvm.dbg.value(metadata i64 1, metadata !1294, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 1, metadata !1294, metadata !DIExpression()), !dbg !1317
  %44 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 1, i64 1, !dbg !1322
  call void @initbuffer(ptr noundef nonnull %44) #41, !dbg !1318
  %45 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 1, !dbg !1323
  store ptr %44, ptr %45, align 8, !dbg !1321, !tbaa !944
  call void @llvm.dbg.value(metadata i64 2, metadata !1294, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 2, metadata !1294, metadata !DIExpression()), !dbg !1317
  %46 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 1, i64 2, !dbg !1322
  call void @initbuffer(ptr noundef nonnull %46) #41, !dbg !1318
  %47 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 2, !dbg !1323
  store ptr %46, ptr %47, align 8, !dbg !1321, !tbaa !944
  call void @llvm.dbg.value(metadata i64 3, metadata !1294, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 3, metadata !1294, metadata !DIExpression()), !dbg !1317
  %48 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 1, i64 3, !dbg !1322
  call void @initbuffer(ptr noundef nonnull %48) #41, !dbg !1318
  %49 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 3, !dbg !1323
  store ptr %48, ptr %49, align 8, !dbg !1321, !tbaa !944
  call void @llvm.dbg.value(metadata i64 4, metadata !1294, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i32 0, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1311
  call void @llvm.dbg.value(metadata i32 0, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1311
  call void @llvm.dbg.value(metadata i32 0, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !1311
  %50 = getelementptr inbounds ptr, ptr %0, i64 1, !dbg !1324
  %51 = load ptr, ptr %50, align 8, !dbg !1324, !tbaa !944
  call void @llvm.dbg.value(metadata ptr %51, metadata !1027, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata ptr @.str.72, metadata !1033, metadata !DIExpression()), !dbg !1325
  %52 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(2) @.str.72) #42, !dbg !1327
  %53 = icmp eq i32 %52, 0, !dbg !1328
  br i1 %53, label %56, label %54, !dbg !1329

54:                                               ; preds = %41
  %55 = call ptr @fopen_safer(ptr noundef %51, ptr noundef nonnull @.str.73) #41, !dbg !1331
  br label %58, !dbg !1329

56:                                               ; preds = %41
  %57 = load ptr, ptr @stdin, align 8, !dbg !1330, !tbaa !944
  br label %58, !dbg !1329

58:                                               ; preds = %56, %54
  %59 = phi ptr [ %57, %56 ], [ %55, %54 ], !dbg !1329
  call void @llvm.dbg.value(metadata ptr %59, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1311
  %60 = icmp eq ptr %59, null, !dbg !1332
  br i1 %60, label %20, label %61, !dbg !1334

61:                                               ; preds = %58
  call void @fadvise(ptr noundef nonnull %59, i32 noundef 2) #41, !dbg !1336
  %62 = load i1, ptr @delim, align 1, !dbg !1337
  %63 = select i1 %62, i8 0, i8 10, !dbg !1337
  %64 = call ptr @readlinebuffer_delim(ptr noundef nonnull %42, ptr noundef nonnull %59, i8 noundef %63) #41, !dbg !1338
  call void @llvm.dbg.value(metadata ptr %64, metadata !1277, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata ptr %59, metadata !1339, metadata !DIExpression()), !dbg !1345
  %65 = load i32, ptr %59, align 8, !dbg !1348, !tbaa !1349
  %66 = and i32 %65, 32, !dbg !1351
  %67 = icmp eq i32 %66, 0, !dbg !1351
  br i1 %67, label %68, label %34, !dbg !1352

68:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i64 2, metadata !1292, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 0, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i64 0, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i64 0, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1311
  %69 = icmp ne ptr %30, null, !dbg !1354
  %70 = icmp ne ptr %64, null, !dbg !1355
  %71 = select i1 %69, i1 true, i1 %70, !dbg !1355
  br i1 %71, label %78, label %72, !dbg !1356

72:                                               ; preds = %214, %68
  %73 = phi i64 [ 0, %68 ], [ %218, %214 ], !dbg !1357
  %74 = phi i64 [ 0, %68 ], [ %219, %214 ], !dbg !1311
  %75 = phi i64 [ 0, %68 ], [ %220, %214 ], !dbg !1357
  call void @llvm.dbg.value(metadata i64 0, metadata !1309, metadata !DIExpression()), !dbg !1358
  %76 = call i32 @rpl_fclose(ptr noundef nonnull %18) #41, !dbg !1359
  %77 = icmp eq i32 %76, 0, !dbg !1362
  br i1 %77, label %234, label %227, !dbg !1363

78:                                               ; preds = %68, %214
  %79 = phi i32 [ %221, %214 ], [ 0, %68 ], !dbg !1364
  %80 = phi i32 [ %222, %214 ], [ 0, %68 ], !dbg !1365
  %81 = phi i32 [ %217, %214 ], [ 0, %68 ], !dbg !1364
  %82 = phi i32 [ %216, %214 ], [ 0, %68 ], !dbg !1365
  %83 = phi ptr [ %215, %214 ], [ %30, %68 ], !dbg !1366
  %84 = phi ptr [ %223, %214 ], [ %64, %68 ], !dbg !1366
  %85 = phi i64 [ %220, %214 ], [ 0, %68 ]
  %86 = phi i64 [ %219, %214 ], [ 0, %68 ]
  %87 = phi i64 [ %218, %214 ], [ 0, %68 ]
  call void @llvm.dbg.value(metadata ptr %84, metadata !1277, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata ptr %83, metadata !1277, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %82, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %81, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %80, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %79, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %85, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %86, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %87, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i8 0, metadata !1300, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !1367
  call void @llvm.dbg.value(metadata i8 0, metadata !1300, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1367
  %88 = icmp eq ptr %83, null, !dbg !1368
  br i1 %88, label %89, label %90, !dbg !1369

89:                                               ; preds = %78
  store i1 true, ptr @seen_unpairable, align 1, !dbg !1370
  br label %137, !dbg !1373

90:                                               ; preds = %78
  %91 = icmp eq ptr %84, null, !dbg !1374
  br i1 %91, label %92, label %93, !dbg !1375

92:                                               ; preds = %90
  store i1 true, ptr @seen_unpairable, align 1, !dbg !1370
  br label %135, !dbg !1373

93:                                               ; preds = %90
  %94 = load i8, ptr @hard_LC_COLLATE, align 4, !dbg !1376, !tbaa !1179, !range !1377, !noundef !1001
  %95 = icmp eq i8 %94, 0, !dbg !1376
  br i1 %95, label %108, label %96, !dbg !1378

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.linebuffer, ptr %83, i64 0, i32 2, !dbg !1379
  %98 = load ptr, ptr %97, align 8, !dbg !1379, !tbaa !1380
  %99 = getelementptr inbounds %struct.linebuffer, ptr %83, i64 0, i32 1, !dbg !1382
  %100 = load i64, ptr %99, align 8, !dbg !1382, !tbaa !1383
  %101 = add nsw i64 %100, -1, !dbg !1384
  %102 = getelementptr inbounds %struct.linebuffer, ptr %84, i64 0, i32 2, !dbg !1385
  %103 = load ptr, ptr %102, align 8, !dbg !1385, !tbaa !1380
  %104 = getelementptr inbounds %struct.linebuffer, ptr %84, i64 0, i32 1, !dbg !1386
  %105 = load i64, ptr %104, align 8, !dbg !1386, !tbaa !1383
  %106 = add nsw i64 %105, -1, !dbg !1387
  %107 = call i32 @xmemcoll(ptr noundef %98, i64 noundef %101, ptr noundef %103, i64 noundef %106) #41, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %107, metadata !1298, metadata !DIExpression()), !dbg !1367
  br label %127, !dbg !1389

108:                                              ; preds = %93
  %109 = getelementptr inbounds %struct.linebuffer, ptr %83, i64 0, i32 1, !dbg !1390
  %110 = load i64, ptr %109, align 8, !dbg !1390, !tbaa !1383
  %111 = getelementptr inbounds %struct.linebuffer, ptr %84, i64 0, i32 1, !dbg !1390
  %112 = load i64, ptr %111, align 8, !dbg !1390, !tbaa !1383
  %113 = call i64 @llvm.smin.i64(i64 %110, i64 %112), !dbg !1390
  %114 = add nsw i64 %113, -1, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %114, metadata !1301, metadata !DIExpression()), !dbg !1392
  %115 = getelementptr inbounds %struct.linebuffer, ptr %83, i64 0, i32 2, !dbg !1393
  %116 = load ptr, ptr %115, align 8, !dbg !1393, !tbaa !1380
  %117 = getelementptr inbounds %struct.linebuffer, ptr %84, i64 0, i32 2, !dbg !1394
  %118 = load ptr, ptr %117, align 8, !dbg !1394, !tbaa !1380
  %119 = call i32 @memcmp(ptr noundef %116, ptr noundef %118, i64 noundef %114) #42, !dbg !1395
  call void @llvm.dbg.value(metadata i32 %119, metadata !1298, metadata !DIExpression()), !dbg !1367
  %120 = icmp eq i32 %119, 0, !dbg !1396
  br i1 %120, label %121, label %132, !dbg !1398

121:                                              ; preds = %108
  %122 = icmp slt i64 %110, %112, !dbg !1390
  %123 = icmp sgt i64 %110, %112, !dbg !1399
  %124 = zext i1 %123 to i32, !dbg !1399
  %125 = sext i1 %122 to i32, !dbg !1399
  %126 = add nsw i32 %125, %124, !dbg !1399
  call void @llvm.dbg.value(metadata i32 %126, metadata !1298, metadata !DIExpression()), !dbg !1367
  br label %127, !dbg !1400

127:                                              ; preds = %121, %96
  %128 = phi i32 [ %107, %96 ], [ %126, %121 ], !dbg !1401
  call void @llvm.dbg.value(metadata i32 %128, metadata !1298, metadata !DIExpression()), !dbg !1367
  %129 = icmp eq i32 %128, 0, !dbg !1402
  br i1 %129, label %130, label %132, !dbg !1403

130:                                              ; preds = %127
  %131 = add i64 %86, 1, !dbg !1404
  call void @llvm.dbg.value(metadata i64 %131, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1311
  call fastcc void @writeline(ptr noundef nonnull %84, i32 noundef 3), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %85, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %131, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %87, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i8 1, metadata !1300, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1367
  br label %139, !dbg !1407

132:                                              ; preds = %108, %127
  %133 = phi i32 [ %128, %127 ], [ %119, %108 ]
  store i1 true, ptr @seen_unpairable, align 1, !dbg !1370
  %134 = icmp slt i32 %133, 1, !dbg !1408
  br i1 %134, label %135, label %137, !dbg !1373

135:                                              ; preds = %132, %92
  %136 = add i64 %85, 1, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %136, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1311
  call fastcc void @writeline(ptr noundef nonnull %83, i32 noundef 1), !dbg !1412
  call void @llvm.dbg.value(metadata i64 %86, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %87, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1311
  br label %139, !dbg !1407

137:                                              ; preds = %89, %132
  %138 = add i64 %87, 1, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %138, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1311
  call fastcc void @writeline(ptr noundef %84, i32 noundef 2), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %85, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %86, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %138, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i8 poison, metadata !1300, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !1367
  call void @llvm.dbg.value(metadata i8 1, metadata !1300, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1367
  call void @llvm.dbg.value(metadata ptr %83, metadata !1277, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %82, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %81, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1311
  call void @llvm.dbg.value(metadata i64 1, metadata !1307, metadata !DIExpression()), !dbg !1416
  br label %179, !dbg !1417

139:                                              ; preds = %130, %135
  %140 = phi i1 [ false, %130 ], [ true, %135 ]
  %141 = phi i64 [ %131, %130 ], [ %86, %135 ]
  %142 = phi i64 [ %85, %130 ], [ %136, %135 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1300, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !1367
  call void @llvm.dbg.value(metadata i8 poison, metadata !1300, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1367
  call void @llvm.dbg.value(metadata i64 0, metadata !1307, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i32 %81, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %82, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1311
  %143 = add nsw i32 %82, 1, !dbg !1419
  %144 = and i32 %143, 3, !dbg !1422
  call void @llvm.dbg.value(metadata i32 %144, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1311
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 %145, !dbg !1423
  %147 = load ptr, ptr %146, align 8, !dbg !1423, !tbaa !944
  %148 = load i1, ptr @delim, align 1, !dbg !1424
  %149 = select i1 %148, i8 0, i8 10, !dbg !1424
  %150 = call ptr @readlinebuffer_delim(ptr noundef %147, ptr noundef nonnull %18, i8 noundef %149) #41, !dbg !1425
  call void @llvm.dbg.value(metadata ptr %150, metadata !1277, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1311
  %151 = icmp eq ptr %150, null, !dbg !1426
  br i1 %151, label %156, label %152, !dbg !1428

152:                                              ; preds = %139
  %153 = sext i32 %82 to i64, !dbg !1429
  %154 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 %153, !dbg !1429
  %155 = load ptr, ptr %154, align 8, !dbg !1429, !tbaa !944
  call fastcc void @check_order(ptr noundef %155, ptr noundef nonnull %150, i32 noundef 1), !dbg !1430
  br label %167, !dbg !1430

156:                                              ; preds = %139
  %157 = sext i32 %81 to i64, !dbg !1431
  %158 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 %157, !dbg !1431
  %159 = load ptr, ptr %158, align 8, !dbg !1431, !tbaa !944
  %160 = getelementptr inbounds %struct.linebuffer, ptr %159, i64 0, i32 2, !dbg !1433
  %161 = load ptr, ptr %160, align 8, !dbg !1433, !tbaa !1380
  %162 = icmp eq ptr %161, null, !dbg !1431
  br i1 %162, label %167, label %163, !dbg !1434

163:                                              ; preds = %156
  %164 = sext i32 %82 to i64, !dbg !1435
  %165 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 %164, !dbg !1435
  %166 = load ptr, ptr %165, align 8, !dbg !1435, !tbaa !944
  call fastcc void @check_order(ptr noundef nonnull %159, ptr noundef %166, i32 noundef 1), !dbg !1436
  br label %167, !dbg !1436

167:                                              ; preds = %156, %163, %152
  call void @llvm.dbg.value(metadata ptr %18, metadata !1339, metadata !DIExpression()), !dbg !1437
  %168 = load i32, ptr %18, align 8, !dbg !1440, !tbaa !1349
  %169 = and i32 %168, 32, !dbg !1441
  %170 = icmp eq i32 %169, 0, !dbg !1441
  br i1 %170, label %178, label %171, !dbg !1442

171:                                              ; preds = %210, %167
  %172 = phi i64 [ 0, %167 ], [ 1, %210 ]
  %173 = tail call ptr @__errno_location() #44, !dbg !1443
  %174 = load i32, ptr %173, align 4, !dbg !1443, !tbaa !1016
  %175 = getelementptr inbounds ptr, ptr %0, i64 %172, !dbg !1443
  %176 = load ptr, ptr %175, align 8, !dbg !1443, !tbaa !944
  %177 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %176) #41, !dbg !1443
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %174, ptr noundef nonnull @.str.74, ptr noundef %177) #41, !dbg !1443
  unreachable, !dbg !1443

178:                                              ; preds = %167
  call void @llvm.dbg.value(metadata ptr %150, metadata !1277, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %144, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %82, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1311
  call void @llvm.dbg.value(metadata i64 1, metadata !1307, metadata !DIExpression()), !dbg !1416
  br i1 %140, label %214, label %179, !dbg !1417

179:                                              ; preds = %137, %178
  %180 = phi ptr [ %83, %137 ], [ %150, %178 ]
  %181 = phi i32 [ %82, %137 ], [ %144, %178 ]
  %182 = phi i32 [ %81, %137 ], [ %82, %178 ]
  %183 = phi i64 [ %138, %137 ], [ %87, %178 ]
  %184 = phi i64 [ %86, %137 ], [ %141, %178 ]
  %185 = phi i64 [ %85, %137 ], [ %142, %178 ]
  call void @llvm.dbg.value(metadata i32 %79, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %80, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1311
  %186 = add nsw i32 %80, 1, !dbg !1419
  %187 = and i32 %186, 3, !dbg !1422
  call void @llvm.dbg.value(metadata i32 %187, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1311
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 %188, !dbg !1423
  %190 = load ptr, ptr %189, align 8, !dbg !1423, !tbaa !944
  %191 = load i1, ptr @delim, align 1, !dbg !1424
  %192 = select i1 %191, i8 0, i8 10, !dbg !1424
  %193 = call ptr @readlinebuffer_delim(ptr noundef %190, ptr noundef nonnull %59, i8 noundef %192) #41, !dbg !1425
  call void @llvm.dbg.value(metadata ptr %193, metadata !1277, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1311
  %194 = icmp eq ptr %193, null, !dbg !1426
  br i1 %194, label %199, label %195, !dbg !1428

195:                                              ; preds = %179
  %196 = sext i32 %80 to i64, !dbg !1429
  %197 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 %196, !dbg !1429
  %198 = load ptr, ptr %197, align 8, !dbg !1429, !tbaa !944
  call fastcc void @check_order(ptr noundef %198, ptr noundef nonnull %193, i32 noundef 2), !dbg !1430
  br label %210, !dbg !1430

199:                                              ; preds = %179
  %200 = sext i32 %79 to i64, !dbg !1431
  %201 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 %200, !dbg !1431
  %202 = load ptr, ptr %201, align 8, !dbg !1431, !tbaa !944
  %203 = getelementptr inbounds %struct.linebuffer, ptr %202, i64 0, i32 2, !dbg !1433
  %204 = load ptr, ptr %203, align 8, !dbg !1433, !tbaa !1380
  %205 = icmp eq ptr %204, null, !dbg !1431
  br i1 %205, label %210, label %206, !dbg !1434

206:                                              ; preds = %199
  %207 = sext i32 %80 to i64, !dbg !1435
  %208 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 %207, !dbg !1435
  %209 = load ptr, ptr %208, align 8, !dbg !1435, !tbaa !944
  call fastcc void @check_order(ptr noundef nonnull %202, ptr noundef %209, i32 noundef 2), !dbg !1436
  br label %210, !dbg !1436

210:                                              ; preds = %206, %199, %195
  call void @llvm.dbg.value(metadata ptr %59, metadata !1339, metadata !DIExpression()), !dbg !1437
  %211 = load i32, ptr %59, align 8, !dbg !1440, !tbaa !1349
  %212 = and i32 %211, 32, !dbg !1441
  %213 = icmp eq i32 %212, 0, !dbg !1441
  br i1 %213, label %214, label %171, !dbg !1442

214:                                              ; preds = %210, %178
  %215 = phi ptr [ %150, %178 ], [ %180, %210 ]
  %216 = phi i32 [ %144, %178 ], [ %181, %210 ]
  %217 = phi i32 [ %82, %178 ], [ %182, %210 ]
  %218 = phi i64 [ %87, %178 ], [ %183, %210 ]
  %219 = phi i64 [ %141, %178 ], [ %184, %210 ]
  %220 = phi i64 [ %142, %178 ], [ %185, %210 ]
  %221 = phi i32 [ %79, %178 ], [ %80, %210 ], !dbg !1311
  %222 = phi i32 [ %80, %178 ], [ %187, %210 ], !dbg !1311
  %223 = phi ptr [ %84, %178 ], [ %193, %210 ], !dbg !1311
  call void @llvm.dbg.value(metadata ptr %223, metadata !1277, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %222, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %221, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1311
  call void @llvm.dbg.value(metadata i64 2, metadata !1307, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %85, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %86, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %138, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1311
  %224 = icmp ne ptr %215, null, !dbg !1354
  %225 = icmp ne ptr %223, null, !dbg !1355
  %226 = select i1 %224, i1 true, i1 %225, !dbg !1355
  br i1 %226, label %78, label %72, !dbg !1356, !llvm.loop !1444

227:                                              ; preds = %234, %72
  %228 = phi i64 [ 0, %72 ], [ 1, %234 ]
  %229 = tail call ptr @__errno_location() #44, !dbg !1446
  %230 = load i32, ptr %229, align 4, !dbg !1446, !tbaa !1016
  %231 = getelementptr inbounds ptr, ptr %0, i64 %228, !dbg !1446
  %232 = load ptr, ptr %231, align 8, !dbg !1446, !tbaa !944
  %233 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %232) #41, !dbg !1446
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %230, ptr noundef nonnull @.str.74, ptr noundef %233) #41, !dbg !1446
  unreachable, !dbg !1446

234:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 1, metadata !1309, metadata !DIExpression()), !dbg !1358
  %235 = call i32 @rpl_fclose(ptr noundef nonnull %59) #41, !dbg !1359
  %236 = icmp eq i32 %235, 0, !dbg !1362
  br i1 %236, label %237, label %227, !dbg !1363

237:                                              ; preds = %234
  call void @llvm.dbg.value(metadata i64 2, metadata !1309, metadata !DIExpression()), !dbg !1358
  %238 = load i1, ptr @total_option, align 1, !dbg !1447
  br i1 %238, label %239, label %255, !dbg !1449

239:                                              ; preds = %237
  %240 = load i64, ptr @col_sep_len, align 8, !dbg !1450, !tbaa !1199
  %241 = icmp eq i64 %240, 1, !dbg !1453
  %242 = load ptr, ptr @col_sep, align 8, !dbg !1454, !tbaa !944
  br i1 %241, label %243, label %250, !dbg !1455

243:                                              ; preds = %239
  %244 = load i8, ptr %242, align 1, !dbg !1456, !tbaa !1025
  %245 = zext i8 %244 to i32, !dbg !1456
  %246 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #41, !dbg !1456
  %247 = load i1, ptr @delim, align 1, !dbg !1456
  %248 = select i1 %247, i32 0, i32 10, !dbg !1456
  %249 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.75, i64 noundef %75, i32 noundef %245, i64 noundef %73, i32 noundef %245, i64 noundef %74, i32 noundef %245, ptr noundef %246, i32 noundef %248) #41, !dbg !1456
  br label %255, !dbg !1458

250:                                              ; preds = %239
  %251 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #41, !dbg !1459
  %252 = load i1, ptr @delim, align 1, !dbg !1459
  %253 = select i1 %252, i32 0, i32 10, !dbg !1459
  %254 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.76, i64 noundef %75, ptr noundef %242, i64 noundef %73, ptr noundef %242, i64 noundef %74, ptr noundef %242, ptr noundef %251, i32 noundef %253) #41, !dbg !1459
  br label %255

255:                                              ; preds = %243, %250, %237
  %256 = load i8, ptr @issued_disorder_warning, align 4, !dbg !1461, !tbaa !1179, !range !1377, !noundef !1001
  %257 = icmp eq i8 %256, 0, !dbg !1461
  %258 = load i8, ptr getelementptr inbounds ([2 x i8], ptr @issued_disorder_warning, i64 0, i64 1), align 1
  %259 = icmp eq i8 %258, 0
  %260 = select i1 %257, i1 %259, i1 false, !dbg !1463
  br i1 %260, label %263, label %261, !dbg !1463

261:                                              ; preds = %255
  %262 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #41, !dbg !1464
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %262) #41, !dbg !1464
  unreachable, !dbg !1464

263:                                              ; preds = %255
  call void @exit(i32 noundef 0) #43, !dbg !1465
  unreachable, !dbg !1465
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1466 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1470 i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @writeline(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !dbg !1473 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1479, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i32 %1, metadata !1480, metadata !DIExpression()), !dbg !1501
  switch i32 %1, label %25 [
    i32 1, label %3
    i32 2, label %5
    i32 3, label %9
  ], !dbg !1502

3:                                                ; preds = %2
  %4 = load i1, ptr @only_file_1, align 1, !dbg !1503
  br i1 %4, label %44, label %25, !dbg !1505

5:                                                ; preds = %2
  %6 = load i1, ptr @only_file_2, align 1, !dbg !1506
  br i1 %6, label %44, label %7, !dbg !1508

7:                                                ; preds = %5
  %8 = load i1, ptr @only_file_1, align 1, !dbg !1509
  br i1 %8, label %25, label %20, !dbg !1510

9:                                                ; preds = %2
  %10 = load i1, ptr @both, align 1, !dbg !1511
  br i1 %10, label %44, label %11, !dbg !1513

11:                                               ; preds = %9
  %12 = load i1, ptr @only_file_1, align 1, !dbg !1514
  br i1 %12, label %18, label %13, !dbg !1515

13:                                               ; preds = %11
  %14 = load i64, ptr @col_sep_len, align 8, !dbg !1516, !tbaa !1199
  %15 = load ptr, ptr @col_sep, align 8, !dbg !1516, !tbaa !944
  %16 = load ptr, ptr @stdout, align 8, !dbg !1516, !tbaa !944
  %17 = tail call i64 @fwrite_unlocked(ptr noundef %15, i64 noundef 1, i64 noundef %14, ptr noundef %16), !dbg !1516
  br label %18, !dbg !1516

18:                                               ; preds = %13, %11
  %19 = load i1, ptr @only_file_2, align 1, !dbg !1517
  br i1 %19, label %25, label %20, !dbg !1518

20:                                               ; preds = %18, %7
  %21 = load i64, ptr @col_sep_len, align 8, !dbg !1519, !tbaa !1199
  %22 = load ptr, ptr @col_sep, align 8, !dbg !1519, !tbaa !944
  %23 = load ptr, ptr @stdout, align 8, !dbg !1519, !tbaa !944
  %24 = tail call i64 @fwrite_unlocked(ptr noundef %22, i64 noundef 1, i64 noundef %21, ptr noundef %23), !dbg !1519
  br label %25, !dbg !1520

25:                                               ; preds = %20, %18, %7, %3, %2
  %26 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !1520
  %27 = load i64, ptr %26, align 8, !dbg !1520, !tbaa !1383
  %28 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !1520
  %29 = load ptr, ptr %28, align 8, !dbg !1520, !tbaa !1380
  %30 = load ptr, ptr @stdout, align 8, !dbg !1520, !tbaa !944
  %31 = tail call i64 @fwrite_unlocked(ptr noundef %29, i64 noundef 1, i64 noundef %27, ptr noundef %30), !dbg !1520
  %32 = load ptr, ptr @stdout, align 8, !dbg !1521, !tbaa !944
  call void @llvm.dbg.value(metadata ptr %32, metadata !1339, metadata !DIExpression()), !dbg !1523
  %33 = load i32, ptr %32, align 8, !dbg !1525, !tbaa !1349
  %34 = and i32 %33, 32, !dbg !1521
  %35 = icmp eq i32 %34, 0, !dbg !1521
  br i1 %35, label %44, label %36, !dbg !1526

36:                                               ; preds = %25
  %37 = tail call ptr @__errno_location() #44, !dbg !1527
  %38 = load i32, ptr %37, align 4, !dbg !1527, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %38, metadata !1530, metadata !DIExpression()), !dbg !1532
  %39 = tail call i32 @fflush_unlocked(ptr noundef nonnull %32) #41, !dbg !1533
  %40 = load ptr, ptr @stdout, align 8, !dbg !1534, !tbaa !944
  %41 = tail call i32 @fpurge(ptr noundef %40) #41, !dbg !1535
  %42 = load ptr, ptr @stdout, align 8, !dbg !1536, !tbaa !944
  tail call void @clearerr_unlocked(ptr noundef %42) #41, !dbg !1536
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1537
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %38, ptr noundef %43) #41, !dbg !1537
  unreachable, !dbg !1537

44:                                               ; preds = %9, %5, %3, %25
  ret void, !dbg !1538
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_order(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #11 !dbg !1539 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1543, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata ptr %1, metadata !1544, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 %2, metadata !1545, metadata !DIExpression()), !dbg !1556
  %4 = load i32, ptr @check_input_order, align 4, !dbg !1557, !tbaa !1025
  switch i32 %4, label %5 [
    i32 2, label %39
    i32 1, label %7
  ], !dbg !1558

5:                                                ; preds = %3
  %6 = load i1, ptr @seen_unpairable, align 1, !dbg !1559
  br i1 %6, label %7, label %39, !dbg !1560

7:                                                ; preds = %3, %5
  %8 = add nsw i32 %2, -1, !dbg !1561
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [2 x i8], ptr @issued_disorder_warning, i64 0, i64 %9, !dbg !1562
  %11 = load i8, ptr %10, align 1, !dbg !1562, !tbaa !1179, !range !1377, !noundef !1001
  %12 = icmp eq i8 %11, 0, !dbg !1562
  br i1 %12, label %13, label %39, !dbg !1563

13:                                               ; preds = %7
  %14 = load i8, ptr @hard_LC_COLLATE, align 4, !dbg !1564, !tbaa !1179, !range !1377, !noundef !1001
  %15 = icmp eq i8 %14, 0, !dbg !1564
  %16 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !1566
  %17 = load ptr, ptr %16, align 8, !dbg !1566, !tbaa !1380
  %18 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !1566
  %19 = load i64, ptr %18, align 8, !dbg !1566, !tbaa !1383
  %20 = add nsw i64 %19, -1, !dbg !1566
  %21 = getelementptr inbounds %struct.linebuffer, ptr %1, i64 0, i32 2, !dbg !1566
  %22 = load ptr, ptr %21, align 8, !dbg !1566, !tbaa !1380
  %23 = getelementptr inbounds %struct.linebuffer, ptr %1, i64 0, i32 1, !dbg !1566
  %24 = load i64, ptr %23, align 8, !dbg !1566, !tbaa !1383
  %25 = add nsw i64 %24, -1, !dbg !1566
  br i1 %15, label %28, label %26, !dbg !1567

26:                                               ; preds = %13
  %27 = tail call i32 @xmemcoll(ptr noundef %17, i64 noundef %20, ptr noundef %22, i64 noundef %25) #41, !dbg !1568
  call void @llvm.dbg.value(metadata i32 %27, metadata !1546, metadata !DIExpression()), !dbg !1569
  br label %30, !dbg !1570

28:                                               ; preds = %13
  %29 = tail call i32 @memcmp2(ptr noundef %17, i64 noundef %20, ptr noundef %22, i64 noundef %25) #42, !dbg !1571
  call void @llvm.dbg.value(metadata i32 %29, metadata !1546, metadata !DIExpression()), !dbg !1569
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ], !dbg !1566
  call void @llvm.dbg.value(metadata i32 %31, metadata !1546, metadata !DIExpression()), !dbg !1569
  %32 = icmp sgt i32 %31, 0, !dbg !1572
  br i1 %32, label %33, label %39, !dbg !1573

33:                                               ; preds = %30
  %34 = load i32, ptr @check_input_order, align 4, !dbg !1574, !tbaa !1025
  %35 = icmp eq i32 %34, 1, !dbg !1574
  %36 = zext i1 %35 to i32, !dbg !1574
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #41, !dbg !1574
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %36, i32 noundef 0, ptr noundef %37, i32 noundef %2) #41, !dbg !1574
  call void @llvm.dbg.value(metadata i32 %36, metadata !1551, metadata !DIExpression()), !dbg !1575
  %38 = xor i1 %35, true, !dbg !1576
  tail call void @llvm.assume(i1 %38), !dbg !1574
  store i8 1, ptr %10, align 1, !dbg !1577, !tbaa !1179
  br label %39, !dbg !1578

39:                                               ; preds = %30, %33, %3, %7, %5
  ret void, !dbg !1579
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #12

declare !dbg !1580 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1581 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1584 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1586, metadata !DIExpression()), !dbg !1587
  store ptr %0, ptr @file_name, align 8, !dbg !1588, !tbaa !944
  ret void, !dbg !1589
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !1590 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1594, metadata !DIExpression()), !dbg !1595
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1596, !tbaa !1179
  ret void, !dbg !1597
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #11 !dbg !1598 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1603, !tbaa !944
  %2 = tail call i32 @close_stream(ptr noundef %1) #41, !dbg !1604
  %3 = icmp eq i32 %2, 0, !dbg !1605
  br i1 %3, label %22, label %4, !dbg !1606

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1607, !tbaa !1179, !range !1377, !noundef !1001
  %6 = icmp eq i8 %5, 0, !dbg !1607
  br i1 %6, label %11, label %7, !dbg !1608

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #44, !dbg !1609
  %9 = load i32, ptr %8, align 4, !dbg !1609, !tbaa !1016
  %10 = icmp eq i32 %9, 32, !dbg !1610
  br i1 %10, label %22, label %11, !dbg !1611

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1.37, i32 noundef 5) #41, !dbg !1612
  call void @llvm.dbg.value(metadata ptr %12, metadata !1600, metadata !DIExpression()), !dbg !1613
  %13 = load ptr, ptr @file_name, align 8, !dbg !1614, !tbaa !944
  %14 = icmp eq ptr %13, null, !dbg !1614
  %15 = tail call ptr @__errno_location() #44, !dbg !1616
  %16 = load i32, ptr %15, align 4, !dbg !1616, !tbaa !1016
  br i1 %14, label %19, label %17, !dbg !1617

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #41, !dbg !1618
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.38, ptr noundef %18, ptr noundef %12) #41, !dbg !1618
  br label %20, !dbg !1618

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.39, ptr noundef %12) #41, !dbg !1619
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1620, !tbaa !1016
  tail call void @_exit(i32 noundef %21) #43, !dbg !1621
  unreachable, !dbg !1621

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1622, !tbaa !944
  %24 = tail call i32 @close_stream(ptr noundef %23) #41, !dbg !1624
  %25 = icmp eq i32 %24, 0, !dbg !1625
  br i1 %25, label %28, label %26, !dbg !1626

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1627, !tbaa !1016
  tail call void @_exit(i32 noundef %27) #43, !dbg !1628
  unreachable, !dbg !1628

28:                                               ; preds = %22
  ret void, !dbg !1629
}

; Function Attrs: noreturn
declare !dbg !1630 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1632 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1636, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i32 %1, metadata !1637, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %2, metadata !1638, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1639, metadata !DIExpression()), !dbg !1641
  tail call fastcc void @flush_stdout(), !dbg !1642
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1643, !tbaa !944
  %7 = icmp eq ptr %6, null, !dbg !1643
  br i1 %7, label %9, label %8, !dbg !1645

8:                                                ; preds = %4
  tail call void %6() #41, !dbg !1646
  br label %13, !dbg !1646

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1647, !tbaa !944
  %11 = tail call ptr @getprogname() #42, !dbg !1647
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef %11) #41, !dbg !1647
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41, !dbg !1649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1649, !tbaa.struct !1650
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1649
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41, !dbg !1649
  ret void, !dbg !1651
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #11 !dbg !1652 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1654, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i32 1, metadata !1656, metadata !DIExpression()), !dbg !1661
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #41, !dbg !1664
  %2 = icmp slt i32 %1, 0, !dbg !1665
  br i1 %2, label %6, label %3, !dbg !1666

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1667, !tbaa !944
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #41, !dbg !1667
  br label %6, !dbg !1667

6:                                                ; preds = %3, %0
  ret void, !dbg !1668
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #11 !dbg !1669 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1671, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %1, metadata !1672, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata ptr %2, metadata !1673, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1674, metadata !DIExpression()), !dbg !1676
  %7 = load ptr, ptr @stderr, align 8, !dbg !1677, !tbaa !944
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41, !dbg !1678, !noalias !1722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1726
  call void @llvm.dbg.value(metadata ptr %7, metadata !1718, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata ptr %2, metadata !1719, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1720, metadata !DIExpression()), !dbg !1728
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #41, !dbg !1678
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41, !dbg !1678, !noalias !1722
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1729, !tbaa !1016
  %10 = add i32 %9, 1, !dbg !1729
  store i32 %10, ptr @error_message_count, align 4, !dbg !1729, !tbaa !1016
  %11 = icmp eq i32 %1, 0, !dbg !1730
  br i1 %11, label %21, label %12, !dbg !1732

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1733, metadata !DIExpression()), !dbg !1741
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #41, !dbg !1743
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1737, metadata !DIExpression()), !dbg !1744
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #41, !dbg !1745
  call void @llvm.dbg.value(metadata ptr %13, metadata !1736, metadata !DIExpression()), !dbg !1741
  %14 = icmp eq ptr %13, null, !dbg !1746
  br i1 %14, label %15, label %17, !dbg !1748

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.41, ptr noundef nonnull @.str.5.42, i32 noundef 5) #41, !dbg !1749
  call void @llvm.dbg.value(metadata ptr %16, metadata !1736, metadata !DIExpression()), !dbg !1741
  br label %17, !dbg !1750

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1741
  call void @llvm.dbg.value(metadata ptr %18, metadata !1736, metadata !DIExpression()), !dbg !1741
  %19 = load ptr, ptr @stderr, align 8, !dbg !1751, !tbaa !944
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.43, ptr noundef %18) #41, !dbg !1751
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #41, !dbg !1752
  br label %21, !dbg !1753

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1754, !tbaa !944
  call void @llvm.dbg.value(metadata i32 10, metadata !1755, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata ptr %22, metadata !1760, metadata !DIExpression()), !dbg !1761
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1763
  %24 = load ptr, ptr %23, align 8, !dbg !1763, !tbaa !1764
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1763
  %26 = load ptr, ptr %25, align 8, !dbg !1763, !tbaa !1765
  %27 = icmp ult ptr %24, %26, !dbg !1763
  br i1 %27, label %30, label %28, !dbg !1763, !prof !1766

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #41, !dbg !1763
  br label %32, !dbg !1763

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1763
  store ptr %31, ptr %23, align 8, !dbg !1763, !tbaa !1764
  store i8 10, ptr %24, align 1, !dbg !1763, !tbaa !1025
  br label %32, !dbg !1763

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1767, !tbaa !944
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #41, !dbg !1767
  %35 = icmp eq i32 %0, 0, !dbg !1768
  br i1 %35, label %37, label %36, !dbg !1770

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #43, !dbg !1771
  unreachable, !dbg !1771

37:                                               ; preds = %32
  ret void, !dbg !1772
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

declare !dbg !1773 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1776 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1779 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1782 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #11 !dbg !1786 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1790, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i32 %1, metadata !1791, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata ptr %2, metadata !1792, metadata !DIExpression()), !dbg !1794
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #41, !dbg !1795
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1793, metadata !DIExpression()), !dbg !1796
  call void @llvm.va_start(ptr nonnull %4), !dbg !1797
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41, !dbg !1798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1798, !tbaa.struct !1650
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #46, !dbg !1798
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41, !dbg !1798
  call void @llvm.va_end(ptr nonnull %4), !dbg !1799
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #41, !dbg !1800
  ret void, !dbg !1800
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !504 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !521, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i32 %1, metadata !522, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata ptr %2, metadata !523, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i32 %3, metadata !524, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata ptr %4, metadata !525, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.declare(metadata ptr %5, metadata !526, metadata !DIExpression()), !dbg !1802
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1803, !tbaa !1016
  %9 = icmp eq i32 %8, 0, !dbg !1803
  br i1 %9, label %24, label %10, !dbg !1805

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1806, !tbaa !1016
  %12 = icmp eq i32 %11, %3, !dbg !1809
  br i1 %12, label %13, label %23, !dbg !1810

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1811, !tbaa !944
  %15 = icmp eq ptr %14, %2, !dbg !1812
  br i1 %15, label %37, label %16, !dbg !1813

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1814
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1815
  br i1 %19, label %20, label %23, !dbg !1815

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !1816
  %22 = icmp eq i32 %21, 0, !dbg !1817
  br i1 %22, label %37, label %23, !dbg !1818

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1819, !tbaa !944
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1820, !tbaa !1016
  br label %24, !dbg !1821

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1822
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1823, !tbaa !944
  %26 = icmp eq ptr %25, null, !dbg !1823
  br i1 %26, label %28, label %27, !dbg !1825

27:                                               ; preds = %24
  tail call void %25() #41, !dbg !1826
  br label %32, !dbg !1826

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1827, !tbaa !944
  %30 = tail call ptr @getprogname() #42, !dbg !1827
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.46, ptr noundef %30) #41, !dbg !1827
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1829, !tbaa !944
  %34 = icmp eq ptr %2, null, !dbg !1829
  %35 = select i1 %34, ptr @.str.3.47, ptr @.str.2.48, !dbg !1829
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #41, !dbg !1829
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #41, !dbg !1830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1830, !tbaa.struct !1650
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1830
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #41, !dbg !1830
  br label %37, !dbg !1831

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1831
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #11 !dbg !1832 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1836, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i32 %1, metadata !1837, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata ptr %2, metadata !1838, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i32 %3, metadata !1839, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata ptr %4, metadata !1840, metadata !DIExpression()), !dbg !1842
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41, !dbg !1843
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1841, metadata !DIExpression()), !dbg !1844
  call void @llvm.va_start(ptr nonnull %6), !dbg !1845
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #41, !dbg !1846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1846, !tbaa.struct !1650
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #46, !dbg !1846
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #41, !dbg !1846
  call void @llvm.va_end(ptr nonnull %6), !dbg !1847
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41, !dbg !1848
  ret void, !dbg !1848
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #11 !dbg !1849 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1855, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %1, metadata !1856, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i64 %2, metadata !1857, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i32 %3, metadata !1858, metadata !DIExpression()), !dbg !1859
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #41, !dbg !1860
  ret void, !dbg !1861
}

; Function Attrs: nounwind
declare !dbg !1862 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 !dbg !1865 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1903, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i32 %1, metadata !1904, metadata !DIExpression()), !dbg !1905
  %3 = icmp eq ptr %0, null, !dbg !1906
  br i1 %3, label %7, label %4, !dbg !1908

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !1909
  call void @llvm.dbg.value(metadata i32 %5, metadata !1855, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i64 0, metadata !1856, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i64 0, metadata !1857, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i32 %1, metadata !1858, metadata !DIExpression()), !dbg !1910
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #41, !dbg !1912
  br label %7, !dbg !1913

7:                                                ; preds = %4, %2
  ret void, !dbg !1914
}

; Function Attrs: nofree nounwind
declare !dbg !1915 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #11 !dbg !1918 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1956, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i32 0, metadata !1957, metadata !DIExpression()), !dbg !1960
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !1961
  call void @llvm.dbg.value(metadata i32 %2, metadata !1958, metadata !DIExpression()), !dbg !1960
  %3 = icmp slt i32 %2, 0, !dbg !1962
  br i1 %3, label %4, label %6, !dbg !1964

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1965
  br label %24, !dbg !1966

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !1967
  %8 = icmp eq i32 %7, 0, !dbg !1967
  br i1 %8, label %13, label %9, !dbg !1969

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !1970
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #41, !dbg !1971
  %12 = icmp eq i64 %11, -1, !dbg !1972
  br i1 %12, label %16, label %13, !dbg !1973

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #41, !dbg !1974
  %15 = icmp eq i32 %14, 0, !dbg !1974
  br i1 %15, label %16, label %18, !dbg !1975

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !1957, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i32 0, metadata !1959, metadata !DIExpression()), !dbg !1960
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %17, metadata !1959, metadata !DIExpression()), !dbg !1960
  br label %24, !dbg !1977

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #44, !dbg !1978
  %20 = load i32, ptr %19, align 4, !dbg !1978, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %20, metadata !1957, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i32 0, metadata !1959, metadata !DIExpression()), !dbg !1960
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %21, metadata !1959, metadata !DIExpression()), !dbg !1960
  %22 = icmp eq i32 %20, 0, !dbg !1979
  br i1 %22, label %24, label %23, !dbg !1977

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !1981, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 -1, metadata !1959, metadata !DIExpression()), !dbg !1960
  br label %24, !dbg !1983

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !1960
  ret i32 %25, !dbg !1984
}

; Function Attrs: nofree nounwind
declare !dbg !1985 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1986 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1988 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #11 !dbg !1991 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2029, metadata !DIExpression()), !dbg !2030
  %2 = icmp eq ptr %0, null, !dbg !2031
  br i1 %2, label %6, label %3, !dbg !2033

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !2034
  %5 = icmp eq i32 %4, 0, !dbg !2034
  br i1 %5, label %6, label %8, !dbg !2035

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2036
  br label %16, !dbg !2037

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2038, metadata !DIExpression()), !dbg !2043
  %9 = load i32, ptr %0, align 8, !dbg !2045, !tbaa !1349
  %10 = and i32 %9, 256, !dbg !2047
  %11 = icmp eq i32 %10, 0, !dbg !2047
  br i1 %11, label %14, label %12, !dbg !2048

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #41, !dbg !2049
  br label %14, !dbg !2049

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2050
  br label %16, !dbg !2051

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2030
  ret i32 %17, !dbg !2052
}

; Function Attrs: nofree nounwind
declare !dbg !2053 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @fopen_safer(ptr noundef nonnull %0, ptr noundef nonnull %1) local_unnamed_addr #11 !dbg !2054 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2092, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata ptr %1, metadata !2093, metadata !DIExpression()), !dbg !2107
  %3 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull %0, ptr noundef nonnull %1) #41, !dbg !2108
  call void @llvm.dbg.value(metadata ptr %3, metadata !2094, metadata !DIExpression()), !dbg !2107
  %4 = icmp eq ptr %3, null, !dbg !2109
  br i1 %4, label %25, label %5, !dbg !2110

5:                                                ; preds = %2
  %6 = tail call i32 @fileno(ptr noundef nonnull %3) #41, !dbg !2111
  call void @llvm.dbg.value(metadata i32 %6, metadata !2095, metadata !DIExpression()), !dbg !2112
  %7 = icmp ult i32 %6, 3, !dbg !2113
  br i1 %7, label %8, label %25, !dbg !2113

8:                                                ; preds = %5
  %9 = tail call i32 @dup_safer(i32 noundef %6) #41, !dbg !2114
  call void @llvm.dbg.value(metadata i32 %9, metadata !2098, metadata !DIExpression()), !dbg !2115
  %10 = icmp slt i32 %9, 0, !dbg !2116
  br i1 %10, label %11, label %15, !dbg !2117

11:                                               ; preds = %8
  %12 = tail call ptr @__errno_location() #44, !dbg !2118
  %13 = load i32, ptr %12, align 4, !dbg !2118, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %13, metadata !2101, metadata !DIExpression()), !dbg !2119
  %14 = tail call i32 @rpl_fclose(ptr noundef nonnull %3) #41, !dbg !2120
  store i32 %13, ptr %12, align 4, !dbg !2121, !tbaa !1016
  br label %25

15:                                               ; preds = %8
  %16 = tail call i32 @rpl_fclose(ptr noundef nonnull %3) #41, !dbg !2122
  %17 = icmp eq i32 %16, 0, !dbg !2123
  br i1 %17, label %18, label %21, !dbg !2124

18:                                               ; preds = %15
  %19 = tail call noalias ptr @fdopen(i32 noundef %9, ptr noundef nonnull %1) #41, !dbg !2125
  call void @llvm.dbg.value(metadata ptr %19, metadata !2094, metadata !DIExpression()), !dbg !2107
  %20 = icmp eq ptr %19, null, !dbg !2126
  br i1 %20, label %21, label %25, !dbg !2127

21:                                               ; preds = %18, %15
  call void @llvm.dbg.value(metadata ptr poison, metadata !2094, metadata !DIExpression()), !dbg !2107
  %22 = tail call ptr @__errno_location() #44, !dbg !2128
  %23 = load i32, ptr %22, align 4, !dbg !2128, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %23, metadata !2104, metadata !DIExpression()), !dbg !2129
  %24 = tail call i32 @close(i32 noundef %9) #41, !dbg !2130
  store i32 %23, ptr %22, align 4, !dbg !2131, !tbaa !1016
  br label %25

25:                                               ; preds = %5, %18, %2, %21, %11
  %26 = phi ptr [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ], !dbg !2107
  ret ptr %26, !dbg !2132
}

; Function Attrs: nofree nounwind
declare !dbg !2133 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !2136 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #11 !dbg !2137 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2175, metadata !DIExpression()), !dbg !2176
  tail call void @__fpurge(ptr noundef nonnull %0) #41, !dbg !2177
  ret i32 0, !dbg !2178
}

; Function Attrs: nounwind
declare !dbg !2179 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !2182 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2220, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i64 %1, metadata !2221, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i32 %2, metadata !2222, metadata !DIExpression()), !dbg !2226
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2227
  %5 = load ptr, ptr %4, align 8, !dbg !2227, !tbaa !2228
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2229
  %7 = load ptr, ptr %6, align 8, !dbg !2229, !tbaa !2230
  %8 = icmp eq ptr %5, %7, !dbg !2231
  br i1 %8, label %9, label %27, !dbg !2232

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2233
  %11 = load ptr, ptr %10, align 8, !dbg !2233, !tbaa !1764
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2234
  %13 = load ptr, ptr %12, align 8, !dbg !2234, !tbaa !2235
  %14 = icmp eq ptr %11, %13, !dbg !2236
  br i1 %14, label %15, label %27, !dbg !2237

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2238
  %17 = load ptr, ptr %16, align 8, !dbg !2238, !tbaa !2239
  %18 = icmp eq ptr %17, null, !dbg !2240
  br i1 %18, label %19, label %27, !dbg !2241

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !2242
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #41, !dbg !2243
  call void @llvm.dbg.value(metadata i64 %21, metadata !2223, metadata !DIExpression()), !dbg !2244
  %22 = icmp eq i64 %21, -1, !dbg !2245
  br i1 %22, label %29, label %23, !dbg !2247

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2248, !tbaa !1349
  %25 = and i32 %24, -17, !dbg !2248
  store i32 %25, ptr %0, align 8, !dbg !2248, !tbaa !1349
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2249
  store i64 %21, ptr %26, align 8, !dbg !2250, !tbaa !2251
  br label %29, !dbg !2252

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2253
  br label %29, !dbg !2254

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2226
  ret i32 %30, !dbg !2255
}

; Function Attrs: nofree nounwind
declare !dbg !2256 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !2259 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2262, !tbaa !944
  ret ptr %1, !dbg !2263
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #11 !dbg !2264 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !2268, metadata !DIExpression()), !dbg !2273
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #41, !dbg !2274
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2269, metadata !DIExpression()), !dbg !2275
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #41, !dbg !2276
  %4 = icmp eq i32 %3, 0, !dbg !2276
  br i1 %4, label %5, label %12, !dbg !2278

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !2279, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata ptr @.str.80, metadata !2282, metadata !DIExpression()), !dbg !2283
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.80, i64 2), !dbg !2286
  %7 = icmp eq i32 %6, 0, !dbg !2287
  br i1 %7, label %11, label %8, !dbg !2288

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !2279, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata ptr @.str.1.81, metadata !2282, metadata !DIExpression()), !dbg !2289
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.81, i64 6), !dbg !2291
  %10 = icmp eq i32 %9, 0, !dbg !2292
  br i1 %10, label %11, label %12, !dbg !2293

11:                                               ; preds = %8, %5
  br label %12, !dbg !2294

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !2273
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #41, !dbg !2295
  ret i1 %13, !dbg !2295
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nofree nounwind memory(argmem: readwrite) uwtable
define dso_local void @initbuffer(ptr noundef %0) local_unnamed_addr #20 !dbg !2296 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2306, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata ptr %0, metadata !2308, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 0, metadata !2314, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 24, metadata !2315, metadata !DIExpression()), !dbg !2316
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %0, i8 noundef 0, i64 noundef 24, i1 noundef false) #41, !dbg !2318
  ret void, !dbg !2319
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: nounwind uwtable
define dso_local ptr @readlinebuffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !2320 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2358, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata ptr %1, metadata !2359, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata ptr %0, metadata !2361, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %1, metadata !2366, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 10, metadata !2367, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %1, metadata !2378, metadata !DIExpression()), !dbg !2383
  %3 = load i32, ptr %1, align 8, !dbg !2386, !tbaa !1349
  %4 = and i32 %3, 16, !dbg !2387
  %5 = icmp eq i32 %4, 0, !dbg !2387
  br i1 %5, label %6, label %60, !dbg !2388

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2389
  %8 = load ptr, ptr %7, align 8, !dbg !2389, !tbaa !1380
  call void @llvm.dbg.value(metadata ptr %8, metadata !2368, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %8, metadata !2369, metadata !DIExpression()), !dbg !2376
  %9 = load i64, ptr %0, align 8, !dbg !2390, !tbaa !2391
  %10 = getelementptr inbounds i8, ptr %8, i64 %9, !dbg !2392
  call void @llvm.dbg.value(metadata ptr %10, metadata !2370, metadata !DIExpression()), !dbg !2376
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  br label %13, !dbg !2393

13:                                               ; preds = %46, %6
  %14 = phi ptr [ %8, %6 ], [ %47, %46 ], !dbg !2376
  %15 = phi ptr [ %8, %6 ], [ %51, %46 ], !dbg !2376
  %16 = phi ptr [ %10, %6 ], [ %49, %46 ], !dbg !2376
  call void @llvm.dbg.value(metadata ptr %16, metadata !2370, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %15, metadata !2369, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %14, metadata !2368, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %1, metadata !2394, metadata !DIExpression()), !dbg !2397
  %17 = load ptr, ptr %11, align 8, !dbg !2399, !tbaa !2230
  %18 = load ptr, ptr %12, align 8, !dbg !2399, !tbaa !2228
  %19 = icmp ult ptr %17, %18, !dbg !2399
  br i1 %19, label %20, label %24, !dbg !2399, !prof !1766

20:                                               ; preds = %13
  %21 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !2399
  store ptr %21, ptr %11, align 8, !dbg !2399, !tbaa !2230
  %22 = load i8, ptr %17, align 1, !dbg !2399, !tbaa !1025
  %23 = zext i8 %22 to i32, !dbg !2399
  call void @llvm.dbg.value(metadata i32 %23, metadata !2371, metadata !DIExpression()), !dbg !2376
  br label %37, !dbg !2400

24:                                               ; preds = %13
  %25 = tail call i32 @__uflow(ptr noundef nonnull %1) #41, !dbg !2399
  call void @llvm.dbg.value(metadata i32 %25, metadata !2371, metadata !DIExpression()), !dbg !2376
  %26 = icmp eq i32 %25, -1, !dbg !2401
  br i1 %26, label %27, label %37, !dbg !2400

27:                                               ; preds = %24
  %28 = icmp eq ptr %15, %14, !dbg !2403
  br i1 %28, label %60, label %29, !dbg !2406

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %1, metadata !2407, metadata !DIExpression()), !dbg !2410
  %30 = load i32, ptr %1, align 8, !dbg !2412, !tbaa !1349
  %31 = and i32 %30, 32, !dbg !2413
  %32 = icmp eq i32 %31, 0, !dbg !2413
  br i1 %32, label %33, label %60, !dbg !2414

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %15, i64 -1, !dbg !2415
  %35 = load i8, ptr %34, align 1, !dbg !2415, !tbaa !1025
  %36 = icmp eq i8 %35, 10, !dbg !2417
  br i1 %36, label %53, label %37, !dbg !2418

37:                                               ; preds = %33, %24, %20
  %38 = phi i32 [ %25, %24 ], [ %23, %20 ], [ 10, %33 ], !dbg !2419
  call void @llvm.dbg.value(metadata i32 %38, metadata !2371, metadata !DIExpression()), !dbg !2376
  %39 = icmp eq ptr %15, %16, !dbg !2420
  br i1 %39, label %40, label %46, !dbg !2421

40:                                               ; preds = %37
  %41 = load i64, ptr %0, align 8, !dbg !2422, !tbaa !2391
  call void @llvm.dbg.value(metadata i64 %41, metadata !2372, metadata !DIExpression()), !dbg !2423
  %42 = tail call nonnull ptr @xpalloc(ptr noundef %14, ptr noundef nonnull %0, i64 noundef 1, i64 noundef -1, i64 noundef 1) #41, !dbg !2424
  call void @llvm.dbg.value(metadata ptr %42, metadata !2368, metadata !DIExpression()), !dbg !2376
  %43 = getelementptr inbounds i8, ptr %42, i64 %41, !dbg !2425
  call void @llvm.dbg.value(metadata ptr %43, metadata !2369, metadata !DIExpression()), !dbg !2376
  store ptr %42, ptr %7, align 8, !dbg !2426, !tbaa !1380
  %44 = load i64, ptr %0, align 8, !dbg !2427, !tbaa !2391
  %45 = getelementptr inbounds i8, ptr %42, i64 %44, !dbg !2428
  call void @llvm.dbg.value(metadata ptr %45, metadata !2370, metadata !DIExpression()), !dbg !2376
  br label %46, !dbg !2429

46:                                               ; preds = %40, %37
  %47 = phi ptr [ %42, %40 ], [ %14, %37 ], !dbg !2376
  %48 = phi ptr [ %43, %40 ], [ %15, %37 ], !dbg !2376
  %49 = phi ptr [ %45, %40 ], [ %16, %37 ], !dbg !2376
  call void @llvm.dbg.value(metadata ptr %49, metadata !2370, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %48, metadata !2369, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %47, metadata !2368, metadata !DIExpression()), !dbg !2376
  %50 = trunc i32 %38 to i8, !dbg !2430
  %51 = getelementptr inbounds i8, ptr %48, i64 1, !dbg !2431
  call void @llvm.dbg.value(metadata ptr %51, metadata !2369, metadata !DIExpression()), !dbg !2376
  store i8 %50, ptr %48, align 1, !dbg !2432, !tbaa !1025
  %52 = icmp eq i32 %38, 10, !dbg !2433
  br i1 %52, label %53, label %13, !dbg !2434, !llvm.loop !2435

53:                                               ; preds = %46, %33
  %54 = phi ptr [ %14, %33 ], [ %47, %46 ], !dbg !2376
  %55 = phi ptr [ %15, %33 ], [ %51, %46 ], !dbg !2376
  call void @llvm.dbg.value(metadata ptr %55, metadata !2369, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata ptr %54, metadata !2368, metadata !DIExpression()), !dbg !2376
  %56 = ptrtoint ptr %55 to i64, !dbg !2437
  %57 = ptrtoint ptr %54 to i64, !dbg !2437
  %58 = sub i64 %56, %57, !dbg !2437
  %59 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !2438
  store i64 %58, ptr %59, align 8, !dbg !2439, !tbaa !1383
  br label %60, !dbg !2440

60:                                               ; preds = %27, %29, %2, %53
  %61 = phi ptr [ null, %2 ], [ %0, %53 ], [ null, %29 ], [ null, %27 ], !dbg !2376
  ret ptr %61, !dbg !2441
}

declare !dbg !2442 i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @readlinebuffer_delim(ptr noundef %0, ptr noundef %1, i8 noundef %2) local_unnamed_addr #11 !dbg !2362 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2361, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata ptr %1, metadata !2366, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 %2, metadata !2367, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata ptr %1, metadata !2378, metadata !DIExpression()), !dbg !2444
  %4 = load i32, ptr %1, align 8, !dbg !2446, !tbaa !1349
  %5 = and i32 %4, 16, !dbg !2447
  %6 = icmp eq i32 %5, 0, !dbg !2447
  br i1 %6, label %7, label %62, !dbg !2448

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2449
  %9 = load ptr, ptr %8, align 8, !dbg !2449, !tbaa !1380
  call void @llvm.dbg.value(metadata ptr %9, metadata !2368, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata ptr %9, metadata !2369, metadata !DIExpression()), !dbg !2443
  %10 = load i64, ptr %0, align 8, !dbg !2450, !tbaa !2391
  %11 = getelementptr inbounds i8, ptr %9, i64 %10, !dbg !2451
  call void @llvm.dbg.value(metadata ptr %11, metadata !2370, metadata !DIExpression()), !dbg !2443
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %13 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %14 = zext i8 %2 to i32
  br label %15, !dbg !2452

15:                                               ; preds = %48, %7
  %16 = phi ptr [ %9, %7 ], [ %49, %48 ], !dbg !2443
  %17 = phi ptr [ %9, %7 ], [ %53, %48 ], !dbg !2443
  %18 = phi ptr [ %11, %7 ], [ %51, %48 ], !dbg !2443
  call void @llvm.dbg.value(metadata ptr %18, metadata !2370, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata ptr %17, metadata !2369, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata ptr %16, metadata !2368, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata ptr %1, metadata !2394, metadata !DIExpression()), !dbg !2453
  %19 = load ptr, ptr %12, align 8, !dbg !2455, !tbaa !2230
  %20 = load ptr, ptr %13, align 8, !dbg !2455, !tbaa !2228
  %21 = icmp ult ptr %19, %20, !dbg !2455
  br i1 %21, label %22, label %26, !dbg !2455, !prof !1766

22:                                               ; preds = %15
  %23 = getelementptr inbounds i8, ptr %19, i64 1, !dbg !2455
  store ptr %23, ptr %12, align 8, !dbg !2455, !tbaa !2230
  %24 = load i8, ptr %19, align 1, !dbg !2455, !tbaa !1025
  %25 = zext i8 %24 to i32, !dbg !2455
  call void @llvm.dbg.value(metadata i32 %25, metadata !2371, metadata !DIExpression()), !dbg !2443
  br label %39, !dbg !2456

26:                                               ; preds = %15
  %27 = tail call i32 @__uflow(ptr noundef nonnull %1) #41, !dbg !2455
  call void @llvm.dbg.value(metadata i32 %27, metadata !2371, metadata !DIExpression()), !dbg !2443
  %28 = icmp eq i32 %27, -1, !dbg !2457
  br i1 %28, label %29, label %39, !dbg !2456

29:                                               ; preds = %26
  %30 = icmp eq ptr %17, %16, !dbg !2458
  br i1 %30, label %62, label %31, !dbg !2459

31:                                               ; preds = %29
  call void @llvm.dbg.value(metadata ptr %1, metadata !2407, metadata !DIExpression()), !dbg !2460
  %32 = load i32, ptr %1, align 8, !dbg !2462, !tbaa !1349
  %33 = and i32 %32, 32, !dbg !2463
  %34 = icmp eq i32 %33, 0, !dbg !2463
  br i1 %34, label %35, label %62, !dbg !2464

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %17, i64 -1, !dbg !2465
  %37 = load i8, ptr %36, align 1, !dbg !2465, !tbaa !1025
  %38 = icmp eq i8 %37, %2, !dbg !2466
  br i1 %38, label %55, label %39, !dbg !2467

39:                                               ; preds = %35, %22, %26
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ %14, %35 ], !dbg !2468
  call void @llvm.dbg.value(metadata i32 %40, metadata !2371, metadata !DIExpression()), !dbg !2443
  %41 = icmp eq ptr %17, %18, !dbg !2469
  br i1 %41, label %42, label %48, !dbg !2470

42:                                               ; preds = %39
  %43 = load i64, ptr %0, align 8, !dbg !2471, !tbaa !2391
  call void @llvm.dbg.value(metadata i64 %43, metadata !2372, metadata !DIExpression()), !dbg !2472
  %44 = tail call nonnull ptr @xpalloc(ptr noundef %16, ptr noundef nonnull %0, i64 noundef 1, i64 noundef -1, i64 noundef 1) #41, !dbg !2473
  call void @llvm.dbg.value(metadata ptr %44, metadata !2368, metadata !DIExpression()), !dbg !2443
  %45 = getelementptr inbounds i8, ptr %44, i64 %43, !dbg !2474
  call void @llvm.dbg.value(metadata ptr %45, metadata !2369, metadata !DIExpression()), !dbg !2443
  store ptr %44, ptr %8, align 8, !dbg !2475, !tbaa !1380
  %46 = load i64, ptr %0, align 8, !dbg !2476, !tbaa !2391
  %47 = getelementptr inbounds i8, ptr %44, i64 %46, !dbg !2477
  call void @llvm.dbg.value(metadata ptr %47, metadata !2370, metadata !DIExpression()), !dbg !2443
  br label %48, !dbg !2478

48:                                               ; preds = %42, %39
  %49 = phi ptr [ %44, %42 ], [ %16, %39 ], !dbg !2443
  %50 = phi ptr [ %45, %42 ], [ %17, %39 ], !dbg !2443
  %51 = phi ptr [ %47, %42 ], [ %18, %39 ], !dbg !2443
  call void @llvm.dbg.value(metadata ptr %51, metadata !2370, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata ptr %50, metadata !2369, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata ptr %49, metadata !2368, metadata !DIExpression()), !dbg !2443
  %52 = trunc i32 %40 to i8, !dbg !2479
  %53 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !2480
  call void @llvm.dbg.value(metadata ptr %53, metadata !2369, metadata !DIExpression()), !dbg !2443
  store i8 %52, ptr %50, align 1, !dbg !2481, !tbaa !1025
  %54 = icmp eq i32 %40, %14, !dbg !2482
  br i1 %54, label %55, label %15, !dbg !2483, !llvm.loop !2484

55:                                               ; preds = %35, %48
  %56 = phi ptr [ %16, %35 ], [ %49, %48 ], !dbg !2443
  %57 = phi ptr [ %17, %35 ], [ %53, %48 ], !dbg !2443
  call void @llvm.dbg.value(metadata ptr %57, metadata !2369, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata ptr %56, metadata !2368, metadata !DIExpression()), !dbg !2443
  %58 = ptrtoint ptr %57 to i64, !dbg !2486
  %59 = ptrtoint ptr %56 to i64, !dbg !2486
  %60 = sub i64 %58, %59, !dbg !2486
  %61 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !2487
  store i64 %60, ptr %61, align 8, !dbg !2488, !tbaa !1383
  br label %62, !dbg !2489

62:                                               ; preds = %31, %29, %55, %3
  %63 = phi ptr [ null, %3 ], [ %0, %55 ], [ null, %29 ], [ null, %31 ], !dbg !2443
  ret ptr %63, !dbg !2490
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @freebuffer(ptr nocapture noundef readonly %0) local_unnamed_addr #22 !dbg !2491 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2493, metadata !DIExpression()), !dbg !2494
  %2 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2495
  %3 = load ptr, ptr %2, align 8, !dbg !2495, !tbaa !1380
  tail call void @free(ptr noundef %3) #41, !dbg !2496
  ret void, !dbg !2497
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2498 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @memcmp2(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #24 !dbg !2501 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2505, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i64 %1, metadata !2506, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata ptr %2, metadata !2507, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i64 %3, metadata !2508, metadata !DIExpression()), !dbg !2510
  %5 = tail call i64 @llvm.umin.i64(i64 %1, i64 %3), !dbg !2511
  %6 = tail call i32 @memcmp(ptr noundef %0, ptr noundef %2, i64 noundef %5) #42, !dbg !2512
  call void @llvm.dbg.value(metadata i32 %6, metadata !2509, metadata !DIExpression()), !dbg !2510
  %7 = icmp eq i32 %6, 0, !dbg !2513
  br i1 %7, label %8, label %14, !dbg !2515

8:                                                ; preds = %4
  %9 = icmp ugt i64 %1, %3, !dbg !2516
  %10 = zext i1 %9 to i32, !dbg !2516
  %11 = icmp ult i64 %1, %3, !dbg !2516
  %12 = sext i1 %11 to i32, !dbg !2516
  %13 = add nsw i32 %12, %10, !dbg !2516
  call void @llvm.dbg.value(metadata i32 %13, metadata !2509, metadata !DIExpression()), !dbg !2510
  br label %14, !dbg !2517

14:                                               ; preds = %8, %4
  %15 = phi i32 [ %13, %8 ], [ %6, %4 ], !dbg !2510
  call void @llvm.dbg.value(metadata i32 %15, metadata !2509, metadata !DIExpression()), !dbg !2510
  ret i32 %15, !dbg !2518
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #25 !dbg !2519 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2521, metadata !DIExpression()), !dbg !2524
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #42, !dbg !2525
  call void @llvm.dbg.value(metadata ptr %2, metadata !2522, metadata !DIExpression()), !dbg !2524
  %3 = icmp eq ptr %2, null, !dbg !2526
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2526
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2526
  call void @llvm.dbg.value(metadata ptr %5, metadata !2523, metadata !DIExpression()), !dbg !2524
  %6 = ptrtoint ptr %5 to i64, !dbg !2527
  %7 = ptrtoint ptr %0 to i64, !dbg !2527
  %8 = sub i64 %6, %7, !dbg !2527
  %9 = icmp sgt i64 %8, 6, !dbg !2529
  br i1 %9, label %10, label %19, !dbg !2530

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2531
  call void @llvm.dbg.value(metadata ptr %11, metadata !2532, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !2537, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 7, metadata !2538, metadata !DIExpression()), !dbg !2539
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.92, i64 7), !dbg !2541
  %13 = icmp eq i32 %12, 0, !dbg !2542
  br i1 %13, label %14, label %19, !dbg !2543

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2521, metadata !DIExpression()), !dbg !2524
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.93, i64 noundef 3) #42, !dbg !2544
  %16 = icmp eq i32 %15, 0, !dbg !2547
  %17 = select i1 %16, i64 3, i64 0, !dbg !2548
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2548
  br label %19, !dbg !2548

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2524
  call void @llvm.dbg.value(metadata ptr %21, metadata !2523, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata ptr %20, metadata !2521, metadata !DIExpression()), !dbg !2524
  store ptr %20, ptr @program_name, align 8, !dbg !2549, !tbaa !944
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2550, !tbaa !944
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2551, !tbaa !944
  ret void, !dbg !2552
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2553 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #11 !dbg !568 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !575, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata ptr %1, metadata !576, metadata !DIExpression()), !dbg !2554
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #41, !dbg !2555
  call void @llvm.dbg.value(metadata ptr %5, metadata !577, metadata !DIExpression()), !dbg !2554
  %6 = icmp eq ptr %5, %0, !dbg !2556
  br i1 %6, label %7, label %14, !dbg !2558

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #41, !dbg !2559
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !2560
  call void @llvm.dbg.declare(metadata ptr %4, metadata !583, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata ptr %4, metadata !2562, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata ptr %4, metadata !2571, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32 0, metadata !2574, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 8, metadata !2575, metadata !DIExpression()), !dbg !2576
  store i64 0, ptr %4, align 8, !dbg !2578
  call void @llvm.dbg.value(metadata ptr %3, metadata !578, metadata !DIExpression(DW_OP_deref)), !dbg !2554
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #41, !dbg !2579
  %9 = icmp eq i64 %8, 2, !dbg !2581
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !578, metadata !DIExpression()), !dbg !2554
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2582
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2554
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !2583
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41, !dbg !2583
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2554
  ret ptr %15, !dbg !2583
}

; Function Attrs: nounwind
declare !dbg !2584 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #11 !dbg !2590 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2595, metadata !DIExpression()), !dbg !2598
  %2 = tail call ptr @__errno_location() #44, !dbg !2599
  %3 = load i32, ptr %2, align 4, !dbg !2599, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %3, metadata !2596, metadata !DIExpression()), !dbg !2598
  %4 = icmp eq ptr %0, null, !dbg !2600
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2600
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #47, !dbg !2601
  call void @llvm.dbg.value(metadata ptr %6, metadata !2597, metadata !DIExpression()), !dbg !2598
  store i32 %3, ptr %2, align 4, !dbg !2602, !tbaa !1016
  ret ptr %6, !dbg !2603
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #26 !dbg !2604 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2610, metadata !DIExpression()), !dbg !2611
  %2 = icmp eq ptr %0, null, !dbg !2612
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2612
  %4 = load i32, ptr %3, align 8, !dbg !2613, !tbaa !2614
  ret i32 %4, !dbg !2616
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #27 !dbg !2617 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2621, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i32 %1, metadata !2622, metadata !DIExpression()), !dbg !2623
  %3 = icmp eq ptr %0, null, !dbg !2624
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2624
  store i32 %1, ptr %4, align 8, !dbg !2625, !tbaa !2614
  ret void, !dbg !2626
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #28 !dbg !2627 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2631, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8 %1, metadata !2632, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i32 %2, metadata !2633, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8 %1, metadata !2634, metadata !DIExpression()), !dbg !2639
  %4 = icmp eq ptr %0, null, !dbg !2640
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2640
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2641
  %7 = lshr i8 %1, 5, !dbg !2642
  %8 = zext i8 %7 to i64, !dbg !2642
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2643
  call void @llvm.dbg.value(metadata ptr %9, metadata !2635, metadata !DIExpression()), !dbg !2639
  %10 = and i8 %1, 31, !dbg !2644
  %11 = zext i8 %10 to i32, !dbg !2644
  call void @llvm.dbg.value(metadata i32 %11, metadata !2637, metadata !DIExpression()), !dbg !2639
  %12 = load i32, ptr %9, align 4, !dbg !2645, !tbaa !1016
  %13 = lshr i32 %12, %11, !dbg !2646
  %14 = and i32 %13, 1, !dbg !2647
  call void @llvm.dbg.value(metadata i32 %14, metadata !2638, metadata !DIExpression()), !dbg !2639
  %15 = xor i32 %13, %2, !dbg !2648
  %16 = and i32 %15, 1, !dbg !2648
  %17 = shl nuw i32 %16, %11, !dbg !2649
  %18 = xor i32 %17, %12, !dbg !2650
  store i32 %18, ptr %9, align 4, !dbg !2650, !tbaa !1016
  ret i32 %14, !dbg !2651
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #28 !dbg !2652 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2656, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i32 %1, metadata !2657, metadata !DIExpression()), !dbg !2659
  %3 = icmp eq ptr %0, null, !dbg !2660
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2662
  call void @llvm.dbg.value(metadata ptr %4, metadata !2656, metadata !DIExpression()), !dbg !2659
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2663
  %6 = load i32, ptr %5, align 4, !dbg !2663, !tbaa !2664
  call void @llvm.dbg.value(metadata i32 %6, metadata !2658, metadata !DIExpression()), !dbg !2659
  store i32 %1, ptr %5, align 4, !dbg !2665, !tbaa !2664
  ret i32 %6, !dbg !2666
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2667 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2671, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata ptr %1, metadata !2672, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata ptr %2, metadata !2673, metadata !DIExpression()), !dbg !2674
  %4 = icmp eq ptr %0, null, !dbg !2675
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2677
  call void @llvm.dbg.value(metadata ptr %5, metadata !2671, metadata !DIExpression()), !dbg !2674
  store i32 10, ptr %5, align 8, !dbg !2678, !tbaa !2614
  %6 = icmp ne ptr %1, null, !dbg !2679
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2681
  br i1 %8, label %10, label %9, !dbg !2681

9:                                                ; preds = %3
  tail call void @abort() #43, !dbg !2682
  unreachable, !dbg !2682

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2683
  store ptr %1, ptr %11, align 8, !dbg !2684, !tbaa !2685
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2686
  store ptr %2, ptr %12, align 8, !dbg !2687, !tbaa !2688
  ret void, !dbg !2689
}

; Function Attrs: noreturn nounwind
declare !dbg !2690 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #11 !dbg !2691 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2695, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i64 %1, metadata !2696, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata ptr %2, metadata !2697, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i64 %3, metadata !2698, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata ptr %4, metadata !2699, metadata !DIExpression()), !dbg !2703
  %6 = icmp eq ptr %4, null, !dbg !2704
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2704
  call void @llvm.dbg.value(metadata ptr %7, metadata !2700, metadata !DIExpression()), !dbg !2703
  %8 = tail call ptr @__errno_location() #44, !dbg !2705
  %9 = load i32, ptr %8, align 4, !dbg !2705, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %9, metadata !2701, metadata !DIExpression()), !dbg !2703
  %10 = load i32, ptr %7, align 8, !dbg !2706, !tbaa !2614
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2707
  %12 = load i32, ptr %11, align 4, !dbg !2707, !tbaa !2664
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2708
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2709
  %15 = load ptr, ptr %14, align 8, !dbg !2709, !tbaa !2685
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2710
  %17 = load ptr, ptr %16, align 8, !dbg !2710, !tbaa !2688
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2711
  call void @llvm.dbg.value(metadata i64 %18, metadata !2702, metadata !DIExpression()), !dbg !2703
  store i32 %9, ptr %8, align 4, !dbg !2712, !tbaa !1016
  ret i64 %18, !dbg !2713
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #11 !dbg !2714 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2720, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %1, metadata !2721, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %2, metadata !2722, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %3, metadata !2723, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 %4, metadata !2724, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 %5, metadata !2725, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %6, metadata !2726, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %7, metadata !2727, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %8, metadata !2728, metadata !DIExpression()), !dbg !2782
  %16 = tail call i64 @__ctype_get_mb_cur_max() #41, !dbg !2783
  %17 = icmp eq i64 %16, 1, !dbg !2784
  call void @llvm.dbg.value(metadata i1 %17, metadata !2729, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2782
  call void @llvm.dbg.value(metadata i64 0, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 0, metadata !2731, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr null, metadata !2732, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 0, metadata !2733, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 0, metadata !2734, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 %5, metadata !2735, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2782
  call void @llvm.dbg.value(metadata i8 0, metadata !2736, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 1, metadata !2737, metadata !DIExpression()), !dbg !2782
  %18 = and i32 %5, 2, !dbg !2785
  %19 = icmp ne i32 %18, 0, !dbg !2785
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2785

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2786
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2787
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2788
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2721, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 poison, metadata !2737, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 poison, metadata !2736, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 poison, metadata !2735, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 poison, metadata !2734, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %34, metadata !2733, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %33, metadata !2732, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %32, metadata !2731, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 0, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %31, metadata !2723, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %30, metadata !2728, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %29, metadata !2727, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 %28, metadata !2724, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.label(metadata !2775), !dbg !2789
  call void @llvm.dbg.value(metadata i8 0, metadata !2738, metadata !DIExpression()), !dbg !2782
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
  ], !dbg !2790

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2735, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 5, metadata !2724, metadata !DIExpression()), !dbg !2782
  br label %102, !dbg !2791

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2735, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 5, metadata !2724, metadata !DIExpression()), !dbg !2782
  br i1 %36, label %102, label %42, !dbg !2791

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2792
  br i1 %43, label %102, label %44, !dbg !2796

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2792, !tbaa !1025
  br label %102, !dbg !2792

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.106, metadata !667, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i32 %28, metadata !668, metadata !DIExpression()), !dbg !2797
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.107, ptr noundef nonnull @.str.11.106, i32 noundef 5) #41, !dbg !2801
  call void @llvm.dbg.value(metadata ptr %46, metadata !669, metadata !DIExpression()), !dbg !2797
  %47 = icmp eq ptr %46, @.str.11.106, !dbg !2802
  br i1 %47, label %48, label %57, !dbg !2804

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #41, !dbg !2805
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #41, !dbg !2806
  call void @llvm.dbg.declare(metadata ptr %13, metadata !671, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata ptr %13, metadata !2808, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata ptr %13, metadata !2816, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i32 0, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 8, metadata !2820, metadata !DIExpression()), !dbg !2821
  store i64 0, ptr %13, align 8, !dbg !2823
  call void @llvm.dbg.value(metadata ptr %12, metadata !670, metadata !DIExpression(DW_OP_deref)), !dbg !2797
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #41, !dbg !2824
  %50 = icmp eq i64 %49, 3, !dbg !2826
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !670, metadata !DIExpression()), !dbg !2797
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2827
  %54 = icmp eq i32 %28, 9, !dbg !2827
  %55 = select i1 %54, ptr @.str.10.108, ptr @.str.12.109, !dbg !2827
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2827
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #41, !dbg !2828
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #41, !dbg !2828
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2797
  call void @llvm.dbg.value(metadata ptr %58, metadata !2727, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr @.str.12.109, metadata !667, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i32 %28, metadata !668, metadata !DIExpression()), !dbg !2829
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.107, ptr noundef nonnull @.str.12.109, i32 noundef 5) #41, !dbg !2831
  call void @llvm.dbg.value(metadata ptr %59, metadata !669, metadata !DIExpression()), !dbg !2829
  %60 = icmp eq ptr %59, @.str.12.109, !dbg !2832
  br i1 %60, label %61, label %70, !dbg !2833

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #41, !dbg !2834
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #41, !dbg !2835
  call void @llvm.dbg.declare(metadata ptr %11, metadata !671, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata ptr %11, metadata !2808, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata ptr %11, metadata !2816, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i32 0, metadata !2819, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i64 8, metadata !2820, metadata !DIExpression()), !dbg !2839
  store i64 0, ptr %11, align 8, !dbg !2841
  call void @llvm.dbg.value(metadata ptr %10, metadata !670, metadata !DIExpression(DW_OP_deref)), !dbg !2829
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #41, !dbg !2842
  %63 = icmp eq i64 %62, 3, !dbg !2843
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !670, metadata !DIExpression()), !dbg !2829
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2844
  %67 = icmp eq i32 %28, 9, !dbg !2844
  %68 = select i1 %67, ptr @.str.10.108, ptr @.str.12.109, !dbg !2844
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2844
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #41, !dbg !2845
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #41, !dbg !2845
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2728, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %71, metadata !2727, metadata !DIExpression()), !dbg !2782
  br i1 %36, label %88, label %73, !dbg !2846

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2739, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 0, metadata !2730, metadata !DIExpression()), !dbg !2782
  %74 = load i8, ptr %71, align 1, !dbg !2848, !tbaa !1025
  %75 = icmp eq i8 %74, 0, !dbg !2850
  br i1 %75, label %88, label %76, !dbg !2850

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2739, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 %79, metadata !2730, metadata !DIExpression()), !dbg !2782
  %80 = icmp ult i64 %79, %39, !dbg !2851
  br i1 %80, label %81, label %83, !dbg !2854

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2851
  store i8 %77, ptr %82, align 1, !dbg !2851, !tbaa !1025
  br label %83, !dbg !2851

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2854
  call void @llvm.dbg.value(metadata i64 %84, metadata !2730, metadata !DIExpression()), !dbg !2782
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2855
  call void @llvm.dbg.value(metadata ptr %85, metadata !2739, metadata !DIExpression()), !dbg !2847
  %86 = load i8, ptr %85, align 1, !dbg !2848, !tbaa !1025
  %87 = icmp eq i8 %86, 0, !dbg !2850
  br i1 %87, label %88, label %76, !dbg !2850, !llvm.loop !2856

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2858
  call void @llvm.dbg.value(metadata i64 %89, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 1, metadata !2734, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %72, metadata !2732, metadata !DIExpression()), !dbg !2782
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #42, !dbg !2859
  call void @llvm.dbg.value(metadata i64 %90, metadata !2733, metadata !DIExpression()), !dbg !2782
  br label %102, !dbg !2860

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2734, metadata !DIExpression()), !dbg !2782
  br label %93, !dbg !2861

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2735, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 poison, metadata !2734, metadata !DIExpression()), !dbg !2782
  br i1 %36, label %102, label %96, !dbg !2862

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2735, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 poison, metadata !2734, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 2, metadata !2724, metadata !DIExpression()), !dbg !2782
  br label %102, !dbg !2863

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2735, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 poison, metadata !2734, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 2, metadata !2724, metadata !DIExpression()), !dbg !2782
  br i1 %36, label %102, label %96, !dbg !2863

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2864
  br i1 %98, label %102, label %99, !dbg !2868

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2864, !tbaa !1025
  br label %102, !dbg !2864

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2735, metadata !DIExpression()), !dbg !2782
  br label %102, !dbg !2869

101:                                              ; preds = %27
  call void @abort() #43, !dbg !2870
  unreachable, !dbg !2870

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2858
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.108, %42 ], [ @.str.10.108, %44 ], [ @.str.10.108, %41 ], [ %33, %27 ], [ @.str.12.109, %96 ], [ @.str.12.109, %99 ], [ @.str.12.109, %95 ], [ @.str.10.108, %40 ], [ @.str.12.109, %93 ], [ @.str.12.109, %92 ], !dbg !2782
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2782
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2735, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 poison, metadata !2734, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %108, metadata !2733, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %107, metadata !2732, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %106, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %105, metadata !2728, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %104, metadata !2727, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 %103, metadata !2724, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 0, metadata !2744, metadata !DIExpression()), !dbg !2871
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
  br label %122, !dbg !2872

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2858
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2786
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2873
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2721, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %129, metadata !2744, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 poison, metadata !2737, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 poison, metadata !2736, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %125, metadata !2731, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %124, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %123, metadata !2723, metadata !DIExpression()), !dbg !2782
  %131 = icmp eq i64 %123, -1, !dbg !2874
  br i1 %131, label %132, label %136, !dbg !2875

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2876
  %134 = load i8, ptr %133, align 1, !dbg !2876, !tbaa !1025
  %135 = icmp eq i8 %134, 0, !dbg !2877
  br i1 %135, label %579, label %138, !dbg !2878

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2879
  br i1 %137, label %579, label %138, !dbg !2878

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2746, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 0, metadata !2749, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 0, metadata !2750, metadata !DIExpression()), !dbg !2880
  br i1 %114, label %139, label %152, !dbg !2881

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2883
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2884
  br i1 %141, label %142, label %144, !dbg !2884

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %143, metadata !2723, metadata !DIExpression()), !dbg !2782
  br label %144, !dbg !2886

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2886
  call void @llvm.dbg.value(metadata i64 %145, metadata !2723, metadata !DIExpression()), !dbg !2782
  %146 = icmp ugt i64 %140, %145, !dbg !2887
  br i1 %146, label %152, label %147, !dbg !2888

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2889
  call void @llvm.dbg.value(metadata ptr %148, metadata !2890, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata ptr %107, metadata !2893, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 %108, metadata !2894, metadata !DIExpression()), !dbg !2895
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2897
  %150 = icmp eq i32 %149, 0, !dbg !2898
  %151 = and i1 %150, %110, !dbg !2899
  br i1 %151, label %630, label %152, !dbg !2899

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2746, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %153, metadata !2723, metadata !DIExpression()), !dbg !2782
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2900
  %156 = load i8, ptr %155, align 1, !dbg !2900, !tbaa !1025
  call void @llvm.dbg.value(metadata i8 %156, metadata !2751, metadata !DIExpression()), !dbg !2880
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
  ], !dbg !2901

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2902

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2903

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2749, metadata !DIExpression()), !dbg !2880
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2907
  br i1 %160, label %177, label %161, !dbg !2907

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2909
  br i1 %162, label %163, label %165, !dbg !2913

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2909
  store i8 39, ptr %164, align 1, !dbg !2909, !tbaa !1025
  br label %165, !dbg !2909

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2913
  call void @llvm.dbg.value(metadata i64 %166, metadata !2730, metadata !DIExpression()), !dbg !2782
  %167 = icmp ult i64 %166, %130, !dbg !2914
  br i1 %167, label %168, label %170, !dbg !2917

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2914
  store i8 36, ptr %169, align 1, !dbg !2914, !tbaa !1025
  br label %170, !dbg !2914

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %171, metadata !2730, metadata !DIExpression()), !dbg !2782
  %172 = icmp ult i64 %171, %130, !dbg !2918
  br i1 %172, label %173, label %175, !dbg !2921

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2918
  store i8 39, ptr %174, align 1, !dbg !2918, !tbaa !1025
  br label %175, !dbg !2918

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2921
  call void @llvm.dbg.value(metadata i64 %176, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 1, metadata !2738, metadata !DIExpression()), !dbg !2782
  br label %177, !dbg !2922

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2782
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %178, metadata !2730, metadata !DIExpression()), !dbg !2782
  %180 = icmp ult i64 %178, %130, !dbg !2923
  br i1 %180, label %181, label %183, !dbg !2926

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2923
  store i8 92, ptr %182, align 1, !dbg !2923, !tbaa !1025
  br label %183, !dbg !2923

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %184, metadata !2730, metadata !DIExpression()), !dbg !2782
  br i1 %111, label %185, label %482, !dbg !2927

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2929
  %187 = icmp ult i64 %186, %153, !dbg !2930
  br i1 %187, label %188, label %439, !dbg !2931

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2932
  %190 = load i8, ptr %189, align 1, !dbg !2932, !tbaa !1025
  %191 = add i8 %190, -48, !dbg !2933
  %192 = icmp ult i8 %191, 10, !dbg !2933
  br i1 %192, label %193, label %439, !dbg !2933

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2934
  br i1 %194, label %195, label %197, !dbg !2938

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2934
  store i8 48, ptr %196, align 1, !dbg !2934, !tbaa !1025
  br label %197, !dbg !2934

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2938
  call void @llvm.dbg.value(metadata i64 %198, metadata !2730, metadata !DIExpression()), !dbg !2782
  %199 = icmp ult i64 %198, %130, !dbg !2939
  br i1 %199, label %200, label %202, !dbg !2942

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2939
  store i8 48, ptr %201, align 1, !dbg !2939, !tbaa !1025
  br label %202, !dbg !2939

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2942
  call void @llvm.dbg.value(metadata i64 %203, metadata !2730, metadata !DIExpression()), !dbg !2782
  br label %439, !dbg !2943

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2944

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2945

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2946

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2948

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2950
  %210 = icmp ult i64 %209, %153, !dbg !2951
  br i1 %210, label %211, label %439, !dbg !2952

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2953
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2954
  %214 = load i8, ptr %213, align 1, !dbg !2954, !tbaa !1025
  %215 = icmp eq i8 %214, 63, !dbg !2955
  br i1 %215, label %216, label %439, !dbg !2956

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2957
  %218 = load i8, ptr %217, align 1, !dbg !2957, !tbaa !1025
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
  ], !dbg !2958

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2959

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2751, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %209, metadata !2744, metadata !DIExpression()), !dbg !2871
  %221 = icmp ult i64 %124, %130, !dbg !2961
  br i1 %221, label %222, label %224, !dbg !2964

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2961
  store i8 63, ptr %223, align 1, !dbg !2961, !tbaa !1025
  br label %224, !dbg !2961

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2964
  call void @llvm.dbg.value(metadata i64 %225, metadata !2730, metadata !DIExpression()), !dbg !2782
  %226 = icmp ult i64 %225, %130, !dbg !2965
  br i1 %226, label %227, label %229, !dbg !2968

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2965
  store i8 34, ptr %228, align 1, !dbg !2965, !tbaa !1025
  br label %229, !dbg !2965

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2968
  call void @llvm.dbg.value(metadata i64 %230, metadata !2730, metadata !DIExpression()), !dbg !2782
  %231 = icmp ult i64 %230, %130, !dbg !2969
  br i1 %231, label %232, label %234, !dbg !2972

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2969
  store i8 34, ptr %233, align 1, !dbg !2969, !tbaa !1025
  br label %234, !dbg !2969

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2972
  call void @llvm.dbg.value(metadata i64 %235, metadata !2730, metadata !DIExpression()), !dbg !2782
  %236 = icmp ult i64 %235, %130, !dbg !2973
  br i1 %236, label %237, label %239, !dbg !2976

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2973
  store i8 63, ptr %238, align 1, !dbg !2973, !tbaa !1025
  br label %239, !dbg !2973

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2976
  call void @llvm.dbg.value(metadata i64 %240, metadata !2730, metadata !DIExpression()), !dbg !2782
  br label %439, !dbg !2977

241:                                              ; preds = %152
  br label %251, !dbg !2978

242:                                              ; preds = %152
  br label %251, !dbg !2979

243:                                              ; preds = %152
  br label %249, !dbg !2980

244:                                              ; preds = %152
  br label %249, !dbg !2981

245:                                              ; preds = %152
  br label %251, !dbg !2982

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2983

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2984

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2987

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2989
  call void @llvm.dbg.label(metadata !2776), !dbg !2990
  br i1 %119, label %621, label %251, !dbg !2991

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2989
  call void @llvm.dbg.label(metadata !2778), !dbg !2993
  br i1 %109, label %493, label %450, !dbg !2994

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2995

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2996, !tbaa !1025
  %256 = icmp eq i8 %255, 0, !dbg !2998
  br i1 %256, label %257, label %439, !dbg !2999

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !3000
  br i1 %258, label %259, label %439, !dbg !3002

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2750, metadata !DIExpression()), !dbg !2880
  br label %260, !dbg !3003

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2750, metadata !DIExpression()), !dbg !2880
  br i1 %116, label %262, label %439, !dbg !3004

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !3006

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2736, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 1, metadata !2750, metadata !DIExpression()), !dbg !2880
  br i1 %116, label %264, label %439, !dbg !3007

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !3008

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !3011
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !3013
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !3013
  %270 = select i1 %268, i64 %130, i64 0, !dbg !3013
  call void @llvm.dbg.value(metadata i64 %270, metadata !2721, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %269, metadata !2731, metadata !DIExpression()), !dbg !2782
  %271 = icmp ult i64 %124, %270, !dbg !3014
  br i1 %271, label %272, label %274, !dbg !3017

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3014
  store i8 39, ptr %273, align 1, !dbg !3014, !tbaa !1025
  br label %274, !dbg !3014

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %275, metadata !2730, metadata !DIExpression()), !dbg !2782
  %276 = icmp ult i64 %275, %270, !dbg !3018
  br i1 %276, label %277, label %279, !dbg !3021

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !3018
  store i8 92, ptr %278, align 1, !dbg !3018, !tbaa !1025
  br label %279, !dbg !3018

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !3021
  call void @llvm.dbg.value(metadata i64 %280, metadata !2730, metadata !DIExpression()), !dbg !2782
  %281 = icmp ult i64 %280, %270, !dbg !3022
  br i1 %281, label %282, label %284, !dbg !3025

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !3022
  store i8 39, ptr %283, align 1, !dbg !3022, !tbaa !1025
  br label %284, !dbg !3022

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !3025
  call void @llvm.dbg.value(metadata i64 %285, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 0, metadata !2738, metadata !DIExpression()), !dbg !2782
  br label %439, !dbg !3026

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !3027

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2752, metadata !DIExpression()), !dbg !3028
  %288 = tail call ptr @__ctype_b_loc() #44, !dbg !3029
  %289 = load ptr, ptr %288, align 8, !dbg !3029, !tbaa !944
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !3029
  %292 = load i16, ptr %291, align 2, !dbg !3029, !tbaa !1057
  %293 = and i16 %292, 16384, !dbg !3029
  %294 = icmp ne i16 %293, 0, !dbg !3031
  call void @llvm.dbg.value(metadata i1 %294, metadata !2755, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3028
  br label %337, !dbg !3032

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #41, !dbg !3033
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2756, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata ptr %14, metadata !2808, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata ptr %14, metadata !2816, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i32 0, metadata !2819, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i64 8, metadata !2820, metadata !DIExpression()), !dbg !3037
  store i64 0, ptr %14, align 8, !dbg !3039
  call void @llvm.dbg.value(metadata i64 0, metadata !2752, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i8 1, metadata !2755, metadata !DIExpression()), !dbg !3028
  %296 = icmp eq i64 %153, -1, !dbg !3040
  br i1 %296, label %297, label %299, !dbg !3042

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !3043
  call void @llvm.dbg.value(metadata i64 %298, metadata !2723, metadata !DIExpression()), !dbg !2782
  br label %299, !dbg !3044

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2880
  call void @llvm.dbg.value(metadata i64 %300, metadata !2723, metadata !DIExpression()), !dbg !2782
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #41, !dbg !3045
  %301 = sub i64 %300, %129, !dbg !3046
  call void @llvm.dbg.value(metadata ptr %15, metadata !2759, metadata !DIExpression(DW_OP_deref)), !dbg !3047
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #41, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %302, metadata !2763, metadata !DIExpression()), !dbg !3047
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !3049

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2752, metadata !DIExpression()), !dbg !3028
  %304 = icmp ugt i64 %300, %129, !dbg !3050
  br i1 %304, label %306, label %332, !dbg !3052

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2755, metadata !DIExpression()), !dbg !3028
  br label %332, !dbg !3053

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2752, metadata !DIExpression()), !dbg !3028
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !3055
  %310 = load i8, ptr %309, align 1, !dbg !3055, !tbaa !1025
  %311 = icmp eq i8 %310, 0, !dbg !3052
  br i1 %311, label %332, label %312, !dbg !3056

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !3057
  call void @llvm.dbg.value(metadata i64 %313, metadata !2752, metadata !DIExpression()), !dbg !3028
  %314 = add i64 %313, %129, !dbg !3058
  %315 = icmp eq i64 %313, %301, !dbg !3050
  br i1 %315, label %332, label %306, !dbg !3052, !llvm.loop !3059

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !3060
  %319 = and i1 %318, %110, !dbg !3060
  call void @llvm.dbg.value(metadata i64 1, metadata !2764, metadata !DIExpression()), !dbg !3061
  br i1 %319, label %320, label %328, !dbg !3060

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2764, metadata !DIExpression()), !dbg !3061
  %322 = add i64 %321, %129, !dbg !3062
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !3064
  %324 = load i8, ptr %323, align 1, !dbg !3064, !tbaa !1025
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !3065

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !3066
  call void @llvm.dbg.value(metadata i64 %326, metadata !2764, metadata !DIExpression()), !dbg !3061
  %327 = icmp eq i64 %326, %302, !dbg !3067
  br i1 %327, label %328, label %320, !dbg !3068, !llvm.loop !3069

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !3071, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %329, metadata !2759, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i32 %329, metadata !3073, metadata !DIExpression()), !dbg !3081
  %330 = call i32 @iswprint(i32 noundef %329) #41, !dbg !3083
  %331 = icmp ne i32 %330, 0, !dbg !3084
  call void @llvm.dbg.value(metadata i8 poison, metadata !2755, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %302, metadata !2752, metadata !DIExpression()), !dbg !3028
  br label %332, !dbg !3085

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2755, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %333, metadata !2752, metadata !DIExpression()), !dbg !3028
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3086
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3087
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2755, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 0, metadata !2752, metadata !DIExpression()), !dbg !3028
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3086
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3087
  call void @llvm.dbg.label(metadata !2781), !dbg !3088
  %336 = select i1 %109, i32 4, i32 2, !dbg !3089
  br label %626, !dbg !3089

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2880
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !3091
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2755, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %339, metadata !2752, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %338, metadata !2723, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i1 %340, metadata !2750, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2880
  %341 = icmp ult i64 %339, 2, !dbg !3092
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !3093
  br i1 %343, label %439, label %344, !dbg !3093

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !3094
  call void @llvm.dbg.value(metadata i64 %345, metadata !2772, metadata !DIExpression()), !dbg !3095
  br label %346, !dbg !3096

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2782
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2871
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !3097
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2880
  call void @llvm.dbg.value(metadata i8 %352, metadata !2751, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %351, metadata !2749, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 poison, metadata !2746, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %349, metadata !2744, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %347, metadata !2730, metadata !DIExpression()), !dbg !2782
  br i1 %342, label %397, label %353, !dbg !3098

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !3103

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2749, metadata !DIExpression()), !dbg !2880
  %355 = select i1 %111, i1 true, i1 %348, !dbg !3106
  br i1 %355, label %372, label %356, !dbg !3106

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !3108
  br i1 %357, label %358, label %360, !dbg !3112

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3108
  store i8 39, ptr %359, align 1, !dbg !3108, !tbaa !1025
  br label %360, !dbg !3108

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !3112
  call void @llvm.dbg.value(metadata i64 %361, metadata !2730, metadata !DIExpression()), !dbg !2782
  %362 = icmp ult i64 %361, %130, !dbg !3113
  br i1 %362, label %363, label %365, !dbg !3116

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !3113
  store i8 36, ptr %364, align 1, !dbg !3113, !tbaa !1025
  br label %365, !dbg !3113

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !3116
  call void @llvm.dbg.value(metadata i64 %366, metadata !2730, metadata !DIExpression()), !dbg !2782
  %367 = icmp ult i64 %366, %130, !dbg !3117
  br i1 %367, label %368, label %370, !dbg !3120

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !3117
  store i8 39, ptr %369, align 1, !dbg !3117, !tbaa !1025
  br label %370, !dbg !3117

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !3120
  call void @llvm.dbg.value(metadata i64 %371, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 1, metadata !2738, metadata !DIExpression()), !dbg !2782
  br label %372, !dbg !3121

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2782
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %373, metadata !2730, metadata !DIExpression()), !dbg !2782
  %375 = icmp ult i64 %373, %130, !dbg !3122
  br i1 %375, label %376, label %378, !dbg !3125

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !3122
  store i8 92, ptr %377, align 1, !dbg !3122, !tbaa !1025
  br label %378, !dbg !3122

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !3125
  call void @llvm.dbg.value(metadata i64 %379, metadata !2730, metadata !DIExpression()), !dbg !2782
  %380 = icmp ult i64 %379, %130, !dbg !3126
  br i1 %380, label %381, label %385, !dbg !3129

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !3126
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !3126
  store i8 %383, ptr %384, align 1, !dbg !3126, !tbaa !1025
  br label %385, !dbg !3126

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !3129
  call void @llvm.dbg.value(metadata i64 %386, metadata !2730, metadata !DIExpression()), !dbg !2782
  %387 = icmp ult i64 %386, %130, !dbg !3130
  br i1 %387, label %388, label %393, !dbg !3133

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !3130
  %391 = or i8 %390, 48, !dbg !3130
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3130
  store i8 %391, ptr %392, align 1, !dbg !3130, !tbaa !1025
  br label %393, !dbg !3130

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !3133
  call void @llvm.dbg.value(metadata i64 %394, metadata !2730, metadata !DIExpression()), !dbg !2782
  %395 = and i8 %352, 7, !dbg !3134
  %396 = or i8 %395, 48, !dbg !3135
  call void @llvm.dbg.value(metadata i8 %396, metadata !2751, metadata !DIExpression()), !dbg !2880
  br label %404, !dbg !3136

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !3137

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !3138
  br i1 %399, label %400, label %402, !dbg !3143

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3138
  store i8 92, ptr %401, align 1, !dbg !3138, !tbaa !1025
  br label %402, !dbg !3138

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !3143
  call void @llvm.dbg.value(metadata i64 %403, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 0, metadata !2746, metadata !DIExpression()), !dbg !2880
  br label %404, !dbg !3144

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2782
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2880
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2880
  call void @llvm.dbg.value(metadata i8 %409, metadata !2751, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %408, metadata !2749, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 poison, metadata !2746, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %405, metadata !2730, metadata !DIExpression()), !dbg !2782
  %410 = add i64 %349, 1, !dbg !3145
  %411 = icmp ugt i64 %345, %410, !dbg !3147
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !3148

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !3149
  %415 = select i1 %406, i1 %414, i1 false, !dbg !3149
  br i1 %415, label %416, label %427, !dbg !3149

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !3152
  br i1 %417, label %418, label %420, !dbg !3156

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !3152
  store i8 39, ptr %419, align 1, !dbg !3152, !tbaa !1025
  br label %420, !dbg !3152

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !3156
  call void @llvm.dbg.value(metadata i64 %421, metadata !2730, metadata !DIExpression()), !dbg !2782
  %422 = icmp ult i64 %421, %130, !dbg !3157
  br i1 %422, label %423, label %425, !dbg !3160

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !3157
  store i8 39, ptr %424, align 1, !dbg !3157, !tbaa !1025
  br label %425, !dbg !3157

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %426, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 0, metadata !2738, metadata !DIExpression()), !dbg !2782
  br label %427, !dbg !3161

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !3162
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %428, metadata !2730, metadata !DIExpression()), !dbg !2782
  %430 = icmp ult i64 %428, %130, !dbg !3163
  br i1 %430, label %431, label %433, !dbg !3166

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !3163
  store i8 %409, ptr %432, align 1, !dbg !3163, !tbaa !1025
  br label %433, !dbg !3163

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !3166
  call void @llvm.dbg.value(metadata i64 %434, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %410, metadata !2744, metadata !DIExpression()), !dbg !2871
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !3167
  %436 = load i8, ptr %435, align 1, !dbg !3167, !tbaa !1025
  call void @llvm.dbg.value(metadata i8 %436, metadata !2751, metadata !DIExpression()), !dbg !2880
  br label %346, !dbg !3168, !llvm.loop !3169

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2751, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i1 %340, metadata !2750, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %408, metadata !2749, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 poison, metadata !2746, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %349, metadata !2744, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %405, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %338, metadata !2723, metadata !DIExpression()), !dbg !2782
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !3172
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2782
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2786
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2871
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2880
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2721, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 %448, metadata !2751, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 poison, metadata !2750, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 poison, metadata !2749, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 poison, metadata !2746, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %445, metadata !2744, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 poison, metadata !2736, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %442, metadata !2731, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %441, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %440, metadata !2723, metadata !DIExpression()), !dbg !2782
  br i1 %112, label %461, label %450, !dbg !3173

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
  br i1 %121, label %462, label %482, !dbg !3175

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !3176

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
  %473 = lshr i8 %464, 5, !dbg !3177
  %474 = zext i8 %473 to i64, !dbg !3177
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !3178
  %476 = load i32, ptr %475, align 4, !dbg !3178, !tbaa !1016
  %477 = and i8 %464, 31, !dbg !3179
  %478 = zext i8 %477 to i32, !dbg !3179
  %479 = shl nuw i32 1, %478, !dbg !3180
  %480 = and i32 %476, %479, !dbg !3180
  %481 = icmp eq i32 %480, 0, !dbg !3180
  br i1 %481, label %482, label %493, !dbg !3181

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
  br i1 %154, label %493, label %529, !dbg !3182

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !3172
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2782
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2786
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !3183
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2880
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2721, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 %501, metadata !2751, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 poison, metadata !2750, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %499, metadata !2744, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 poison, metadata !2736, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %496, metadata !2731, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %495, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %494, metadata !2723, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.label(metadata !2779), !dbg !3184
  br i1 %110, label %621, label %503, !dbg !3185

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2749, metadata !DIExpression()), !dbg !2880
  %504 = select i1 %111, i1 true, i1 %498, !dbg !3187
  br i1 %504, label %521, label %505, !dbg !3187

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !3189
  br i1 %506, label %507, label %509, !dbg !3193

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !3189
  store i8 39, ptr %508, align 1, !dbg !3189, !tbaa !1025
  br label %509, !dbg !3189

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !3193
  call void @llvm.dbg.value(metadata i64 %510, metadata !2730, metadata !DIExpression()), !dbg !2782
  %511 = icmp ult i64 %510, %502, !dbg !3194
  br i1 %511, label %512, label %514, !dbg !3197

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !3194
  store i8 36, ptr %513, align 1, !dbg !3194, !tbaa !1025
  br label %514, !dbg !3194

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !3197
  call void @llvm.dbg.value(metadata i64 %515, metadata !2730, metadata !DIExpression()), !dbg !2782
  %516 = icmp ult i64 %515, %502, !dbg !3198
  br i1 %516, label %517, label %519, !dbg !3201

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !3198
  store i8 39, ptr %518, align 1, !dbg !3198, !tbaa !1025
  br label %519, !dbg !3198

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !3201
  call void @llvm.dbg.value(metadata i64 %520, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 1, metadata !2738, metadata !DIExpression()), !dbg !2782
  br label %521, !dbg !3202

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2880
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %522, metadata !2730, metadata !DIExpression()), !dbg !2782
  %524 = icmp ult i64 %522, %502, !dbg !3203
  br i1 %524, label %525, label %527, !dbg !3206

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3203
  store i8 92, ptr %526, align 1, !dbg !3203, !tbaa !1025
  br label %527, !dbg !3203

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !3206
  call void @llvm.dbg.value(metadata i64 %502, metadata !2721, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 %501, metadata !2751, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 poison, metadata !2750, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 poison, metadata !2749, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %499, metadata !2744, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 poison, metadata !2736, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %496, metadata !2731, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %528, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %494, metadata !2723, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.label(metadata !2780), !dbg !3207
  br label %553, !dbg !3208

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !3172
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2782
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2786
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !3183
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3211
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2721, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 %538, metadata !2751, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 poison, metadata !2750, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 poison, metadata !2749, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %535, metadata !2744, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 poison, metadata !2736, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %532, metadata !2731, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %531, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %530, metadata !2723, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.label(metadata !2780), !dbg !3207
  %540 = xor i1 %534, true, !dbg !3208
  %541 = select i1 %540, i1 true, i1 %536, !dbg !3208
  br i1 %541, label %553, label %542, !dbg !3208

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3212
  br i1 %543, label %544, label %546, !dbg !3216

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3212
  store i8 39, ptr %545, align 1, !dbg !3212, !tbaa !1025
  br label %546, !dbg !3212

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3216
  call void @llvm.dbg.value(metadata i64 %547, metadata !2730, metadata !DIExpression()), !dbg !2782
  %548 = icmp ult i64 %547, %539, !dbg !3217
  br i1 %548, label %549, label %551, !dbg !3220

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3217
  store i8 39, ptr %550, align 1, !dbg !3217, !tbaa !1025
  br label %551, !dbg !3217

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3220
  call void @llvm.dbg.value(metadata i64 %552, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 0, metadata !2738, metadata !DIExpression()), !dbg !2782
  br label %553, !dbg !3221

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2880
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %561, metadata !2730, metadata !DIExpression()), !dbg !2782
  %563 = icmp ult i64 %561, %554, !dbg !3222
  br i1 %563, label %564, label %566, !dbg !3225

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3222
  store i8 %555, ptr %565, align 1, !dbg !3222, !tbaa !1025
  br label %566, !dbg !3222

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3225
  call void @llvm.dbg.value(metadata i64 %567, metadata !2730, metadata !DIExpression()), !dbg !2782
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3226
  call void @llvm.dbg.value(metadata i8 poison, metadata !2737, metadata !DIExpression()), !dbg !2782
  br label %569, !dbg !3227

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !3172
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2782
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2786
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !3183
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2721, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %576, metadata !2744, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 poison, metadata !2737, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 poison, metadata !2736, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %572, metadata !2731, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %571, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %570, metadata !2723, metadata !DIExpression()), !dbg !2782
  %578 = add i64 %576, 1, !dbg !3228
  call void @llvm.dbg.value(metadata i64 %578, metadata !2744, metadata !DIExpression()), !dbg !2871
  br label %122, !dbg !3229, !llvm.loop !3230

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2721, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 poison, metadata !2737, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8 poison, metadata !2736, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %125, metadata !2731, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %124, metadata !2730, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %123, metadata !2723, metadata !DIExpression()), !dbg !2782
  %580 = icmp ne i64 %124, 0, !dbg !3232
  %581 = xor i1 %110, true, !dbg !3234
  %582 = or i1 %580, %581, !dbg !3234
  %583 = or i1 %582, %111, !dbg !3234
  br i1 %583, label %584, label %621, !dbg !3234

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3235
  %586 = xor i1 %126, true, !dbg !3235
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3235
  br i1 %587, label %595, label %588, !dbg !3235

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3237

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3239
  br label %636, !dbg !3241

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3242
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3244
  br i1 %594, label %27, label %595, !dbg !3244

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3245
  %598 = or i1 %597, %596, !dbg !3247
  br i1 %598, label %614, label %599, !dbg !3247

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2732, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %124, metadata !2730, metadata !DIExpression()), !dbg !2782
  %600 = load i8, ptr %107, align 1, !dbg !3248, !tbaa !1025
  %601 = icmp eq i8 %600, 0, !dbg !3251
  br i1 %601, label %614, label %602, !dbg !3251

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2732, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %605, metadata !2730, metadata !DIExpression()), !dbg !2782
  %606 = icmp ult i64 %605, %130, !dbg !3252
  br i1 %606, label %607, label %609, !dbg !3255

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3252
  store i8 %603, ptr %608, align 1, !dbg !3252, !tbaa !1025
  br label %609, !dbg !3252

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3255
  call void @llvm.dbg.value(metadata i64 %610, metadata !2730, metadata !DIExpression()), !dbg !2782
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3256
  call void @llvm.dbg.value(metadata ptr %611, metadata !2732, metadata !DIExpression()), !dbg !2782
  %612 = load i8, ptr %611, align 1, !dbg !3248, !tbaa !1025
  %613 = icmp eq i8 %612, 0, !dbg !3251
  br i1 %613, label %614, label %602, !dbg !3251, !llvm.loop !3257

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2858
  call void @llvm.dbg.value(metadata i64 %615, metadata !2730, metadata !DIExpression()), !dbg !2782
  %616 = icmp ult i64 %615, %130, !dbg !3259
  br i1 %616, label %617, label %636, !dbg !3261

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3262
  store i8 0, ptr %618, align 1, !dbg !3263, !tbaa !1025
  br label %636, !dbg !3262

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2781), !dbg !3088
  %620 = icmp eq i32 %103, 2, !dbg !3264
  br i1 %620, label %626, label %630, !dbg !3089

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2781), !dbg !3088
  %624 = icmp eq i32 %103, 2, !dbg !3264
  %625 = select i1 %109, i32 4, i32 2, !dbg !3089
  br i1 %624, label %626, label %630, !dbg !3089

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !3089

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2724, metadata !DIExpression()), !dbg !2782
  %634 = and i32 %5, -3, !dbg !3265
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3266
  br label %636, !dbg !3267

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3268
}

; Function Attrs: nounwind
declare !dbg !3269 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3272 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !3274 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3278, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %1, metadata !3279, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata ptr %2, metadata !3280, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata ptr %0, metadata !3282, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %1, metadata !3287, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata ptr null, metadata !3288, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata ptr %2, metadata !3289, metadata !DIExpression()), !dbg !3295
  %4 = icmp eq ptr %2, null, !dbg !3297
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3297
  call void @llvm.dbg.value(metadata ptr %5, metadata !3290, metadata !DIExpression()), !dbg !3295
  %6 = tail call ptr @__errno_location() #44, !dbg !3298
  %7 = load i32, ptr %6, align 4, !dbg !3298, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %7, metadata !3291, metadata !DIExpression()), !dbg !3295
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3299
  %9 = load i32, ptr %8, align 4, !dbg !3299, !tbaa !2664
  %10 = or i32 %9, 1, !dbg !3300
  call void @llvm.dbg.value(metadata i32 %10, metadata !3292, metadata !DIExpression()), !dbg !3295
  %11 = load i32, ptr %5, align 8, !dbg !3301, !tbaa !2614
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3302
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3303
  %14 = load ptr, ptr %13, align 8, !dbg !3303, !tbaa !2685
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3304
  %16 = load ptr, ptr %15, align 8, !dbg !3304, !tbaa !2688
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3305
  %18 = add i64 %17, 1, !dbg !3306
  call void @llvm.dbg.value(metadata i64 %18, metadata !3293, metadata !DIExpression()), !dbg !3295
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #48, !dbg !3307
  call void @llvm.dbg.value(metadata ptr %19, metadata !3294, metadata !DIExpression()), !dbg !3295
  %20 = load i32, ptr %5, align 8, !dbg !3308, !tbaa !2614
  %21 = load ptr, ptr %13, align 8, !dbg !3309, !tbaa !2685
  %22 = load ptr, ptr %15, align 8, !dbg !3310, !tbaa !2688
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3311
  store i32 %7, ptr %6, align 4, !dbg !3312, !tbaa !1016
  ret ptr %19, !dbg !3313
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #11 !dbg !3283 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3282, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %1, metadata !3287, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata ptr %2, metadata !3288, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata ptr %3, metadata !3289, metadata !DIExpression()), !dbg !3314
  %5 = icmp eq ptr %3, null, !dbg !3315
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3315
  call void @llvm.dbg.value(metadata ptr %6, metadata !3290, metadata !DIExpression()), !dbg !3314
  %7 = tail call ptr @__errno_location() #44, !dbg !3316
  %8 = load i32, ptr %7, align 4, !dbg !3316, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %8, metadata !3291, metadata !DIExpression()), !dbg !3314
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3317
  %10 = load i32, ptr %9, align 4, !dbg !3317, !tbaa !2664
  %11 = icmp eq ptr %2, null, !dbg !3318
  %12 = zext i1 %11 to i32, !dbg !3318
  %13 = or i32 %10, %12, !dbg !3319
  call void @llvm.dbg.value(metadata i32 %13, metadata !3292, metadata !DIExpression()), !dbg !3314
  %14 = load i32, ptr %6, align 8, !dbg !3320, !tbaa !2614
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3321
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3322
  %17 = load ptr, ptr %16, align 8, !dbg !3322, !tbaa !2685
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3323
  %19 = load ptr, ptr %18, align 8, !dbg !3323, !tbaa !2688
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3324
  %21 = add i64 %20, 1, !dbg !3325
  call void @llvm.dbg.value(metadata i64 %21, metadata !3293, metadata !DIExpression()), !dbg !3314
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #48, !dbg !3326
  call void @llvm.dbg.value(metadata ptr %22, metadata !3294, metadata !DIExpression()), !dbg !3314
  %23 = load i32, ptr %6, align 8, !dbg !3327, !tbaa !2614
  %24 = load ptr, ptr %16, align 8, !dbg !3328, !tbaa !2685
  %25 = load ptr, ptr %18, align 8, !dbg !3329, !tbaa !2688
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3330
  store i32 %8, ptr %7, align 4, !dbg !3331, !tbaa !1016
  br i1 %11, label %28, label %27, !dbg !3332

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3333, !tbaa !1199
  br label %28, !dbg !3335

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3336
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #11 !dbg !3337 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3342, !tbaa !944
  call void @llvm.dbg.value(metadata ptr %1, metadata !3339, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i32 1, metadata !3340, metadata !DIExpression()), !dbg !3344
  %2 = load i32, ptr @nslots, align 4, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 1, metadata !3340, metadata !DIExpression()), !dbg !3344
  %3 = icmp sgt i32 %2, 1, !dbg !3345
  br i1 %3, label %4, label %6, !dbg !3347

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3345
  br label %10, !dbg !3347

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3348
  %8 = load ptr, ptr %7, align 8, !dbg !3348, !tbaa !3350
  %9 = icmp eq ptr %8, @slot0, !dbg !3352
  br i1 %9, label %17, label %16, !dbg !3353

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3340, metadata !DIExpression()), !dbg !3344
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3354
  %13 = load ptr, ptr %12, align 8, !dbg !3354, !tbaa !3350
  tail call void @free(ptr noundef %13) #41, !dbg !3355
  %14 = add nuw nsw i64 %11, 1, !dbg !3356
  call void @llvm.dbg.value(metadata i64 %14, metadata !3340, metadata !DIExpression()), !dbg !3344
  %15 = icmp eq i64 %14, %5, !dbg !3345
  br i1 %15, label %6, label %10, !dbg !3347, !llvm.loop !3357

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #41, !dbg !3359
  store i64 256, ptr @slotvec0, align 8, !dbg !3361, !tbaa !3362
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3363, !tbaa !3350
  br label %17, !dbg !3364

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3365
  br i1 %18, label %20, label %19, !dbg !3367

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #41, !dbg !3368
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3370, !tbaa !944
  br label %20, !dbg !3371

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3372, !tbaa !1016
  ret void, !dbg !3373
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !3374 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3376, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata ptr %1, metadata !3377, metadata !DIExpression()), !dbg !3378
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3379
  ret ptr %3, !dbg !3380
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #11 !dbg !3381 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3385, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata ptr %1, metadata !3386, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 %2, metadata !3387, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata ptr %3, metadata !3388, metadata !DIExpression()), !dbg !3401
  %6 = tail call ptr @__errno_location() #44, !dbg !3402
  %7 = load i32, ptr %6, align 4, !dbg !3402, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %7, metadata !3389, metadata !DIExpression()), !dbg !3401
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3403, !tbaa !944
  call void @llvm.dbg.value(metadata ptr %8, metadata !3390, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3391, metadata !DIExpression()), !dbg !3401
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3404
  br i1 %9, label %10, label %11, !dbg !3404

10:                                               ; preds = %4
  tail call void @abort() #43, !dbg !3406
  unreachable, !dbg !3406

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3407, !tbaa !1016
  %13 = icmp sgt i32 %12, %0, !dbg !3408
  br i1 %13, label %32, label %14, !dbg !3409

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3410
  call void @llvm.dbg.value(metadata i1 %15, metadata !3392, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3411
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #41, !dbg !3412
  %16 = sext i32 %12 to i64, !dbg !3413
  call void @llvm.dbg.value(metadata i64 %16, metadata !3395, metadata !DIExpression()), !dbg !3411
  store i64 %16, ptr %5, align 8, !dbg !3414, !tbaa !1199
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3415
  %18 = add nuw nsw i32 %0, 1, !dbg !3416
  %19 = sub i32 %18, %12, !dbg !3417
  %20 = sext i32 %19 to i64, !dbg !3418
  call void @llvm.dbg.value(metadata ptr %5, metadata !3395, metadata !DIExpression(DW_OP_deref)), !dbg !3411
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !3419
  call void @llvm.dbg.value(metadata ptr %21, metadata !3390, metadata !DIExpression()), !dbg !3401
  store ptr %21, ptr @slotvec, align 8, !dbg !3420, !tbaa !944
  br i1 %15, label %22, label %23, !dbg !3421

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3422, !tbaa.struct !3424
  br label %23, !dbg !3425

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3426, !tbaa !1016
  %25 = sext i32 %24 to i64, !dbg !3427
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3427
  %27 = load i64, ptr %5, align 8, !dbg !3428, !tbaa !1199
  call void @llvm.dbg.value(metadata i64 %27, metadata !3395, metadata !DIExpression()), !dbg !3411
  %28 = sub nsw i64 %27, %25, !dbg !3429
  %29 = shl i64 %28, 4, !dbg !3430
  call void @llvm.dbg.value(metadata ptr %26, metadata !2816, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i32 0, metadata !2819, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i64 %29, metadata !2820, metadata !DIExpression()), !dbg !3431
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #41, !dbg !3433
  %30 = load i64, ptr %5, align 8, !dbg !3434, !tbaa !1199
  call void @llvm.dbg.value(metadata i64 %30, metadata !3395, metadata !DIExpression()), !dbg !3411
  %31 = trunc i64 %30 to i32, !dbg !3434
  store i32 %31, ptr @nslots, align 4, !dbg !3435, !tbaa !1016
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !3436
  br label %32, !dbg !3437

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3401
  call void @llvm.dbg.value(metadata ptr %33, metadata !3390, metadata !DIExpression()), !dbg !3401
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3438
  %36 = load i64, ptr %35, align 8, !dbg !3439, !tbaa !3362
  call void @llvm.dbg.value(metadata i64 %36, metadata !3396, metadata !DIExpression()), !dbg !3440
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3441
  %38 = load ptr, ptr %37, align 8, !dbg !3441, !tbaa !3350
  call void @llvm.dbg.value(metadata ptr %38, metadata !3398, metadata !DIExpression()), !dbg !3440
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3442
  %40 = load i32, ptr %39, align 4, !dbg !3442, !tbaa !2664
  %41 = or i32 %40, 1, !dbg !3443
  call void @llvm.dbg.value(metadata i32 %41, metadata !3399, metadata !DIExpression()), !dbg !3440
  %42 = load i32, ptr %3, align 8, !dbg !3444, !tbaa !2614
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3445
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3446
  %45 = load ptr, ptr %44, align 8, !dbg !3446, !tbaa !2685
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3447
  %47 = load ptr, ptr %46, align 8, !dbg !3447, !tbaa !2688
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3448
  call void @llvm.dbg.value(metadata i64 %48, metadata !3400, metadata !DIExpression()), !dbg !3440
  %49 = icmp ugt i64 %36, %48, !dbg !3449
  br i1 %49, label %60, label %50, !dbg !3451

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3452
  call void @llvm.dbg.value(metadata i64 %51, metadata !3396, metadata !DIExpression()), !dbg !3440
  store i64 %51, ptr %35, align 8, !dbg !3454, !tbaa !3362
  %52 = icmp eq ptr %38, @slot0, !dbg !3455
  br i1 %52, label %54, label %53, !dbg !3457

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #41, !dbg !3458
  br label %54, !dbg !3458

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #48, !dbg !3459
  call void @llvm.dbg.value(metadata ptr %55, metadata !3398, metadata !DIExpression()), !dbg !3440
  store ptr %55, ptr %37, align 8, !dbg !3460, !tbaa !3350
  %56 = load i32, ptr %3, align 8, !dbg !3461, !tbaa !2614
  %57 = load ptr, ptr %44, align 8, !dbg !3462, !tbaa !2685
  %58 = load ptr, ptr %46, align 8, !dbg !3463, !tbaa !2688
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3464
  br label %60, !dbg !3465

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3440
  call void @llvm.dbg.value(metadata ptr %61, metadata !3398, metadata !DIExpression()), !dbg !3440
  store i32 %7, ptr %6, align 4, !dbg !3466, !tbaa !1016
  ret ptr %61, !dbg !3467
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3468 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3472, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata ptr %1, metadata !3473, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i64 %2, metadata !3474, metadata !DIExpression()), !dbg !3475
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3476
  ret ptr %4, !dbg !3477
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #11 !dbg !3478 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3480, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 0, metadata !3376, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata ptr %0, metadata !3377, metadata !DIExpression()), !dbg !3482
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3484
  ret ptr %2, !dbg !3485
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !3486 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3490, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %1, metadata !3491, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 0, metadata !3472, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata ptr %0, metadata !3473, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64 %1, metadata !3474, metadata !DIExpression()), !dbg !3493
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3495
  ret ptr %3, !dbg !3496
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !3497 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3501, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i32 %1, metadata !3502, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata ptr %2, metadata !3503, metadata !DIExpression()), !dbg !3505
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3506
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3504, metadata !DIExpression()), !dbg !3507
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3508), !dbg !3511
  call void @llvm.dbg.value(metadata i32 %1, metadata !3512, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3517, metadata !DIExpression()), !dbg !3520
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3520, !alias.scope !3508
  %5 = icmp eq i32 %1, 10, !dbg !3521
  br i1 %5, label %6, label %7, !dbg !3523

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3524, !noalias !3508
  unreachable, !dbg !3524

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3525, !tbaa !2614, !alias.scope !3508
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3526
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3527
  ret ptr %8, !dbg !3528
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !3529 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3533, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i32 %1, metadata !3534, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata ptr %2, metadata !3535, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i64 %3, metadata !3536, metadata !DIExpression()), !dbg !3538
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3539
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3537, metadata !DIExpression()), !dbg !3540
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3541), !dbg !3544
  call void @llvm.dbg.value(metadata i32 %1, metadata !3512, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3517, metadata !DIExpression()), !dbg !3547
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3547, !alias.scope !3541
  %6 = icmp eq i32 %1, 10, !dbg !3548
  br i1 %6, label %7, label %8, !dbg !3549

7:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3550, !noalias !3541
  unreachable, !dbg !3550

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3551, !tbaa !2614, !alias.scope !3541
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3552
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3553
  ret ptr %9, !dbg !3554
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !3555 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3559, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata ptr %1, metadata !3560, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i32 0, metadata !3501, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 %0, metadata !3502, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata ptr %1, metadata !3503, metadata !DIExpression()), !dbg !3562
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3564
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3504, metadata !DIExpression()), !dbg !3565
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3566), !dbg !3569
  call void @llvm.dbg.value(metadata i32 %0, metadata !3512, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3517, metadata !DIExpression()), !dbg !3572
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3572, !alias.scope !3566
  %4 = icmp eq i32 %0, 10, !dbg !3573
  br i1 %4, label %5, label %6, !dbg !3574

5:                                                ; preds = %2
  tail call void @abort() #43, !dbg !3575, !noalias !3566
  unreachable, !dbg !3575

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3576, !tbaa !2614, !alias.scope !3566
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3577
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3578
  ret ptr %7, !dbg !3579
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3580 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3584, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr %1, metadata !3585, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i64 %2, metadata !3586, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 0, metadata !3533, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 %0, metadata !3534, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata ptr %1, metadata !3535, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64 %2, metadata !3536, metadata !DIExpression()), !dbg !3588
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3590
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3537, metadata !DIExpression()), !dbg !3591
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3592), !dbg !3595
  call void @llvm.dbg.value(metadata i32 %0, metadata !3512, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3517, metadata !DIExpression()), !dbg !3598
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3598, !alias.scope !3592
  %5 = icmp eq i32 %0, 10, !dbg !3599
  br i1 %5, label %6, label %7, !dbg !3600

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3601, !noalias !3592
  unreachable, !dbg !3601

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3602, !tbaa !2614, !alias.scope !3592
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3603
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3604
  ret ptr %8, !dbg !3605
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #11 !dbg !3606 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3610, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i64 %1, metadata !3611, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i8 %2, metadata !3612, metadata !DIExpression()), !dbg !3614
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3615
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3613, metadata !DIExpression()), !dbg !3616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3617, !tbaa.struct !3618
  call void @llvm.dbg.value(metadata ptr %4, metadata !2631, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i8 %2, metadata !2632, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i32 1, metadata !2633, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i8 %2, metadata !2634, metadata !DIExpression()), !dbg !3619
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3621
  %6 = lshr i8 %2, 5, !dbg !3622
  %7 = zext i8 %6 to i64, !dbg !3622
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3623
  call void @llvm.dbg.value(metadata ptr %8, metadata !2635, metadata !DIExpression()), !dbg !3619
  %9 = and i8 %2, 31, !dbg !3624
  %10 = zext i8 %9 to i32, !dbg !3624
  call void @llvm.dbg.value(metadata i32 %10, metadata !2637, metadata !DIExpression()), !dbg !3619
  %11 = load i32, ptr %8, align 4, !dbg !3625, !tbaa !1016
  %12 = lshr i32 %11, %10, !dbg !3626
  call void @llvm.dbg.value(metadata i32 %12, metadata !2638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3619
  %13 = and i32 %12, 1, !dbg !3627
  %14 = xor i32 %13, 1, !dbg !3627
  %15 = shl nuw i32 %14, %10, !dbg !3628
  %16 = xor i32 %15, %11, !dbg !3629
  store i32 %16, ptr %8, align 4, !dbg !3629, !tbaa !1016
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3630
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3631
  ret ptr %17, !dbg !3632
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #11 !dbg !3633 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3637, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i8 %1, metadata !3638, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata ptr %0, metadata !3610, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 -1, metadata !3611, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i8 %1, metadata !3612, metadata !DIExpression()), !dbg !3640
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3642
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3613, metadata !DIExpression()), !dbg !3643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3644, !tbaa.struct !3618
  call void @llvm.dbg.value(metadata ptr %3, metadata !2631, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i8 %1, metadata !2632, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i32 1, metadata !2633, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i8 %1, metadata !2634, metadata !DIExpression()), !dbg !3645
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3647
  %5 = lshr i8 %1, 5, !dbg !3648
  %6 = zext i8 %5 to i64, !dbg !3648
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3649
  call void @llvm.dbg.value(metadata ptr %7, metadata !2635, metadata !DIExpression()), !dbg !3645
  %8 = and i8 %1, 31, !dbg !3650
  %9 = zext i8 %8 to i32, !dbg !3650
  call void @llvm.dbg.value(metadata i32 %9, metadata !2637, metadata !DIExpression()), !dbg !3645
  %10 = load i32, ptr %7, align 4, !dbg !3651, !tbaa !1016
  %11 = lshr i32 %10, %9, !dbg !3652
  call void @llvm.dbg.value(metadata i32 %11, metadata !2638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3645
  %12 = and i32 %11, 1, !dbg !3653
  %13 = xor i32 %12, 1, !dbg !3653
  %14 = shl nuw i32 %13, %9, !dbg !3654
  %15 = xor i32 %14, %10, !dbg !3655
  store i32 %15, ptr %7, align 4, !dbg !3655, !tbaa !1016
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3656
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3657
  ret ptr %16, !dbg !3658
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #11 !dbg !3659 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3661, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata ptr %0, metadata !3637, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i8 58, metadata !3638, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr %0, metadata !3610, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i64 -1, metadata !3611, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i8 58, metadata !3612, metadata !DIExpression()), !dbg !3665
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #41, !dbg !3667
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3613, metadata !DIExpression()), !dbg !3668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3669, !tbaa.struct !3618
  call void @llvm.dbg.value(metadata ptr %2, metadata !2631, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i8 58, metadata !2632, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 1, metadata !2633, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i8 58, metadata !2634, metadata !DIExpression()), !dbg !3670
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3672
  call void @llvm.dbg.value(metadata ptr %3, metadata !2635, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 26, metadata !2637, metadata !DIExpression()), !dbg !3670
  %4 = load i32, ptr %3, align 4, !dbg !3673, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %4, metadata !2638, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3670
  %5 = or i32 %4, 67108864, !dbg !3674
  store i32 %5, ptr %3, align 4, !dbg !3674, !tbaa !1016
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3675
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #41, !dbg !3676
  ret ptr %6, !dbg !3677
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !3678 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3680, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i64 %1, metadata !3681, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata ptr %0, metadata !3610, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 %1, metadata !3611, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i8 58, metadata !3612, metadata !DIExpression()), !dbg !3683
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3685
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3613, metadata !DIExpression()), !dbg !3686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3687, !tbaa.struct !3618
  call void @llvm.dbg.value(metadata ptr %3, metadata !2631, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i8 58, metadata !2632, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i32 1, metadata !2633, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i8 58, metadata !2634, metadata !DIExpression()), !dbg !3688
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3690
  call void @llvm.dbg.value(metadata ptr %4, metadata !2635, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i32 26, metadata !2637, metadata !DIExpression()), !dbg !3688
  %5 = load i32, ptr %4, align 4, !dbg !3691, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %5, metadata !2638, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3688
  %6 = or i32 %5, 67108864, !dbg !3692
  store i32 %6, ptr %4, align 4, !dbg !3692, !tbaa !1016
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3693
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3694
  ret ptr %7, !dbg !3695
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !3696 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3517, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3702
  call void @llvm.dbg.value(metadata i32 %0, metadata !3698, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 %1, metadata !3699, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata ptr %2, metadata !3700, metadata !DIExpression()), !dbg !3704
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3705
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3701, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 %1, metadata !3512, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 0, metadata !3517, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3707
  %5 = icmp eq i32 %1, 10, !dbg !3708
  br i1 %5, label %6, label %7, !dbg !3709

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3710, !noalias !3711
  unreachable, !dbg !3710

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3517, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3707
  store i32 %1, ptr %4, align 8, !dbg !3714, !tbaa.struct !3618
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3714
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3714
  call void @llvm.dbg.value(metadata ptr %4, metadata !2631, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i8 58, metadata !2632, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 1, metadata !2633, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i8 58, metadata !2634, metadata !DIExpression()), !dbg !3715
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3717
  call void @llvm.dbg.value(metadata ptr %9, metadata !2635, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 26, metadata !2637, metadata !DIExpression()), !dbg !3715
  %10 = load i32, ptr %9, align 4, !dbg !3718, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %10, metadata !2638, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3715
  %11 = or i32 %10, 67108864, !dbg !3719
  store i32 %11, ptr %9, align 4, !dbg !3719, !tbaa !1016
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3720
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3721
  ret ptr %12, !dbg !3722
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 !dbg !3723 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3727, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata ptr %1, metadata !3728, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata ptr %2, metadata !3729, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata ptr %3, metadata !3730, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i32 %0, metadata !3732, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata ptr %1, metadata !3737, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata ptr %2, metadata !3738, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata ptr %3, metadata !3739, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i64 -1, metadata !3740, metadata !DIExpression()), !dbg !3742
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3744
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3741, metadata !DIExpression()), !dbg !3745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3746, !tbaa.struct !3618
  call void @llvm.dbg.value(metadata ptr %5, metadata !2671, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata ptr %1, metadata !2672, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata ptr %2, metadata !2673, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata ptr %5, metadata !2671, metadata !DIExpression()), !dbg !3747
  store i32 10, ptr %5, align 8, !dbg !3749, !tbaa !2614
  %6 = icmp ne ptr %1, null, !dbg !3750
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3751
  br i1 %8, label %10, label %9, !dbg !3751

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3752
  unreachable, !dbg !3752

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3753
  store ptr %1, ptr %11, align 8, !dbg !3754, !tbaa !2685
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3755
  store ptr %2, ptr %12, align 8, !dbg !3756, !tbaa !2688
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3757
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3758
  ret ptr %13, !dbg !3759
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #11 !dbg !3733 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3732, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata ptr %1, metadata !3737, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata ptr %2, metadata !3738, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata ptr %3, metadata !3739, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i64 %4, metadata !3740, metadata !DIExpression()), !dbg !3760
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #41, !dbg !3761
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3741, metadata !DIExpression()), !dbg !3762
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3763, !tbaa.struct !3618
  call void @llvm.dbg.value(metadata ptr %6, metadata !2671, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata ptr %1, metadata !2672, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata ptr %2, metadata !2673, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata ptr %6, metadata !2671, metadata !DIExpression()), !dbg !3764
  store i32 10, ptr %6, align 8, !dbg !3766, !tbaa !2614
  %7 = icmp ne ptr %1, null, !dbg !3767
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3768
  br i1 %9, label %11, label %10, !dbg !3768

10:                                               ; preds = %5
  tail call void @abort() #43, !dbg !3769
  unreachable, !dbg !3769

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3770
  store ptr %1, ptr %12, align 8, !dbg !3771, !tbaa !2685
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3772
  store ptr %2, ptr %13, align 8, !dbg !3773, !tbaa !2688
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3774
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #41, !dbg !3775
  ret ptr %14, !dbg !3776
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !3777 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3781, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata ptr %1, metadata !3782, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata ptr %2, metadata !3783, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i32 0, metadata !3727, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata ptr %0, metadata !3728, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata ptr %1, metadata !3729, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata ptr %2, metadata !3730, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i32 0, metadata !3732, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata ptr %0, metadata !3737, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata ptr %1, metadata !3738, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata ptr %2, metadata !3739, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i64 -1, metadata !3740, metadata !DIExpression()), !dbg !3787
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3789
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3741, metadata !DIExpression()), !dbg !3790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3791, !tbaa.struct !3618
  call void @llvm.dbg.value(metadata ptr %4, metadata !2671, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata ptr %0, metadata !2672, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata ptr %1, metadata !2673, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata ptr %4, metadata !2671, metadata !DIExpression()), !dbg !3792
  store i32 10, ptr %4, align 8, !dbg !3794, !tbaa !2614
  %5 = icmp ne ptr %0, null, !dbg !3795
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3796
  br i1 %7, label %9, label %8, !dbg !3796

8:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3797
  unreachable, !dbg !3797

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3798
  store ptr %0, ptr %10, align 8, !dbg !3799, !tbaa !2685
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3800
  store ptr %1, ptr %11, align 8, !dbg !3801, !tbaa !2688
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3802
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3803
  ret ptr %12, !dbg !3804
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !3805 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3809, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr %1, metadata !3810, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr %2, metadata !3811, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i64 %3, metadata !3812, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata i32 0, metadata !3732, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata ptr %0, metadata !3737, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata ptr %1, metadata !3738, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata ptr %2, metadata !3739, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i64 %3, metadata !3740, metadata !DIExpression()), !dbg !3814
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3816
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3741, metadata !DIExpression()), !dbg !3817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3818, !tbaa.struct !3618
  call void @llvm.dbg.value(metadata ptr %5, metadata !2671, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %0, metadata !2672, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %1, metadata !2673, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %5, metadata !2671, metadata !DIExpression()), !dbg !3819
  store i32 10, ptr %5, align 8, !dbg !3821, !tbaa !2614
  %6 = icmp ne ptr %0, null, !dbg !3822
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3823
  br i1 %8, label %10, label %9, !dbg !3823

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3824
  unreachable, !dbg !3824

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3825
  store ptr %0, ptr %11, align 8, !dbg !3826, !tbaa !2685
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3827
  store ptr %1, ptr %12, align 8, !dbg !3828, !tbaa !2688
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3829
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3830
  ret ptr %13, !dbg !3831
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3832 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3836, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata ptr %1, metadata !3837, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i64 %2, metadata !3838, metadata !DIExpression()), !dbg !3839
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3840
  ret ptr %4, !dbg !3841
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !3842 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3846, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i64 %1, metadata !3847, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i32 0, metadata !3836, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata ptr %0, metadata !3837, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 %1, metadata !3838, metadata !DIExpression()), !dbg !3849
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3851
  ret ptr %3, !dbg !3852
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !3853 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3857, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata ptr %1, metadata !3858, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 %0, metadata !3836, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata ptr %1, metadata !3837, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i64 -1, metadata !3838, metadata !DIExpression()), !dbg !3860
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3862
  ret ptr %3, !dbg !3863
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #11 !dbg !3864 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3868, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i32 0, metadata !3857, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata ptr %0, metadata !3858, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i32 0, metadata !3836, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata ptr %0, metadata !3837, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i64 -1, metadata !3838, metadata !DIExpression()), !dbg !3872
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3874
  ret ptr %2, !dbg !3875
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3876 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3880, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata ptr %1, metadata !3881, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i64 %2, metadata !3882, metadata !DIExpression()), !dbg !3883
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #41, !dbg !3884
  ret i32 %4, !dbg !3885
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #11 !dbg !3886 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3890, metadata !DIExpression()), !dbg !3891
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #41, !dbg !3892
  ret ptr %2, !dbg !3893
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #11 !dbg !3894 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3896, metadata !DIExpression()), !dbg !3898
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !3899
  call void @llvm.dbg.value(metadata ptr %2, metadata !3897, metadata !DIExpression()), !dbg !3898
  ret ptr %2, !dbg !3900
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3901 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3903, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata ptr %1, metadata !3904, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i64 %2, metadata !3905, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i32 %0, metadata !3896, metadata !DIExpression()), !dbg !3911
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !3913
  call void @llvm.dbg.value(metadata ptr %4, metadata !3897, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata ptr %4, metadata !3906, metadata !DIExpression()), !dbg !3910
  %5 = icmp eq ptr %4, null, !dbg !3914
  br i1 %5, label %6, label %9, !dbg !3915

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3916
  br i1 %7, label %19, label %8, !dbg !3919

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3920, !tbaa !1025
  br label %19, !dbg !3921

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #42, !dbg !3922
  call void @llvm.dbg.value(metadata i64 %10, metadata !3907, metadata !DIExpression()), !dbg !3923
  %11 = icmp ult i64 %10, %2, !dbg !3924
  br i1 %11, label %12, label %14, !dbg !3926

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3927
  call void @llvm.dbg.value(metadata ptr %1, metadata !3929, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata ptr %4, metadata !3935, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i64 %13, metadata !3936, metadata !DIExpression()), !dbg !3937
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #41, !dbg !3939
  br label %19, !dbg !3940

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3941
  br i1 %15, label %19, label %16, !dbg !3944

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3945
  call void @llvm.dbg.value(metadata ptr %1, metadata !3929, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata ptr %4, metadata !3935, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i64 %17, metadata !3936, metadata !DIExpression()), !dbg !3947
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #41, !dbg !3949
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3950
  store i8 0, ptr %18, align 1, !dbg !3951, !tbaa !1025
  br label %19, !dbg !3952

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3953
  ret i32 %20, !dbg !3954
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #11 !dbg !3955 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3957, metadata !DIExpression()), !dbg !3958
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #41, !dbg !3959
  ret i32 %2, !dbg !3960
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #11 !dbg !3961 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4000, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata ptr %1, metadata !4001, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata ptr %2, metadata !4002, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata ptr %3, metadata !4003, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata ptr %4, metadata !4004, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i64 %5, metadata !4005, metadata !DIExpression()), !dbg !4006
  %7 = icmp eq ptr %1, null, !dbg !4007
  br i1 %7, label %10, label %8, !dbg !4009

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.124, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #41, !dbg !4010
  br label %12, !dbg !4010

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.125, ptr noundef %2, ptr noundef %3) #41, !dbg !4011
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.3.127, i32 noundef 5) #41, !dbg !4012
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #41, !dbg !4012
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.128, ptr noundef %0), !dbg !4013
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.5.129, i32 noundef 5) #41, !dbg !4014
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.130) #41, !dbg !4014
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.128, ptr noundef %0), !dbg !4015
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
  ], !dbg !4016

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.7.131, i32 noundef 5) #41, !dbg !4017
  %21 = load ptr, ptr %4, align 8, !dbg !4017, !tbaa !944
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #41, !dbg !4017
  br label %147, !dbg !4019

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.8.132, i32 noundef 5) #41, !dbg !4020
  %25 = load ptr, ptr %4, align 8, !dbg !4020, !tbaa !944
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4020
  %27 = load ptr, ptr %26, align 8, !dbg !4020, !tbaa !944
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #41, !dbg !4020
  br label %147, !dbg !4021

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.9.133, i32 noundef 5) #41, !dbg !4022
  %31 = load ptr, ptr %4, align 8, !dbg !4022, !tbaa !944
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4022
  %33 = load ptr, ptr %32, align 8, !dbg !4022, !tbaa !944
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4022
  %35 = load ptr, ptr %34, align 8, !dbg !4022, !tbaa !944
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #41, !dbg !4022
  br label %147, !dbg !4023

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.10.134, i32 noundef 5) #41, !dbg !4024
  %39 = load ptr, ptr %4, align 8, !dbg !4024, !tbaa !944
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4024
  %41 = load ptr, ptr %40, align 8, !dbg !4024, !tbaa !944
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4024
  %43 = load ptr, ptr %42, align 8, !dbg !4024, !tbaa !944
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4024
  %45 = load ptr, ptr %44, align 8, !dbg !4024, !tbaa !944
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #41, !dbg !4024
  br label %147, !dbg !4025

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.11.135, i32 noundef 5) #41, !dbg !4026
  %49 = load ptr, ptr %4, align 8, !dbg !4026, !tbaa !944
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4026
  %51 = load ptr, ptr %50, align 8, !dbg !4026, !tbaa !944
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4026
  %53 = load ptr, ptr %52, align 8, !dbg !4026, !tbaa !944
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4026
  %55 = load ptr, ptr %54, align 8, !dbg !4026, !tbaa !944
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4026
  %57 = load ptr, ptr %56, align 8, !dbg !4026, !tbaa !944
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #41, !dbg !4026
  br label %147, !dbg !4027

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.12.136, i32 noundef 5) #41, !dbg !4028
  %61 = load ptr, ptr %4, align 8, !dbg !4028, !tbaa !944
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4028
  %63 = load ptr, ptr %62, align 8, !dbg !4028, !tbaa !944
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4028
  %65 = load ptr, ptr %64, align 8, !dbg !4028, !tbaa !944
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4028
  %67 = load ptr, ptr %66, align 8, !dbg !4028, !tbaa !944
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4028
  %69 = load ptr, ptr %68, align 8, !dbg !4028, !tbaa !944
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4028
  %71 = load ptr, ptr %70, align 8, !dbg !4028, !tbaa !944
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #41, !dbg !4028
  br label %147, !dbg !4029

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.13.137, i32 noundef 5) #41, !dbg !4030
  %75 = load ptr, ptr %4, align 8, !dbg !4030, !tbaa !944
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4030
  %77 = load ptr, ptr %76, align 8, !dbg !4030, !tbaa !944
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4030
  %79 = load ptr, ptr %78, align 8, !dbg !4030, !tbaa !944
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4030
  %81 = load ptr, ptr %80, align 8, !dbg !4030, !tbaa !944
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4030
  %83 = load ptr, ptr %82, align 8, !dbg !4030, !tbaa !944
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4030
  %85 = load ptr, ptr %84, align 8, !dbg !4030, !tbaa !944
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4030
  %87 = load ptr, ptr %86, align 8, !dbg !4030, !tbaa !944
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #41, !dbg !4030
  br label %147, !dbg !4031

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.14.138, i32 noundef 5) #41, !dbg !4032
  %91 = load ptr, ptr %4, align 8, !dbg !4032, !tbaa !944
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4032
  %93 = load ptr, ptr %92, align 8, !dbg !4032, !tbaa !944
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4032
  %95 = load ptr, ptr %94, align 8, !dbg !4032, !tbaa !944
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4032
  %97 = load ptr, ptr %96, align 8, !dbg !4032, !tbaa !944
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4032
  %99 = load ptr, ptr %98, align 8, !dbg !4032, !tbaa !944
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4032
  %101 = load ptr, ptr %100, align 8, !dbg !4032, !tbaa !944
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4032
  %103 = load ptr, ptr %102, align 8, !dbg !4032, !tbaa !944
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4032
  %105 = load ptr, ptr %104, align 8, !dbg !4032, !tbaa !944
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #41, !dbg !4032
  br label %147, !dbg !4033

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.15.139, i32 noundef 5) #41, !dbg !4034
  %109 = load ptr, ptr %4, align 8, !dbg !4034, !tbaa !944
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4034
  %111 = load ptr, ptr %110, align 8, !dbg !4034, !tbaa !944
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4034
  %113 = load ptr, ptr %112, align 8, !dbg !4034, !tbaa !944
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4034
  %115 = load ptr, ptr %114, align 8, !dbg !4034, !tbaa !944
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4034
  %117 = load ptr, ptr %116, align 8, !dbg !4034, !tbaa !944
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4034
  %119 = load ptr, ptr %118, align 8, !dbg !4034, !tbaa !944
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4034
  %121 = load ptr, ptr %120, align 8, !dbg !4034, !tbaa !944
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4034
  %123 = load ptr, ptr %122, align 8, !dbg !4034, !tbaa !944
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4034
  %125 = load ptr, ptr %124, align 8, !dbg !4034, !tbaa !944
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #41, !dbg !4034
  br label %147, !dbg !4035

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.16.140, i32 noundef 5) #41, !dbg !4036
  %129 = load ptr, ptr %4, align 8, !dbg !4036, !tbaa !944
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4036
  %131 = load ptr, ptr %130, align 8, !dbg !4036, !tbaa !944
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4036
  %133 = load ptr, ptr %132, align 8, !dbg !4036, !tbaa !944
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4036
  %135 = load ptr, ptr %134, align 8, !dbg !4036, !tbaa !944
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4036
  %137 = load ptr, ptr %136, align 8, !dbg !4036, !tbaa !944
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4036
  %139 = load ptr, ptr %138, align 8, !dbg !4036, !tbaa !944
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4036
  %141 = load ptr, ptr %140, align 8, !dbg !4036, !tbaa !944
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4036
  %143 = load ptr, ptr %142, align 8, !dbg !4036, !tbaa !944
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4036
  %145 = load ptr, ptr %144, align 8, !dbg !4036, !tbaa !944
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #41, !dbg !4036
  br label %147, !dbg !4037

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4038
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #11 !dbg !4039 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4043, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %1, metadata !4044, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %2, metadata !4045, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %3, metadata !4046, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %4, metadata !4047, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i64 0, metadata !4048, metadata !DIExpression()), !dbg !4049
  br label %6, !dbg !4050

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4052
  call void @llvm.dbg.value(metadata i64 %7, metadata !4048, metadata !DIExpression()), !dbg !4049
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4053
  %9 = load ptr, ptr %8, align 8, !dbg !4053, !tbaa !944
  %10 = icmp eq ptr %9, null, !dbg !4055
  %11 = add i64 %7, 1, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %11, metadata !4048, metadata !DIExpression()), !dbg !4049
  br i1 %10, label %12, label %6, !dbg !4055, !llvm.loop !4057

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4059
  ret void, !dbg !4060
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #11 !dbg !4061 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4076, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata ptr %1, metadata !4077, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata ptr %2, metadata !4078, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata ptr %3, metadata !4079, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4080, metadata !DIExpression()), !dbg !4085
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #41, !dbg !4086
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4082, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 0, metadata !4081, metadata !DIExpression()), !dbg !4084
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4081, metadata !DIExpression()), !dbg !4084
  %10 = icmp sgt i32 %9, -1, !dbg !4088
  br i1 %10, label %18, label %11, !dbg !4088

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4088
  store i32 %12, ptr %7, align 8, !dbg !4088
  %13 = icmp ult i32 %9, -7, !dbg !4088
  br i1 %13, label %14, label %18, !dbg !4088

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4088
  %16 = sext i32 %9 to i64, !dbg !4088
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4088
  br label %22, !dbg !4088

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4088
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4088
  store ptr %21, ptr %4, align 8, !dbg !4088
  br label %22, !dbg !4088

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4088
  %25 = load ptr, ptr %24, align 8, !dbg !4088
  store ptr %25, ptr %6, align 8, !dbg !4091, !tbaa !944
  %26 = icmp eq ptr %25, null, !dbg !4092
  br i1 %26, label %197, label %27, !dbg !4093

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !4081, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i64 1, metadata !4081, metadata !DIExpression()), !dbg !4084
  %28 = icmp sgt i32 %23, -1, !dbg !4088
  br i1 %28, label %36, label %29, !dbg !4088

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4088
  store i32 %30, ptr %7, align 8, !dbg !4088
  %31 = icmp ult i32 %23, -7, !dbg !4088
  br i1 %31, label %32, label %36, !dbg !4088

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4088
  %34 = sext i32 %23 to i64, !dbg !4088
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4088
  br label %40, !dbg !4088

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4088
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4088
  store ptr %39, ptr %4, align 8, !dbg !4088
  br label %40, !dbg !4088

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4088
  %43 = load ptr, ptr %42, align 8, !dbg !4088
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4094
  store ptr %43, ptr %44, align 8, !dbg !4091, !tbaa !944
  %45 = icmp eq ptr %43, null, !dbg !4092
  br i1 %45, label %197, label %46, !dbg !4093

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4081, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i64 2, metadata !4081, metadata !DIExpression()), !dbg !4084
  %47 = icmp sgt i32 %41, -1, !dbg !4088
  br i1 %47, label %55, label %48, !dbg !4088

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4088
  store i32 %49, ptr %7, align 8, !dbg !4088
  %50 = icmp ult i32 %41, -7, !dbg !4088
  br i1 %50, label %51, label %55, !dbg !4088

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4088
  %53 = sext i32 %41 to i64, !dbg !4088
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4088
  br label %59, !dbg !4088

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4088
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4088
  store ptr %58, ptr %4, align 8, !dbg !4088
  br label %59, !dbg !4088

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4088
  %62 = load ptr, ptr %61, align 8, !dbg !4088
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4094
  store ptr %62, ptr %63, align 8, !dbg !4091, !tbaa !944
  %64 = icmp eq ptr %62, null, !dbg !4092
  br i1 %64, label %197, label %65, !dbg !4093

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !4081, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i64 3, metadata !4081, metadata !DIExpression()), !dbg !4084
  %66 = icmp sgt i32 %60, -1, !dbg !4088
  br i1 %66, label %74, label %67, !dbg !4088

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4088
  store i32 %68, ptr %7, align 8, !dbg !4088
  %69 = icmp ult i32 %60, -7, !dbg !4088
  br i1 %69, label %70, label %74, !dbg !4088

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4088
  %72 = sext i32 %60 to i64, !dbg !4088
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4088
  br label %78, !dbg !4088

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4088
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4088
  store ptr %77, ptr %4, align 8, !dbg !4088
  br label %78, !dbg !4088

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4088
  %81 = load ptr, ptr %80, align 8, !dbg !4088
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4094
  store ptr %81, ptr %82, align 8, !dbg !4091, !tbaa !944
  %83 = icmp eq ptr %81, null, !dbg !4092
  br i1 %83, label %197, label %84, !dbg !4093

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !4081, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i64 4, metadata !4081, metadata !DIExpression()), !dbg !4084
  %85 = icmp sgt i32 %79, -1, !dbg !4088
  br i1 %85, label %93, label %86, !dbg !4088

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4088
  store i32 %87, ptr %7, align 8, !dbg !4088
  %88 = icmp ult i32 %79, -7, !dbg !4088
  br i1 %88, label %89, label %93, !dbg !4088

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4088
  %91 = sext i32 %79 to i64, !dbg !4088
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4088
  br label %97, !dbg !4088

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4088
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4088
  store ptr %96, ptr %4, align 8, !dbg !4088
  br label %97, !dbg !4088

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4088
  %100 = load ptr, ptr %99, align 8, !dbg !4088
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4094
  store ptr %100, ptr %101, align 8, !dbg !4091, !tbaa !944
  %102 = icmp eq ptr %100, null, !dbg !4092
  br i1 %102, label %197, label %103, !dbg !4093

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !4081, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i64 5, metadata !4081, metadata !DIExpression()), !dbg !4084
  %104 = icmp sgt i32 %98, -1, !dbg !4088
  br i1 %104, label %112, label %105, !dbg !4088

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4088
  store i32 %106, ptr %7, align 8, !dbg !4088
  %107 = icmp ult i32 %98, -7, !dbg !4088
  br i1 %107, label %108, label %112, !dbg !4088

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4088
  %110 = sext i32 %98 to i64, !dbg !4088
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4088
  br label %116, !dbg !4088

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4088
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4088
  store ptr %115, ptr %4, align 8, !dbg !4088
  br label %116, !dbg !4088

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4088
  %119 = load ptr, ptr %118, align 8, !dbg !4088
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4094
  store ptr %119, ptr %120, align 8, !dbg !4091, !tbaa !944
  %121 = icmp eq ptr %119, null, !dbg !4092
  br i1 %121, label %197, label %122, !dbg !4093

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !4081, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i64 6, metadata !4081, metadata !DIExpression()), !dbg !4084
  %123 = icmp sgt i32 %117, -1, !dbg !4088
  br i1 %123, label %131, label %124, !dbg !4088

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4088
  store i32 %125, ptr %7, align 8, !dbg !4088
  %126 = icmp ult i32 %117, -7, !dbg !4088
  br i1 %126, label %127, label %131, !dbg !4088

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4088
  %129 = sext i32 %117 to i64, !dbg !4088
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4088
  br label %135, !dbg !4088

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4088
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4088
  store ptr %134, ptr %4, align 8, !dbg !4088
  br label %135, !dbg !4088

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4088
  %138 = load ptr, ptr %137, align 8, !dbg !4088
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4094
  store ptr %138, ptr %139, align 8, !dbg !4091, !tbaa !944
  %140 = icmp eq ptr %138, null, !dbg !4092
  br i1 %140, label %197, label %141, !dbg !4093

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !4081, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i64 7, metadata !4081, metadata !DIExpression()), !dbg !4084
  %142 = icmp sgt i32 %136, -1, !dbg !4088
  br i1 %142, label %150, label %143, !dbg !4088

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4088
  store i32 %144, ptr %7, align 8, !dbg !4088
  %145 = icmp ult i32 %136, -7, !dbg !4088
  br i1 %145, label %146, label %150, !dbg !4088

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4088
  %148 = sext i32 %136 to i64, !dbg !4088
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4088
  br label %154, !dbg !4088

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4088
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4088
  store ptr %153, ptr %4, align 8, !dbg !4088
  br label %154, !dbg !4088

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4088
  %157 = load ptr, ptr %156, align 8, !dbg !4088
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4094
  store ptr %157, ptr %158, align 8, !dbg !4091, !tbaa !944
  %159 = icmp eq ptr %157, null, !dbg !4092
  br i1 %159, label %197, label %160, !dbg !4093

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !4081, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i64 8, metadata !4081, metadata !DIExpression()), !dbg !4084
  %161 = icmp sgt i32 %155, -1, !dbg !4088
  br i1 %161, label %169, label %162, !dbg !4088

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4088
  store i32 %163, ptr %7, align 8, !dbg !4088
  %164 = icmp ult i32 %155, -7, !dbg !4088
  br i1 %164, label %165, label %169, !dbg !4088

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4088
  %167 = sext i32 %155 to i64, !dbg !4088
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4088
  br label %173, !dbg !4088

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4088
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4088
  store ptr %172, ptr %4, align 8, !dbg !4088
  br label %173, !dbg !4088

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4088
  %176 = load ptr, ptr %175, align 8, !dbg !4088
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4094
  store ptr %176, ptr %177, align 8, !dbg !4091, !tbaa !944
  %178 = icmp eq ptr %176, null, !dbg !4092
  br i1 %178, label %197, label %179, !dbg !4093

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !4081, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i64 9, metadata !4081, metadata !DIExpression()), !dbg !4084
  %180 = icmp sgt i32 %174, -1, !dbg !4088
  br i1 %180, label %188, label %181, !dbg !4088

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4088
  store i32 %182, ptr %7, align 8, !dbg !4088
  %183 = icmp ult i32 %174, -7, !dbg !4088
  br i1 %183, label %184, label %188, !dbg !4088

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4088
  %186 = sext i32 %174 to i64, !dbg !4088
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4088
  br label %191, !dbg !4088

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4088
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4088
  store ptr %190, ptr %4, align 8, !dbg !4088
  br label %191, !dbg !4088

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4088
  %193 = load ptr, ptr %192, align 8, !dbg !4088
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4094
  store ptr %193, ptr %194, align 8, !dbg !4091, !tbaa !944
  %195 = icmp eq ptr %193, null, !dbg !4092
  %196 = select i1 %195, i64 9, i64 10, !dbg !4093
  br label %197, !dbg !4093

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4095
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4096
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #41, !dbg !4097
  ret void, !dbg !4097
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #11 !dbg !4098 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4102, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata ptr %1, metadata !4103, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata ptr %2, metadata !4104, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata ptr %3, metadata !4105, metadata !DIExpression()), !dbg !4107
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41, !dbg !4108
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4106, metadata !DIExpression()), !dbg !4109
  call void @llvm.va_start(ptr nonnull %5), !dbg !4110
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41, !dbg !4111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4111, !tbaa.struct !1650
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4111
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41, !dbg !4111
  call void @llvm.va_end(ptr nonnull %5), !dbg !4112
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41, !dbg !4113
  ret void, !dbg !4113
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #11 !dbg !4114 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4115, !tbaa !944
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.128, ptr noundef %1), !dbg !4115
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.17.145, i32 noundef 5) #41, !dbg !4116
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.146) #41, !dbg !4116
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.19.147, i32 noundef 5) #41, !dbg !4117
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.148, ptr noundef nonnull @.str.21.149) #41, !dbg !4117
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.22.150, i32 noundef 5) #41, !dbg !4118
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.151) #41, !dbg !4118
  ret void, !dbg !4119
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4120 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4125, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i64 %1, metadata !4126, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i64 %2, metadata !4127, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata ptr %0, metadata !4129, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata i64 %1, metadata !4132, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata i64 %2, metadata !4133, metadata !DIExpression()), !dbg !4134
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4136
  call void @llvm.dbg.value(metadata ptr %4, metadata !4137, metadata !DIExpression()), !dbg !4142
  %5 = icmp eq ptr %4, null, !dbg !4144
  br i1 %5, label %6, label %7, !dbg !4146

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4147
  unreachable, !dbg !4147

7:                                                ; preds = %3
  ret ptr %4, !dbg !4148
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4130 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4129, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i64 %1, metadata !4132, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i64 %2, metadata !4133, metadata !DIExpression()), !dbg !4149
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4150
  call void @llvm.dbg.value(metadata ptr %4, metadata !4137, metadata !DIExpression()), !dbg !4151
  %5 = icmp eq ptr %4, null, !dbg !4153
  br i1 %5, label %6, label %7, !dbg !4154

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4155
  unreachable, !dbg !4155

7:                                                ; preds = %3
  ret ptr %4, !dbg !4156
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4157 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4161, metadata !DIExpression()), !dbg !4162
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4163
  call void @llvm.dbg.value(metadata ptr %2, metadata !4137, metadata !DIExpression()), !dbg !4164
  %3 = icmp eq ptr %2, null, !dbg !4166
  br i1 %3, label %4, label %5, !dbg !4167

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4168
  unreachable, !dbg !4168

5:                                                ; preds = %1
  ret ptr %2, !dbg !4169
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4170 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4171 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4175, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %0, metadata !4177, metadata !DIExpression()), !dbg !4181
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4183
  call void @llvm.dbg.value(metadata ptr %2, metadata !4137, metadata !DIExpression()), !dbg !4184
  %3 = icmp eq ptr %2, null, !dbg !4186
  br i1 %3, label %4, label %5, !dbg !4187

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4188
  unreachable, !dbg !4188

5:                                                ; preds = %1
  ret ptr %2, !dbg !4189
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4190 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4194, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata i64 %0, metadata !4161, metadata !DIExpression()), !dbg !4196
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4198
  call void @llvm.dbg.value(metadata ptr %2, metadata !4137, metadata !DIExpression()), !dbg !4199
  %3 = icmp eq ptr %2, null, !dbg !4201
  br i1 %3, label %4, label %5, !dbg !4202

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4203
  unreachable, !dbg !4203

5:                                                ; preds = %1
  ret ptr %2, !dbg !4204
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4205 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4209, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.value(metadata i64 %1, metadata !4210, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.value(metadata ptr %0, metadata !4212, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.value(metadata i64 %1, metadata !4216, metadata !DIExpression()), !dbg !4217
  %3 = icmp eq i64 %1, 0, !dbg !4219
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4219
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #47, !dbg !4220
  call void @llvm.dbg.value(metadata ptr %5, metadata !4137, metadata !DIExpression()), !dbg !4221
  %6 = icmp eq ptr %5, null, !dbg !4223
  br i1 %6, label %7, label %8, !dbg !4224

7:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4225
  unreachable, !dbg !4225

8:                                                ; preds = %2
  ret ptr %5, !dbg !4226
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4227 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4228 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4232, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i64 %1, metadata !4233, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata ptr %0, metadata !4235, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i64 %1, metadata !4238, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata ptr %0, metadata !4212, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata i64 %1, metadata !4216, metadata !DIExpression()), !dbg !4241
  %3 = icmp eq i64 %1, 0, !dbg !4243
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4243
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #47, !dbg !4244
  call void @llvm.dbg.value(metadata ptr %5, metadata !4137, metadata !DIExpression()), !dbg !4245
  %6 = icmp eq ptr %5, null, !dbg !4247
  br i1 %6, label %7, label %8, !dbg !4248

7:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4249
  unreachable, !dbg !4249

8:                                                ; preds = %2
  ret ptr %5, !dbg !4250
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4251 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4255, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 %1, metadata !4256, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 %2, metadata !4257, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata ptr %0, metadata !4259, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata i64 %1, metadata !4262, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata i64 %2, metadata !4263, metadata !DIExpression()), !dbg !4264
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4266
  call void @llvm.dbg.value(metadata ptr %4, metadata !4137, metadata !DIExpression()), !dbg !4267
  %5 = icmp eq ptr %4, null, !dbg !4269
  br i1 %5, label %6, label %7, !dbg !4270

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4271
  unreachable, !dbg !4271

7:                                                ; preds = %3
  ret ptr %4, !dbg !4272
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4273 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4277, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i64 %1, metadata !4278, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata ptr null, metadata !4129, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i64 %0, metadata !4132, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i64 %1, metadata !4133, metadata !DIExpression()), !dbg !4280
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4282
  call void @llvm.dbg.value(metadata ptr %3, metadata !4137, metadata !DIExpression()), !dbg !4283
  %4 = icmp eq ptr %3, null, !dbg !4285
  br i1 %4, label %5, label %6, !dbg !4286

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4287
  unreachable, !dbg !4287

6:                                                ; preds = %2
  ret ptr %3, !dbg !4288
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4289 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4293, metadata !DIExpression()), !dbg !4295
  call void @llvm.dbg.value(metadata i64 %1, metadata !4294, metadata !DIExpression()), !dbg !4295
  call void @llvm.dbg.value(metadata ptr null, metadata !4255, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata i64 %0, metadata !4256, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata i64 %1, metadata !4257, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata ptr null, metadata !4259, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i64 %0, metadata !4262, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i64 %1, metadata !4263, metadata !DIExpression()), !dbg !4298
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4300
  call void @llvm.dbg.value(metadata ptr %3, metadata !4137, metadata !DIExpression()), !dbg !4301
  %4 = icmp eq ptr %3, null, !dbg !4303
  br i1 %4, label %5, label %6, !dbg !4304

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4305
  unreachable, !dbg !4305

6:                                                ; preds = %2
  ret ptr %3, !dbg !4306
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #11 !dbg !4307 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4311, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata ptr %1, metadata !4312, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata ptr %0, metadata !886, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata ptr %1, metadata !887, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64 1, metadata !888, metadata !DIExpression()), !dbg !4314
  %3 = load i64, ptr %1, align 8, !dbg !4316, !tbaa !1199
  call void @llvm.dbg.value(metadata i64 %3, metadata !889, metadata !DIExpression()), !dbg !4314
  %4 = icmp eq ptr %0, null, !dbg !4317
  br i1 %4, label %5, label %8, !dbg !4319

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4320
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4323
  br label %15, !dbg !4323

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4324
  %10 = add nuw i64 %9, 1, !dbg !4324
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4324
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4324
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4324
  call void @llvm.dbg.value(metadata i64 %13, metadata !889, metadata !DIExpression()), !dbg !4314
  br i1 %12, label %14, label %15, !dbg !4327

14:                                               ; preds = %8
  tail call void @xalloc_die() #43, !dbg !4328
  unreachable, !dbg !4328

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4314
  call void @llvm.dbg.value(metadata i64 %16, metadata !889, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata ptr %0, metadata !4129, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.value(metadata i64 %16, metadata !4132, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.value(metadata i64 1, metadata !4133, metadata !DIExpression()), !dbg !4329
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #41, !dbg !4331
  call void @llvm.dbg.value(metadata ptr %17, metadata !4137, metadata !DIExpression()), !dbg !4332
  %18 = icmp eq ptr %17, null, !dbg !4334
  br i1 %18, label %19, label %20, !dbg !4335

19:                                               ; preds = %15
  tail call void @xalloc_die() #43, !dbg !4336
  unreachable, !dbg !4336

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !886, metadata !DIExpression()), !dbg !4314
  store i64 %16, ptr %1, align 8, !dbg !4337, !tbaa !1199
  ret ptr %17, !dbg !4338
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !881 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !886, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata ptr %1, metadata !887, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i64 %2, metadata !888, metadata !DIExpression()), !dbg !4339
  %4 = load i64, ptr %1, align 8, !dbg !4340, !tbaa !1199
  call void @llvm.dbg.value(metadata i64 %4, metadata !889, metadata !DIExpression()), !dbg !4339
  %5 = icmp eq ptr %0, null, !dbg !4341
  br i1 %5, label %6, label %13, !dbg !4342

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4343
  br i1 %7, label %8, label %20, !dbg !4344

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4345
  call void @llvm.dbg.value(metadata i64 %9, metadata !889, metadata !DIExpression()), !dbg !4339
  %10 = icmp ugt i64 %2, 128, !dbg !4347
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4348
  call void @llvm.dbg.value(metadata i64 %12, metadata !889, metadata !DIExpression()), !dbg !4339
  br label %20, !dbg !4349

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4350
  %15 = add nuw i64 %14, 1, !dbg !4350
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4350
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4350
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4350
  call void @llvm.dbg.value(metadata i64 %18, metadata !889, metadata !DIExpression()), !dbg !4339
  br i1 %17, label %19, label %20, !dbg !4351

19:                                               ; preds = %13
  tail call void @xalloc_die() #43, !dbg !4352
  unreachable, !dbg !4352

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4339
  call void @llvm.dbg.value(metadata i64 %21, metadata !889, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata ptr %0, metadata !4129, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i64 %21, metadata !4132, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i64 %2, metadata !4133, metadata !DIExpression()), !dbg !4353
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #41, !dbg !4355
  call void @llvm.dbg.value(metadata ptr %22, metadata !4137, metadata !DIExpression()), !dbg !4356
  %23 = icmp eq ptr %22, null, !dbg !4358
  br i1 %23, label %24, label %25, !dbg !4359

24:                                               ; preds = %20
  tail call void @xalloc_die() #43, !dbg !4360
  unreachable, !dbg !4360

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !886, metadata !DIExpression()), !dbg !4339
  store i64 %21, ptr %1, align 8, !dbg !4361, !tbaa !1199
  ret ptr %22, !dbg !4362
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #11 !dbg !893 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !901, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata ptr %1, metadata !902, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i64 %2, metadata !903, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i64 %3, metadata !904, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i64 %4, metadata !905, metadata !DIExpression()), !dbg !4363
  %6 = load i64, ptr %1, align 8, !dbg !4364, !tbaa !1199
  call void @llvm.dbg.value(metadata i64 %6, metadata !906, metadata !DIExpression()), !dbg !4363
  %7 = ashr i64 %6, 1, !dbg !4365
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4365
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4365
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4365
  call void @llvm.dbg.value(metadata i64 %10, metadata !907, metadata !DIExpression()), !dbg !4363
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4367
  call void @llvm.dbg.value(metadata i64 %11, metadata !907, metadata !DIExpression()), !dbg !4363
  %12 = icmp sgt i64 %3, -1, !dbg !4368
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4370
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4370
  call void @llvm.dbg.value(metadata i64 %15, metadata !907, metadata !DIExpression()), !dbg !4363
  %16 = icmp slt i64 %4, 0, !dbg !4371
  br i1 %16, label %17, label %30, !dbg !4371

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4371
  br i1 %18, label %19, label %24, !dbg !4371

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4371
  %21 = udiv i64 9223372036854775807, %20, !dbg !4371
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4371
  br i1 %23, label %46, label %43, !dbg !4371

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4371
  br i1 %25, label %43, label %26, !dbg !4371

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4371
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4371
  %29 = icmp ult i64 %28, %15, !dbg !4371
  br i1 %29, label %46, label %43, !dbg !4371

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4371
  br i1 %31, label %43, label %32, !dbg !4371

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4371
  br i1 %33, label %34, label %40, !dbg !4371

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4371
  br i1 %35, label %43, label %36, !dbg !4371

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4371
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4371
  %39 = icmp ult i64 %38, %4, !dbg !4371
  br i1 %39, label %46, label %43, !dbg !4371

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4371
  br i1 %42, label %46, label %43, !dbg !4371

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !908, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4363
  %44 = mul i64 %15, %4, !dbg !4371
  call void @llvm.dbg.value(metadata i64 %44, metadata !908, metadata !DIExpression()), !dbg !4363
  %45 = icmp slt i64 %44, 128, !dbg !4371
  br i1 %45, label %46, label %52, !dbg !4371

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !909, metadata !DIExpression()), !dbg !4363
  %48 = sdiv i64 %47, %4, !dbg !4372
  call void @llvm.dbg.value(metadata i64 %48, metadata !907, metadata !DIExpression()), !dbg !4363
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4375
  call void @llvm.dbg.value(metadata i64 %51, metadata !908, metadata !DIExpression()), !dbg !4363
  br label %52, !dbg !4376

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4363
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4363
  call void @llvm.dbg.value(metadata i64 %54, metadata !908, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i64 %53, metadata !907, metadata !DIExpression()), !dbg !4363
  %55 = icmp eq ptr %0, null, !dbg !4377
  br i1 %55, label %56, label %57, !dbg !4379

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4380, !tbaa !1199
  br label %57, !dbg !4381

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4382
  %59 = icmp slt i64 %58, %2, !dbg !4384
  br i1 %59, label %60, label %97, !dbg !4385

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4386
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4386
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4386
  call void @llvm.dbg.value(metadata i64 %63, metadata !907, metadata !DIExpression()), !dbg !4363
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4387
  br i1 %66, label %96, label %67, !dbg !4387

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4388

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4388
  br i1 %69, label %70, label %75, !dbg !4388

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4388
  %72 = udiv i64 9223372036854775807, %71, !dbg !4388
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4388
  br i1 %74, label %96, label %94, !dbg !4388

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4388
  br i1 %76, label %94, label %77, !dbg !4388

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4388
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4388
  %80 = icmp ult i64 %79, %63, !dbg !4388
  br i1 %80, label %96, label %94, !dbg !4388

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4388
  br i1 %82, label %94, label %83, !dbg !4388

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4388
  br i1 %84, label %85, label %91, !dbg !4388

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4388
  br i1 %86, label %94, label %87, !dbg !4388

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4388
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4388
  %90 = icmp ult i64 %89, %4, !dbg !4388
  br i1 %90, label %96, label %94, !dbg !4388

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4388
  br i1 %93, label %96, label %94, !dbg !4388

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !908, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4363
  %95 = mul i64 %63, %4, !dbg !4388
  call void @llvm.dbg.value(metadata i64 %95, metadata !908, metadata !DIExpression()), !dbg !4363
  br label %97, !dbg !4389

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #43, !dbg !4390
  unreachable, !dbg !4390

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4363
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4363
  call void @llvm.dbg.value(metadata i64 %99, metadata !908, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i64 %98, metadata !907, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata ptr %0, metadata !4209, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata i64 %99, metadata !4210, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata ptr %0, metadata !4212, metadata !DIExpression()), !dbg !4393
  call void @llvm.dbg.value(metadata i64 %99, metadata !4216, metadata !DIExpression()), !dbg !4393
  %100 = icmp eq i64 %99, 0, !dbg !4395
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4395
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #47, !dbg !4396
  call void @llvm.dbg.value(metadata ptr %102, metadata !4137, metadata !DIExpression()), !dbg !4397
  %103 = icmp eq ptr %102, null, !dbg !4399
  br i1 %103, label %104, label %105, !dbg !4400

104:                                              ; preds = %97
  tail call void @xalloc_die() #43, !dbg !4401
  unreachable, !dbg !4401

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !901, metadata !DIExpression()), !dbg !4363
  store i64 %98, ptr %1, align 8, !dbg !4402, !tbaa !1199
  ret ptr %102, !dbg !4403
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4404 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4406, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata i64 %0, metadata !4408, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata i64 1, metadata !4411, metadata !DIExpression()), !dbg !4412
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4414
  call void @llvm.dbg.value(metadata ptr %2, metadata !4137, metadata !DIExpression()), !dbg !4415
  %3 = icmp eq ptr %2, null, !dbg !4417
  br i1 %3, label %4, label %5, !dbg !4418

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4419
  unreachable, !dbg !4419

5:                                                ; preds = %1
  ret ptr %2, !dbg !4420
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4421 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4409 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4408, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64 %1, metadata !4411, metadata !DIExpression()), !dbg !4422
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4423
  call void @llvm.dbg.value(metadata ptr %3, metadata !4137, metadata !DIExpression()), !dbg !4424
  %4 = icmp eq ptr %3, null, !dbg !4426
  br i1 %4, label %5, label %6, !dbg !4427

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4428
  unreachable, !dbg !4428

6:                                                ; preds = %2
  ret ptr %3, !dbg !4429
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4430 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4432, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.value(metadata i64 %0, metadata !4434, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata i64 1, metadata !4437, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata i64 %0, metadata !4440, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i64 1, metadata !4443, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i64 %0, metadata !4440, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i64 1, metadata !4443, metadata !DIExpression()), !dbg !4444
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4446
  call void @llvm.dbg.value(metadata ptr %2, metadata !4137, metadata !DIExpression()), !dbg !4447
  %3 = icmp eq ptr %2, null, !dbg !4449
  br i1 %3, label %4, label %5, !dbg !4450

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4451
  unreachable, !dbg !4451

5:                                                ; preds = %1
  ret ptr %2, !dbg !4452
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4435 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4434, metadata !DIExpression()), !dbg !4453
  call void @llvm.dbg.value(metadata i64 %1, metadata !4437, metadata !DIExpression()), !dbg !4453
  call void @llvm.dbg.value(metadata i64 %0, metadata !4440, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 %1, metadata !4443, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 %0, metadata !4440, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 %1, metadata !4443, metadata !DIExpression()), !dbg !4454
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4456
  call void @llvm.dbg.value(metadata ptr %3, metadata !4137, metadata !DIExpression()), !dbg !4457
  %4 = icmp eq ptr %3, null, !dbg !4459
  br i1 %4, label %5, label %6, !dbg !4460

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4461
  unreachable, !dbg !4461

6:                                                ; preds = %2
  ret ptr %3, !dbg !4462
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4463 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4467, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i64 %1, metadata !4468, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i64 %1, metadata !4161, metadata !DIExpression()), !dbg !4470
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4472
  call void @llvm.dbg.value(metadata ptr %3, metadata !4137, metadata !DIExpression()), !dbg !4473
  %4 = icmp eq ptr %3, null, !dbg !4475
  br i1 %4, label %5, label %6, !dbg !4476

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4477
  unreachable, !dbg !4477

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4478, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata ptr %0, metadata !4481, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata i64 %1, metadata !4482, metadata !DIExpression()), !dbg !4483
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4485
  ret ptr %3, !dbg !4486
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4487 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4491, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i64 %1, metadata !4492, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i64 %1, metadata !4175, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i64 %1, metadata !4177, metadata !DIExpression()), !dbg !4496
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4498
  call void @llvm.dbg.value(metadata ptr %3, metadata !4137, metadata !DIExpression()), !dbg !4499
  %4 = icmp eq ptr %3, null, !dbg !4501
  br i1 %4, label %5, label %6, !dbg !4502

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4503
  unreachable, !dbg !4503

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4478, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata ptr %0, metadata !4481, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i64 %1, metadata !4482, metadata !DIExpression()), !dbg !4504
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4506
  ret ptr %3, !dbg !4507
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #11 !dbg !4508 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4512, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.value(metadata i64 %1, metadata !4513, metadata !DIExpression()), !dbg !4515
  %3 = add nsw i64 %1, 1, !dbg !4516
  call void @llvm.dbg.value(metadata i64 %3, metadata !4175, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i64 %3, metadata !4177, metadata !DIExpression()), !dbg !4519
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4521
  call void @llvm.dbg.value(metadata ptr %4, metadata !4137, metadata !DIExpression()), !dbg !4522
  %5 = icmp eq ptr %4, null, !dbg !4524
  br i1 %5, label %6, label %7, !dbg !4525

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4526
  unreachable, !dbg !4526

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4514, metadata !DIExpression()), !dbg !4515
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4527
  store i8 0, ptr %8, align 1, !dbg !4528, !tbaa !1025
  call void @llvm.dbg.value(metadata ptr %4, metadata !4478, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata ptr %0, metadata !4481, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata i64 %1, metadata !4482, metadata !DIExpression()), !dbg !4529
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4531
  ret ptr %4, !dbg !4532
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !dbg !4533 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4535, metadata !DIExpression()), !dbg !4536
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !4537
  %3 = add i64 %2, 1, !dbg !4538
  call void @llvm.dbg.value(metadata ptr %0, metadata !4467, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i64 %3, metadata !4468, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i64 %3, metadata !4161, metadata !DIExpression()), !dbg !4541
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4543
  call void @llvm.dbg.value(metadata ptr %4, metadata !4137, metadata !DIExpression()), !dbg !4544
  %5 = icmp eq ptr %4, null, !dbg !4546
  br i1 %5, label %6, label %7, !dbg !4547

6:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4548
  unreachable, !dbg !4548

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4478, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata ptr %0, metadata !4481, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i64 %3, metadata !4482, metadata !DIExpression()), !dbg !4549
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #41, !dbg !4551
  ret ptr %4, !dbg !4552
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4553 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4557, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %1, metadata !4555, metadata !DIExpression()), !dbg !4558
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.162, ptr noundef nonnull @.str.2.163, i32 noundef 5) #41, !dbg !4557
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.164, ptr noundef %2) #41, !dbg !4557
  %3 = icmp eq i32 %1, 0, !dbg !4557
  tail call void @llvm.assume(i1 %3), !dbg !4557
  tail call void @abort() #43, !dbg !4559
  unreachable, !dbg !4559
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xmemcoll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !4560 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4564, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i64 %1, metadata !4565, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr %2, metadata !4566, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i64 %3, metadata !4567, metadata !DIExpression()), !dbg !4570
  %5 = tail call i32 @memcoll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #41, !dbg !4571
  call void @llvm.dbg.value(metadata i32 %5, metadata !4568, metadata !DIExpression()), !dbg !4570
  %6 = tail call ptr @__errno_location() #44, !dbg !4572
  %7 = load i32, ptr %6, align 4, !dbg !4572, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %7, metadata !4569, metadata !DIExpression()), !dbg !4570
  %8 = icmp eq i32 %7, 0, !dbg !4573
  br i1 %8, label %17, label %9, !dbg !4575

9:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 %7, metadata !4576, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata ptr %0, metadata !4581, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i64 %1, metadata !4582, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata ptr %2, metadata !4583, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i64 %3, metadata !4584, metadata !DIExpression()), !dbg !4587
  %10 = tail call ptr @dcgettext(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.1.168, i32 noundef 5) #41, !dbg !4589
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %7, ptr noundef %10) #41, !dbg !4589
  %11 = tail call ptr @dcgettext(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.2.169, i32 noundef 5) #41, !dbg !4590
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %11) #41, !dbg !4590
  %12 = load volatile i32, ptr @exit_failure, align 4, !dbg !4591, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %12, metadata !4585, metadata !DIExpression()), !dbg !4592
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.3.170, i32 noundef 5) #41, !dbg !4591
  %14 = tail call ptr @quotearg_n_style_mem(i32 noundef 0, i32 noundef 8, ptr noundef %0, i64 noundef %1) #41, !dbg !4591
  %15 = tail call ptr @quotearg_n_style_mem(i32 noundef 1, i32 noundef 8, ptr noundef %2, i64 noundef %3) #41, !dbg !4591
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %12, i32 noundef 0, ptr noundef %13, ptr noundef %14, ptr noundef %15) #41, !dbg !4591
  %16 = icmp eq i32 %12, 0, !dbg !4591
  tail call void @llvm.assume(i1 %16), !dbg !4591
  br label %17, !dbg !4593

17:                                               ; preds = %9, %4
  ret i32 %5, !dbg !4594
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xmemcoll0(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !4595 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4597, metadata !DIExpression()), !dbg !4603
  call void @llvm.dbg.value(metadata i64 %1, metadata !4598, metadata !DIExpression()), !dbg !4603
  call void @llvm.dbg.value(metadata ptr %2, metadata !4599, metadata !DIExpression()), !dbg !4603
  call void @llvm.dbg.value(metadata i64 %3, metadata !4600, metadata !DIExpression()), !dbg !4603
  %5 = tail call i32 @memcoll0(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #41, !dbg !4604
  call void @llvm.dbg.value(metadata i32 %5, metadata !4601, metadata !DIExpression()), !dbg !4603
  %6 = tail call ptr @__errno_location() #44, !dbg !4605
  %7 = load i32, ptr %6, align 4, !dbg !4605, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %7, metadata !4602, metadata !DIExpression()), !dbg !4603
  %8 = icmp eq i32 %7, 0, !dbg !4606
  br i1 %8, label %19, label %9, !dbg !4608

9:                                                ; preds = %4
  %10 = add i64 %1, -1, !dbg !4609
  %11 = add i64 %3, -1, !dbg !4610
  call void @llvm.dbg.value(metadata i32 %7, metadata !4576, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata ptr %0, metadata !4581, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata i64 %10, metadata !4582, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata ptr %2, metadata !4583, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata i64 %11, metadata !4584, metadata !DIExpression()), !dbg !4611
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.1.168, i32 noundef 5) #41, !dbg !4613
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %7, ptr noundef %12) #41, !dbg !4613
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.2.169, i32 noundef 5) #41, !dbg !4614
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13) #41, !dbg !4614
  %14 = load volatile i32, ptr @exit_failure, align 4, !dbg !4615, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %14, metadata !4585, metadata !DIExpression()), !dbg !4616
  %15 = tail call ptr @dcgettext(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.3.170, i32 noundef 5) #41, !dbg !4615
  %16 = tail call ptr @quotearg_n_style_mem(i32 noundef 0, i32 noundef 8, ptr noundef %0, i64 noundef %10) #41, !dbg !4615
  %17 = tail call ptr @quotearg_n_style_mem(i32 noundef 1, i32 noundef 8, ptr noundef %2, i64 noundef %11) #41, !dbg !4615
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %14, i32 noundef 0, ptr noundef %15, ptr noundef %16, ptr noundef %17) #41, !dbg !4615
  %18 = icmp eq i32 %14, 0, !dbg !4615
  tail call void @llvm.assume(i1 %18), !dbg !4615
  br label %19, !dbg !4617

19:                                               ; preds = %9, %4
  ret i32 %5, !dbg !4618
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #11 !dbg !4619 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !4657, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.value(metadata ptr %1, metadata !4658, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.value(metadata i32 0, metadata !4659, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.value(metadata i32 0, metadata !4660, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.value(metadata i8 0, metadata !4661, metadata !DIExpression()), !dbg !4681
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #41, !dbg !4682
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4662, metadata !DIExpression()), !dbg !4683
  call void @llvm.dbg.value(metadata ptr %1, metadata !4666, metadata !DIExpression()), !dbg !4684
  call void @llvm.dbg.value(metadata ptr %3, metadata !4668, metadata !DIExpression()), !dbg !4684
  br label %4, !dbg !4685

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4684
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4681
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4686
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4681
  call void @llvm.dbg.value(metadata i32 %9, metadata !4659, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.value(metadata i32 %8, metadata !4660, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.value(metadata ptr %10, metadata !4668, metadata !DIExpression()), !dbg !4684
  call void @llvm.dbg.value(metadata ptr %6, metadata !4666, metadata !DIExpression()), !dbg !4684
  call void @llvm.dbg.value(metadata i8 poison, metadata !4661, metadata !DIExpression()), !dbg !4681
  %11 = load i8, ptr %6, align 1, !dbg !4687, !tbaa !1025
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4688

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !4659, metadata !DIExpression()), !dbg !4681
  %13 = icmp slt i64 %7, 80, !dbg !4689
  br i1 %13, label %14, label %43, !dbg !4692

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4693
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4668, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4684
  store i8 114, ptr %10, align 1, !dbg !4694, !tbaa !1025
  br label %43, !dbg !4695

16:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !4659, metadata !DIExpression()), !dbg !4681
  %17 = or i32 %8, 576, !dbg !4696
  call void @llvm.dbg.value(metadata i32 %17, metadata !4660, metadata !DIExpression()), !dbg !4681
  %18 = icmp slt i64 %7, 80, !dbg !4697
  br i1 %18, label %19, label %43, !dbg !4699

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4700
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4668, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4684
  store i8 119, ptr %10, align 1, !dbg !4701, !tbaa !1025
  br label %43, !dbg !4702

21:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !4659, metadata !DIExpression()), !dbg !4681
  %22 = or i32 %8, 1088, !dbg !4703
  call void @llvm.dbg.value(metadata i32 %22, metadata !4660, metadata !DIExpression()), !dbg !4681
  %23 = icmp slt i64 %7, 80, !dbg !4704
  br i1 %23, label %24, label %43, !dbg !4706

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4707
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4668, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4684
  store i8 97, ptr %10, align 1, !dbg !4708, !tbaa !1025
  br label %43, !dbg !4709

26:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %8, metadata !4660, metadata !DIExpression()), !dbg !4681
  %27 = icmp slt i64 %7, 80, !dbg !4710
  br i1 %27, label %28, label %43, !dbg !4712

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4713
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4668, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4684
  store i8 98, ptr %10, align 1, !dbg !4714, !tbaa !1025
  br label %43, !dbg !4715

30:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 2, metadata !4659, metadata !DIExpression()), !dbg !4681
  %31 = icmp slt i64 %7, 80, !dbg !4716
  br i1 %31, label %32, label %43, !dbg !4718

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4719
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4668, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4684
  store i8 43, ptr %10, align 1, !dbg !4720, !tbaa !1025
  br label %43, !dbg !4721

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4722
  call void @llvm.dbg.value(metadata i32 %35, metadata !4660, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.value(metadata i8 1, metadata !4661, metadata !DIExpression()), !dbg !4681
  br label %43, !dbg !4723

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4724
  call void @llvm.dbg.value(metadata i32 %37, metadata !4660, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.value(metadata i8 1, metadata !4661, metadata !DIExpression()), !dbg !4681
  br label %43, !dbg !4725

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #42, !dbg !4726
  call void @llvm.dbg.value(metadata i64 %39, metadata !4669, metadata !DIExpression()), !dbg !4727
  %40 = sub nsw i64 80, %7, !dbg !4728
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !4730
  call void @llvm.dbg.value(metadata i64 %41, metadata !4669, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata ptr %10, metadata !4731, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata ptr %6, metadata !4734, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i64 %41, metadata !4735, metadata !DIExpression()), !dbg !4736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #41, !dbg !4738
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !4739
  call void @llvm.dbg.value(metadata ptr %42, metadata !4668, metadata !DIExpression()), !dbg !4684
  br label %49, !dbg !4740

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4681
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4681
  call void @llvm.dbg.value(metadata i32 %47, metadata !4659, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.value(metadata i32 %46, metadata !4660, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4668, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4684
  call void @llvm.dbg.value(metadata i8 poison, metadata !4661, metadata !DIExpression()), !dbg !4681
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !4741
  call void @llvm.dbg.value(metadata ptr %48, metadata !4666, metadata !DIExpression()), !dbg !4684
  br label %4, !dbg !4742, !llvm.loop !4743

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !4684
  call void @llvm.dbg.value(metadata ptr %50, metadata !4668, metadata !DIExpression()), !dbg !4684
  store i8 0, ptr %50, align 1, !dbg !4745, !tbaa !1025
  br i1 %5, label %51, label %62, !dbg !4746

51:                                               ; preds = %49
  %52 = or i32 %9, %8, !dbg !4747
  %53 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %52, i32 noundef 438) #41, !dbg !4748
  call void @llvm.dbg.value(metadata i32 %53, metadata !4674, metadata !DIExpression()), !dbg !4749
  %54 = icmp slt i32 %53, 0, !dbg !4750
  br i1 %54, label %64, label %55, !dbg !4752

55:                                               ; preds = %51
  %56 = call noalias ptr @fdopen(i32 noundef %53, ptr noundef nonnull %3) #41, !dbg !4753
  call void @llvm.dbg.value(metadata ptr %56, metadata !4677, metadata !DIExpression()), !dbg !4749
  %57 = icmp eq ptr %56, null, !dbg !4754
  br i1 %57, label %58, label %64, !dbg !4755

58:                                               ; preds = %55
  %59 = tail call ptr @__errno_location() #44, !dbg !4756
  %60 = load i32, ptr %59, align 4, !dbg !4756, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %60, metadata !4678, metadata !DIExpression()), !dbg !4757
  %61 = tail call i32 @close(i32 noundef %53) #41, !dbg !4758
  store i32 %60, ptr %59, align 4, !dbg !4759, !tbaa !1016
  br label %64, !dbg !4760

62:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !4761, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata ptr %1, metadata !4764, metadata !DIExpression()), !dbg !4765
  %63 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4767
  br label %64, !dbg !4768

64:                                               ; preds = %51, %58, %55, %62
  %65 = phi ptr [ %63, %62 ], [ null, %51 ], [ null, %58 ], [ %56, %55 ], !dbg !4681
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #41, !dbg !4769
  ret ptr %65, !dbg !4769
}

; Function Attrs: nofree
declare !dbg !4770 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #37

; Function Attrs: nofree nounwind
declare !dbg !4773 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #11 !dbg !4776 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4814, metadata !DIExpression()), !dbg !4819
  %2 = tail call i64 @__fpending(ptr noundef %0) #41, !dbg !4820
  call void @llvm.dbg.value(metadata i1 poison, metadata !4815, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata ptr %0, metadata !4821, metadata !DIExpression()), !dbg !4824
  %3 = load i32, ptr %0, align 8, !dbg !4826, !tbaa !1349
  %4 = and i32 %3, 32, !dbg !4827
  %5 = icmp eq i32 %4, 0, !dbg !4827
  call void @llvm.dbg.value(metadata i1 %5, metadata !4817, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #41, !dbg !4828
  %7 = icmp eq i32 %6, 0, !dbg !4829
  call void @llvm.dbg.value(metadata i1 %7, metadata !4818, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  br i1 %5, label %8, label %18, !dbg !4830

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4832
  call void @llvm.dbg.value(metadata i1 %9, metadata !4815, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4819
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4833
  %11 = xor i1 %7, true, !dbg !4833
  %12 = sext i1 %11 to i32, !dbg !4833
  br i1 %10, label %21, label %13, !dbg !4833

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #44, !dbg !4834
  %15 = load i32, ptr %14, align 4, !dbg !4834, !tbaa !1016
  %16 = icmp ne i32 %15, 9, !dbg !4835
  %17 = sext i1 %16 to i32, !dbg !4836
  br label %21, !dbg !4836

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4837

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #44, !dbg !4839
  store i32 0, ptr %20, align 4, !dbg !4841, !tbaa !1016
  br label %21, !dbg !4839

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4819
  ret i32 %22, !dbg !4842
}

; Function Attrs: nounwind
declare !dbg !4843 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #11 !dbg !4846 {
  %3 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4848, metadata !DIExpression()), !dbg !4873
  call void @llvm.dbg.value(metadata i32 %1, metadata !4849, metadata !DIExpression()), !dbg !4873
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #41, !dbg !4874
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4850, metadata !DIExpression()), !dbg !4875
  call void @llvm.va_start(ptr nonnull %3), !dbg !4876
  call void @llvm.dbg.value(metadata i32 -1, metadata !4861, metadata !DIExpression()), !dbg !4873
  switch i32 %1, label %96 [
    i32 0, label %4
    i32 1030, label %23
    i32 1, label %75
    i32 3, label %75
    i32 1025, label %75
    i32 9, label %75
    i32 1032, label %75
    i32 1034, label %75
    i32 11, label %75
    i32 1033, label %77
    i32 1031, label %77
    i32 10, label %77
    i32 1026, label %77
    i32 2, label %77
    i32 4, label %77
    i32 1024, label %77
    i32 8, label %77
  ], !dbg !4877

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4878
  %6 = load i32, ptr %5, align 8, !dbg !4878
  %7 = icmp sgt i32 %6, -1, !dbg !4878
  br i1 %7, label %16, label %8, !dbg !4878

8:                                                ; preds = %4
  %9 = add nsw i32 %6, 8, !dbg !4878
  store i32 %9, ptr %5, align 8, !dbg !4878
  %10 = icmp ult i32 %6, -7, !dbg !4878
  br i1 %10, label %11, label %16, !dbg !4878

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4878
  %13 = load ptr, ptr %12, align 8, !dbg !4878
  %14 = sext i32 %6 to i64, !dbg !4878
  %15 = getelementptr inbounds i8, ptr %13, i64 %14, !dbg !4878
  br label %19, !dbg !4878

16:                                               ; preds = %8, %4
  %17 = load ptr, ptr %3, align 8, !dbg !4878
  %18 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !4878
  store ptr %18, ptr %3, align 8, !dbg !4878
  br label %19, !dbg !4878

19:                                               ; preds = %16, %11
  %20 = phi ptr [ %15, %11 ], [ %17, %16 ], !dbg !4878
  %21 = load i32, ptr %20, align 8, !dbg !4878
  call void @llvm.dbg.value(metadata i32 %21, metadata !4862, metadata !DIExpression()), !dbg !4879
  call void @llvm.dbg.value(metadata i32 %0, metadata !4880, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 %21, metadata !4883, metadata !DIExpression()), !dbg !4885
  %22 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %21) #41, !dbg !4887
  call void @llvm.dbg.value(metadata i32 %22, metadata !4884, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 %22, metadata !4861, metadata !DIExpression()), !dbg !4873
  br label %115

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4888
  %25 = load i32, ptr %24, align 8, !dbg !4888
  %26 = icmp sgt i32 %25, -1, !dbg !4888
  br i1 %26, label %35, label %27, !dbg !4888

27:                                               ; preds = %23
  %28 = add nsw i32 %25, 8, !dbg !4888
  store i32 %28, ptr %24, align 8, !dbg !4888
  %29 = icmp ult i32 %25, -7, !dbg !4888
  br i1 %29, label %30, label %35, !dbg !4888

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4888
  %32 = load ptr, ptr %31, align 8, !dbg !4888
  %33 = sext i32 %25 to i64, !dbg !4888
  %34 = getelementptr inbounds i8, ptr %32, i64 %33, !dbg !4888
  br label %38, !dbg !4888

35:                                               ; preds = %27, %23
  %36 = load ptr, ptr %3, align 8, !dbg !4888
  %37 = getelementptr inbounds i8, ptr %36, i64 8, !dbg !4888
  store ptr %37, ptr %3, align 8, !dbg !4888
  br label %38, !dbg !4888

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %34, %30 ], [ %36, %35 ], !dbg !4888
  %40 = load i32, ptr %39, align 8, !dbg !4888
  call void @llvm.dbg.value(metadata i32 %40, metadata !4865, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata i32 %0, metadata !814, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i32 %40, metadata !815, metadata !DIExpression()), !dbg !4890
  %41 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4892, !tbaa !1016
  %42 = icmp sgt i32 %41, -1, !dbg !4894
  br i1 %42, label %43, label %55, !dbg !4895

43:                                               ; preds = %38
  %44 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %40) #41, !dbg !4896
  call void @llvm.dbg.value(metadata i32 %44, metadata !816, metadata !DIExpression()), !dbg !4890
  %45 = icmp sgt i32 %44, -1, !dbg !4898
  br i1 %45, label %50, label %46, !dbg !4900

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #44, !dbg !4901
  %48 = load i32, ptr %47, align 4, !dbg !4901, !tbaa !1016
  %49 = icmp eq i32 %48, 22, !dbg !4902
  br i1 %49, label %51, label %50, !dbg !4903

50:                                               ; preds = %46, %43
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4904, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %44, metadata !816, metadata !DIExpression()), !dbg !4890
  br label %115, !dbg !4906

51:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %0, metadata !4880, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.value(metadata i32 %40, metadata !4883, metadata !DIExpression()), !dbg !4907
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #41, !dbg !4910
  call void @llvm.dbg.value(metadata i32 %52, metadata !4884, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.value(metadata i32 %52, metadata !816, metadata !DIExpression()), !dbg !4890
  %53 = icmp sgt i32 %52, -1, !dbg !4911
  br i1 %53, label %54, label %115, !dbg !4913

54:                                               ; preds = %51
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4914, !tbaa !1016
  br label %59, !dbg !4915

55:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !4880, metadata !DIExpression()), !dbg !4916
  call void @llvm.dbg.value(metadata i32 %40, metadata !4883, metadata !DIExpression()), !dbg !4916
  %56 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #41, !dbg !4918
  call void @llvm.dbg.value(metadata i32 %56, metadata !4884, metadata !DIExpression()), !dbg !4916
  call void @llvm.dbg.value(metadata i32 %56, metadata !816, metadata !DIExpression()), !dbg !4890
  %57 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %58 = icmp eq i32 %57, -1
  br label %59

59:                                               ; preds = %55, %54
  %60 = phi i1 [ true, %54 ], [ %58, %55 ]
  %61 = phi i32 [ %52, %54 ], [ %56, %55 ], !dbg !4919
  call void @llvm.dbg.value(metadata i32 %61, metadata !816, metadata !DIExpression()), !dbg !4890
  %62 = icmp sgt i32 %61, -1, !dbg !4920
  %63 = select i1 %62, i1 %60, i1 false, !dbg !4906
  br i1 %63, label %64, label %115, !dbg !4906

64:                                               ; preds = %59
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 1) #41, !dbg !4921
  call void @llvm.dbg.value(metadata i32 %65, metadata !817, metadata !DIExpression()), !dbg !4922
  %66 = icmp slt i32 %65, 0, !dbg !4923
  br i1 %66, label %71, label %67, !dbg !4924

67:                                               ; preds = %64
  %68 = or i32 %65, 1, !dbg !4925
  %69 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 2, i32 noundef %68) #41, !dbg !4926
  %70 = icmp eq i32 %69, -1, !dbg !4927
  br i1 %70, label %71, label %115, !dbg !4928

71:                                               ; preds = %67, %64
  %72 = tail call ptr @__errno_location() #44, !dbg !4929
  %73 = load i32, ptr %72, align 4, !dbg !4929, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %73, metadata !820, metadata !DIExpression()), !dbg !4930
  %74 = call i32 @close(i32 noundef %61) #41, !dbg !4931
  store i32 %73, ptr %72, align 4, !dbg !4932, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 -1, metadata !816, metadata !DIExpression()), !dbg !4890
  br label %115, !dbg !4933

75:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %76 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #41, !dbg !4934
  call void @llvm.dbg.value(metadata i32 %76, metadata !4861, metadata !DIExpression()), !dbg !4873
  br label %115, !dbg !4935

77:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %78 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4936
  %79 = load i32, ptr %78, align 8, !dbg !4936
  %80 = icmp sgt i32 %79, -1, !dbg !4936
  br i1 %80, label %89, label %81, !dbg !4936

81:                                               ; preds = %77
  %82 = add nsw i32 %79, 8, !dbg !4936
  store i32 %82, ptr %78, align 8, !dbg !4936
  %83 = icmp ult i32 %79, -7, !dbg !4936
  br i1 %83, label %84, label %89, !dbg !4936

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4936
  %86 = load ptr, ptr %85, align 8, !dbg !4936
  %87 = sext i32 %79 to i64, !dbg !4936
  %88 = getelementptr inbounds i8, ptr %86, i64 %87, !dbg !4936
  br label %92, !dbg !4936

89:                                               ; preds = %81, %77
  %90 = load ptr, ptr %3, align 8, !dbg !4936
  %91 = getelementptr inbounds i8, ptr %90, i64 8, !dbg !4936
  store ptr %91, ptr %3, align 8, !dbg !4936
  br label %92, !dbg !4936

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %88, %84 ], [ %90, %89 ], !dbg !4936
  %94 = load i32, ptr %93, align 8, !dbg !4936
  call void @llvm.dbg.value(metadata i32 %94, metadata !4867, metadata !DIExpression()), !dbg !4937
  %95 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %94) #41, !dbg !4938
  call void @llvm.dbg.value(metadata i32 %95, metadata !4861, metadata !DIExpression()), !dbg !4873
  br label %115, !dbg !4939

96:                                               ; preds = %2
  %97 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4940
  %98 = load i32, ptr %97, align 8, !dbg !4940
  %99 = icmp sgt i32 %98, -1, !dbg !4940
  br i1 %99, label %108, label %100, !dbg !4940

100:                                              ; preds = %96
  %101 = add nsw i32 %98, 8, !dbg !4940
  store i32 %101, ptr %97, align 8, !dbg !4940
  %102 = icmp ult i32 %98, -7, !dbg !4940
  br i1 %102, label %103, label %108, !dbg !4940

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4940
  %105 = load ptr, ptr %104, align 8, !dbg !4940
  %106 = sext i32 %98 to i64, !dbg !4940
  %107 = getelementptr inbounds i8, ptr %105, i64 %106, !dbg !4940
  br label %111, !dbg !4940

108:                                              ; preds = %100, %96
  %109 = load ptr, ptr %3, align 8, !dbg !4940
  %110 = getelementptr inbounds i8, ptr %109, i64 8, !dbg !4940
  store ptr %110, ptr %3, align 8, !dbg !4940
  br label %111, !dbg !4940

111:                                              ; preds = %108, %103
  %112 = phi ptr [ %107, %103 ], [ %109, %108 ], !dbg !4940
  %113 = load ptr, ptr %112, align 8, !dbg !4940
  call void @llvm.dbg.value(metadata ptr %113, metadata !4871, metadata !DIExpression()), !dbg !4941
  %114 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %113) #41, !dbg !4942
  call void @llvm.dbg.value(metadata i32 %114, metadata !4861, metadata !DIExpression()), !dbg !4873
  br label %115, !dbg !4943

115:                                              ; preds = %71, %67, %59, %51, %50, %75, %92, %111, %19
  %116 = phi i32 [ %114, %111 ], [ %95, %92 ], [ %76, %75 ], [ %22, %19 ], [ %61, %59 ], [ -1, %71 ], [ %61, %67 ], [ %52, %51 ], [ %44, %50 ], !dbg !4944
  call void @llvm.dbg.value(metadata i32 %116, metadata !4861, metadata !DIExpression()), !dbg !4873
  call void @llvm.va_end(ptr nonnull %3), !dbg !4945
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #41, !dbg !4946
  ret i32 %116, !dbg !4947
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #11 !dbg !4948 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4953, metadata !DIExpression()), !dbg !4958
  call void @llvm.dbg.value(metadata ptr %1, metadata !4954, metadata !DIExpression()), !dbg !4958
  call void @llvm.dbg.value(metadata i64 %2, metadata !4955, metadata !DIExpression()), !dbg !4958
  call void @llvm.dbg.value(metadata ptr %3, metadata !4956, metadata !DIExpression()), !dbg !4958
  %5 = icmp eq ptr %1, null, !dbg !4959
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4961
  %7 = select i1 %5, ptr @.str.179, ptr %1, !dbg !4961
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4961
  call void @llvm.dbg.value(metadata i64 %8, metadata !4955, metadata !DIExpression()), !dbg !4958
  call void @llvm.dbg.value(metadata ptr %7, metadata !4954, metadata !DIExpression()), !dbg !4958
  call void @llvm.dbg.value(metadata ptr %6, metadata !4953, metadata !DIExpression()), !dbg !4958
  %9 = icmp eq ptr %3, null, !dbg !4962
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4964
  call void @llvm.dbg.value(metadata ptr %10, metadata !4956, metadata !DIExpression()), !dbg !4958
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #41, !dbg !4965
  call void @llvm.dbg.value(metadata i64 %11, metadata !4957, metadata !DIExpression()), !dbg !4958
  %12 = icmp ult i64 %11, -3, !dbg !4966
  br i1 %12, label %13, label %17, !dbg !4968

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #42, !dbg !4969
  %15 = icmp eq i32 %14, 0, !dbg !4969
  br i1 %15, label %16, label %29, !dbg !4970

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4971, metadata !DIExpression()), !dbg !4976
  call void @llvm.dbg.value(metadata ptr %10, metadata !4978, metadata !DIExpression()), !dbg !4983
  call void @llvm.dbg.value(metadata i32 0, metadata !4981, metadata !DIExpression()), !dbg !4983
  call void @llvm.dbg.value(metadata i64 8, metadata !4982, metadata !DIExpression()), !dbg !4983
  store i64 0, ptr %10, align 1, !dbg !4985
  br label %29, !dbg !4986

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4987
  br i1 %18, label %19, label %20, !dbg !4989

19:                                               ; preds = %17
  tail call void @abort() #43, !dbg !4990
  unreachable, !dbg !4990

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4991

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #41, !dbg !4993
  br i1 %23, label %29, label %24, !dbg !4994

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4995
  br i1 %25, label %29, label %26, !dbg !4998

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4999, !tbaa !1025
  %28 = zext i8 %27 to i32, !dbg !5000
  store i32 %28, ptr %6, align 4, !dbg !5001, !tbaa !1016
  br label %29, !dbg !5002

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4958
  ret i64 %30, !dbg !5003
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5004 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: read) uwtable
define dso_local i32 @memcoll(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef %2, i64 noundef %3) local_unnamed_addr #39 !dbg !5010 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5012, metadata !DIExpression()), !dbg !5021
  call void @llvm.dbg.value(metadata i64 %1, metadata !5013, metadata !DIExpression()), !dbg !5021
  call void @llvm.dbg.value(metadata ptr %2, metadata !5014, metadata !DIExpression()), !dbg !5021
  call void @llvm.dbg.value(metadata i64 %3, metadata !5015, metadata !DIExpression()), !dbg !5021
  %5 = icmp eq i64 %1, %3, !dbg !5022
  br i1 %5, label %6, label %11, !dbg !5023

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !5024, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.value(metadata ptr %2, metadata !5027, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.value(metadata i64 %1, metadata !5028, metadata !DIExpression()), !dbg !5029
  %7 = tail call i32 @bcmp(ptr %0, ptr %2, i64 %1), !dbg !5031
  %8 = icmp eq i32 %7, 0, !dbg !5032
  br i1 %8, label %9, label %11, !dbg !5033

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #44, !dbg !5034
  store i32 0, ptr %10, align 4, !dbg !5036, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 0, metadata !5016, metadata !DIExpression()), !dbg !5021
  br label %43, !dbg !5037

11:                                               ; preds = %6, %4
  %12 = getelementptr inbounds i8, ptr %0, i64 %1, !dbg !5038
  %13 = load i8, ptr %12, align 1, !dbg !5038, !tbaa !1025
  call void @llvm.dbg.value(metadata i8 %13, metadata !5017, metadata !DIExpression()), !dbg !5039
  %14 = getelementptr inbounds i8, ptr %2, i64 %3, !dbg !5040
  %15 = load i8, ptr %14, align 1, !dbg !5040, !tbaa !1025
  call void @llvm.dbg.value(metadata i8 %15, metadata !5020, metadata !DIExpression()), !dbg !5039
  store i8 0, ptr %12, align 1, !dbg !5041, !tbaa !1025
  store i8 0, ptr %14, align 1, !dbg !5042, !tbaa !1025
  %16 = add i64 %1, 1, !dbg !5043
  %17 = add i64 %3, 1, !dbg !5044
  call void @llvm.dbg.value(metadata ptr %0, metadata !5045, metadata !DIExpression()), !dbg !5055
  call void @llvm.dbg.value(metadata i64 %16, metadata !5048, metadata !DIExpression()), !dbg !5055
  call void @llvm.dbg.value(metadata ptr %2, metadata !5049, metadata !DIExpression()), !dbg !5055
  call void @llvm.dbg.value(metadata i64 %17, metadata !5050, metadata !DIExpression()), !dbg !5055
  %18 = tail call ptr @__errno_location() #44, !dbg !5055
  br label %19, !dbg !5057

19:                                               ; preds = %37, %11
  %20 = phi ptr [ %2, %11 ], [ %38, %37 ]
  %21 = phi i64 [ %17, %11 ], [ %32, %37 ]
  %22 = phi i64 [ %16, %11 ], [ %31, %37 ]
  %23 = phi ptr [ %0, %11 ], [ %39, %37 ]
  call void @llvm.dbg.value(metadata ptr %23, metadata !5045, metadata !DIExpression()), !dbg !5055
  call void @llvm.dbg.value(metadata i64 %22, metadata !5048, metadata !DIExpression()), !dbg !5055
  call void @llvm.dbg.value(metadata i64 %21, metadata !5050, metadata !DIExpression()), !dbg !5055
  call void @llvm.dbg.value(metadata ptr %20, metadata !5049, metadata !DIExpression()), !dbg !5055
  store i32 0, ptr %18, align 4, !dbg !5058, !tbaa !1016
  %24 = tail call i32 @strcoll(ptr noundef %23, ptr noundef %20) #42, !dbg !5059
  call void @llvm.dbg.value(metadata i32 %24, metadata !5051, metadata !DIExpression()), !dbg !5055
  %25 = icmp eq i32 %24, 0, !dbg !5060
  br i1 %25, label %26, label %41, !dbg !5057

26:                                               ; preds = %19
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %23) #42, !dbg !5061
  %28 = add i64 %27, 1, !dbg !5062
  call void @llvm.dbg.value(metadata i64 %28, metadata !5052, metadata !DIExpression()), !dbg !5063
  %29 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #42, !dbg !5064
  %30 = add i64 %29, 1, !dbg !5065
  call void @llvm.dbg.value(metadata i64 %30, metadata !5054, metadata !DIExpression()), !dbg !5063
  call void @llvm.dbg.value(metadata !DIArgList(ptr %23, i64 %28), metadata !5045, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5055
  call void @llvm.dbg.value(metadata !DIArgList(ptr %20, i64 %30), metadata !5049, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5055
  %31 = sub i64 %22, %28, !dbg !5066
  call void @llvm.dbg.value(metadata i64 %31, metadata !5048, metadata !DIExpression()), !dbg !5055
  %32 = sub i64 %21, %30, !dbg !5067
  call void @llvm.dbg.value(metadata i64 %32, metadata !5050, metadata !DIExpression()), !dbg !5055
  %33 = icmp eq i64 %31, 0, !dbg !5068
  br i1 %33, label %34, label %37, !dbg !5070

34:                                               ; preds = %26
  %35 = icmp ne i64 %32, 0, !dbg !5071
  %36 = sext i1 %35 to i32, !dbg !5071
  br label %41

37:                                               ; preds = %26
  %38 = getelementptr inbounds i8, ptr %20, i64 %30, !dbg !5072
  call void @llvm.dbg.value(metadata ptr %38, metadata !5049, metadata !DIExpression()), !dbg !5055
  %39 = getelementptr inbounds i8, ptr %23, i64 %28, !dbg !5073
  call void @llvm.dbg.value(metadata ptr %39, metadata !5045, metadata !DIExpression()), !dbg !5055
  %40 = icmp eq i64 %32, 0, !dbg !5074
  br i1 %40, label %41, label %19, !llvm.loop !5076

41:                                               ; preds = %19, %37, %34
  %42 = phi i32 [ %36, %34 ], [ 1, %37 ], [ %24, %19 ], !dbg !5055
  call void @llvm.dbg.value(metadata i32 %42, metadata !5016, metadata !DIExpression()), !dbg !5021
  store i8 %13, ptr %12, align 1, !dbg !5078, !tbaa !1025
  store i8 %15, ptr %14, align 1, !dbg !5079, !tbaa !1025
  br label %43

43:                                               ; preds = %41, %9
  %44 = phi i32 [ 0, %9 ], [ %42, %41 ], !dbg !5080
  call void @llvm.dbg.value(metadata i32 %44, metadata !5016, metadata !DIExpression()), !dbg !5021
  ret i32 %44, !dbg !5081
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5082 i32 @strcoll(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #38

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: read) uwtable
define dso_local i32 @memcoll0(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #39 !dbg !5083 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5085, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata i64 %1, metadata !5086, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata ptr %2, metadata !5087, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata i64 %3, metadata !5088, metadata !DIExpression()), !dbg !5089
  %5 = icmp eq i64 %1, %3, !dbg !5090
  br i1 %5, label %6, label %11, !dbg !5092

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !5024, metadata !DIExpression()), !dbg !5093
  call void @llvm.dbg.value(metadata ptr %2, metadata !5027, metadata !DIExpression()), !dbg !5093
  call void @llvm.dbg.value(metadata i64 %1, metadata !5028, metadata !DIExpression()), !dbg !5093
  %7 = tail call i32 @bcmp(ptr %0, ptr %2, i64 %1), !dbg !5095
  %8 = icmp eq i32 %7, 0, !dbg !5096
  br i1 %8, label %9, label %11, !dbg !5097

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #44, !dbg !5098
  store i32 0, ptr %10, align 4, !dbg !5100, !tbaa !1016
  br label %35, !dbg !5101

11:                                               ; preds = %6, %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !5045, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata i64 %1, metadata !5048, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata ptr %2, metadata !5049, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata i64 %3, metadata !5050, metadata !DIExpression()), !dbg !5102
  %12 = tail call ptr @__errno_location() #44, !dbg !5102
  br label %13, !dbg !5104

13:                                               ; preds = %31, %11
  %14 = phi ptr [ %2, %11 ], [ %32, %31 ]
  %15 = phi i64 [ %3, %11 ], [ %26, %31 ]
  %16 = phi i64 [ %1, %11 ], [ %25, %31 ]
  %17 = phi ptr [ %0, %11 ], [ %33, %31 ]
  call void @llvm.dbg.value(metadata ptr %17, metadata !5045, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata i64 %16, metadata !5048, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata i64 %15, metadata !5050, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata ptr %14, metadata !5049, metadata !DIExpression()), !dbg !5102
  store i32 0, ptr %12, align 4, !dbg !5105, !tbaa !1016
  %18 = tail call i32 @strcoll(ptr noundef %17, ptr noundef %14) #42, !dbg !5106
  call void @llvm.dbg.value(metadata i32 %18, metadata !5051, metadata !DIExpression()), !dbg !5102
  %19 = icmp eq i32 %18, 0, !dbg !5107
  br i1 %19, label %20, label %35, !dbg !5104

20:                                               ; preds = %13
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #42, !dbg !5108
  %22 = add i64 %21, 1, !dbg !5109
  call void @llvm.dbg.value(metadata i64 %22, metadata !5052, metadata !DIExpression()), !dbg !5110
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #42, !dbg !5111
  %24 = add i64 %23, 1, !dbg !5112
  call void @llvm.dbg.value(metadata i64 %24, metadata !5054, metadata !DIExpression()), !dbg !5110
  call void @llvm.dbg.value(metadata !DIArgList(ptr %17, i64 %22), metadata !5045, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5102
  call void @llvm.dbg.value(metadata !DIArgList(ptr %14, i64 %24), metadata !5049, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5102
  %25 = sub i64 %16, %22, !dbg !5113
  call void @llvm.dbg.value(metadata i64 %25, metadata !5048, metadata !DIExpression()), !dbg !5102
  %26 = sub i64 %15, %24, !dbg !5114
  call void @llvm.dbg.value(metadata i64 %26, metadata !5050, metadata !DIExpression()), !dbg !5102
  %27 = icmp eq i64 %25, 0, !dbg !5115
  br i1 %27, label %28, label %31, !dbg !5116

28:                                               ; preds = %20
  %29 = icmp ne i64 %26, 0, !dbg !5117
  %30 = sext i1 %29 to i32, !dbg !5117
  br label %35

31:                                               ; preds = %20
  %32 = getelementptr inbounds i8, ptr %14, i64 %24, !dbg !5118
  call void @llvm.dbg.value(metadata ptr %32, metadata !5049, metadata !DIExpression()), !dbg !5102
  %33 = getelementptr inbounds i8, ptr %17, i64 %22, !dbg !5119
  call void @llvm.dbg.value(metadata ptr %33, metadata !5045, metadata !DIExpression()), !dbg !5102
  %34 = icmp eq i64 %26, 0, !dbg !5120
  br i1 %34, label %35, label %13, !llvm.loop !5121

35:                                               ; preds = %31, %13, %28, %9
  %36 = phi i32 [ 0, %9 ], [ %30, %28 ], [ 1, %31 ], [ %18, %13 ], !dbg !5123
  ret i32 %36, !dbg !5124
}

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #40 !dbg !5125 {
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
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #47, !dbg !5141
  br label %15, !dbg !5142

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5130, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5131
  %14 = tail call ptr @__errno_location() #44, !dbg !5143
  store i32 12, ptr %14, align 4, !dbg !5145, !tbaa !1016
  br label %15, !dbg !5146

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5131
  ret ptr %16, !dbg !5147
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

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
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { nofree nounwind memory(argmem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { mustprogress nounwind willreturn uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { nofree nounwind memory(readwrite, inaccessiblemem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #41 = { nounwind }
attributes #42 = { nounwind willreturn memory(read) }
attributes #43 = { noreturn nounwind }
attributes #44 = { nounwind willreturn memory(none) }
attributes #45 = { noreturn }
attributes #46 = { cold }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { nounwind allocsize(0) }
attributes #49 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!100, !477, !481, !496, !799, !841, !844, !846, !849, !851, !853, !855, !857, !859, !863, !558, !572, !623, !865, !867, !869, !871, !774, !877, !911, !913, !916, !918, !811, !828, !920, !922}
!llvm.ident = !{!925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925, !925}
!llvm.module.flags = !{!926, !927, !928, !929, !930, !931, !932}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/comm.c", directory: "/src", checksumkind: CSK_MD5, checksum: "38a1b8268c0573e3e950891e137bb09f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 35)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 52)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 60)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1512, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 189)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 5)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !14, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !14, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 62)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 944, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 118)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 80)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 65)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 41)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 149, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 69)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 50)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !38, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 155, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 57)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1248, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 156)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 430, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 1)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 431, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 10)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 431, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 24)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "hard_LC_COLLATE", scope: !100, file: !2, line: 40, type: !205, isLocal: true, isDefinition: true)
!100 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !101, retainedTypes: !158, globals: !168, splitDebugInlining: false, nameTableKind: None)
!101 = !{!102, !109, !114, !120, !135, !149}
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 78, baseType: !103, size: 32, elements: !104)
!103 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!104 = !{!105, !106, !107, !108}
!105 = !DIEnumerator(name: "CHECK_ORDER_OPTION", value: 256)
!106 = !DIEnumerator(name: "NOCHECK_ORDER_OPTION", value: 257)
!107 = !DIEnumerator(name: "OUTPUT_DELIMITER_OPTION", value: 258)
!108 = !DIEnumerator(name: "TOTAL_OPTION", value: 259)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 64, baseType: !103, size: 32, elements: !110)
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "CHECK_ORDER_DEFAULT", value: 0)
!112 = !DIEnumerator(name: "CHECK_ORDER_ENABLED", value: 1)
!113 = !DIEnumerator(name: "CHECK_ORDER_DISABLED", value: 2)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !115, line: 337, baseType: !116, size: 32, elements: !117)
!115 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!116 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!117 = !{!118, !119}
!118 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!119 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !121, line: 46, baseType: !103, size: 32, elements: !122)
!121 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!123 = !DIEnumerator(name: "_ISupper", value: 256)
!124 = !DIEnumerator(name: "_ISlower", value: 512)
!125 = !DIEnumerator(name: "_ISalpha", value: 1024)
!126 = !DIEnumerator(name: "_ISdigit", value: 2048)
!127 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!128 = !DIEnumerator(name: "_ISspace", value: 8192)
!129 = !DIEnumerator(name: "_ISprint", value: 16384)
!130 = !DIEnumerator(name: "_ISgraph", value: 32768)
!131 = !DIEnumerator(name: "_ISblank", value: 1)
!132 = !DIEnumerator(name: "_IScntrl", value: 2)
!133 = !DIEnumerator(name: "_ISpunct", value: 4)
!134 = !DIEnumerator(name: "_ISalnum", value: 8)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !136, line: 42, baseType: !103, size: 32, elements: !137)
!136 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!138 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!139 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!140 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!141 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!142 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!143 = !DIEnumerator(name: "c_quoting_style", value: 5)
!144 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!145 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!146 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!147 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!148 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !150, line: 44, baseType: !103, size: 32, elements: !151)
!150 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!151 = !{!152, !153, !154, !155, !156, !157}
!152 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!153 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!154 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!155 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!156 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!157 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!158 = !{!159, !160, !116, !161, !162, !165, !167}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!161 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !163, line: 46, baseType: !164)
!163 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!164 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!167 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!168 = !{!0, !7, !12, !17, !22, !27, !32, !34, !36, !41, !46, !51, !56, !61, !66, !71, !73, !78, !83, !88, !93, !169, !171, !176, !181, !186, !191, !193, !198, !98, !203, !206, !208, !287, !289, !291, !296, !301, !306, !308, !310, !315, !317, !319, !321, !326, !331, !333, !335, !337, !339, !341, !343, !345, !350, !355, !360, !362, !364, !366, !368, !370, !375, !377, !379, !384, !389, !394, !399, !401, !403, !405, !407, !409, !411, !413, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !454, !456, !458, !463}
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 437, type: !29, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !2, line: 466, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 37)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !2, line: 477, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 14)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 477, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 20)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !2, line: 477, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 16)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !2, line: 489, type: !188, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !2, line: 491, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 25)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !2, line: 497, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 17)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "total_option", scope: !100, file: !2, line: 61, type: !205, isLocal: true, isDefinition: true)
!205 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "check_input_order", scope: !100, file: !2, line: 69, type: !109, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !210, file: !115, line: 575, type: !116, isLocal: true, isDefinition: true)
!210 = distinct !DISubprogram(name: "oputs_", scope: !115, file: !115, line: 573, type: !211, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !213)
!211 = !DISubroutineType(cc: DW_CC_nocall, types: !212)
!212 = !{null, !165, !165}
!213 = !{!214, !215, !216, !219, !220, !221, !222, !226, !227, !228, !229, !231, !281, !282, !283, !285, !286}
!214 = !DILocalVariable(name: "program", arg: 1, scope: !210, file: !115, line: 573, type: !165)
!215 = !DILocalVariable(name: "option", arg: 2, scope: !210, file: !115, line: 573, type: !165)
!216 = !DILocalVariable(name: "term", scope: !217, file: !115, line: 585, type: !165)
!217 = distinct !DILexicalBlock(scope: !218, file: !115, line: 582, column: 5)
!218 = distinct !DILexicalBlock(scope: !210, file: !115, line: 581, column: 7)
!219 = !DILocalVariable(name: "double_space", scope: !210, file: !115, line: 594, type: !205)
!220 = !DILocalVariable(name: "first_word", scope: !210, file: !115, line: 595, type: !165)
!221 = !DILocalVariable(name: "option_text", scope: !210, file: !115, line: 596, type: !165)
!222 = !DILocalVariable(name: "s", scope: !223, file: !115, line: 608, type: !165)
!223 = distinct !DILexicalBlock(scope: !224, file: !115, line: 605, column: 5)
!224 = distinct !DILexicalBlock(scope: !225, file: !115, line: 604, column: 12)
!225 = distinct !DILexicalBlock(scope: !210, file: !115, line: 597, column: 7)
!226 = !DILocalVariable(name: "spaces", scope: !223, file: !115, line: 609, type: !162)
!227 = !DILocalVariable(name: "anchor_len", scope: !210, file: !115, line: 620, type: !162)
!228 = !DILocalVariable(name: "desc_text", scope: !210, file: !115, line: 625, type: !165)
!229 = !DILocalVariable(name: "__ptr", scope: !230, file: !115, line: 644, type: !165)
!230 = distinct !DILexicalBlock(scope: !210, file: !115, line: 644, column: 3)
!231 = !DILocalVariable(name: "__stream", scope: !230, file: !115, line: 644, type: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !235)
!234 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !237)
!236 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !253, !255, !256, !257, !261, !262, !264, !265, !268, !270, !273, !276, !277, !278, !279, !280}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !235, file: !236, line: 51, baseType: !116, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !235, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !235, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !235, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !235, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !235, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !235, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !235, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !235, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !235, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !235, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !235, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !235, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !236, line: 36, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !235, file: !236, line: 70, baseType: !254, size: 64, offset: 832)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !235, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !235, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !235, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !259, line: 152, baseType: !260)
!259 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!260 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !235, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !235, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!263 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !235, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !235, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !236, line: 43, baseType: null)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !235, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !259, line: 153, baseType: !260)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !235, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !236, line: 37, flags: DIFlagFwdDecl)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !235, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !236, line: 38, flags: DIFlagFwdDecl)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !235, file: !236, line: 93, baseType: !254, size: 64, offset: 1344)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !235, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !235, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !235, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !235, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!281 = !DILocalVariable(name: "__cnt", scope: !230, file: !115, line: 644, type: !162)
!282 = !DILocalVariable(name: "url_program", scope: !210, file: !115, line: 648, type: !165)
!283 = !DILocalVariable(name: "__ptr", scope: !284, file: !115, line: 686, type: !165)
!284 = distinct !DILexicalBlock(scope: !210, file: !115, line: 686, column: 3)
!285 = !DILocalVariable(name: "__stream", scope: !284, file: !115, line: 686, type: !232)
!286 = !DILocalVariable(name: "__cnt", scope: !284, file: !115, line: 686, type: !162)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !115, line: 585, type: !29, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !115, line: 586, type: !29, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !115, line: 595, type: !293, isLocal: true, isDefinition: true)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 4)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !115, line: 620, type: !298, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 6)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !115, line: 648, type: !303, isLocal: true, isDefinition: true)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 2)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !115, line: 648, type: !29, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !115, line: 649, type: !293, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !115, line: 649, type: !312, isLocal: true, isDefinition: true)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 3)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !115, line: 650, type: !29, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !115, line: 651, type: !298, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !115, line: 651, type: !298, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !115, line: 652, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 7)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !115, line: 653, type: !328, isLocal: true, isDefinition: true)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 8)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !115, line: 654, type: !90, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !115, line: 655, type: !90, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !115, line: 656, type: !90, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !115, line: 657, type: !90, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !115, line: 663, type: !323, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !115, line: 664, type: !90, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !115, line: 669, type: !200, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !115, line: 669, type: !347, isLocal: true, isDefinition: true)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 40)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !115, line: 676, type: !352, isLocal: true, isDefinition: true)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 15)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !115, line: 676, type: !357, isLocal: true, isDefinition: true)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 61)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !115, line: 679, type: !312, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !115, line: 683, type: !29, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !115, line: 688, type: !29, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !115, line: 691, type: !328, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !115, line: 839, type: !188, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !115, line: 840, type: !372, isLocal: true, isDefinition: true)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 22)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !115, line: 841, type: !352, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !115, line: 862, type: !293, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !115, line: 868, type: !381, isLocal: true, isDefinition: true)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 71)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !115, line: 875, type: !386, isLocal: true, isDefinition: true)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 27)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !115, line: 877, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 51)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !115, line: 877, type: !396, isLocal: true, isDefinition: true)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 12)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !396, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !178, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !200, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !298, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !188, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !29, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !328, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(name: "long_options", scope: !100, file: !2, line: 86, type: !415, isLocal: true, isDefinition: true)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 2048, elements: !329)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !418, line: 50, size: 256, elements: !419)
!418 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!419 = !{!420, !421, !422, !424}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !417, file: !418, line: 52, baseType: !165, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !417, file: !418, line: 55, baseType: !116, size: 32, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !417, file: !418, line: 56, baseType: !423, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !417, file: !418, line: 57, baseType: !116, size: 32, offset: 192)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(name: "only_file_1", scope: !100, file: !2, line: 43, type: !205, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(name: "only_file_2", scope: !100, file: !2, line: 46, type: !205, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "both", scope: !100, file: !2, line: 49, type: !205, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "delim", scope: !100, file: !2, line: 58, type: !167, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(name: "col_sep_len", scope: !100, file: !2, line: 74, type: !162, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !303, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(name: "col_sep", scope: !100, file: !2, line: 73, type: !165, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !303, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !303, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !2, line: 297, type: !312, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !2, line: 400, type: !183, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !2, line: 408, type: !183, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !2, line: 417, type: !451, isLocal: true, isDefinition: true)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 29)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !115, line: 952, type: !396, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(name: "seen_unpairable", scope: !100, file: !2, line: 52, type: !205, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !2, line: 242, type: !460, isLocal: true, isDefinition: true)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 31)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "issued_disorder_warning", scope: !100, file: !2, line: 55, type: !465, isLocal: true, isDefinition: true)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 16, elements: !304)
!466 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!467 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!468 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!469 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!470 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!471 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !474, line: 3, type: !352, isLocal: true, isDefinition: true)
!474 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "Version", scope: !477, file: !474, line: 3, type: !165, isLocal: false, isDefinition: true)
!477 = distinct !DICompileUnit(language: DW_LANG_C11, file: !474, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !478, splitDebugInlining: false, nameTableKind: None)
!478 = !{!472, !475}
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(name: "file_name", scope: !481, file: !482, line: 45, type: !165, isLocal: true, isDefinition: true)
!481 = distinct !DICompileUnit(language: DW_LANG_C11, file: !482, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !483, splitDebugInlining: false, nameTableKind: None)
!482 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!483 = !{!484, !486, !488, !490, !479, !492}
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !482, line: 121, type: !323, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !482, line: 121, type: !396, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !482, line: 123, type: !323, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !482, line: 126, type: !312, isLocal: true, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !481, file: !482, line: 55, type: !205, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !496, file: !497, line: 66, type: !548, isLocal: false, isDefinition: true)
!496 = distinct !DICompileUnit(language: DW_LANG_C11, file: !497, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !498, globals: !499, splitDebugInlining: false, nameTableKind: None)
!497 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!498 = !{!160, !167}
!499 = !{!500, !502, !527, !529, !531, !533, !494, !535, !537, !539, !541, !546}
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !497, line: 272, type: !29, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(name: "old_file_name", scope: !504, file: !497, line: 304, type: !165, isLocal: true, isDefinition: true)
!504 = distinct !DISubprogram(name: "verror_at_line", scope: !497, file: !497, line: 298, type: !505, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !520)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !116, !116, !165, !103, !165, !507}
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !508, line: 52, baseType: !509)
!508 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !510, line: 14, baseType: !511)
!510 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !512, baseType: !513)
!512 = !DIFile(filename: "lib/error.c", directory: "/src")
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !514)
!514 = !{!515, !516, !517, !518, !519}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !513, file: !512, baseType: !160, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !513, file: !512, baseType: !160, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !513, file: !512, baseType: !160, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !513, file: !512, baseType: !116, size: 32, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !513, file: !512, baseType: !116, size: 32, offset: 224)
!520 = !{!521, !522, !523, !524, !525, !526}
!521 = !DILocalVariable(name: "status", arg: 1, scope: !504, file: !497, line: 298, type: !116)
!522 = !DILocalVariable(name: "errnum", arg: 2, scope: !504, file: !497, line: 298, type: !116)
!523 = !DILocalVariable(name: "file_name", arg: 3, scope: !504, file: !497, line: 298, type: !165)
!524 = !DILocalVariable(name: "line_number", arg: 4, scope: !504, file: !497, line: 298, type: !103)
!525 = !DILocalVariable(name: "message", arg: 5, scope: !504, file: !497, line: 298, type: !165)
!526 = !DILocalVariable(name: "args", arg: 6, scope: !504, file: !497, line: 298, type: !507)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(name: "old_line_number", scope: !504, file: !497, line: 305, type: !103, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !497, line: 338, type: !293, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !497, line: 346, type: !328, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !497, line: 346, type: !303, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(name: "error_message_count", scope: !496, file: !497, line: 69, type: !103, isLocal: false, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !496, file: !497, line: 295, type: !116, isLocal: false, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !497, line: 208, type: !323, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !497, line: 208, type: !543, isLocal: true, isDefinition: true)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 21)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !497, line: 214, type: !29, isLocal: true, isDefinition: true)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{null}
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !553, line: 35, type: !303, isLocal: true, isDefinition: true)
!553 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !553, line: 35, type: !298, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(name: "program_name", scope: !558, file: !559, line: 31, type: !165, isLocal: false, isDefinition: true)
!558 = distinct !DICompileUnit(language: DW_LANG_C11, file: !559, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !560, globals: !561, splitDebugInlining: false, nameTableKind: None)
!559 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!560 = !{!159}
!561 = !{!556, !562, !564}
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !559, line: 46, type: !328, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !559, line: 49, type: !293, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "utf07FF", scope: !568, file: !569, line: 46, type: !596, isLocal: true, isDefinition: true)
!568 = distinct !DISubprogram(name: "proper_name_lite", scope: !569, file: !569, line: 38, type: !570, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !574)
!569 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!570 = !DISubroutineType(types: !571)
!571 = !{!165, !165, !165}
!572 = distinct !DICompileUnit(language: DW_LANG_C11, file: !569, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !573, splitDebugInlining: false, nameTableKind: None)
!573 = !{!566}
!574 = !{!575, !576, !577, !578, !583}
!575 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !568, file: !569, line: 38, type: !165)
!576 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !568, file: !569, line: 38, type: !165)
!577 = !DILocalVariable(name: "translation", scope: !568, file: !569, line: 40, type: !165)
!578 = !DILocalVariable(name: "w", scope: !568, file: !569, line: 47, type: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !580, line: 37, baseType: !581)
!580 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !259, line: 57, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !259, line: 42, baseType: !103)
!583 = !DILocalVariable(name: "mbs", scope: !568, file: !569, line: 48, type: !584)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !585, line: 6, baseType: !586)
!585 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !587, line: 21, baseType: !588)
!587 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !587, line: 13, size: 64, elements: !589)
!589 = !{!590, !591}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !588, file: !587, line: 15, baseType: !116, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !588, file: !587, line: 20, baseType: !592, size: 32, offset: 32)
!592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !588, file: !587, line: 16, size: 32, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !592, file: !587, line: 18, baseType: !103, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !592, file: !587, line: 19, baseType: !293, size: 32)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 16, elements: !304)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !599, line: 78, type: !328, isLocal: true, isDefinition: true)
!599 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !599, line: 79, type: !298, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !599, line: 80, type: !604, isLocal: true, isDefinition: true)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 13)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !599, line: 81, type: !604, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !599, line: 82, type: !183, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !599, line: 83, type: !303, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !599, line: 84, type: !328, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !599, line: 85, type: !323, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !599, line: 86, type: !323, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !599, line: 87, type: !328, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !623, file: !599, line: 76, type: !695, isLocal: false, isDefinition: true)
!623 = distinct !DICompileUnit(language: DW_LANG_C11, file: !599, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !624, retainedTypes: !630, globals: !631, splitDebugInlining: false, nameTableKind: None)
!624 = !{!135, !625, !120}
!625 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !136, line: 254, baseType: !103, size: 32, elements: !626)
!626 = !{!627, !628, !629}
!627 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!628 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!629 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!630 = !{!116, !161, !162}
!631 = !{!597, !600, !602, !607, !609, !611, !613, !615, !617, !619, !621, !632, !636, !646, !648, !653, !655, !657, !659, !661, !684, !691, !693}
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !623, file: !599, line: 92, type: !634, isLocal: false, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 320, elements: !91)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !623, file: !599, line: 1040, type: !638, isLocal: false, isDefinition: true)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !599, line: 56, size: 448, elements: !639)
!639 = !{!640, !641, !642, !644, !645}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !638, file: !599, line: 59, baseType: !135, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !599, line: 62, baseType: !116, size: 32, offset: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !638, file: !599, line: 66, baseType: !643, size: 256, offset: 64)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !329)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !638, file: !599, line: 69, baseType: !165, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !638, file: !599, line: 72, baseType: !165, size: 64, offset: 384)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !623, file: !599, line: 107, type: !638, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(name: "slot0", scope: !623, file: !599, line: 831, type: !650, isLocal: true, isDefinition: true)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 256)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !599, line: 321, type: !303, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !599, line: 357, type: !303, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !599, line: 358, type: !303, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !599, line: 199, type: !323, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(name: "quote", scope: !663, file: !599, line: 228, type: !682, isLocal: true, isDefinition: true)
!663 = distinct !DISubprogram(name: "gettext_quote", scope: !599, file: !599, line: 197, type: !664, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !666)
!664 = !DISubroutineType(types: !665)
!665 = !{!165, !165, !135}
!666 = !{!667, !668, !669, !670, !671}
!667 = !DILocalVariable(name: "msgid", arg: 1, scope: !663, file: !599, line: 197, type: !165)
!668 = !DILocalVariable(name: "s", arg: 2, scope: !663, file: !599, line: 197, type: !135)
!669 = !DILocalVariable(name: "translation", scope: !663, file: !599, line: 199, type: !165)
!670 = !DILocalVariable(name: "w", scope: !663, file: !599, line: 229, type: !579)
!671 = !DILocalVariable(name: "mbs", scope: !663, file: !599, line: 230, type: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !585, line: 6, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !587, line: 21, baseType: !674)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !587, line: 13, size: 64, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !674, file: !587, line: 15, baseType: !116, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !674, file: !587, line: 20, baseType: !678, size: 32, offset: 32)
!678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !674, file: !587, line: 16, size: 32, elements: !679)
!679 = !{!680, !681}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !678, file: !587, line: 18, baseType: !103, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !678, file: !587, line: 19, baseType: !293, size: 32)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 64, elements: !683)
!683 = !{!305, !295}
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(name: "slotvec", scope: !623, file: !599, line: 834, type: !686, isLocal: true, isDefinition: true)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !599, line: 823, size: 128, elements: !688)
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !687, file: !599, line: 825, baseType: !162, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !687, file: !599, line: 826, baseType: !159, size: 64, offset: 64)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(name: "nslots", scope: !623, file: !599, line: 832, type: !116, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(name: "slotvec0", scope: !623, file: !599, line: 833, type: !687, isLocal: true, isDefinition: true)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 704, elements: !697)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!697 = !{!698}
!698 = !DISubrange(count: 11)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !701, line: 67, type: !396, isLocal: true, isDefinition: true)
!701 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !701, line: 69, type: !323, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !701, line: 83, type: !323, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !701, line: 83, type: !293, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !701, line: 85, type: !303, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !701, line: 88, type: !712, isLocal: true, isDefinition: true)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: 171)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !701, line: 88, type: !717, isLocal: true, isDefinition: true)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 34)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !701, line: 105, type: !188, isLocal: true, isDefinition: true)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !701, line: 109, type: !724, isLocal: true, isDefinition: true)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 23)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !701, line: 113, type: !729, isLocal: true, isDefinition: true)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 28)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !701, line: 120, type: !734, isLocal: true, isDefinition: true)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !735)
!735 = !{!736}
!736 = !DISubrange(count: 32)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !701, line: 127, type: !739, isLocal: true, isDefinition: true)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 36)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !701, line: 134, type: !347, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !701, line: 142, type: !746, isLocal: true, isDefinition: true)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 44)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !701, line: 150, type: !751, isLocal: true, isDefinition: true)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !752)
!752 = !{!753}
!753 = !DISubrange(count: 48)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !701, line: 159, type: !14, isLocal: true, isDefinition: true)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !701, line: 170, type: !19, isLocal: true, isDefinition: true)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(scope: null, file: !701, line: 248, type: !183, isLocal: true, isDefinition: true)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !701, line: 248, type: !372, isLocal: true, isDefinition: true)
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(scope: null, file: !701, line: 254, type: !183, isLocal: true, isDefinition: true)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !701, line: 254, type: !178, isLocal: true, isDefinition: true)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(scope: null, file: !701, line: 254, type: !347, isLocal: true, isDefinition: true)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(scope: null, file: !701, line: 259, type: !3, isLocal: true, isDefinition: true)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !701, line: 259, type: !451, isLocal: true, isDefinition: true)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !774, file: !775, line: 26, type: !777, isLocal: false, isDefinition: true)
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !776, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!776 = !{!772}
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 376, elements: !778)
!778 = !{!779}
!779 = !DISubrange(count: 47)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !782, line: 34, type: !312, isLocal: true, isDefinition: true)
!782 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(scope: null, file: !782, line: 34, type: !323, isLocal: true, isDefinition: true)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(scope: null, file: !782, line: 34, type: !200, isLocal: true, isDefinition: true)
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(scope: null, file: !789, line: 39, type: !323, isLocal: true, isDefinition: true)
!789 = !DIFile(filename: "lib/xmemcoll.c", directory: "/src", checksumkind: CSK_MD5, checksum: "77ad181911e918137a808414fb759bea")
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(scope: null, file: !789, line: 39, type: !195, isLocal: true, isDefinition: true)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(scope: null, file: !789, line: 40, type: !794, isLocal: true, isDefinition: true)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !795)
!795 = !{!796}
!796 = !DISubrange(count: 43)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(name: "exit_failure", scope: !799, file: !800, line: 24, type: !802, isLocal: false, isDefinition: true)
!799 = distinct !DICompileUnit(language: DW_LANG_C11, file: !800, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !801, splitDebugInlining: false, nameTableKind: None)
!800 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!801 = !{!797}
!802 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !116)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(scope: null, file: !789, line: 41, type: !173, isLocal: true, isDefinition: true)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !807, file: !808, line: 506, type: !116, isLocal: true, isDefinition: true)
!807 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !808, file: !808, line: 485, type: !809, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !813)
!808 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!809 = !DISubroutineType(types: !810)
!810 = !{!116, !116, !116}
!811 = distinct !DICompileUnit(language: DW_LANG_C11, file: !808, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !812, splitDebugInlining: false, nameTableKind: None)
!812 = !{!805}
!813 = !{!814, !815, !816, !817, !820}
!814 = !DILocalVariable(name: "fd", arg: 1, scope: !807, file: !808, line: 485, type: !116)
!815 = !DILocalVariable(name: "target", arg: 2, scope: !807, file: !808, line: 485, type: !116)
!816 = !DILocalVariable(name: "result", scope: !807, file: !808, line: 487, type: !116)
!817 = !DILocalVariable(name: "flags", scope: !818, file: !808, line: 530, type: !116)
!818 = distinct !DILexicalBlock(scope: !819, file: !808, line: 529, column: 5)
!819 = distinct !DILexicalBlock(scope: !807, file: !808, line: 528, column: 7)
!820 = !DILocalVariable(name: "saved_errno", scope: !821, file: !808, line: 533, type: !116)
!821 = distinct !DILexicalBlock(scope: !822, file: !808, line: 532, column: 9)
!822 = distinct !DILexicalBlock(scope: !818, file: !808, line: 531, column: 11)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(scope: null, file: !825, line: 108, type: !85, isLocal: true, isDefinition: true)
!825 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(name: "internal_state", scope: !828, file: !825, line: 97, type: !831, isLocal: true, isDefinition: true)
!828 = distinct !DICompileUnit(language: DW_LANG_C11, file: !825, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !829, globals: !830, splitDebugInlining: false, nameTableKind: None)
!829 = !{!160, !162, !167}
!830 = !{!823, !826}
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !585, line: 6, baseType: !832)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !587, line: 21, baseType: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !587, line: 13, size: 64, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !833, file: !587, line: 15, baseType: !116, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !833, file: !587, line: 20, baseType: !837, size: 32, offset: 32)
!837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !833, file: !587, line: 16, size: 32, elements: !838)
!838 = !{!839, !840}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !837, file: !587, line: 18, baseType: !103, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !837, file: !587, line: 19, baseType: !293, size: 32)
!841 = distinct !DICompileUnit(language: DW_LANG_C11, file: !842, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !843, splitDebugInlining: false, nameTableKind: None)
!842 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!843 = !{!149}
!844 = distinct !DICompileUnit(language: DW_LANG_C11, file: !845, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!845 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!846 = distinct !DICompileUnit(language: DW_LANG_C11, file: !847, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !848, splitDebugInlining: false, nameTableKind: None)
!847 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!848 = !{!160}
!849 = distinct !DICompileUnit(language: DW_LANG_C11, file: !850, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!850 = !DIFile(filename: "lib/fopen-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc91097c7b0e7b372b0b37f4c608799b")
!851 = distinct !DICompileUnit(language: DW_LANG_C11, file: !852, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!852 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!853 = distinct !DICompileUnit(language: DW_LANG_C11, file: !854, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !848, splitDebugInlining: false, nameTableKind: None)
!854 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!855 = distinct !DICompileUnit(language: DW_LANG_C11, file: !856, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!856 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!857 = distinct !DICompileUnit(language: DW_LANG_C11, file: !553, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !858, splitDebugInlining: false, nameTableKind: None)
!858 = !{!551, !554}
!859 = distinct !DICompileUnit(language: DW_LANG_C11, file: !860, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !861, splitDebugInlining: false, nameTableKind: None)
!860 = !DIFile(filename: "lib/linebuffer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d85d9b8947aefddab7f1bb42f1d43333")
!861 = !{!862}
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!863 = distinct !DICompileUnit(language: DW_LANG_C11, file: !864, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!864 = !DIFile(filename: "lib/memcmp2.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e6bcc41ab98d01454beab912275e871e")
!865 = distinct !DICompileUnit(language: DW_LANG_C11, file: !866, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!866 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!867 = distinct !DICompileUnit(language: DW_LANG_C11, file: !868, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !848, splitDebugInlining: false, nameTableKind: None)
!868 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!869 = distinct !DICompileUnit(language: DW_LANG_C11, file: !870, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!870 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!871 = distinct !DICompileUnit(language: DW_LANG_C11, file: !701, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !872, retainedTypes: !848, globals: !876, splitDebugInlining: false, nameTableKind: None)
!872 = !{!873}
!873 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !701, line: 40, baseType: !103, size: 32, elements: !874)
!874 = !{!875}
!875 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!876 = !{!699, !702, !704, !706, !708, !710, !715, !720, !722, !727, !732, !737, !742, !744, !749, !754, !756, !758, !760, !762, !764, !766, !768, !770}
!877 = distinct !DICompileUnit(language: DW_LANG_C11, file: !878, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !879, retainedTypes: !910, splitDebugInlining: false, nameTableKind: None)
!878 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!879 = !{!880, !892}
!880 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !881, file: !878, line: 188, baseType: !103, size: 32, elements: !890)
!881 = distinct !DISubprogram(name: "x2nrealloc", scope: !878, file: !878, line: 176, type: !882, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !885)
!882 = !DISubroutineType(types: !883)
!883 = !{!160, !160, !884, !162}
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!885 = !{!886, !887, !888, !889}
!886 = !DILocalVariable(name: "p", arg: 1, scope: !881, file: !878, line: 176, type: !160)
!887 = !DILocalVariable(name: "pn", arg: 2, scope: !881, file: !878, line: 176, type: !884)
!888 = !DILocalVariable(name: "s", arg: 3, scope: !881, file: !878, line: 176, type: !162)
!889 = !DILocalVariable(name: "n", scope: !881, file: !878, line: 178, type: !162)
!890 = !{!891}
!891 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!892 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !893, file: !878, line: 228, baseType: !103, size: 32, elements: !890)
!893 = distinct !DISubprogram(name: "xpalloc", scope: !878, file: !878, line: 223, type: !894, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !900)
!894 = !DISubroutineType(types: !895)
!895 = !{!160, !160, !896, !897, !899, !897}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !898, line: 130, baseType: !899)
!898 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !163, line: 35, baseType: !260)
!900 = !{!901, !902, !903, !904, !905, !906, !907, !908, !909}
!901 = !DILocalVariable(name: "pa", arg: 1, scope: !893, file: !878, line: 223, type: !160)
!902 = !DILocalVariable(name: "pn", arg: 2, scope: !893, file: !878, line: 223, type: !896)
!903 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !893, file: !878, line: 223, type: !897)
!904 = !DILocalVariable(name: "n_max", arg: 4, scope: !893, file: !878, line: 223, type: !899)
!905 = !DILocalVariable(name: "s", arg: 5, scope: !893, file: !878, line: 223, type: !897)
!906 = !DILocalVariable(name: "n0", scope: !893, file: !878, line: 230, type: !897)
!907 = !DILocalVariable(name: "n", scope: !893, file: !878, line: 237, type: !897)
!908 = !DILocalVariable(name: "nbytes", scope: !893, file: !878, line: 248, type: !897)
!909 = !DILocalVariable(name: "adjusted_nbytes", scope: !893, file: !878, line: 252, type: !897)
!910 = !{!159, !160, !205, !260, !164}
!911 = distinct !DICompileUnit(language: DW_LANG_C11, file: !782, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !912, splitDebugInlining: false, nameTableKind: None)
!912 = !{!780, !783, !785}
!913 = distinct !DICompileUnit(language: DW_LANG_C11, file: !789, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !914, globals: !915, splitDebugInlining: false, nameTableKind: None)
!914 = !{!135}
!915 = !{!787, !790, !792, !803}
!916 = distinct !DICompileUnit(language: DW_LANG_C11, file: !917, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !848, splitDebugInlining: false, nameTableKind: None)
!917 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!918 = distinct !DICompileUnit(language: DW_LANG_C11, file: !919, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!919 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!920 = distinct !DICompileUnit(language: DW_LANG_C11, file: !921, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!921 = !DIFile(filename: "lib/memcoll.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f316fa5066b9311c53750cfc7e26d495")
!922 = distinct !DICompileUnit(language: DW_LANG_C11, file: !923, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !924, splitDebugInlining: false, nameTableKind: None)
!923 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!924 = !{!205, !164, !160}
!925 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!926 = !{i32 7, !"Dwarf Version", i32 5}
!927 = !{i32 2, !"Debug Info Version", i32 3}
!928 = !{i32 1, !"wchar_size", i32 4}
!929 = !{i32 8, !"PIC Level", i32 2}
!930 = !{i32 7, !"PIE Level", i32 2}
!931 = !{i32 7, !"uwtable", i32 2}
!932 = !{i32 7, !"frame-pointer", i32 1}
!933 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 100, type: !934, scopeLine: 101, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !936)
!934 = !DISubroutineType(types: !935)
!935 = !{null, !116}
!936 = !{!937}
!937 = !DILocalVariable(name: "status", arg: 1, scope: !933, file: !2, line: 100, type: !116)
!938 = !DILocation(line: 0, scope: !933)
!939 = !DILocation(line: 102, column: 14, scope: !940)
!940 = distinct !DILexicalBlock(scope: !933, file: !2, line: 102, column: 7)
!941 = !DILocation(line: 102, column: 7, scope: !933)
!942 = !DILocation(line: 103, column: 5, scope: !943)
!943 = distinct !DILexicalBlock(scope: !940, file: !2, line: 103, column: 5)
!944 = !{!945, !945, i64 0}
!945 = !{!"any pointer", !946, i64 0}
!946 = !{!"omnipotent char", !947, i64 0}
!947 = !{!"Simple C/C++ TBAA"}
!948 = !DILocation(line: 106, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !940, file: !2, line: 105, column: 5)
!950 = !DILocation(line: 110, column: 7, scope: !949)
!951 = !DILocation(line: 113, column: 7, scope: !949)
!952 = !DILocation(line: 117, column: 7, scope: !949)
!953 = !DILocation(line: 123, column: 7, scope: !949)
!954 = !DILocation(line: 126, column: 7, scope: !949)
!955 = !DILocation(line: 129, column: 7, scope: !949)
!956 = !DILocation(line: 132, column: 7, scope: !949)
!957 = !DILocation(line: 137, column: 7, scope: !949)
!958 = !DILocation(line: 141, column: 7, scope: !949)
!959 = !DILocation(line: 145, column: 7, scope: !949)
!960 = !DILocation(line: 149, column: 7, scope: !949)
!961 = !DILocation(line: 153, column: 7, scope: !949)
!962 = !DILocation(line: 154, column: 7, scope: !949)
!963 = !DILocation(line: 155, column: 7, scope: !949)
!964 = !DILocation(line: 159, column: 7, scope: !949)
!965 = !DILocalVariable(name: "program", arg: 1, scope: !966, file: !115, line: 836, type: !165)
!966 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !115, file: !115, line: 836, type: !967, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !969)
!967 = !DISubroutineType(types: !968)
!968 = !{null, !165}
!969 = !{!965, !970, !977, !978, !980, !981}
!970 = !DILocalVariable(name: "infomap", scope: !966, file: !115, line: 838, type: !971)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !972, size: 896, elements: !324)
!972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !973)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !966, file: !115, line: 838, size: 128, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !973, file: !115, line: 838, baseType: !165, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !973, file: !115, line: 838, baseType: !165, size: 64, offset: 64)
!977 = !DILocalVariable(name: "node", scope: !966, file: !115, line: 848, type: !165)
!978 = !DILocalVariable(name: "map_prog", scope: !966, file: !115, line: 849, type: !979)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!980 = !DILocalVariable(name: "lc_messages", scope: !966, file: !115, line: 861, type: !165)
!981 = !DILocalVariable(name: "url_program", scope: !966, file: !115, line: 874, type: !165)
!982 = !DILocation(line: 0, scope: !966, inlinedAt: !983)
!983 = distinct !DILocation(line: 166, column: 7, scope: !949)
!984 = !DILocation(line: 857, column: 3, scope: !966, inlinedAt: !983)
!985 = !DILocation(line: 861, column: 29, scope: !966, inlinedAt: !983)
!986 = !DILocation(line: 862, column: 7, scope: !987, inlinedAt: !983)
!987 = distinct !DILexicalBlock(scope: !966, file: !115, line: 862, column: 7)
!988 = !DILocation(line: 862, column: 19, scope: !987, inlinedAt: !983)
!989 = !DILocation(line: 862, column: 22, scope: !987, inlinedAt: !983)
!990 = !DILocation(line: 862, column: 7, scope: !966, inlinedAt: !983)
!991 = !DILocation(line: 868, column: 7, scope: !992, inlinedAt: !983)
!992 = distinct !DILexicalBlock(scope: !987, file: !115, line: 863, column: 5)
!993 = !DILocation(line: 870, column: 5, scope: !992, inlinedAt: !983)
!994 = !DILocation(line: 875, column: 3, scope: !966, inlinedAt: !983)
!995 = !DILocation(line: 877, column: 3, scope: !966, inlinedAt: !983)
!996 = !DILocation(line: 168, column: 3, scope: !933)
!997 = !DISubprogram(name: "dcgettext", scope: !998, file: !998, line: 51, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!998 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!999 = !DISubroutineType(types: !1000)
!1000 = !{!159, !165, !165, !116}
!1001 = !{}
!1002 = !DISubprogram(name: "__fprintf_chk", scope: !1003, file: !1003, line: 93, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1003 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!116, !1006, !116, !1007, null}
!1006 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !232)
!1007 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !165)
!1008 = !DISubprogram(name: "__printf_chk", scope: !1003, file: !1003, line: 95, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!116, !116, !1007, null}
!1011 = !DISubprogram(name: "fputs_unlocked", scope: !508, file: !508, line: 691, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!116, !1007, !1006}
!1014 = !DILocation(line: 0, scope: !210)
!1015 = !DILocation(line: 581, column: 7, scope: !218)
!1016 = !{!1017, !1017, i64 0}
!1017 = !{!"int", !946, i64 0}
!1018 = !DILocation(line: 581, column: 19, scope: !218)
!1019 = !DILocation(line: 581, column: 7, scope: !210)
!1020 = !DILocation(line: 585, column: 26, scope: !217)
!1021 = !DILocation(line: 0, scope: !217)
!1022 = !DILocation(line: 586, column: 23, scope: !217)
!1023 = !DILocation(line: 586, column: 28, scope: !217)
!1024 = !DILocation(line: 586, column: 32, scope: !217)
!1025 = !{!946, !946, i64 0}
!1026 = !DILocation(line: 586, column: 38, scope: !217)
!1027 = !DILocalVariable(name: "__s1", arg: 1, scope: !1028, file: !1029, line: 1359, type: !165)
!1028 = distinct !DISubprogram(name: "streq", scope: !1029, file: !1029, line: 1359, type: !1030, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1032)
!1029 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!205, !165, !165}
!1032 = !{!1027, !1033}
!1033 = !DILocalVariable(name: "__s2", arg: 2, scope: !1028, file: !1029, line: 1359, type: !165)
!1034 = !DILocation(line: 0, scope: !1028, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 586, column: 41, scope: !217)
!1036 = !DILocation(line: 1361, column: 11, scope: !1028, inlinedAt: !1035)
!1037 = !DILocation(line: 1361, column: 10, scope: !1028, inlinedAt: !1035)
!1038 = !DILocation(line: 586, column: 19, scope: !217)
!1039 = !DILocation(line: 587, column: 5, scope: !217)
!1040 = !DILocation(line: 588, column: 7, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !210, file: !115, line: 588, column: 7)
!1042 = !DILocation(line: 588, column: 7, scope: !210)
!1043 = !DILocation(line: 590, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1041, file: !115, line: 589, column: 5)
!1045 = !DILocation(line: 591, column: 7, scope: !1044)
!1046 = !DILocation(line: 595, column: 37, scope: !210)
!1047 = !DILocation(line: 595, column: 35, scope: !210)
!1048 = !DILocation(line: 596, column: 29, scope: !210)
!1049 = !DILocation(line: 597, column: 8, scope: !225)
!1050 = !DILocation(line: 597, column: 7, scope: !210)
!1051 = !DILocation(line: 604, column: 24, scope: !224)
!1052 = !DILocation(line: 604, column: 12, scope: !225)
!1053 = !DILocation(line: 0, scope: !223)
!1054 = !DILocation(line: 610, column: 16, scope: !223)
!1055 = !DILocation(line: 610, column: 7, scope: !223)
!1056 = !DILocation(line: 611, column: 21, scope: !223)
!1057 = !{!1058, !1058, i64 0}
!1058 = !{!"short", !946, i64 0}
!1059 = !DILocation(line: 611, column: 19, scope: !223)
!1060 = !DILocation(line: 611, column: 16, scope: !223)
!1061 = !DILocation(line: 610, column: 30, scope: !223)
!1062 = distinct !{!1062, !1055, !1056, !1063}
!1063 = !{!"llvm.loop.mustprogress"}
!1064 = !DILocation(line: 612, column: 18, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !223, file: !115, line: 612, column: 11)
!1066 = !DILocation(line: 612, column: 11, scope: !223)
!1067 = !DILocation(line: 620, column: 23, scope: !210)
!1068 = !DILocation(line: 625, column: 39, scope: !210)
!1069 = !DILocation(line: 626, column: 3, scope: !210)
!1070 = !DILocation(line: 626, column: 10, scope: !210)
!1071 = !DILocation(line: 626, column: 21, scope: !210)
!1072 = !DILocation(line: 628, column: 44, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !115, line: 628, column: 11)
!1074 = distinct !DILexicalBlock(scope: !210, file: !115, line: 627, column: 5)
!1075 = !DILocation(line: 628, column: 32, scope: !1073)
!1076 = !DILocation(line: 628, column: 49, scope: !1073)
!1077 = !DILocation(line: 628, column: 11, scope: !1074)
!1078 = !DILocation(line: 630, column: 11, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !115, line: 630, column: 11)
!1080 = !DILocation(line: 630, column: 11, scope: !1074)
!1081 = !DILocation(line: 632, column: 26, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !115, line: 632, column: 15)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !115, line: 631, column: 9)
!1084 = !DILocation(line: 632, column: 34, scope: !1082)
!1085 = !DILocation(line: 632, column: 37, scope: !1082)
!1086 = !DILocation(line: 632, column: 15, scope: !1083)
!1087 = !DILocation(line: 640, column: 16, scope: !1074)
!1088 = distinct !{!1088, !1069, !1089, !1063}
!1089 = !DILocation(line: 641, column: 5, scope: !210)
!1090 = !DILocation(line: 644, column: 3, scope: !210)
!1091 = !DILocation(line: 0, scope: !1028, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 648, column: 31, scope: !210)
!1093 = !DILocation(line: 0, scope: !1028, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 649, column: 31, scope: !210)
!1095 = !DILocation(line: 0, scope: !1028, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 650, column: 31, scope: !210)
!1097 = !DILocation(line: 0, scope: !1028, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 651, column: 31, scope: !210)
!1099 = !DILocation(line: 0, scope: !1028, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 652, column: 31, scope: !210)
!1101 = !DILocation(line: 0, scope: !1028, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 653, column: 31, scope: !210)
!1103 = !DILocation(line: 0, scope: !1028, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 654, column: 31, scope: !210)
!1105 = !DILocation(line: 0, scope: !1028, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 655, column: 31, scope: !210)
!1107 = !DILocation(line: 0, scope: !1028, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 656, column: 31, scope: !210)
!1109 = !DILocation(line: 0, scope: !1028, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 657, column: 31, scope: !210)
!1111 = !DILocation(line: 663, column: 7, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !210, file: !115, line: 663, column: 7)
!1113 = !DILocation(line: 664, column: 7, scope: !1112)
!1114 = !DILocation(line: 664, column: 10, scope: !1112)
!1115 = !DILocation(line: 663, column: 7, scope: !210)
!1116 = !DILocation(line: 669, column: 7, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1112, file: !115, line: 665, column: 5)
!1118 = !DILocation(line: 671, column: 5, scope: !1117)
!1119 = !DILocation(line: 676, column: 7, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1112, file: !115, line: 673, column: 5)
!1121 = !DILocation(line: 679, column: 3, scope: !210)
!1122 = !DILocation(line: 683, column: 3, scope: !210)
!1123 = !DILocation(line: 686, column: 3, scope: !210)
!1124 = !DILocation(line: 688, column: 3, scope: !210)
!1125 = !DILocation(line: 691, column: 3, scope: !210)
!1126 = !DILocation(line: 695, column: 3, scope: !210)
!1127 = !DILocation(line: 696, column: 1, scope: !210)
!1128 = !DISubprogram(name: "setlocale", scope: !1129, file: !1129, line: 122, type: !1130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1129 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!159, !116, !165}
!1132 = !DISubprogram(name: "strncmp", scope: !1133, file: !1133, line: 159, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1133 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!116, !165, !165, !162}
!1136 = !DISubprogram(name: "exit", scope: !1137, file: !1137, line: 624, type: !934, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1137 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1138 = !DISubprogram(name: "getenv", scope: !1137, file: !1137, line: 641, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!159, !165}
!1141 = !DISubprogram(name: "strcmp", scope: !1133, file: !1133, line: 156, type: !1142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!116, !165, !165}
!1144 = !DISubprogram(name: "strspn", scope: !1133, file: !1133, line: 297, type: !1145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!164, !165, !165}
!1147 = !DISubprogram(name: "strchr", scope: !1133, file: !1133, line: 246, type: !1148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!159, !165, !116}
!1150 = !DISubprogram(name: "__ctype_b_loc", scope: !121, file: !121, line: 79, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!1153}
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!1156 = !DISubprogram(name: "strcspn", scope: !1133, file: !1133, line: 293, type: !1145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1157 = !DISubprogram(name: "fwrite_unlocked", scope: !508, file: !508, line: 704, type: !1158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!162, !1160, !162, !162, !1006}
!1160 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1161)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1163 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 424, type: !1164, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1167)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!116, !116, !1166}
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1167 = !{!1168, !1169, !1170}
!1168 = !DILocalVariable(name: "argc", arg: 1, scope: !1163, file: !2, line: 424, type: !116)
!1169 = !DILocalVariable(name: "argv", arg: 2, scope: !1163, file: !2, line: 424, type: !1166)
!1170 = !DILocalVariable(name: "c", scope: !1163, file: !2, line: 426, type: !116)
!1171 = !DILocation(line: 0, scope: !1163)
!1172 = !DILocation(line: 429, column: 21, scope: !1163)
!1173 = !DILocation(line: 429, column: 3, scope: !1163)
!1174 = !DILocation(line: 430, column: 3, scope: !1163)
!1175 = !DILocation(line: 431, column: 3, scope: !1163)
!1176 = !DILocation(line: 432, column: 3, scope: !1163)
!1177 = !DILocation(line: 433, column: 21, scope: !1163)
!1178 = !DILocation(line: 433, column: 19, scope: !1163)
!1179 = !{!1180, !1180, i64 0}
!1180 = !{!"_Bool", !946, i64 0}
!1181 = !DILocation(line: 435, column: 3, scope: !1163)
!1182 = !DILocation(line: 437, column: 3, scope: !1163)
!1183 = !DILocation(line: 437, column: 15, scope: !1163)
!1184 = !DILocation(line: 441, column: 21, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 439, column: 7)
!1186 = !DILocation(line: 442, column: 9, scope: !1185)
!1187 = !DILocation(line: 445, column: 21, scope: !1185)
!1188 = !DILocation(line: 446, column: 9, scope: !1185)
!1189 = !DILocation(line: 449, column: 14, scope: !1185)
!1190 = !DILocation(line: 450, column: 9, scope: !1185)
!1191 = !DILocation(line: 453, column: 15, scope: !1185)
!1192 = !DILocation(line: 454, column: 9, scope: !1185)
!1193 = !DILocation(line: 457, column: 27, scope: !1185)
!1194 = !DILocation(line: 458, column: 9, scope: !1185)
!1195 = !DILocation(line: 461, column: 27, scope: !1185)
!1196 = !DILocation(line: 462, column: 9, scope: !1185)
!1197 = !DILocation(line: 465, column: 13, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 465, column: 13)
!1199 = !{!1200, !1200, i64 0}
!1200 = !{!"long", !946, i64 0}
!1201 = !DILocation(line: 465, column: 25, scope: !1198)
!1202 = !DILocation(line: 467, column: 19, scope: !1185)
!1203 = !DILocation(line: 465, column: 36, scope: !1198)
!1204 = !DILocation(line: 465, column: 45, scope: !1198)
!1205 = !DILocation(line: 0, scope: !1028, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 465, column: 29, scope: !1198)
!1207 = !DILocation(line: 1361, column: 11, scope: !1028, inlinedAt: !1206)
!1208 = !DILocation(line: 1361, column: 10, scope: !1028, inlinedAt: !1206)
!1209 = !DILocation(line: 465, column: 13, scope: !1185)
!1210 = !DILocation(line: 466, column: 11, scope: !1198)
!1211 = !DILocation(line: 467, column: 17, scope: !1185)
!1212 = !DILocation(line: 468, column: 23, scope: !1185)
!1213 = !DILocation(line: 468, column: 33, scope: !1185)
!1214 = !DILocation(line: 468, column: 21, scope: !1185)
!1215 = !DILocation(line: 469, column: 9, scope: !1185)
!1216 = !DILocation(line: 472, column: 22, scope: !1185)
!1217 = !DILocation(line: 473, column: 9, scope: !1185)
!1218 = distinct !{!1218, !1182, !1219, !1063}
!1219 = !DILocation(line: 481, column: 7, scope: !1163)
!1220 = !DILocation(line: 475, column: 7, scope: !1185)
!1221 = !DILocation(line: 477, column: 7, scope: !1185)
!1222 = !DILocation(line: 480, column: 9, scope: !1185)
!1223 = !DILocation(line: 483, column: 9, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 483, column: 7)
!1225 = !DILocation(line: 483, column: 7, scope: !1163)
!1226 = !DILocation(line: 484, column: 17, scope: !1224)
!1227 = !DILocation(line: 484, column: 5, scope: !1224)
!1228 = !DILocation(line: 486, column: 14, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 486, column: 7)
!1230 = !DILocation(line: 486, column: 12, scope: !1229)
!1231 = !DILocation(line: 486, column: 21, scope: !1229)
!1232 = !DILocation(line: 486, column: 7, scope: !1163)
!1233 = !DILocation(line: 488, column: 16, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !2, line: 488, column: 11)
!1235 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 487, column: 5)
!1236 = !DILocation(line: 488, column: 11, scope: !1235)
!1237 = !DILocation(line: 489, column: 9, scope: !1234)
!1238 = !DILocation(line: 491, column: 9, scope: !1234)
!1239 = !DILocation(line: 492, column: 7, scope: !1235)
!1240 = !DILocation(line: 495, column: 9, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 495, column: 7)
!1242 = !DILocation(line: 495, column: 7, scope: !1163)
!1243 = !DILocation(line: 497, column: 7, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 496, column: 5)
!1245 = !DILocation(line: 498, column: 7, scope: !1244)
!1246 = !DILocation(line: 501, column: 23, scope: !1163)
!1247 = !DILocation(line: 501, column: 3, scope: !1163)
!1248 = !DISubprogram(name: "bindtextdomain", scope: !998, file: !998, line: 86, type: !1249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!159, !165, !165}
!1251 = !DISubprogram(name: "textdomain", scope: !998, file: !998, line: 82, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1252 = !DISubprogram(name: "atexit", scope: !1137, file: !1137, line: 602, type: !1253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!116, !548}
!1255 = !DISubprogram(name: "getopt_long", scope: !418, file: !418, line: 66, type: !1256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!116, !116, !1258, !165, !1260, !423}
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!1261 = !DISubprogram(name: "strlen", scope: !1133, file: !1133, line: 407, type: !1262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!164, !165}
!1264 = distinct !DISubprogram(name: "compare_files", scope: !2, file: !2, line: 261, type: !1265, scopeLine: 262, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1267)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{null, !1166}
!1267 = !{!1268, !1269, !1277, !1280, !1282, !1285, !1287, !1292, !1294, !1298, !1300, !1301, !1307, !1309}
!1268 = !DILocalVariable(name: "infiles", arg: 1, scope: !1264, file: !2, line: 261, type: !1166)
!1269 = !DILocalVariable(name: "lba", scope: !1264, file: !2, line: 264, type: !1270)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 1536, elements: !683)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !1272, line: 32, size: 192, elements: !1273)
!1272 = !DIFile(filename: "./lib/linebuffer.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a0b4e97fdade8fc6fdf94c5a34c83419")
!1273 = !{!1274, !1275, !1276}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1271, file: !1272, line: 34, baseType: !897, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1271, file: !1272, line: 35, baseType: !897, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1271, file: !1272, line: 36, baseType: !159, size: 64, offset: 128)
!1277 = !DILocalVariable(name: "thisline", scope: !1264, file: !2, line: 268, type: !1278)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1279, size: 128, elements: !304)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1280 = !DILocalVariable(name: "all_line", scope: !1264, file: !2, line: 273, type: !1281)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1279, size: 512, elements: !683)
!1282 = !DILocalVariable(name: "alt", scope: !1264, file: !2, line: 276, type: !1283)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 192, elements: !1284)
!1284 = !{!305, !314}
!1285 = !DILocalVariable(name: "streams", scope: !1264, file: !2, line: 279, type: !1286)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 128, elements: !304)
!1287 = !DILocalVariable(name: "total", scope: !1264, file: !2, line: 282, type: !1288)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1289, size: 192, elements: !313)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1290, line: 102, baseType: !1291)
!1290 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !259, line: 73, baseType: !164)
!1292 = !DILocalVariable(name: "i", scope: !1293, file: !2, line: 285, type: !116)
!1293 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 285, column: 3)
!1294 = !DILocalVariable(name: "j", scope: !1295, file: !2, line: 287, type: !116)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 287, column: 7)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !2, line: 286, column: 5)
!1297 = distinct !DILexicalBlock(scope: !1293, file: !2, line: 285, column: 3)
!1298 = !DILocalVariable(name: "order", scope: !1299, file: !2, line: 309, type: !116)
!1299 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 308, column: 5)
!1300 = !DILocalVariable(name: "fill_up", scope: !1299, file: !2, line: 310, type: !465)
!1301 = !DILocalVariable(name: "len", scope: !1302, file: !2, line: 325, type: !162)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 324, column: 13)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 320, column: 15)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 319, column: 9)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !2, line: 316, column: 16)
!1306 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 314, column: 11)
!1307 = !DILocalVariable(name: "i", scope: !1308, file: !2, line: 363, type: !116)
!1308 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 363, column: 7)
!1309 = !DILocalVariable(name: "i", scope: !1310, file: !2, line: 391, type: !116)
!1310 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 391, column: 3)
!1311 = !DILocation(line: 0, scope: !1264)
!1312 = !DILocation(line: 264, column: 3, scope: !1264)
!1313 = !DILocation(line: 264, column: 21, scope: !1264)
!1314 = !DILocation(line: 273, column: 3, scope: !1264)
!1315 = !DILocation(line: 273, column: 22, scope: !1264)
!1316 = !DILocation(line: 0, scope: !1293)
!1317 = !DILocation(line: 0, scope: !1295)
!1318 = !DILocation(line: 289, column: 11, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !2, line: 288, column: 9)
!1320 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 287, column: 7)
!1321 = !DILocation(line: 290, column: 26, scope: !1319)
!1322 = !DILocation(line: 289, column: 24, scope: !1319)
!1323 = !DILocation(line: 290, column: 11, scope: !1319)
!1324 = !DILocation(line: 295, column: 28, scope: !1296)
!1325 = !DILocation(line: 0, scope: !1028, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 295, column: 21, scope: !1296)
!1327 = !DILocation(line: 1361, column: 11, scope: !1028, inlinedAt: !1326)
!1328 = !DILocation(line: 1361, column: 10, scope: !1028, inlinedAt: !1326)
!1329 = !DILocation(line: 295, column: 21, scope: !1296)
!1330 = !DILocation(line: 295, column: 47, scope: !1296)
!1331 = !DILocation(line: 295, column: 55, scope: !1296)
!1332 = !DILocation(line: 296, column: 12, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 296, column: 11)
!1334 = !DILocation(line: 296, column: 11, scope: !1296)
!1335 = !DILocation(line: 297, column: 9, scope: !1333)
!1336 = !DILocation(line: 299, column: 7, scope: !1296)
!1337 = !DILocation(line: 302, column: 43, scope: !1296)
!1338 = !DILocation(line: 301, column: 21, scope: !1296)
!1339 = !DILocalVariable(name: "__stream", arg: 1, scope: !1340, file: !1341, line: 135, type: !232)
!1340 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1341, file: !1341, line: 135, type: !1342, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1344)
!1341 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!116, !232}
!1344 = !{!1339}
!1345 = !DILocation(line: 0, scope: !1340, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 303, column: 11, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 303, column: 11)
!1348 = !DILocation(line: 137, column: 10, scope: !1340, inlinedAt: !1346)
!1349 = !{!1350, !1017, i64 0}
!1350 = !{!"_IO_FILE", !1017, i64 0, !945, i64 8, !945, i64 16, !945, i64 24, !945, i64 32, !945, i64 40, !945, i64 48, !945, i64 56, !945, i64 64, !945, i64 72, !945, i64 80, !945, i64 88, !945, i64 96, !945, i64 104, !1017, i64 112, !1017, i64 116, !1200, i64 120, !1058, i64 128, !946, i64 130, !946, i64 131, !945, i64 136, !1200, i64 144, !945, i64 152, !945, i64 160, !945, i64 168, !945, i64 176, !1200, i64 184, !1017, i64 192, !946, i64 196}
!1351 = !DILocation(line: 303, column: 11, scope: !1347)
!1352 = !DILocation(line: 303, column: 11, scope: !1296)
!1353 = !DILocation(line: 304, column: 9, scope: !1347)
!1354 = !DILocation(line: 307, column: 10, scope: !1264)
!1355 = !DILocation(line: 307, column: 22, scope: !1264)
!1356 = !DILocation(line: 307, column: 3, scope: !1264)
!1357 = !DILocation(line: 282, column: 13, scope: !1264)
!1358 = !DILocation(line: 0, scope: !1310)
!1359 = !DILocation(line: 392, column: 9, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 392, column: 9)
!1361 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 391, column: 3)
!1362 = !DILocation(line: 392, column: 29, scope: !1360)
!1363 = !DILocation(line: 392, column: 9, scope: !1361)
!1364 = !DILocation(line: 293, column: 17, scope: !1296)
!1365 = !DILocation(line: 292, column: 17, scope: !1296)
!1366 = !DILocation(line: 301, column: 19, scope: !1296)
!1367 = !DILocation(line: 0, scope: !1299)
!1368 = !DILocation(line: 314, column: 12, scope: !1306)
!1369 = !DILocation(line: 314, column: 11, scope: !1299)
!1370 = !DILocation(line: 341, column: 27, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 340, column: 9)
!1372 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 333, column: 11)
!1373 = !DILocation(line: 342, column: 15, scope: !1371)
!1374 = !DILocation(line: 316, column: 17, scope: !1305)
!1375 = !DILocation(line: 316, column: 16, scope: !1306)
!1376 = !DILocation(line: 320, column: 15, scope: !1303)
!1377 = !{i8 0, i8 2}
!1378 = !DILocation(line: 320, column: 15, scope: !1304)
!1379 = !DILocation(line: 321, column: 44, scope: !1303)
!1380 = !{!1381, !945, i64 16}
!1381 = !{!"linebuffer", !1200, i64 0, !1200, i64 8, !945, i64 16}
!1382 = !DILocation(line: 321, column: 65, scope: !1303)
!1383 = !{!1381, !1200, i64 8}
!1384 = !DILocation(line: 321, column: 72, scope: !1303)
!1385 = !DILocation(line: 322, column: 44, scope: !1303)
!1386 = !DILocation(line: 322, column: 65, scope: !1303)
!1387 = !DILocation(line: 322, column: 72, scope: !1303)
!1388 = !DILocation(line: 321, column: 21, scope: !1303)
!1389 = !DILocation(line: 321, column: 13, scope: !1303)
!1390 = !DILocation(line: 325, column: 28, scope: !1302)
!1391 = !DILocation(line: 325, column: 75, scope: !1302)
!1392 = !DILocation(line: 0, scope: !1302)
!1393 = !DILocation(line: 326, column: 44, scope: !1302)
!1394 = !DILocation(line: 326, column: 65, scope: !1302)
!1395 = !DILocation(line: 326, column: 23, scope: !1302)
!1396 = !DILocation(line: 327, column: 25, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 327, column: 19)
!1398 = !DILocation(line: 327, column: 19, scope: !1302)
!1399 = !DILocation(line: 328, column: 25, scope: !1397)
!1400 = !DILocation(line: 328, column: 17, scope: !1397)
!1401 = !DILocation(line: 0, scope: !1306)
!1402 = !DILocation(line: 333, column: 17, scope: !1372)
!1403 = !DILocation(line: 333, column: 11, scope: !1299)
!1404 = !DILocation(line: 336, column: 19, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 334, column: 9)
!1406 = !DILocation(line: 337, column: 11, scope: !1405)
!1407 = !DILocation(line: 360, column: 11, scope: !1299)
!1408 = !DILocation(line: 342, column: 21, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 342, column: 15)
!1410 = !DILocation(line: 345, column: 23, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 343, column: 13)
!1412 = !DILocation(line: 346, column: 15, scope: !1411)
!1413 = !DILocation(line: 351, column: 23, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 349, column: 13)
!1415 = !DILocation(line: 352, column: 15, scope: !1414)
!1416 = !DILocation(line: 0, scope: !1308)
!1417 = !DILocation(line: 364, column: 13, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 363, column: 7)
!1419 = !DILocation(line: 369, column: 36, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !2, line: 365, column: 11)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 364, column: 13)
!1422 = !DILocation(line: 369, column: 41, scope: !1420)
!1423 = !DILocation(line: 371, column: 49, scope: !1420)
!1424 = !DILocation(line: 372, column: 61, scope: !1420)
!1425 = !DILocation(line: 371, column: 27, scope: !1420)
!1426 = !DILocation(line: 374, column: 17, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1420, file: !2, line: 374, column: 17)
!1428 = !DILocation(line: 374, column: 17, scope: !1420)
!1429 = !DILocation(line: 375, column: 28, scope: !1427)
!1430 = !DILocation(line: 375, column: 15, scope: !1427)
!1431 = !DILocation(line: 380, column: 22, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1427, file: !2, line: 380, column: 22)
!1433 = !DILocation(line: 380, column: 46, scope: !1432)
!1434 = !DILocation(line: 380, column: 22, scope: !1427)
!1435 = !DILocation(line: 382, column: 28, scope: !1432)
!1436 = !DILocation(line: 381, column: 15, scope: !1432)
!1437 = !DILocation(line: 0, scope: !1340, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 384, column: 17, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1420, file: !2, line: 384, column: 17)
!1440 = !DILocation(line: 137, column: 10, scope: !1340, inlinedAt: !1438)
!1441 = !DILocation(line: 384, column: 17, scope: !1439)
!1442 = !DILocation(line: 384, column: 17, scope: !1420)
!1443 = !DILocation(line: 385, column: 15, scope: !1439)
!1444 = distinct !{!1444, !1356, !1445, !1063}
!1445 = !DILocation(line: 389, column: 5, scope: !1264)
!1446 = !DILocation(line: 393, column: 7, scope: !1360)
!1447 = !DILocation(line: 395, column: 7, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 395, column: 7)
!1449 = !DILocation(line: 395, column: 7, scope: !1264)
!1450 = !DILocation(line: 398, column: 11, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !2, line: 398, column: 11)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !2, line: 396, column: 5)
!1453 = !DILocation(line: 398, column: 23, scope: !1451)
!1454 = !DILocation(line: 0, scope: !1451)
!1455 = !DILocation(line: 398, column: 11, scope: !1452)
!1456 = !DILocation(line: 400, column: 11, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1451, file: !2, line: 399, column: 9)
!1458 = !DILocation(line: 405, column: 9, scope: !1457)
!1459 = !DILocation(line: 408, column: 11, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1451, file: !2, line: 407, column: 9)
!1461 = !DILocation(line: 416, column: 7, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 416, column: 7)
!1463 = !DILocation(line: 416, column: 34, scope: !1462)
!1464 = !DILocation(line: 417, column: 5, scope: !1462)
!1465 = !DILocation(line: 420, column: 3, scope: !1264)
!1466 = !DISubprogram(name: "__errno_location", scope: !1467, file: !1467, line: 37, type: !1468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1467 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!423}
!1470 = !DISubprogram(name: "memcmp", scope: !1133, file: !1133, line: 64, type: !1471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!116, !1161, !1161, !162}
!1473 = distinct !DISubprogram(name: "writeline", scope: !2, file: !2, line: 177, type: !1474, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1478)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{null, !1476, !116}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1271)
!1478 = !{!1479, !1480, !1481, !1485, !1486, !1487, !1490, !1491, !1492, !1495, !1496, !1497, !1499, !1500}
!1479 = !DILocalVariable(name: "line", arg: 1, scope: !1473, file: !2, line: 177, type: !1476)
!1480 = !DILocalVariable(name: "class", arg: 2, scope: !1473, file: !2, line: 177, type: !116)
!1481 = !DILocalVariable(name: "__ptr", scope: !1482, file: !2, line: 190, type: !165)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 190, column: 9)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 189, column: 11)
!1484 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 180, column: 5)
!1485 = !DILocalVariable(name: "__stream", scope: !1482, file: !2, line: 190, type: !232)
!1486 = !DILocalVariable(name: "__cnt", scope: !1482, file: !2, line: 190, type: !162)
!1487 = !DILocalVariable(name: "__ptr", scope: !1488, file: !2, line: 197, type: !165)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 197, column: 9)
!1489 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 196, column: 11)
!1490 = !DILocalVariable(name: "__stream", scope: !1488, file: !2, line: 197, type: !232)
!1491 = !DILocalVariable(name: "__cnt", scope: !1488, file: !2, line: 197, type: !162)
!1492 = !DILocalVariable(name: "__ptr", scope: !1493, file: !2, line: 199, type: !165)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !2, line: 199, column: 9)
!1494 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 198, column: 11)
!1495 = !DILocalVariable(name: "__stream", scope: !1493, file: !2, line: 199, type: !232)
!1496 = !DILocalVariable(name: "__cnt", scope: !1493, file: !2, line: 199, type: !162)
!1497 = !DILocalVariable(name: "__ptr", scope: !1498, file: !2, line: 203, type: !165)
!1498 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 203, column: 3)
!1499 = !DILocalVariable(name: "__stream", scope: !1498, file: !2, line: 203, type: !232)
!1500 = !DILocalVariable(name: "__cnt", scope: !1498, file: !2, line: 203, type: !162)
!1501 = !DILocation(line: 0, scope: !1473)
!1502 = !DILocation(line: 179, column: 3, scope: !1473)
!1503 = !DILocation(line: 182, column: 12, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 182, column: 11)
!1505 = !DILocation(line: 182, column: 11, scope: !1484)
!1506 = !DILocation(line: 187, column: 12, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 187, column: 11)
!1508 = !DILocation(line: 187, column: 11, scope: !1484)
!1509 = !DILocation(line: 189, column: 11, scope: !1483)
!1510 = !DILocation(line: 189, column: 11, scope: !1484)
!1511 = !DILocation(line: 194, column: 12, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 194, column: 11)
!1513 = !DILocation(line: 194, column: 11, scope: !1484)
!1514 = !DILocation(line: 196, column: 11, scope: !1489)
!1515 = !DILocation(line: 196, column: 11, scope: !1484)
!1516 = !DILocation(line: 197, column: 9, scope: !1489)
!1517 = !DILocation(line: 198, column: 11, scope: !1494)
!1518 = !DILocation(line: 198, column: 11, scope: !1484)
!1519 = !DILocation(line: 0, scope: !1484)
!1520 = !DILocation(line: 203, column: 3, scope: !1473)
!1521 = !DILocation(line: 205, column: 7, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 205, column: 7)
!1523 = !DILocation(line: 0, scope: !1340, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 205, column: 7, scope: !1522)
!1525 = !DILocation(line: 137, column: 10, scope: !1340, inlinedAt: !1524)
!1526 = !DILocation(line: 205, column: 7, scope: !1473)
!1527 = !DILocation(line: 948, column: 21, scope: !1528, inlinedAt: !1531)
!1528 = distinct !DISubprogram(name: "write_error", scope: !115, file: !115, line: 946, type: !549, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1529)
!1529 = !{!1530}
!1530 = !DILocalVariable(name: "saved_errno", scope: !1528, file: !115, line: 948, type: !116)
!1531 = distinct !DILocation(line: 206, column: 5, scope: !1522)
!1532 = !DILocation(line: 0, scope: !1528, inlinedAt: !1531)
!1533 = !DILocation(line: 949, column: 3, scope: !1528, inlinedAt: !1531)
!1534 = !DILocation(line: 950, column: 11, scope: !1528, inlinedAt: !1531)
!1535 = !DILocation(line: 950, column: 3, scope: !1528, inlinedAt: !1531)
!1536 = !DILocation(line: 951, column: 3, scope: !1528, inlinedAt: !1531)
!1537 = !DILocation(line: 952, column: 3, scope: !1528, inlinedAt: !1531)
!1538 = !DILocation(line: 207, column: 1, scope: !1473)
!1539 = distinct !DISubprogram(name: "check_order", scope: !2, file: !2, line: 221, type: !1540, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1542)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{null, !1476, !1476, !116}
!1542 = !{!1543, !1544, !1545, !1546, !1551}
!1543 = !DILocalVariable(name: "prev", arg: 1, scope: !1539, file: !2, line: 221, type: !1476)
!1544 = !DILocalVariable(name: "current", arg: 2, scope: !1539, file: !2, line: 222, type: !1476)
!1545 = !DILocalVariable(name: "whatfile", arg: 3, scope: !1539, file: !2, line: 223, type: !116)
!1546 = !DILocalVariable(name: "order", scope: !1547, file: !2, line: 231, type: !116)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 230, column: 9)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 229, column: 11)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !2, line: 228, column: 5)
!1550 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 226, column: 7)
!1551 = !DILocalVariable(name: "__errstatus", scope: !1552, file: !2, line: 242, type: !1555)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 242, column: 15)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 241, column: 13)
!1554 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 240, column: 15)
!1555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!1556 = !DILocation(line: 0, scope: !1539)
!1557 = !DILocation(line: 226, column: 7, scope: !1550)
!1558 = !DILocation(line: 227, column: 7, scope: !1550)
!1559 = !DILocation(line: 227, column: 57, scope: !1550)
!1560 = !DILocation(line: 226, column: 7, scope: !1539)
!1561 = !DILocation(line: 229, column: 45, scope: !1548)
!1562 = !DILocation(line: 229, column: 12, scope: !1548)
!1563 = !DILocation(line: 229, column: 11, scope: !1549)
!1564 = !DILocation(line: 233, column: 15, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 233, column: 15)
!1566 = !DILocation(line: 0, scope: !1565)
!1567 = !DILocation(line: 233, column: 15, scope: !1547)
!1568 = !DILocation(line: 234, column: 21, scope: !1565)
!1569 = !DILocation(line: 0, scope: !1547)
!1570 = !DILocation(line: 234, column: 13, scope: !1565)
!1571 = !DILocation(line: 237, column: 21, scope: !1565)
!1572 = !DILocation(line: 240, column: 17, scope: !1554)
!1573 = !DILocation(line: 240, column: 15, scope: !1547)
!1574 = !DILocation(line: 242, column: 15, scope: !1553)
!1575 = !DILocation(line: 0, scope: !1552)
!1576 = !DILocation(line: 242, column: 15, scope: !1552)
!1577 = !DILocation(line: 248, column: 53, scope: !1553)
!1578 = !DILocation(line: 249, column: 13, scope: !1553)
!1579 = !DILocation(line: 252, column: 1, scope: !1539)
!1580 = !DISubprogram(name: "fflush_unlocked", scope: !508, file: !508, line: 239, type: !1342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1581 = !DISubprogram(name: "clearerr_unlocked", scope: !508, file: !508, line: 794, type: !1582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{null, !232}
!1584 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !482, file: !482, line: 50, type: !967, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !1585)
!1585 = !{!1586}
!1586 = !DILocalVariable(name: "file", arg: 1, scope: !1584, file: !482, line: 50, type: !165)
!1587 = !DILocation(line: 0, scope: !1584)
!1588 = !DILocation(line: 52, column: 13, scope: !1584)
!1589 = !DILocation(line: 53, column: 1, scope: !1584)
!1590 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !482, file: !482, line: 87, type: !1591, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !1593)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !205}
!1593 = !{!1594}
!1594 = !DILocalVariable(name: "ignore", arg: 1, scope: !1590, file: !482, line: 87, type: !205)
!1595 = !DILocation(line: 0, scope: !1590)
!1596 = !DILocation(line: 89, column: 16, scope: !1590)
!1597 = !DILocation(line: 90, column: 1, scope: !1590)
!1598 = distinct !DISubprogram(name: "close_stdout", scope: !482, file: !482, line: 116, type: !549, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !1599)
!1599 = !{!1600}
!1600 = !DILocalVariable(name: "write_error", scope: !1601, file: !482, line: 121, type: !165)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !482, line: 120, column: 5)
!1602 = distinct !DILexicalBlock(scope: !1598, file: !482, line: 118, column: 7)
!1603 = !DILocation(line: 118, column: 21, scope: !1602)
!1604 = !DILocation(line: 118, column: 7, scope: !1602)
!1605 = !DILocation(line: 118, column: 29, scope: !1602)
!1606 = !DILocation(line: 119, column: 7, scope: !1602)
!1607 = !DILocation(line: 119, column: 12, scope: !1602)
!1608 = !DILocation(line: 119, column: 25, scope: !1602)
!1609 = !DILocation(line: 119, column: 28, scope: !1602)
!1610 = !DILocation(line: 119, column: 34, scope: !1602)
!1611 = !DILocation(line: 118, column: 7, scope: !1598)
!1612 = !DILocation(line: 121, column: 33, scope: !1601)
!1613 = !DILocation(line: 0, scope: !1601)
!1614 = !DILocation(line: 122, column: 11, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1601, file: !482, line: 122, column: 11)
!1616 = !DILocation(line: 0, scope: !1615)
!1617 = !DILocation(line: 122, column: 11, scope: !1601)
!1618 = !DILocation(line: 123, column: 9, scope: !1615)
!1619 = !DILocation(line: 126, column: 9, scope: !1615)
!1620 = !DILocation(line: 128, column: 14, scope: !1601)
!1621 = !DILocation(line: 128, column: 7, scope: !1601)
!1622 = !DILocation(line: 133, column: 42, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1598, file: !482, line: 133, column: 7)
!1624 = !DILocation(line: 133, column: 28, scope: !1623)
!1625 = !DILocation(line: 133, column: 50, scope: !1623)
!1626 = !DILocation(line: 133, column: 7, scope: !1598)
!1627 = !DILocation(line: 134, column: 12, scope: !1623)
!1628 = !DILocation(line: 134, column: 5, scope: !1623)
!1629 = !DILocation(line: 135, column: 1, scope: !1598)
!1630 = !DISubprogram(name: "_exit", scope: !1631, file: !1631, line: 624, type: !934, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1631 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1632 = distinct !DISubprogram(name: "verror", scope: !497, file: !497, line: 251, type: !1633, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1635)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{null, !116, !116, !165, !507}
!1635 = !{!1636, !1637, !1638, !1639}
!1636 = !DILocalVariable(name: "status", arg: 1, scope: !1632, file: !497, line: 251, type: !116)
!1637 = !DILocalVariable(name: "errnum", arg: 2, scope: !1632, file: !497, line: 251, type: !116)
!1638 = !DILocalVariable(name: "message", arg: 3, scope: !1632, file: !497, line: 251, type: !165)
!1639 = !DILocalVariable(name: "args", arg: 4, scope: !1632, file: !497, line: 251, type: !507)
!1640 = !DILocation(line: 0, scope: !1632)
!1641 = !DILocation(line: 251, column: 1, scope: !1632)
!1642 = !DILocation(line: 261, column: 3, scope: !1632)
!1643 = !DILocation(line: 265, column: 7, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1632, file: !497, line: 265, column: 7)
!1645 = !DILocation(line: 265, column: 7, scope: !1632)
!1646 = !DILocation(line: 266, column: 5, scope: !1644)
!1647 = !DILocation(line: 272, column: 7, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1644, file: !497, line: 268, column: 5)
!1649 = !DILocation(line: 276, column: 3, scope: !1632)
!1650 = !{i64 0, i64 8, !944, i64 8, i64 8, !944, i64 16, i64 8, !944, i64 24, i64 4, !1016, i64 28, i64 4, !1016}
!1651 = !DILocation(line: 282, column: 1, scope: !1632)
!1652 = distinct !DISubprogram(name: "flush_stdout", scope: !497, file: !497, line: 163, type: !549, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1653)
!1653 = !{!1654}
!1654 = !DILocalVariable(name: "stdout_fd", scope: !1652, file: !497, line: 166, type: !116)
!1655 = !DILocation(line: 0, scope: !1652)
!1656 = !DILocalVariable(name: "fd", arg: 1, scope: !1657, file: !497, line: 145, type: !116)
!1657 = distinct !DISubprogram(name: "is_open", scope: !497, file: !497, line: 145, type: !1658, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1660)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!116, !116}
!1660 = !{!1656}
!1661 = !DILocation(line: 0, scope: !1657, inlinedAt: !1662)
!1662 = distinct !DILocation(line: 182, column: 25, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1652, file: !497, line: 182, column: 7)
!1664 = !DILocation(line: 157, column: 15, scope: !1657, inlinedAt: !1662)
!1665 = !DILocation(line: 157, column: 12, scope: !1657, inlinedAt: !1662)
!1666 = !DILocation(line: 182, column: 7, scope: !1652)
!1667 = !DILocation(line: 184, column: 5, scope: !1663)
!1668 = !DILocation(line: 185, column: 1, scope: !1652)
!1669 = distinct !DISubprogram(name: "error_tail", scope: !497, file: !497, line: 219, type: !1633, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1670)
!1670 = !{!1671, !1672, !1673, !1674}
!1671 = !DILocalVariable(name: "status", arg: 1, scope: !1669, file: !497, line: 219, type: !116)
!1672 = !DILocalVariable(name: "errnum", arg: 2, scope: !1669, file: !497, line: 219, type: !116)
!1673 = !DILocalVariable(name: "message", arg: 3, scope: !1669, file: !497, line: 219, type: !165)
!1674 = !DILocalVariable(name: "args", arg: 4, scope: !1669, file: !497, line: 219, type: !507)
!1675 = !DILocation(line: 0, scope: !1669)
!1676 = !DILocation(line: 219, column: 1, scope: !1669)
!1677 = !DILocation(line: 229, column: 13, scope: !1669)
!1678 = !DILocation(line: 135, column: 10, scope: !1679, inlinedAt: !1721)
!1679 = distinct !DISubprogram(name: "vfprintf", scope: !1003, file: !1003, line: 132, type: !1680, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1717)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!116, !1682, !1007, !509}
!1682 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1683)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1685)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1686)
!1686 = !{!1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1685, file: !236, line: 51, baseType: !116, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1685, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1685, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1685, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1685, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1685, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1685, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1685, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1685, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1685, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1685, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1685, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1685, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1685, file: !236, line: 70, baseType: !1701, size: 64, offset: 832)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1685, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1685, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1685, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1685, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1685, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1685, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1685, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1685, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1685, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1685, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1685, file: !236, line: 93, baseType: !1701, size: 64, offset: 1344)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1685, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1685, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1685, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1685, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!1717 = !{!1718, !1719, !1720}
!1718 = !DILocalVariable(name: "__stream", arg: 1, scope: !1679, file: !1003, line: 132, type: !1682)
!1719 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1679, file: !1003, line: 133, type: !1007)
!1720 = !DILocalVariable(name: "__ap", arg: 3, scope: !1679, file: !1003, line: 133, type: !509)
!1721 = distinct !DILocation(line: 229, column: 3, scope: !1669)
!1722 = !{!1723, !1725}
!1723 = distinct !{!1723, !1724, !"vfprintf.inline: argument 0"}
!1724 = distinct !{!1724, !"vfprintf.inline"}
!1725 = distinct !{!1725, !1724, !"vfprintf.inline: argument 1"}
!1726 = !DILocation(line: 229, column: 3, scope: !1669)
!1727 = !DILocation(line: 0, scope: !1679, inlinedAt: !1721)
!1728 = !DILocation(line: 133, column: 49, scope: !1679, inlinedAt: !1721)
!1729 = !DILocation(line: 232, column: 3, scope: !1669)
!1730 = !DILocation(line: 233, column: 7, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1669, file: !497, line: 233, column: 7)
!1732 = !DILocation(line: 233, column: 7, scope: !1669)
!1733 = !DILocalVariable(name: "errnum", arg: 1, scope: !1734, file: !497, line: 188, type: !116)
!1734 = distinct !DISubprogram(name: "print_errno_message", scope: !497, file: !497, line: 188, type: !934, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1735)
!1735 = !{!1733, !1736, !1737}
!1736 = !DILocalVariable(name: "s", scope: !1734, file: !497, line: 190, type: !165)
!1737 = !DILocalVariable(name: "errbuf", scope: !1734, file: !497, line: 193, type: !1738)
!1738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1739)
!1739 = !{!1740}
!1740 = !DISubrange(count: 1024)
!1741 = !DILocation(line: 0, scope: !1734, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 234, column: 5, scope: !1731)
!1743 = !DILocation(line: 193, column: 3, scope: !1734, inlinedAt: !1742)
!1744 = !DILocation(line: 193, column: 8, scope: !1734, inlinedAt: !1742)
!1745 = !DILocation(line: 195, column: 7, scope: !1734, inlinedAt: !1742)
!1746 = !DILocation(line: 207, column: 9, scope: !1747, inlinedAt: !1742)
!1747 = distinct !DILexicalBlock(scope: !1734, file: !497, line: 207, column: 7)
!1748 = !DILocation(line: 207, column: 7, scope: !1734, inlinedAt: !1742)
!1749 = !DILocation(line: 208, column: 9, scope: !1747, inlinedAt: !1742)
!1750 = !DILocation(line: 208, column: 5, scope: !1747, inlinedAt: !1742)
!1751 = !DILocation(line: 214, column: 3, scope: !1734, inlinedAt: !1742)
!1752 = !DILocation(line: 216, column: 1, scope: !1734, inlinedAt: !1742)
!1753 = !DILocation(line: 234, column: 5, scope: !1731)
!1754 = !DILocation(line: 238, column: 3, scope: !1669)
!1755 = !DILocalVariable(name: "__c", arg: 1, scope: !1756, file: !1341, line: 101, type: !116)
!1756 = distinct !DISubprogram(name: "putc_unlocked", scope: !1341, file: !1341, line: 101, type: !1757, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1759)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!116, !116, !1683}
!1759 = !{!1755, !1760}
!1760 = !DILocalVariable(name: "__stream", arg: 2, scope: !1756, file: !1341, line: 101, type: !1683)
!1761 = !DILocation(line: 0, scope: !1756, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 238, column: 3, scope: !1669)
!1763 = !DILocation(line: 103, column: 10, scope: !1756, inlinedAt: !1762)
!1764 = !{!1350, !945, i64 40}
!1765 = !{!1350, !945, i64 48}
!1766 = !{!"branch_weights", i32 2000, i32 1}
!1767 = !DILocation(line: 240, column: 3, scope: !1669)
!1768 = !DILocation(line: 241, column: 7, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1669, file: !497, line: 241, column: 7)
!1770 = !DILocation(line: 241, column: 7, scope: !1669)
!1771 = !DILocation(line: 242, column: 5, scope: !1769)
!1772 = !DILocation(line: 243, column: 1, scope: !1669)
!1773 = !DISubprogram(name: "__vfprintf_chk", scope: !1003, file: !1003, line: 96, type: !1774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!116, !1682, !116, !1007, !509}
!1776 = !DISubprogram(name: "strerror_r", scope: !1133, file: !1133, line: 444, type: !1777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!159, !116, !159, !162}
!1779 = !DISubprogram(name: "__overflow", scope: !508, file: !508, line: 886, type: !1780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!116, !1683, !116}
!1782 = !DISubprogram(name: "fcntl", scope: !1783, file: !1783, line: 149, type: !1784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1783 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!116, !116, !116, null}
!1786 = distinct !DISubprogram(name: "error", scope: !497, file: !497, line: 285, type: !1787, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1789)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{null, !116, !116, !165, null}
!1789 = !{!1790, !1791, !1792, !1793}
!1790 = !DILocalVariable(name: "status", arg: 1, scope: !1786, file: !497, line: 285, type: !116)
!1791 = !DILocalVariable(name: "errnum", arg: 2, scope: !1786, file: !497, line: 285, type: !116)
!1792 = !DILocalVariable(name: "message", arg: 3, scope: !1786, file: !497, line: 285, type: !165)
!1793 = !DILocalVariable(name: "ap", scope: !1786, file: !497, line: 287, type: !507)
!1794 = !DILocation(line: 0, scope: !1786)
!1795 = !DILocation(line: 287, column: 3, scope: !1786)
!1796 = !DILocation(line: 287, column: 11, scope: !1786)
!1797 = !DILocation(line: 288, column: 3, scope: !1786)
!1798 = !DILocation(line: 289, column: 3, scope: !1786)
!1799 = !DILocation(line: 290, column: 3, scope: !1786)
!1800 = !DILocation(line: 291, column: 1, scope: !1786)
!1801 = !DILocation(line: 0, scope: !504)
!1802 = !DILocation(line: 298, column: 1, scope: !504)
!1803 = !DILocation(line: 302, column: 7, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !504, file: !497, line: 302, column: 7)
!1805 = !DILocation(line: 302, column: 7, scope: !504)
!1806 = !DILocation(line: 307, column: 11, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !497, line: 307, column: 11)
!1808 = distinct !DILexicalBlock(scope: !1804, file: !497, line: 303, column: 5)
!1809 = !DILocation(line: 307, column: 27, scope: !1807)
!1810 = !DILocation(line: 308, column: 11, scope: !1807)
!1811 = !DILocation(line: 308, column: 28, scope: !1807)
!1812 = !DILocation(line: 308, column: 25, scope: !1807)
!1813 = !DILocation(line: 309, column: 15, scope: !1807)
!1814 = !DILocation(line: 309, column: 33, scope: !1807)
!1815 = !DILocation(line: 310, column: 19, scope: !1807)
!1816 = !DILocation(line: 311, column: 22, scope: !1807)
!1817 = !DILocation(line: 311, column: 56, scope: !1807)
!1818 = !DILocation(line: 307, column: 11, scope: !1808)
!1819 = !DILocation(line: 316, column: 21, scope: !1808)
!1820 = !DILocation(line: 317, column: 23, scope: !1808)
!1821 = !DILocation(line: 318, column: 5, scope: !1808)
!1822 = !DILocation(line: 327, column: 3, scope: !504)
!1823 = !DILocation(line: 331, column: 7, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !504, file: !497, line: 331, column: 7)
!1825 = !DILocation(line: 331, column: 7, scope: !504)
!1826 = !DILocation(line: 332, column: 5, scope: !1824)
!1827 = !DILocation(line: 338, column: 7, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1824, file: !497, line: 334, column: 5)
!1829 = !DILocation(line: 346, column: 3, scope: !504)
!1830 = !DILocation(line: 350, column: 3, scope: !504)
!1831 = !DILocation(line: 356, column: 1, scope: !504)
!1832 = distinct !DISubprogram(name: "error_at_line", scope: !497, file: !497, line: 359, type: !1833, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1835)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !116, !116, !165, !103, !165, null}
!1835 = !{!1836, !1837, !1838, !1839, !1840, !1841}
!1836 = !DILocalVariable(name: "status", arg: 1, scope: !1832, file: !497, line: 359, type: !116)
!1837 = !DILocalVariable(name: "errnum", arg: 2, scope: !1832, file: !497, line: 359, type: !116)
!1838 = !DILocalVariable(name: "file_name", arg: 3, scope: !1832, file: !497, line: 359, type: !165)
!1839 = !DILocalVariable(name: "line_number", arg: 4, scope: !1832, file: !497, line: 360, type: !103)
!1840 = !DILocalVariable(name: "message", arg: 5, scope: !1832, file: !497, line: 360, type: !165)
!1841 = !DILocalVariable(name: "ap", scope: !1832, file: !497, line: 362, type: !507)
!1842 = !DILocation(line: 0, scope: !1832)
!1843 = !DILocation(line: 362, column: 3, scope: !1832)
!1844 = !DILocation(line: 362, column: 11, scope: !1832)
!1845 = !DILocation(line: 363, column: 3, scope: !1832)
!1846 = !DILocation(line: 364, column: 3, scope: !1832)
!1847 = !DILocation(line: 366, column: 3, scope: !1832)
!1848 = !DILocation(line: 367, column: 1, scope: !1832)
!1849 = distinct !DISubprogram(name: "fdadvise", scope: !842, file: !842, line: 25, type: !1850, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !841, retainedNodes: !1854)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null, !116, !1852, !1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !508, line: 63, baseType: !258)
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !150, line: 51, baseType: !149)
!1854 = !{!1855, !1856, !1857, !1858}
!1855 = !DILocalVariable(name: "fd", arg: 1, scope: !1849, file: !842, line: 25, type: !116)
!1856 = !DILocalVariable(name: "offset", arg: 2, scope: !1849, file: !842, line: 25, type: !1852)
!1857 = !DILocalVariable(name: "len", arg: 3, scope: !1849, file: !842, line: 25, type: !1852)
!1858 = !DILocalVariable(name: "advice", arg: 4, scope: !1849, file: !842, line: 25, type: !1853)
!1859 = !DILocation(line: 0, scope: !1849)
!1860 = !DILocation(line: 28, column: 3, scope: !1849)
!1861 = !DILocation(line: 30, column: 1, scope: !1849)
!1862 = !DISubprogram(name: "posix_fadvise", scope: !1783, file: !1783, line: 273, type: !1863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!116, !116, !1852, !1852, !116}
!1865 = distinct !DISubprogram(name: "fadvise", scope: !842, file: !842, line: 33, type: !1866, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !841, retainedNodes: !1902)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{null, !1868, !1853}
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1870)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1871)
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1870, file: !236, line: 51, baseType: !116, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1870, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1870, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1870, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1870, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1870, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1870, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1870, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1870, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1870, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1870, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1870, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1870, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1870, file: !236, line: 70, baseType: !1886, size: 64, offset: 832)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1870, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1870, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1870, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1870, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1870, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1870, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1870, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1870, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1870, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1870, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1870, file: !236, line: 93, baseType: !1886, size: 64, offset: 1344)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1870, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1870, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1870, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1870, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!1902 = !{!1903, !1904}
!1903 = !DILocalVariable(name: "fp", arg: 1, scope: !1865, file: !842, line: 33, type: !1868)
!1904 = !DILocalVariable(name: "advice", arg: 2, scope: !1865, file: !842, line: 33, type: !1853)
!1905 = !DILocation(line: 0, scope: !1865)
!1906 = !DILocation(line: 35, column: 7, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1865, file: !842, line: 35, column: 7)
!1908 = !DILocation(line: 35, column: 7, scope: !1865)
!1909 = !DILocation(line: 36, column: 15, scope: !1907)
!1910 = !DILocation(line: 0, scope: !1849, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 36, column: 5, scope: !1907)
!1912 = !DILocation(line: 28, column: 3, scope: !1849, inlinedAt: !1911)
!1913 = !DILocation(line: 36, column: 5, scope: !1907)
!1914 = !DILocation(line: 37, column: 1, scope: !1865)
!1915 = !DISubprogram(name: "fileno", scope: !508, file: !508, line: 809, type: !1916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!116, !1868}
!1918 = distinct !DISubprogram(name: "rpl_fclose", scope: !845, file: !845, line: 58, type: !1919, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !844, retainedNodes: !1955)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!116, !1921}
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1923)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1924)
!1924 = !{!1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1923, file: !236, line: 51, baseType: !116, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1923, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1923, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1923, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1923, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1923, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1923, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1923, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1923, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1923, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1923, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1923, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1923, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1923, file: !236, line: 70, baseType: !1939, size: 64, offset: 832)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1923, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1923, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1923, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1923, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1923, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1923, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1923, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1923, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1923, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1923, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1923, file: !236, line: 93, baseType: !1939, size: 64, offset: 1344)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1923, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1923, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1923, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1923, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!1955 = !{!1956, !1957, !1958, !1959}
!1956 = !DILocalVariable(name: "fp", arg: 1, scope: !1918, file: !845, line: 58, type: !1921)
!1957 = !DILocalVariable(name: "saved_errno", scope: !1918, file: !845, line: 60, type: !116)
!1958 = !DILocalVariable(name: "fd", scope: !1918, file: !845, line: 63, type: !116)
!1959 = !DILocalVariable(name: "result", scope: !1918, file: !845, line: 74, type: !116)
!1960 = !DILocation(line: 0, scope: !1918)
!1961 = !DILocation(line: 63, column: 12, scope: !1918)
!1962 = !DILocation(line: 64, column: 10, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1918, file: !845, line: 64, column: 7)
!1964 = !DILocation(line: 64, column: 7, scope: !1918)
!1965 = !DILocation(line: 65, column: 12, scope: !1963)
!1966 = !DILocation(line: 65, column: 5, scope: !1963)
!1967 = !DILocation(line: 70, column: 9, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1918, file: !845, line: 70, column: 7)
!1969 = !DILocation(line: 70, column: 23, scope: !1968)
!1970 = !DILocation(line: 70, column: 33, scope: !1968)
!1971 = !DILocation(line: 70, column: 26, scope: !1968)
!1972 = !DILocation(line: 70, column: 59, scope: !1968)
!1973 = !DILocation(line: 71, column: 7, scope: !1968)
!1974 = !DILocation(line: 71, column: 10, scope: !1968)
!1975 = !DILocation(line: 70, column: 7, scope: !1918)
!1976 = !DILocation(line: 100, column: 12, scope: !1918)
!1977 = !DILocation(line: 105, column: 7, scope: !1918)
!1978 = !DILocation(line: 72, column: 19, scope: !1968)
!1979 = !DILocation(line: 105, column: 19, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1918, file: !845, line: 105, column: 7)
!1981 = !DILocation(line: 107, column: 13, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1980, file: !845, line: 106, column: 5)
!1983 = !DILocation(line: 109, column: 5, scope: !1982)
!1984 = !DILocation(line: 112, column: 1, scope: !1918)
!1985 = !DISubprogram(name: "fclose", scope: !508, file: !508, line: 178, type: !1919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1986 = !DISubprogram(name: "__freading", scope: !1987, file: !1987, line: 51, type: !1919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1987 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!1988 = !DISubprogram(name: "lseek", scope: !1631, file: !1631, line: 339, type: !1989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!258, !116, !258, !116}
!1991 = distinct !DISubprogram(name: "rpl_fflush", scope: !847, file: !847, line: 130, type: !1992, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !2028)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!116, !1994}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1996)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1997)
!1997 = !{!1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1996, file: !236, line: 51, baseType: !116, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1996, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1996, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1996, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1996, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1996, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1996, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1996, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1996, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1996, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1996, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1996, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1996, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1996, file: !236, line: 70, baseType: !2012, size: 64, offset: 832)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1996, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1996, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1996, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1996, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1996, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1996, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1996, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1996, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1996, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1996, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1996, file: !236, line: 93, baseType: !2012, size: 64, offset: 1344)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1996, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1996, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1996, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1996, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2028 = !{!2029}
!2029 = !DILocalVariable(name: "stream", arg: 1, scope: !1991, file: !847, line: 130, type: !1994)
!2030 = !DILocation(line: 0, scope: !1991)
!2031 = !DILocation(line: 151, column: 14, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1991, file: !847, line: 151, column: 7)
!2033 = !DILocation(line: 151, column: 22, scope: !2032)
!2034 = !DILocation(line: 151, column: 27, scope: !2032)
!2035 = !DILocation(line: 151, column: 7, scope: !1991)
!2036 = !DILocation(line: 152, column: 12, scope: !2032)
!2037 = !DILocation(line: 152, column: 5, scope: !2032)
!2038 = !DILocalVariable(name: "fp", arg: 1, scope: !2039, file: !847, line: 42, type: !1994)
!2039 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !847, file: !847, line: 42, type: !2040, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !2042)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{null, !1994}
!2042 = !{!2038}
!2043 = !DILocation(line: 0, scope: !2039, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 157, column: 3, scope: !1991)
!2045 = !DILocation(line: 44, column: 12, scope: !2046, inlinedAt: !2044)
!2046 = distinct !DILexicalBlock(scope: !2039, file: !847, line: 44, column: 7)
!2047 = !DILocation(line: 44, column: 19, scope: !2046, inlinedAt: !2044)
!2048 = !DILocation(line: 44, column: 7, scope: !2039, inlinedAt: !2044)
!2049 = !DILocation(line: 46, column: 5, scope: !2046, inlinedAt: !2044)
!2050 = !DILocation(line: 159, column: 10, scope: !1991)
!2051 = !DILocation(line: 159, column: 3, scope: !1991)
!2052 = !DILocation(line: 236, column: 1, scope: !1991)
!2053 = !DISubprogram(name: "fflush", scope: !508, file: !508, line: 230, type: !1992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!2054 = distinct !DISubprogram(name: "fopen_safer", scope: !850, file: !850, line: 31, type: !2055, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !2091)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!2057, !165, !165}
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !2059)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !2060)
!2060 = !{!2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2059, file: !236, line: 51, baseType: !116, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2059, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2059, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2059, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2059, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2059, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2059, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2059, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2059, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2059, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2059, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2059, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2059, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2059, file: !236, line: 70, baseType: !2075, size: 64, offset: 832)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2059, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2059, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2059, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2059, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2059, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2059, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2059, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2059, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2059, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2059, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2059, file: !236, line: 93, baseType: !2075, size: 64, offset: 1344)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2059, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2059, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2059, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2059, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2091 = !{!2092, !2093, !2094, !2095, !2098, !2101, !2104}
!2092 = !DILocalVariable(name: "file", arg: 1, scope: !2054, file: !850, line: 31, type: !165)
!2093 = !DILocalVariable(name: "mode", arg: 2, scope: !2054, file: !850, line: 31, type: !165)
!2094 = !DILocalVariable(name: "fp", scope: !2054, file: !850, line: 33, type: !2057)
!2095 = !DILocalVariable(name: "fd", scope: !2096, file: !850, line: 37, type: !116)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !850, line: 36, column: 5)
!2097 = distinct !DILexicalBlock(scope: !2054, file: !850, line: 35, column: 7)
!2098 = !DILocalVariable(name: "f", scope: !2099, file: !850, line: 41, type: !116)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !850, line: 40, column: 9)
!2100 = distinct !DILexicalBlock(scope: !2096, file: !850, line: 39, column: 11)
!2101 = !DILocalVariable(name: "saved_errno", scope: !2102, file: !850, line: 45, type: !116)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !850, line: 44, column: 13)
!2103 = distinct !DILexicalBlock(scope: !2099, file: !850, line: 43, column: 15)
!2104 = !DILocalVariable(name: "saved_errno", scope: !2105, file: !850, line: 54, type: !116)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !850, line: 53, column: 13)
!2106 = distinct !DILexicalBlock(scope: !2099, file: !850, line: 51, column: 15)
!2107 = !DILocation(line: 0, scope: !2054)
!2108 = !DILocation(line: 33, column: 14, scope: !2054)
!2109 = !DILocation(line: 35, column: 7, scope: !2097)
!2110 = !DILocation(line: 35, column: 7, scope: !2054)
!2111 = !DILocation(line: 37, column: 16, scope: !2096)
!2112 = !DILocation(line: 0, scope: !2096)
!2113 = !DILocation(line: 39, column: 19, scope: !2100)
!2114 = !DILocation(line: 41, column: 19, scope: !2099)
!2115 = !DILocation(line: 0, scope: !2099)
!2116 = !DILocation(line: 43, column: 17, scope: !2103)
!2117 = !DILocation(line: 43, column: 15, scope: !2099)
!2118 = !DILocation(line: 45, column: 33, scope: !2102)
!2119 = !DILocation(line: 0, scope: !2102)
!2120 = !DILocation(line: 46, column: 15, scope: !2102)
!2121 = !DILocation(line: 47, column: 21, scope: !2102)
!2122 = !DILocation(line: 51, column: 15, scope: !2106)
!2123 = !DILocation(line: 51, column: 27, scope: !2106)
!2124 = !DILocation(line: 52, column: 15, scope: !2106)
!2125 = !DILocation(line: 52, column: 26, scope: !2106)
!2126 = !DILocation(line: 52, column: 24, scope: !2106)
!2127 = !DILocation(line: 51, column: 15, scope: !2099)
!2128 = !DILocation(line: 54, column: 33, scope: !2105)
!2129 = !DILocation(line: 0, scope: !2105)
!2130 = !DILocation(line: 55, column: 15, scope: !2105)
!2131 = !DILocation(line: 56, column: 21, scope: !2105)
!2132 = !DILocation(line: 63, column: 1, scope: !2054)
!2133 = !DISubprogram(name: "fdopen", scope: !508, file: !508, line: 293, type: !2134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!2057, !116, !165}
!2136 = !DISubprogram(name: "close", scope: !1631, file: !1631, line: 358, type: !1658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!2137 = distinct !DISubprogram(name: "fpurge", scope: !852, file: !852, line: 32, type: !2138, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !2174)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!116, !2140}
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !2142)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !2143)
!2143 = !{!2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2142, file: !236, line: 51, baseType: !116, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2142, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2142, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2142, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2142, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2142, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2142, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2142, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2142, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2142, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2142, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2142, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2142, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2142, file: !236, line: 70, baseType: !2158, size: 64, offset: 832)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2142, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2142, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2142, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2142, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2142, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2142, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2142, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2142, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2142, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2142, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2142, file: !236, line: 93, baseType: !2158, size: 64, offset: 1344)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2142, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2142, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2142, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2142, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2174 = !{!2175}
!2175 = !DILocalVariable(name: "fp", arg: 1, scope: !2137, file: !852, line: 32, type: !2140)
!2176 = !DILocation(line: 0, scope: !2137)
!2177 = !DILocation(line: 36, column: 3, scope: !2137)
!2178 = !DILocation(line: 38, column: 3, scope: !2137)
!2179 = !DISubprogram(name: "__fpurge", scope: !1987, file: !1987, line: 72, type: !2180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{null, !2140}
!2182 = distinct !DISubprogram(name: "rpl_fseeko", scope: !854, file: !854, line: 28, type: !2183, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !853, retainedNodes: !2219)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!116, !2185, !1852, !116}
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !2187)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !2188)
!2188 = !{!2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2187, file: !236, line: 51, baseType: !116, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2187, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2187, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2187, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2187, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2187, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2187, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2187, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2187, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2187, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2187, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2187, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2187, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2187, file: !236, line: 70, baseType: !2203, size: 64, offset: 832)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2187, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2187, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2187, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2187, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2187, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2187, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2187, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2187, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2187, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2187, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2187, file: !236, line: 93, baseType: !2203, size: 64, offset: 1344)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2187, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2187, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2187, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2187, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2219 = !{!2220, !2221, !2222, !2223}
!2220 = !DILocalVariable(name: "fp", arg: 1, scope: !2182, file: !854, line: 28, type: !2185)
!2221 = !DILocalVariable(name: "offset", arg: 2, scope: !2182, file: !854, line: 28, type: !1852)
!2222 = !DILocalVariable(name: "whence", arg: 3, scope: !2182, file: !854, line: 28, type: !116)
!2223 = !DILocalVariable(name: "pos", scope: !2224, file: !854, line: 123, type: !1852)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !854, line: 119, column: 5)
!2225 = distinct !DILexicalBlock(scope: !2182, file: !854, line: 55, column: 7)
!2226 = !DILocation(line: 0, scope: !2182)
!2227 = !DILocation(line: 55, column: 12, scope: !2225)
!2228 = !{!1350, !945, i64 16}
!2229 = !DILocation(line: 55, column: 33, scope: !2225)
!2230 = !{!1350, !945, i64 8}
!2231 = !DILocation(line: 55, column: 25, scope: !2225)
!2232 = !DILocation(line: 56, column: 7, scope: !2225)
!2233 = !DILocation(line: 56, column: 15, scope: !2225)
!2234 = !DILocation(line: 56, column: 37, scope: !2225)
!2235 = !{!1350, !945, i64 32}
!2236 = !DILocation(line: 56, column: 29, scope: !2225)
!2237 = !DILocation(line: 57, column: 7, scope: !2225)
!2238 = !DILocation(line: 57, column: 15, scope: !2225)
!2239 = !{!1350, !945, i64 72}
!2240 = !DILocation(line: 57, column: 29, scope: !2225)
!2241 = !DILocation(line: 55, column: 7, scope: !2182)
!2242 = !DILocation(line: 123, column: 26, scope: !2224)
!2243 = !DILocation(line: 123, column: 19, scope: !2224)
!2244 = !DILocation(line: 0, scope: !2224)
!2245 = !DILocation(line: 124, column: 15, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2224, file: !854, line: 124, column: 11)
!2247 = !DILocation(line: 124, column: 11, scope: !2224)
!2248 = !DILocation(line: 135, column: 19, scope: !2224)
!2249 = !DILocation(line: 136, column: 12, scope: !2224)
!2250 = !DILocation(line: 136, column: 20, scope: !2224)
!2251 = !{!1350, !1200, i64 144}
!2252 = !DILocation(line: 167, column: 7, scope: !2224)
!2253 = !DILocation(line: 169, column: 10, scope: !2182)
!2254 = !DILocation(line: 169, column: 3, scope: !2182)
!2255 = !DILocation(line: 170, column: 1, scope: !2182)
!2256 = !DISubprogram(name: "fseeko", scope: !508, file: !508, line: 736, type: !2257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!116, !2185, !258, !116}
!2259 = distinct !DISubprogram(name: "getprogname", scope: !856, file: !856, line: 54, type: !2260, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !855, retainedNodes: !1001)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!165}
!2262 = !DILocation(line: 58, column: 10, scope: !2259)
!2263 = !DILocation(line: 58, column: 3, scope: !2259)
!2264 = distinct !DISubprogram(name: "hard_locale", scope: !553, file: !553, line: 28, type: !2265, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!205, !116}
!2267 = !{!2268, !2269}
!2268 = !DILocalVariable(name: "category", arg: 1, scope: !2264, file: !553, line: 28, type: !116)
!2269 = !DILocalVariable(name: "locale", scope: !2264, file: !553, line: 30, type: !2270)
!2270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !2271)
!2271 = !{!2272}
!2272 = !DISubrange(count: 257)
!2273 = !DILocation(line: 0, scope: !2264)
!2274 = !DILocation(line: 30, column: 3, scope: !2264)
!2275 = !DILocation(line: 30, column: 8, scope: !2264)
!2276 = !DILocation(line: 32, column: 7, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2264, file: !553, line: 32, column: 7)
!2278 = !DILocation(line: 32, column: 7, scope: !2264)
!2279 = !DILocalVariable(name: "__s1", arg: 1, scope: !2280, file: !1029, line: 1359, type: !165)
!2280 = distinct !DISubprogram(name: "streq", scope: !1029, file: !1029, line: 1359, type: !1030, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !2281)
!2281 = !{!2279, !2282}
!2282 = !DILocalVariable(name: "__s2", arg: 2, scope: !2280, file: !1029, line: 1359, type: !165)
!2283 = !DILocation(line: 0, scope: !2280, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 35, column: 9, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2264, file: !553, line: 35, column: 7)
!2286 = !DILocation(line: 1361, column: 11, scope: !2280, inlinedAt: !2284)
!2287 = !DILocation(line: 1361, column: 10, scope: !2280, inlinedAt: !2284)
!2288 = !DILocation(line: 35, column: 29, scope: !2285)
!2289 = !DILocation(line: 0, scope: !2280, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 35, column: 32, scope: !2285)
!2291 = !DILocation(line: 1361, column: 11, scope: !2280, inlinedAt: !2290)
!2292 = !DILocation(line: 1361, column: 10, scope: !2280, inlinedAt: !2290)
!2293 = !DILocation(line: 35, column: 7, scope: !2264)
!2294 = !DILocation(line: 46, column: 3, scope: !2264)
!2295 = !DILocation(line: 47, column: 1, scope: !2264)
!2296 = distinct !DISubprogram(name: "initbuffer", scope: !860, file: !860, line: 37, type: !2297, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !2305)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{null, !2299}
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !1272, line: 32, size: 192, elements: !2301)
!2301 = !{!2302, !2303, !2304}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2300, file: !1272, line: 34, baseType: !897, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2300, file: !1272, line: 35, baseType: !897, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2300, file: !1272, line: 36, baseType: !159, size: 64, offset: 128)
!2305 = !{!2306}
!2306 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2296, file: !860, line: 37, type: !2299)
!2307 = !DILocation(line: 0, scope: !2296)
!2308 = !DILocalVariable(name: "__dest", arg: 1, scope: !2309, file: !2310, line: 57, type: !160)
!2309 = distinct !DISubprogram(name: "memset", scope: !2310, file: !2310, line: 57, type: !2311, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !2313)
!2310 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!160, !160, !116, !162}
!2313 = !{!2308, !2314, !2315}
!2314 = !DILocalVariable(name: "__ch", arg: 2, scope: !2309, file: !2310, line: 57, type: !116)
!2315 = !DILocalVariable(name: "__len", arg: 3, scope: !2309, file: !2310, line: 57, type: !162)
!2316 = !DILocation(line: 0, scope: !2309, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 39, column: 3, scope: !2296)
!2318 = !DILocation(line: 59, column: 10, scope: !2309, inlinedAt: !2317)
!2319 = !DILocation(line: 40, column: 1, scope: !2296)
!2320 = distinct !DISubprogram(name: "readlinebuffer", scope: !860, file: !860, line: 43, type: !2321, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !2357)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!2299, !2299, !2323}
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !2325)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !2326)
!2326 = !{!2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2325, file: !236, line: 51, baseType: !116, size: 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2325, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2325, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2325, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2325, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2325, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2325, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2325, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2325, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2325, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2325, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2325, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2325, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2325, file: !236, line: 70, baseType: !2341, size: 64, offset: 832)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2325, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2325, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2325, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2325, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2325, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2325, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2325, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2325, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2325, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2325, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2325, file: !236, line: 93, baseType: !2341, size: 64, offset: 1344)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2325, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2325, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2325, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2325, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2357 = !{!2358, !2359}
!2358 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2320, file: !860, line: 43, type: !2299)
!2359 = !DILocalVariable(name: "stream", arg: 2, scope: !2320, file: !860, line: 43, type: !2323)
!2360 = !DILocation(line: 0, scope: !2320)
!2361 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2362, file: !860, line: 59, type: !2299)
!2362 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !860, file: !860, line: 59, type: !2363, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !2365)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!2299, !2299, !2323, !4}
!2365 = !{!2361, !2366, !2367, !2368, !2369, !2370, !2371, !2372}
!2366 = !DILocalVariable(name: "stream", arg: 2, scope: !2362, file: !860, line: 59, type: !2323)
!2367 = !DILocalVariable(name: "delimiter", arg: 3, scope: !2362, file: !860, line: 60, type: !4)
!2368 = !DILocalVariable(name: "buffer", scope: !2362, file: !860, line: 65, type: !159)
!2369 = !DILocalVariable(name: "p", scope: !2362, file: !860, line: 66, type: !159)
!2370 = !DILocalVariable(name: "end", scope: !2362, file: !860, line: 67, type: !159)
!2371 = !DILocalVariable(name: "c", scope: !2362, file: !860, line: 68, type: !116)
!2372 = !DILocalVariable(name: "oldsize", scope: !2373, file: !860, line: 83, type: !897)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !860, line: 82, column: 9)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !860, line: 81, column: 11)
!2375 = distinct !DILexicalBlock(scope: !2362, file: !860, line: 71, column: 5)
!2376 = !DILocation(line: 0, scope: !2362, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 45, column: 10, scope: !2320)
!2378 = !DILocalVariable(name: "__stream", arg: 1, scope: !2379, file: !1341, line: 128, type: !2323)
!2379 = distinct !DISubprogram(name: "feof_unlocked", scope: !1341, file: !1341, line: 128, type: !2380, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !2382)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!116, !2323}
!2382 = !{!2378}
!2383 = !DILocation(line: 0, scope: !2379, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 62, column: 7, scope: !2385, inlinedAt: !2377)
!2385 = distinct !DILexicalBlock(scope: !2362, file: !860, line: 62, column: 7)
!2386 = !DILocation(line: 130, column: 10, scope: !2379, inlinedAt: !2384)
!2387 = !DILocation(line: 62, column: 7, scope: !2385, inlinedAt: !2377)
!2388 = !DILocation(line: 62, column: 7, scope: !2362, inlinedAt: !2377)
!2389 = !DILocation(line: 65, column: 30, scope: !2362, inlinedAt: !2377)
!2390 = !DILocation(line: 67, column: 36, scope: !2362, inlinedAt: !2377)
!2391 = !{!1381, !1200, i64 0}
!2392 = !DILocation(line: 67, column: 22, scope: !2362, inlinedAt: !2377)
!2393 = !DILocation(line: 70, column: 3, scope: !2362, inlinedAt: !2377)
!2394 = !DILocalVariable(name: "__fp", arg: 1, scope: !2395, file: !1341, line: 66, type: !2323)
!2395 = distinct !DISubprogram(name: "getc_unlocked", scope: !1341, file: !1341, line: 66, type: !2380, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !2396)
!2396 = !{!2394}
!2397 = !DILocation(line: 0, scope: !2395, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 72, column: 11, scope: !2375, inlinedAt: !2377)
!2399 = !DILocation(line: 68, column: 10, scope: !2395, inlinedAt: !2398)
!2400 = !DILocation(line: 73, column: 11, scope: !2375, inlinedAt: !2377)
!2401 = !DILocation(line: 73, column: 13, scope: !2402, inlinedAt: !2377)
!2402 = distinct !DILexicalBlock(scope: !2375, file: !860, line: 73, column: 11)
!2403 = !DILocation(line: 75, column: 17, scope: !2404, inlinedAt: !2377)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !860, line: 75, column: 15)
!2405 = distinct !DILexicalBlock(scope: !2402, file: !860, line: 74, column: 9)
!2406 = !DILocation(line: 75, column: 27, scope: !2404, inlinedAt: !2377)
!2407 = !DILocalVariable(name: "__stream", arg: 1, scope: !2408, file: !1341, line: 135, type: !2323)
!2408 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1341, file: !1341, line: 135, type: !2380, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !2409)
!2409 = !{!2407}
!2410 = !DILocation(line: 0, scope: !2408, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 75, column: 30, scope: !2404, inlinedAt: !2377)
!2412 = !DILocation(line: 137, column: 10, scope: !2408, inlinedAt: !2411)
!2413 = !DILocation(line: 75, column: 30, scope: !2404, inlinedAt: !2377)
!2414 = !DILocation(line: 75, column: 15, scope: !2405, inlinedAt: !2377)
!2415 = !DILocation(line: 77, column: 15, scope: !2416, inlinedAt: !2377)
!2416 = distinct !DILexicalBlock(scope: !2405, file: !860, line: 77, column: 15)
!2417 = !DILocation(line: 77, column: 21, scope: !2416, inlinedAt: !2377)
!2418 = !DILocation(line: 77, column: 15, scope: !2405, inlinedAt: !2377)
!2419 = !DILocation(line: 0, scope: !2375, inlinedAt: !2377)
!2420 = !DILocation(line: 81, column: 13, scope: !2374, inlinedAt: !2377)
!2421 = !DILocation(line: 81, column: 11, scope: !2375, inlinedAt: !2377)
!2422 = !DILocation(line: 83, column: 39, scope: !2373, inlinedAt: !2377)
!2423 = !DILocation(line: 0, scope: !2373, inlinedAt: !2377)
!2424 = !DILocation(line: 84, column: 20, scope: !2373, inlinedAt: !2377)
!2425 = !DILocation(line: 85, column: 22, scope: !2373, inlinedAt: !2377)
!2426 = !DILocation(line: 86, column: 30, scope: !2373, inlinedAt: !2377)
!2427 = !DILocation(line: 87, column: 38, scope: !2373, inlinedAt: !2377)
!2428 = !DILocation(line: 87, column: 24, scope: !2373, inlinedAt: !2377)
!2429 = !DILocation(line: 88, column: 9, scope: !2373, inlinedAt: !2377)
!2430 = !DILocation(line: 89, column: 14, scope: !2375, inlinedAt: !2377)
!2431 = !DILocation(line: 89, column: 9, scope: !2375, inlinedAt: !2377)
!2432 = !DILocation(line: 89, column: 12, scope: !2375, inlinedAt: !2377)
!2433 = !DILocation(line: 91, column: 12, scope: !2362, inlinedAt: !2377)
!2434 = !DILocation(line: 90, column: 5, scope: !2375, inlinedAt: !2377)
!2435 = distinct !{!2435, !2393, !2436, !1063}
!2436 = !DILocation(line: 91, column: 24, scope: !2362, inlinedAt: !2377)
!2437 = !DILocation(line: 93, column: 26, scope: !2362, inlinedAt: !2377)
!2438 = !DILocation(line: 93, column: 15, scope: !2362, inlinedAt: !2377)
!2439 = !DILocation(line: 93, column: 22, scope: !2362, inlinedAt: !2377)
!2440 = !DILocation(line: 94, column: 3, scope: !2362, inlinedAt: !2377)
!2441 = !DILocation(line: 45, column: 3, scope: !2320)
!2442 = !DISubprogram(name: "__uflow", scope: !508, file: !508, line: 885, type: !2380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!2443 = !DILocation(line: 0, scope: !2362)
!2444 = !DILocation(line: 0, scope: !2379, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 62, column: 7, scope: !2385)
!2446 = !DILocation(line: 130, column: 10, scope: !2379, inlinedAt: !2445)
!2447 = !DILocation(line: 62, column: 7, scope: !2385)
!2448 = !DILocation(line: 62, column: 7, scope: !2362)
!2449 = !DILocation(line: 65, column: 30, scope: !2362)
!2450 = !DILocation(line: 67, column: 36, scope: !2362)
!2451 = !DILocation(line: 67, column: 22, scope: !2362)
!2452 = !DILocation(line: 70, column: 3, scope: !2362)
!2453 = !DILocation(line: 0, scope: !2395, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 72, column: 11, scope: !2375)
!2455 = !DILocation(line: 68, column: 10, scope: !2395, inlinedAt: !2454)
!2456 = !DILocation(line: 73, column: 11, scope: !2375)
!2457 = !DILocation(line: 73, column: 13, scope: !2402)
!2458 = !DILocation(line: 75, column: 17, scope: !2404)
!2459 = !DILocation(line: 75, column: 27, scope: !2404)
!2460 = !DILocation(line: 0, scope: !2408, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 75, column: 30, scope: !2404)
!2462 = !DILocation(line: 137, column: 10, scope: !2408, inlinedAt: !2461)
!2463 = !DILocation(line: 75, column: 30, scope: !2404)
!2464 = !DILocation(line: 75, column: 15, scope: !2405)
!2465 = !DILocation(line: 77, column: 15, scope: !2416)
!2466 = !DILocation(line: 77, column: 21, scope: !2416)
!2467 = !DILocation(line: 77, column: 15, scope: !2405)
!2468 = !DILocation(line: 0, scope: !2375)
!2469 = !DILocation(line: 81, column: 13, scope: !2374)
!2470 = !DILocation(line: 81, column: 11, scope: !2375)
!2471 = !DILocation(line: 83, column: 39, scope: !2373)
!2472 = !DILocation(line: 0, scope: !2373)
!2473 = !DILocation(line: 84, column: 20, scope: !2373)
!2474 = !DILocation(line: 85, column: 22, scope: !2373)
!2475 = !DILocation(line: 86, column: 30, scope: !2373)
!2476 = !DILocation(line: 87, column: 38, scope: !2373)
!2477 = !DILocation(line: 87, column: 24, scope: !2373)
!2478 = !DILocation(line: 88, column: 9, scope: !2373)
!2479 = !DILocation(line: 89, column: 14, scope: !2375)
!2480 = !DILocation(line: 89, column: 9, scope: !2375)
!2481 = !DILocation(line: 89, column: 12, scope: !2375)
!2482 = !DILocation(line: 91, column: 12, scope: !2362)
!2483 = !DILocation(line: 90, column: 5, scope: !2375)
!2484 = distinct !{!2484, !2452, !2485, !1063}
!2485 = !DILocation(line: 91, column: 24, scope: !2362)
!2486 = !DILocation(line: 93, column: 26, scope: !2362)
!2487 = !DILocation(line: 93, column: 15, scope: !2362)
!2488 = !DILocation(line: 93, column: 22, scope: !2362)
!2489 = !DILocation(line: 94, column: 3, scope: !2362)
!2490 = !DILocation(line: 95, column: 1, scope: !2362)
!2491 = distinct !DISubprogram(name: "freebuffer", scope: !860, file: !860, line: 100, type: !2297, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !2492)
!2492 = !{!2493}
!2493 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2491, file: !860, line: 100, type: !2299)
!2494 = !DILocation(line: 0, scope: !2491)
!2495 = !DILocation(line: 102, column: 21, scope: !2491)
!2496 = !DILocation(line: 102, column: 3, scope: !2491)
!2497 = !DILocation(line: 103, column: 1, scope: !2491)
!2498 = !DISubprogram(name: "free", scope: !1029, file: !1029, line: 752, type: !2499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{null, !160}
!2501 = distinct !DISubprogram(name: "memcmp2", scope: !864, file: !864, line: 25, type: !2502, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !863, retainedNodes: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!116, !165, !162, !165, !162}
!2504 = !{!2505, !2506, !2507, !2508, !2509}
!2505 = !DILocalVariable(name: "s1", arg: 1, scope: !2501, file: !864, line: 25, type: !165)
!2506 = !DILocalVariable(name: "n1", arg: 2, scope: !2501, file: !864, line: 25, type: !162)
!2507 = !DILocalVariable(name: "s2", arg: 3, scope: !2501, file: !864, line: 25, type: !165)
!2508 = !DILocalVariable(name: "n2", arg: 4, scope: !2501, file: !864, line: 25, type: !162)
!2509 = !DILocalVariable(name: "cmp", scope: !2501, file: !864, line: 27, type: !116)
!2510 = !DILocation(line: 0, scope: !2501)
!2511 = !DILocation(line: 27, column: 29, scope: !2501)
!2512 = !DILocation(line: 27, column: 13, scope: !2501)
!2513 = !DILocation(line: 28, column: 11, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2501, file: !864, line: 28, column: 7)
!2515 = !DILocation(line: 28, column: 7, scope: !2501)
!2516 = !DILocation(line: 29, column: 11, scope: !2514)
!2517 = !DILocation(line: 29, column: 5, scope: !2514)
!2518 = !DILocation(line: 30, column: 3, scope: !2501)
!2519 = distinct !DISubprogram(name: "set_program_name", scope: !559, file: !559, line: 37, type: !967, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !558, retainedNodes: !2520)
!2520 = !{!2521, !2522, !2523}
!2521 = !DILocalVariable(name: "argv0", arg: 1, scope: !2519, file: !559, line: 37, type: !165)
!2522 = !DILocalVariable(name: "slash", scope: !2519, file: !559, line: 44, type: !165)
!2523 = !DILocalVariable(name: "base", scope: !2519, file: !559, line: 45, type: !165)
!2524 = !DILocation(line: 0, scope: !2519)
!2525 = !DILocation(line: 44, column: 23, scope: !2519)
!2526 = !DILocation(line: 45, column: 22, scope: !2519)
!2527 = !DILocation(line: 46, column: 17, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2519, file: !559, line: 46, column: 7)
!2529 = !DILocation(line: 46, column: 9, scope: !2528)
!2530 = !DILocation(line: 46, column: 25, scope: !2528)
!2531 = !DILocation(line: 46, column: 40, scope: !2528)
!2532 = !DILocalVariable(name: "__s1", arg: 1, scope: !2533, file: !1029, line: 974, type: !1161)
!2533 = distinct !DISubprogram(name: "memeq", scope: !1029, file: !1029, line: 974, type: !2534, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !558, retainedNodes: !2536)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!205, !1161, !1161, !162}
!2536 = !{!2532, !2537, !2538}
!2537 = !DILocalVariable(name: "__s2", arg: 2, scope: !2533, file: !1029, line: 974, type: !1161)
!2538 = !DILocalVariable(name: "__n", arg: 3, scope: !2533, file: !1029, line: 974, type: !162)
!2539 = !DILocation(line: 0, scope: !2533, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 46, column: 28, scope: !2528)
!2541 = !DILocation(line: 976, column: 11, scope: !2533, inlinedAt: !2540)
!2542 = !DILocation(line: 976, column: 10, scope: !2533, inlinedAt: !2540)
!2543 = !DILocation(line: 46, column: 7, scope: !2519)
!2544 = !DILocation(line: 49, column: 11, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !559, line: 49, column: 11)
!2546 = distinct !DILexicalBlock(scope: !2528, file: !559, line: 47, column: 5)
!2547 = !DILocation(line: 49, column: 36, scope: !2545)
!2548 = !DILocation(line: 49, column: 11, scope: !2546)
!2549 = !DILocation(line: 65, column: 16, scope: !2519)
!2550 = !DILocation(line: 71, column: 27, scope: !2519)
!2551 = !DILocation(line: 74, column: 33, scope: !2519)
!2552 = !DILocation(line: 76, column: 1, scope: !2519)
!2553 = !DISubprogram(name: "strrchr", scope: !1133, file: !1133, line: 273, type: !1148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!2554 = !DILocation(line: 0, scope: !568)
!2555 = !DILocation(line: 40, column: 29, scope: !568)
!2556 = !DILocation(line: 41, column: 19, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !568, file: !569, line: 41, column: 7)
!2558 = !DILocation(line: 41, column: 7, scope: !568)
!2559 = !DILocation(line: 47, column: 3, scope: !568)
!2560 = !DILocation(line: 48, column: 3, scope: !568)
!2561 = !DILocation(line: 48, column: 13, scope: !568)
!2562 = !DILocalVariable(name: "ps", arg: 1, scope: !2563, file: !2564, line: 1135, type: !2567)
!2563 = distinct !DISubprogram(name: "mbszero", scope: !2564, file: !2564, line: 1135, type: !2565, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2568)
!2564 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2565 = !DISubroutineType(types: !2566)
!2566 = !{null, !2567}
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!2568 = !{!2562}
!2569 = !DILocation(line: 0, scope: !2563, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 48, column: 18, scope: !568)
!2571 = !DILocalVariable(name: "__dest", arg: 1, scope: !2572, file: !2310, line: 57, type: !160)
!2572 = distinct !DISubprogram(name: "memset", scope: !2310, file: !2310, line: 57, type: !2311, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2573)
!2573 = !{!2571, !2574, !2575}
!2574 = !DILocalVariable(name: "__ch", arg: 2, scope: !2572, file: !2310, line: 57, type: !116)
!2575 = !DILocalVariable(name: "__len", arg: 3, scope: !2572, file: !2310, line: 57, type: !162)
!2576 = !DILocation(line: 0, scope: !2572, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 1137, column: 3, scope: !2563, inlinedAt: !2570)
!2578 = !DILocation(line: 59, column: 10, scope: !2572, inlinedAt: !2577)
!2579 = !DILocation(line: 49, column: 7, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !568, file: !569, line: 49, column: 7)
!2581 = !DILocation(line: 49, column: 39, scope: !2580)
!2582 = !DILocation(line: 49, column: 44, scope: !2580)
!2583 = !DILocation(line: 54, column: 1, scope: !568)
!2584 = !DISubprogram(name: "mbrtoc32", scope: !580, file: !580, line: 57, type: !2585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!162, !2587, !1007, !162, !2589}
!2587 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2588)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2567)
!2590 = distinct !DISubprogram(name: "clone_quoting_options", scope: !599, file: !599, line: 113, type: !2591, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !2594)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!2593, !2593}
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!2594 = !{!2595, !2596, !2597}
!2595 = !DILocalVariable(name: "o", arg: 1, scope: !2590, file: !599, line: 113, type: !2593)
!2596 = !DILocalVariable(name: "saved_errno", scope: !2590, file: !599, line: 115, type: !116)
!2597 = !DILocalVariable(name: "p", scope: !2590, file: !599, line: 116, type: !2593)
!2598 = !DILocation(line: 0, scope: !2590)
!2599 = !DILocation(line: 115, column: 21, scope: !2590)
!2600 = !DILocation(line: 116, column: 40, scope: !2590)
!2601 = !DILocation(line: 116, column: 31, scope: !2590)
!2602 = !DILocation(line: 118, column: 9, scope: !2590)
!2603 = !DILocation(line: 119, column: 3, scope: !2590)
!2604 = distinct !DISubprogram(name: "get_quoting_style", scope: !599, file: !599, line: 124, type: !2605, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !2609)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!135, !2607}
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!2609 = !{!2610}
!2610 = !DILocalVariable(name: "o", arg: 1, scope: !2604, file: !599, line: 124, type: !2607)
!2611 = !DILocation(line: 0, scope: !2604)
!2612 = !DILocation(line: 126, column: 11, scope: !2604)
!2613 = !DILocation(line: 126, column: 46, scope: !2604)
!2614 = !{!2615, !946, i64 0}
!2615 = !{!"quoting_options", !946, i64 0, !1017, i64 4, !946, i64 8, !945, i64 40, !945, i64 48}
!2616 = !DILocation(line: 126, column: 3, scope: !2604)
!2617 = distinct !DISubprogram(name: "set_quoting_style", scope: !599, file: !599, line: 132, type: !2618, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !2620)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{null, !2593, !135}
!2620 = !{!2621, !2622}
!2621 = !DILocalVariable(name: "o", arg: 1, scope: !2617, file: !599, line: 132, type: !2593)
!2622 = !DILocalVariable(name: "s", arg: 2, scope: !2617, file: !599, line: 132, type: !135)
!2623 = !DILocation(line: 0, scope: !2617)
!2624 = !DILocation(line: 134, column: 4, scope: !2617)
!2625 = !DILocation(line: 134, column: 45, scope: !2617)
!2626 = !DILocation(line: 135, column: 1, scope: !2617)
!2627 = distinct !DISubprogram(name: "set_char_quoting", scope: !599, file: !599, line: 143, type: !2628, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!116, !2593, !4, !116}
!2630 = !{!2631, !2632, !2633, !2634, !2635, !2637, !2638}
!2631 = !DILocalVariable(name: "o", arg: 1, scope: !2627, file: !599, line: 143, type: !2593)
!2632 = !DILocalVariable(name: "c", arg: 2, scope: !2627, file: !599, line: 143, type: !4)
!2633 = !DILocalVariable(name: "i", arg: 3, scope: !2627, file: !599, line: 143, type: !116)
!2634 = !DILocalVariable(name: "uc", scope: !2627, file: !599, line: 145, type: !167)
!2635 = !DILocalVariable(name: "p", scope: !2627, file: !599, line: 146, type: !2636)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!2637 = !DILocalVariable(name: "shift", scope: !2627, file: !599, line: 148, type: !116)
!2638 = !DILocalVariable(name: "r", scope: !2627, file: !599, line: 149, type: !103)
!2639 = !DILocation(line: 0, scope: !2627)
!2640 = !DILocation(line: 147, column: 6, scope: !2627)
!2641 = !DILocation(line: 147, column: 41, scope: !2627)
!2642 = !DILocation(line: 147, column: 62, scope: !2627)
!2643 = !DILocation(line: 147, column: 57, scope: !2627)
!2644 = !DILocation(line: 148, column: 15, scope: !2627)
!2645 = !DILocation(line: 149, column: 21, scope: !2627)
!2646 = !DILocation(line: 149, column: 24, scope: !2627)
!2647 = !DILocation(line: 149, column: 34, scope: !2627)
!2648 = !DILocation(line: 150, column: 19, scope: !2627)
!2649 = !DILocation(line: 150, column: 24, scope: !2627)
!2650 = !DILocation(line: 150, column: 6, scope: !2627)
!2651 = !DILocation(line: 151, column: 3, scope: !2627)
!2652 = distinct !DISubprogram(name: "set_quoting_flags", scope: !599, file: !599, line: 159, type: !2653, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !2655)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!116, !2593, !116}
!2655 = !{!2656, !2657, !2658}
!2656 = !DILocalVariable(name: "o", arg: 1, scope: !2652, file: !599, line: 159, type: !2593)
!2657 = !DILocalVariable(name: "i", arg: 2, scope: !2652, file: !599, line: 159, type: !116)
!2658 = !DILocalVariable(name: "r", scope: !2652, file: !599, line: 163, type: !116)
!2659 = !DILocation(line: 0, scope: !2652)
!2660 = !DILocation(line: 161, column: 8, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2652, file: !599, line: 161, column: 7)
!2662 = !DILocation(line: 161, column: 7, scope: !2652)
!2663 = !DILocation(line: 163, column: 14, scope: !2652)
!2664 = !{!2615, !1017, i64 4}
!2665 = !DILocation(line: 164, column: 12, scope: !2652)
!2666 = !DILocation(line: 165, column: 3, scope: !2652)
!2667 = distinct !DISubprogram(name: "set_custom_quoting", scope: !599, file: !599, line: 169, type: !2668, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !2670)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{null, !2593, !165, !165}
!2670 = !{!2671, !2672, !2673}
!2671 = !DILocalVariable(name: "o", arg: 1, scope: !2667, file: !599, line: 169, type: !2593)
!2672 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2667, file: !599, line: 170, type: !165)
!2673 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2667, file: !599, line: 170, type: !165)
!2674 = !DILocation(line: 0, scope: !2667)
!2675 = !DILocation(line: 172, column: 8, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2667, file: !599, line: 172, column: 7)
!2677 = !DILocation(line: 172, column: 7, scope: !2667)
!2678 = !DILocation(line: 174, column: 12, scope: !2667)
!2679 = !DILocation(line: 175, column: 8, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2667, file: !599, line: 175, column: 7)
!2681 = !DILocation(line: 175, column: 19, scope: !2680)
!2682 = !DILocation(line: 176, column: 5, scope: !2680)
!2683 = !DILocation(line: 177, column: 6, scope: !2667)
!2684 = !DILocation(line: 177, column: 17, scope: !2667)
!2685 = !{!2615, !945, i64 40}
!2686 = !DILocation(line: 178, column: 6, scope: !2667)
!2687 = !DILocation(line: 178, column: 18, scope: !2667)
!2688 = !{!2615, !945, i64 48}
!2689 = !DILocation(line: 179, column: 1, scope: !2667)
!2690 = !DISubprogram(name: "abort", scope: !1137, file: !1137, line: 598, type: !549, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!2691 = distinct !DISubprogram(name: "quotearg_buffer", scope: !599, file: !599, line: 774, type: !2692, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !2694)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!162, !159, !162, !165, !162, !2607}
!2694 = !{!2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702}
!2695 = !DILocalVariable(name: "buffer", arg: 1, scope: !2691, file: !599, line: 774, type: !159)
!2696 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2691, file: !599, line: 774, type: !162)
!2697 = !DILocalVariable(name: "arg", arg: 3, scope: !2691, file: !599, line: 775, type: !165)
!2698 = !DILocalVariable(name: "argsize", arg: 4, scope: !2691, file: !599, line: 775, type: !162)
!2699 = !DILocalVariable(name: "o", arg: 5, scope: !2691, file: !599, line: 776, type: !2607)
!2700 = !DILocalVariable(name: "p", scope: !2691, file: !599, line: 778, type: !2607)
!2701 = !DILocalVariable(name: "saved_errno", scope: !2691, file: !599, line: 779, type: !116)
!2702 = !DILocalVariable(name: "r", scope: !2691, file: !599, line: 780, type: !162)
!2703 = !DILocation(line: 0, scope: !2691)
!2704 = !DILocation(line: 778, column: 37, scope: !2691)
!2705 = !DILocation(line: 779, column: 21, scope: !2691)
!2706 = !DILocation(line: 781, column: 43, scope: !2691)
!2707 = !DILocation(line: 781, column: 53, scope: !2691)
!2708 = !DILocation(line: 781, column: 63, scope: !2691)
!2709 = !DILocation(line: 782, column: 43, scope: !2691)
!2710 = !DILocation(line: 782, column: 58, scope: !2691)
!2711 = !DILocation(line: 780, column: 14, scope: !2691)
!2712 = !DILocation(line: 783, column: 9, scope: !2691)
!2713 = !DILocation(line: 784, column: 3, scope: !2691)
!2714 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !599, file: !599, line: 251, type: !2715, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !2719)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!162, !159, !162, !165, !162, !135, !116, !2717, !165, !165}
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!2719 = !{!2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2744, !2746, !2749, !2750, !2751, !2752, !2755, !2756, !2759, !2763, !2764, !2772, !2775, !2776, !2778, !2779, !2780, !2781}
!2720 = !DILocalVariable(name: "buffer", arg: 1, scope: !2714, file: !599, line: 251, type: !159)
!2721 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2714, file: !599, line: 251, type: !162)
!2722 = !DILocalVariable(name: "arg", arg: 3, scope: !2714, file: !599, line: 252, type: !165)
!2723 = !DILocalVariable(name: "argsize", arg: 4, scope: !2714, file: !599, line: 252, type: !162)
!2724 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2714, file: !599, line: 253, type: !135)
!2725 = !DILocalVariable(name: "flags", arg: 6, scope: !2714, file: !599, line: 253, type: !116)
!2726 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2714, file: !599, line: 254, type: !2717)
!2727 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2714, file: !599, line: 255, type: !165)
!2728 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2714, file: !599, line: 256, type: !165)
!2729 = !DILocalVariable(name: "unibyte_locale", scope: !2714, file: !599, line: 258, type: !205)
!2730 = !DILocalVariable(name: "len", scope: !2714, file: !599, line: 260, type: !162)
!2731 = !DILocalVariable(name: "orig_buffersize", scope: !2714, file: !599, line: 261, type: !162)
!2732 = !DILocalVariable(name: "quote_string", scope: !2714, file: !599, line: 262, type: !165)
!2733 = !DILocalVariable(name: "quote_string_len", scope: !2714, file: !599, line: 263, type: !162)
!2734 = !DILocalVariable(name: "backslash_escapes", scope: !2714, file: !599, line: 264, type: !205)
!2735 = !DILocalVariable(name: "elide_outer_quotes", scope: !2714, file: !599, line: 265, type: !205)
!2736 = !DILocalVariable(name: "encountered_single_quote", scope: !2714, file: !599, line: 266, type: !205)
!2737 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2714, file: !599, line: 267, type: !205)
!2738 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2714, file: !599, line: 309, type: !205)
!2739 = !DILocalVariable(name: "lq", scope: !2740, file: !599, line: 361, type: !165)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !599, line: 361, column: 11)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !599, line: 360, column: 13)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !599, line: 333, column: 7)
!2743 = distinct !DILexicalBlock(scope: !2714, file: !599, line: 312, column: 5)
!2744 = !DILocalVariable(name: "i", scope: !2745, file: !599, line: 395, type: !162)
!2745 = distinct !DILexicalBlock(scope: !2714, file: !599, line: 395, column: 3)
!2746 = !DILocalVariable(name: "is_right_quote", scope: !2747, file: !599, line: 397, type: !205)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !599, line: 396, column: 5)
!2748 = distinct !DILexicalBlock(scope: !2745, file: !599, line: 395, column: 3)
!2749 = !DILocalVariable(name: "escaping", scope: !2747, file: !599, line: 398, type: !205)
!2750 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2747, file: !599, line: 399, type: !205)
!2751 = !DILocalVariable(name: "c", scope: !2747, file: !599, line: 417, type: !167)
!2752 = !DILocalVariable(name: "m", scope: !2753, file: !599, line: 598, type: !162)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !599, line: 596, column: 11)
!2754 = distinct !DILexicalBlock(scope: !2747, file: !599, line: 419, column: 9)
!2755 = !DILocalVariable(name: "printable", scope: !2753, file: !599, line: 600, type: !205)
!2756 = !DILocalVariable(name: "mbs", scope: !2757, file: !599, line: 609, type: !672)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !599, line: 608, column: 15)
!2758 = distinct !DILexicalBlock(scope: !2753, file: !599, line: 602, column: 17)
!2759 = !DILocalVariable(name: "w", scope: !2760, file: !599, line: 618, type: !579)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !599, line: 617, column: 19)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !599, line: 616, column: 17)
!2762 = distinct !DILexicalBlock(scope: !2757, file: !599, line: 616, column: 17)
!2763 = !DILocalVariable(name: "bytes", scope: !2760, file: !599, line: 619, type: !162)
!2764 = !DILocalVariable(name: "j", scope: !2765, file: !599, line: 648, type: !162)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !599, line: 648, column: 29)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !599, line: 647, column: 27)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !599, line: 645, column: 29)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !599, line: 636, column: 23)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !599, line: 628, column: 30)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !599, line: 623, column: 30)
!2771 = distinct !DILexicalBlock(scope: !2760, file: !599, line: 621, column: 25)
!2772 = !DILocalVariable(name: "ilim", scope: !2773, file: !599, line: 674, type: !162)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !599, line: 671, column: 15)
!2774 = distinct !DILexicalBlock(scope: !2753, file: !599, line: 670, column: 17)
!2775 = !DILabel(scope: !2714, name: "process_input", file: !599, line: 308)
!2776 = !DILabel(scope: !2777, name: "c_and_shell_escape", file: !599, line: 502)
!2777 = distinct !DILexicalBlock(scope: !2754, file: !599, line: 478, column: 9)
!2778 = !DILabel(scope: !2777, name: "c_escape", file: !599, line: 507)
!2779 = !DILabel(scope: !2747, name: "store_escape", file: !599, line: 709)
!2780 = !DILabel(scope: !2747, name: "store_c", file: !599, line: 712)
!2781 = !DILabel(scope: !2714, name: "force_outer_quoting_style", file: !599, line: 753)
!2782 = !DILocation(line: 0, scope: !2714)
!2783 = !DILocation(line: 258, column: 25, scope: !2714)
!2784 = !DILocation(line: 258, column: 36, scope: !2714)
!2785 = !DILocation(line: 267, column: 3, scope: !2714)
!2786 = !DILocation(line: 261, column: 10, scope: !2714)
!2787 = !DILocation(line: 262, column: 15, scope: !2714)
!2788 = !DILocation(line: 263, column: 10, scope: !2714)
!2789 = !DILocation(line: 308, column: 2, scope: !2714)
!2790 = !DILocation(line: 311, column: 3, scope: !2714)
!2791 = !DILocation(line: 318, column: 11, scope: !2743)
!2792 = !DILocation(line: 319, column: 9, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !599, line: 319, column: 9)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !599, line: 319, column: 9)
!2795 = distinct !DILexicalBlock(scope: !2743, file: !599, line: 318, column: 11)
!2796 = !DILocation(line: 319, column: 9, scope: !2794)
!2797 = !DILocation(line: 0, scope: !663, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 357, column: 26, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !599, line: 335, column: 11)
!2800 = distinct !DILexicalBlock(scope: !2742, file: !599, line: 334, column: 13)
!2801 = !DILocation(line: 199, column: 29, scope: !663, inlinedAt: !2798)
!2802 = !DILocation(line: 201, column: 19, scope: !2803, inlinedAt: !2798)
!2803 = distinct !DILexicalBlock(scope: !663, file: !599, line: 201, column: 7)
!2804 = !DILocation(line: 201, column: 7, scope: !663, inlinedAt: !2798)
!2805 = !DILocation(line: 229, column: 3, scope: !663, inlinedAt: !2798)
!2806 = !DILocation(line: 230, column: 3, scope: !663, inlinedAt: !2798)
!2807 = !DILocation(line: 230, column: 13, scope: !663, inlinedAt: !2798)
!2808 = !DILocalVariable(name: "ps", arg: 1, scope: !2809, file: !2564, line: 1135, type: !2812)
!2809 = distinct !DISubprogram(name: "mbszero", scope: !2564, file: !2564, line: 1135, type: !2810, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !2813)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{null, !2812}
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!2813 = !{!2808}
!2814 = !DILocation(line: 0, scope: !2809, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 230, column: 18, scope: !663, inlinedAt: !2798)
!2816 = !DILocalVariable(name: "__dest", arg: 1, scope: !2817, file: !2310, line: 57, type: !160)
!2817 = distinct !DISubprogram(name: "memset", scope: !2310, file: !2310, line: 57, type: !2311, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !2818)
!2818 = !{!2816, !2819, !2820}
!2819 = !DILocalVariable(name: "__ch", arg: 2, scope: !2817, file: !2310, line: 57, type: !116)
!2820 = !DILocalVariable(name: "__len", arg: 3, scope: !2817, file: !2310, line: 57, type: !162)
!2821 = !DILocation(line: 0, scope: !2817, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 1137, column: 3, scope: !2809, inlinedAt: !2815)
!2823 = !DILocation(line: 59, column: 10, scope: !2817, inlinedAt: !2822)
!2824 = !DILocation(line: 231, column: 7, scope: !2825, inlinedAt: !2798)
!2825 = distinct !DILexicalBlock(scope: !663, file: !599, line: 231, column: 7)
!2826 = !DILocation(line: 231, column: 40, scope: !2825, inlinedAt: !2798)
!2827 = !DILocation(line: 231, column: 45, scope: !2825, inlinedAt: !2798)
!2828 = !DILocation(line: 235, column: 1, scope: !663, inlinedAt: !2798)
!2829 = !DILocation(line: 0, scope: !663, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 358, column: 27, scope: !2799)
!2831 = !DILocation(line: 199, column: 29, scope: !663, inlinedAt: !2830)
!2832 = !DILocation(line: 201, column: 19, scope: !2803, inlinedAt: !2830)
!2833 = !DILocation(line: 201, column: 7, scope: !663, inlinedAt: !2830)
!2834 = !DILocation(line: 229, column: 3, scope: !663, inlinedAt: !2830)
!2835 = !DILocation(line: 230, column: 3, scope: !663, inlinedAt: !2830)
!2836 = !DILocation(line: 230, column: 13, scope: !663, inlinedAt: !2830)
!2837 = !DILocation(line: 0, scope: !2809, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 230, column: 18, scope: !663, inlinedAt: !2830)
!2839 = !DILocation(line: 0, scope: !2817, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 1137, column: 3, scope: !2809, inlinedAt: !2838)
!2841 = !DILocation(line: 59, column: 10, scope: !2817, inlinedAt: !2840)
!2842 = !DILocation(line: 231, column: 7, scope: !2825, inlinedAt: !2830)
!2843 = !DILocation(line: 231, column: 40, scope: !2825, inlinedAt: !2830)
!2844 = !DILocation(line: 231, column: 45, scope: !2825, inlinedAt: !2830)
!2845 = !DILocation(line: 235, column: 1, scope: !663, inlinedAt: !2830)
!2846 = !DILocation(line: 360, column: 13, scope: !2742)
!2847 = !DILocation(line: 0, scope: !2740)
!2848 = !DILocation(line: 361, column: 45, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2740, file: !599, line: 361, column: 11)
!2850 = !DILocation(line: 361, column: 11, scope: !2740)
!2851 = !DILocation(line: 362, column: 13, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !599, line: 362, column: 13)
!2853 = distinct !DILexicalBlock(scope: !2849, file: !599, line: 362, column: 13)
!2854 = !DILocation(line: 362, column: 13, scope: !2853)
!2855 = !DILocation(line: 361, column: 52, scope: !2849)
!2856 = distinct !{!2856, !2850, !2857, !1063}
!2857 = !DILocation(line: 362, column: 13, scope: !2740)
!2858 = !DILocation(line: 260, column: 10, scope: !2714)
!2859 = !DILocation(line: 365, column: 28, scope: !2742)
!2860 = !DILocation(line: 367, column: 7, scope: !2743)
!2861 = !DILocation(line: 370, column: 7, scope: !2743)
!2862 = !DILocation(line: 376, column: 11, scope: !2743)
!2863 = !DILocation(line: 381, column: 11, scope: !2743)
!2864 = !DILocation(line: 382, column: 9, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !599, line: 382, column: 9)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !599, line: 382, column: 9)
!2867 = distinct !DILexicalBlock(scope: !2743, file: !599, line: 381, column: 11)
!2868 = !DILocation(line: 382, column: 9, scope: !2866)
!2869 = !DILocation(line: 389, column: 7, scope: !2743)
!2870 = !DILocation(line: 392, column: 7, scope: !2743)
!2871 = !DILocation(line: 0, scope: !2745)
!2872 = !DILocation(line: 395, column: 8, scope: !2745)
!2873 = !DILocation(line: 395, scope: !2745)
!2874 = !DILocation(line: 395, column: 34, scope: !2748)
!2875 = !DILocation(line: 395, column: 26, scope: !2748)
!2876 = !DILocation(line: 395, column: 48, scope: !2748)
!2877 = !DILocation(line: 395, column: 55, scope: !2748)
!2878 = !DILocation(line: 395, column: 3, scope: !2745)
!2879 = !DILocation(line: 395, column: 67, scope: !2748)
!2880 = !DILocation(line: 0, scope: !2747)
!2881 = !DILocation(line: 402, column: 11, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2747, file: !599, line: 401, column: 11)
!2883 = !DILocation(line: 404, column: 17, scope: !2882)
!2884 = !DILocation(line: 405, column: 39, scope: !2882)
!2885 = !DILocation(line: 409, column: 32, scope: !2882)
!2886 = !DILocation(line: 405, column: 19, scope: !2882)
!2887 = !DILocation(line: 405, column: 15, scope: !2882)
!2888 = !DILocation(line: 410, column: 11, scope: !2882)
!2889 = !DILocation(line: 410, column: 25, scope: !2882)
!2890 = !DILocalVariable(name: "__s1", arg: 1, scope: !2891, file: !1029, line: 974, type: !1161)
!2891 = distinct !DISubprogram(name: "memeq", scope: !1029, file: !1029, line: 974, type: !2534, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !2892)
!2892 = !{!2890, !2893, !2894}
!2893 = !DILocalVariable(name: "__s2", arg: 2, scope: !2891, file: !1029, line: 974, type: !1161)
!2894 = !DILocalVariable(name: "__n", arg: 3, scope: !2891, file: !1029, line: 974, type: !162)
!2895 = !DILocation(line: 0, scope: !2891, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 410, column: 14, scope: !2882)
!2897 = !DILocation(line: 976, column: 11, scope: !2891, inlinedAt: !2896)
!2898 = !DILocation(line: 976, column: 10, scope: !2891, inlinedAt: !2896)
!2899 = !DILocation(line: 401, column: 11, scope: !2747)
!2900 = !DILocation(line: 417, column: 25, scope: !2747)
!2901 = !DILocation(line: 418, column: 7, scope: !2747)
!2902 = !DILocation(line: 421, column: 15, scope: !2754)
!2903 = !DILocation(line: 423, column: 15, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !599, line: 423, column: 15)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !599, line: 422, column: 13)
!2906 = distinct !DILexicalBlock(scope: !2754, file: !599, line: 421, column: 15)
!2907 = !DILocation(line: 423, column: 15, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2904, file: !599, line: 423, column: 15)
!2909 = !DILocation(line: 423, column: 15, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !599, line: 423, column: 15)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !599, line: 423, column: 15)
!2912 = distinct !DILexicalBlock(scope: !2908, file: !599, line: 423, column: 15)
!2913 = !DILocation(line: 423, column: 15, scope: !2911)
!2914 = !DILocation(line: 423, column: 15, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !599, line: 423, column: 15)
!2916 = distinct !DILexicalBlock(scope: !2912, file: !599, line: 423, column: 15)
!2917 = !DILocation(line: 423, column: 15, scope: !2916)
!2918 = !DILocation(line: 423, column: 15, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !599, line: 423, column: 15)
!2920 = distinct !DILexicalBlock(scope: !2912, file: !599, line: 423, column: 15)
!2921 = !DILocation(line: 423, column: 15, scope: !2920)
!2922 = !DILocation(line: 423, column: 15, scope: !2912)
!2923 = !DILocation(line: 423, column: 15, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !599, line: 423, column: 15)
!2925 = distinct !DILexicalBlock(scope: !2904, file: !599, line: 423, column: 15)
!2926 = !DILocation(line: 423, column: 15, scope: !2925)
!2927 = !DILocation(line: 431, column: 19, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2905, file: !599, line: 430, column: 19)
!2929 = !DILocation(line: 431, column: 24, scope: !2928)
!2930 = !DILocation(line: 431, column: 28, scope: !2928)
!2931 = !DILocation(line: 431, column: 38, scope: !2928)
!2932 = !DILocation(line: 431, column: 48, scope: !2928)
!2933 = !DILocation(line: 431, column: 59, scope: !2928)
!2934 = !DILocation(line: 433, column: 19, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !599, line: 433, column: 19)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !599, line: 433, column: 19)
!2937 = distinct !DILexicalBlock(scope: !2928, file: !599, line: 432, column: 17)
!2938 = !DILocation(line: 433, column: 19, scope: !2936)
!2939 = !DILocation(line: 434, column: 19, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !599, line: 434, column: 19)
!2941 = distinct !DILexicalBlock(scope: !2937, file: !599, line: 434, column: 19)
!2942 = !DILocation(line: 434, column: 19, scope: !2941)
!2943 = !DILocation(line: 435, column: 17, scope: !2937)
!2944 = !DILocation(line: 442, column: 20, scope: !2906)
!2945 = !DILocation(line: 447, column: 11, scope: !2754)
!2946 = !DILocation(line: 450, column: 19, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2754, file: !599, line: 448, column: 13)
!2948 = !DILocation(line: 456, column: 19, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2947, file: !599, line: 455, column: 19)
!2950 = !DILocation(line: 456, column: 24, scope: !2949)
!2951 = !DILocation(line: 456, column: 28, scope: !2949)
!2952 = !DILocation(line: 456, column: 38, scope: !2949)
!2953 = !DILocation(line: 456, column: 47, scope: !2949)
!2954 = !DILocation(line: 456, column: 41, scope: !2949)
!2955 = !DILocation(line: 456, column: 52, scope: !2949)
!2956 = !DILocation(line: 455, column: 19, scope: !2947)
!2957 = !DILocation(line: 457, column: 25, scope: !2949)
!2958 = !DILocation(line: 457, column: 17, scope: !2949)
!2959 = !DILocation(line: 464, column: 25, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2949, file: !599, line: 458, column: 19)
!2961 = !DILocation(line: 468, column: 21, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !599, line: 468, column: 21)
!2963 = distinct !DILexicalBlock(scope: !2960, file: !599, line: 468, column: 21)
!2964 = !DILocation(line: 468, column: 21, scope: !2963)
!2965 = !DILocation(line: 469, column: 21, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !599, line: 469, column: 21)
!2967 = distinct !DILexicalBlock(scope: !2960, file: !599, line: 469, column: 21)
!2968 = !DILocation(line: 469, column: 21, scope: !2967)
!2969 = !DILocation(line: 470, column: 21, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !599, line: 470, column: 21)
!2971 = distinct !DILexicalBlock(scope: !2960, file: !599, line: 470, column: 21)
!2972 = !DILocation(line: 470, column: 21, scope: !2971)
!2973 = !DILocation(line: 471, column: 21, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !599, line: 471, column: 21)
!2975 = distinct !DILexicalBlock(scope: !2960, file: !599, line: 471, column: 21)
!2976 = !DILocation(line: 471, column: 21, scope: !2975)
!2977 = !DILocation(line: 472, column: 21, scope: !2960)
!2978 = !DILocation(line: 482, column: 33, scope: !2777)
!2979 = !DILocation(line: 483, column: 33, scope: !2777)
!2980 = !DILocation(line: 485, column: 33, scope: !2777)
!2981 = !DILocation(line: 486, column: 33, scope: !2777)
!2982 = !DILocation(line: 487, column: 33, scope: !2777)
!2983 = !DILocation(line: 490, column: 17, scope: !2777)
!2984 = !DILocation(line: 492, column: 21, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !599, line: 491, column: 15)
!2986 = distinct !DILexicalBlock(scope: !2777, file: !599, line: 490, column: 17)
!2987 = !DILocation(line: 499, column: 35, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2777, file: !599, line: 499, column: 17)
!2989 = !DILocation(line: 0, scope: !2777)
!2990 = !DILocation(line: 502, column: 11, scope: !2777)
!2991 = !DILocation(line: 504, column: 17, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2777, file: !599, line: 503, column: 17)
!2993 = !DILocation(line: 507, column: 11, scope: !2777)
!2994 = !DILocation(line: 508, column: 17, scope: !2777)
!2995 = !DILocation(line: 517, column: 15, scope: !2754)
!2996 = !DILocation(line: 517, column: 40, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2754, file: !599, line: 517, column: 15)
!2998 = !DILocation(line: 517, column: 47, scope: !2997)
!2999 = !DILocation(line: 517, column: 18, scope: !2997)
!3000 = !DILocation(line: 521, column: 17, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2754, file: !599, line: 521, column: 15)
!3002 = !DILocation(line: 521, column: 15, scope: !2754)
!3003 = !DILocation(line: 525, column: 11, scope: !2754)
!3004 = !DILocation(line: 537, column: 15, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2754, file: !599, line: 536, column: 15)
!3006 = !DILocation(line: 536, column: 15, scope: !2754)
!3007 = !DILocation(line: 544, column: 15, scope: !2754)
!3008 = !DILocation(line: 546, column: 19, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !599, line: 545, column: 13)
!3010 = distinct !DILexicalBlock(scope: !2754, file: !599, line: 544, column: 15)
!3011 = !DILocation(line: 549, column: 19, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3009, file: !599, line: 549, column: 19)
!3013 = !DILocation(line: 549, column: 30, scope: !3012)
!3014 = !DILocation(line: 558, column: 15, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !599, line: 558, column: 15)
!3016 = distinct !DILexicalBlock(scope: !3009, file: !599, line: 558, column: 15)
!3017 = !DILocation(line: 558, column: 15, scope: !3016)
!3018 = !DILocation(line: 559, column: 15, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !599, line: 559, column: 15)
!3020 = distinct !DILexicalBlock(scope: !3009, file: !599, line: 559, column: 15)
!3021 = !DILocation(line: 559, column: 15, scope: !3020)
!3022 = !DILocation(line: 560, column: 15, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !599, line: 560, column: 15)
!3024 = distinct !DILexicalBlock(scope: !3009, file: !599, line: 560, column: 15)
!3025 = !DILocation(line: 560, column: 15, scope: !3024)
!3026 = !DILocation(line: 562, column: 13, scope: !3009)
!3027 = !DILocation(line: 602, column: 17, scope: !2753)
!3028 = !DILocation(line: 0, scope: !2753)
!3029 = !DILocation(line: 605, column: 29, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !2758, file: !599, line: 603, column: 15)
!3031 = !DILocation(line: 605, column: 41, scope: !3030)
!3032 = !DILocation(line: 606, column: 15, scope: !3030)
!3033 = !DILocation(line: 609, column: 17, scope: !2757)
!3034 = !DILocation(line: 609, column: 27, scope: !2757)
!3035 = !DILocation(line: 0, scope: !2809, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 609, column: 32, scope: !2757)
!3037 = !DILocation(line: 0, scope: !2817, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 1137, column: 3, scope: !2809, inlinedAt: !3036)
!3039 = !DILocation(line: 59, column: 10, scope: !2817, inlinedAt: !3038)
!3040 = !DILocation(line: 613, column: 29, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !2757, file: !599, line: 613, column: 21)
!3042 = !DILocation(line: 613, column: 21, scope: !2757)
!3043 = !DILocation(line: 614, column: 29, scope: !3041)
!3044 = !DILocation(line: 614, column: 19, scope: !3041)
!3045 = !DILocation(line: 618, column: 21, scope: !2760)
!3046 = !DILocation(line: 620, column: 54, scope: !2760)
!3047 = !DILocation(line: 0, scope: !2760)
!3048 = !DILocation(line: 619, column: 36, scope: !2760)
!3049 = !DILocation(line: 621, column: 25, scope: !2760)
!3050 = !DILocation(line: 631, column: 38, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !2769, file: !599, line: 629, column: 23)
!3052 = !DILocation(line: 631, column: 48, scope: !3051)
!3053 = !DILocation(line: 626, column: 25, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !2770, file: !599, line: 624, column: 23)
!3055 = !DILocation(line: 631, column: 51, scope: !3051)
!3056 = !DILocation(line: 631, column: 25, scope: !3051)
!3057 = !DILocation(line: 632, column: 28, scope: !3051)
!3058 = !DILocation(line: 631, column: 34, scope: !3051)
!3059 = distinct !{!3059, !3056, !3057, !1063}
!3060 = !DILocation(line: 646, column: 29, scope: !2767)
!3061 = !DILocation(line: 0, scope: !2765)
!3062 = !DILocation(line: 649, column: 49, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !2765, file: !599, line: 648, column: 29)
!3064 = !DILocation(line: 649, column: 39, scope: !3063)
!3065 = !DILocation(line: 649, column: 31, scope: !3063)
!3066 = !DILocation(line: 648, column: 60, scope: !3063)
!3067 = !DILocation(line: 648, column: 50, scope: !3063)
!3068 = !DILocation(line: 648, column: 29, scope: !2765)
!3069 = distinct !{!3069, !3068, !3070, !1063}
!3070 = !DILocation(line: 654, column: 33, scope: !2765)
!3071 = !DILocation(line: 657, column: 43, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !2768, file: !599, line: 657, column: 29)
!3073 = !DILocalVariable(name: "wc", arg: 1, scope: !3074, file: !3075, line: 865, type: !3078)
!3074 = distinct !DISubprogram(name: "c32isprint", scope: !3075, file: !3075, line: 865, type: !3076, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3080)
!3075 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!116, !3078}
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3079, line: 20, baseType: !103)
!3079 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3080 = !{!3073}
!3081 = !DILocation(line: 0, scope: !3074, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 657, column: 31, scope: !3072)
!3083 = !DILocation(line: 871, column: 10, scope: !3074, inlinedAt: !3082)
!3084 = !DILocation(line: 657, column: 31, scope: !3072)
!3085 = !DILocation(line: 664, column: 23, scope: !2760)
!3086 = !DILocation(line: 665, column: 19, scope: !2761)
!3087 = !DILocation(line: 666, column: 15, scope: !2758)
!3088 = !DILocation(line: 753, column: 2, scope: !2714)
!3089 = !DILocation(line: 756, column: 51, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !2714, file: !599, line: 756, column: 7)
!3091 = !DILocation(line: 0, scope: !2758)
!3092 = !DILocation(line: 670, column: 19, scope: !2774)
!3093 = !DILocation(line: 670, column: 23, scope: !2774)
!3094 = !DILocation(line: 674, column: 33, scope: !2773)
!3095 = !DILocation(line: 0, scope: !2773)
!3096 = !DILocation(line: 676, column: 17, scope: !2773)
!3097 = !DILocation(line: 398, column: 12, scope: !2747)
!3098 = !DILocation(line: 678, column: 43, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !599, line: 678, column: 25)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !599, line: 677, column: 19)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !599, line: 676, column: 17)
!3102 = distinct !DILexicalBlock(scope: !2773, file: !599, line: 676, column: 17)
!3103 = !DILocation(line: 680, column: 25, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !599, line: 680, column: 25)
!3105 = distinct !DILexicalBlock(scope: !3099, file: !599, line: 679, column: 23)
!3106 = !DILocation(line: 680, column: 25, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3104, file: !599, line: 680, column: 25)
!3108 = !DILocation(line: 680, column: 25, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !599, line: 680, column: 25)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !599, line: 680, column: 25)
!3111 = distinct !DILexicalBlock(scope: !3107, file: !599, line: 680, column: 25)
!3112 = !DILocation(line: 680, column: 25, scope: !3110)
!3113 = !DILocation(line: 680, column: 25, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !599, line: 680, column: 25)
!3115 = distinct !DILexicalBlock(scope: !3111, file: !599, line: 680, column: 25)
!3116 = !DILocation(line: 680, column: 25, scope: !3115)
!3117 = !DILocation(line: 680, column: 25, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !599, line: 680, column: 25)
!3119 = distinct !DILexicalBlock(scope: !3111, file: !599, line: 680, column: 25)
!3120 = !DILocation(line: 680, column: 25, scope: !3119)
!3121 = !DILocation(line: 680, column: 25, scope: !3111)
!3122 = !DILocation(line: 680, column: 25, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !599, line: 680, column: 25)
!3124 = distinct !DILexicalBlock(scope: !3104, file: !599, line: 680, column: 25)
!3125 = !DILocation(line: 680, column: 25, scope: !3124)
!3126 = !DILocation(line: 681, column: 25, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !599, line: 681, column: 25)
!3128 = distinct !DILexicalBlock(scope: !3105, file: !599, line: 681, column: 25)
!3129 = !DILocation(line: 681, column: 25, scope: !3128)
!3130 = !DILocation(line: 682, column: 25, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !599, line: 682, column: 25)
!3132 = distinct !DILexicalBlock(scope: !3105, file: !599, line: 682, column: 25)
!3133 = !DILocation(line: 682, column: 25, scope: !3132)
!3134 = !DILocation(line: 683, column: 38, scope: !3105)
!3135 = !DILocation(line: 683, column: 33, scope: !3105)
!3136 = !DILocation(line: 684, column: 23, scope: !3105)
!3137 = !DILocation(line: 685, column: 30, scope: !3099)
!3138 = !DILocation(line: 687, column: 25, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !599, line: 687, column: 25)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !599, line: 687, column: 25)
!3141 = distinct !DILexicalBlock(scope: !3142, file: !599, line: 686, column: 23)
!3142 = distinct !DILexicalBlock(scope: !3099, file: !599, line: 685, column: 30)
!3143 = !DILocation(line: 687, column: 25, scope: !3140)
!3144 = !DILocation(line: 689, column: 23, scope: !3141)
!3145 = !DILocation(line: 690, column: 35, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3100, file: !599, line: 690, column: 25)
!3147 = !DILocation(line: 690, column: 30, scope: !3146)
!3148 = !DILocation(line: 690, column: 25, scope: !3100)
!3149 = !DILocation(line: 692, column: 21, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !599, line: 692, column: 21)
!3151 = distinct !DILexicalBlock(scope: !3100, file: !599, line: 692, column: 21)
!3152 = !DILocation(line: 692, column: 21, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !599, line: 692, column: 21)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !599, line: 692, column: 21)
!3155 = distinct !DILexicalBlock(scope: !3150, file: !599, line: 692, column: 21)
!3156 = !DILocation(line: 692, column: 21, scope: !3154)
!3157 = !DILocation(line: 692, column: 21, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !599, line: 692, column: 21)
!3159 = distinct !DILexicalBlock(scope: !3155, file: !599, line: 692, column: 21)
!3160 = !DILocation(line: 692, column: 21, scope: !3159)
!3161 = !DILocation(line: 692, column: 21, scope: !3155)
!3162 = !DILocation(line: 0, scope: !3100)
!3163 = !DILocation(line: 693, column: 21, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !599, line: 693, column: 21)
!3165 = distinct !DILexicalBlock(scope: !3100, file: !599, line: 693, column: 21)
!3166 = !DILocation(line: 693, column: 21, scope: !3165)
!3167 = !DILocation(line: 694, column: 25, scope: !3100)
!3168 = !DILocation(line: 676, column: 17, scope: !3101)
!3169 = distinct !{!3169, !3170, !3171}
!3170 = !DILocation(line: 676, column: 17, scope: !3102)
!3171 = !DILocation(line: 695, column: 19, scope: !3102)
!3172 = !DILocation(line: 409, column: 30, scope: !2882)
!3173 = !DILocation(line: 702, column: 34, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !2747, file: !599, line: 702, column: 11)
!3175 = !DILocation(line: 704, column: 14, scope: !3174)
!3176 = !DILocation(line: 705, column: 14, scope: !3174)
!3177 = !DILocation(line: 705, column: 35, scope: !3174)
!3178 = !DILocation(line: 705, column: 17, scope: !3174)
!3179 = !DILocation(line: 705, column: 47, scope: !3174)
!3180 = !DILocation(line: 705, column: 65, scope: !3174)
!3181 = !DILocation(line: 706, column: 11, scope: !3174)
!3182 = !DILocation(line: 702, column: 11, scope: !2747)
!3183 = !DILocation(line: 395, column: 15, scope: !2745)
!3184 = !DILocation(line: 709, column: 5, scope: !2747)
!3185 = !DILocation(line: 710, column: 7, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !2747, file: !599, line: 710, column: 7)
!3187 = !DILocation(line: 710, column: 7, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3186, file: !599, line: 710, column: 7)
!3189 = !DILocation(line: 710, column: 7, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !599, line: 710, column: 7)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !599, line: 710, column: 7)
!3192 = distinct !DILexicalBlock(scope: !3188, file: !599, line: 710, column: 7)
!3193 = !DILocation(line: 710, column: 7, scope: !3191)
!3194 = !DILocation(line: 710, column: 7, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !599, line: 710, column: 7)
!3196 = distinct !DILexicalBlock(scope: !3192, file: !599, line: 710, column: 7)
!3197 = !DILocation(line: 710, column: 7, scope: !3196)
!3198 = !DILocation(line: 710, column: 7, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !599, line: 710, column: 7)
!3200 = distinct !DILexicalBlock(scope: !3192, file: !599, line: 710, column: 7)
!3201 = !DILocation(line: 710, column: 7, scope: !3200)
!3202 = !DILocation(line: 710, column: 7, scope: !3192)
!3203 = !DILocation(line: 710, column: 7, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !599, line: 710, column: 7)
!3205 = distinct !DILexicalBlock(scope: !3186, file: !599, line: 710, column: 7)
!3206 = !DILocation(line: 710, column: 7, scope: !3205)
!3207 = !DILocation(line: 712, column: 5, scope: !2747)
!3208 = !DILocation(line: 713, column: 7, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !599, line: 713, column: 7)
!3210 = distinct !DILexicalBlock(scope: !2747, file: !599, line: 713, column: 7)
!3211 = !DILocation(line: 417, column: 21, scope: !2747)
!3212 = !DILocation(line: 713, column: 7, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !599, line: 713, column: 7)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !599, line: 713, column: 7)
!3215 = distinct !DILexicalBlock(scope: !3209, file: !599, line: 713, column: 7)
!3216 = !DILocation(line: 713, column: 7, scope: !3214)
!3217 = !DILocation(line: 713, column: 7, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !599, line: 713, column: 7)
!3219 = distinct !DILexicalBlock(scope: !3215, file: !599, line: 713, column: 7)
!3220 = !DILocation(line: 713, column: 7, scope: !3219)
!3221 = !DILocation(line: 713, column: 7, scope: !3215)
!3222 = !DILocation(line: 714, column: 7, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !599, line: 714, column: 7)
!3224 = distinct !DILexicalBlock(scope: !2747, file: !599, line: 714, column: 7)
!3225 = !DILocation(line: 714, column: 7, scope: !3224)
!3226 = !DILocation(line: 716, column: 11, scope: !2747)
!3227 = !DILocation(line: 718, column: 5, scope: !2748)
!3228 = !DILocation(line: 395, column: 82, scope: !2748)
!3229 = !DILocation(line: 395, column: 3, scope: !2748)
!3230 = distinct !{!3230, !2878, !3231, !1063}
!3231 = !DILocation(line: 718, column: 5, scope: !2745)
!3232 = !DILocation(line: 720, column: 11, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !2714, file: !599, line: 720, column: 7)
!3234 = !DILocation(line: 720, column: 16, scope: !3233)
!3235 = !DILocation(line: 728, column: 51, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !2714, file: !599, line: 728, column: 7)
!3237 = !DILocation(line: 731, column: 11, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3236, file: !599, line: 730, column: 5)
!3239 = !DILocation(line: 732, column: 16, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3238, file: !599, line: 731, column: 11)
!3241 = !DILocation(line: 732, column: 9, scope: !3240)
!3242 = !DILocation(line: 736, column: 18, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3240, file: !599, line: 736, column: 16)
!3244 = !DILocation(line: 736, column: 29, scope: !3243)
!3245 = !DILocation(line: 745, column: 7, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !2714, file: !599, line: 745, column: 7)
!3247 = !DILocation(line: 745, column: 20, scope: !3246)
!3248 = !DILocation(line: 746, column: 12, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !599, line: 746, column: 5)
!3250 = distinct !DILexicalBlock(scope: !3246, file: !599, line: 746, column: 5)
!3251 = !DILocation(line: 746, column: 5, scope: !3250)
!3252 = !DILocation(line: 747, column: 7, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !599, line: 747, column: 7)
!3254 = distinct !DILexicalBlock(scope: !3249, file: !599, line: 747, column: 7)
!3255 = !DILocation(line: 747, column: 7, scope: !3254)
!3256 = !DILocation(line: 746, column: 39, scope: !3249)
!3257 = distinct !{!3257, !3251, !3258, !1063}
!3258 = !DILocation(line: 747, column: 7, scope: !3250)
!3259 = !DILocation(line: 749, column: 11, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !2714, file: !599, line: 749, column: 7)
!3261 = !DILocation(line: 749, column: 7, scope: !2714)
!3262 = !DILocation(line: 750, column: 5, scope: !3260)
!3263 = !DILocation(line: 750, column: 17, scope: !3260)
!3264 = !DILocation(line: 756, column: 21, scope: !3090)
!3265 = !DILocation(line: 760, column: 42, scope: !2714)
!3266 = !DILocation(line: 758, column: 10, scope: !2714)
!3267 = !DILocation(line: 758, column: 3, scope: !2714)
!3268 = !DILocation(line: 762, column: 1, scope: !2714)
!3269 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1137, file: !1137, line: 98, type: !3270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!162}
!3272 = !DISubprogram(name: "iswprint", scope: !3273, file: !3273, line: 120, type: !3076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!3273 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3274 = distinct !DISubprogram(name: "quotearg_alloc", scope: !599, file: !599, line: 788, type: !3275, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3277)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!159, !165, !162, !2607}
!3277 = !{!3278, !3279, !3280}
!3278 = !DILocalVariable(name: "arg", arg: 1, scope: !3274, file: !599, line: 788, type: !165)
!3279 = !DILocalVariable(name: "argsize", arg: 2, scope: !3274, file: !599, line: 788, type: !162)
!3280 = !DILocalVariable(name: "o", arg: 3, scope: !3274, file: !599, line: 789, type: !2607)
!3281 = !DILocation(line: 0, scope: !3274)
!3282 = !DILocalVariable(name: "arg", arg: 1, scope: !3283, file: !599, line: 801, type: !165)
!3283 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !599, file: !599, line: 801, type: !3284, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!159, !165, !162, !884, !2607}
!3286 = !{!3282, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294}
!3287 = !DILocalVariable(name: "argsize", arg: 2, scope: !3283, file: !599, line: 801, type: !162)
!3288 = !DILocalVariable(name: "size", arg: 3, scope: !3283, file: !599, line: 801, type: !884)
!3289 = !DILocalVariable(name: "o", arg: 4, scope: !3283, file: !599, line: 802, type: !2607)
!3290 = !DILocalVariable(name: "p", scope: !3283, file: !599, line: 804, type: !2607)
!3291 = !DILocalVariable(name: "saved_errno", scope: !3283, file: !599, line: 805, type: !116)
!3292 = !DILocalVariable(name: "flags", scope: !3283, file: !599, line: 807, type: !116)
!3293 = !DILocalVariable(name: "bufsize", scope: !3283, file: !599, line: 808, type: !162)
!3294 = !DILocalVariable(name: "buf", scope: !3283, file: !599, line: 812, type: !159)
!3295 = !DILocation(line: 0, scope: !3283, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 791, column: 10, scope: !3274)
!3297 = !DILocation(line: 804, column: 37, scope: !3283, inlinedAt: !3296)
!3298 = !DILocation(line: 805, column: 21, scope: !3283, inlinedAt: !3296)
!3299 = !DILocation(line: 807, column: 18, scope: !3283, inlinedAt: !3296)
!3300 = !DILocation(line: 807, column: 24, scope: !3283, inlinedAt: !3296)
!3301 = !DILocation(line: 808, column: 72, scope: !3283, inlinedAt: !3296)
!3302 = !DILocation(line: 809, column: 56, scope: !3283, inlinedAt: !3296)
!3303 = !DILocation(line: 810, column: 49, scope: !3283, inlinedAt: !3296)
!3304 = !DILocation(line: 811, column: 49, scope: !3283, inlinedAt: !3296)
!3305 = !DILocation(line: 808, column: 20, scope: !3283, inlinedAt: !3296)
!3306 = !DILocation(line: 811, column: 62, scope: !3283, inlinedAt: !3296)
!3307 = !DILocation(line: 812, column: 15, scope: !3283, inlinedAt: !3296)
!3308 = !DILocation(line: 813, column: 60, scope: !3283, inlinedAt: !3296)
!3309 = !DILocation(line: 815, column: 32, scope: !3283, inlinedAt: !3296)
!3310 = !DILocation(line: 815, column: 47, scope: !3283, inlinedAt: !3296)
!3311 = !DILocation(line: 813, column: 3, scope: !3283, inlinedAt: !3296)
!3312 = !DILocation(line: 816, column: 9, scope: !3283, inlinedAt: !3296)
!3313 = !DILocation(line: 791, column: 3, scope: !3274)
!3314 = !DILocation(line: 0, scope: !3283)
!3315 = !DILocation(line: 804, column: 37, scope: !3283)
!3316 = !DILocation(line: 805, column: 21, scope: !3283)
!3317 = !DILocation(line: 807, column: 18, scope: !3283)
!3318 = !DILocation(line: 807, column: 27, scope: !3283)
!3319 = !DILocation(line: 807, column: 24, scope: !3283)
!3320 = !DILocation(line: 808, column: 72, scope: !3283)
!3321 = !DILocation(line: 809, column: 56, scope: !3283)
!3322 = !DILocation(line: 810, column: 49, scope: !3283)
!3323 = !DILocation(line: 811, column: 49, scope: !3283)
!3324 = !DILocation(line: 808, column: 20, scope: !3283)
!3325 = !DILocation(line: 811, column: 62, scope: !3283)
!3326 = !DILocation(line: 812, column: 15, scope: !3283)
!3327 = !DILocation(line: 813, column: 60, scope: !3283)
!3328 = !DILocation(line: 815, column: 32, scope: !3283)
!3329 = !DILocation(line: 815, column: 47, scope: !3283)
!3330 = !DILocation(line: 813, column: 3, scope: !3283)
!3331 = !DILocation(line: 816, column: 9, scope: !3283)
!3332 = !DILocation(line: 817, column: 7, scope: !3283)
!3333 = !DILocation(line: 818, column: 11, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3283, file: !599, line: 817, column: 7)
!3335 = !DILocation(line: 818, column: 5, scope: !3334)
!3336 = !DILocation(line: 819, column: 3, scope: !3283)
!3337 = distinct !DISubprogram(name: "quotearg_free", scope: !599, file: !599, line: 837, type: !549, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3338)
!3338 = !{!3339, !3340}
!3339 = !DILocalVariable(name: "sv", scope: !3337, file: !599, line: 839, type: !686)
!3340 = !DILocalVariable(name: "i", scope: !3341, file: !599, line: 840, type: !116)
!3341 = distinct !DILexicalBlock(scope: !3337, file: !599, line: 840, column: 3)
!3342 = !DILocation(line: 839, column: 24, scope: !3337)
!3343 = !DILocation(line: 0, scope: !3337)
!3344 = !DILocation(line: 0, scope: !3341)
!3345 = !DILocation(line: 840, column: 21, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3341, file: !599, line: 840, column: 3)
!3347 = !DILocation(line: 840, column: 3, scope: !3341)
!3348 = !DILocation(line: 842, column: 13, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3337, file: !599, line: 842, column: 7)
!3350 = !{!3351, !945, i64 8}
!3351 = !{!"slotvec", !1200, i64 0, !945, i64 8}
!3352 = !DILocation(line: 842, column: 17, scope: !3349)
!3353 = !DILocation(line: 842, column: 7, scope: !3337)
!3354 = !DILocation(line: 841, column: 17, scope: !3346)
!3355 = !DILocation(line: 841, column: 5, scope: !3346)
!3356 = !DILocation(line: 840, column: 32, scope: !3346)
!3357 = distinct !{!3357, !3347, !3358, !1063}
!3358 = !DILocation(line: 841, column: 20, scope: !3341)
!3359 = !DILocation(line: 844, column: 7, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3349, file: !599, line: 843, column: 5)
!3361 = !DILocation(line: 845, column: 21, scope: !3360)
!3362 = !{!3351, !1200, i64 0}
!3363 = !DILocation(line: 846, column: 20, scope: !3360)
!3364 = !DILocation(line: 847, column: 5, scope: !3360)
!3365 = !DILocation(line: 848, column: 10, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3337, file: !599, line: 848, column: 7)
!3367 = !DILocation(line: 848, column: 7, scope: !3337)
!3368 = !DILocation(line: 850, column: 7, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3366, file: !599, line: 849, column: 5)
!3370 = !DILocation(line: 851, column: 15, scope: !3369)
!3371 = !DILocation(line: 852, column: 5, scope: !3369)
!3372 = !DILocation(line: 853, column: 10, scope: !3337)
!3373 = !DILocation(line: 854, column: 1, scope: !3337)
!3374 = distinct !DISubprogram(name: "quotearg_n", scope: !599, file: !599, line: 919, type: !1130, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3375)
!3375 = !{!3376, !3377}
!3376 = !DILocalVariable(name: "n", arg: 1, scope: !3374, file: !599, line: 919, type: !116)
!3377 = !DILocalVariable(name: "arg", arg: 2, scope: !3374, file: !599, line: 919, type: !165)
!3378 = !DILocation(line: 0, scope: !3374)
!3379 = !DILocation(line: 921, column: 10, scope: !3374)
!3380 = !DILocation(line: 921, column: 3, scope: !3374)
!3381 = distinct !DISubprogram(name: "quotearg_n_options", scope: !599, file: !599, line: 866, type: !3382, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3384)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!159, !116, !165, !162, !2607}
!3384 = !{!3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3395, !3396, !3398, !3399, !3400}
!3385 = !DILocalVariable(name: "n", arg: 1, scope: !3381, file: !599, line: 866, type: !116)
!3386 = !DILocalVariable(name: "arg", arg: 2, scope: !3381, file: !599, line: 866, type: !165)
!3387 = !DILocalVariable(name: "argsize", arg: 3, scope: !3381, file: !599, line: 866, type: !162)
!3388 = !DILocalVariable(name: "options", arg: 4, scope: !3381, file: !599, line: 867, type: !2607)
!3389 = !DILocalVariable(name: "saved_errno", scope: !3381, file: !599, line: 869, type: !116)
!3390 = !DILocalVariable(name: "sv", scope: !3381, file: !599, line: 871, type: !686)
!3391 = !DILocalVariable(name: "nslots_max", scope: !3381, file: !599, line: 873, type: !116)
!3392 = !DILocalVariable(name: "preallocated", scope: !3393, file: !599, line: 879, type: !205)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !599, line: 878, column: 5)
!3394 = distinct !DILexicalBlock(scope: !3381, file: !599, line: 877, column: 7)
!3395 = !DILocalVariable(name: "new_nslots", scope: !3393, file: !599, line: 880, type: !897)
!3396 = !DILocalVariable(name: "size", scope: !3397, file: !599, line: 891, type: !162)
!3397 = distinct !DILexicalBlock(scope: !3381, file: !599, line: 890, column: 3)
!3398 = !DILocalVariable(name: "val", scope: !3397, file: !599, line: 892, type: !159)
!3399 = !DILocalVariable(name: "flags", scope: !3397, file: !599, line: 894, type: !116)
!3400 = !DILocalVariable(name: "qsize", scope: !3397, file: !599, line: 895, type: !162)
!3401 = !DILocation(line: 0, scope: !3381)
!3402 = !DILocation(line: 869, column: 21, scope: !3381)
!3403 = !DILocation(line: 871, column: 24, scope: !3381)
!3404 = !DILocation(line: 874, column: 17, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3381, file: !599, line: 874, column: 7)
!3406 = !DILocation(line: 875, column: 5, scope: !3405)
!3407 = !DILocation(line: 877, column: 7, scope: !3394)
!3408 = !DILocation(line: 877, column: 14, scope: !3394)
!3409 = !DILocation(line: 877, column: 7, scope: !3381)
!3410 = !DILocation(line: 879, column: 31, scope: !3393)
!3411 = !DILocation(line: 0, scope: !3393)
!3412 = !DILocation(line: 880, column: 7, scope: !3393)
!3413 = !DILocation(line: 880, column: 26, scope: !3393)
!3414 = !DILocation(line: 880, column: 13, scope: !3393)
!3415 = !DILocation(line: 882, column: 31, scope: !3393)
!3416 = !DILocation(line: 883, column: 33, scope: !3393)
!3417 = !DILocation(line: 883, column: 42, scope: !3393)
!3418 = !DILocation(line: 883, column: 31, scope: !3393)
!3419 = !DILocation(line: 882, column: 22, scope: !3393)
!3420 = !DILocation(line: 882, column: 15, scope: !3393)
!3421 = !DILocation(line: 884, column: 11, scope: !3393)
!3422 = !DILocation(line: 885, column: 15, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3393, file: !599, line: 884, column: 11)
!3424 = !{i64 0, i64 8, !1199, i64 8, i64 8, !944}
!3425 = !DILocation(line: 885, column: 9, scope: !3423)
!3426 = !DILocation(line: 886, column: 20, scope: !3393)
!3427 = !DILocation(line: 886, column: 18, scope: !3393)
!3428 = !DILocation(line: 886, column: 32, scope: !3393)
!3429 = !DILocation(line: 886, column: 43, scope: !3393)
!3430 = !DILocation(line: 886, column: 53, scope: !3393)
!3431 = !DILocation(line: 0, scope: !2817, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 886, column: 7, scope: !3393)
!3433 = !DILocation(line: 59, column: 10, scope: !2817, inlinedAt: !3432)
!3434 = !DILocation(line: 887, column: 16, scope: !3393)
!3435 = !DILocation(line: 887, column: 14, scope: !3393)
!3436 = !DILocation(line: 888, column: 5, scope: !3394)
!3437 = !DILocation(line: 888, column: 5, scope: !3393)
!3438 = !DILocation(line: 891, column: 19, scope: !3397)
!3439 = !DILocation(line: 891, column: 25, scope: !3397)
!3440 = !DILocation(line: 0, scope: !3397)
!3441 = !DILocation(line: 892, column: 23, scope: !3397)
!3442 = !DILocation(line: 894, column: 26, scope: !3397)
!3443 = !DILocation(line: 894, column: 32, scope: !3397)
!3444 = !DILocation(line: 896, column: 55, scope: !3397)
!3445 = !DILocation(line: 897, column: 55, scope: !3397)
!3446 = !DILocation(line: 898, column: 55, scope: !3397)
!3447 = !DILocation(line: 899, column: 55, scope: !3397)
!3448 = !DILocation(line: 895, column: 20, scope: !3397)
!3449 = !DILocation(line: 901, column: 14, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3397, file: !599, line: 901, column: 9)
!3451 = !DILocation(line: 901, column: 9, scope: !3397)
!3452 = !DILocation(line: 903, column: 35, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3450, file: !599, line: 902, column: 7)
!3454 = !DILocation(line: 903, column: 20, scope: !3453)
!3455 = !DILocation(line: 904, column: 17, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3453, file: !599, line: 904, column: 13)
!3457 = !DILocation(line: 904, column: 13, scope: !3453)
!3458 = !DILocation(line: 905, column: 11, scope: !3456)
!3459 = !DILocation(line: 906, column: 27, scope: !3453)
!3460 = !DILocation(line: 906, column: 19, scope: !3453)
!3461 = !DILocation(line: 907, column: 69, scope: !3453)
!3462 = !DILocation(line: 909, column: 44, scope: !3453)
!3463 = !DILocation(line: 910, column: 44, scope: !3453)
!3464 = !DILocation(line: 907, column: 9, scope: !3453)
!3465 = !DILocation(line: 911, column: 7, scope: !3453)
!3466 = !DILocation(line: 913, column: 11, scope: !3397)
!3467 = !DILocation(line: 914, column: 5, scope: !3397)
!3468 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !599, file: !599, line: 925, type: !3469, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3471)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!159, !116, !165, !162}
!3471 = !{!3472, !3473, !3474}
!3472 = !DILocalVariable(name: "n", arg: 1, scope: !3468, file: !599, line: 925, type: !116)
!3473 = !DILocalVariable(name: "arg", arg: 2, scope: !3468, file: !599, line: 925, type: !165)
!3474 = !DILocalVariable(name: "argsize", arg: 3, scope: !3468, file: !599, line: 925, type: !162)
!3475 = !DILocation(line: 0, scope: !3468)
!3476 = !DILocation(line: 927, column: 10, scope: !3468)
!3477 = !DILocation(line: 927, column: 3, scope: !3468)
!3478 = distinct !DISubprogram(name: "quotearg", scope: !599, file: !599, line: 931, type: !1139, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3479)
!3479 = !{!3480}
!3480 = !DILocalVariable(name: "arg", arg: 1, scope: !3478, file: !599, line: 931, type: !165)
!3481 = !DILocation(line: 0, scope: !3478)
!3482 = !DILocation(line: 0, scope: !3374, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 933, column: 10, scope: !3478)
!3484 = !DILocation(line: 921, column: 10, scope: !3374, inlinedAt: !3483)
!3485 = !DILocation(line: 933, column: 3, scope: !3478)
!3486 = distinct !DISubprogram(name: "quotearg_mem", scope: !599, file: !599, line: 937, type: !3487, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3489)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!159, !165, !162}
!3489 = !{!3490, !3491}
!3490 = !DILocalVariable(name: "arg", arg: 1, scope: !3486, file: !599, line: 937, type: !165)
!3491 = !DILocalVariable(name: "argsize", arg: 2, scope: !3486, file: !599, line: 937, type: !162)
!3492 = !DILocation(line: 0, scope: !3486)
!3493 = !DILocation(line: 0, scope: !3468, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 939, column: 10, scope: !3486)
!3495 = !DILocation(line: 927, column: 10, scope: !3468, inlinedAt: !3494)
!3496 = !DILocation(line: 939, column: 3, scope: !3486)
!3497 = distinct !DISubprogram(name: "quotearg_n_style", scope: !599, file: !599, line: 943, type: !3498, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3500)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!159, !116, !135, !165}
!3500 = !{!3501, !3502, !3503, !3504}
!3501 = !DILocalVariable(name: "n", arg: 1, scope: !3497, file: !599, line: 943, type: !116)
!3502 = !DILocalVariable(name: "s", arg: 2, scope: !3497, file: !599, line: 943, type: !135)
!3503 = !DILocalVariable(name: "arg", arg: 3, scope: !3497, file: !599, line: 943, type: !165)
!3504 = !DILocalVariable(name: "o", scope: !3497, file: !599, line: 945, type: !2608)
!3505 = !DILocation(line: 0, scope: !3497)
!3506 = !DILocation(line: 945, column: 3, scope: !3497)
!3507 = !DILocation(line: 945, column: 32, scope: !3497)
!3508 = !{!3509}
!3509 = distinct !{!3509, !3510, !"quoting_options_from_style: argument 0"}
!3510 = distinct !{!3510, !"quoting_options_from_style"}
!3511 = !DILocation(line: 945, column: 36, scope: !3497)
!3512 = !DILocalVariable(name: "style", arg: 1, scope: !3513, file: !599, line: 183, type: !135)
!3513 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !599, file: !599, line: 183, type: !3514, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3516)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!638, !135}
!3516 = !{!3512, !3517}
!3517 = !DILocalVariable(name: "o", scope: !3513, file: !599, line: 185, type: !638)
!3518 = !DILocation(line: 0, scope: !3513, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 945, column: 36, scope: !3497)
!3520 = !DILocation(line: 185, column: 26, scope: !3513, inlinedAt: !3519)
!3521 = !DILocation(line: 186, column: 13, scope: !3522, inlinedAt: !3519)
!3522 = distinct !DILexicalBlock(scope: !3513, file: !599, line: 186, column: 7)
!3523 = !DILocation(line: 186, column: 7, scope: !3513, inlinedAt: !3519)
!3524 = !DILocation(line: 187, column: 5, scope: !3522, inlinedAt: !3519)
!3525 = !DILocation(line: 188, column: 11, scope: !3513, inlinedAt: !3519)
!3526 = !DILocation(line: 946, column: 10, scope: !3497)
!3527 = !DILocation(line: 947, column: 1, scope: !3497)
!3528 = !DILocation(line: 946, column: 3, scope: !3497)
!3529 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !599, file: !599, line: 950, type: !3530, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3532)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!159, !116, !135, !165, !162}
!3532 = !{!3533, !3534, !3535, !3536, !3537}
!3533 = !DILocalVariable(name: "n", arg: 1, scope: !3529, file: !599, line: 950, type: !116)
!3534 = !DILocalVariable(name: "s", arg: 2, scope: !3529, file: !599, line: 950, type: !135)
!3535 = !DILocalVariable(name: "arg", arg: 3, scope: !3529, file: !599, line: 951, type: !165)
!3536 = !DILocalVariable(name: "argsize", arg: 4, scope: !3529, file: !599, line: 951, type: !162)
!3537 = !DILocalVariable(name: "o", scope: !3529, file: !599, line: 953, type: !2608)
!3538 = !DILocation(line: 0, scope: !3529)
!3539 = !DILocation(line: 953, column: 3, scope: !3529)
!3540 = !DILocation(line: 953, column: 32, scope: !3529)
!3541 = !{!3542}
!3542 = distinct !{!3542, !3543, !"quoting_options_from_style: argument 0"}
!3543 = distinct !{!3543, !"quoting_options_from_style"}
!3544 = !DILocation(line: 953, column: 36, scope: !3529)
!3545 = !DILocation(line: 0, scope: !3513, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 953, column: 36, scope: !3529)
!3547 = !DILocation(line: 185, column: 26, scope: !3513, inlinedAt: !3546)
!3548 = !DILocation(line: 186, column: 13, scope: !3522, inlinedAt: !3546)
!3549 = !DILocation(line: 186, column: 7, scope: !3513, inlinedAt: !3546)
!3550 = !DILocation(line: 187, column: 5, scope: !3522, inlinedAt: !3546)
!3551 = !DILocation(line: 188, column: 11, scope: !3513, inlinedAt: !3546)
!3552 = !DILocation(line: 954, column: 10, scope: !3529)
!3553 = !DILocation(line: 955, column: 1, scope: !3529)
!3554 = !DILocation(line: 954, column: 3, scope: !3529)
!3555 = distinct !DISubprogram(name: "quotearg_style", scope: !599, file: !599, line: 958, type: !3556, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3558)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!159, !135, !165}
!3558 = !{!3559, !3560}
!3559 = !DILocalVariable(name: "s", arg: 1, scope: !3555, file: !599, line: 958, type: !135)
!3560 = !DILocalVariable(name: "arg", arg: 2, scope: !3555, file: !599, line: 958, type: !165)
!3561 = !DILocation(line: 0, scope: !3555)
!3562 = !DILocation(line: 0, scope: !3497, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 960, column: 10, scope: !3555)
!3564 = !DILocation(line: 945, column: 3, scope: !3497, inlinedAt: !3563)
!3565 = !DILocation(line: 945, column: 32, scope: !3497, inlinedAt: !3563)
!3566 = !{!3567}
!3567 = distinct !{!3567, !3568, !"quoting_options_from_style: argument 0"}
!3568 = distinct !{!3568, !"quoting_options_from_style"}
!3569 = !DILocation(line: 945, column: 36, scope: !3497, inlinedAt: !3563)
!3570 = !DILocation(line: 0, scope: !3513, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 945, column: 36, scope: !3497, inlinedAt: !3563)
!3572 = !DILocation(line: 185, column: 26, scope: !3513, inlinedAt: !3571)
!3573 = !DILocation(line: 186, column: 13, scope: !3522, inlinedAt: !3571)
!3574 = !DILocation(line: 186, column: 7, scope: !3513, inlinedAt: !3571)
!3575 = !DILocation(line: 187, column: 5, scope: !3522, inlinedAt: !3571)
!3576 = !DILocation(line: 188, column: 11, scope: !3513, inlinedAt: !3571)
!3577 = !DILocation(line: 946, column: 10, scope: !3497, inlinedAt: !3563)
!3578 = !DILocation(line: 947, column: 1, scope: !3497, inlinedAt: !3563)
!3579 = !DILocation(line: 960, column: 3, scope: !3555)
!3580 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !599, file: !599, line: 964, type: !3581, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3583)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!159, !135, !165, !162}
!3583 = !{!3584, !3585, !3586}
!3584 = !DILocalVariable(name: "s", arg: 1, scope: !3580, file: !599, line: 964, type: !135)
!3585 = !DILocalVariable(name: "arg", arg: 2, scope: !3580, file: !599, line: 964, type: !165)
!3586 = !DILocalVariable(name: "argsize", arg: 3, scope: !3580, file: !599, line: 964, type: !162)
!3587 = !DILocation(line: 0, scope: !3580)
!3588 = !DILocation(line: 0, scope: !3529, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 966, column: 10, scope: !3580)
!3590 = !DILocation(line: 953, column: 3, scope: !3529, inlinedAt: !3589)
!3591 = !DILocation(line: 953, column: 32, scope: !3529, inlinedAt: !3589)
!3592 = !{!3593}
!3593 = distinct !{!3593, !3594, !"quoting_options_from_style: argument 0"}
!3594 = distinct !{!3594, !"quoting_options_from_style"}
!3595 = !DILocation(line: 953, column: 36, scope: !3529, inlinedAt: !3589)
!3596 = !DILocation(line: 0, scope: !3513, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 953, column: 36, scope: !3529, inlinedAt: !3589)
!3598 = !DILocation(line: 185, column: 26, scope: !3513, inlinedAt: !3597)
!3599 = !DILocation(line: 186, column: 13, scope: !3522, inlinedAt: !3597)
!3600 = !DILocation(line: 186, column: 7, scope: !3513, inlinedAt: !3597)
!3601 = !DILocation(line: 187, column: 5, scope: !3522, inlinedAt: !3597)
!3602 = !DILocation(line: 188, column: 11, scope: !3513, inlinedAt: !3597)
!3603 = !DILocation(line: 954, column: 10, scope: !3529, inlinedAt: !3589)
!3604 = !DILocation(line: 955, column: 1, scope: !3529, inlinedAt: !3589)
!3605 = !DILocation(line: 966, column: 3, scope: !3580)
!3606 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !599, file: !599, line: 970, type: !3607, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3609)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!159, !165, !162, !4}
!3609 = !{!3610, !3611, !3612, !3613}
!3610 = !DILocalVariable(name: "arg", arg: 1, scope: !3606, file: !599, line: 970, type: !165)
!3611 = !DILocalVariable(name: "argsize", arg: 2, scope: !3606, file: !599, line: 970, type: !162)
!3612 = !DILocalVariable(name: "ch", arg: 3, scope: !3606, file: !599, line: 970, type: !4)
!3613 = !DILocalVariable(name: "options", scope: !3606, file: !599, line: 972, type: !638)
!3614 = !DILocation(line: 0, scope: !3606)
!3615 = !DILocation(line: 972, column: 3, scope: !3606)
!3616 = !DILocation(line: 972, column: 26, scope: !3606)
!3617 = !DILocation(line: 973, column: 13, scope: !3606)
!3618 = !{i64 0, i64 4, !1025, i64 4, i64 4, !1016, i64 8, i64 32, !1025, i64 40, i64 8, !944, i64 48, i64 8, !944}
!3619 = !DILocation(line: 0, scope: !2627, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 974, column: 3, scope: !3606)
!3621 = !DILocation(line: 147, column: 41, scope: !2627, inlinedAt: !3620)
!3622 = !DILocation(line: 147, column: 62, scope: !2627, inlinedAt: !3620)
!3623 = !DILocation(line: 147, column: 57, scope: !2627, inlinedAt: !3620)
!3624 = !DILocation(line: 148, column: 15, scope: !2627, inlinedAt: !3620)
!3625 = !DILocation(line: 149, column: 21, scope: !2627, inlinedAt: !3620)
!3626 = !DILocation(line: 149, column: 24, scope: !2627, inlinedAt: !3620)
!3627 = !DILocation(line: 150, column: 19, scope: !2627, inlinedAt: !3620)
!3628 = !DILocation(line: 150, column: 24, scope: !2627, inlinedAt: !3620)
!3629 = !DILocation(line: 150, column: 6, scope: !2627, inlinedAt: !3620)
!3630 = !DILocation(line: 975, column: 10, scope: !3606)
!3631 = !DILocation(line: 976, column: 1, scope: !3606)
!3632 = !DILocation(line: 975, column: 3, scope: !3606)
!3633 = distinct !DISubprogram(name: "quotearg_char", scope: !599, file: !599, line: 979, type: !3634, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3636)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!159, !165, !4}
!3636 = !{!3637, !3638}
!3637 = !DILocalVariable(name: "arg", arg: 1, scope: !3633, file: !599, line: 979, type: !165)
!3638 = !DILocalVariable(name: "ch", arg: 2, scope: !3633, file: !599, line: 979, type: !4)
!3639 = !DILocation(line: 0, scope: !3633)
!3640 = !DILocation(line: 0, scope: !3606, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 981, column: 10, scope: !3633)
!3642 = !DILocation(line: 972, column: 3, scope: !3606, inlinedAt: !3641)
!3643 = !DILocation(line: 972, column: 26, scope: !3606, inlinedAt: !3641)
!3644 = !DILocation(line: 973, column: 13, scope: !3606, inlinedAt: !3641)
!3645 = !DILocation(line: 0, scope: !2627, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 974, column: 3, scope: !3606, inlinedAt: !3641)
!3647 = !DILocation(line: 147, column: 41, scope: !2627, inlinedAt: !3646)
!3648 = !DILocation(line: 147, column: 62, scope: !2627, inlinedAt: !3646)
!3649 = !DILocation(line: 147, column: 57, scope: !2627, inlinedAt: !3646)
!3650 = !DILocation(line: 148, column: 15, scope: !2627, inlinedAt: !3646)
!3651 = !DILocation(line: 149, column: 21, scope: !2627, inlinedAt: !3646)
!3652 = !DILocation(line: 149, column: 24, scope: !2627, inlinedAt: !3646)
!3653 = !DILocation(line: 150, column: 19, scope: !2627, inlinedAt: !3646)
!3654 = !DILocation(line: 150, column: 24, scope: !2627, inlinedAt: !3646)
!3655 = !DILocation(line: 150, column: 6, scope: !2627, inlinedAt: !3646)
!3656 = !DILocation(line: 975, column: 10, scope: !3606, inlinedAt: !3641)
!3657 = !DILocation(line: 976, column: 1, scope: !3606, inlinedAt: !3641)
!3658 = !DILocation(line: 981, column: 3, scope: !3633)
!3659 = distinct !DISubprogram(name: "quotearg_colon", scope: !599, file: !599, line: 985, type: !1139, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3660)
!3660 = !{!3661}
!3661 = !DILocalVariable(name: "arg", arg: 1, scope: !3659, file: !599, line: 985, type: !165)
!3662 = !DILocation(line: 0, scope: !3659)
!3663 = !DILocation(line: 0, scope: !3633, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 987, column: 10, scope: !3659)
!3665 = !DILocation(line: 0, scope: !3606, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 981, column: 10, scope: !3633, inlinedAt: !3664)
!3667 = !DILocation(line: 972, column: 3, scope: !3606, inlinedAt: !3666)
!3668 = !DILocation(line: 972, column: 26, scope: !3606, inlinedAt: !3666)
!3669 = !DILocation(line: 973, column: 13, scope: !3606, inlinedAt: !3666)
!3670 = !DILocation(line: 0, scope: !2627, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 974, column: 3, scope: !3606, inlinedAt: !3666)
!3672 = !DILocation(line: 147, column: 57, scope: !2627, inlinedAt: !3671)
!3673 = !DILocation(line: 149, column: 21, scope: !2627, inlinedAt: !3671)
!3674 = !DILocation(line: 150, column: 6, scope: !2627, inlinedAt: !3671)
!3675 = !DILocation(line: 975, column: 10, scope: !3606, inlinedAt: !3666)
!3676 = !DILocation(line: 976, column: 1, scope: !3606, inlinedAt: !3666)
!3677 = !DILocation(line: 987, column: 3, scope: !3659)
!3678 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !599, file: !599, line: 991, type: !3487, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3679)
!3679 = !{!3680, !3681}
!3680 = !DILocalVariable(name: "arg", arg: 1, scope: !3678, file: !599, line: 991, type: !165)
!3681 = !DILocalVariable(name: "argsize", arg: 2, scope: !3678, file: !599, line: 991, type: !162)
!3682 = !DILocation(line: 0, scope: !3678)
!3683 = !DILocation(line: 0, scope: !3606, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 993, column: 10, scope: !3678)
!3685 = !DILocation(line: 972, column: 3, scope: !3606, inlinedAt: !3684)
!3686 = !DILocation(line: 972, column: 26, scope: !3606, inlinedAt: !3684)
!3687 = !DILocation(line: 973, column: 13, scope: !3606, inlinedAt: !3684)
!3688 = !DILocation(line: 0, scope: !2627, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 974, column: 3, scope: !3606, inlinedAt: !3684)
!3690 = !DILocation(line: 147, column: 57, scope: !2627, inlinedAt: !3689)
!3691 = !DILocation(line: 149, column: 21, scope: !2627, inlinedAt: !3689)
!3692 = !DILocation(line: 150, column: 6, scope: !2627, inlinedAt: !3689)
!3693 = !DILocation(line: 975, column: 10, scope: !3606, inlinedAt: !3684)
!3694 = !DILocation(line: 976, column: 1, scope: !3606, inlinedAt: !3684)
!3695 = !DILocation(line: 993, column: 3, scope: !3678)
!3696 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !599, file: !599, line: 997, type: !3498, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3697)
!3697 = !{!3698, !3699, !3700, !3701}
!3698 = !DILocalVariable(name: "n", arg: 1, scope: !3696, file: !599, line: 997, type: !116)
!3699 = !DILocalVariable(name: "s", arg: 2, scope: !3696, file: !599, line: 997, type: !135)
!3700 = !DILocalVariable(name: "arg", arg: 3, scope: !3696, file: !599, line: 997, type: !165)
!3701 = !DILocalVariable(name: "options", scope: !3696, file: !599, line: 999, type: !638)
!3702 = !DILocation(line: 185, column: 26, scope: !3513, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 1000, column: 13, scope: !3696)
!3704 = !DILocation(line: 0, scope: !3696)
!3705 = !DILocation(line: 999, column: 3, scope: !3696)
!3706 = !DILocation(line: 999, column: 26, scope: !3696)
!3707 = !DILocation(line: 0, scope: !3513, inlinedAt: !3703)
!3708 = !DILocation(line: 186, column: 13, scope: !3522, inlinedAt: !3703)
!3709 = !DILocation(line: 186, column: 7, scope: !3513, inlinedAt: !3703)
!3710 = !DILocation(line: 187, column: 5, scope: !3522, inlinedAt: !3703)
!3711 = !{!3712}
!3712 = distinct !{!3712, !3713, !"quoting_options_from_style: argument 0"}
!3713 = distinct !{!3713, !"quoting_options_from_style"}
!3714 = !DILocation(line: 1000, column: 13, scope: !3696)
!3715 = !DILocation(line: 0, scope: !2627, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 1001, column: 3, scope: !3696)
!3717 = !DILocation(line: 147, column: 57, scope: !2627, inlinedAt: !3716)
!3718 = !DILocation(line: 149, column: 21, scope: !2627, inlinedAt: !3716)
!3719 = !DILocation(line: 150, column: 6, scope: !2627, inlinedAt: !3716)
!3720 = !DILocation(line: 1002, column: 10, scope: !3696)
!3721 = !DILocation(line: 1003, column: 1, scope: !3696)
!3722 = !DILocation(line: 1002, column: 3, scope: !3696)
!3723 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !599, file: !599, line: 1006, type: !3724, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3726)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!159, !116, !165, !165, !165}
!3726 = !{!3727, !3728, !3729, !3730}
!3727 = !DILocalVariable(name: "n", arg: 1, scope: !3723, file: !599, line: 1006, type: !116)
!3728 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3723, file: !599, line: 1006, type: !165)
!3729 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3723, file: !599, line: 1007, type: !165)
!3730 = !DILocalVariable(name: "arg", arg: 4, scope: !3723, file: !599, line: 1007, type: !165)
!3731 = !DILocation(line: 0, scope: !3723)
!3732 = !DILocalVariable(name: "n", arg: 1, scope: !3733, file: !599, line: 1014, type: !116)
!3733 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !599, file: !599, line: 1014, type: !3734, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3736)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!159, !116, !165, !165, !165, !162}
!3736 = !{!3732, !3737, !3738, !3739, !3740, !3741}
!3737 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3733, file: !599, line: 1014, type: !165)
!3738 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3733, file: !599, line: 1015, type: !165)
!3739 = !DILocalVariable(name: "arg", arg: 4, scope: !3733, file: !599, line: 1016, type: !165)
!3740 = !DILocalVariable(name: "argsize", arg: 5, scope: !3733, file: !599, line: 1016, type: !162)
!3741 = !DILocalVariable(name: "o", scope: !3733, file: !599, line: 1018, type: !638)
!3742 = !DILocation(line: 0, scope: !3733, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 1009, column: 10, scope: !3723)
!3744 = !DILocation(line: 1018, column: 3, scope: !3733, inlinedAt: !3743)
!3745 = !DILocation(line: 1018, column: 26, scope: !3733, inlinedAt: !3743)
!3746 = !DILocation(line: 1018, column: 30, scope: !3733, inlinedAt: !3743)
!3747 = !DILocation(line: 0, scope: !2667, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 1019, column: 3, scope: !3733, inlinedAt: !3743)
!3749 = !DILocation(line: 174, column: 12, scope: !2667, inlinedAt: !3748)
!3750 = !DILocation(line: 175, column: 8, scope: !2680, inlinedAt: !3748)
!3751 = !DILocation(line: 175, column: 19, scope: !2680, inlinedAt: !3748)
!3752 = !DILocation(line: 176, column: 5, scope: !2680, inlinedAt: !3748)
!3753 = !DILocation(line: 177, column: 6, scope: !2667, inlinedAt: !3748)
!3754 = !DILocation(line: 177, column: 17, scope: !2667, inlinedAt: !3748)
!3755 = !DILocation(line: 178, column: 6, scope: !2667, inlinedAt: !3748)
!3756 = !DILocation(line: 178, column: 18, scope: !2667, inlinedAt: !3748)
!3757 = !DILocation(line: 1020, column: 10, scope: !3733, inlinedAt: !3743)
!3758 = !DILocation(line: 1021, column: 1, scope: !3733, inlinedAt: !3743)
!3759 = !DILocation(line: 1009, column: 3, scope: !3723)
!3760 = !DILocation(line: 0, scope: !3733)
!3761 = !DILocation(line: 1018, column: 3, scope: !3733)
!3762 = !DILocation(line: 1018, column: 26, scope: !3733)
!3763 = !DILocation(line: 1018, column: 30, scope: !3733)
!3764 = !DILocation(line: 0, scope: !2667, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 1019, column: 3, scope: !3733)
!3766 = !DILocation(line: 174, column: 12, scope: !2667, inlinedAt: !3765)
!3767 = !DILocation(line: 175, column: 8, scope: !2680, inlinedAt: !3765)
!3768 = !DILocation(line: 175, column: 19, scope: !2680, inlinedAt: !3765)
!3769 = !DILocation(line: 176, column: 5, scope: !2680, inlinedAt: !3765)
!3770 = !DILocation(line: 177, column: 6, scope: !2667, inlinedAt: !3765)
!3771 = !DILocation(line: 177, column: 17, scope: !2667, inlinedAt: !3765)
!3772 = !DILocation(line: 178, column: 6, scope: !2667, inlinedAt: !3765)
!3773 = !DILocation(line: 178, column: 18, scope: !2667, inlinedAt: !3765)
!3774 = !DILocation(line: 1020, column: 10, scope: !3733)
!3775 = !DILocation(line: 1021, column: 1, scope: !3733)
!3776 = !DILocation(line: 1020, column: 3, scope: !3733)
!3777 = distinct !DISubprogram(name: "quotearg_custom", scope: !599, file: !599, line: 1024, type: !3778, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3780)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!159, !165, !165, !165}
!3780 = !{!3781, !3782, !3783}
!3781 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3777, file: !599, line: 1024, type: !165)
!3782 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3777, file: !599, line: 1024, type: !165)
!3783 = !DILocalVariable(name: "arg", arg: 3, scope: !3777, file: !599, line: 1025, type: !165)
!3784 = !DILocation(line: 0, scope: !3777)
!3785 = !DILocation(line: 0, scope: !3723, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 1027, column: 10, scope: !3777)
!3787 = !DILocation(line: 0, scope: !3733, inlinedAt: !3788)
!3788 = distinct !DILocation(line: 1009, column: 10, scope: !3723, inlinedAt: !3786)
!3789 = !DILocation(line: 1018, column: 3, scope: !3733, inlinedAt: !3788)
!3790 = !DILocation(line: 1018, column: 26, scope: !3733, inlinedAt: !3788)
!3791 = !DILocation(line: 1018, column: 30, scope: !3733, inlinedAt: !3788)
!3792 = !DILocation(line: 0, scope: !2667, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 1019, column: 3, scope: !3733, inlinedAt: !3788)
!3794 = !DILocation(line: 174, column: 12, scope: !2667, inlinedAt: !3793)
!3795 = !DILocation(line: 175, column: 8, scope: !2680, inlinedAt: !3793)
!3796 = !DILocation(line: 175, column: 19, scope: !2680, inlinedAt: !3793)
!3797 = !DILocation(line: 176, column: 5, scope: !2680, inlinedAt: !3793)
!3798 = !DILocation(line: 177, column: 6, scope: !2667, inlinedAt: !3793)
!3799 = !DILocation(line: 177, column: 17, scope: !2667, inlinedAt: !3793)
!3800 = !DILocation(line: 178, column: 6, scope: !2667, inlinedAt: !3793)
!3801 = !DILocation(line: 178, column: 18, scope: !2667, inlinedAt: !3793)
!3802 = !DILocation(line: 1020, column: 10, scope: !3733, inlinedAt: !3788)
!3803 = !DILocation(line: 1021, column: 1, scope: !3733, inlinedAt: !3788)
!3804 = !DILocation(line: 1027, column: 3, scope: !3777)
!3805 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !599, file: !599, line: 1031, type: !3806, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3808)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!159, !165, !165, !165, !162}
!3808 = !{!3809, !3810, !3811, !3812}
!3809 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3805, file: !599, line: 1031, type: !165)
!3810 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3805, file: !599, line: 1031, type: !165)
!3811 = !DILocalVariable(name: "arg", arg: 3, scope: !3805, file: !599, line: 1032, type: !165)
!3812 = !DILocalVariable(name: "argsize", arg: 4, scope: !3805, file: !599, line: 1032, type: !162)
!3813 = !DILocation(line: 0, scope: !3805)
!3814 = !DILocation(line: 0, scope: !3733, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 1034, column: 10, scope: !3805)
!3816 = !DILocation(line: 1018, column: 3, scope: !3733, inlinedAt: !3815)
!3817 = !DILocation(line: 1018, column: 26, scope: !3733, inlinedAt: !3815)
!3818 = !DILocation(line: 1018, column: 30, scope: !3733, inlinedAt: !3815)
!3819 = !DILocation(line: 0, scope: !2667, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 1019, column: 3, scope: !3733, inlinedAt: !3815)
!3821 = !DILocation(line: 174, column: 12, scope: !2667, inlinedAt: !3820)
!3822 = !DILocation(line: 175, column: 8, scope: !2680, inlinedAt: !3820)
!3823 = !DILocation(line: 175, column: 19, scope: !2680, inlinedAt: !3820)
!3824 = !DILocation(line: 176, column: 5, scope: !2680, inlinedAt: !3820)
!3825 = !DILocation(line: 177, column: 6, scope: !2667, inlinedAt: !3820)
!3826 = !DILocation(line: 177, column: 17, scope: !2667, inlinedAt: !3820)
!3827 = !DILocation(line: 178, column: 6, scope: !2667, inlinedAt: !3820)
!3828 = !DILocation(line: 178, column: 18, scope: !2667, inlinedAt: !3820)
!3829 = !DILocation(line: 1020, column: 10, scope: !3733, inlinedAt: !3815)
!3830 = !DILocation(line: 1021, column: 1, scope: !3733, inlinedAt: !3815)
!3831 = !DILocation(line: 1034, column: 3, scope: !3805)
!3832 = distinct !DISubprogram(name: "quote_n_mem", scope: !599, file: !599, line: 1049, type: !3833, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3835)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!165, !116, !165, !162}
!3835 = !{!3836, !3837, !3838}
!3836 = !DILocalVariable(name: "n", arg: 1, scope: !3832, file: !599, line: 1049, type: !116)
!3837 = !DILocalVariable(name: "arg", arg: 2, scope: !3832, file: !599, line: 1049, type: !165)
!3838 = !DILocalVariable(name: "argsize", arg: 3, scope: !3832, file: !599, line: 1049, type: !162)
!3839 = !DILocation(line: 0, scope: !3832)
!3840 = !DILocation(line: 1051, column: 10, scope: !3832)
!3841 = !DILocation(line: 1051, column: 3, scope: !3832)
!3842 = distinct !DISubprogram(name: "quote_mem", scope: !599, file: !599, line: 1055, type: !3843, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3845)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!165, !165, !162}
!3845 = !{!3846, !3847}
!3846 = !DILocalVariable(name: "arg", arg: 1, scope: !3842, file: !599, line: 1055, type: !165)
!3847 = !DILocalVariable(name: "argsize", arg: 2, scope: !3842, file: !599, line: 1055, type: !162)
!3848 = !DILocation(line: 0, scope: !3842)
!3849 = !DILocation(line: 0, scope: !3832, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 1057, column: 10, scope: !3842)
!3851 = !DILocation(line: 1051, column: 10, scope: !3832, inlinedAt: !3850)
!3852 = !DILocation(line: 1057, column: 3, scope: !3842)
!3853 = distinct !DISubprogram(name: "quote_n", scope: !599, file: !599, line: 1061, type: !3854, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3856)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!165, !116, !165}
!3856 = !{!3857, !3858}
!3857 = !DILocalVariable(name: "n", arg: 1, scope: !3853, file: !599, line: 1061, type: !116)
!3858 = !DILocalVariable(name: "arg", arg: 2, scope: !3853, file: !599, line: 1061, type: !165)
!3859 = !DILocation(line: 0, scope: !3853)
!3860 = !DILocation(line: 0, scope: !3832, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 1063, column: 10, scope: !3853)
!3862 = !DILocation(line: 1051, column: 10, scope: !3832, inlinedAt: !3861)
!3863 = !DILocation(line: 1063, column: 3, scope: !3853)
!3864 = distinct !DISubprogram(name: "quote", scope: !599, file: !599, line: 1067, type: !3865, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3867)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!165, !165}
!3867 = !{!3868}
!3868 = !DILocalVariable(name: "arg", arg: 1, scope: !3864, file: !599, line: 1067, type: !165)
!3869 = !DILocation(line: 0, scope: !3864)
!3870 = !DILocation(line: 0, scope: !3853, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 1069, column: 10, scope: !3864)
!3872 = !DILocation(line: 0, scope: !3832, inlinedAt: !3873)
!3873 = distinct !DILocation(line: 1063, column: 10, scope: !3853, inlinedAt: !3871)
!3874 = !DILocation(line: 1051, column: 10, scope: !3832, inlinedAt: !3873)
!3875 = !DILocation(line: 1069, column: 3, scope: !3864)
!3876 = distinct !DISubprogram(name: "setlocale_null_r", scope: !866, file: !866, line: 154, type: !3877, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !865, retainedNodes: !3879)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!116, !116, !159, !162}
!3879 = !{!3880, !3881, !3882}
!3880 = !DILocalVariable(name: "category", arg: 1, scope: !3876, file: !866, line: 154, type: !116)
!3881 = !DILocalVariable(name: "buf", arg: 2, scope: !3876, file: !866, line: 154, type: !159)
!3882 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3876, file: !866, line: 154, type: !162)
!3883 = !DILocation(line: 0, scope: !3876)
!3884 = !DILocation(line: 159, column: 10, scope: !3876)
!3885 = !DILocation(line: 159, column: 3, scope: !3876)
!3886 = distinct !DISubprogram(name: "setlocale_null", scope: !866, file: !866, line: 186, type: !3887, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !865, retainedNodes: !3889)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!165, !116}
!3889 = !{!3890}
!3890 = !DILocalVariable(name: "category", arg: 1, scope: !3886, file: !866, line: 186, type: !116)
!3891 = !DILocation(line: 0, scope: !3886)
!3892 = !DILocation(line: 189, column: 10, scope: !3886)
!3893 = !DILocation(line: 189, column: 3, scope: !3886)
!3894 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !868, file: !868, line: 35, type: !3887, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !867, retainedNodes: !3895)
!3895 = !{!3896, !3897}
!3896 = !DILocalVariable(name: "category", arg: 1, scope: !3894, file: !868, line: 35, type: !116)
!3897 = !DILocalVariable(name: "result", scope: !3894, file: !868, line: 37, type: !165)
!3898 = !DILocation(line: 0, scope: !3894)
!3899 = !DILocation(line: 37, column: 24, scope: !3894)
!3900 = !DILocation(line: 62, column: 3, scope: !3894)
!3901 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !868, file: !868, line: 66, type: !3877, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !867, retainedNodes: !3902)
!3902 = !{!3903, !3904, !3905, !3906, !3907}
!3903 = !DILocalVariable(name: "category", arg: 1, scope: !3901, file: !868, line: 66, type: !116)
!3904 = !DILocalVariable(name: "buf", arg: 2, scope: !3901, file: !868, line: 66, type: !159)
!3905 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3901, file: !868, line: 66, type: !162)
!3906 = !DILocalVariable(name: "result", scope: !3901, file: !868, line: 111, type: !165)
!3907 = !DILocalVariable(name: "length", scope: !3908, file: !868, line: 125, type: !162)
!3908 = distinct !DILexicalBlock(scope: !3909, file: !868, line: 124, column: 5)
!3909 = distinct !DILexicalBlock(scope: !3901, file: !868, line: 113, column: 7)
!3910 = !DILocation(line: 0, scope: !3901)
!3911 = !DILocation(line: 0, scope: !3894, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 111, column: 24, scope: !3901)
!3913 = !DILocation(line: 37, column: 24, scope: !3894, inlinedAt: !3912)
!3914 = !DILocation(line: 113, column: 14, scope: !3909)
!3915 = !DILocation(line: 113, column: 7, scope: !3901)
!3916 = !DILocation(line: 116, column: 19, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3918, file: !868, line: 116, column: 11)
!3918 = distinct !DILexicalBlock(scope: !3909, file: !868, line: 114, column: 5)
!3919 = !DILocation(line: 116, column: 11, scope: !3918)
!3920 = !DILocation(line: 120, column: 16, scope: !3917)
!3921 = !DILocation(line: 120, column: 9, scope: !3917)
!3922 = !DILocation(line: 125, column: 23, scope: !3908)
!3923 = !DILocation(line: 0, scope: !3908)
!3924 = !DILocation(line: 126, column: 18, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3908, file: !868, line: 126, column: 11)
!3926 = !DILocation(line: 126, column: 11, scope: !3908)
!3927 = !DILocation(line: 128, column: 39, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3925, file: !868, line: 127, column: 9)
!3929 = !DILocalVariable(name: "__dest", arg: 1, scope: !3930, file: !2310, line: 26, type: !3933)
!3930 = distinct !DISubprogram(name: "memcpy", scope: !2310, file: !2310, line: 26, type: !3931, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !867, retainedNodes: !3934)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!160, !3933, !1160, !162}
!3933 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !160)
!3934 = !{!3929, !3935, !3936}
!3935 = !DILocalVariable(name: "__src", arg: 2, scope: !3930, file: !2310, line: 26, type: !1160)
!3936 = !DILocalVariable(name: "__len", arg: 3, scope: !3930, file: !2310, line: 26, type: !162)
!3937 = !DILocation(line: 0, scope: !3930, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 128, column: 11, scope: !3928)
!3939 = !DILocation(line: 29, column: 10, scope: !3930, inlinedAt: !3938)
!3940 = !DILocation(line: 129, column: 11, scope: !3928)
!3941 = !DILocation(line: 133, column: 23, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3943, file: !868, line: 133, column: 15)
!3943 = distinct !DILexicalBlock(scope: !3925, file: !868, line: 132, column: 9)
!3944 = !DILocation(line: 133, column: 15, scope: !3943)
!3945 = !DILocation(line: 138, column: 44, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3942, file: !868, line: 134, column: 13)
!3947 = !DILocation(line: 0, scope: !3930, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 138, column: 15, scope: !3946)
!3949 = !DILocation(line: 29, column: 10, scope: !3930, inlinedAt: !3948)
!3950 = !DILocation(line: 139, column: 15, scope: !3946)
!3951 = !DILocation(line: 139, column: 32, scope: !3946)
!3952 = !DILocation(line: 140, column: 13, scope: !3946)
!3953 = !DILocation(line: 0, scope: !3909)
!3954 = !DILocation(line: 145, column: 1, scope: !3901)
!3955 = distinct !DISubprogram(name: "dup_safer", scope: !870, file: !870, line: 31, type: !1658, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !3956)
!3956 = !{!3957}
!3957 = !DILocalVariable(name: "fd", arg: 1, scope: !3955, file: !870, line: 31, type: !116)
!3958 = !DILocation(line: 0, scope: !3955)
!3959 = !DILocation(line: 33, column: 10, scope: !3955)
!3960 = !DILocation(line: 33, column: 3, scope: !3955)
!3961 = distinct !DISubprogram(name: "version_etc_arn", scope: !701, file: !701, line: 61, type: !3962, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !3999)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{null, !3964, !165, !165, !165, !3998, !162}
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !3966)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !3967)
!3967 = !{!3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3966, file: !236, line: 51, baseType: !116, size: 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3966, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3966, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3966, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3966, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3966, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3966, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3966, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3966, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3966, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3966, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3966, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3966, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3966, file: !236, line: 70, baseType: !3982, size: 64, offset: 832)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3966, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3966, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3966, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3966, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3966, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3966, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3966, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3966, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3966, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3966, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3966, file: !236, line: 93, baseType: !3982, size: 64, offset: 1344)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3966, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3966, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3966, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3966, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!3999 = !{!4000, !4001, !4002, !4003, !4004, !4005}
!4000 = !DILocalVariable(name: "stream", arg: 1, scope: !3961, file: !701, line: 61, type: !3964)
!4001 = !DILocalVariable(name: "command_name", arg: 2, scope: !3961, file: !701, line: 62, type: !165)
!4002 = !DILocalVariable(name: "package", arg: 3, scope: !3961, file: !701, line: 62, type: !165)
!4003 = !DILocalVariable(name: "version", arg: 4, scope: !3961, file: !701, line: 63, type: !165)
!4004 = !DILocalVariable(name: "authors", arg: 5, scope: !3961, file: !701, line: 64, type: !3998)
!4005 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3961, file: !701, line: 64, type: !162)
!4006 = !DILocation(line: 0, scope: !3961)
!4007 = !DILocation(line: 66, column: 7, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3961, file: !701, line: 66, column: 7)
!4009 = !DILocation(line: 66, column: 7, scope: !3961)
!4010 = !DILocation(line: 67, column: 5, scope: !4008)
!4011 = !DILocation(line: 69, column: 5, scope: !4008)
!4012 = !DILocation(line: 83, column: 3, scope: !3961)
!4013 = !DILocation(line: 85, column: 3, scope: !3961)
!4014 = !DILocation(line: 88, column: 3, scope: !3961)
!4015 = !DILocation(line: 95, column: 3, scope: !3961)
!4016 = !DILocation(line: 97, column: 3, scope: !3961)
!4017 = !DILocation(line: 105, column: 7, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !3961, file: !701, line: 98, column: 5)
!4019 = !DILocation(line: 106, column: 7, scope: !4018)
!4020 = !DILocation(line: 109, column: 7, scope: !4018)
!4021 = !DILocation(line: 110, column: 7, scope: !4018)
!4022 = !DILocation(line: 113, column: 7, scope: !4018)
!4023 = !DILocation(line: 115, column: 7, scope: !4018)
!4024 = !DILocation(line: 120, column: 7, scope: !4018)
!4025 = !DILocation(line: 122, column: 7, scope: !4018)
!4026 = !DILocation(line: 127, column: 7, scope: !4018)
!4027 = !DILocation(line: 129, column: 7, scope: !4018)
!4028 = !DILocation(line: 134, column: 7, scope: !4018)
!4029 = !DILocation(line: 137, column: 7, scope: !4018)
!4030 = !DILocation(line: 142, column: 7, scope: !4018)
!4031 = !DILocation(line: 145, column: 7, scope: !4018)
!4032 = !DILocation(line: 150, column: 7, scope: !4018)
!4033 = !DILocation(line: 154, column: 7, scope: !4018)
!4034 = !DILocation(line: 159, column: 7, scope: !4018)
!4035 = !DILocation(line: 163, column: 7, scope: !4018)
!4036 = !DILocation(line: 170, column: 7, scope: !4018)
!4037 = !DILocation(line: 174, column: 7, scope: !4018)
!4038 = !DILocation(line: 176, column: 1, scope: !3961)
!4039 = distinct !DISubprogram(name: "version_etc_ar", scope: !701, file: !701, line: 183, type: !4040, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4042)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{null, !3964, !165, !165, !165, !3998}
!4042 = !{!4043, !4044, !4045, !4046, !4047, !4048}
!4043 = !DILocalVariable(name: "stream", arg: 1, scope: !4039, file: !701, line: 183, type: !3964)
!4044 = !DILocalVariable(name: "command_name", arg: 2, scope: !4039, file: !701, line: 184, type: !165)
!4045 = !DILocalVariable(name: "package", arg: 3, scope: !4039, file: !701, line: 184, type: !165)
!4046 = !DILocalVariable(name: "version", arg: 4, scope: !4039, file: !701, line: 185, type: !165)
!4047 = !DILocalVariable(name: "authors", arg: 5, scope: !4039, file: !701, line: 185, type: !3998)
!4048 = !DILocalVariable(name: "n_authors", scope: !4039, file: !701, line: 187, type: !162)
!4049 = !DILocation(line: 0, scope: !4039)
!4050 = !DILocation(line: 189, column: 8, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4039, file: !701, line: 189, column: 3)
!4052 = !DILocation(line: 189, scope: !4051)
!4053 = !DILocation(line: 189, column: 23, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4051, file: !701, line: 189, column: 3)
!4055 = !DILocation(line: 189, column: 3, scope: !4051)
!4056 = !DILocation(line: 189, column: 52, scope: !4054)
!4057 = distinct !{!4057, !4055, !4058, !1063}
!4058 = !DILocation(line: 190, column: 5, scope: !4051)
!4059 = !DILocation(line: 191, column: 3, scope: !4039)
!4060 = !DILocation(line: 192, column: 1, scope: !4039)
!4061 = distinct !DISubprogram(name: "version_etc_va", scope: !701, file: !701, line: 199, type: !4062, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4075)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{null, !3964, !165, !165, !165, !4064}
!4064 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !508, line: 52, baseType: !4065)
!4065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !510, line: 14, baseType: !4066)
!4066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4067, baseType: !4068)
!4067 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4069)
!4069 = !{!4070, !4071, !4072, !4073, !4074}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4068, file: !4067, line: 192, baseType: !160, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4068, file: !4067, line: 192, baseType: !160, size: 64, offset: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4068, file: !4067, line: 192, baseType: !160, size: 64, offset: 128)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4068, file: !4067, line: 192, baseType: !116, size: 32, offset: 192)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4068, file: !4067, line: 192, baseType: !116, size: 32, offset: 224)
!4075 = !{!4076, !4077, !4078, !4079, !4080, !4081, !4082}
!4076 = !DILocalVariable(name: "stream", arg: 1, scope: !4061, file: !701, line: 199, type: !3964)
!4077 = !DILocalVariable(name: "command_name", arg: 2, scope: !4061, file: !701, line: 200, type: !165)
!4078 = !DILocalVariable(name: "package", arg: 3, scope: !4061, file: !701, line: 200, type: !165)
!4079 = !DILocalVariable(name: "version", arg: 4, scope: !4061, file: !701, line: 201, type: !165)
!4080 = !DILocalVariable(name: "authors", arg: 5, scope: !4061, file: !701, line: 201, type: !4064)
!4081 = !DILocalVariable(name: "n_authors", scope: !4061, file: !701, line: 203, type: !162)
!4082 = !DILocalVariable(name: "authtab", scope: !4061, file: !701, line: 204, type: !4083)
!4083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 640, elements: !91)
!4084 = !DILocation(line: 0, scope: !4061)
!4085 = !DILocation(line: 201, column: 46, scope: !4061)
!4086 = !DILocation(line: 204, column: 3, scope: !4061)
!4087 = !DILocation(line: 204, column: 15, scope: !4061)
!4088 = !DILocation(line: 208, column: 35, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4090, file: !701, line: 206, column: 3)
!4090 = distinct !DILexicalBlock(scope: !4061, file: !701, line: 206, column: 3)
!4091 = !DILocation(line: 208, column: 33, scope: !4089)
!4092 = !DILocation(line: 208, column: 67, scope: !4089)
!4093 = !DILocation(line: 206, column: 3, scope: !4090)
!4094 = !DILocation(line: 208, column: 14, scope: !4089)
!4095 = !DILocation(line: 0, scope: !4090)
!4096 = !DILocation(line: 211, column: 3, scope: !4061)
!4097 = !DILocation(line: 213, column: 1, scope: !4061)
!4098 = distinct !DISubprogram(name: "version_etc", scope: !701, file: !701, line: 230, type: !4099, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4101)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{null, !3964, !165, !165, !165, null}
!4101 = !{!4102, !4103, !4104, !4105, !4106}
!4102 = !DILocalVariable(name: "stream", arg: 1, scope: !4098, file: !701, line: 230, type: !3964)
!4103 = !DILocalVariable(name: "command_name", arg: 2, scope: !4098, file: !701, line: 231, type: !165)
!4104 = !DILocalVariable(name: "package", arg: 3, scope: !4098, file: !701, line: 231, type: !165)
!4105 = !DILocalVariable(name: "version", arg: 4, scope: !4098, file: !701, line: 232, type: !165)
!4106 = !DILocalVariable(name: "authors", scope: !4098, file: !701, line: 234, type: !4064)
!4107 = !DILocation(line: 0, scope: !4098)
!4108 = !DILocation(line: 234, column: 3, scope: !4098)
!4109 = !DILocation(line: 234, column: 11, scope: !4098)
!4110 = !DILocation(line: 235, column: 3, scope: !4098)
!4111 = !DILocation(line: 236, column: 3, scope: !4098)
!4112 = !DILocation(line: 237, column: 3, scope: !4098)
!4113 = !DILocation(line: 238, column: 1, scope: !4098)
!4114 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !701, file: !701, line: 241, type: !549, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !1001)
!4115 = !DILocation(line: 243, column: 3, scope: !4114)
!4116 = !DILocation(line: 248, column: 3, scope: !4114)
!4117 = !DILocation(line: 254, column: 3, scope: !4114)
!4118 = !DILocation(line: 259, column: 3, scope: !4114)
!4119 = !DILocation(line: 261, column: 1, scope: !4114)
!4120 = distinct !DISubprogram(name: "xnrealloc", scope: !4121, file: !4121, line: 147, type: !4122, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4124)
!4121 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!160, !160, !162, !162}
!4124 = !{!4125, !4126, !4127}
!4125 = !DILocalVariable(name: "p", arg: 1, scope: !4120, file: !4121, line: 147, type: !160)
!4126 = !DILocalVariable(name: "n", arg: 2, scope: !4120, file: !4121, line: 147, type: !162)
!4127 = !DILocalVariable(name: "s", arg: 3, scope: !4120, file: !4121, line: 147, type: !162)
!4128 = !DILocation(line: 0, scope: !4120)
!4129 = !DILocalVariable(name: "p", arg: 1, scope: !4130, file: !878, line: 83, type: !160)
!4130 = distinct !DISubprogram(name: "xreallocarray", scope: !878, file: !878, line: 83, type: !4122, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4131)
!4131 = !{!4129, !4132, !4133}
!4132 = !DILocalVariable(name: "n", arg: 2, scope: !4130, file: !878, line: 83, type: !162)
!4133 = !DILocalVariable(name: "s", arg: 3, scope: !4130, file: !878, line: 83, type: !162)
!4134 = !DILocation(line: 0, scope: !4130, inlinedAt: !4135)
!4135 = distinct !DILocation(line: 149, column: 10, scope: !4120)
!4136 = !DILocation(line: 85, column: 25, scope: !4130, inlinedAt: !4135)
!4137 = !DILocalVariable(name: "p", arg: 1, scope: !4138, file: !878, line: 37, type: !160)
!4138 = distinct !DISubprogram(name: "check_nonnull", scope: !878, file: !878, line: 37, type: !4139, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4141)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!160, !160}
!4141 = !{!4137}
!4142 = !DILocation(line: 0, scope: !4138, inlinedAt: !4143)
!4143 = distinct !DILocation(line: 85, column: 10, scope: !4130, inlinedAt: !4135)
!4144 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4143)
!4145 = distinct !DILexicalBlock(scope: !4138, file: !878, line: 39, column: 7)
!4146 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4143)
!4147 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4143)
!4148 = !DILocation(line: 149, column: 3, scope: !4120)
!4149 = !DILocation(line: 0, scope: !4130)
!4150 = !DILocation(line: 85, column: 25, scope: !4130)
!4151 = !DILocation(line: 0, scope: !4138, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 85, column: 10, scope: !4130)
!4153 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4152)
!4154 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4152)
!4155 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4152)
!4156 = !DILocation(line: 85, column: 3, scope: !4130)
!4157 = distinct !DISubprogram(name: "xmalloc", scope: !878, file: !878, line: 47, type: !4158, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4160)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!160, !162}
!4160 = !{!4161}
!4161 = !DILocalVariable(name: "s", arg: 1, scope: !4157, file: !878, line: 47, type: !162)
!4162 = !DILocation(line: 0, scope: !4157)
!4163 = !DILocation(line: 49, column: 25, scope: !4157)
!4164 = !DILocation(line: 0, scope: !4138, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 49, column: 10, scope: !4157)
!4166 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4165)
!4167 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4165)
!4168 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4165)
!4169 = !DILocation(line: 49, column: 3, scope: !4157)
!4170 = !DISubprogram(name: "malloc", scope: !1137, file: !1137, line: 540, type: !4158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!4171 = distinct !DISubprogram(name: "ximalloc", scope: !878, file: !878, line: 53, type: !4172, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4174)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!160, !897}
!4174 = !{!4175}
!4175 = !DILocalVariable(name: "s", arg: 1, scope: !4171, file: !878, line: 53, type: !897)
!4176 = !DILocation(line: 0, scope: !4171)
!4177 = !DILocalVariable(name: "s", arg: 1, scope: !4178, file: !4179, line: 55, type: !897)
!4178 = distinct !DISubprogram(name: "imalloc", scope: !4179, file: !4179, line: 55, type: !4172, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4180)
!4179 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4180 = !{!4177}
!4181 = !DILocation(line: 0, scope: !4178, inlinedAt: !4182)
!4182 = distinct !DILocation(line: 55, column: 25, scope: !4171)
!4183 = !DILocation(line: 57, column: 26, scope: !4178, inlinedAt: !4182)
!4184 = !DILocation(line: 0, scope: !4138, inlinedAt: !4185)
!4185 = distinct !DILocation(line: 55, column: 10, scope: !4171)
!4186 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4185)
!4187 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4185)
!4188 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4185)
!4189 = !DILocation(line: 55, column: 3, scope: !4171)
!4190 = distinct !DISubprogram(name: "xcharalloc", scope: !878, file: !878, line: 59, type: !4191, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4193)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!159, !162}
!4193 = !{!4194}
!4194 = !DILocalVariable(name: "n", arg: 1, scope: !4190, file: !878, line: 59, type: !162)
!4195 = !DILocation(line: 0, scope: !4190)
!4196 = !DILocation(line: 0, scope: !4157, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 61, column: 10, scope: !4190)
!4198 = !DILocation(line: 49, column: 25, scope: !4157, inlinedAt: !4197)
!4199 = !DILocation(line: 0, scope: !4138, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 49, column: 10, scope: !4157, inlinedAt: !4197)
!4201 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4200)
!4202 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4200)
!4203 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4200)
!4204 = !DILocation(line: 61, column: 3, scope: !4190)
!4205 = distinct !DISubprogram(name: "xrealloc", scope: !878, file: !878, line: 68, type: !4206, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4208)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!160, !160, !162}
!4208 = !{!4209, !4210}
!4209 = !DILocalVariable(name: "p", arg: 1, scope: !4205, file: !878, line: 68, type: !160)
!4210 = !DILocalVariable(name: "s", arg: 2, scope: !4205, file: !878, line: 68, type: !162)
!4211 = !DILocation(line: 0, scope: !4205)
!4212 = !DILocalVariable(name: "ptr", arg: 1, scope: !4213, file: !4214, line: 2057, type: !160)
!4213 = distinct !DISubprogram(name: "rpl_realloc", scope: !4214, file: !4214, line: 2057, type: !4206, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4215)
!4214 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4215 = !{!4212, !4216}
!4216 = !DILocalVariable(name: "size", arg: 2, scope: !4213, file: !4214, line: 2057, type: !162)
!4217 = !DILocation(line: 0, scope: !4213, inlinedAt: !4218)
!4218 = distinct !DILocation(line: 70, column: 25, scope: !4205)
!4219 = !DILocation(line: 2059, column: 24, scope: !4213, inlinedAt: !4218)
!4220 = !DILocation(line: 2059, column: 10, scope: !4213, inlinedAt: !4218)
!4221 = !DILocation(line: 0, scope: !4138, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 70, column: 10, scope: !4205)
!4223 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4222)
!4224 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4222)
!4225 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4222)
!4226 = !DILocation(line: 70, column: 3, scope: !4205)
!4227 = !DISubprogram(name: "realloc", scope: !1137, file: !1137, line: 551, type: !4206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!4228 = distinct !DISubprogram(name: "xirealloc", scope: !878, file: !878, line: 74, type: !4229, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4231)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!160, !160, !897}
!4231 = !{!4232, !4233}
!4232 = !DILocalVariable(name: "p", arg: 1, scope: !4228, file: !878, line: 74, type: !160)
!4233 = !DILocalVariable(name: "s", arg: 2, scope: !4228, file: !878, line: 74, type: !897)
!4234 = !DILocation(line: 0, scope: !4228)
!4235 = !DILocalVariable(name: "p", arg: 1, scope: !4236, file: !4179, line: 66, type: !160)
!4236 = distinct !DISubprogram(name: "irealloc", scope: !4179, file: !4179, line: 66, type: !4229, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4237)
!4237 = !{!4235, !4238}
!4238 = !DILocalVariable(name: "s", arg: 2, scope: !4236, file: !4179, line: 66, type: !897)
!4239 = !DILocation(line: 0, scope: !4236, inlinedAt: !4240)
!4240 = distinct !DILocation(line: 76, column: 25, scope: !4228)
!4241 = !DILocation(line: 0, scope: !4213, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 68, column: 26, scope: !4236, inlinedAt: !4240)
!4243 = !DILocation(line: 2059, column: 24, scope: !4213, inlinedAt: !4242)
!4244 = !DILocation(line: 2059, column: 10, scope: !4213, inlinedAt: !4242)
!4245 = !DILocation(line: 0, scope: !4138, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 76, column: 10, scope: !4228)
!4247 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4246)
!4248 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4246)
!4249 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4246)
!4250 = !DILocation(line: 76, column: 3, scope: !4228)
!4251 = distinct !DISubprogram(name: "xireallocarray", scope: !878, file: !878, line: 89, type: !4252, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4254)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!160, !160, !897, !897}
!4254 = !{!4255, !4256, !4257}
!4255 = !DILocalVariable(name: "p", arg: 1, scope: !4251, file: !878, line: 89, type: !160)
!4256 = !DILocalVariable(name: "n", arg: 2, scope: !4251, file: !878, line: 89, type: !897)
!4257 = !DILocalVariable(name: "s", arg: 3, scope: !4251, file: !878, line: 89, type: !897)
!4258 = !DILocation(line: 0, scope: !4251)
!4259 = !DILocalVariable(name: "p", arg: 1, scope: !4260, file: !4179, line: 98, type: !160)
!4260 = distinct !DISubprogram(name: "ireallocarray", scope: !4179, file: !4179, line: 98, type: !4252, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4261)
!4261 = !{!4259, !4262, !4263}
!4262 = !DILocalVariable(name: "n", arg: 2, scope: !4260, file: !4179, line: 98, type: !897)
!4263 = !DILocalVariable(name: "s", arg: 3, scope: !4260, file: !4179, line: 98, type: !897)
!4264 = !DILocation(line: 0, scope: !4260, inlinedAt: !4265)
!4265 = distinct !DILocation(line: 91, column: 25, scope: !4251)
!4266 = !DILocation(line: 101, column: 13, scope: !4260, inlinedAt: !4265)
!4267 = !DILocation(line: 0, scope: !4138, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 91, column: 10, scope: !4251)
!4269 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4268)
!4270 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4268)
!4271 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4268)
!4272 = !DILocation(line: 91, column: 3, scope: !4251)
!4273 = distinct !DISubprogram(name: "xnmalloc", scope: !878, file: !878, line: 98, type: !4274, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4276)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!160, !162, !162}
!4276 = !{!4277, !4278}
!4277 = !DILocalVariable(name: "n", arg: 1, scope: !4273, file: !878, line: 98, type: !162)
!4278 = !DILocalVariable(name: "s", arg: 2, scope: !4273, file: !878, line: 98, type: !162)
!4279 = !DILocation(line: 0, scope: !4273)
!4280 = !DILocation(line: 0, scope: !4130, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 100, column: 10, scope: !4273)
!4282 = !DILocation(line: 85, column: 25, scope: !4130, inlinedAt: !4281)
!4283 = !DILocation(line: 0, scope: !4138, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 85, column: 10, scope: !4130, inlinedAt: !4281)
!4285 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4284)
!4286 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4284)
!4287 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4284)
!4288 = !DILocation(line: 100, column: 3, scope: !4273)
!4289 = distinct !DISubprogram(name: "xinmalloc", scope: !878, file: !878, line: 104, type: !4290, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4292)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!160, !897, !897}
!4292 = !{!4293, !4294}
!4293 = !DILocalVariable(name: "n", arg: 1, scope: !4289, file: !878, line: 104, type: !897)
!4294 = !DILocalVariable(name: "s", arg: 2, scope: !4289, file: !878, line: 104, type: !897)
!4295 = !DILocation(line: 0, scope: !4289)
!4296 = !DILocation(line: 0, scope: !4251, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 106, column: 10, scope: !4289)
!4298 = !DILocation(line: 0, scope: !4260, inlinedAt: !4299)
!4299 = distinct !DILocation(line: 91, column: 25, scope: !4251, inlinedAt: !4297)
!4300 = !DILocation(line: 101, column: 13, scope: !4260, inlinedAt: !4299)
!4301 = !DILocation(line: 0, scope: !4138, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 91, column: 10, scope: !4251, inlinedAt: !4297)
!4303 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4302)
!4304 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4302)
!4305 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4302)
!4306 = !DILocation(line: 106, column: 3, scope: !4289)
!4307 = distinct !DISubprogram(name: "x2realloc", scope: !878, file: !878, line: 116, type: !4308, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4310)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!160, !160, !884}
!4310 = !{!4311, !4312}
!4311 = !DILocalVariable(name: "p", arg: 1, scope: !4307, file: !878, line: 116, type: !160)
!4312 = !DILocalVariable(name: "ps", arg: 2, scope: !4307, file: !878, line: 116, type: !884)
!4313 = !DILocation(line: 0, scope: !4307)
!4314 = !DILocation(line: 0, scope: !881, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 118, column: 10, scope: !4307)
!4316 = !DILocation(line: 178, column: 14, scope: !881, inlinedAt: !4315)
!4317 = !DILocation(line: 180, column: 9, scope: !4318, inlinedAt: !4315)
!4318 = distinct !DILexicalBlock(scope: !881, file: !878, line: 180, column: 7)
!4319 = !DILocation(line: 180, column: 7, scope: !881, inlinedAt: !4315)
!4320 = !DILocation(line: 182, column: 13, scope: !4321, inlinedAt: !4315)
!4321 = distinct !DILexicalBlock(scope: !4322, file: !878, line: 182, column: 11)
!4322 = distinct !DILexicalBlock(scope: !4318, file: !878, line: 181, column: 5)
!4323 = !DILocation(line: 182, column: 11, scope: !4322, inlinedAt: !4315)
!4324 = !DILocation(line: 197, column: 11, scope: !4325, inlinedAt: !4315)
!4325 = distinct !DILexicalBlock(scope: !4326, file: !878, line: 197, column: 11)
!4326 = distinct !DILexicalBlock(scope: !4318, file: !878, line: 195, column: 5)
!4327 = !DILocation(line: 197, column: 11, scope: !4326, inlinedAt: !4315)
!4328 = !DILocation(line: 198, column: 9, scope: !4325, inlinedAt: !4315)
!4329 = !DILocation(line: 0, scope: !4130, inlinedAt: !4330)
!4330 = distinct !DILocation(line: 201, column: 7, scope: !881, inlinedAt: !4315)
!4331 = !DILocation(line: 85, column: 25, scope: !4130, inlinedAt: !4330)
!4332 = !DILocation(line: 0, scope: !4138, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 85, column: 10, scope: !4130, inlinedAt: !4330)
!4334 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4333)
!4335 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4333)
!4336 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4333)
!4337 = !DILocation(line: 202, column: 7, scope: !881, inlinedAt: !4315)
!4338 = !DILocation(line: 118, column: 3, scope: !4307)
!4339 = !DILocation(line: 0, scope: !881)
!4340 = !DILocation(line: 178, column: 14, scope: !881)
!4341 = !DILocation(line: 180, column: 9, scope: !4318)
!4342 = !DILocation(line: 180, column: 7, scope: !881)
!4343 = !DILocation(line: 182, column: 13, scope: !4321)
!4344 = !DILocation(line: 182, column: 11, scope: !4322)
!4345 = !DILocation(line: 190, column: 30, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4321, file: !878, line: 183, column: 9)
!4347 = !DILocation(line: 191, column: 16, scope: !4346)
!4348 = !DILocation(line: 191, column: 13, scope: !4346)
!4349 = !DILocation(line: 192, column: 9, scope: !4346)
!4350 = !DILocation(line: 197, column: 11, scope: !4325)
!4351 = !DILocation(line: 197, column: 11, scope: !4326)
!4352 = !DILocation(line: 198, column: 9, scope: !4325)
!4353 = !DILocation(line: 0, scope: !4130, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 201, column: 7, scope: !881)
!4355 = !DILocation(line: 85, column: 25, scope: !4130, inlinedAt: !4354)
!4356 = !DILocation(line: 0, scope: !4138, inlinedAt: !4357)
!4357 = distinct !DILocation(line: 85, column: 10, scope: !4130, inlinedAt: !4354)
!4358 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4357)
!4359 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4357)
!4360 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4357)
!4361 = !DILocation(line: 202, column: 7, scope: !881)
!4362 = !DILocation(line: 203, column: 3, scope: !881)
!4363 = !DILocation(line: 0, scope: !893)
!4364 = !DILocation(line: 230, column: 14, scope: !893)
!4365 = !DILocation(line: 238, column: 7, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !893, file: !878, line: 238, column: 7)
!4367 = !DILocation(line: 238, column: 7, scope: !893)
!4368 = !DILocation(line: 240, column: 9, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !893, file: !878, line: 240, column: 7)
!4370 = !DILocation(line: 240, column: 18, scope: !4369)
!4371 = !DILocation(line: 253, column: 8, scope: !893)
!4372 = !DILocation(line: 258, column: 27, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4374, file: !878, line: 257, column: 5)
!4374 = distinct !DILexicalBlock(scope: !893, file: !878, line: 256, column: 7)
!4375 = !DILocation(line: 259, column: 32, scope: !4373)
!4376 = !DILocation(line: 260, column: 5, scope: !4373)
!4377 = !DILocation(line: 262, column: 9, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !893, file: !878, line: 262, column: 7)
!4379 = !DILocation(line: 262, column: 7, scope: !893)
!4380 = !DILocation(line: 263, column: 9, scope: !4378)
!4381 = !DILocation(line: 263, column: 5, scope: !4378)
!4382 = !DILocation(line: 264, column: 9, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !893, file: !878, line: 264, column: 7)
!4384 = !DILocation(line: 264, column: 14, scope: !4383)
!4385 = !DILocation(line: 265, column: 7, scope: !4383)
!4386 = !DILocation(line: 265, column: 11, scope: !4383)
!4387 = !DILocation(line: 266, column: 11, scope: !4383)
!4388 = !DILocation(line: 267, column: 14, scope: !4383)
!4389 = !DILocation(line: 264, column: 7, scope: !893)
!4390 = !DILocation(line: 268, column: 5, scope: !4383)
!4391 = !DILocation(line: 0, scope: !4205, inlinedAt: !4392)
!4392 = distinct !DILocation(line: 269, column: 8, scope: !893)
!4393 = !DILocation(line: 0, scope: !4213, inlinedAt: !4394)
!4394 = distinct !DILocation(line: 70, column: 25, scope: !4205, inlinedAt: !4392)
!4395 = !DILocation(line: 2059, column: 24, scope: !4213, inlinedAt: !4394)
!4396 = !DILocation(line: 2059, column: 10, scope: !4213, inlinedAt: !4394)
!4397 = !DILocation(line: 0, scope: !4138, inlinedAt: !4398)
!4398 = distinct !DILocation(line: 70, column: 10, scope: !4205, inlinedAt: !4392)
!4399 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4398)
!4400 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4398)
!4401 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4398)
!4402 = !DILocation(line: 270, column: 7, scope: !893)
!4403 = !DILocation(line: 271, column: 3, scope: !893)
!4404 = distinct !DISubprogram(name: "xzalloc", scope: !878, file: !878, line: 279, type: !4158, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4405)
!4405 = !{!4406}
!4406 = !DILocalVariable(name: "s", arg: 1, scope: !4404, file: !878, line: 279, type: !162)
!4407 = !DILocation(line: 0, scope: !4404)
!4408 = !DILocalVariable(name: "n", arg: 1, scope: !4409, file: !878, line: 294, type: !162)
!4409 = distinct !DISubprogram(name: "xcalloc", scope: !878, file: !878, line: 294, type: !4274, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4410)
!4410 = !{!4408, !4411}
!4411 = !DILocalVariable(name: "s", arg: 2, scope: !4409, file: !878, line: 294, type: !162)
!4412 = !DILocation(line: 0, scope: !4409, inlinedAt: !4413)
!4413 = distinct !DILocation(line: 281, column: 10, scope: !4404)
!4414 = !DILocation(line: 296, column: 25, scope: !4409, inlinedAt: !4413)
!4415 = !DILocation(line: 0, scope: !4138, inlinedAt: !4416)
!4416 = distinct !DILocation(line: 296, column: 10, scope: !4409, inlinedAt: !4413)
!4417 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4416)
!4418 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4416)
!4419 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4416)
!4420 = !DILocation(line: 281, column: 3, scope: !4404)
!4421 = !DISubprogram(name: "calloc", scope: !1137, file: !1137, line: 543, type: !4274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!4422 = !DILocation(line: 0, scope: !4409)
!4423 = !DILocation(line: 296, column: 25, scope: !4409)
!4424 = !DILocation(line: 0, scope: !4138, inlinedAt: !4425)
!4425 = distinct !DILocation(line: 296, column: 10, scope: !4409)
!4426 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4425)
!4427 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4425)
!4428 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4425)
!4429 = !DILocation(line: 296, column: 3, scope: !4409)
!4430 = distinct !DISubprogram(name: "xizalloc", scope: !878, file: !878, line: 285, type: !4172, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4431)
!4431 = !{!4432}
!4432 = !DILocalVariable(name: "s", arg: 1, scope: !4430, file: !878, line: 285, type: !897)
!4433 = !DILocation(line: 0, scope: !4430)
!4434 = !DILocalVariable(name: "n", arg: 1, scope: !4435, file: !878, line: 300, type: !897)
!4435 = distinct !DISubprogram(name: "xicalloc", scope: !878, file: !878, line: 300, type: !4290, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4436)
!4436 = !{!4434, !4437}
!4437 = !DILocalVariable(name: "s", arg: 2, scope: !4435, file: !878, line: 300, type: !897)
!4438 = !DILocation(line: 0, scope: !4435, inlinedAt: !4439)
!4439 = distinct !DILocation(line: 287, column: 10, scope: !4430)
!4440 = !DILocalVariable(name: "n", arg: 1, scope: !4441, file: !4179, line: 77, type: !897)
!4441 = distinct !DISubprogram(name: "icalloc", scope: !4179, file: !4179, line: 77, type: !4290, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4442)
!4442 = !{!4440, !4443}
!4443 = !DILocalVariable(name: "s", arg: 2, scope: !4441, file: !4179, line: 77, type: !897)
!4444 = !DILocation(line: 0, scope: !4441, inlinedAt: !4445)
!4445 = distinct !DILocation(line: 302, column: 25, scope: !4435, inlinedAt: !4439)
!4446 = !DILocation(line: 91, column: 10, scope: !4441, inlinedAt: !4445)
!4447 = !DILocation(line: 0, scope: !4138, inlinedAt: !4448)
!4448 = distinct !DILocation(line: 302, column: 10, scope: !4435, inlinedAt: !4439)
!4449 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4448)
!4450 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4448)
!4451 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4448)
!4452 = !DILocation(line: 287, column: 3, scope: !4430)
!4453 = !DILocation(line: 0, scope: !4435)
!4454 = !DILocation(line: 0, scope: !4441, inlinedAt: !4455)
!4455 = distinct !DILocation(line: 302, column: 25, scope: !4435)
!4456 = !DILocation(line: 91, column: 10, scope: !4441, inlinedAt: !4455)
!4457 = !DILocation(line: 0, scope: !4138, inlinedAt: !4458)
!4458 = distinct !DILocation(line: 302, column: 10, scope: !4435)
!4459 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4458)
!4460 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4458)
!4461 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4458)
!4462 = !DILocation(line: 302, column: 3, scope: !4435)
!4463 = distinct !DISubprogram(name: "xmemdup", scope: !878, file: !878, line: 310, type: !4464, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4466)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!160, !1161, !162}
!4466 = !{!4467, !4468}
!4467 = !DILocalVariable(name: "p", arg: 1, scope: !4463, file: !878, line: 310, type: !1161)
!4468 = !DILocalVariable(name: "s", arg: 2, scope: !4463, file: !878, line: 310, type: !162)
!4469 = !DILocation(line: 0, scope: !4463)
!4470 = !DILocation(line: 0, scope: !4157, inlinedAt: !4471)
!4471 = distinct !DILocation(line: 312, column: 18, scope: !4463)
!4472 = !DILocation(line: 49, column: 25, scope: !4157, inlinedAt: !4471)
!4473 = !DILocation(line: 0, scope: !4138, inlinedAt: !4474)
!4474 = distinct !DILocation(line: 49, column: 10, scope: !4157, inlinedAt: !4471)
!4475 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4474)
!4476 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4474)
!4477 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4474)
!4478 = !DILocalVariable(name: "__dest", arg: 1, scope: !4479, file: !2310, line: 26, type: !3933)
!4479 = distinct !DISubprogram(name: "memcpy", scope: !2310, file: !2310, line: 26, type: !3931, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4480)
!4480 = !{!4478, !4481, !4482}
!4481 = !DILocalVariable(name: "__src", arg: 2, scope: !4479, file: !2310, line: 26, type: !1160)
!4482 = !DILocalVariable(name: "__len", arg: 3, scope: !4479, file: !2310, line: 26, type: !162)
!4483 = !DILocation(line: 0, scope: !4479, inlinedAt: !4484)
!4484 = distinct !DILocation(line: 312, column: 10, scope: !4463)
!4485 = !DILocation(line: 29, column: 10, scope: !4479, inlinedAt: !4484)
!4486 = !DILocation(line: 312, column: 3, scope: !4463)
!4487 = distinct !DISubprogram(name: "ximemdup", scope: !878, file: !878, line: 316, type: !4488, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4490)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!160, !1161, !897}
!4490 = !{!4491, !4492}
!4491 = !DILocalVariable(name: "p", arg: 1, scope: !4487, file: !878, line: 316, type: !1161)
!4492 = !DILocalVariable(name: "s", arg: 2, scope: !4487, file: !878, line: 316, type: !897)
!4493 = !DILocation(line: 0, scope: !4487)
!4494 = !DILocation(line: 0, scope: !4171, inlinedAt: !4495)
!4495 = distinct !DILocation(line: 318, column: 18, scope: !4487)
!4496 = !DILocation(line: 0, scope: !4178, inlinedAt: !4497)
!4497 = distinct !DILocation(line: 55, column: 25, scope: !4171, inlinedAt: !4495)
!4498 = !DILocation(line: 57, column: 26, scope: !4178, inlinedAt: !4497)
!4499 = !DILocation(line: 0, scope: !4138, inlinedAt: !4500)
!4500 = distinct !DILocation(line: 55, column: 10, scope: !4171, inlinedAt: !4495)
!4501 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4500)
!4502 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4500)
!4503 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4500)
!4504 = !DILocation(line: 0, scope: !4479, inlinedAt: !4505)
!4505 = distinct !DILocation(line: 318, column: 10, scope: !4487)
!4506 = !DILocation(line: 29, column: 10, scope: !4479, inlinedAt: !4505)
!4507 = !DILocation(line: 318, column: 3, scope: !4487)
!4508 = distinct !DISubprogram(name: "ximemdup0", scope: !878, file: !878, line: 325, type: !4509, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4511)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!159, !1161, !897}
!4511 = !{!4512, !4513, !4514}
!4512 = !DILocalVariable(name: "p", arg: 1, scope: !4508, file: !878, line: 325, type: !1161)
!4513 = !DILocalVariable(name: "s", arg: 2, scope: !4508, file: !878, line: 325, type: !897)
!4514 = !DILocalVariable(name: "result", scope: !4508, file: !878, line: 327, type: !159)
!4515 = !DILocation(line: 0, scope: !4508)
!4516 = !DILocation(line: 327, column: 30, scope: !4508)
!4517 = !DILocation(line: 0, scope: !4171, inlinedAt: !4518)
!4518 = distinct !DILocation(line: 327, column: 18, scope: !4508)
!4519 = !DILocation(line: 0, scope: !4178, inlinedAt: !4520)
!4520 = distinct !DILocation(line: 55, column: 25, scope: !4171, inlinedAt: !4518)
!4521 = !DILocation(line: 57, column: 26, scope: !4178, inlinedAt: !4520)
!4522 = !DILocation(line: 0, scope: !4138, inlinedAt: !4523)
!4523 = distinct !DILocation(line: 55, column: 10, scope: !4171, inlinedAt: !4518)
!4524 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4523)
!4525 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4523)
!4526 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4523)
!4527 = !DILocation(line: 328, column: 3, scope: !4508)
!4528 = !DILocation(line: 328, column: 13, scope: !4508)
!4529 = !DILocation(line: 0, scope: !4479, inlinedAt: !4530)
!4530 = distinct !DILocation(line: 329, column: 10, scope: !4508)
!4531 = !DILocation(line: 29, column: 10, scope: !4479, inlinedAt: !4530)
!4532 = !DILocation(line: 329, column: 3, scope: !4508)
!4533 = distinct !DISubprogram(name: "xstrdup", scope: !878, file: !878, line: 335, type: !1139, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4534)
!4534 = !{!4535}
!4535 = !DILocalVariable(name: "string", arg: 1, scope: !4533, file: !878, line: 335, type: !165)
!4536 = !DILocation(line: 0, scope: !4533)
!4537 = !DILocation(line: 337, column: 27, scope: !4533)
!4538 = !DILocation(line: 337, column: 43, scope: !4533)
!4539 = !DILocation(line: 0, scope: !4463, inlinedAt: !4540)
!4540 = distinct !DILocation(line: 337, column: 10, scope: !4533)
!4541 = !DILocation(line: 0, scope: !4157, inlinedAt: !4542)
!4542 = distinct !DILocation(line: 312, column: 18, scope: !4463, inlinedAt: !4540)
!4543 = !DILocation(line: 49, column: 25, scope: !4157, inlinedAt: !4542)
!4544 = !DILocation(line: 0, scope: !4138, inlinedAt: !4545)
!4545 = distinct !DILocation(line: 49, column: 10, scope: !4157, inlinedAt: !4542)
!4546 = !DILocation(line: 39, column: 8, scope: !4145, inlinedAt: !4545)
!4547 = !DILocation(line: 39, column: 7, scope: !4138, inlinedAt: !4545)
!4548 = !DILocation(line: 40, column: 5, scope: !4145, inlinedAt: !4545)
!4549 = !DILocation(line: 0, scope: !4479, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 312, column: 10, scope: !4463, inlinedAt: !4540)
!4551 = !DILocation(line: 29, column: 10, scope: !4479, inlinedAt: !4550)
!4552 = !DILocation(line: 337, column: 3, scope: !4533)
!4553 = distinct !DISubprogram(name: "xalloc_die", scope: !782, file: !782, line: 32, type: !549, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !4554)
!4554 = !{!4555}
!4555 = !DILocalVariable(name: "__errstatus", scope: !4556, file: !782, line: 34, type: !1555)
!4556 = distinct !DILexicalBlock(scope: !4553, file: !782, line: 34, column: 3)
!4557 = !DILocation(line: 34, column: 3, scope: !4556)
!4558 = !DILocation(line: 0, scope: !4556)
!4559 = !DILocation(line: 40, column: 3, scope: !4553)
!4560 = distinct !DISubprogram(name: "xmemcoll", scope: !789, file: !789, line: 54, type: !4561, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4563)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!116, !159, !162, !159, !162}
!4563 = !{!4564, !4565, !4566, !4567, !4568, !4569}
!4564 = !DILocalVariable(name: "s1", arg: 1, scope: !4560, file: !789, line: 54, type: !159)
!4565 = !DILocalVariable(name: "s1len", arg: 2, scope: !4560, file: !789, line: 54, type: !162)
!4566 = !DILocalVariable(name: "s2", arg: 3, scope: !4560, file: !789, line: 54, type: !159)
!4567 = !DILocalVariable(name: "s2len", arg: 4, scope: !4560, file: !789, line: 54, type: !162)
!4568 = !DILocalVariable(name: "diff", scope: !4560, file: !789, line: 56, type: !116)
!4569 = !DILocalVariable(name: "collation_errno", scope: !4560, file: !789, line: 57, type: !116)
!4570 = !DILocation(line: 0, scope: !4560)
!4571 = !DILocation(line: 56, column: 14, scope: !4560)
!4572 = !DILocation(line: 57, column: 25, scope: !4560)
!4573 = !DILocation(line: 58, column: 7, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4560, file: !789, line: 58, column: 7)
!4575 = !DILocation(line: 58, column: 7, scope: !4560)
!4576 = !DILocalVariable(name: "collation_errno", arg: 1, scope: !4577, file: !789, line: 35, type: !116)
!4577 = distinct !DISubprogram(name: "collate_error", scope: !789, file: !789, line: 35, type: !4578, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4580)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{null, !116, !165, !162, !165, !162}
!4580 = !{!4576, !4581, !4582, !4583, !4584, !4585}
!4581 = !DILocalVariable(name: "s1", arg: 2, scope: !4577, file: !789, line: 36, type: !165)
!4582 = !DILocalVariable(name: "s1len", arg: 3, scope: !4577, file: !789, line: 36, type: !162)
!4583 = !DILocalVariable(name: "s2", arg: 4, scope: !4577, file: !789, line: 37, type: !165)
!4584 = !DILocalVariable(name: "s2len", arg: 5, scope: !4577, file: !789, line: 37, type: !162)
!4585 = !DILocalVariable(name: "__errstatus", scope: !4586, file: !789, line: 41, type: !1555)
!4586 = distinct !DILexicalBlock(scope: !4577, file: !789, line: 41, column: 3)
!4587 = !DILocation(line: 0, scope: !4577, inlinedAt: !4588)
!4588 = distinct !DILocation(line: 59, column: 5, scope: !4574)
!4589 = !DILocation(line: 39, column: 3, scope: !4577, inlinedAt: !4588)
!4590 = !DILocation(line: 40, column: 3, scope: !4577, inlinedAt: !4588)
!4591 = !DILocation(line: 41, column: 3, scope: !4586, inlinedAt: !4588)
!4592 = !DILocation(line: 0, scope: !4586, inlinedAt: !4588)
!4593 = !DILocation(line: 59, column: 5, scope: !4574)
!4594 = !DILocation(line: 60, column: 3, scope: !4560)
!4595 = distinct !DISubprogram(name: "xmemcoll0", scope: !789, file: !789, line: 69, type: !2502, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4596)
!4596 = !{!4597, !4598, !4599, !4600, !4601, !4602}
!4597 = !DILocalVariable(name: "s1", arg: 1, scope: !4595, file: !789, line: 69, type: !165)
!4598 = !DILocalVariable(name: "s1size", arg: 2, scope: !4595, file: !789, line: 69, type: !162)
!4599 = !DILocalVariable(name: "s2", arg: 3, scope: !4595, file: !789, line: 69, type: !165)
!4600 = !DILocalVariable(name: "s2size", arg: 4, scope: !4595, file: !789, line: 69, type: !162)
!4601 = !DILocalVariable(name: "diff", scope: !4595, file: !789, line: 71, type: !116)
!4602 = !DILocalVariable(name: "collation_errno", scope: !4595, file: !789, line: 72, type: !116)
!4603 = !DILocation(line: 0, scope: !4595)
!4604 = !DILocation(line: 71, column: 14, scope: !4595)
!4605 = !DILocation(line: 72, column: 25, scope: !4595)
!4606 = !DILocation(line: 73, column: 7, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4595, file: !789, line: 73, column: 7)
!4608 = !DILocation(line: 73, column: 7, scope: !4595)
!4609 = !DILocation(line: 74, column: 48, scope: !4607)
!4610 = !DILocation(line: 74, column: 64, scope: !4607)
!4611 = !DILocation(line: 0, scope: !4577, inlinedAt: !4612)
!4612 = distinct !DILocation(line: 74, column: 5, scope: !4607)
!4613 = !DILocation(line: 39, column: 3, scope: !4577, inlinedAt: !4612)
!4614 = !DILocation(line: 40, column: 3, scope: !4577, inlinedAt: !4612)
!4615 = !DILocation(line: 41, column: 3, scope: !4586, inlinedAt: !4612)
!4616 = !DILocation(line: 0, scope: !4586, inlinedAt: !4612)
!4617 = !DILocation(line: 74, column: 5, scope: !4607)
!4618 = !DILocation(line: 75, column: 3, scope: !4595)
!4619 = distinct !DISubprogram(name: "rpl_fopen", scope: !917, file: !917, line: 46, type: !4620, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !4656)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!4622, !165, !165}
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4624)
!4624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4625)
!4625 = !{!4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4624, file: !236, line: 51, baseType: !116, size: 32)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4624, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4624, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4624, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4624, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4624, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4624, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4624, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4624, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4624, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4624, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4624, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4624, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4624, file: !236, line: 70, baseType: !4640, size: 64, offset: 832)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4624, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4624, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4624, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4624, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4624, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4624, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4624, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4624, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4624, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4624, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4624, file: !236, line: 93, baseType: !4640, size: 64, offset: 1344)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4624, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4624, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4624, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4624, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!4656 = !{!4657, !4658, !4659, !4660, !4661, !4662, !4666, !4668, !4669, !4674, !4677, !4678}
!4657 = !DILocalVariable(name: "filename", arg: 1, scope: !4619, file: !917, line: 46, type: !165)
!4658 = !DILocalVariable(name: "mode", arg: 2, scope: !4619, file: !917, line: 46, type: !165)
!4659 = !DILocalVariable(name: "open_direction", scope: !4619, file: !917, line: 54, type: !116)
!4660 = !DILocalVariable(name: "open_flags", scope: !4619, file: !917, line: 55, type: !116)
!4661 = !DILocalVariable(name: "open_flags_gnu", scope: !4619, file: !917, line: 57, type: !205)
!4662 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4619, file: !917, line: 59, type: !4663)
!4663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4664)
!4664 = !{!4665}
!4665 = !DISubrange(count: 81)
!4666 = !DILocalVariable(name: "p", scope: !4667, file: !917, line: 62, type: !165)
!4667 = distinct !DILexicalBlock(scope: !4619, file: !917, line: 61, column: 3)
!4668 = !DILocalVariable(name: "q", scope: !4667, file: !917, line: 64, type: !159)
!4669 = !DILocalVariable(name: "len", scope: !4670, file: !917, line: 128, type: !162)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !917, line: 127, column: 9)
!4671 = distinct !DILexicalBlock(scope: !4672, file: !917, line: 68, column: 7)
!4672 = distinct !DILexicalBlock(scope: !4673, file: !917, line: 67, column: 5)
!4673 = distinct !DILexicalBlock(scope: !4667, file: !917, line: 67, column: 5)
!4674 = !DILocalVariable(name: "fd", scope: !4675, file: !917, line: 199, type: !116)
!4675 = distinct !DILexicalBlock(scope: !4676, file: !917, line: 198, column: 5)
!4676 = distinct !DILexicalBlock(scope: !4619, file: !917, line: 197, column: 7)
!4677 = !DILocalVariable(name: "fp", scope: !4675, file: !917, line: 204, type: !4622)
!4678 = !DILocalVariable(name: "saved_errno", scope: !4679, file: !917, line: 207, type: !116)
!4679 = distinct !DILexicalBlock(scope: !4680, file: !917, line: 206, column: 9)
!4680 = distinct !DILexicalBlock(scope: !4675, file: !917, line: 205, column: 11)
!4681 = !DILocation(line: 0, scope: !4619)
!4682 = !DILocation(line: 59, column: 3, scope: !4619)
!4683 = !DILocation(line: 59, column: 8, scope: !4619)
!4684 = !DILocation(line: 0, scope: !4667)
!4685 = !DILocation(line: 67, column: 5, scope: !4667)
!4686 = !DILocation(line: 54, column: 7, scope: !4619)
!4687 = !DILocation(line: 67, column: 12, scope: !4672)
!4688 = !DILocation(line: 67, column: 5, scope: !4673)
!4689 = !DILocation(line: 74, column: 19, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4691, file: !917, line: 74, column: 17)
!4691 = distinct !DILexicalBlock(scope: !4671, file: !917, line: 70, column: 11)
!4692 = !DILocation(line: 74, column: 17, scope: !4691)
!4693 = !DILocation(line: 75, column: 17, scope: !4690)
!4694 = !DILocation(line: 75, column: 20, scope: !4690)
!4695 = !DILocation(line: 75, column: 15, scope: !4690)
!4696 = !DILocation(line: 80, column: 24, scope: !4691)
!4697 = !DILocation(line: 82, column: 19, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4691, file: !917, line: 82, column: 17)
!4699 = !DILocation(line: 82, column: 17, scope: !4691)
!4700 = !DILocation(line: 83, column: 17, scope: !4698)
!4701 = !DILocation(line: 83, column: 20, scope: !4698)
!4702 = !DILocation(line: 83, column: 15, scope: !4698)
!4703 = !DILocation(line: 88, column: 24, scope: !4691)
!4704 = !DILocation(line: 90, column: 19, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4691, file: !917, line: 90, column: 17)
!4706 = !DILocation(line: 90, column: 17, scope: !4691)
!4707 = !DILocation(line: 91, column: 17, scope: !4705)
!4708 = !DILocation(line: 91, column: 20, scope: !4705)
!4709 = !DILocation(line: 91, column: 15, scope: !4705)
!4710 = !DILocation(line: 100, column: 19, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4691, file: !917, line: 100, column: 17)
!4712 = !DILocation(line: 100, column: 17, scope: !4691)
!4713 = !DILocation(line: 101, column: 17, scope: !4711)
!4714 = !DILocation(line: 101, column: 20, scope: !4711)
!4715 = !DILocation(line: 101, column: 15, scope: !4711)
!4716 = !DILocation(line: 107, column: 19, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4691, file: !917, line: 107, column: 17)
!4718 = !DILocation(line: 107, column: 17, scope: !4691)
!4719 = !DILocation(line: 108, column: 17, scope: !4717)
!4720 = !DILocation(line: 108, column: 20, scope: !4717)
!4721 = !DILocation(line: 108, column: 15, scope: !4717)
!4722 = !DILocation(line: 113, column: 24, scope: !4691)
!4723 = !DILocation(line: 115, column: 13, scope: !4691)
!4724 = !DILocation(line: 117, column: 24, scope: !4691)
!4725 = !DILocation(line: 119, column: 13, scope: !4691)
!4726 = !DILocation(line: 128, column: 24, scope: !4670)
!4727 = !DILocation(line: 0, scope: !4670)
!4728 = !DILocation(line: 129, column: 48, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4670, file: !917, line: 129, column: 15)
!4730 = !DILocation(line: 129, column: 15, scope: !4670)
!4731 = !DILocalVariable(name: "__dest", arg: 1, scope: !4732, file: !2310, line: 26, type: !3933)
!4732 = distinct !DISubprogram(name: "memcpy", scope: !2310, file: !2310, line: 26, type: !3931, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !4733)
!4733 = !{!4731, !4734, !4735}
!4734 = !DILocalVariable(name: "__src", arg: 2, scope: !4732, file: !2310, line: 26, type: !1160)
!4735 = !DILocalVariable(name: "__len", arg: 3, scope: !4732, file: !2310, line: 26, type: !162)
!4736 = !DILocation(line: 0, scope: !4732, inlinedAt: !4737)
!4737 = distinct !DILocation(line: 131, column: 11, scope: !4670)
!4738 = !DILocation(line: 29, column: 10, scope: !4732, inlinedAt: !4737)
!4739 = !DILocation(line: 132, column: 13, scope: !4670)
!4740 = !DILocation(line: 135, column: 9, scope: !4671)
!4741 = !DILocation(line: 67, column: 25, scope: !4672)
!4742 = !DILocation(line: 67, column: 5, scope: !4672)
!4743 = distinct !{!4743, !4688, !4744, !1063}
!4744 = !DILocation(line: 136, column: 7, scope: !4673)
!4745 = !DILocation(line: 138, column: 8, scope: !4667)
!4746 = !DILocation(line: 197, column: 7, scope: !4619)
!4747 = !DILocation(line: 199, column: 47, scope: !4675)
!4748 = !DILocation(line: 199, column: 16, scope: !4675)
!4749 = !DILocation(line: 0, scope: !4675)
!4750 = !DILocation(line: 201, column: 14, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4675, file: !917, line: 201, column: 11)
!4752 = !DILocation(line: 201, column: 11, scope: !4675)
!4753 = !DILocation(line: 204, column: 18, scope: !4675)
!4754 = !DILocation(line: 205, column: 14, scope: !4680)
!4755 = !DILocation(line: 205, column: 11, scope: !4675)
!4756 = !DILocation(line: 207, column: 29, scope: !4679)
!4757 = !DILocation(line: 0, scope: !4679)
!4758 = !DILocation(line: 208, column: 11, scope: !4679)
!4759 = !DILocation(line: 209, column: 17, scope: !4679)
!4760 = !DILocation(line: 210, column: 9, scope: !4679)
!4761 = !DILocalVariable(name: "filename", arg: 1, scope: !4762, file: !917, line: 30, type: !165)
!4762 = distinct !DISubprogram(name: "orig_fopen", scope: !917, file: !917, line: 30, type: !4620, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !4763)
!4763 = !{!4761, !4764}
!4764 = !DILocalVariable(name: "mode", arg: 2, scope: !4762, file: !917, line: 30, type: !165)
!4765 = !DILocation(line: 0, scope: !4762, inlinedAt: !4766)
!4766 = distinct !DILocation(line: 219, column: 10, scope: !4619)
!4767 = !DILocation(line: 32, column: 10, scope: !4762, inlinedAt: !4766)
!4768 = !DILocation(line: 219, column: 3, scope: !4619)
!4769 = !DILocation(line: 220, column: 1, scope: !4619)
!4770 = !DISubprogram(name: "open", scope: !1783, file: !1783, line: 181, type: !4771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!116, !165, !116, null}
!4773 = !DISubprogram(name: "fopen", scope: !508, file: !508, line: 258, type: !4774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{!4622, !1007, !1007}
!4776 = distinct !DISubprogram(name: "close_stream", scope: !919, file: !919, line: 55, type: !4777, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !4813)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!116, !4779}
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4781)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4782)
!4782 = !{!4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4781, file: !236, line: 51, baseType: !116, size: 32)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4781, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4781, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4781, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4781, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4781, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4781, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4781, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4781, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4781, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4781, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4781, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4781, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4781, file: !236, line: 70, baseType: !4797, size: 64, offset: 832)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4781, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4781, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4781, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4781, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4781, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4781, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4781, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4781, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4781, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4781, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4781, file: !236, line: 93, baseType: !4797, size: 64, offset: 1344)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4781, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4781, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4781, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4781, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!4813 = !{!4814, !4815, !4817, !4818}
!4814 = !DILocalVariable(name: "stream", arg: 1, scope: !4776, file: !919, line: 55, type: !4779)
!4815 = !DILocalVariable(name: "some_pending", scope: !4776, file: !919, line: 57, type: !4816)
!4816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!4817 = !DILocalVariable(name: "prev_fail", scope: !4776, file: !919, line: 58, type: !4816)
!4818 = !DILocalVariable(name: "fclose_fail", scope: !4776, file: !919, line: 59, type: !4816)
!4819 = !DILocation(line: 0, scope: !4776)
!4820 = !DILocation(line: 57, column: 30, scope: !4776)
!4821 = !DILocalVariable(name: "__stream", arg: 1, scope: !4822, file: !1341, line: 135, type: !4779)
!4822 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1341, file: !1341, line: 135, type: !4777, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !4823)
!4823 = !{!4821}
!4824 = !DILocation(line: 0, scope: !4822, inlinedAt: !4825)
!4825 = distinct !DILocation(line: 58, column: 27, scope: !4776)
!4826 = !DILocation(line: 137, column: 10, scope: !4822, inlinedAt: !4825)
!4827 = !DILocation(line: 58, column: 43, scope: !4776)
!4828 = !DILocation(line: 59, column: 29, scope: !4776)
!4829 = !DILocation(line: 59, column: 45, scope: !4776)
!4830 = !DILocation(line: 69, column: 17, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4776, file: !919, line: 69, column: 7)
!4832 = !DILocation(line: 57, column: 50, scope: !4776)
!4833 = !DILocation(line: 69, column: 33, scope: !4831)
!4834 = !DILocation(line: 69, column: 53, scope: !4831)
!4835 = !DILocation(line: 69, column: 59, scope: !4831)
!4836 = !DILocation(line: 69, column: 7, scope: !4776)
!4837 = !DILocation(line: 71, column: 11, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4831, file: !919, line: 70, column: 5)
!4839 = !DILocation(line: 72, column: 9, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4838, file: !919, line: 71, column: 11)
!4841 = !DILocation(line: 72, column: 15, scope: !4840)
!4842 = !DILocation(line: 77, column: 1, scope: !4776)
!4843 = !DISubprogram(name: "__fpending", scope: !1987, file: !1987, line: 75, type: !4844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!162, !4779}
!4846 = distinct !DISubprogram(name: "rpl_fcntl", scope: !808, file: !808, line: 202, type: !1784, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !4847)
!4847 = !{!4848, !4849, !4850, !4861, !4862, !4865, !4867, !4871}
!4848 = !DILocalVariable(name: "fd", arg: 1, scope: !4846, file: !808, line: 202, type: !116)
!4849 = !DILocalVariable(name: "action", arg: 2, scope: !4846, file: !808, line: 202, type: !116)
!4850 = !DILocalVariable(name: "arg", scope: !4846, file: !808, line: 208, type: !4851)
!4851 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !510, line: 22, baseType: !4852)
!4852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4853, baseType: !4854)
!4853 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4855)
!4855 = !{!4856, !4857, !4858, !4859, !4860}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4854, file: !4853, line: 208, baseType: !160, size: 64)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4854, file: !4853, line: 208, baseType: !160, size: 64, offset: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4854, file: !4853, line: 208, baseType: !160, size: 64, offset: 128)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4854, file: !4853, line: 208, baseType: !116, size: 32, offset: 192)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4854, file: !4853, line: 208, baseType: !116, size: 32, offset: 224)
!4861 = !DILocalVariable(name: "result", scope: !4846, file: !808, line: 211, type: !116)
!4862 = !DILocalVariable(name: "target", scope: !4863, file: !808, line: 216, type: !116)
!4863 = distinct !DILexicalBlock(scope: !4864, file: !808, line: 215, column: 7)
!4864 = distinct !DILexicalBlock(scope: !4846, file: !808, line: 213, column: 5)
!4865 = !DILocalVariable(name: "target", scope: !4866, file: !808, line: 223, type: !116)
!4866 = distinct !DILexicalBlock(scope: !4864, file: !808, line: 222, column: 7)
!4867 = !DILocalVariable(name: "x", scope: !4868, file: !808, line: 418, type: !116)
!4868 = distinct !DILexicalBlock(scope: !4869, file: !808, line: 417, column: 13)
!4869 = distinct !DILexicalBlock(scope: !4870, file: !808, line: 261, column: 11)
!4870 = distinct !DILexicalBlock(scope: !4864, file: !808, line: 258, column: 7)
!4871 = !DILocalVariable(name: "p", scope: !4872, file: !808, line: 426, type: !160)
!4872 = distinct !DILexicalBlock(scope: !4869, file: !808, line: 425, column: 13)
!4873 = !DILocation(line: 0, scope: !4846)
!4874 = !DILocation(line: 208, column: 3, scope: !4846)
!4875 = !DILocation(line: 208, column: 11, scope: !4846)
!4876 = !DILocation(line: 209, column: 3, scope: !4846)
!4877 = !DILocation(line: 212, column: 3, scope: !4846)
!4878 = !DILocation(line: 216, column: 22, scope: !4863)
!4879 = !DILocation(line: 0, scope: !4863)
!4880 = !DILocalVariable(name: "fd", arg: 1, scope: !4881, file: !808, line: 444, type: !116)
!4881 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !808, file: !808, line: 444, type: !809, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !4882)
!4882 = !{!4880, !4883, !4884}
!4883 = !DILocalVariable(name: "target", arg: 2, scope: !4881, file: !808, line: 444, type: !116)
!4884 = !DILocalVariable(name: "result", scope: !4881, file: !808, line: 446, type: !116)
!4885 = !DILocation(line: 0, scope: !4881, inlinedAt: !4886)
!4886 = distinct !DILocation(line: 217, column: 18, scope: !4863)
!4887 = !DILocation(line: 479, column: 12, scope: !4881, inlinedAt: !4886)
!4888 = !DILocation(line: 223, column: 22, scope: !4866)
!4889 = !DILocation(line: 0, scope: !4866)
!4890 = !DILocation(line: 0, scope: !807, inlinedAt: !4891)
!4891 = distinct !DILocation(line: 224, column: 18, scope: !4866)
!4892 = !DILocation(line: 507, column: 12, scope: !4893, inlinedAt: !4891)
!4893 = distinct !DILexicalBlock(scope: !807, file: !808, line: 507, column: 7)
!4894 = !DILocation(line: 507, column: 9, scope: !4893, inlinedAt: !4891)
!4895 = !DILocation(line: 507, column: 7, scope: !807, inlinedAt: !4891)
!4896 = !DILocation(line: 509, column: 16, scope: !4897, inlinedAt: !4891)
!4897 = distinct !DILexicalBlock(scope: !4893, file: !808, line: 508, column: 5)
!4898 = !DILocation(line: 510, column: 13, scope: !4899, inlinedAt: !4891)
!4899 = distinct !DILexicalBlock(scope: !4897, file: !808, line: 510, column: 11)
!4900 = !DILocation(line: 510, column: 23, scope: !4899, inlinedAt: !4891)
!4901 = !DILocation(line: 510, column: 26, scope: !4899, inlinedAt: !4891)
!4902 = !DILocation(line: 510, column: 32, scope: !4899, inlinedAt: !4891)
!4903 = !DILocation(line: 510, column: 11, scope: !4897, inlinedAt: !4891)
!4904 = !DILocation(line: 512, column: 30, scope: !4905, inlinedAt: !4891)
!4905 = distinct !DILexicalBlock(scope: !4899, file: !808, line: 511, column: 9)
!4906 = !DILocation(line: 528, column: 19, scope: !819, inlinedAt: !4891)
!4907 = !DILocation(line: 0, scope: !4881, inlinedAt: !4908)
!4908 = distinct !DILocation(line: 520, column: 20, scope: !4909, inlinedAt: !4891)
!4909 = distinct !DILexicalBlock(scope: !4899, file: !808, line: 519, column: 9)
!4910 = !DILocation(line: 479, column: 12, scope: !4881, inlinedAt: !4908)
!4911 = !DILocation(line: 521, column: 22, scope: !4912, inlinedAt: !4891)
!4912 = distinct !DILexicalBlock(scope: !4909, file: !808, line: 521, column: 15)
!4913 = !DILocation(line: 521, column: 15, scope: !4909, inlinedAt: !4891)
!4914 = !DILocation(line: 522, column: 32, scope: !4912, inlinedAt: !4891)
!4915 = !DILocation(line: 522, column: 13, scope: !4912, inlinedAt: !4891)
!4916 = !DILocation(line: 0, scope: !4881, inlinedAt: !4917)
!4917 = distinct !DILocation(line: 527, column: 14, scope: !4893, inlinedAt: !4891)
!4918 = !DILocation(line: 479, column: 12, scope: !4881, inlinedAt: !4917)
!4919 = !DILocation(line: 0, scope: !4893, inlinedAt: !4891)
!4920 = !DILocation(line: 528, column: 9, scope: !819, inlinedAt: !4891)
!4921 = !DILocation(line: 530, column: 19, scope: !818, inlinedAt: !4891)
!4922 = !DILocation(line: 0, scope: !818, inlinedAt: !4891)
!4923 = !DILocation(line: 531, column: 17, scope: !822, inlinedAt: !4891)
!4924 = !DILocation(line: 531, column: 21, scope: !822, inlinedAt: !4891)
!4925 = !DILocation(line: 531, column: 54, scope: !822, inlinedAt: !4891)
!4926 = !DILocation(line: 531, column: 24, scope: !822, inlinedAt: !4891)
!4927 = !DILocation(line: 531, column: 68, scope: !822, inlinedAt: !4891)
!4928 = !DILocation(line: 531, column: 11, scope: !818, inlinedAt: !4891)
!4929 = !DILocation(line: 533, column: 29, scope: !821, inlinedAt: !4891)
!4930 = !DILocation(line: 0, scope: !821, inlinedAt: !4891)
!4931 = !DILocation(line: 534, column: 11, scope: !821, inlinedAt: !4891)
!4932 = !DILocation(line: 535, column: 17, scope: !821, inlinedAt: !4891)
!4933 = !DILocation(line: 537, column: 9, scope: !821, inlinedAt: !4891)
!4934 = !DILocation(line: 329, column: 22, scope: !4869)
!4935 = !DILocation(line: 330, column: 13, scope: !4869)
!4936 = !DILocation(line: 418, column: 23, scope: !4868)
!4937 = !DILocation(line: 0, scope: !4868)
!4938 = !DILocation(line: 419, column: 24, scope: !4868)
!4939 = !DILocation(line: 421, column: 13, scope: !4869)
!4940 = !DILocation(line: 426, column: 25, scope: !4872)
!4941 = !DILocation(line: 0, scope: !4872)
!4942 = !DILocation(line: 427, column: 24, scope: !4872)
!4943 = !DILocation(line: 429, column: 13, scope: !4869)
!4944 = !DILocation(line: 0, scope: !4864)
!4945 = !DILocation(line: 438, column: 3, scope: !4846)
!4946 = !DILocation(line: 441, column: 1, scope: !4846)
!4947 = !DILocation(line: 440, column: 3, scope: !4846)
!4948 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !825, file: !825, line: 100, type: !4949, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !828, retainedNodes: !4952)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!162, !2588, !165, !162, !4951}
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!4952 = !{!4953, !4954, !4955, !4956, !4957}
!4953 = !DILocalVariable(name: "pwc", arg: 1, scope: !4948, file: !825, line: 100, type: !2588)
!4954 = !DILocalVariable(name: "s", arg: 2, scope: !4948, file: !825, line: 100, type: !165)
!4955 = !DILocalVariable(name: "n", arg: 3, scope: !4948, file: !825, line: 100, type: !162)
!4956 = !DILocalVariable(name: "ps", arg: 4, scope: !4948, file: !825, line: 100, type: !4951)
!4957 = !DILocalVariable(name: "ret", scope: !4948, file: !825, line: 130, type: !162)
!4958 = !DILocation(line: 0, scope: !4948)
!4959 = !DILocation(line: 105, column: 9, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4948, file: !825, line: 105, column: 7)
!4961 = !DILocation(line: 105, column: 7, scope: !4948)
!4962 = !DILocation(line: 117, column: 10, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4948, file: !825, line: 117, column: 7)
!4964 = !DILocation(line: 117, column: 7, scope: !4948)
!4965 = !DILocation(line: 130, column: 16, scope: !4948)
!4966 = !DILocation(line: 135, column: 11, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4948, file: !825, line: 135, column: 7)
!4968 = !DILocation(line: 135, column: 25, scope: !4967)
!4969 = !DILocation(line: 135, column: 30, scope: !4967)
!4970 = !DILocation(line: 135, column: 7, scope: !4948)
!4971 = !DILocalVariable(name: "ps", arg: 1, scope: !4972, file: !2564, line: 1135, type: !4951)
!4972 = distinct !DISubprogram(name: "mbszero", scope: !2564, file: !2564, line: 1135, type: !4973, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !828, retainedNodes: !4975)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{null, !4951}
!4975 = !{!4971}
!4976 = !DILocation(line: 0, scope: !4972, inlinedAt: !4977)
!4977 = distinct !DILocation(line: 137, column: 5, scope: !4967)
!4978 = !DILocalVariable(name: "__dest", arg: 1, scope: !4979, file: !2310, line: 57, type: !160)
!4979 = distinct !DISubprogram(name: "memset", scope: !2310, file: !2310, line: 57, type: !2311, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !828, retainedNodes: !4980)
!4980 = !{!4978, !4981, !4982}
!4981 = !DILocalVariable(name: "__ch", arg: 2, scope: !4979, file: !2310, line: 57, type: !116)
!4982 = !DILocalVariable(name: "__len", arg: 3, scope: !4979, file: !2310, line: 57, type: !162)
!4983 = !DILocation(line: 0, scope: !4979, inlinedAt: !4984)
!4984 = distinct !DILocation(line: 1137, column: 3, scope: !4972, inlinedAt: !4977)
!4985 = !DILocation(line: 59, column: 10, scope: !4979, inlinedAt: !4984)
!4986 = !DILocation(line: 137, column: 5, scope: !4967)
!4987 = !DILocation(line: 138, column: 11, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4948, file: !825, line: 138, column: 7)
!4989 = !DILocation(line: 138, column: 7, scope: !4948)
!4990 = !DILocation(line: 139, column: 5, scope: !4988)
!4991 = !DILocation(line: 143, column: 26, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4948, file: !825, line: 143, column: 7)
!4993 = !DILocation(line: 143, column: 41, scope: !4992)
!4994 = !DILocation(line: 143, column: 7, scope: !4948)
!4995 = !DILocation(line: 145, column: 15, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4997, file: !825, line: 145, column: 11)
!4997 = distinct !DILexicalBlock(scope: !4992, file: !825, line: 144, column: 5)
!4998 = !DILocation(line: 145, column: 11, scope: !4997)
!4999 = !DILocation(line: 146, column: 32, scope: !4996)
!5000 = !DILocation(line: 146, column: 16, scope: !4996)
!5001 = !DILocation(line: 146, column: 14, scope: !4996)
!5002 = !DILocation(line: 146, column: 9, scope: !4996)
!5003 = !DILocation(line: 286, column: 1, scope: !4948)
!5004 = !DISubprogram(name: "mbsinit", scope: !5005, file: !5005, line: 293, type: !5006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!5005 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5006 = !DISubroutineType(types: !5007)
!5007 = !{!116, !5008}
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!5010 = distinct !DISubprogram(name: "memcoll", scope: !921, file: !921, line: 66, type: !4561, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !5011)
!5011 = !{!5012, !5013, !5014, !5015, !5016, !5017, !5020}
!5012 = !DILocalVariable(name: "s1", arg: 1, scope: !5010, file: !921, line: 66, type: !159)
!5013 = !DILocalVariable(name: "s1len", arg: 2, scope: !5010, file: !921, line: 66, type: !162)
!5014 = !DILocalVariable(name: "s2", arg: 3, scope: !5010, file: !921, line: 66, type: !159)
!5015 = !DILocalVariable(name: "s2len", arg: 4, scope: !5010, file: !921, line: 66, type: !162)
!5016 = !DILocalVariable(name: "diff", scope: !5010, file: !921, line: 68, type: !116)
!5017 = !DILocalVariable(name: "n1", scope: !5018, file: !921, line: 81, type: !4)
!5018 = distinct !DILexicalBlock(scope: !5019, file: !921, line: 80, column: 5)
!5019 = distinct !DILexicalBlock(scope: !5010, file: !921, line: 74, column: 7)
!5020 = !DILocalVariable(name: "n2", scope: !5018, file: !921, line: 82, type: !4)
!5021 = !DILocation(line: 0, scope: !5010)
!5022 = !DILocation(line: 74, column: 13, scope: !5019)
!5023 = !DILocation(line: 74, column: 22, scope: !5019)
!5024 = !DILocalVariable(name: "__s1", arg: 1, scope: !5025, file: !1029, line: 974, type: !1161)
!5025 = distinct !DISubprogram(name: "memeq", scope: !1029, file: !1029, line: 974, type: !2534, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !5026)
!5026 = !{!5024, !5027, !5028}
!5027 = !DILocalVariable(name: "__s2", arg: 2, scope: !5025, file: !1029, line: 974, type: !1161)
!5028 = !DILocalVariable(name: "__n", arg: 3, scope: !5025, file: !1029, line: 974, type: !162)
!5029 = !DILocation(line: 0, scope: !5025, inlinedAt: !5030)
!5030 = distinct !DILocation(line: 74, column: 25, scope: !5019)
!5031 = !DILocation(line: 976, column: 11, scope: !5025, inlinedAt: !5030)
!5032 = !DILocation(line: 976, column: 10, scope: !5025, inlinedAt: !5030)
!5033 = !DILocation(line: 74, column: 7, scope: !5010)
!5034 = !DILocation(line: 76, column: 7, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5019, file: !921, line: 75, column: 5)
!5036 = !DILocation(line: 76, column: 13, scope: !5035)
!5037 = !DILocation(line: 78, column: 5, scope: !5035)
!5038 = !DILocation(line: 81, column: 17, scope: !5018)
!5039 = !DILocation(line: 0, scope: !5018)
!5040 = !DILocation(line: 82, column: 17, scope: !5018)
!5041 = !DILocation(line: 84, column: 17, scope: !5018)
!5042 = !DILocation(line: 85, column: 17, scope: !5018)
!5043 = !DILocation(line: 87, column: 38, scope: !5018)
!5044 = !DILocation(line: 87, column: 53, scope: !5018)
!5045 = !DILocalVariable(name: "s1", arg: 1, scope: !5046, file: !921, line: 35, type: !165)
!5046 = distinct !DISubprogram(name: "strcoll_loop", scope: !921, file: !921, line: 35, type: !2502, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !5047)
!5047 = !{!5045, !5048, !5049, !5050, !5051, !5052, !5054}
!5048 = !DILocalVariable(name: "s1size", arg: 2, scope: !5046, file: !921, line: 35, type: !162)
!5049 = !DILocalVariable(name: "s2", arg: 3, scope: !5046, file: !921, line: 35, type: !165)
!5050 = !DILocalVariable(name: "s2size", arg: 4, scope: !5046, file: !921, line: 35, type: !162)
!5051 = !DILocalVariable(name: "diff", scope: !5046, file: !921, line: 37, type: !116)
!5052 = !DILocalVariable(name: "size1", scope: !5053, file: !921, line: 44, type: !162)
!5053 = distinct !DILexicalBlock(scope: !5046, file: !921, line: 40, column: 5)
!5054 = !DILocalVariable(name: "size2", scope: !5053, file: !921, line: 45, type: !162)
!5055 = !DILocation(line: 0, scope: !5046, inlinedAt: !5056)
!5056 = distinct !DILocation(line: 87, column: 14, scope: !5018)
!5057 = !DILocation(line: 39, column: 3, scope: !5046, inlinedAt: !5056)
!5058 = !DILocation(line: 39, column: 19, scope: !5046, inlinedAt: !5056)
!5059 = !DILocation(line: 39, column: 32, scope: !5046, inlinedAt: !5056)
!5060 = !DILocation(line: 39, column: 30, scope: !5046, inlinedAt: !5056)
!5061 = !DILocation(line: 44, column: 22, scope: !5053, inlinedAt: !5056)
!5062 = !DILocation(line: 44, column: 34, scope: !5053, inlinedAt: !5056)
!5063 = !DILocation(line: 0, scope: !5053, inlinedAt: !5056)
!5064 = !DILocation(line: 45, column: 22, scope: !5053, inlinedAt: !5056)
!5065 = !DILocation(line: 45, column: 34, scope: !5053, inlinedAt: !5056)
!5066 = !DILocation(line: 48, column: 14, scope: !5053, inlinedAt: !5056)
!5067 = !DILocation(line: 49, column: 14, scope: !5053, inlinedAt: !5056)
!5068 = !DILocation(line: 51, column: 18, scope: !5069, inlinedAt: !5056)
!5069 = distinct !DILexicalBlock(scope: !5053, file: !921, line: 51, column: 11)
!5070 = !DILocation(line: 51, column: 11, scope: !5053, inlinedAt: !5056)
!5071 = !DILocation(line: 52, column: 26, scope: !5069, inlinedAt: !5056)
!5072 = !DILocation(line: 47, column: 10, scope: !5053, inlinedAt: !5056)
!5073 = !DILocation(line: 46, column: 10, scope: !5053, inlinedAt: !5056)
!5074 = !DILocation(line: 53, column: 18, scope: !5075, inlinedAt: !5056)
!5075 = distinct !DILexicalBlock(scope: !5053, file: !921, line: 53, column: 11)
!5076 = distinct !{!5076, !5057, !5077, !1063}
!5077 = !DILocation(line: 55, column: 5, scope: !5046, inlinedAt: !5056)
!5078 = !DILocation(line: 89, column: 17, scope: !5018)
!5079 = !DILocation(line: 90, column: 17, scope: !5018)
!5080 = !DILocation(line: 0, scope: !5019)
!5081 = !DILocation(line: 93, column: 3, scope: !5010)
!5082 = !DISubprogram(name: "strcoll", scope: !1133, file: !1133, line: 163, type: !1142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1001)
!5083 = distinct !DISubprogram(name: "memcoll0", scope: !921, file: !921, line: 102, type: !2502, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !5084)
!5084 = !{!5085, !5086, !5087, !5088}
!5085 = !DILocalVariable(name: "s1", arg: 1, scope: !5083, file: !921, line: 102, type: !165)
!5086 = !DILocalVariable(name: "s1size", arg: 2, scope: !5083, file: !921, line: 102, type: !162)
!5087 = !DILocalVariable(name: "s2", arg: 3, scope: !5083, file: !921, line: 102, type: !165)
!5088 = !DILocalVariable(name: "s2size", arg: 4, scope: !5083, file: !921, line: 102, type: !162)
!5089 = !DILocation(line: 0, scope: !5083)
!5090 = !DILocation(line: 104, column: 14, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5083, file: !921, line: 104, column: 7)
!5092 = !DILocation(line: 104, column: 24, scope: !5091)
!5093 = !DILocation(line: 0, scope: !5025, inlinedAt: !5094)
!5094 = distinct !DILocation(line: 104, column: 27, scope: !5091)
!5095 = !DILocation(line: 976, column: 11, scope: !5025, inlinedAt: !5094)
!5096 = !DILocation(line: 976, column: 10, scope: !5025, inlinedAt: !5094)
!5097 = !DILocation(line: 104, column: 7, scope: !5083)
!5098 = !DILocation(line: 106, column: 7, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5091, file: !921, line: 105, column: 5)
!5100 = !DILocation(line: 106, column: 13, scope: !5099)
!5101 = !DILocation(line: 107, column: 7, scope: !5099)
!5102 = !DILocation(line: 0, scope: !5046, inlinedAt: !5103)
!5103 = distinct !DILocation(line: 110, column: 12, scope: !5091)
!5104 = !DILocation(line: 39, column: 3, scope: !5046, inlinedAt: !5103)
!5105 = !DILocation(line: 39, column: 19, scope: !5046, inlinedAt: !5103)
!5106 = !DILocation(line: 39, column: 32, scope: !5046, inlinedAt: !5103)
!5107 = !DILocation(line: 39, column: 30, scope: !5046, inlinedAt: !5103)
!5108 = !DILocation(line: 44, column: 22, scope: !5053, inlinedAt: !5103)
!5109 = !DILocation(line: 44, column: 34, scope: !5053, inlinedAt: !5103)
!5110 = !DILocation(line: 0, scope: !5053, inlinedAt: !5103)
!5111 = !DILocation(line: 45, column: 22, scope: !5053, inlinedAt: !5103)
!5112 = !DILocation(line: 45, column: 34, scope: !5053, inlinedAt: !5103)
!5113 = !DILocation(line: 48, column: 14, scope: !5053, inlinedAt: !5103)
!5114 = !DILocation(line: 49, column: 14, scope: !5053, inlinedAt: !5103)
!5115 = !DILocation(line: 51, column: 18, scope: !5069, inlinedAt: !5103)
!5116 = !DILocation(line: 51, column: 11, scope: !5053, inlinedAt: !5103)
!5117 = !DILocation(line: 52, column: 26, scope: !5069, inlinedAt: !5103)
!5118 = !DILocation(line: 47, column: 10, scope: !5053, inlinedAt: !5103)
!5119 = !DILocation(line: 46, column: 10, scope: !5053, inlinedAt: !5103)
!5120 = !DILocation(line: 53, column: 18, scope: !5075, inlinedAt: !5103)
!5121 = distinct !{!5121, !5104, !5122, !1063}
!5122 = !DILocation(line: 55, column: 5, scope: !5046, inlinedAt: !5103)
!5123 = !DILocation(line: 0, scope: !5091)
!5124 = !DILocation(line: 111, column: 1, scope: !5083)
!5125 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !923, file: !923, line: 27, type: !4122, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !5126)
!5126 = !{!5127, !5128, !5129, !5130}
!5127 = !DILocalVariable(name: "ptr", arg: 1, scope: !5125, file: !923, line: 27, type: !160)
!5128 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5125, file: !923, line: 27, type: !162)
!5129 = !DILocalVariable(name: "size", arg: 3, scope: !5125, file: !923, line: 27, type: !162)
!5130 = !DILocalVariable(name: "nbytes", scope: !5125, file: !923, line: 29, type: !162)
!5131 = !DILocation(line: 0, scope: !5125)
!5132 = !DILocation(line: 30, column: 7, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5125, file: !923, line: 30, column: 7)
!5134 = !DILocalVariable(name: "ptr", arg: 1, scope: !5135, file: !4214, line: 2057, type: !160)
!5135 = distinct !DISubprogram(name: "rpl_realloc", scope: !4214, file: !4214, line: 2057, type: !4206, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !5136)
!5136 = !{!5134, !5137}
!5137 = !DILocalVariable(name: "size", arg: 2, scope: !5135, file: !4214, line: 2057, type: !162)
!5138 = !DILocation(line: 0, scope: !5135, inlinedAt: !5139)
!5139 = distinct !DILocation(line: 37, column: 10, scope: !5125)
!5140 = !DILocation(line: 2059, column: 24, scope: !5135, inlinedAt: !5139)
!5141 = !DILocation(line: 2059, column: 10, scope: !5135, inlinedAt: !5139)
!5142 = !DILocation(line: 37, column: 3, scope: !5125)
!5143 = !DILocation(line: 32, column: 7, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5133, file: !923, line: 31, column: 5)
!5145 = !DILocation(line: 32, column: 13, scope: !5144)
!5146 = !DILocation(line: 33, column: 7, scope: !5144)
!5147 = !DILocation(line: 38, column: 1, scope: !5125)
