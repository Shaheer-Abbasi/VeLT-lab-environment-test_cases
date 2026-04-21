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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !536
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !502
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !526
@.str.1.46 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !528
@.str.2.48 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !530
@.str.3.47 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !532
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !534
@.str.4.41 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !538
@.str.5.42 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !540
@.str.6.43 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !545
@.str.80 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !550
@.str.1.81 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !553
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !555
@.str.92 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !561
@.str.1.93 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !563
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !565
@.str.96 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !596
@.str.1.97 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !599
@.str.2.98 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !601
@.str.3.99 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !606
@.str.4.100 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !608
@.str.5.101 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !610
@.str.6.102 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !612
@.str.7.103 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !614
@.str.8.104 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !616
@.str.9.105 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !618
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.96, ptr @.str.1.97, ptr @.str.2.98, ptr @.str.3.99, ptr @.str.4.100, ptr @.str.5.101, ptr @.str.6.102, ptr @.str.7.103, ptr @.str.8.104, ptr @.str.9.105, ptr null], align 8, !dbg !620
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !633
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !647
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !685
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !692
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !649
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !694
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !637
@.str.10.108 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !654
@.str.11.106 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !656
@.str.12.109 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !658
@.str.13.107 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !660
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !662
@.str.124 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !700
@.str.1.125 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !703
@.str.2.126 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !705
@.str.3.127 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !707
@.str.4.128 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !709
@.str.5.129 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !711
@.str.6.130 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !716
@.str.7.131 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !721
@.str.8.132 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !723
@.str.9.133 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !728
@.str.10.134 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !733
@.str.11.135 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !738
@.str.12.136 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !743
@.str.13.137 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !745
@.str.14.138 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !750
@.str.15.139 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !755
@.str.16.140 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !757
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.145 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !759
@.str.18.146 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !761
@.str.19.147 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !763
@.str.20.148 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !765
@.str.21.149 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !767
@.str.22.150 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !769
@.str.23.151 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !771
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !773
@.str.164 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !781
@.str.1.162 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !784
@.str.2.163 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !786
@.str.167 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !788
@.str.1.168 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1, !dbg !791
@.str.2.169 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1, !dbg !793
@exit_failure = dso_local global i32 1, align 4, !dbg !798
@.str.3.170 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1, !dbg !804
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !806
@.str.179 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !824
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !827

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !937 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !941, metadata !DIExpression()), !dbg !942
  %2 = icmp eq i32 %0, 0, !dbg !943
  br i1 %2, label %8, label %3, !dbg !945

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !946, !tbaa !948
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #42, !dbg !946
  %6 = load ptr, ptr @program_name, align 8, !dbg !946, !tbaa !948
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #42, !dbg !946
  br label %51, !dbg !946

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #42, !dbg !952
  %10 = load ptr, ptr @program_name, align 8, !dbg !952, !tbaa !948
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #42, !dbg !952
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #42, !dbg !954
  %13 = load ptr, ptr @stdout, align 8, !dbg !954, !tbaa !948
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !954
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #42, !dbg !955
  %16 = load ptr, ptr @stdout, align 8, !dbg !955, !tbaa !948
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !955
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #42, !dbg !956
  %19 = load ptr, ptr @stdout, align 8, !dbg !956, !tbaa !948
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !956
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #42, !dbg !957
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !957
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #42, !dbg !958
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !958
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #42, !dbg !959
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !959
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #42, !dbg !960
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !960
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #42, !dbg !961
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !961
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #42, !dbg !962
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !962
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #42, !dbg !963
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !963
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #42, !dbg !964
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !964
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #42, !dbg !965
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !965
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #42, !dbg !966
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !966
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #42, !dbg !967
  %32 = load ptr, ptr @stdout, align 8, !dbg !967, !tbaa !948
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !967
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #42, !dbg !968
  %35 = load ptr, ptr @program_name, align 8, !dbg !968, !tbaa !948
  %36 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef %35, ptr noundef %35) #42, !dbg !968
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !969, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata !988, metadata !982, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata ptr poison, metadata !981, metadata !DIExpression()), !dbg !986
  tail call void @emit_bug_reporting_address() #42, !dbg !989
  %37 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #42, !dbg !990
  call void @llvm.dbg.value(metadata ptr %37, metadata !984, metadata !DIExpression()), !dbg !986
  %38 = icmp eq ptr %37, null, !dbg !991
  br i1 %38, label %46, label %39, !dbg !993

39:                                               ; preds = %8
  %40 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(4) @.str.59, i64 noundef 3) #43, !dbg !994
  %41 = icmp eq i32 %40, 0, !dbg !994
  br i1 %41, label %46, label %42, !dbg !995

42:                                               ; preds = %39
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #42, !dbg !996
  %44 = load ptr, ptr @stdout, align 8, !dbg !996, !tbaa !948
  %45 = tail call i32 @fputs_unlocked(ptr noundef %43, ptr noundef %44), !dbg !996
  br label %46, !dbg !998

46:                                               ; preds = %8, %39, %42
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !981, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !985, metadata !DIExpression()), !dbg !986
  %47 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #42, !dbg !999
  %48 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %47, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.5) #42, !dbg !999
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #42, !dbg !1000
  %50 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %49, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.63) #42, !dbg !1000
  br label %51

51:                                               ; preds = %46, %3
  tail call void @exit(i32 noundef %0) #44, !dbg !1001
  unreachable, !dbg !1001
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1002 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1006 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1012 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1015 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !210 {
  tail call void @llvm.dbg.value(metadata ptr @.str.5, metadata !214, metadata !DIExpression()), !dbg !1018
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !215, metadata !DIExpression()), !dbg !1018
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1019, !tbaa !1020
  %3 = icmp eq i32 %2, -1, !dbg !1022
  br i1 %3, label %4, label %16, !dbg !1023

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.29) #42, !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !216, metadata !DIExpression()), !dbg !1025
  %6 = icmp eq ptr %5, null, !dbg !1026
  br i1 %6, label %14, label %7, !dbg !1027

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1028, !tbaa !1029
  %9 = icmp eq i8 %8, 0, !dbg !1028
  br i1 %9, label %14, label %10, !dbg !1030

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1031, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !1037, metadata !DIExpression()), !dbg !1038
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.30) #43, !dbg !1040
  %12 = icmp eq i32 %11, 0, !dbg !1041
  %13 = zext i1 %12 to i32, !dbg !1030
  br label %14, !dbg !1030

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1042, !tbaa !1020
  br label %16, !dbg !1043

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1044
  %18 = icmp eq i32 %17, 0, !dbg !1044
  br i1 %18, label %22, label %19, !dbg !1046

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1047, !tbaa !948
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1047
  br label %121, !dbg !1049

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !219, metadata !DIExpression()), !dbg !1018
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.31) #43, !dbg !1050
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1051
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !220, metadata !DIExpression()), !dbg !1018
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #43, !dbg !1052
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !221, metadata !DIExpression()), !dbg !1018
  %26 = icmp eq ptr %25, null, !dbg !1053
  br i1 %26, label %53, label %27, !dbg !1054

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1055
  br i1 %28, label %53, label %29, !dbg !1056

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !222, metadata !DIExpression()), !dbg !1057
  tail call void @llvm.dbg.value(metadata i64 0, metadata !226, metadata !DIExpression()), !dbg !1057
  %30 = icmp ult ptr %24, %25, !dbg !1058
  br i1 %30, label %31, label %53, !dbg !1059

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #45, !dbg !1018
  %33 = load ptr, ptr %32, align 8, !tbaa !948
  br label %34, !dbg !1059

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !222, metadata !DIExpression()), !dbg !1057
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !226, metadata !DIExpression()), !dbg !1057
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1060
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !222, metadata !DIExpression()), !dbg !1057
  %38 = load i8, ptr %35, align 1, !dbg !1060, !tbaa !1029
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1060
  %41 = load i16, ptr %40, align 2, !dbg !1060, !tbaa !1061
  %42 = freeze i16 %41, !dbg !1063
  %43 = lshr i16 %42, 13, !dbg !1063
  %44 = and i16 %43, 1, !dbg !1063
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1064
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !226, metadata !DIExpression()), !dbg !1057
  %47 = icmp ult ptr %37, %25, !dbg !1058
  %48 = icmp ult i64 %46, 2, !dbg !1065
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1065
  br i1 %49, label %34, label %50, !dbg !1059, !llvm.loop !1066

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !1064
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !1068
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1070
  br label %53, !dbg !1070

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1018
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !219, metadata !DIExpression()), !dbg !1018
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !221, metadata !DIExpression()), !dbg !1018
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.32) #43, !dbg !1071
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !227, metadata !DIExpression()), !dbg !1018
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !1072
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !228, metadata !DIExpression()), !dbg !1018
  br label %58, !dbg !1073

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !1018
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !219, metadata !DIExpression()), !dbg !1018
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !228, metadata !DIExpression()), !dbg !1018
  %61 = load i8, ptr %59, align 1, !dbg !1074, !tbaa !1029
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !1075

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1076
  %64 = load i8, ptr %63, align 1, !dbg !1079, !tbaa !1029
  %65 = icmp ne i8 %64, 45, !dbg !1080
  %66 = select i1 %65, i1 %60, i1 false, !dbg !1081
  br label %67, !dbg !1081

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !219, metadata !DIExpression()), !dbg !1018
  %69 = tail call ptr @__ctype_b_loc() #45, !dbg !1082
  %70 = load ptr, ptr %69, align 8, !dbg !1082, !tbaa !948
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !1082
  %73 = load i16, ptr %72, align 2, !dbg !1082, !tbaa !1061
  %74 = and i16 %73, 8192, !dbg !1082
  %75 = icmp eq i16 %74, 0, !dbg !1082
  br i1 %75, label %89, label %76, !dbg !1084

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !1085
  br i1 %77, label %91, label %78, !dbg !1088

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1089
  %80 = load i8, ptr %79, align 1, !dbg !1089, !tbaa !1029
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !1089
  %83 = load i16, ptr %82, align 2, !dbg !1089, !tbaa !1061
  %84 = and i16 %83, 8192, !dbg !1089
  %85 = icmp eq i16 %84, 0, !dbg !1089
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !1090
  br i1 %88, label %89, label %91, !dbg !1090

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1091
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !228, metadata !DIExpression()), !dbg !1018
  br label %58, !dbg !1073, !llvm.loop !1092

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !1018
  %92 = ptrtoint ptr %24 to i64, !dbg !1094
  %93 = load ptr, ptr @stdout, align 8, !dbg !1094, !tbaa !948
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !1094
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1031, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata !988, metadata !1037, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1031, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata !988, metadata !1037, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1031, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata !988, metadata !1037, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1031, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata !988, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1031, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata !988, metadata !1037, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1031, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata !988, metadata !1037, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1031, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata !988, metadata !1037, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1031, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata !988, metadata !1037, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1031, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata !988, metadata !1037, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1031, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata !988, metadata !1037, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata ptr @.str.5, metadata !282, metadata !DIExpression()), !dbg !1018
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.46, i64 noundef 6) #43, !dbg !1115
  %96 = icmp eq i32 %95, 0, !dbg !1115
  br i1 %96, label %100, label %97, !dbg !1117

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.47, i64 noundef 9) #43, !dbg !1118
  %99 = icmp eq i32 %98, 0, !dbg !1118
  br i1 %99, label %100, label %103, !dbg !1119

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1120
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.5, i32 noundef %101, ptr noundef %54) #42, !dbg !1120
  br label %106, !dbg !1122

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1123
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.5, i32 noundef %104, ptr noundef %54) #42, !dbg !1123
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1125, !tbaa !948
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %107), !dbg !1125
  %109 = load ptr, ptr @stdout, align 8, !dbg !1126, !tbaa !948
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %109), !dbg !1126
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1127
  %112 = sub i64 %111, %92, !dbg !1127
  %113 = load ptr, ptr @stdout, align 8, !dbg !1127, !tbaa !948
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1127
  %115 = load ptr, ptr @stdout, align 8, !dbg !1128, !tbaa !948
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.54, ptr noundef %115), !dbg !1128
  %117 = load ptr, ptr @stdout, align 8, !dbg !1129, !tbaa !948
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.55, ptr noundef %117), !dbg !1129
  %119 = load ptr, ptr @stdout, align 8, !dbg !1130, !tbaa !948
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1130
  br label %121, !dbg !1131

121:                                              ; preds = %106, %19
  ret void, !dbg !1131
}

; Function Attrs: nounwind
declare !dbg !1132 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1136 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1140 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1142 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1145 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1148 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1151 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1154 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1160 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1161 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1167 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1172, metadata !DIExpression()), !dbg !1175
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1173, metadata !DIExpression()), !dbg !1175
  %3 = load ptr, ptr %1, align 8, !dbg !1176, !tbaa !948
  tail call void @set_program_name(ptr noundef %3) #42, !dbg !1177
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.18) #42, !dbg !1178
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #42, !dbg !1179
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.19) #42, !dbg !1180
  %7 = tail call i1 @hard_locale(i32 noundef 3) #42, !dbg !1181
  %8 = zext i1 %7 to i8, !dbg !1182
  store i8 %8, ptr @hard_LC_COLLATE, align 4, !dbg !1182, !tbaa !1183
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #42, !dbg !1185
  br label %10, !dbg !1186

10:                                               ; preds = %36, %2
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.21, ptr noundef nonnull @long_options, ptr noundef null) #42, !dbg !1187
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1174, metadata !DIExpression()), !dbg !1175
  switch i32 %11, label %43 [
    i32 -1, label %44
    i32 49, label %12
    i32 50, label %13
    i32 51, label %14
    i32 122, label %15
    i32 257, label %16
    i32 256, label %17
    i32 258, label %18
    i32 259, label %35
    i32 -2, label %37
    i32 -3, label %38
  ], !dbg !1186

12:                                               ; preds = %10
  store i1 true, ptr @only_file_1, align 1, !dbg !1188
  br label %36, !dbg !1190

13:                                               ; preds = %10
  store i1 true, ptr @only_file_2, align 1, !dbg !1191
  br label %36, !dbg !1192

14:                                               ; preds = %10
  store i1 true, ptr @both, align 1, !dbg !1193
  br label %36, !dbg !1194

15:                                               ; preds = %10
  store i1 true, ptr @delim, align 1, !dbg !1195
  br label %36, !dbg !1196

16:                                               ; preds = %10
  store i32 2, ptr @check_input_order, align 4, !dbg !1197, !tbaa !1020
  br label %36, !dbg !1198

17:                                               ; preds = %10
  store i32 1, ptr @check_input_order, align 4, !dbg !1199, !tbaa !1020
  br label %36, !dbg !1200

18:                                               ; preds = %10
  %19 = load i64, ptr @col_sep_len, align 8, !dbg !1201, !tbaa !1203
  %20 = icmp eq i64 %19, 0, !dbg !1201
  %21 = load ptr, ptr @optarg, align 8, !dbg !1205, !tbaa !948
  br i1 %20, label %28, label %22, !dbg !1206

22:                                               ; preds = %18
  %23 = load ptr, ptr @col_sep, align 8, !dbg !1207, !tbaa !948
  call void @llvm.dbg.value(metadata ptr %23, metadata !1031, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata ptr %21, metadata !1037, metadata !DIExpression()), !dbg !1208
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %21) #43, !dbg !1210
  %25 = icmp eq i32 %24, 0, !dbg !1211
  br i1 %25, label %28, label %26, !dbg !1212

26:                                               ; preds = %22
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #42, !dbg !1213
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %27) #42, !dbg !1213
  unreachable, !dbg !1213

28:                                               ; preds = %22, %18
  store ptr %21, ptr @col_sep, align 8, !dbg !1214, !tbaa !948
  %29 = load i8, ptr %21, align 1, !dbg !1215, !tbaa !1029
  %30 = icmp eq i8 %29, 0, !dbg !1215
  br i1 %30, label %33, label %31, !dbg !1215

31:                                               ; preds = %28
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %21) #43, !dbg !1216
  br label %33, !dbg !1215

33:                                               ; preds = %28, %31
  %34 = phi i64 [ %32, %31 ], [ 1, %28 ], !dbg !1215
  store i64 %34, ptr @col_sep_len, align 8, !dbg !1217, !tbaa !1203
  br label %36, !dbg !1218

35:                                               ; preds = %10
  store i1 true, ptr @total_option, align 1, !dbg !1219
  br label %36, !dbg !1220

36:                                               ; preds = %35, %33, %17, %16, %15, %14, %13, %12
  br label %10, !dbg !1187, !llvm.loop !1221

37:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #46, !dbg !1223
  unreachable, !dbg !1223

38:                                               ; preds = %10
  %39 = load ptr, ptr @stdout, align 8, !dbg !1224, !tbaa !948
  %40 = load ptr, ptr @Version, align 8, !dbg !1224, !tbaa !948
  %41 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24) #42, !dbg !1224
  %42 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.25) #42, !dbg !1224
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %39, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.23, ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef null) #42, !dbg !1224
  tail call void @exit(i32 noundef 0) #44, !dbg !1224
  unreachable, !dbg !1224

43:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #46, !dbg !1225
  unreachable, !dbg !1225

44:                                               ; preds = %10
  %45 = load i64, ptr @col_sep_len, align 8, !dbg !1226, !tbaa !1203
  %46 = icmp eq i64 %45, 0, !dbg !1226
  br i1 %46, label %47, label %48, !dbg !1228

47:                                               ; preds = %44
  store i64 1, ptr @col_sep_len, align 8, !dbg !1229, !tbaa !1203
  br label %48, !dbg !1230

48:                                               ; preds = %47, %44
  %49 = load i32, ptr @optind, align 4, !dbg !1231, !tbaa !1020
  %50 = sub nsw i32 %0, %49, !dbg !1233
  %51 = icmp slt i32 %50, 2, !dbg !1234
  br i1 %51, label %52, label %64, !dbg !1235

52:                                               ; preds = %48
  %53 = icmp slt i32 %49, %0, !dbg !1236
  br i1 %53, label %56, label %54, !dbg !1239

54:                                               ; preds = %52
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #42, !dbg !1240
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %55) #42, !dbg !1240
  br label %63, !dbg !1240

56:                                               ; preds = %52
  %57 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #42, !dbg !1241
  %58 = sext i32 %0 to i64, !dbg !1241
  %59 = getelementptr ptr, ptr %1, i64 %58, !dbg !1241
  %60 = getelementptr ptr, ptr %59, i64 -1, !dbg !1241
  %61 = load ptr, ptr %60, align 8, !dbg !1241, !tbaa !948
  %62 = tail call ptr @quote(ptr noundef %61) #42, !dbg !1241
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %57, ptr noundef %62) #42, !dbg !1241
  br label %63

63:                                               ; preds = %56, %54
  tail call void @usage(i32 noundef 1) #46, !dbg !1242
  unreachable, !dbg !1242

64:                                               ; preds = %48
  %65 = icmp eq i32 %50, 2, !dbg !1243
  br i1 %65, label %74, label %66, !dbg !1245

66:                                               ; preds = %64
  %67 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #42, !dbg !1246
  %68 = load i32, ptr @optind, align 4, !dbg !1246, !tbaa !1020
  %69 = sext i32 %68 to i64, !dbg !1246
  %70 = getelementptr ptr, ptr %1, i64 %69, !dbg !1246
  %71 = getelementptr ptr, ptr %70, i64 2, !dbg !1246
  %72 = load ptr, ptr %71, align 8, !dbg !1246, !tbaa !948
  %73 = tail call ptr @quote(ptr noundef %72) #42, !dbg !1246
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %67, ptr noundef %73) #42, !dbg !1246
  tail call void @usage(i32 noundef 1) #46, !dbg !1248
  unreachable, !dbg !1248

74:                                               ; preds = %64
  %75 = sext i32 %49 to i64, !dbg !1249
  %76 = getelementptr inbounds ptr, ptr %1, i64 %75, !dbg !1249
  tail call fastcc void @compare_files(ptr noundef nonnull %76) #46, !dbg !1250
  unreachable, !dbg !1250
}

; Function Attrs: nounwind
declare !dbg !1251 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1254 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1255 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1258 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1264 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @compare_files(ptr nocapture noundef readonly %0) unnamed_addr #0 !dbg !1267 {
  %2 = alloca [2 x [4 x %struct.linebuffer]], align 8, !DIAssignID !1316
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1272, metadata !DIExpression(), metadata !1316, metadata ptr %2, metadata !DIExpression()), !dbg !1317
  %3 = alloca [2 x [4 x ptr]], align 8, !DIAssignID !1318
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1285, metadata !DIExpression(), metadata !1318, metadata ptr %3, metadata !DIExpression()), !dbg !1317
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1271, metadata !DIExpression()), !dbg !1317
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %2) #42, !dbg !1319
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #42, !dbg !1320
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1297, metadata !DIExpression()), !dbg !1321
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1297, metadata !DIExpression()), !dbg !1321
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1299, metadata !DIExpression()), !dbg !1322
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1299, metadata !DIExpression()), !dbg !1322
  call void @initbuffer(ptr noundef nonnull %2) #42, !dbg !1323
  store ptr %2, ptr %3, align 8, !dbg !1326, !tbaa !948
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1299, metadata !DIExpression()), !dbg !1322
  %4 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 0, i64 1, !dbg !1327
  call void @initbuffer(ptr noundef nonnull %4) #42, !dbg !1323
  %5 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 1, !dbg !1328
  store ptr %4, ptr %5, align 8, !dbg !1326, !tbaa !948
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1299, metadata !DIExpression()), !dbg !1322
  %6 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 0, i64 2, !dbg !1327
  call void @initbuffer(ptr noundef nonnull %6) #42, !dbg !1323
  %7 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 2, !dbg !1328
  store ptr %6, ptr %7, align 8, !dbg !1326, !tbaa !948
  tail call void @llvm.dbg.value(metadata i64 3, metadata !1299, metadata !DIExpression()), !dbg !1322
  %8 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 0, i64 3, !dbg !1327
  call void @initbuffer(ptr noundef nonnull %8) #42, !dbg !1323
  %9 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 3, !dbg !1328
  store ptr %8, ptr %9, align 8, !dbg !1326, !tbaa !948
  tail call void @llvm.dbg.value(metadata i64 4, metadata !1299, metadata !DIExpression()), !dbg !1322
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1317
  %10 = load ptr, ptr %0, align 8, !dbg !1329, !tbaa !948
  call void @llvm.dbg.value(metadata ptr %10, metadata !1031, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata ptr @.str.72, metadata !1037, metadata !DIExpression()), !dbg !1330
  %11 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.72) #43, !dbg !1332
  %12 = icmp eq i32 %11, 0, !dbg !1333
  br i1 %12, label %44, label %46, !dbg !1334

13:                                               ; preds = %58
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1297, metadata !DIExpression()), !dbg !1321
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1299, metadata !DIExpression()), !dbg !1322
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1299, metadata !DIExpression()), !dbg !1322
  %14 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 1, i64 0, !dbg !1327
  call void @initbuffer(ptr noundef nonnull %14) #42, !dbg !1323
  %15 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 0, !dbg !1328
  store ptr %14, ptr %15, align 8, !dbg !1326, !tbaa !948
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1299, metadata !DIExpression()), !dbg !1322
  %16 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 1, i64 1, !dbg !1327
  call void @initbuffer(ptr noundef nonnull %16) #42, !dbg !1323
  %17 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 1, !dbg !1328
  store ptr %16, ptr %17, align 8, !dbg !1326, !tbaa !948
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1299, metadata !DIExpression()), !dbg !1322
  %18 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 1, i64 2, !dbg !1327
  call void @initbuffer(ptr noundef nonnull %18) #42, !dbg !1323
  %19 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 2, !dbg !1328
  store ptr %18, ptr %19, align 8, !dbg !1326, !tbaa !948
  tail call void @llvm.dbg.value(metadata i64 3, metadata !1299, metadata !DIExpression()), !dbg !1322
  %20 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 1, i64 3, !dbg !1327
  call void @initbuffer(ptr noundef nonnull %20) #42, !dbg !1323
  %21 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 3, !dbg !1328
  store ptr %20, ptr %21, align 8, !dbg !1326, !tbaa !948
  tail call void @llvm.dbg.value(metadata i64 4, metadata !1299, metadata !DIExpression()), !dbg !1322
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !1317
  %22 = getelementptr inbounds ptr, ptr %0, i64 1, !dbg !1329
  %23 = load ptr, ptr %22, align 8, !dbg !1329, !tbaa !948
  call void @llvm.dbg.value(metadata ptr %23, metadata !1031, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata ptr @.str.72, metadata !1037, metadata !DIExpression()), !dbg !1330
  %24 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(2) @.str.72) #43, !dbg !1332
  %25 = icmp eq i32 %24, 0, !dbg !1333
  br i1 %25, label %28, label %26, !dbg !1334

26:                                               ; preds = %13
  %27 = call ptr @fopen_safer(ptr noundef %23, ptr noundef nonnull @.str.73) #42, !dbg !1335
  br label %30, !dbg !1334

28:                                               ; preds = %13
  %29 = load ptr, ptr @stdin, align 8, !dbg !1336, !tbaa !948
  br label %30, !dbg !1334

30:                                               ; preds = %28, %26
  %31 = phi ptr [ %29, %28 ], [ %27, %26 ], !dbg !1334
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1317
  %32 = icmp eq ptr %31, null, !dbg !1337
  br i1 %32, label %51, label %33, !dbg !1339

33:                                               ; preds = %30
  call void @fadvise(ptr noundef nonnull %31, i32 noundef 2) #42, !dbg !1340
  %34 = load i1, ptr @delim, align 1, !dbg !1341
  %35 = select i1 %34, i8 0, i8 10, !dbg !1341
  %36 = call ptr @readlinebuffer_delim(ptr noundef nonnull %14, ptr noundef nonnull %31, i8 noundef %35) #42, !dbg !1342
  tail call void @llvm.dbg.value(metadata ptr %36, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1343, metadata !DIExpression()), !dbg !1349
  %37 = load i32, ptr %31, align 8, !dbg !1352, !tbaa !1353
  %38 = and i32 %37, 32, !dbg !1355
  %39 = icmp eq i32 %38, 0, !dbg !1355
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1297, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1321
  br i1 %39, label %40, label %65, !dbg !1356

40:                                               ; preds = %33
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1297, metadata !DIExpression()), !dbg !1321
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1317
  %41 = icmp ne ptr %61, null, !dbg !1357
  %42 = icmp ne ptr %36, null, !dbg !1358
  %43 = select i1 %41, i1 true, i1 %42, !dbg !1358
  br i1 %43, label %.preheader, label %72, !dbg !1359

.preheader:                                       ; preds = %40
  br label %78, !dbg !1359

44:                                               ; preds = %1
  %45 = load ptr, ptr @stdin, align 8, !dbg !1336, !tbaa !948
  br label %48, !dbg !1334

46:                                               ; preds = %1
  %47 = call ptr @fopen_safer(ptr noundef %10, ptr noundef nonnull @.str.73) #42, !dbg !1335
  br label %48, !dbg !1334

48:                                               ; preds = %46, %44
  %49 = phi ptr [ %45, %44 ], [ %47, %46 ], !dbg !1334
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1317
  %50 = icmp eq ptr %49, null, !dbg !1337
  br i1 %50, label %51, label %58, !dbg !1339

51:                                               ; preds = %30, %48
  %52 = phi i64 [ 0, %48 ], [ 1, %30 ]
  %53 = getelementptr inbounds ptr, ptr %0, i64 %52
  %54 = tail call ptr @__errno_location() #45, !dbg !1360
  %55 = load i32, ptr %54, align 4, !dbg !1360, !tbaa !1020
  %56 = load ptr, ptr %53, align 8, !dbg !1360, !tbaa !948
  %57 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %56) #42, !dbg !1360
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %55, ptr noundef nonnull @.str.74, ptr noundef %57) #42, !dbg !1360
  unreachable, !dbg !1360

58:                                               ; preds = %48
  call void @fadvise(ptr noundef nonnull %49, i32 noundef 2) #42, !dbg !1340
  %59 = load i1, ptr @delim, align 1, !dbg !1341
  %60 = select i1 %59, i8 0, i8 10, !dbg !1341
  %61 = call ptr @readlinebuffer_delim(ptr noundef nonnull %2, ptr noundef nonnull %49, i8 noundef %60) #42, !dbg !1342
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !1343, metadata !DIExpression()), !dbg !1349
  %62 = load i32, ptr %49, align 8, !dbg !1352, !tbaa !1353
  %63 = and i32 %62, 32, !dbg !1355
  %64 = icmp eq i32 %63, 0, !dbg !1355
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1297, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1321
  br i1 %64, label %13, label %65, !dbg !1356

65:                                               ; preds = %33, %58
  %66 = phi i64 [ 0, %58 ], [ 1, %33 ]
  %67 = getelementptr inbounds ptr, ptr %0, i64 %66
  %68 = tail call ptr @__errno_location() #45, !dbg !1361
  %69 = load i32, ptr %68, align 4, !dbg !1361, !tbaa !1020
  %70 = load ptr, ptr %67, align 8, !dbg !1361, !tbaa !948
  %71 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %70) #42, !dbg !1361
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %69, ptr noundef nonnull @.str.74, ptr noundef %71) #42, !dbg !1361
  unreachable, !dbg !1361

.loopexit:                                        ; preds = %214
  %.lcssa2 = phi i64 [ %218, %214 ]
  %.lcssa1 = phi i64 [ %219, %214 ]
  %.lcssa = phi i64 [ %220, %214 ]
  br label %72, !dbg !1362

72:                                               ; preds = %.loopexit, %40
  %73 = phi i64 [ 0, %40 ], [ %.lcssa2, %.loopexit ], !dbg !1365
  %74 = phi i64 [ 0, %40 ], [ %.lcssa1, %.loopexit ], !dbg !1317
  %75 = phi i64 [ 0, %40 ], [ %.lcssa, %.loopexit ], !dbg !1365
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1314, metadata !DIExpression()), !dbg !1366
  %76 = call i32 @rpl_fclose(ptr noundef nonnull %49) #42, !dbg !1362
  %77 = icmp eq i32 %76, 0, !dbg !1367
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1314, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1366
  br i1 %77, label %227, label %232, !dbg !1368

78:                                               ; preds = %.preheader, %214
  %79 = phi i32 [ %221, %214 ], [ 0, %.preheader ], !dbg !1369
  %80 = phi i32 [ %222, %214 ], [ 0, %.preheader ], !dbg !1370
  %81 = phi i32 [ %217, %214 ], [ 0, %.preheader ], !dbg !1369
  %82 = phi i32 [ %216, %214 ], [ 0, %.preheader ], !dbg !1370
  %83 = phi ptr [ %215, %214 ], [ %61, %.preheader ], !dbg !1371
  %84 = phi ptr [ %223, %214 ], [ %36, %.preheader ], !dbg !1371
  %85 = phi i64 [ %220, %214 ], [ 0, %.preheader ]
  %86 = phi i64 [ %219, %214 ], [ 0, %.preheader ]
  %87 = phi i64 [ %218, %214 ], [ 0, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %84, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1305, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !1372
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1305, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1372
  %88 = icmp eq ptr %83, null, !dbg !1373
  br i1 %88, label %89, label %90, !dbg !1374

89:                                               ; preds = %78
  store i1 true, ptr @seen_unpairable, align 1, !dbg !1375
  br label %137, !dbg !1378

90:                                               ; preds = %78
  %91 = icmp eq ptr %84, null, !dbg !1379
  br i1 %91, label %92, label %93, !dbg !1380

92:                                               ; preds = %90
  store i1 true, ptr @seen_unpairable, align 1, !dbg !1375
  br label %135, !dbg !1378

93:                                               ; preds = %90
  %94 = load i8, ptr @hard_LC_COLLATE, align 4, !dbg !1381, !tbaa !1183, !range !1382, !noundef !988
  %95 = icmp eq i8 %94, 0, !dbg !1381
  br i1 %95, label %108, label %96, !dbg !1383

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.linebuffer, ptr %83, i64 0, i32 2, !dbg !1384
  %98 = load ptr, ptr %97, align 8, !dbg !1384, !tbaa !1385
  %99 = getelementptr inbounds %struct.linebuffer, ptr %83, i64 0, i32 1, !dbg !1387
  %100 = load i64, ptr %99, align 8, !dbg !1387, !tbaa !1388
  %101 = add nsw i64 %100, -1, !dbg !1389
  %102 = getelementptr inbounds %struct.linebuffer, ptr %84, i64 0, i32 2, !dbg !1390
  %103 = load ptr, ptr %102, align 8, !dbg !1390, !tbaa !1385
  %104 = getelementptr inbounds %struct.linebuffer, ptr %84, i64 0, i32 1, !dbg !1391
  %105 = load i64, ptr %104, align 8, !dbg !1391, !tbaa !1388
  %106 = add nsw i64 %105, -1, !dbg !1392
  %107 = call i32 @xmemcoll(ptr noundef %98, i64 noundef %101, ptr noundef %103, i64 noundef %106) #42, !dbg !1393
  tail call void @llvm.dbg.value(metadata i32 %107, metadata !1303, metadata !DIExpression()), !dbg !1372
  br label %127, !dbg !1394

108:                                              ; preds = %93
  %109 = getelementptr inbounds %struct.linebuffer, ptr %83, i64 0, i32 1, !dbg !1395
  %110 = load i64, ptr %109, align 8, !dbg !1395, !tbaa !1388
  %111 = getelementptr inbounds %struct.linebuffer, ptr %84, i64 0, i32 1, !dbg !1395
  %112 = load i64, ptr %111, align 8, !dbg !1395, !tbaa !1388
  %113 = call i64 @llvm.smin.i64(i64 %110, i64 %112), !dbg !1395
  %114 = add nsw i64 %113, -1, !dbg !1396
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !1306, metadata !DIExpression()), !dbg !1397
  %115 = getelementptr inbounds %struct.linebuffer, ptr %83, i64 0, i32 2, !dbg !1398
  %116 = load ptr, ptr %115, align 8, !dbg !1398, !tbaa !1385
  %117 = getelementptr inbounds %struct.linebuffer, ptr %84, i64 0, i32 2, !dbg !1399
  %118 = load ptr, ptr %117, align 8, !dbg !1399, !tbaa !1385
  %119 = call i32 @memcmp(ptr noundef %116, ptr noundef %118, i64 noundef %114) #43, !dbg !1400
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !1303, metadata !DIExpression()), !dbg !1372
  %120 = icmp eq i32 %119, 0, !dbg !1401
  br i1 %120, label %121, label %132, !dbg !1403

121:                                              ; preds = %108
  %122 = icmp slt i64 %110, %112, !dbg !1395
  %123 = icmp sgt i64 %110, %112, !dbg !1404
  %124 = zext i1 %123 to i32, !dbg !1404
  %125 = sext i1 %122 to i32, !dbg !1404
  %126 = add nsw i32 %125, %124, !dbg !1404
  tail call void @llvm.dbg.value(metadata i32 %126, metadata !1303, metadata !DIExpression()), !dbg !1372
  br label %127, !dbg !1405

127:                                              ; preds = %121, %96
  %128 = phi i32 [ %107, %96 ], [ %126, %121 ], !dbg !1406
  tail call void @llvm.dbg.value(metadata i32 %128, metadata !1303, metadata !DIExpression()), !dbg !1372
  %129 = icmp eq i32 %128, 0, !dbg !1407
  br i1 %129, label %130, label %132, !dbg !1408

130:                                              ; preds = %127
  %131 = add i64 %86, 1, !dbg !1409
  tail call void @llvm.dbg.value(metadata i64 %131, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1317
  call fastcc void @writeline(ptr noundef nonnull %84, i32 noundef 3), !dbg !1411
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i64 %131, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1305, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1372
  br label %139, !dbg !1412

132:                                              ; preds = %108, %127
  %133 = phi i32 [ %128, %127 ], [ %119, %108 ]
  store i1 true, ptr @seen_unpairable, align 1, !dbg !1375
  %134 = icmp slt i32 %133, 1, !dbg !1413
  br i1 %134, label %135, label %137, !dbg !1378

135:                                              ; preds = %132, %92
  %136 = add i64 %85, 1, !dbg !1415
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1317
  call fastcc void @writeline(ptr noundef nonnull %83, i32 noundef 1), !dbg !1417
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1317
  br label %139, !dbg !1412

137:                                              ; preds = %89, %132
  %138 = add i64 %87, 1, !dbg !1418
  tail call void @llvm.dbg.value(metadata i64 %138, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1317
  call fastcc void @writeline(ptr noundef %84, i32 noundef 2), !dbg !1420
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i64 %138, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1305, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !1372
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1305, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1372
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1312, metadata !DIExpression()), !dbg !1421
  br label %179, !dbg !1422

139:                                              ; preds = %130, %135
  %140 = phi i1 [ false, %130 ], [ true, %135 ]
  %141 = phi i64 [ %131, %130 ], [ %86, %135 ]
  %142 = phi i64 [ %85, %130 ], [ %136, %135 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1305, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !1372
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1305, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1372
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1312, metadata !DIExpression()), !dbg !1421
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1317
  %143 = add nsw i32 %82, 1, !dbg !1424
  %144 = and i32 %143, 3, !dbg !1427
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1317
  %145 = zext nneg i32 %144 to i64
  %146 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 %145, !dbg !1428
  %147 = load ptr, ptr %146, align 8, !dbg !1428, !tbaa !948
  %148 = load i1, ptr @delim, align 1, !dbg !1429
  %149 = select i1 %148, i8 0, i8 10, !dbg !1429
  %150 = call ptr @readlinebuffer_delim(ptr noundef %147, ptr noundef nonnull %49, i8 noundef %149) #42, !dbg !1430
  tail call void @llvm.dbg.value(metadata ptr %150, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1317
  %151 = icmp eq ptr %150, null, !dbg !1431
  br i1 %151, label %156, label %152, !dbg !1433

152:                                              ; preds = %139
  %153 = sext i32 %82 to i64, !dbg !1434
  %154 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 %153, !dbg !1434
  %155 = load ptr, ptr %154, align 8, !dbg !1434, !tbaa !948
  call fastcc void @check_order(ptr noundef %155, ptr noundef nonnull %150, i32 noundef 1), !dbg !1435
  br label %167, !dbg !1435

156:                                              ; preds = %139
  %157 = sext i32 %81 to i64, !dbg !1436
  %158 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 %157, !dbg !1436
  %159 = load ptr, ptr %158, align 8, !dbg !1436, !tbaa !948
  %160 = getelementptr inbounds %struct.linebuffer, ptr %159, i64 0, i32 2, !dbg !1438
  %161 = load ptr, ptr %160, align 8, !dbg !1438, !tbaa !1385
  %162 = icmp eq ptr %161, null, !dbg !1436
  br i1 %162, label %167, label %163, !dbg !1439

163:                                              ; preds = %156
  %164 = sext i32 %82 to i64, !dbg !1440
  %165 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 %164, !dbg !1440
  %166 = load ptr, ptr %165, align 8, !dbg !1440, !tbaa !948
  call fastcc void @check_order(ptr noundef nonnull %159, ptr noundef %166, i32 noundef 1), !dbg !1441
  br label %167, !dbg !1441

167:                                              ; preds = %156, %163, %152
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !1343, metadata !DIExpression()), !dbg !1442
  %168 = load i32, ptr %49, align 8, !dbg !1445, !tbaa !1353
  %169 = and i32 %168, 32, !dbg !1446
  %170 = icmp eq i32 %169, 0, !dbg !1446
  br i1 %170, label %178, label %171, !dbg !1447

171:                                              ; preds = %210, %167
  %172 = phi i64 [ 0, %167 ], [ 1, %210 ]
  %173 = tail call ptr @__errno_location() #45, !dbg !1448
  %174 = load i32, ptr %173, align 4, !dbg !1448, !tbaa !1020
  %175 = getelementptr inbounds ptr, ptr %0, i64 %172, !dbg !1448
  %176 = load ptr, ptr %175, align 8, !dbg !1448, !tbaa !948
  %177 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %176) #42, !dbg !1448
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %174, ptr noundef nonnull @.str.74, ptr noundef %177) #42, !dbg !1448
  unreachable, !dbg !1448

178:                                              ; preds = %167
  tail call void @llvm.dbg.value(metadata ptr %150, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1312, metadata !DIExpression()), !dbg !1421
  br i1 %140, label %214, label %179, !dbg !1422

179:                                              ; preds = %137, %178
  %180 = phi ptr [ %83, %137 ], [ %150, %178 ]
  %181 = phi i32 [ %82, %137 ], [ %144, %178 ]
  %182 = phi i32 [ %81, %137 ], [ %82, %178 ]
  %183 = phi i64 [ %138, %137 ], [ %87, %178 ]
  %184 = phi i64 [ %86, %137 ], [ %141, %178 ]
  %185 = phi i64 [ %85, %137 ], [ %142, %178 ]
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1317
  %186 = add nsw i32 %80, 1, !dbg !1424
  %187 = and i32 %186, 3, !dbg !1427
  tail call void @llvm.dbg.value(metadata i32 %187, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1317
  %188 = zext nneg i32 %187 to i64
  %189 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 %188, !dbg !1428
  %190 = load ptr, ptr %189, align 8, !dbg !1428, !tbaa !948
  %191 = load i1, ptr @delim, align 1, !dbg !1429
  %192 = select i1 %191, i8 0, i8 10, !dbg !1429
  %193 = call ptr @readlinebuffer_delim(ptr noundef %190, ptr noundef nonnull %31, i8 noundef %192) #42, !dbg !1430
  tail call void @llvm.dbg.value(metadata ptr %193, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1317
  %194 = icmp eq ptr %193, null, !dbg !1431
  br i1 %194, label %199, label %195, !dbg !1433

195:                                              ; preds = %179
  %196 = sext i32 %80 to i64, !dbg !1434
  %197 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 %196, !dbg !1434
  %198 = load ptr, ptr %197, align 8, !dbg !1434, !tbaa !948
  call fastcc void @check_order(ptr noundef %198, ptr noundef nonnull %193, i32 noundef 2), !dbg !1435
  br label %210, !dbg !1435

199:                                              ; preds = %179
  %200 = sext i32 %79 to i64, !dbg !1436
  %201 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 %200, !dbg !1436
  %202 = load ptr, ptr %201, align 8, !dbg !1436, !tbaa !948
  %203 = getelementptr inbounds %struct.linebuffer, ptr %202, i64 0, i32 2, !dbg !1438
  %204 = load ptr, ptr %203, align 8, !dbg !1438, !tbaa !1385
  %205 = icmp eq ptr %204, null, !dbg !1436
  br i1 %205, label %210, label %206, !dbg !1439

206:                                              ; preds = %199
  %207 = sext i32 %80 to i64, !dbg !1440
  %208 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 %207, !dbg !1440
  %209 = load ptr, ptr %208, align 8, !dbg !1440, !tbaa !948
  call fastcc void @check_order(ptr noundef nonnull %202, ptr noundef %209, i32 noundef 2), !dbg !1441
  br label %210, !dbg !1441

210:                                              ; preds = %206, %199, %195
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1343, metadata !DIExpression()), !dbg !1442
  %211 = load i32, ptr %31, align 8, !dbg !1445, !tbaa !1353
  %212 = and i32 %211, 32, !dbg !1446
  %213 = icmp eq i32 %212, 0, !dbg !1446
  br i1 %213, label %214, label %171, !dbg !1447

214:                                              ; preds = %210, %178
  %215 = phi ptr [ %150, %178 ], [ %180, %210 ]
  %216 = phi i32 [ %144, %178 ], [ %181, %210 ]
  %217 = phi i32 [ %82, %178 ], [ %182, %210 ]
  %218 = phi i64 [ %87, %178 ], [ %183, %210 ]
  %219 = phi i64 [ %141, %178 ], [ %184, %210 ]
  %220 = phi i64 [ %142, %178 ], [ %185, %210 ]
  %221 = phi i32 [ %79, %178 ], [ %80, %210 ], !dbg !1317
  %222 = phi i32 [ %80, %178 ], [ %187, %210 ], !dbg !1317
  %223 = phi ptr [ %84, %178 ], [ %193, %210 ], !dbg !1317
  tail call void @llvm.dbg.value(metadata ptr %223, metadata !1282, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 %222, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 %221, metadata !1287, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1312, metadata !DIExpression()), !dbg !1421
  tail call void @llvm.dbg.value(metadata i64 %220, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1317
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1317
  %224 = icmp ne ptr %215, null, !dbg !1357
  %225 = icmp ne ptr %223, null, !dbg !1358
  %226 = select i1 %224, i1 true, i1 %225, !dbg !1358
  br i1 %226, label %78, label %.loopexit, !dbg !1359, !llvm.loop !1449

227:                                              ; preds = %72
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1314, metadata !DIExpression()), !dbg !1366
  %228 = call i32 @rpl_fclose(ptr noundef nonnull %31) #42, !dbg !1362
  %229 = icmp eq i32 %228, 0, !dbg !1367
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1314, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1366
  br i1 %229, label %230, label %232, !dbg !1368

230:                                              ; preds = %227
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1314, metadata !DIExpression()), !dbg !1366
  %231 = load i1, ptr @total_option, align 1, !dbg !1451
  br i1 %231, label %239, label %255, !dbg !1453

232:                                              ; preds = %227, %72
  %233 = phi i64 [ 0, %72 ], [ 1, %227 ]
  %234 = tail call ptr @__errno_location() #45, !dbg !1454
  %235 = load i32, ptr %234, align 4, !dbg !1454, !tbaa !1020
  %236 = getelementptr inbounds ptr, ptr %0, i64 %233, !dbg !1454
  %237 = load ptr, ptr %236, align 8, !dbg !1454, !tbaa !948
  %238 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %237) #42, !dbg !1454
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %235, ptr noundef nonnull @.str.74, ptr noundef %238) #42, !dbg !1454
  unreachable, !dbg !1454

239:                                              ; preds = %230
  %240 = load i64, ptr @col_sep_len, align 8, !dbg !1455, !tbaa !1203
  %241 = icmp eq i64 %240, 1, !dbg !1458
  %242 = load ptr, ptr @col_sep, align 8, !dbg !1459, !tbaa !948
  br i1 %241, label %243, label %250, !dbg !1460

243:                                              ; preds = %239
  %244 = load i8, ptr %242, align 1, !dbg !1461, !tbaa !1029
  %245 = zext i8 %244 to i32, !dbg !1461
  %246 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #42, !dbg !1461
  %247 = load i1, ptr @delim, align 1, !dbg !1461
  %248 = select i1 %247, i32 0, i32 10, !dbg !1461
  %249 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.75, i64 noundef %75, i32 noundef %245, i64 noundef %73, i32 noundef %245, i64 noundef %74, i32 noundef %245, ptr noundef %246, i32 noundef %248) #42, !dbg !1461
  br label %255, !dbg !1463

250:                                              ; preds = %239
  %251 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #42, !dbg !1464
  %252 = load i1, ptr @delim, align 1, !dbg !1464
  %253 = select i1 %252, i32 0, i32 10, !dbg !1464
  %254 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.76, i64 noundef %75, ptr noundef %242, i64 noundef %73, ptr noundef %242, i64 noundef %74, ptr noundef %242, ptr noundef %251, i32 noundef %253) #42, !dbg !1464
  br label %255

255:                                              ; preds = %243, %250, %230
  %256 = load i8, ptr @issued_disorder_warning, align 4, !dbg !1466, !tbaa !1183, !range !1382, !noundef !988
  %257 = icmp eq i8 %256, 0, !dbg !1466
  %258 = load i8, ptr getelementptr inbounds ([2 x i8], ptr @issued_disorder_warning, i64 0, i64 1), align 1, !range !1382
  %259 = icmp eq i8 %258, 0
  %260 = select i1 %257, i1 %259, i1 false, !dbg !1468
  br i1 %260, label %263, label %261, !dbg !1468

261:                                              ; preds = %255
  %262 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #42, !dbg !1469
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %262) #42, !dbg !1469
  unreachable, !dbg !1469

263:                                              ; preds = %255
  call void @exit(i32 noundef 0) #44, !dbg !1470
  unreachable, !dbg !1470
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1471 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1475 i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @writeline(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !dbg !1478 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1484, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1485, metadata !DIExpression()), !dbg !1506
  switch i32 %1, label %20 [
    i32 1, label %3
    i32 2, label %5
    i32 3, label %9
  ], !dbg !1507

3:                                                ; preds = %2
  %4 = load i1, ptr @only_file_1, align 1, !dbg !1508
  br i1 %4, label %45, label %26, !dbg !1510

5:                                                ; preds = %2
  %6 = load i1, ptr @only_file_2, align 1, !dbg !1511
  br i1 %6, label %45, label %7, !dbg !1513

7:                                                ; preds = %5
  %8 = load i1, ptr @only_file_1, align 1, !dbg !1514
  br i1 %8, label %26, label %21, !dbg !1515

9:                                                ; preds = %2
  %10 = load i1, ptr @both, align 1, !dbg !1516
  br i1 %10, label %45, label %11, !dbg !1518

11:                                               ; preds = %9
  %12 = load i1, ptr @only_file_1, align 1, !dbg !1519
  br i1 %12, label %18, label %13, !dbg !1520

13:                                               ; preds = %11
  %14 = load i64, ptr @col_sep_len, align 8, !dbg !1521
  %15 = load ptr, ptr @col_sep, align 8, !dbg !1521, !tbaa !948
  %16 = load ptr, ptr @stdout, align 8, !dbg !1521, !tbaa !948
  %17 = tail call i64 @fwrite_unlocked(ptr noundef %15, i64 noundef 1, i64 noundef %14, ptr noundef %16), !dbg !1521
  br label %18, !dbg !1521

18:                                               ; preds = %13, %11
  %19 = load i1, ptr @only_file_2, align 1, !dbg !1522
  br i1 %19, label %26, label %21, !dbg !1523

20:                                               ; preds = %2
  unreachable

21:                                               ; preds = %18, %7
  %22 = load i64, ptr @col_sep_len, align 8, !dbg !1524
  %23 = load ptr, ptr @col_sep, align 8, !dbg !1524, !tbaa !948
  %24 = load ptr, ptr @stdout, align 8, !dbg !1524, !tbaa !948
  %25 = tail call i64 @fwrite_unlocked(ptr noundef %23, i64 noundef 1, i64 noundef %22, ptr noundef %24), !dbg !1524
  br label %26, !dbg !1525

26:                                               ; preds = %21, %18, %7, %3
  %27 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !1525
  %28 = load i64, ptr %27, align 8, !dbg !1525, !tbaa !1388
  %29 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !1525
  %30 = load ptr, ptr %29, align 8, !dbg !1525, !tbaa !1385
  %31 = load ptr, ptr @stdout, align 8, !dbg !1525, !tbaa !948
  %32 = tail call i64 @fwrite_unlocked(ptr noundef %30, i64 noundef 1, i64 noundef %28, ptr noundef %31), !dbg !1525
  %33 = load ptr, ptr @stdout, align 8, !dbg !1526, !tbaa !948
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1343, metadata !DIExpression()), !dbg !1528
  %34 = load i32, ptr %33, align 8, !dbg !1530, !tbaa !1353
  %35 = and i32 %34, 32, !dbg !1526
  %36 = icmp eq i32 %35, 0, !dbg !1526
  br i1 %36, label %45, label %37, !dbg !1531

37:                                               ; preds = %26
  %38 = tail call ptr @__errno_location() #45, !dbg !1532
  %39 = load i32, ptr %38, align 4, !dbg !1532, !tbaa !1020
  call void @llvm.dbg.value(metadata i32 %39, metadata !1535, metadata !DIExpression()), !dbg !1537
  %40 = tail call i32 @fflush_unlocked(ptr noundef nonnull %33) #42, !dbg !1538
  %41 = load ptr, ptr @stdout, align 8, !dbg !1539, !tbaa !948
  %42 = tail call i32 @fpurge(ptr noundef %41) #42, !dbg !1540
  %43 = load ptr, ptr @stdout, align 8, !dbg !1541, !tbaa !948
  tail call void @clearerr_unlocked(ptr noundef %43) #42, !dbg !1541
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #42, !dbg !1542
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %39, ptr noundef %44) #42, !dbg !1542
  unreachable, !dbg !1542

45:                                               ; preds = %9, %5, %3, %26
  ret void, !dbg !1543
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_order(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #11 !dbg !1544 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1548, metadata !DIExpression()), !dbg !1561
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1549, metadata !DIExpression()), !dbg !1561
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1550, metadata !DIExpression()), !dbg !1561
  %4 = load i32, ptr @check_input_order, align 4, !dbg !1562, !tbaa !1020
  switch i32 %4, label %5 [
    i32 2, label %39
    i32 1, label %7
  ], !dbg !1563

5:                                                ; preds = %3
  %6 = load i1, ptr @seen_unpairable, align 1, !dbg !1564
  br i1 %6, label %7, label %39, !dbg !1565

7:                                                ; preds = %3, %5
  %8 = add nsw i32 %2, -1, !dbg !1566
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [2 x i8], ptr @issued_disorder_warning, i64 0, i64 %9, !dbg !1567
  %11 = load i8, ptr %10, align 1, !dbg !1567, !tbaa !1183, !range !1382, !noundef !988
  %12 = icmp eq i8 %11, 0, !dbg !1567
  br i1 %12, label %13, label %39, !dbg !1568

13:                                               ; preds = %7
  %14 = load i8, ptr @hard_LC_COLLATE, align 4, !dbg !1569, !tbaa !1183, !range !1382, !noundef !988
  %15 = icmp eq i8 %14, 0, !dbg !1569
  %16 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !1571
  %17 = load ptr, ptr %16, align 8, !dbg !1571, !tbaa !1385
  %18 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !1571
  %19 = load i64, ptr %18, align 8, !dbg !1571, !tbaa !1388
  %20 = add nsw i64 %19, -1, !dbg !1571
  %21 = getelementptr inbounds %struct.linebuffer, ptr %1, i64 0, i32 2, !dbg !1571
  %22 = load ptr, ptr %21, align 8, !dbg !1571, !tbaa !1385
  %23 = getelementptr inbounds %struct.linebuffer, ptr %1, i64 0, i32 1, !dbg !1571
  %24 = load i64, ptr %23, align 8, !dbg !1571, !tbaa !1388
  %25 = add nsw i64 %24, -1, !dbg !1571
  br i1 %15, label %28, label %26, !dbg !1572

26:                                               ; preds = %13
  %27 = tail call i32 @xmemcoll(ptr noundef %17, i64 noundef %20, ptr noundef %22, i64 noundef %25) #42, !dbg !1573
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !1551, metadata !DIExpression()), !dbg !1574
  br label %30, !dbg !1575

28:                                               ; preds = %13
  %29 = tail call i32 @memcmp2(ptr noundef %17, i64 noundef %20, ptr noundef %22, i64 noundef %25) #43, !dbg !1576
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1551, metadata !DIExpression()), !dbg !1574
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ], !dbg !1571
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !1551, metadata !DIExpression()), !dbg !1574
  %32 = icmp sgt i32 %31, 0, !dbg !1577
  br i1 %32, label %33, label %39, !dbg !1578

33:                                               ; preds = %30
  %34 = load i32, ptr @check_input_order, align 4, !dbg !1579, !tbaa !1020
  %35 = icmp eq i32 %34, 1, !dbg !1579
  %36 = zext i1 %35 to i32, !dbg !1579
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #42, !dbg !1579
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %36, i32 noundef 0, ptr noundef %37, i32 noundef %2) #42, !dbg !1579
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !1556, metadata !DIExpression()), !dbg !1580
  %38 = xor i1 %35, true, !dbg !1581
  tail call void @llvm.assume(i1 %38), !dbg !1579
  store i8 1, ptr %10, align 1, !dbg !1582, !tbaa !1183
  br label %39, !dbg !1583

39:                                               ; preds = %30, %33, %3, %7, %5
  ret void, !dbg !1584
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

declare !dbg !1585 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1586 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1589 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1591, metadata !DIExpression()), !dbg !1592
  store ptr %0, ptr @file_name, align 8, !dbg !1593, !tbaa !948
  ret void, !dbg !1594
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !1595 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1599, metadata !DIExpression()), !dbg !1600
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1601, !tbaa !1183
  ret void, !dbg !1602
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #11 !dbg !1603 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1608, !tbaa !948
  %2 = tail call i32 @close_stream(ptr noundef %1) #42, !dbg !1609
  %3 = icmp eq i32 %2, 0, !dbg !1610
  br i1 %3, label %22, label %4, !dbg !1611

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1612, !tbaa !1183, !range !1382, !noundef !988
  %6 = icmp eq i8 %5, 0, !dbg !1612
  br i1 %6, label %11, label %7, !dbg !1613

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #45, !dbg !1614
  %9 = load i32, ptr %8, align 4, !dbg !1614, !tbaa !1020
  %10 = icmp eq i32 %9, 32, !dbg !1615
  br i1 %10, label %22, label %11, !dbg !1616

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1.37, i32 noundef 5) #42, !dbg !1617
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1605, metadata !DIExpression()), !dbg !1618
  %13 = load ptr, ptr @file_name, align 8, !dbg !1619, !tbaa !948
  %14 = icmp eq ptr %13, null, !dbg !1619
  %15 = tail call ptr @__errno_location() #45, !dbg !1621
  %16 = load i32, ptr %15, align 4, !dbg !1621, !tbaa !1020
  br i1 %14, label %19, label %17, !dbg !1622

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #42, !dbg !1623
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.38, ptr noundef %18, ptr noundef %12) #42, !dbg !1623
  br label %20, !dbg !1623

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.39, ptr noundef %12) #42, !dbg !1624
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1625, !tbaa !1020
  tail call void @_exit(i32 noundef %21) #44, !dbg !1626
  unreachable, !dbg !1626

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1627, !tbaa !948
  %24 = tail call i32 @close_stream(ptr noundef %23) #42, !dbg !1629
  %25 = icmp eq i32 %24, 0, !dbg !1630
  br i1 %25, label %28, label %26, !dbg !1631

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1632, !tbaa !1020
  tail call void @_exit(i32 noundef %27) #44, !dbg !1633
  unreachable, !dbg !1633

28:                                               ; preds = %22
  ret void, !dbg !1634
}

; Function Attrs: noreturn
declare !dbg !1635 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1637 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1641, metadata !DIExpression()), !dbg !1645
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1642, metadata !DIExpression()), !dbg !1645
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1643, metadata !DIExpression()), !dbg !1645
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1644, metadata !DIExpression(DW_OP_deref)), !dbg !1645
  tail call fastcc void @flush_stdout(), !dbg !1646
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1647, !tbaa !948
  %7 = icmp eq ptr %6, null, !dbg !1647
  br i1 %7, label %9, label %8, !dbg !1649

8:                                                ; preds = %4
  tail call void %6() #42, !dbg !1650
  br label %13, !dbg !1650

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1651, !tbaa !948
  %11 = tail call ptr @getprogname() #43, !dbg !1651
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef %11) #42, !dbg !1651
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #42, !dbg !1653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1653, !tbaa.struct !1654
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1653
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #42, !dbg !1653
  ret void, !dbg !1655
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #11 !dbg !1656 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1658, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i32 1, metadata !1660, metadata !DIExpression()), !dbg !1665
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #42, !dbg !1668
  %2 = icmp slt i32 %1, 0, !dbg !1669
  br i1 %2, label %6, label %3, !dbg !1670

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1671, !tbaa !948
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #42, !dbg !1671
  br label %6, !dbg !1671

6:                                                ; preds = %3, %0
  ret void, !dbg !1672
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #11 !dbg !1673 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1679
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1675, metadata !DIExpression()), !dbg !1680
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1676, metadata !DIExpression()), !dbg !1680
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1677, metadata !DIExpression()), !dbg !1680
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1678, metadata !DIExpression(DW_OP_deref)), !dbg !1680
  %7 = load ptr, ptr @stderr, align 8, !dbg !1681, !tbaa !948
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #42, !dbg !1682, !noalias !1726
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1730
  call void @llvm.dbg.value(metadata ptr %7, metadata !1722, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata ptr %2, metadata !1723, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata ptr poison, metadata !1724, metadata !DIExpression(DW_OP_deref)), !dbg !1731
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #42, !dbg !1682
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #42, !dbg !1682, !noalias !1726
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1732, !tbaa !1020
  %10 = add i32 %9, 1, !dbg !1732
  store i32 %10, ptr @error_message_count, align 4, !dbg !1732, !tbaa !1020
  %11 = icmp eq i32 %1, 0, !dbg !1733
  br i1 %11, label %21, label %12, !dbg !1735

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1736, metadata !DIExpression(), metadata !1679, metadata ptr %5, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i32 %1, metadata !1739, metadata !DIExpression()), !dbg !1744
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #42, !dbg !1746
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #42, !dbg !1747
  call void @llvm.dbg.value(metadata ptr %13, metadata !1740, metadata !DIExpression()), !dbg !1744
  %14 = icmp eq ptr %13, null, !dbg !1748
  br i1 %14, label %15, label %17, !dbg !1750

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.41, ptr noundef nonnull @.str.5.42, i32 noundef 5) #42, !dbg !1751
  call void @llvm.dbg.value(metadata ptr %16, metadata !1740, metadata !DIExpression()), !dbg !1744
  br label %17, !dbg !1752

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1744
  call void @llvm.dbg.value(metadata ptr %18, metadata !1740, metadata !DIExpression()), !dbg !1744
  %19 = load ptr, ptr @stderr, align 8, !dbg !1753, !tbaa !948
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.43, ptr noundef %18) #42, !dbg !1753
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #42, !dbg !1754
  br label %21, !dbg !1755

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1756, !tbaa !948
  call void @llvm.dbg.value(metadata i32 10, metadata !1757, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata ptr %22, metadata !1762, metadata !DIExpression()), !dbg !1763
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1765
  %24 = load ptr, ptr %23, align 8, !dbg !1765, !tbaa !1766
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1765
  %26 = load ptr, ptr %25, align 8, !dbg !1765, !tbaa !1767
  %27 = icmp ult ptr %24, %26, !dbg !1765
  br i1 %27, label %30, label %28, !dbg !1765, !prof !1768

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #42, !dbg !1765
  br label %32, !dbg !1765

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1765
  store ptr %31, ptr %23, align 8, !dbg !1765, !tbaa !1766
  store i8 10, ptr %24, align 1, !dbg !1765, !tbaa !1029
  br label %32, !dbg !1765

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1769, !tbaa !948
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #42, !dbg !1769
  %35 = icmp eq i32 %0, 0, !dbg !1770
  br i1 %35, label %37, label %36, !dbg !1772

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #44, !dbg !1773
  unreachable, !dbg !1773

37:                                               ; preds = %32
  ret void, !dbg !1774
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

declare !dbg !1775 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1778 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1781 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1784 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #11 !dbg !1788 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1796
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1795, metadata !DIExpression(), metadata !1796, metadata ptr %4, metadata !DIExpression()), !dbg !1797
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1792, metadata !DIExpression()), !dbg !1797
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1793, metadata !DIExpression()), !dbg !1797
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1794, metadata !DIExpression()), !dbg !1797
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #42, !dbg !1798
  call void @llvm.va_start(ptr nonnull %4), !dbg !1799
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #42, !dbg !1800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1800, !tbaa.struct !1654
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #47, !dbg !1800
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #42, !dbg !1800
  call void @llvm.va_end(ptr nonnull %4), !dbg !1801
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #42, !dbg !1802
  ret void, !dbg !1802
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !504 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !520, metadata !DIExpression()), !dbg !1803
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !521, metadata !DIExpression()), !dbg !1803
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !522, metadata !DIExpression()), !dbg !1803
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !523, metadata !DIExpression()), !dbg !1803
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !524, metadata !DIExpression()), !dbg !1803
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !525, metadata !DIExpression(DW_OP_deref)), !dbg !1803
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1804, !tbaa !1020
  %9 = icmp eq i32 %8, 0, !dbg !1804
  br i1 %9, label %24, label %10, !dbg !1806

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1807, !tbaa !1020
  %12 = icmp eq i32 %11, %3, !dbg !1810
  br i1 %12, label %13, label %23, !dbg !1811

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1812, !tbaa !948
  %15 = icmp eq ptr %14, %2, !dbg !1813
  br i1 %15, label %37, label %16, !dbg !1814

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1815
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1816
  br i1 %19, label %20, label %23, !dbg !1816

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !1817
  %22 = icmp eq i32 %21, 0, !dbg !1818
  br i1 %22, label %37, label %23, !dbg !1819

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1820, !tbaa !948
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1821, !tbaa !1020
  br label %24, !dbg !1822

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1823
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1824, !tbaa !948
  %26 = icmp eq ptr %25, null, !dbg !1824
  br i1 %26, label %28, label %27, !dbg !1826

27:                                               ; preds = %24
  tail call void %25() #42, !dbg !1827
  br label %32, !dbg !1827

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1828, !tbaa !948
  %30 = tail call ptr @getprogname() #43, !dbg !1828
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.46, ptr noundef %30) #42, !dbg !1828
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1830, !tbaa !948
  %34 = icmp eq ptr %2, null, !dbg !1830
  %35 = select i1 %34, ptr @.str.3.47, ptr @.str.2.48, !dbg !1830
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #42, !dbg !1830
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #42, !dbg !1831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1831, !tbaa.struct !1654
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1831
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #42, !dbg !1831
  br label %37, !dbg !1832

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1832
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #11 !dbg !1833 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1843
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1842, metadata !DIExpression(), metadata !1843, metadata ptr %6, metadata !DIExpression()), !dbg !1844
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1837, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1838, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1839, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1840, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1841, metadata !DIExpression()), !dbg !1844
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #42, !dbg !1845
  call void @llvm.va_start(ptr nonnull %6), !dbg !1846
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #42, !dbg !1847
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1847, !tbaa.struct !1654
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #47, !dbg !1847
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #42, !dbg !1847
  call void @llvm.va_end(ptr nonnull %6), !dbg !1848
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #42, !dbg !1849
  ret void, !dbg !1849
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #11 !dbg !1850 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1856, metadata !DIExpression()), !dbg !1860
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1857, metadata !DIExpression()), !dbg !1860
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1858, metadata !DIExpression()), !dbg !1860
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1859, metadata !DIExpression()), !dbg !1860
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #42, !dbg !1861
  ret void, !dbg !1862
}

; Function Attrs: nounwind
declare !dbg !1863 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 !dbg !1866 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1904, metadata !DIExpression()), !dbg !1906
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1905, metadata !DIExpression()), !dbg !1906
  %3 = icmp eq ptr %0, null, !dbg !1907
  br i1 %3, label %7, label %4, !dbg !1909

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !1910
  call void @llvm.dbg.value(metadata i32 %5, metadata !1856, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 0, metadata !1857, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 0, metadata !1858, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i32 %1, metadata !1859, metadata !DIExpression()), !dbg !1911
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #42, !dbg !1913
  br label %7, !dbg !1914

7:                                                ; preds = %4, %2
  ret void, !dbg !1915
}

; Function Attrs: nofree nounwind
declare !dbg !1916 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #11 !dbg !1919 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1957, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1958, metadata !DIExpression()), !dbg !1961
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !1962
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1959, metadata !DIExpression()), !dbg !1961
  %3 = icmp slt i32 %2, 0, !dbg !1963
  br i1 %3, label %4, label %6, !dbg !1965

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1966
  br label %24, !dbg !1967

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #42, !dbg !1968
  %8 = icmp eq i32 %7, 0, !dbg !1968
  br i1 %8, label %13, label %9, !dbg !1970

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !1971
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #42, !dbg !1972
  %12 = icmp eq i64 %11, -1, !dbg !1973
  br i1 %12, label %16, label %13, !dbg !1974

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #42, !dbg !1975
  %15 = icmp eq i32 %14, 0, !dbg !1975
  br i1 %15, label %16, label %18, !dbg !1976

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1958, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1960, metadata !DIExpression()), !dbg !1961
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1977
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1960, metadata !DIExpression()), !dbg !1961
  br label %24, !dbg !1978

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #45, !dbg !1979
  %20 = load i32, ptr %19, align 4, !dbg !1979, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1958, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1960, metadata !DIExpression()), !dbg !1961
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1977
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !1960, metadata !DIExpression()), !dbg !1961
  %22 = icmp eq i32 %20, 0, !dbg !1980
  br i1 %22, label %24, label %23, !dbg !1978

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !1982, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1960, metadata !DIExpression()), !dbg !1961
  br label %24, !dbg !1984

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !1961
  ret i32 %25, !dbg !1985
}

; Function Attrs: nofree nounwind
declare !dbg !1986 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1987 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1989 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #11 !dbg !1992 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2030, metadata !DIExpression()), !dbg !2031
  %2 = icmp eq ptr %0, null, !dbg !2032
  br i1 %2, label %6, label %3, !dbg !2034

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #42, !dbg !2035
  %5 = icmp eq i32 %4, 0, !dbg !2035
  br i1 %5, label %6, label %8, !dbg !2036

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2037
  br label %16, !dbg !2038

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2039, metadata !DIExpression()), !dbg !2044
  %9 = load i32, ptr %0, align 8, !dbg !2046, !tbaa !1353
  %10 = and i32 %9, 256, !dbg !2048
  %11 = icmp eq i32 %10, 0, !dbg !2048
  br i1 %11, label %14, label %12, !dbg !2049

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #42, !dbg !2050
  br label %14, !dbg !2050

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2051
  br label %16, !dbg !2052

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2031
  ret i32 %17, !dbg !2053
}

; Function Attrs: nofree nounwind
declare !dbg !2054 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @fopen_safer(ptr noundef nonnull %0, ptr noundef nonnull %1) local_unnamed_addr #11 !dbg !2055 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2093, metadata !DIExpression()), !dbg !2108
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2094, metadata !DIExpression()), !dbg !2108
  %3 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull %0, ptr noundef nonnull %1) #42, !dbg !2109
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2095, metadata !DIExpression()), !dbg !2108
  %4 = icmp eq ptr %3, null, !dbg !2110
  br i1 %4, label %25, label %5, !dbg !2111

5:                                                ; preds = %2
  %6 = tail call i32 @fileno(ptr noundef nonnull %3) #42, !dbg !2112
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2096, metadata !DIExpression()), !dbg !2113
  %7 = icmp ult i32 %6, 3, !dbg !2114
  br i1 %7, label %8, label %25, !dbg !2114

8:                                                ; preds = %5
  %9 = tail call i32 @dup_safer(i32 noundef %6) #42, !dbg !2115
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2099, metadata !DIExpression()), !dbg !2116
  %10 = icmp slt i32 %9, 0, !dbg !2117
  br i1 %10, label %11, label %15, !dbg !2118

11:                                               ; preds = %8
  %12 = tail call ptr @__errno_location() #45, !dbg !2119
  %13 = load i32, ptr %12, align 4, !dbg !2119, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2102, metadata !DIExpression()), !dbg !2120
  %14 = tail call i32 @rpl_fclose(ptr noundef nonnull %3) #42, !dbg !2121
  store i32 %13, ptr %12, align 4, !dbg !2122, !tbaa !1020
  br label %25

15:                                               ; preds = %8
  %16 = tail call i32 @rpl_fclose(ptr noundef nonnull %3) #42, !dbg !2123
  %17 = icmp eq i32 %16, 0, !dbg !2124
  br i1 %17, label %18, label %21, !dbg !2125

18:                                               ; preds = %15
  %19 = tail call noalias ptr @fdopen(i32 noundef %9, ptr noundef nonnull %1) #42, !dbg !2126
  tail call void @llvm.dbg.value(metadata ptr %19, metadata !2095, metadata !DIExpression()), !dbg !2108
  %20 = icmp eq ptr %19, null, !dbg !2127
  br i1 %20, label %21, label %25, !dbg !2128

21:                                               ; preds = %18, %15
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !2095, metadata !DIExpression()), !dbg !2108
  %22 = tail call ptr @__errno_location() #45, !dbg !2129
  %23 = load i32, ptr %22, align 4, !dbg !2129, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !2105, metadata !DIExpression()), !dbg !2130
  %24 = tail call i32 @close(i32 noundef %9) #42, !dbg !2131
  store i32 %23, ptr %22, align 4, !dbg !2132, !tbaa !1020
  br label %25

25:                                               ; preds = %11, %21, %5, %18, %2
  %26 = phi ptr [ null, %2 ], [ null, %11 ], [ null, %21 ], [ %19, %18 ], [ %3, %5 ], !dbg !2108
  ret ptr %26, !dbg !2133
}

; Function Attrs: nofree nounwind
declare !dbg !2134 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !2137 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #11 !dbg !2138 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2176, metadata !DIExpression()), !dbg !2177
  tail call void @__fpurge(ptr noundef nonnull %0) #42, !dbg !2178
  ret i32 0, !dbg !2179
}

; Function Attrs: nounwind
declare !dbg !2180 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !2183 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2221, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2222, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2223, metadata !DIExpression()), !dbg !2227
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2228
  %5 = load ptr, ptr %4, align 8, !dbg !2228, !tbaa !2229
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2230
  %7 = load ptr, ptr %6, align 8, !dbg !2230, !tbaa !2231
  %8 = icmp eq ptr %5, %7, !dbg !2232
  br i1 %8, label %9, label %27, !dbg !2233

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2234
  %11 = load ptr, ptr %10, align 8, !dbg !2234, !tbaa !1766
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2235
  %13 = load ptr, ptr %12, align 8, !dbg !2235, !tbaa !2236
  %14 = icmp eq ptr %11, %13, !dbg !2237
  br i1 %14, label %15, label %27, !dbg !2238

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2239
  %17 = load ptr, ptr %16, align 8, !dbg !2239, !tbaa !2240
  %18 = icmp eq ptr %17, null, !dbg !2241
  br i1 %18, label %19, label %27, !dbg !2242

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2243
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #42, !dbg !2244
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2224, metadata !DIExpression()), !dbg !2245
  %22 = icmp eq i64 %21, -1, !dbg !2246
  br i1 %22, label %29, label %23, !dbg !2248

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2249, !tbaa !1353
  %25 = and i32 %24, -17, !dbg !2249
  store i32 %25, ptr %0, align 8, !dbg !2249, !tbaa !1353
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2250
  store i64 %21, ptr %26, align 8, !dbg !2251, !tbaa !2252
  br label %29, !dbg !2253

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2254
  br label %29, !dbg !2255

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2227
  ret i32 %30, !dbg !2256
}

; Function Attrs: nofree nounwind
declare !dbg !2257 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !2260 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2263, !tbaa !948
  ret ptr %1, !dbg !2264
}

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #11 !dbg !2265 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !2274
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2270, metadata !DIExpression(), metadata !2274, metadata ptr %2, metadata !DIExpression()), !dbg !2275
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2269, metadata !DIExpression()), !dbg !2275
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #42, !dbg !2276
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #42, !dbg !2277
  %4 = icmp eq i32 %3, 0, !dbg !2277
  br i1 %4, label %5, label %12, !dbg !2279

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !2280, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata ptr @.str.80, metadata !2283, metadata !DIExpression()), !dbg !2284
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.80, i64 2), !dbg !2287
  %7 = icmp eq i32 %6, 0, !dbg !2288
  br i1 %7, label %11, label %8, !dbg !2289

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !2280, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata ptr @.str.1.81, metadata !2283, metadata !DIExpression()), !dbg !2290
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.81, i64 6), !dbg !2292
  %10 = icmp eq i32 %9, 0, !dbg !2293
  br i1 %10, label %11, label %12, !dbg !2294

11:                                               ; preds = %8, %5
  br label %12, !dbg !2295

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !2275
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #42, !dbg !2296
  ret i1 %13, !dbg !2296
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nofree nounwind memory(argmem: readwrite) uwtable
define dso_local void @initbuffer(ptr noundef %0) local_unnamed_addr #20 !dbg !2297 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2308, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata ptr %0, metadata !2310, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i32 0, metadata !2316, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i64 24, metadata !2317, metadata !DIExpression()), !dbg !2318
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %0, i8 noundef 0, i64 noundef 24, i1 noundef false) #42, !dbg !2320
  ret void, !dbg !2321
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @readlinebuffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !2322 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2360, metadata !DIExpression()), !dbg !2362
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2361, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata ptr %0, metadata !2363, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata ptr %1, metadata !2368, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8 10, metadata !2369, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata ptr %1, metadata !2380, metadata !DIExpression()), !dbg !2385
  %3 = load i32, ptr %1, align 8, !dbg !2388, !tbaa !1353
  %4 = and i32 %3, 16, !dbg !2389
  %5 = icmp eq i32 %4, 0, !dbg !2389
  br i1 %5, label %6, label %60, !dbg !2390

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2391
  %8 = load ptr, ptr %7, align 8, !dbg !2391, !tbaa !1385
  call void @llvm.dbg.value(metadata ptr %8, metadata !2370, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata ptr %8, metadata !2371, metadata !DIExpression()), !dbg !2378
  %9 = load i64, ptr %0, align 8, !dbg !2392, !tbaa !2393
  %10 = getelementptr inbounds i8, ptr %8, i64 %9, !dbg !2394
  call void @llvm.dbg.value(metadata ptr %10, metadata !2372, metadata !DIExpression()), !dbg !2378
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  br label %13, !dbg !2395

13:                                               ; preds = %46, %6
  %14 = phi ptr [ %8, %6 ], [ %47, %46 ], !dbg !2378
  %15 = phi ptr [ %8, %6 ], [ %51, %46 ], !dbg !2378
  %16 = phi ptr [ %10, %6 ], [ %49, %46 ], !dbg !2378
  call void @llvm.dbg.value(metadata ptr %16, metadata !2372, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata ptr %15, metadata !2371, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata ptr %14, metadata !2370, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata ptr %1, metadata !2396, metadata !DIExpression()), !dbg !2399
  %17 = load ptr, ptr %11, align 8, !dbg !2401, !tbaa !2231
  %18 = load ptr, ptr %12, align 8, !dbg !2401, !tbaa !2229
  %19 = icmp ult ptr %17, %18, !dbg !2401
  br i1 %19, label %20, label %24, !dbg !2401, !prof !1768

20:                                               ; preds = %13
  %21 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !2401
  store ptr %21, ptr %11, align 8, !dbg !2401, !tbaa !2231
  %22 = load i8, ptr %17, align 1, !dbg !2401, !tbaa !1029
  %23 = zext i8 %22 to i32, !dbg !2401
  call void @llvm.dbg.value(metadata i32 %23, metadata !2373, metadata !DIExpression()), !dbg !2378
  br label %37, !dbg !2402

24:                                               ; preds = %13
  %25 = tail call i32 @__uflow(ptr noundef nonnull %1) #42, !dbg !2401
  call void @llvm.dbg.value(metadata i32 %25, metadata !2373, metadata !DIExpression()), !dbg !2378
  %26 = icmp eq i32 %25, -1, !dbg !2403
  br i1 %26, label %27, label %37, !dbg !2402

27:                                               ; preds = %24
  %28 = icmp eq ptr %15, %14, !dbg !2405
  br i1 %28, label %.loopexit, label %29, !dbg !2408

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %1, metadata !2409, metadata !DIExpression()), !dbg !2412
  %30 = load i32, ptr %1, align 8, !dbg !2414, !tbaa !1353
  %31 = and i32 %30, 32, !dbg !2415
  %32 = icmp eq i32 %31, 0, !dbg !2415
  br i1 %32, label %33, label %.loopexit, !dbg !2416

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %15, i64 -1, !dbg !2417
  %35 = load i8, ptr %34, align 1, !dbg !2417, !tbaa !1029
  %36 = icmp eq i8 %35, 10, !dbg !2419
  br i1 %36, label %53, label %37, !dbg !2420

37:                                               ; preds = %33, %24, %20
  %38 = phi i32 [ %25, %24 ], [ %23, %20 ], [ 10, %33 ], !dbg !2421
  call void @llvm.dbg.value(metadata i32 %38, metadata !2373, metadata !DIExpression()), !dbg !2378
  %39 = icmp eq ptr %15, %16, !dbg !2422
  br i1 %39, label %40, label %46, !dbg !2423

40:                                               ; preds = %37
  %41 = load i64, ptr %0, align 8, !dbg !2424, !tbaa !2393
  call void @llvm.dbg.value(metadata i64 %41, metadata !2374, metadata !DIExpression()), !dbg !2425
  %42 = tail call nonnull ptr @xpalloc(ptr noundef %14, ptr noundef nonnull %0, i64 noundef 1, i64 noundef -1, i64 noundef 1) #42, !dbg !2426
  call void @llvm.dbg.value(metadata ptr %42, metadata !2370, metadata !DIExpression()), !dbg !2378
  %43 = getelementptr inbounds i8, ptr %42, i64 %41, !dbg !2427
  call void @llvm.dbg.value(metadata ptr %43, metadata !2371, metadata !DIExpression()), !dbg !2378
  store ptr %42, ptr %7, align 8, !dbg !2428, !tbaa !1385
  %44 = load i64, ptr %0, align 8, !dbg !2429, !tbaa !2393
  %45 = getelementptr inbounds i8, ptr %42, i64 %44, !dbg !2430
  call void @llvm.dbg.value(metadata ptr %45, metadata !2372, metadata !DIExpression()), !dbg !2378
  br label %46, !dbg !2431

46:                                               ; preds = %40, %37
  %47 = phi ptr [ %42, %40 ], [ %14, %37 ], !dbg !2378
  %48 = phi ptr [ %43, %40 ], [ %15, %37 ], !dbg !2378
  %49 = phi ptr [ %45, %40 ], [ %16, %37 ], !dbg !2378
  call void @llvm.dbg.value(metadata ptr %49, metadata !2372, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata ptr %48, metadata !2371, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata ptr %47, metadata !2370, metadata !DIExpression()), !dbg !2378
  %50 = trunc i32 %38 to i8, !dbg !2432
  %51 = getelementptr inbounds i8, ptr %48, i64 1, !dbg !2433
  call void @llvm.dbg.value(metadata ptr %51, metadata !2371, metadata !DIExpression()), !dbg !2378
  store i8 %50, ptr %48, align 1, !dbg !2434, !tbaa !1029
  %52 = icmp eq i32 %38, 10, !dbg !2435
  br i1 %52, label %53, label %13, !dbg !2436, !llvm.loop !2437

53:                                               ; preds = %46, %33
  %54 = phi ptr [ %14, %33 ], [ %47, %46 ], !dbg !2378
  %55 = phi ptr [ %15, %33 ], [ %51, %46 ], !dbg !2378
  call void @llvm.dbg.value(metadata ptr %55, metadata !2371, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata ptr %54, metadata !2370, metadata !DIExpression()), !dbg !2378
  %56 = ptrtoint ptr %55 to i64, !dbg !2439
  %57 = ptrtoint ptr %54 to i64, !dbg !2439
  %58 = sub i64 %56, %57, !dbg !2439
  %59 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !2440
  store i64 %58, ptr %59, align 8, !dbg !2441, !tbaa !1388
  br label %60, !dbg !2442

.loopexit:                                        ; preds = %29, %27
  br label %60, !dbg !2443

60:                                               ; preds = %.loopexit, %2, %53
  %61 = phi ptr [ null, %2 ], [ %0, %53 ], [ null, %.loopexit ], !dbg !2378
  ret ptr %61, !dbg !2443
}

declare !dbg !2444 i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @readlinebuffer_delim(ptr noundef %0, ptr noundef %1, i8 noundef %2) local_unnamed_addr #11 !dbg !2364 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2363, metadata !DIExpression()), !dbg !2445
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2368, metadata !DIExpression()), !dbg !2445
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2369, metadata !DIExpression()), !dbg !2445
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2380, metadata !DIExpression()), !dbg !2446
  %4 = load i32, ptr %1, align 8, !dbg !2448, !tbaa !1353
  %5 = and i32 %4, 16, !dbg !2449
  %6 = icmp eq i32 %5, 0, !dbg !2449
  br i1 %6, label %7, label %62, !dbg !2450

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2451
  %9 = load ptr, ptr %8, align 8, !dbg !2451, !tbaa !1385
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2370, metadata !DIExpression()), !dbg !2445
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2371, metadata !DIExpression()), !dbg !2445
  %10 = load i64, ptr %0, align 8, !dbg !2452, !tbaa !2393
  %11 = getelementptr inbounds i8, ptr %9, i64 %10, !dbg !2453
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !2372, metadata !DIExpression()), !dbg !2445
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %13 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %14 = zext i8 %2 to i32
  br label %15, !dbg !2454

15:                                               ; preds = %48, %7
  %16 = phi ptr [ %9, %7 ], [ %49, %48 ], !dbg !2445
  %17 = phi ptr [ %9, %7 ], [ %53, %48 ], !dbg !2445
  %18 = phi ptr [ %11, %7 ], [ %51, %48 ], !dbg !2445
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !2372, metadata !DIExpression()), !dbg !2445
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !2371, metadata !DIExpression()), !dbg !2445
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !2370, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata ptr %1, metadata !2396, metadata !DIExpression()), !dbg !2455
  %19 = load ptr, ptr %12, align 8, !dbg !2457, !tbaa !2231
  %20 = load ptr, ptr %13, align 8, !dbg !2457, !tbaa !2229
  %21 = icmp ult ptr %19, %20, !dbg !2457
  br i1 %21, label %22, label %26, !dbg !2457, !prof !1768

22:                                               ; preds = %15
  %23 = getelementptr inbounds i8, ptr %19, i64 1, !dbg !2457
  store ptr %23, ptr %12, align 8, !dbg !2457, !tbaa !2231
  %24 = load i8, ptr %19, align 1, !dbg !2457, !tbaa !1029
  %25 = zext i8 %24 to i32, !dbg !2457
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !2373, metadata !DIExpression()), !dbg !2445
  br label %39, !dbg !2458

26:                                               ; preds = %15
  %27 = tail call i32 @__uflow(ptr noundef nonnull %1) #42, !dbg !2457
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !2373, metadata !DIExpression()), !dbg !2445
  %28 = icmp eq i32 %27, -1, !dbg !2459
  br i1 %28, label %29, label %39, !dbg !2458

29:                                               ; preds = %26
  %30 = icmp eq ptr %17, %16, !dbg !2460
  br i1 %30, label %.loopexit, label %31, !dbg !2461

31:                                               ; preds = %29
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2409, metadata !DIExpression()), !dbg !2462
  %32 = load i32, ptr %1, align 8, !dbg !2464, !tbaa !1353
  %33 = and i32 %32, 32, !dbg !2465
  %34 = icmp eq i32 %33, 0, !dbg !2465
  br i1 %34, label %35, label %.loopexit, !dbg !2466

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %17, i64 -1, !dbg !2467
  %37 = load i8, ptr %36, align 1, !dbg !2467, !tbaa !1029
  %38 = icmp eq i8 %37, %2, !dbg !2468
  br i1 %38, label %55, label %39, !dbg !2469

39:                                               ; preds = %35, %22, %26
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ %14, %35 ], !dbg !2470
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !2373, metadata !DIExpression()), !dbg !2445
  %41 = icmp eq ptr %17, %18, !dbg !2471
  br i1 %41, label %42, label %48, !dbg !2472

42:                                               ; preds = %39
  %43 = load i64, ptr %0, align 8, !dbg !2473, !tbaa !2393
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !2374, metadata !DIExpression()), !dbg !2474
  %44 = tail call nonnull ptr @xpalloc(ptr noundef %16, ptr noundef nonnull %0, i64 noundef 1, i64 noundef -1, i64 noundef 1) #42, !dbg !2475
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !2370, metadata !DIExpression()), !dbg !2445
  %45 = getelementptr inbounds i8, ptr %44, i64 %43, !dbg !2476
  tail call void @llvm.dbg.value(metadata ptr %45, metadata !2371, metadata !DIExpression()), !dbg !2445
  store ptr %44, ptr %8, align 8, !dbg !2477, !tbaa !1385
  %46 = load i64, ptr %0, align 8, !dbg !2478, !tbaa !2393
  %47 = getelementptr inbounds i8, ptr %44, i64 %46, !dbg !2479
  tail call void @llvm.dbg.value(metadata ptr %47, metadata !2372, metadata !DIExpression()), !dbg !2445
  br label %48, !dbg !2480

48:                                               ; preds = %42, %39
  %49 = phi ptr [ %44, %42 ], [ %16, %39 ], !dbg !2445
  %50 = phi ptr [ %45, %42 ], [ %17, %39 ], !dbg !2445
  %51 = phi ptr [ %47, %42 ], [ %18, %39 ], !dbg !2445
  tail call void @llvm.dbg.value(metadata ptr %51, metadata !2372, metadata !DIExpression()), !dbg !2445
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !2371, metadata !DIExpression()), !dbg !2445
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !2370, metadata !DIExpression()), !dbg !2445
  %52 = trunc i32 %40 to i8, !dbg !2481
  %53 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !2482
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !2371, metadata !DIExpression()), !dbg !2445
  store i8 %52, ptr %50, align 1, !dbg !2483, !tbaa !1029
  %54 = icmp eq i32 %40, %14, !dbg !2484
  br i1 %54, label %55, label %15, !dbg !2485, !llvm.loop !2486

55:                                               ; preds = %35, %48
  %56 = phi ptr [ %16, %35 ], [ %49, %48 ], !dbg !2445
  %57 = phi ptr [ %17, %35 ], [ %53, %48 ], !dbg !2445
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !2371, metadata !DIExpression()), !dbg !2445
  tail call void @llvm.dbg.value(metadata ptr %56, metadata !2370, metadata !DIExpression()), !dbg !2445
  %58 = ptrtoint ptr %57 to i64, !dbg !2488
  %59 = ptrtoint ptr %56 to i64, !dbg !2488
  %60 = sub i64 %58, %59, !dbg !2488
  %61 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !2489
  store i64 %60, ptr %61, align 8, !dbg !2490, !tbaa !1388
  br label %62, !dbg !2491

.loopexit:                                        ; preds = %29, %31
  br label %62, !dbg !2492

62:                                               ; preds = %.loopexit, %55, %3
  %63 = phi ptr [ null, %3 ], [ %0, %55 ], [ null, %.loopexit ], !dbg !2445
  ret ptr %63, !dbg !2492
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @freebuffer(ptr nocapture noundef readonly %0) local_unnamed_addr #22 !dbg !2493 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2495, metadata !DIExpression()), !dbg !2496
  %2 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2497
  %3 = load ptr, ptr %2, align 8, !dbg !2497, !tbaa !1385
  tail call void @free(ptr noundef %3) #42, !dbg !2498
  ret void, !dbg !2499
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2500 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @memcmp2(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #24 !dbg !2503 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2507, metadata !DIExpression()), !dbg !2512
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2508, metadata !DIExpression()), !dbg !2512
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2509, metadata !DIExpression()), !dbg !2512
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2510, metadata !DIExpression()), !dbg !2512
  %5 = tail call i64 @llvm.umin.i64(i64 %1, i64 %3), !dbg !2513
  %6 = tail call i32 @memcmp(ptr noundef %0, ptr noundef %2, i64 noundef %5) #43, !dbg !2514
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2511, metadata !DIExpression()), !dbg !2512
  %7 = icmp eq i32 %6, 0, !dbg !2515
  br i1 %7, label %8, label %14, !dbg !2517

8:                                                ; preds = %4
  %9 = icmp ugt i64 %1, %3, !dbg !2518
  %10 = zext i1 %9 to i32, !dbg !2518
  %11 = icmp ult i64 %1, %3, !dbg !2518
  %12 = sext i1 %11 to i32, !dbg !2518
  %13 = add nsw i32 %12, %10, !dbg !2518
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2511, metadata !DIExpression()), !dbg !2512
  br label %14, !dbg !2519

14:                                               ; preds = %8, %4
  %15 = phi i32 [ %13, %8 ], [ %6, %4 ], !dbg !2512
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !2511, metadata !DIExpression()), !dbg !2512
  ret i32 %15, !dbg !2520
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #25 !dbg !2521 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2523, metadata !DIExpression()), !dbg !2526
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #43, !dbg !2527
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2524, metadata !DIExpression()), !dbg !2526
  %3 = icmp eq ptr %2, null, !dbg !2528
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2528
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2528
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2525, metadata !DIExpression()), !dbg !2526
  %6 = ptrtoint ptr %5 to i64, !dbg !2529
  %7 = ptrtoint ptr %0 to i64, !dbg !2529
  %8 = sub i64 %6, %7, !dbg !2529
  %9 = icmp sgt i64 %8, 6, !dbg !2531
  br i1 %9, label %10, label %19, !dbg !2532

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2533
  call void @llvm.dbg.value(metadata ptr %11, metadata !2534, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !2539, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 7, metadata !2540, metadata !DIExpression()), !dbg !2541
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.92, i64 7), !dbg !2543
  %13 = icmp eq i32 %12, 0, !dbg !2544
  br i1 %13, label %14, label %19, !dbg !2545

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2523, metadata !DIExpression()), !dbg !2526
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.93, i64 noundef 3) #43, !dbg !2546
  %16 = icmp eq i32 %15, 0, !dbg !2549
  %17 = select i1 %16, i64 3, i64 0, !dbg !2550
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2550
  br label %19, !dbg !2550

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2526
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2525, metadata !DIExpression()), !dbg !2526
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2523, metadata !DIExpression()), !dbg !2526
  store ptr %20, ptr @program_name, align 8, !dbg !2551, !tbaa !948
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2552, !tbaa !948
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2553, !tbaa !948
  ret void, !dbg !2554
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2555 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #11 !dbg !567 {
  %3 = alloca i32, align 4, !DIAssignID !2556
  call void @llvm.dbg.assign(metadata i1 undef, metadata !577, metadata !DIExpression(), metadata !2556, metadata ptr %3, metadata !DIExpression()), !dbg !2557
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2558
  call void @llvm.dbg.assign(metadata i1 undef, metadata !582, metadata !DIExpression(), metadata !2558, metadata ptr %4, metadata !DIExpression()), !dbg !2557
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !574, metadata !DIExpression()), !dbg !2557
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !575, metadata !DIExpression()), !dbg !2557
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #42, !dbg !2559
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !576, metadata !DIExpression()), !dbg !2557
  %6 = icmp eq ptr %5, %0, !dbg !2560
  br i1 %6, label %7, label %14, !dbg !2562

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #42, !dbg !2563
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #42, !dbg !2564
  call void @llvm.dbg.value(metadata ptr %4, metadata !2565, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata ptr %4, metadata !2574, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 0, metadata !2577, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 8, metadata !2578, metadata !DIExpression()), !dbg !2579
  store i64 0, ptr %4, align 8, !dbg !2581
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #42, !dbg !2582
  %9 = icmp eq i64 %8, 2, !dbg !2584
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2585
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2557
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #42, !dbg !2586
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #42, !dbg !2586
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2557
  ret ptr %15, !dbg !2586
}

; Function Attrs: nounwind
declare !dbg !2587 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #11 !dbg !2593 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2598, metadata !DIExpression()), !dbg !2601
  %2 = tail call ptr @__errno_location() #45, !dbg !2602
  %3 = load i32, ptr %2, align 4, !dbg !2602, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2599, metadata !DIExpression()), !dbg !2601
  %4 = icmp eq ptr %0, null, !dbg !2603
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2603
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #48, !dbg !2604
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2600, metadata !DIExpression()), !dbg !2601
  store i32 %3, ptr %2, align 4, !dbg !2605, !tbaa !1020
  ret ptr %6, !dbg !2606
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #26 !dbg !2607 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2613, metadata !DIExpression()), !dbg !2614
  %2 = icmp eq ptr %0, null, !dbg !2615
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2615
  %4 = load i32, ptr %3, align 8, !dbg !2616, !tbaa !2617
  ret i32 %4, !dbg !2619
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #27 !dbg !2620 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2624, metadata !DIExpression()), !dbg !2626
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2625, metadata !DIExpression()), !dbg !2626
  %3 = icmp eq ptr %0, null, !dbg !2627
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2627
  store i32 %1, ptr %4, align 8, !dbg !2628, !tbaa !2617
  ret void, !dbg !2629
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #28 !dbg !2630 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2634, metadata !DIExpression()), !dbg !2642
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2635, metadata !DIExpression()), !dbg !2642
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2636, metadata !DIExpression()), !dbg !2642
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2637, metadata !DIExpression()), !dbg !2642
  %4 = icmp eq ptr %0, null, !dbg !2643
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2643
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2644
  %7 = lshr i8 %1, 5, !dbg !2645
  %8 = zext nneg i8 %7 to i64, !dbg !2645
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2646
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2638, metadata !DIExpression()), !dbg !2642
  %10 = and i8 %1, 31, !dbg !2647
  %11 = zext nneg i8 %10 to i32, !dbg !2647
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2640, metadata !DIExpression()), !dbg !2642
  %12 = load i32, ptr %9, align 4, !dbg !2648, !tbaa !1020
  %13 = lshr i32 %12, %11, !dbg !2649
  %14 = and i32 %13, 1, !dbg !2650
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2641, metadata !DIExpression()), !dbg !2642
  %15 = xor i32 %13, %2, !dbg !2651
  %16 = and i32 %15, 1, !dbg !2651
  %17 = shl nuw i32 %16, %11, !dbg !2652
  %18 = xor i32 %17, %12, !dbg !2653
  store i32 %18, ptr %9, align 4, !dbg !2653, !tbaa !1020
  ret i32 %14, !dbg !2654
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #28 !dbg !2655 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2659, metadata !DIExpression()), !dbg !2662
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2660, metadata !DIExpression()), !dbg !2662
  %3 = icmp eq ptr %0, null, !dbg !2663
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2665
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2659, metadata !DIExpression()), !dbg !2662
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2666
  %6 = load i32, ptr %5, align 4, !dbg !2666, !tbaa !2667
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2661, metadata !DIExpression()), !dbg !2662
  store i32 %1, ptr %5, align 4, !dbg !2668, !tbaa !2667
  ret i32 %6, !dbg !2669
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2670 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2674, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2675, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2676, metadata !DIExpression()), !dbg !2677
  %4 = icmp eq ptr %0, null, !dbg !2678
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2680
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2674, metadata !DIExpression()), !dbg !2677
  store i32 10, ptr %5, align 8, !dbg !2681, !tbaa !2617
  %6 = icmp ne ptr %1, null, !dbg !2682
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2684
  br i1 %8, label %10, label %9, !dbg !2684

9:                                                ; preds = %3
  tail call void @abort() #44, !dbg !2685
  unreachable, !dbg !2685

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2686
  store ptr %1, ptr %11, align 8, !dbg !2687, !tbaa !2688
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2689
  store ptr %2, ptr %12, align 8, !dbg !2690, !tbaa !2691
  ret void, !dbg !2692
}

; Function Attrs: noreturn nounwind
declare !dbg !2693 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #11 !dbg !2694 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2698, metadata !DIExpression()), !dbg !2706
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2699, metadata !DIExpression()), !dbg !2706
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2700, metadata !DIExpression()), !dbg !2706
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2701, metadata !DIExpression()), !dbg !2706
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2702, metadata !DIExpression()), !dbg !2706
  %6 = icmp eq ptr %4, null, !dbg !2707
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2707
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2703, metadata !DIExpression()), !dbg !2706
  %8 = tail call ptr @__errno_location() #45, !dbg !2708
  %9 = load i32, ptr %8, align 4, !dbg !2708, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2704, metadata !DIExpression()), !dbg !2706
  %10 = load i32, ptr %7, align 8, !dbg !2709, !tbaa !2617
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2710
  %12 = load i32, ptr %11, align 4, !dbg !2710, !tbaa !2667
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2711
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2712
  %15 = load ptr, ptr %14, align 8, !dbg !2712, !tbaa !2688
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2713
  %17 = load ptr, ptr %16, align 8, !dbg !2713, !tbaa !2691
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2714
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2705, metadata !DIExpression()), !dbg !2706
  store i32 %9, ptr %8, align 4, !dbg !2715, !tbaa !1020
  ret i64 %18, !dbg !2716
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #11 !dbg !2717 {
  %10 = alloca i32, align 4, !DIAssignID !2785
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2786
  %12 = alloca i32, align 4, !DIAssignID !2787
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2788
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2789
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2763, metadata !DIExpression(), metadata !2789, metadata ptr %14, metadata !DIExpression()), !dbg !2790
  %15 = alloca i32, align 4, !DIAssignID !2791
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2766, metadata !DIExpression(), metadata !2791, metadata ptr %15, metadata !DIExpression()), !dbg !2792
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2723, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2724, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2725, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2726, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2727, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2728, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2729, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2730, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2731, metadata !DIExpression()), !dbg !2793
  %16 = tail call i64 @__ctype_get_mb_cur_max() #42, !dbg !2794
  %17 = icmp eq i64 %16, 1, !dbg !2795
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2732, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2733, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2734, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2735, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2736, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2737, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2738, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2739, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2740, metadata !DIExpression()), !dbg !2793
  %18 = and i32 %5, 2, !dbg !2796
  %19 = icmp ne i32 %18, 0, !dbg !2796
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2796

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2797
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2798
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2799
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2724, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2740, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2739, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2737, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2736, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2735, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2734, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2733, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2726, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2731, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !2730, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2727, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.label(metadata !2741), !dbg !2800
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2742, metadata !DIExpression()), !dbg !2793
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
  ], !dbg !2801

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2727, metadata !DIExpression()), !dbg !2793
  br label %101, !dbg !2802

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2727, metadata !DIExpression()), !dbg !2793
  br i1 %36, label %101, label %42, !dbg !2802

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2803
  br i1 %43, label %101, label %44, !dbg !2807

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2803, !tbaa !1029
  br label %101, !dbg !2803

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !671, metadata !DIExpression(), metadata !2787, metadata ptr %12, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.assign(metadata i1 undef, metadata !672, metadata !DIExpression(), metadata !2788, metadata ptr %13, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata ptr @.str.11.106, metadata !668, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i32 %28, metadata !669, metadata !DIExpression()), !dbg !2808
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.107, ptr noundef nonnull @.str.11.106, i32 noundef 5) #42, !dbg !2812
  call void @llvm.dbg.value(metadata ptr %46, metadata !670, metadata !DIExpression()), !dbg !2808
  %47 = icmp eq ptr %46, @.str.11.106, !dbg !2813
  br i1 %47, label %48, label %57, !dbg !2815

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #42, !dbg !2816
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #42, !dbg !2817
  call void @llvm.dbg.value(metadata ptr %13, metadata !2818, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata ptr %13, metadata !2826, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i32 0, metadata !2829, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i64 8, metadata !2830, metadata !DIExpression()), !dbg !2831
  store i64 0, ptr %13, align 8, !dbg !2833
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #42, !dbg !2834
  %50 = icmp eq i64 %49, 3, !dbg !2836
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2837
  %54 = icmp eq i32 %28, 9, !dbg !2837
  %55 = select i1 %54, ptr @.str.10.108, ptr @.str.12.109, !dbg !2837
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2837
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #42, !dbg !2838
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #42, !dbg !2838
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2808
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !2730, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.assign(metadata i1 undef, metadata !671, metadata !DIExpression(), metadata !2785, metadata ptr %10, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.assign(metadata i1 undef, metadata !672, metadata !DIExpression(), metadata !2786, metadata ptr %11, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata ptr @.str.12.109, metadata !668, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i32 %28, metadata !669, metadata !DIExpression()), !dbg !2839
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.107, ptr noundef nonnull @.str.12.109, i32 noundef 5) #42, !dbg !2841
  call void @llvm.dbg.value(metadata ptr %59, metadata !670, metadata !DIExpression()), !dbg !2839
  %60 = icmp eq ptr %59, @.str.12.109, !dbg !2842
  br i1 %60, label %61, label %70, !dbg !2843

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #42, !dbg !2844
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #42, !dbg !2845
  call void @llvm.dbg.value(metadata ptr %11, metadata !2818, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata ptr %11, metadata !2826, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i32 0, metadata !2829, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 8, metadata !2830, metadata !DIExpression()), !dbg !2848
  store i64 0, ptr %11, align 8, !dbg !2850
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #42, !dbg !2851
  %63 = icmp eq i64 %62, 3, !dbg !2852
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2853
  %67 = icmp eq i32 %28, 9, !dbg !2853
  %68 = select i1 %67, ptr @.str.10.108, ptr @.str.12.109, !dbg !2853
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2853
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #42, !dbg !2854
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #42, !dbg !2854
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2731, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2730, metadata !DIExpression()), !dbg !2793
  br i1 %36, label %88, label %73, !dbg !2855

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2743, metadata !DIExpression()), !dbg !2856
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2733, metadata !DIExpression()), !dbg !2793
  %74 = load i8, ptr %71, align 1, !dbg !2857, !tbaa !1029
  %75 = icmp eq i8 %74, 0, !dbg !2859
  br i1 %75, label %88, label %.preheader11, !dbg !2859

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2859

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2743, metadata !DIExpression()), !dbg !2856
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2733, metadata !DIExpression()), !dbg !2793
  %80 = icmp ult i64 %79, %39, !dbg !2860
  br i1 %80, label %81, label %83, !dbg !2863

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2860
  store i8 %77, ptr %82, align 1, !dbg !2860, !tbaa !1029
  br label %83, !dbg !2860

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2863
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2733, metadata !DIExpression()), !dbg !2793
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2864
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2743, metadata !DIExpression()), !dbg !2856
  %86 = load i8, ptr %85, align 1, !dbg !2857, !tbaa !1029
  %87 = icmp eq i8 %86, 0, !dbg !2859
  br i1 %87, label %.loopexit12, label %76, !dbg !2859, !llvm.loop !2865

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2863
  br label %88, !dbg !2867

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2868
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2733, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2737, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2735, metadata !DIExpression()), !dbg !2793
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #43, !dbg !2867
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2736, metadata !DIExpression()), !dbg !2793
  br label %101, !dbg !2869

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2737, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2738, metadata !DIExpression()), !dbg !2793
  br label %101, !dbg !2870

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2737, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2727, metadata !DIExpression()), !dbg !2793
  br label %101, !dbg !2871

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2737, metadata !DIExpression()), !dbg !2793
  br i1 %36, label %101, label %95, !dbg !2872

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2737, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2727, metadata !DIExpression()), !dbg !2793
  br i1 %36, label %101, label %95, !dbg !2871

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2873
  br i1 %97, label %101, label %98, !dbg !2877

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2873, !tbaa !1029
  br label %101, !dbg !2873

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2738, metadata !DIExpression()), !dbg !2793
  br label %101, !dbg !2878

100:                                              ; preds = %27
  call void @abort() #44, !dbg !2879
  unreachable, !dbg !2879

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2868
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.108, %42 ], [ @.str.10.108, %44 ], [ @.str.10.108, %41 ], [ %33, %27 ], [ @.str.12.109, %95 ], [ @.str.12.109, %98 ], [ @.str.12.109, %94 ], [ @.str.10.108, %40 ], [ @.str.12.109, %91 ], [ @.str.12.109, %92 ], [ @.str.12.109, %93 ], !dbg !2793
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2793
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2738, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2737, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2736, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2735, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !2733, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !2731, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !2730, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2727, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2748, metadata !DIExpression()), !dbg !2880
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
  br label %121, !dbg !2881

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2868
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2797
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2882
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !2724, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2748, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2742, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2740, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2739, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !2734, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !2733, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2726, metadata !DIExpression()), !dbg !2793
  %130 = icmp eq i64 %122, -1, !dbg !2883
  br i1 %130, label %131, label %135, !dbg !2884

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2885
  %133 = load i8, ptr %132, align 1, !dbg !2885, !tbaa !1029
  %134 = icmp eq i8 %133, 0, !dbg !2886
  br i1 %134, label %573, label %137, !dbg !2887

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2888
  br i1 %136, label %573, label %137, !dbg !2887

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2750, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2753, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2754, metadata !DIExpression()), !dbg !2889
  br i1 %113, label %138, label %151, !dbg !2890

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2892
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2893
  br i1 %140, label %141, label %143, !dbg !2893

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !2894
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2726, metadata !DIExpression()), !dbg !2793
  br label %143, !dbg !2895

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2895
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !2726, metadata !DIExpression()), !dbg !2793
  %145 = icmp ugt i64 %139, %144, !dbg !2896
  br i1 %145, label %151, label %146, !dbg !2897

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2898
  call void @llvm.dbg.value(metadata ptr %147, metadata !2899, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata ptr %106, metadata !2902, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i64 %107, metadata !2903, metadata !DIExpression()), !dbg !2904
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2906
  %149 = icmp eq i32 %148, 0, !dbg !2907
  %150 = and i1 %149, %109, !dbg !2908
  br i1 %150, label %.loopexit7, label %151, !dbg !2908

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2750, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2726, metadata !DIExpression()), !dbg !2793
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2909
  %155 = load i8, ptr %154, align 1, !dbg !2909, !tbaa !1029
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2755, metadata !DIExpression()), !dbg !2889
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
  ], !dbg !2910

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2911

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2912

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2753, metadata !DIExpression()), !dbg !2889
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2916
  br i1 %159, label %176, label %160, !dbg !2916

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2918
  br i1 %161, label %162, label %164, !dbg !2922

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2918
  store i8 39, ptr %163, align 1, !dbg !2918, !tbaa !1029
  br label %164, !dbg !2918

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !2733, metadata !DIExpression()), !dbg !2793
  %166 = icmp ult i64 %165, %129, !dbg !2923
  br i1 %166, label %167, label %169, !dbg !2926

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2923
  store i8 36, ptr %168, align 1, !dbg !2923, !tbaa !1029
  br label %169, !dbg !2923

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2733, metadata !DIExpression()), !dbg !2793
  %171 = icmp ult i64 %170, %129, !dbg !2927
  br i1 %171, label %172, label %174, !dbg !2930

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2927
  store i8 39, ptr %173, align 1, !dbg !2927, !tbaa !1029
  br label %174, !dbg !2927

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2930
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2733, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2742, metadata !DIExpression()), !dbg !2793
  br label %176, !dbg !2931

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2793
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2742, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !2733, metadata !DIExpression()), !dbg !2793
  %179 = icmp ult i64 %177, %129, !dbg !2932
  br i1 %179, label %180, label %182, !dbg !2935

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2932
  store i8 92, ptr %181, align 1, !dbg !2932, !tbaa !1029
  br label %182, !dbg !2932

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2733, metadata !DIExpression()), !dbg !2793
  br i1 %110, label %184, label %476, !dbg !2936

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2938
  %186 = icmp ult i64 %185, %152, !dbg !2939
  br i1 %186, label %187, label %433, !dbg !2940

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2941
  %189 = load i8, ptr %188, align 1, !dbg !2941, !tbaa !1029
  %190 = add i8 %189, -48, !dbg !2942
  %191 = icmp ult i8 %190, 10, !dbg !2942
  br i1 %191, label %192, label %433, !dbg !2942

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2943
  br i1 %193, label %194, label %196, !dbg !2947

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2943
  store i8 48, ptr %195, align 1, !dbg !2943, !tbaa !1029
  br label %196, !dbg !2943

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2947
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2733, metadata !DIExpression()), !dbg !2793
  %198 = icmp ult i64 %197, %129, !dbg !2948
  br i1 %198, label %199, label %201, !dbg !2951

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2948
  store i8 48, ptr %200, align 1, !dbg !2948, !tbaa !1029
  br label %201, !dbg !2948

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2951
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !2733, metadata !DIExpression()), !dbg !2793
  br label %433, !dbg !2952

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2953

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2954

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2955

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2957

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2959
  %209 = icmp ult i64 %208, %152, !dbg !2960
  br i1 %209, label %210, label %433, !dbg !2961

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2962
  %212 = load i8, ptr %211, align 1, !dbg !2962, !tbaa !1029
  %213 = icmp eq i8 %212, 63, !dbg !2963
  br i1 %213, label %214, label %433, !dbg !2964

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2965
  %216 = load i8, ptr %215, align 1, !dbg !2965, !tbaa !1029
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
  ], !dbg !2966

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2967

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2755, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2748, metadata !DIExpression()), !dbg !2880
  %219 = icmp ult i64 %123, %129, !dbg !2969
  br i1 %219, label %220, label %222, !dbg !2972

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2969
  store i8 63, ptr %221, align 1, !dbg !2969, !tbaa !1029
  br label %222, !dbg !2969

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2972
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !2733, metadata !DIExpression()), !dbg !2793
  %224 = icmp ult i64 %223, %129, !dbg !2973
  br i1 %224, label %225, label %227, !dbg !2976

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2973
  store i8 34, ptr %226, align 1, !dbg !2973, !tbaa !1029
  br label %227, !dbg !2973

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2976
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !2733, metadata !DIExpression()), !dbg !2793
  %229 = icmp ult i64 %228, %129, !dbg !2977
  br i1 %229, label %230, label %232, !dbg !2980

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2977
  store i8 34, ptr %231, align 1, !dbg !2977, !tbaa !1029
  br label %232, !dbg !2977

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2980
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !2733, metadata !DIExpression()), !dbg !2793
  %234 = icmp ult i64 %233, %129, !dbg !2981
  br i1 %234, label %235, label %237, !dbg !2984

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2981
  store i8 63, ptr %236, align 1, !dbg !2981, !tbaa !1029
  br label %237, !dbg !2981

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2984
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !2733, metadata !DIExpression()), !dbg !2793
  br label %433, !dbg !2985

239:                                              ; preds = %151
  br label %249, !dbg !2986

240:                                              ; preds = %151
  br label %249, !dbg !2987

241:                                              ; preds = %151
  br label %247, !dbg !2988

242:                                              ; preds = %151
  br label %247, !dbg !2989

243:                                              ; preds = %151
  br label %249, !dbg !2990

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2991

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2992

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2995

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2997
  call void @llvm.dbg.label(metadata !2756), !dbg !2998
  br i1 %118, label %.loopexit8, label %249, !dbg !2999

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2997
  call void @llvm.dbg.label(metadata !2759), !dbg !3001
  br i1 %108, label %487, label %444, !dbg !3002

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !3003

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !3004, !tbaa !1029
  %254 = icmp eq i8 %253, 0, !dbg !3006
  br i1 %254, label %255, label %433, !dbg !3007

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !3008
  br i1 %256, label %257, label %433, !dbg !3010

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2754, metadata !DIExpression()), !dbg !2889
  br label %258, !dbg !3011

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2754, metadata !DIExpression()), !dbg !2889
  br i1 %115, label %260, label %433, !dbg !3012

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !3014

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2739, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2754, metadata !DIExpression()), !dbg !2889
  br i1 %115, label %262, label %433, !dbg !3015

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !3016

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !3019
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !3021
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !3021
  %268 = select i1 %266, i64 %129, i64 0, !dbg !3021
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !2724, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !2734, metadata !DIExpression()), !dbg !2793
  %269 = icmp ult i64 %123, %268, !dbg !3022
  br i1 %269, label %270, label %272, !dbg !3025

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3022
  store i8 39, ptr %271, align 1, !dbg !3022, !tbaa !1029
  br label %272, !dbg !3022

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !3025
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !2733, metadata !DIExpression()), !dbg !2793
  %274 = icmp ult i64 %273, %268, !dbg !3026
  br i1 %274, label %275, label %277, !dbg !3029

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !3026
  store i8 92, ptr %276, align 1, !dbg !3026, !tbaa !1029
  br label %277, !dbg !3026

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !3029
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !2733, metadata !DIExpression()), !dbg !2793
  %279 = icmp ult i64 %278, %268, !dbg !3030
  br i1 %279, label %280, label %282, !dbg !3033

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !3030
  store i8 39, ptr %281, align 1, !dbg !3030, !tbaa !1029
  br label %282, !dbg !3030

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !3033
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !2733, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2742, metadata !DIExpression()), !dbg !2793
  br label %433, !dbg !3034

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !3035

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2760, metadata !DIExpression()), !dbg !3036
  %286 = tail call ptr @__ctype_b_loc() #45, !dbg !3037
  %287 = load ptr, ptr %286, align 8, !dbg !3037, !tbaa !948
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !3037
  %290 = load i16, ptr %289, align 2, !dbg !3037, !tbaa !1061
  %291 = and i16 %290, 16384, !dbg !3037
  %292 = icmp ne i16 %291, 0, !dbg !3039
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2762, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3036
  br label %334, !dbg !3040

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #42, !dbg !3041
  call void @llvm.dbg.value(metadata ptr %14, metadata !2818, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata ptr %14, metadata !2826, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 0, metadata !2829, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 8, metadata !2830, metadata !DIExpression()), !dbg !3044
  store i64 0, ptr %14, align 8, !dbg !3046
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2760, metadata !DIExpression()), !dbg !3036
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2762, metadata !DIExpression()), !dbg !3036
  %294 = icmp eq i64 %152, -1, !dbg !3047
  br i1 %294, label %295, label %297, !dbg !3049

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !3050
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !2726, metadata !DIExpression()), !dbg !2793
  br label %297, !dbg !3051

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !2726, metadata !DIExpression()), !dbg !2793
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #42, !dbg !3052
  %299 = sub i64 %298, %128, !dbg !3053
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #42, !dbg !3054
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2770, metadata !DIExpression()), !dbg !2792
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !3055

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2760, metadata !DIExpression()), !dbg !3036
  %302 = icmp ult i64 %128, %298, !dbg !3056
  br i1 %302, label %.preheader5, label %329, !dbg !3058

.preheader5:                                      ; preds = %301
  br label %304, !dbg !3059

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2762, metadata !DIExpression()), !dbg !3036
  br label %329, !dbg !3060

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2760, metadata !DIExpression()), !dbg !3036
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !3062
  %308 = load i8, ptr %307, align 1, !dbg !3062, !tbaa !1029
  %309 = icmp eq i8 %308, 0, !dbg !3058
  br i1 %309, label %.loopexit6, label %310, !dbg !3059

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2760, metadata !DIExpression()), !dbg !3036
  %312 = add i64 %311, %128, !dbg !3064
  %313 = icmp eq i64 %311, %299, !dbg !3056
  br i1 %313, label %.loopexit6, label %304, !dbg !3058, !llvm.loop !3065

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2771, metadata !DIExpression()), !dbg !3066
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !3067
  %317 = and i1 %316, %109, !dbg !3067
  br i1 %317, label %.preheader3, label %325, !dbg !3067

.preheader3:                                      ; preds = %314
  br label %318, !dbg !3068

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2771, metadata !DIExpression()), !dbg !3066
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !3069
  %321 = load i8, ptr %320, align 1, !dbg !3069, !tbaa !1029
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !3071

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2771, metadata !DIExpression()), !dbg !3066
  %324 = icmp eq i64 %323, %300, !dbg !3073
  br i1 %324, label %.loopexit4, label %318, !dbg !3068, !llvm.loop !3074

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !3076

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !3076, !tbaa !1020
  call void @llvm.dbg.value(metadata i32 %326, metadata !3078, metadata !DIExpression()), !dbg !3086
  %327 = call i32 @iswprint(i32 noundef %326) #42, !dbg !3088
  %328 = icmp ne i32 %327, 0, !dbg !3089
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2762, metadata !DIExpression()), !dbg !3036
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2760, metadata !DIExpression()), !dbg !3036
  br label %329, !dbg !3090

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !3091

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2762, metadata !DIExpression()), !dbg !3036
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2760, metadata !DIExpression()), !dbg !3036
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #42, !dbg !3091
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #42, !dbg !3092
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2762, metadata !DIExpression()), !dbg !3036
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2760, metadata !DIExpression()), !dbg !3036
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #42, !dbg !3091
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #42, !dbg !3092
  call void @llvm.dbg.label(metadata !2784), !dbg !3093
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !3094
  br label %624, !dbg !3094

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2889
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !3096
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2762, metadata !DIExpression()), !dbg !3036
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2760, metadata !DIExpression()), !dbg !3036
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !2726, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2754, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2889
  %338 = icmp ult i64 %336, 2, !dbg !3097
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !3098
  br i1 %340, label %433, label %341, !dbg !3098

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !3099
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2779, metadata !DIExpression()), !dbg !3100
  br label %343, !dbg !3101

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2793
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2880
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2755, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2753, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2750, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2748, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2742, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !2733, metadata !DIExpression()), !dbg !2793
  br i1 %339, label %394, label %350, !dbg !3102

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !3107

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2753, metadata !DIExpression()), !dbg !2889
  %352 = select i1 %110, i1 true, i1 %345, !dbg !3110
  br i1 %352, label %369, label %353, !dbg !3110

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !3112
  br i1 %354, label %355, label %357, !dbg !3116

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3112
  store i8 39, ptr %356, align 1, !dbg !3112, !tbaa !1029
  br label %357, !dbg !3112

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !3116
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !2733, metadata !DIExpression()), !dbg !2793
  %359 = icmp ult i64 %358, %129, !dbg !3117
  br i1 %359, label %360, label %362, !dbg !3120

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !3117
  store i8 36, ptr %361, align 1, !dbg !3117, !tbaa !1029
  br label %362, !dbg !3117

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !3120
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2733, metadata !DIExpression()), !dbg !2793
  %364 = icmp ult i64 %363, %129, !dbg !3121
  br i1 %364, label %365, label %367, !dbg !3124

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !3121
  store i8 39, ptr %366, align 1, !dbg !3121, !tbaa !1029
  br label %367, !dbg !3121

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !2733, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2742, metadata !DIExpression()), !dbg !2793
  br label %369, !dbg !3125

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2793
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2742, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !2733, metadata !DIExpression()), !dbg !2793
  %372 = icmp ult i64 %370, %129, !dbg !3126
  br i1 %372, label %373, label %375, !dbg !3129

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !3126
  store i8 92, ptr %374, align 1, !dbg !3126, !tbaa !1029
  br label %375, !dbg !3126

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !2733, metadata !DIExpression()), !dbg !2793
  %377 = icmp ult i64 %376, %129, !dbg !3130
  br i1 %377, label %378, label %382, !dbg !3133

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !3130
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !3130
  store i8 %380, ptr %381, align 1, !dbg !3130, !tbaa !1029
  br label %382, !dbg !3130

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !3133
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !2733, metadata !DIExpression()), !dbg !2793
  %384 = icmp ult i64 %383, %129, !dbg !3134
  br i1 %384, label %385, label %390, !dbg !3137

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !3134
  %388 = or disjoint i8 %387, 48, !dbg !3134
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !3134
  store i8 %388, ptr %389, align 1, !dbg !3134, !tbaa !1029
  br label %390, !dbg !3134

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !3137
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2733, metadata !DIExpression()), !dbg !2793
  %392 = and i8 %349, 7, !dbg !3138
  %393 = or disjoint i8 %392, 48, !dbg !3139
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2755, metadata !DIExpression()), !dbg !2889
  br label %401, !dbg !3140

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !3141

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !3142
  br i1 %396, label %397, label %399, !dbg !3147

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3142
  store i8 92, ptr %398, align 1, !dbg !3142, !tbaa !1029
  br label %399, !dbg !3142

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !3147
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !2733, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2750, metadata !DIExpression()), !dbg !2889
  br label %401, !dbg !3148

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2793
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2755, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2753, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2750, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2742, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !2733, metadata !DIExpression()), !dbg !2793
  %407 = add i64 %346, 1, !dbg !3149
  %408 = icmp ugt i64 %342, %407, !dbg !3151
  br i1 %408, label %409, label %.loopexit2, !dbg !3152

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !3153
  %411 = select i1 %410, i1 true, i1 %405, !dbg !3153
  br i1 %411, label %423, label %412, !dbg !3153

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !3156
  br i1 %413, label %414, label %416, !dbg !3160

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !3156
  store i8 39, ptr %415, align 1, !dbg !3156, !tbaa !1029
  br label %416, !dbg !3156

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !3160
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !2733, metadata !DIExpression()), !dbg !2793
  %418 = icmp ult i64 %417, %129, !dbg !3161
  br i1 %418, label %419, label %421, !dbg !3164

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !3161
  store i8 39, ptr %420, align 1, !dbg !3161, !tbaa !1029
  br label %421, !dbg !3161

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !3164
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !2733, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2742, metadata !DIExpression()), !dbg !2793
  br label %423, !dbg !3165

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !3166
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2742, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !2733, metadata !DIExpression()), !dbg !2793
  %426 = icmp ult i64 %424, %129, !dbg !3167
  br i1 %426, label %427, label %429, !dbg !3170

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !3167
  store i8 %406, ptr %428, align 1, !dbg !3167, !tbaa !1029
  br label %429, !dbg !3167

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !2733, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2748, metadata !DIExpression()), !dbg !2880
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !3171
  %432 = load i8, ptr %431, align 1, !dbg !3171, !tbaa !1029
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2755, metadata !DIExpression()), !dbg !2889
  br label %343, !dbg !3172, !llvm.loop !3173

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !3176
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2793
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2797
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2880
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2889
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !2724, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2755, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2754, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2753, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2750, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2748, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2742, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2739, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !2734, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !2733, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !2726, metadata !DIExpression()), !dbg !2793
  br i1 %111, label %455, label %444, !dbg !3177

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
  br i1 %120, label %456, label %476, !dbg !3179

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !3180

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
  %467 = lshr i8 %458, 5, !dbg !3181
  %468 = zext nneg i8 %467 to i64, !dbg !3181
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !3182
  %470 = load i32, ptr %469, align 4, !dbg !3182, !tbaa !1020
  %471 = and i8 %458, 31, !dbg !3183
  %472 = zext nneg i8 %471 to i32, !dbg !3183
  %473 = shl nuw i32 1, %472, !dbg !3184
  %474 = and i32 %470, %473, !dbg !3184
  %475 = icmp eq i32 %474, 0, !dbg !3184
  br i1 %475, label %476, label %487, !dbg !3185

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
  br i1 %153, label %487, label %523, !dbg !3186

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !3176
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2793
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2797
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !3187
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2889
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2724, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2755, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2754, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2748, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2742, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2739, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2734, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !2733, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2726, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.label(metadata !2782), !dbg !3188
  br i1 %109, label %.loopexit8, label %497, !dbg !3189

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2753, metadata !DIExpression()), !dbg !2889
  %498 = select i1 %110, i1 true, i1 %492, !dbg !3191
  br i1 %498, label %515, label %499, !dbg !3191

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !3193
  br i1 %500, label %501, label %503, !dbg !3197

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !3193
  store i8 39, ptr %502, align 1, !dbg !3193, !tbaa !1029
  br label %503, !dbg !3193

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !2733, metadata !DIExpression()), !dbg !2793
  %505 = icmp ult i64 %504, %496, !dbg !3198
  br i1 %505, label %506, label %508, !dbg !3201

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !3198
  store i8 36, ptr %507, align 1, !dbg !3198, !tbaa !1029
  br label %508, !dbg !3198

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !2733, metadata !DIExpression()), !dbg !2793
  %510 = icmp ult i64 %509, %496, !dbg !3202
  br i1 %510, label %511, label %513, !dbg !3205

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !3202
  store i8 39, ptr %512, align 1, !dbg !3202, !tbaa !1029
  br label %513, !dbg !3202

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !2733, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2742, metadata !DIExpression()), !dbg !2793
  br label %515, !dbg !3206

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2889
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2742, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !2733, metadata !DIExpression()), !dbg !2793
  %518 = icmp ult i64 %516, %496, !dbg !3207
  br i1 %518, label %519, label %521, !dbg !3210

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !3207
  store i8 92, ptr %520, align 1, !dbg !3207, !tbaa !1029
  br label %521, !dbg !3207

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2724, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2755, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2754, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2753, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2748, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2742, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2739, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2734, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2733, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2726, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.label(metadata !2783), !dbg !3211
  br label %547, !dbg !3212

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2793
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2889
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2880
  br label %523, !dbg !3212

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !3176
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2793
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2797
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !3187
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !3215
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !2724, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2755, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2754, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2753, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2748, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2742, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2739, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2734, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !2733, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !2726, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.label(metadata !2783), !dbg !3211
  %534 = xor i1 %528, true, !dbg !3212
  %535 = select i1 %534, i1 true, i1 %530, !dbg !3212
  br i1 %535, label %547, label %536, !dbg !3212

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !3216
  br i1 %537, label %538, label %540, !dbg !3220

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !3216
  store i8 39, ptr %539, align 1, !dbg !3216, !tbaa !1029
  br label %540, !dbg !3216

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !2733, metadata !DIExpression()), !dbg !2793
  %542 = icmp ult i64 %541, %533, !dbg !3221
  br i1 %542, label %543, label %545, !dbg !3224

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !3221
  store i8 39, ptr %544, align 1, !dbg !3221, !tbaa !1029
  br label %545, !dbg !3221

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !3224
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !2733, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2742, metadata !DIExpression()), !dbg !2793
  br label %547, !dbg !3225

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2889
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2742, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !2733, metadata !DIExpression()), !dbg !2793
  %557 = icmp ult i64 %555, %548, !dbg !3226
  br i1 %557, label %558, label %560, !dbg !3229

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !3226
  store i8 %549, ptr %559, align 1, !dbg !3226, !tbaa !1029
  br label %560, !dbg !3226

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !3229
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2733, metadata !DIExpression()), !dbg !2793
  %562 = select i1 %550, i1 %126, i1 false, !dbg !3230
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2740, metadata !DIExpression()), !dbg !2793
  br label %563, !dbg !3231

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !3176
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2793
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2797
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !3187
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !2724, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2748, metadata !DIExpression()), !dbg !2880
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2742, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2740, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2739, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !2734, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !2733, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2726, metadata !DIExpression()), !dbg !2793
  %572 = add i64 %570, 1, !dbg !3232
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2748, metadata !DIExpression()), !dbg !2880
  br label %121, !dbg !3233, !llvm.loop !3234

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2868
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2797
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !2724, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2740, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2739, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !2734, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !2733, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !2726, metadata !DIExpression()), !dbg !2793
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !3236
  %575 = xor i1 %109, true, !dbg !3238
  %576 = or i1 %574, %575, !dbg !3238
  %577 = or i1 %576, %110, !dbg !3238
  br i1 %577, label %578, label %.loopexit13, !dbg !3238

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !3239
  %580 = xor i1 %.lcssa38, true, !dbg !3239
  %581 = select i1 %579, i1 true, i1 %580, !dbg !3239
  br i1 %581, label %589, label %582, !dbg !3239

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !3241

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2797
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !3243
  br label %638, !dbg !3245

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !3246
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !3248
  br i1 %588, label %27, label %589, !dbg !3248

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2793
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2868
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !3249
  %592 = or i1 %591, %590, !dbg !3251
  br i1 %592, label %608, label %593, !dbg !3251

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !2735, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !2733, metadata !DIExpression()), !dbg !2793
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !3252, !tbaa !1029
  %595 = icmp eq i8 %594, 0, !dbg !3255
  br i1 %595, label %608, label %.preheader, !dbg !3255

.preheader:                                       ; preds = %593
  br label %596, !dbg !3255

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !2735, metadata !DIExpression()), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2733, metadata !DIExpression()), !dbg !2793
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !3256
  br i1 %600, label %601, label %603, !dbg !3259

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !3256
  store i8 %597, ptr %602, align 1, !dbg !3256, !tbaa !1029
  br label %603, !dbg !3256

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !3259
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2733, metadata !DIExpression()), !dbg !2793
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !3260
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !2735, metadata !DIExpression()), !dbg !2793
  %606 = load i8, ptr %605, align 1, !dbg !3252, !tbaa !1029
  %607 = icmp eq i8 %606, 0, !dbg !3255
  br i1 %607, label %.loopexit, label %596, !dbg !3255, !llvm.loop !3261

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !3259
  br label %608, !dbg !3263

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2868
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2733, metadata !DIExpression()), !dbg !2793
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !3263
  br i1 %610, label %611, label %638, !dbg !3265

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !3266
  store i8 0, ptr %612, align 1, !dbg !3267, !tbaa !1029
  br label %638, !dbg !3266

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2784), !dbg !3093
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !3268
  br i1 %614, label %624, label %630, !dbg !3094

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2889
  br label %615, !dbg !3268

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !3268

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !3268

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2784), !dbg !3093
  %622 = icmp eq i32 %616, 2, !dbg !3268
  %623 = select i1 %619, i32 4, i32 2, !dbg !3094
  br i1 %622, label %624, label %630, !dbg !3094

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !3094

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2895
  br label %630, !dbg !3269

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !2727, metadata !DIExpression()), !dbg !2793
  %636 = and i32 %5, -3, !dbg !3269
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !3270
  br label %638, !dbg !3271

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !3272
}

; Function Attrs: nounwind
declare !dbg !3273 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3276 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !3278 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3282, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3283, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3284, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata ptr %0, metadata !3286, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %1, metadata !3291, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata ptr null, metadata !3292, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata ptr %2, metadata !3293, metadata !DIExpression()), !dbg !3299
  %4 = icmp eq ptr %2, null, !dbg !3301
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3301
  call void @llvm.dbg.value(metadata ptr %5, metadata !3294, metadata !DIExpression()), !dbg !3299
  %6 = tail call ptr @__errno_location() #45, !dbg !3302
  %7 = load i32, ptr %6, align 4, !dbg !3302, !tbaa !1020
  call void @llvm.dbg.value(metadata i32 %7, metadata !3295, metadata !DIExpression()), !dbg !3299
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3303
  %9 = load i32, ptr %8, align 4, !dbg !3303, !tbaa !2667
  %10 = or i32 %9, 1, !dbg !3304
  call void @llvm.dbg.value(metadata i32 %10, metadata !3296, metadata !DIExpression()), !dbg !3299
  %11 = load i32, ptr %5, align 8, !dbg !3305, !tbaa !2617
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3306
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3307
  %14 = load ptr, ptr %13, align 8, !dbg !3307, !tbaa !2688
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3308
  %16 = load ptr, ptr %15, align 8, !dbg !3308, !tbaa !2691
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3309
  %18 = add i64 %17, 1, !dbg !3310
  call void @llvm.dbg.value(metadata i64 %18, metadata !3297, metadata !DIExpression()), !dbg !3299
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #49, !dbg !3311
  call void @llvm.dbg.value(metadata ptr %19, metadata !3298, metadata !DIExpression()), !dbg !3299
  %20 = load i32, ptr %5, align 8, !dbg !3312, !tbaa !2617
  %21 = load ptr, ptr %13, align 8, !dbg !3313, !tbaa !2688
  %22 = load ptr, ptr %15, align 8, !dbg !3314, !tbaa !2691
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3315
  store i32 %7, ptr %6, align 4, !dbg !3316, !tbaa !1020
  ret ptr %19, !dbg !3317
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #11 !dbg !3287 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3286, metadata !DIExpression()), !dbg !3318
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3291, metadata !DIExpression()), !dbg !3318
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3292, metadata !DIExpression()), !dbg !3318
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3293, metadata !DIExpression()), !dbg !3318
  %5 = icmp eq ptr %3, null, !dbg !3319
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3319
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3294, metadata !DIExpression()), !dbg !3318
  %7 = tail call ptr @__errno_location() #45, !dbg !3320
  %8 = load i32, ptr %7, align 4, !dbg !3320, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3295, metadata !DIExpression()), !dbg !3318
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3321
  %10 = load i32, ptr %9, align 4, !dbg !3321, !tbaa !2667
  %11 = icmp eq ptr %2, null, !dbg !3322
  %12 = zext i1 %11 to i32, !dbg !3322
  %13 = or i32 %10, %12, !dbg !3323
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3296, metadata !DIExpression()), !dbg !3318
  %14 = load i32, ptr %6, align 8, !dbg !3324, !tbaa !2617
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3325
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3326
  %17 = load ptr, ptr %16, align 8, !dbg !3326, !tbaa !2688
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3327
  %19 = load ptr, ptr %18, align 8, !dbg !3327, !tbaa !2691
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3328
  %21 = add i64 %20, 1, !dbg !3329
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3297, metadata !DIExpression()), !dbg !3318
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #49, !dbg !3330
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3298, metadata !DIExpression()), !dbg !3318
  %23 = load i32, ptr %6, align 8, !dbg !3331, !tbaa !2617
  %24 = load ptr, ptr %16, align 8, !dbg !3332, !tbaa !2688
  %25 = load ptr, ptr %18, align 8, !dbg !3333, !tbaa !2691
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3334
  store i32 %8, ptr %7, align 4, !dbg !3335, !tbaa !1020
  br i1 %11, label %28, label %27, !dbg !3336

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3337, !tbaa !1203
  br label %28, !dbg !3339

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3340
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #11 !dbg !3341 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3346, !tbaa !948
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3343, metadata !DIExpression()), !dbg !3347
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3344, metadata !DIExpression()), !dbg !3348
  %2 = load i32, ptr @nslots, align 4, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3344, metadata !DIExpression()), !dbg !3348
  %3 = icmp sgt i32 %2, 1, !dbg !3349
  br i1 %3, label %4, label %6, !dbg !3351

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3349
  br label %10, !dbg !3351

.loopexit:                                        ; preds = %10
  br label %6, !dbg !3352

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3352
  %8 = load ptr, ptr %7, align 8, !dbg !3352, !tbaa !3354
  %9 = icmp eq ptr %8, @slot0, !dbg !3356
  br i1 %9, label %17, label %16, !dbg !3357

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3344, metadata !DIExpression()), !dbg !3348
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3358
  %13 = load ptr, ptr %12, align 8, !dbg !3358, !tbaa !3354
  tail call void @free(ptr noundef %13) #42, !dbg !3359
  %14 = add nuw nsw i64 %11, 1, !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3344, metadata !DIExpression()), !dbg !3348
  %15 = icmp eq i64 %14, %5, !dbg !3349
  br i1 %15, label %.loopexit, label %10, !dbg !3351, !llvm.loop !3361

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #42, !dbg !3363
  store i64 256, ptr @slotvec0, align 8, !dbg !3365, !tbaa !3366
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3367, !tbaa !3354
  br label %17, !dbg !3368

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3369
  br i1 %18, label %20, label %19, !dbg !3371

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #42, !dbg !3372
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3374, !tbaa !948
  br label %20, !dbg !3375

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3376, !tbaa !1020
  ret void, !dbg !3377
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !3378 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3380, metadata !DIExpression()), !dbg !3382
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3381, metadata !DIExpression()), !dbg !3382
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3383
  ret ptr %3, !dbg !3384
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #11 !dbg !3385 {
  %5 = alloca i64, align 8, !DIAssignID !3405
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3399, metadata !DIExpression(), metadata !3405, metadata ptr %5, metadata !DIExpression()), !dbg !3406
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3389, metadata !DIExpression()), !dbg !3407
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3390, metadata !DIExpression()), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3391, metadata !DIExpression()), !dbg !3407
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3392, metadata !DIExpression()), !dbg !3407
  %6 = tail call ptr @__errno_location() #45, !dbg !3408
  %7 = load i32, ptr %6, align 4, !dbg !3408, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3393, metadata !DIExpression()), !dbg !3407
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3409, !tbaa !948
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3394, metadata !DIExpression()), !dbg !3407
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3395, metadata !DIExpression()), !dbg !3407
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3410
  br i1 %9, label %10, label %11, !dbg !3410

10:                                               ; preds = %4
  tail call void @abort() #44, !dbg !3412
  unreachable, !dbg !3412

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3413, !tbaa !1020
  %13 = icmp sgt i32 %12, %0, !dbg !3414
  br i1 %13, label %32, label %14, !dbg !3415

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3416
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3406
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #42, !dbg !3417
  %16 = sext i32 %12 to i64, !dbg !3418
  store i64 %16, ptr %5, align 8, !dbg !3419, !tbaa !1203, !DIAssignID !3420
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3399, metadata !DIExpression(), metadata !3420, metadata ptr %5, metadata !DIExpression()), !dbg !3406
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3421
  %18 = add nuw nsw i32 %0, 1, !dbg !3422
  %19 = sub i32 %18, %12, !dbg !3423
  %20 = sext i32 %19 to i64, !dbg !3424
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #42, !dbg !3425
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3394, metadata !DIExpression()), !dbg !3407
  store ptr %21, ptr @slotvec, align 8, !dbg !3426, !tbaa !948
  br i1 %15, label %22, label %23, !dbg !3427

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3428, !tbaa.struct !3430
  br label %23, !dbg !3431

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3432, !tbaa !1020
  %25 = sext i32 %24 to i64, !dbg !3433
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3433
  %27 = load i64, ptr %5, align 8, !dbg !3434, !tbaa !1203
  %28 = sub nsw i64 %27, %25, !dbg !3435
  %29 = shl i64 %28, 4, !dbg !3436
  call void @llvm.dbg.value(metadata ptr %26, metadata !2826, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i32 0, metadata !2829, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %29, metadata !2830, metadata !DIExpression()), !dbg !3437
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #42, !dbg !3439
  %30 = load i64, ptr %5, align 8, !dbg !3440, !tbaa !1203
  %31 = trunc i64 %30 to i32, !dbg !3440
  store i32 %31, ptr @nslots, align 4, !dbg !3441, !tbaa !1020
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #42, !dbg !3442
  br label %32, !dbg !3443

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3407
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3394, metadata !DIExpression()), !dbg !3407
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3444
  %36 = load i64, ptr %35, align 8, !dbg !3445, !tbaa !3366
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3400, metadata !DIExpression()), !dbg !3446
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3447
  %38 = load ptr, ptr %37, align 8, !dbg !3447, !tbaa !3354
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3402, metadata !DIExpression()), !dbg !3446
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3448
  %40 = load i32, ptr %39, align 4, !dbg !3448, !tbaa !2667
  %41 = or i32 %40, 1, !dbg !3449
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3403, metadata !DIExpression()), !dbg !3446
  %42 = load i32, ptr %3, align 8, !dbg !3450, !tbaa !2617
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3451
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3452
  %45 = load ptr, ptr %44, align 8, !dbg !3452, !tbaa !2688
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3453
  %47 = load ptr, ptr %46, align 8, !dbg !3453, !tbaa !2691
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3454
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3404, metadata !DIExpression()), !dbg !3446
  %49 = icmp ugt i64 %36, %48, !dbg !3455
  br i1 %49, label %60, label %50, !dbg !3457

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3458
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3400, metadata !DIExpression()), !dbg !3446
  store i64 %51, ptr %35, align 8, !dbg !3460, !tbaa !3366
  %52 = icmp eq ptr %38, @slot0, !dbg !3461
  br i1 %52, label %54, label %53, !dbg !3463

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #42, !dbg !3464
  br label %54, !dbg !3464

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #49, !dbg !3465
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3402, metadata !DIExpression()), !dbg !3446
  store ptr %55, ptr %37, align 8, !dbg !3466, !tbaa !3354
  %56 = load i32, ptr %3, align 8, !dbg !3467, !tbaa !2617
  %57 = load ptr, ptr %44, align 8, !dbg !3468, !tbaa !2688
  %58 = load ptr, ptr %46, align 8, !dbg !3469, !tbaa !2691
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3470
  br label %60, !dbg !3471

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3446
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3402, metadata !DIExpression()), !dbg !3446
  store i32 %7, ptr %6, align 4, !dbg !3472, !tbaa !1020
  ret ptr %61, !dbg !3473
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3474 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3478, metadata !DIExpression()), !dbg !3481
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3479, metadata !DIExpression()), !dbg !3481
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3480, metadata !DIExpression()), !dbg !3481
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3482
  ret ptr %4, !dbg !3483
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #11 !dbg !3484 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3486, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 0, metadata !3380, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata ptr %0, metadata !3381, metadata !DIExpression()), !dbg !3488
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3490
  ret ptr %2, !dbg !3491
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !3492 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3496, metadata !DIExpression()), !dbg !3498
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3497, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata i32 0, metadata !3478, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata ptr %0, metadata !3479, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i64 %1, metadata !3480, metadata !DIExpression()), !dbg !3499
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3501
  ret ptr %3, !dbg !3502
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !3503 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3511
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3510, metadata !DIExpression(), metadata !3511, metadata ptr %4, metadata !DIExpression()), !dbg !3512
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3507, metadata !DIExpression()), !dbg !3512
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3508, metadata !DIExpression()), !dbg !3512
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3509, metadata !DIExpression()), !dbg !3512
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3513
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3514), !dbg !3517
  call void @llvm.dbg.value(metadata i32 %1, metadata !3518, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3523, metadata !DIExpression()), !dbg !3526
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3526, !alias.scope !3514, !DIAssignID !3527
  call void @llvm.dbg.assign(metadata i8 0, metadata !3510, metadata !DIExpression(), metadata !3527, metadata ptr %4, metadata !DIExpression()), !dbg !3512
  %5 = icmp eq i32 %1, 10, !dbg !3528
  br i1 %5, label %6, label %7, !dbg !3530

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3531, !noalias !3514
  unreachable, !dbg !3531

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3532, !tbaa !2617, !alias.scope !3514, !DIAssignID !3533
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3510, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3533, metadata ptr %4, metadata !DIExpression()), !dbg !3512
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3534
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3535
  ret ptr %8, !dbg !3536
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !3537 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3546
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3545, metadata !DIExpression(), metadata !3546, metadata ptr %5, metadata !DIExpression()), !dbg !3547
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3541, metadata !DIExpression()), !dbg !3547
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3542, metadata !DIExpression()), !dbg !3547
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3543, metadata !DIExpression()), !dbg !3547
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3544, metadata !DIExpression()), !dbg !3547
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !3548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3549), !dbg !3552
  call void @llvm.dbg.value(metadata i32 %1, metadata !3518, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3523, metadata !DIExpression()), !dbg !3555
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3555, !alias.scope !3549, !DIAssignID !3556
  call void @llvm.dbg.assign(metadata i8 0, metadata !3545, metadata !DIExpression(), metadata !3556, metadata ptr %5, metadata !DIExpression()), !dbg !3547
  %6 = icmp eq i32 %1, 10, !dbg !3557
  br i1 %6, label %7, label %8, !dbg !3558

7:                                                ; preds = %4
  tail call void @abort() #44, !dbg !3559, !noalias !3549
  unreachable, !dbg !3559

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3560, !tbaa !2617, !alias.scope !3549, !DIAssignID !3561
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3545, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3561, metadata ptr %5, metadata !DIExpression()), !dbg !3547
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3562
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !3563
  ret ptr %9, !dbg !3564
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !3565 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3571
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3569, metadata !DIExpression()), !dbg !3572
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3570, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3510, metadata !DIExpression(), metadata !3571, metadata ptr %3, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 0, metadata !3507, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i32 %0, metadata !3508, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata ptr %1, metadata !3509, metadata !DIExpression()), !dbg !3573
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !3575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3576), !dbg !3579
  call void @llvm.dbg.value(metadata i32 %0, metadata !3518, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3523, metadata !DIExpression()), !dbg !3582
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3582, !alias.scope !3576, !DIAssignID !3583
  call void @llvm.dbg.assign(metadata i8 0, metadata !3510, metadata !DIExpression(), metadata !3583, metadata ptr %3, metadata !DIExpression()), !dbg !3573
  %4 = icmp eq i32 %0, 10, !dbg !3584
  br i1 %4, label %5, label %6, !dbg !3585

5:                                                ; preds = %2
  tail call void @abort() #44, !dbg !3586, !noalias !3576
  unreachable, !dbg !3586

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3587, !tbaa !2617, !alias.scope !3576, !DIAssignID !3588
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3510, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3588, metadata ptr %3, metadata !DIExpression()), !dbg !3573
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3589
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !3590
  ret ptr %7, !dbg !3591
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3592 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3599
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3596, metadata !DIExpression()), !dbg !3600
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3597, metadata !DIExpression()), !dbg !3600
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3598, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3545, metadata !DIExpression(), metadata !3599, metadata ptr %4, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 0, metadata !3541, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %0, metadata !3542, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata ptr %1, metadata !3543, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %2, metadata !3544, metadata !DIExpression()), !dbg !3601
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3603
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3604), !dbg !3607
  call void @llvm.dbg.value(metadata i32 %0, metadata !3518, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3523, metadata !DIExpression()), !dbg !3610
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3610, !alias.scope !3604, !DIAssignID !3611
  call void @llvm.dbg.assign(metadata i8 0, metadata !3545, metadata !DIExpression(), metadata !3611, metadata ptr %4, metadata !DIExpression()), !dbg !3601
  %5 = icmp eq i32 %0, 10, !dbg !3612
  br i1 %5, label %6, label %7, !dbg !3613

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3614, !noalias !3604
  unreachable, !dbg !3614

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3615, !tbaa !2617, !alias.scope !3604, !DIAssignID !3616
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3545, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3616, metadata ptr %4, metadata !DIExpression()), !dbg !3601
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3617
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3618
  ret ptr %8, !dbg !3619
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #11 !dbg !3620 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3628
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3627, metadata !DIExpression(), metadata !3628, metadata ptr %4, metadata !DIExpression()), !dbg !3629
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3624, metadata !DIExpression()), !dbg !3629
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3625, metadata !DIExpression()), !dbg !3629
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3626, metadata !DIExpression()), !dbg !3629
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3631, !tbaa.struct !3632, !DIAssignID !3633
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3627, metadata !DIExpression(), metadata !3633, metadata ptr %4, metadata !DIExpression()), !dbg !3629
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2634, metadata !DIExpression()), !dbg !3634
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2635, metadata !DIExpression()), !dbg !3634
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2636, metadata !DIExpression()), !dbg !3634
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2637, metadata !DIExpression()), !dbg !3634
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3636
  %6 = lshr i8 %2, 5, !dbg !3637
  %7 = zext nneg i8 %6 to i64, !dbg !3637
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3638
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2638, metadata !DIExpression()), !dbg !3634
  %9 = and i8 %2, 31, !dbg !3639
  %10 = zext nneg i8 %9 to i32, !dbg !3639
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2640, metadata !DIExpression()), !dbg !3634
  %11 = load i32, ptr %8, align 4, !dbg !3640, !tbaa !1020
  %12 = lshr i32 %11, %10, !dbg !3641
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2641, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3634
  %13 = and i32 %12, 1, !dbg !3642
  %14 = xor i32 %13, 1, !dbg !3642
  %15 = shl nuw i32 %14, %10, !dbg !3643
  %16 = xor i32 %15, %11, !dbg !3644
  store i32 %16, ptr %8, align 4, !dbg !3644, !tbaa !1020
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3645
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3646
  ret ptr %17, !dbg !3647
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #11 !dbg !3648 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3654
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3652, metadata !DIExpression()), !dbg !3655
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3653, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3627, metadata !DIExpression(), metadata !3654, metadata ptr %3, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata ptr %0, metadata !3624, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64 -1, metadata !3625, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i8 %1, metadata !3626, metadata !DIExpression()), !dbg !3656
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !3658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3659, !tbaa.struct !3632, !DIAssignID !3660
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3627, metadata !DIExpression(), metadata !3660, metadata ptr %3, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata ptr %3, metadata !2634, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i8 %1, metadata !2635, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i32 1, metadata !2636, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i8 %1, metadata !2637, metadata !DIExpression()), !dbg !3661
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3663
  %5 = lshr i8 %1, 5, !dbg !3664
  %6 = zext nneg i8 %5 to i64, !dbg !3664
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3665
  call void @llvm.dbg.value(metadata ptr %7, metadata !2638, metadata !DIExpression()), !dbg !3661
  %8 = and i8 %1, 31, !dbg !3666
  %9 = zext nneg i8 %8 to i32, !dbg !3666
  call void @llvm.dbg.value(metadata i32 %9, metadata !2640, metadata !DIExpression()), !dbg !3661
  %10 = load i32, ptr %7, align 4, !dbg !3667, !tbaa !1020
  %11 = lshr i32 %10, %9, !dbg !3668
  call void @llvm.dbg.value(metadata i32 %11, metadata !2641, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3661
  %12 = and i32 %11, 1, !dbg !3669
  %13 = xor i32 %12, 1, !dbg !3669
  %14 = shl nuw i32 %13, %9, !dbg !3670
  %15 = xor i32 %14, %10, !dbg !3671
  store i32 %15, ptr %7, align 4, !dbg !3671, !tbaa !1020
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3672
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !3673
  ret ptr %16, !dbg !3674
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #11 !dbg !3675 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3678
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3677, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata ptr %0, metadata !3652, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i8 58, metadata !3653, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3627, metadata !DIExpression(), metadata !3678, metadata ptr %2, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata ptr %0, metadata !3624, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i64 -1, metadata !3625, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i8 58, metadata !3626, metadata !DIExpression()), !dbg !3682
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #42, !dbg !3684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3685, !tbaa.struct !3632, !DIAssignID !3686
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3627, metadata !DIExpression(), metadata !3686, metadata ptr %2, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata ptr %2, metadata !2634, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i8 58, metadata !2635, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i32 1, metadata !2636, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i8 58, metadata !2637, metadata !DIExpression()), !dbg !3687
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3689
  call void @llvm.dbg.value(metadata ptr %3, metadata !2638, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i32 26, metadata !2640, metadata !DIExpression()), !dbg !3687
  %4 = load i32, ptr %3, align 4, !dbg !3690, !tbaa !1020
  call void @llvm.dbg.value(metadata i32 %4, metadata !2641, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3687
  %5 = or i32 %4, 67108864, !dbg !3691
  store i32 %5, ptr %3, align 4, !dbg !3691, !tbaa !1020
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3692
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #42, !dbg !3693
  ret ptr %6, !dbg !3694
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !3695 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3699
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3697, metadata !DIExpression()), !dbg !3700
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3698, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3627, metadata !DIExpression(), metadata !3699, metadata ptr %3, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata ptr %0, metadata !3624, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %1, metadata !3625, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i8 58, metadata !3626, metadata !DIExpression()), !dbg !3701
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !3703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3704, !tbaa.struct !3632, !DIAssignID !3705
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3627, metadata !DIExpression(), metadata !3705, metadata ptr %3, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata ptr %3, metadata !2634, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i8 58, metadata !2635, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 1, metadata !2636, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i8 58, metadata !2637, metadata !DIExpression()), !dbg !3706
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3708
  call void @llvm.dbg.value(metadata ptr %4, metadata !2638, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 26, metadata !2640, metadata !DIExpression()), !dbg !3706
  %5 = load i32, ptr %4, align 4, !dbg !3709, !tbaa !1020
  call void @llvm.dbg.value(metadata i32 %5, metadata !2641, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3706
  %6 = or i32 %5, 67108864, !dbg !3710
  store i32 %6, ptr %4, align 4, !dbg !3710, !tbaa !1020
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3711
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !3712
  ret ptr %7, !dbg !3713
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !3714 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3720
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3719, metadata !DIExpression(), metadata !3720, metadata ptr %4, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3722
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3716, metadata !DIExpression()), !dbg !3721
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3717, metadata !DIExpression()), !dbg !3721
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3718, metadata !DIExpression()), !dbg !3721
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3724
  call void @llvm.dbg.value(metadata i32 %1, metadata !3518, metadata !DIExpression()), !dbg !3725
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3725
  %5 = icmp eq i32 %1, 10, !dbg !3726
  br i1 %5, label %6, label %7, !dbg !3727

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3728, !noalias !3729
  unreachable, !dbg !3728

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3725
  store i32 %1, ptr %4, align 8, !dbg !3732, !tbaa.struct !3632, !DIAssignID !3733
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3732
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3732
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3719, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3733, metadata ptr %4, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3719, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3734, metadata ptr %8, metadata !DIExpression()), !dbg !3721
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2634, metadata !DIExpression()), !dbg !3735
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2635, metadata !DIExpression()), !dbg !3735
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2636, metadata !DIExpression()), !dbg !3735
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2637, metadata !DIExpression()), !dbg !3735
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3737
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2638, metadata !DIExpression()), !dbg !3735
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2640, metadata !DIExpression()), !dbg !3735
  %10 = load i32, ptr %9, align 4, !dbg !3738, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2641, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3735
  %11 = or i32 %10, 67108864, !dbg !3739
  store i32 %11, ptr %9, align 4, !dbg !3739, !tbaa !1020, !DIAssignID !3740
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3719, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3740, metadata ptr %9, metadata !DIExpression()), !dbg !3721
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3741
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3742
  ret ptr %12, !dbg !3743
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 !dbg !3744 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3752
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3748, metadata !DIExpression()), !dbg !3753
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3749, metadata !DIExpression()), !dbg !3753
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3750, metadata !DIExpression()), !dbg !3753
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3751, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3754, metadata !DIExpression(), metadata !3752, metadata ptr %5, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i32 %0, metadata !3759, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata ptr %1, metadata !3760, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata ptr %2, metadata !3761, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata ptr %3, metadata !3762, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i64 -1, metadata !3763, metadata !DIExpression()), !dbg !3764
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !3766
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3767, !tbaa.struct !3632, !DIAssignID !3768
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3754, metadata !DIExpression(), metadata !3768, metadata ptr %5, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3754, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3769, metadata ptr undef, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata ptr %5, metadata !2674, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata ptr %1, metadata !2675, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata ptr %2, metadata !2676, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata ptr %5, metadata !2674, metadata !DIExpression()), !dbg !3770
  store i32 10, ptr %5, align 8, !dbg !3772, !tbaa !2617, !DIAssignID !3773
  call void @llvm.dbg.assign(metadata i32 10, metadata !3754, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3773, metadata ptr %5, metadata !DIExpression()), !dbg !3764
  %6 = icmp ne ptr %1, null, !dbg !3774
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3775
  br i1 %8, label %10, label %9, !dbg !3775

9:                                                ; preds = %4
  tail call void @abort() #44, !dbg !3776
  unreachable, !dbg !3776

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3777
  store ptr %1, ptr %11, align 8, !dbg !3778, !tbaa !2688, !DIAssignID !3779
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3754, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3779, metadata ptr %11, metadata !DIExpression()), !dbg !3764
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3780
  store ptr %2, ptr %12, align 8, !dbg !3781, !tbaa !2691, !DIAssignID !3782
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3754, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3782, metadata ptr %12, metadata !DIExpression()), !dbg !3764
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3783
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !3784
  ret ptr %13, !dbg !3785
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #11 !dbg !3755 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3786
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3754, metadata !DIExpression(), metadata !3786, metadata ptr %6, metadata !DIExpression()), !dbg !3787
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3759, metadata !DIExpression()), !dbg !3787
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3760, metadata !DIExpression()), !dbg !3787
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3761, metadata !DIExpression()), !dbg !3787
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3762, metadata !DIExpression()), !dbg !3787
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3763, metadata !DIExpression()), !dbg !3787
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #42, !dbg !3788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3789, !tbaa.struct !3632, !DIAssignID !3790
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3754, metadata !DIExpression(), metadata !3790, metadata ptr %6, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3754, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3791, metadata ptr undef, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata ptr %6, metadata !2674, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata ptr %1, metadata !2675, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata ptr %2, metadata !2676, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata ptr %6, metadata !2674, metadata !DIExpression()), !dbg !3792
  store i32 10, ptr %6, align 8, !dbg !3794, !tbaa !2617, !DIAssignID !3795
  call void @llvm.dbg.assign(metadata i32 10, metadata !3754, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3795, metadata ptr %6, metadata !DIExpression()), !dbg !3787
  %7 = icmp ne ptr %1, null, !dbg !3796
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3797
  br i1 %9, label %11, label %10, !dbg !3797

10:                                               ; preds = %5
  tail call void @abort() #44, !dbg !3798
  unreachable, !dbg !3798

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3799
  store ptr %1, ptr %12, align 8, !dbg !3800, !tbaa !2688, !DIAssignID !3801
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3754, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3801, metadata ptr %12, metadata !DIExpression()), !dbg !3787
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3802
  store ptr %2, ptr %13, align 8, !dbg !3803, !tbaa !2691, !DIAssignID !3804
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3754, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3804, metadata ptr %13, metadata !DIExpression()), !dbg !3787
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3805
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #42, !dbg !3806
  ret ptr %14, !dbg !3807
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !3808 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3815
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3812, metadata !DIExpression()), !dbg !3816
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3813, metadata !DIExpression()), !dbg !3816
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3814, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 0, metadata !3748, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata ptr %0, metadata !3749, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata ptr %1, metadata !3750, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata ptr %2, metadata !3751, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3754, metadata !DIExpression(), metadata !3815, metadata ptr %4, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i32 0, metadata !3759, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %0, metadata !3760, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %1, metadata !3761, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %2, metadata !3762, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i64 -1, metadata !3763, metadata !DIExpression()), !dbg !3819
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3822, !tbaa.struct !3632, !DIAssignID !3823
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3754, metadata !DIExpression(), metadata !3823, metadata ptr %4, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3754, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3824, metadata ptr undef, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %4, metadata !2674, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata ptr %0, metadata !2675, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata ptr %1, metadata !2676, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata ptr %4, metadata !2674, metadata !DIExpression()), !dbg !3825
  store i32 10, ptr %4, align 8, !dbg !3827, !tbaa !2617, !DIAssignID !3828
  call void @llvm.dbg.assign(metadata i32 10, metadata !3754, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3828, metadata ptr %4, metadata !DIExpression()), !dbg !3819
  %5 = icmp ne ptr %0, null, !dbg !3829
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3830
  br i1 %7, label %9, label %8, !dbg !3830

8:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3831
  unreachable, !dbg !3831

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3832
  store ptr %0, ptr %10, align 8, !dbg !3833, !tbaa !2688, !DIAssignID !3834
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3754, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3834, metadata ptr %10, metadata !DIExpression()), !dbg !3819
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3835
  store ptr %1, ptr %11, align 8, !dbg !3836, !tbaa !2691, !DIAssignID !3837
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3754, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3837, metadata ptr %11, metadata !DIExpression()), !dbg !3819
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3838
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3839
  ret ptr %12, !dbg !3840
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !3841 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3849
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3845, metadata !DIExpression()), !dbg !3850
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3846, metadata !DIExpression()), !dbg !3850
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3847, metadata !DIExpression()), !dbg !3850
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3848, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3754, metadata !DIExpression(), metadata !3849, metadata ptr %5, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i32 0, metadata !3759, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata ptr %0, metadata !3760, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata ptr %1, metadata !3761, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata ptr %2, metadata !3762, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i64 %3, metadata !3763, metadata !DIExpression()), !dbg !3851
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !3853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3854, !tbaa.struct !3632, !DIAssignID !3855
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3754, metadata !DIExpression(), metadata !3855, metadata ptr %5, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3754, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3856, metadata ptr undef, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata ptr %5, metadata !2674, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata ptr %0, metadata !2675, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata ptr %1, metadata !2676, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata ptr %5, metadata !2674, metadata !DIExpression()), !dbg !3857
  store i32 10, ptr %5, align 8, !dbg !3859, !tbaa !2617, !DIAssignID !3860
  call void @llvm.dbg.assign(metadata i32 10, metadata !3754, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3860, metadata ptr %5, metadata !DIExpression()), !dbg !3851
  %6 = icmp ne ptr %0, null, !dbg !3861
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3862
  br i1 %8, label %10, label %9, !dbg !3862

9:                                                ; preds = %4
  tail call void @abort() #44, !dbg !3863
  unreachable, !dbg !3863

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3864
  store ptr %0, ptr %11, align 8, !dbg !3865, !tbaa !2688, !DIAssignID !3866
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3754, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3866, metadata ptr %11, metadata !DIExpression()), !dbg !3851
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3867
  store ptr %1, ptr %12, align 8, !dbg !3868, !tbaa !2691, !DIAssignID !3869
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3754, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3869, metadata ptr %12, metadata !DIExpression()), !dbg !3851
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3870
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !3871
  ret ptr %13, !dbg !3872
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3873 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3877, metadata !DIExpression()), !dbg !3880
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3878, metadata !DIExpression()), !dbg !3880
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3879, metadata !DIExpression()), !dbg !3880
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3881
  ret ptr %4, !dbg !3882
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !3883 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3887, metadata !DIExpression()), !dbg !3889
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3888, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i32 0, metadata !3877, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata ptr %0, metadata !3878, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i64 %1, metadata !3879, metadata !DIExpression()), !dbg !3890
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3892
  ret ptr %3, !dbg !3893
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !3894 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3898, metadata !DIExpression()), !dbg !3900
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3899, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i32 %0, metadata !3877, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata ptr %1, metadata !3878, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i64 -1, metadata !3879, metadata !DIExpression()), !dbg !3901
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3903
  ret ptr %3, !dbg !3904
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #11 !dbg !3905 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3909, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i32 0, metadata !3898, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata ptr %0, metadata !3899, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i32 0, metadata !3877, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata ptr %0, metadata !3878, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i64 -1, metadata !3879, metadata !DIExpression()), !dbg !3913
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3915
  ret ptr %2, !dbg !3916
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3917 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3921, metadata !DIExpression()), !dbg !3924
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3922, metadata !DIExpression()), !dbg !3924
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3923, metadata !DIExpression()), !dbg !3924
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #42, !dbg !3925
  ret i32 %4, !dbg !3926
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #11 !dbg !3927 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3931, metadata !DIExpression()), !dbg !3932
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #42, !dbg !3933
  ret ptr %2, !dbg !3934
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #11 !dbg !3935 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3937, metadata !DIExpression()), !dbg !3939
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #42, !dbg !3940
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3938, metadata !DIExpression()), !dbg !3939
  ret ptr %2, !dbg !3941
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3942 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3944, metadata !DIExpression()), !dbg !3951
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3945, metadata !DIExpression()), !dbg !3951
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3946, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.value(metadata i32 %0, metadata !3937, metadata !DIExpression()), !dbg !3952
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #42, !dbg !3954
  call void @llvm.dbg.value(metadata ptr %4, metadata !3938, metadata !DIExpression()), !dbg !3952
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3947, metadata !DIExpression()), !dbg !3951
  %5 = icmp eq ptr %4, null, !dbg !3955
  br i1 %5, label %6, label %9, !dbg !3956

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3957
  br i1 %7, label %19, label %8, !dbg !3960

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3961, !tbaa !1029
  br label %19, !dbg !3962

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #43, !dbg !3963
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3948, metadata !DIExpression()), !dbg !3964
  %11 = icmp ult i64 %10, %2, !dbg !3965
  br i1 %11, label %12, label %14, !dbg !3967

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3968
  call void @llvm.dbg.value(metadata ptr %1, metadata !3970, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata ptr %4, metadata !3976, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 %13, metadata !3977, metadata !DIExpression()), !dbg !3978
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #42, !dbg !3980
  br label %19, !dbg !3981

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3982
  br i1 %15, label %19, label %16, !dbg !3985

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3986
  call void @llvm.dbg.value(metadata ptr %1, metadata !3970, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata ptr %4, metadata !3976, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata i64 %17, metadata !3977, metadata !DIExpression()), !dbg !3988
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #42, !dbg !3990
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3991
  store i8 0, ptr %18, align 1, !dbg !3992, !tbaa !1029
  br label %19, !dbg !3993

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3994
  ret i32 %20, !dbg !3995
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #11 !dbg !3996 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3998, metadata !DIExpression()), !dbg !3999
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #42, !dbg !4000
  ret i32 %2, !dbg !4001
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #11 !dbg !4002 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4041, metadata !DIExpression()), !dbg !4047
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4042, metadata !DIExpression()), !dbg !4047
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4043, metadata !DIExpression()), !dbg !4047
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4044, metadata !DIExpression()), !dbg !4047
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4045, metadata !DIExpression()), !dbg !4047
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4046, metadata !DIExpression()), !dbg !4047
  %7 = icmp eq ptr %1, null, !dbg !4048
  br i1 %7, label %10, label %8, !dbg !4050

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.124, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #42, !dbg !4051
  br label %12, !dbg !4051

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.125, ptr noundef %2, ptr noundef %3) #42, !dbg !4052
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.3.127, i32 noundef 5) #42, !dbg !4053
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #42, !dbg !4053
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.128, ptr noundef %0), !dbg !4054
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.5.129, i32 noundef 5) #42, !dbg !4055
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.130) #42, !dbg !4055
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.128, ptr noundef %0), !dbg !4056
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
  ], !dbg !4057

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.7.131, i32 noundef 5) #42, !dbg !4058
  %21 = load ptr, ptr %4, align 8, !dbg !4058, !tbaa !948
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #42, !dbg !4058
  br label %147, !dbg !4060

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.8.132, i32 noundef 5) #42, !dbg !4061
  %25 = load ptr, ptr %4, align 8, !dbg !4061, !tbaa !948
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4061
  %27 = load ptr, ptr %26, align 8, !dbg !4061, !tbaa !948
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #42, !dbg !4061
  br label %147, !dbg !4062

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.9.133, i32 noundef 5) #42, !dbg !4063
  %31 = load ptr, ptr %4, align 8, !dbg !4063, !tbaa !948
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4063
  %33 = load ptr, ptr %32, align 8, !dbg !4063, !tbaa !948
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4063
  %35 = load ptr, ptr %34, align 8, !dbg !4063, !tbaa !948
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #42, !dbg !4063
  br label %147, !dbg !4064

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.10.134, i32 noundef 5) #42, !dbg !4065
  %39 = load ptr, ptr %4, align 8, !dbg !4065, !tbaa !948
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4065
  %41 = load ptr, ptr %40, align 8, !dbg !4065, !tbaa !948
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4065
  %43 = load ptr, ptr %42, align 8, !dbg !4065, !tbaa !948
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4065
  %45 = load ptr, ptr %44, align 8, !dbg !4065, !tbaa !948
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #42, !dbg !4065
  br label %147, !dbg !4066

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.11.135, i32 noundef 5) #42, !dbg !4067
  %49 = load ptr, ptr %4, align 8, !dbg !4067, !tbaa !948
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4067
  %51 = load ptr, ptr %50, align 8, !dbg !4067, !tbaa !948
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4067
  %53 = load ptr, ptr %52, align 8, !dbg !4067, !tbaa !948
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4067
  %55 = load ptr, ptr %54, align 8, !dbg !4067, !tbaa !948
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4067
  %57 = load ptr, ptr %56, align 8, !dbg !4067, !tbaa !948
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #42, !dbg !4067
  br label %147, !dbg !4068

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.12.136, i32 noundef 5) #42, !dbg !4069
  %61 = load ptr, ptr %4, align 8, !dbg !4069, !tbaa !948
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4069
  %63 = load ptr, ptr %62, align 8, !dbg !4069, !tbaa !948
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4069
  %65 = load ptr, ptr %64, align 8, !dbg !4069, !tbaa !948
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4069
  %67 = load ptr, ptr %66, align 8, !dbg !4069, !tbaa !948
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4069
  %69 = load ptr, ptr %68, align 8, !dbg !4069, !tbaa !948
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4069
  %71 = load ptr, ptr %70, align 8, !dbg !4069, !tbaa !948
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #42, !dbg !4069
  br label %147, !dbg !4070

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.13.137, i32 noundef 5) #42, !dbg !4071
  %75 = load ptr, ptr %4, align 8, !dbg !4071, !tbaa !948
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4071
  %77 = load ptr, ptr %76, align 8, !dbg !4071, !tbaa !948
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4071
  %79 = load ptr, ptr %78, align 8, !dbg !4071, !tbaa !948
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4071
  %81 = load ptr, ptr %80, align 8, !dbg !4071, !tbaa !948
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4071
  %83 = load ptr, ptr %82, align 8, !dbg !4071, !tbaa !948
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4071
  %85 = load ptr, ptr %84, align 8, !dbg !4071, !tbaa !948
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4071
  %87 = load ptr, ptr %86, align 8, !dbg !4071, !tbaa !948
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #42, !dbg !4071
  br label %147, !dbg !4072

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.14.138, i32 noundef 5) #42, !dbg !4073
  %91 = load ptr, ptr %4, align 8, !dbg !4073, !tbaa !948
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4073
  %93 = load ptr, ptr %92, align 8, !dbg !4073, !tbaa !948
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4073
  %95 = load ptr, ptr %94, align 8, !dbg !4073, !tbaa !948
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4073
  %97 = load ptr, ptr %96, align 8, !dbg !4073, !tbaa !948
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4073
  %99 = load ptr, ptr %98, align 8, !dbg !4073, !tbaa !948
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4073
  %101 = load ptr, ptr %100, align 8, !dbg !4073, !tbaa !948
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4073
  %103 = load ptr, ptr %102, align 8, !dbg !4073, !tbaa !948
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4073
  %105 = load ptr, ptr %104, align 8, !dbg !4073, !tbaa !948
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #42, !dbg !4073
  br label %147, !dbg !4074

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.15.139, i32 noundef 5) #42, !dbg !4075
  %109 = load ptr, ptr %4, align 8, !dbg !4075, !tbaa !948
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4075
  %111 = load ptr, ptr %110, align 8, !dbg !4075, !tbaa !948
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4075
  %113 = load ptr, ptr %112, align 8, !dbg !4075, !tbaa !948
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4075
  %115 = load ptr, ptr %114, align 8, !dbg !4075, !tbaa !948
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4075
  %117 = load ptr, ptr %116, align 8, !dbg !4075, !tbaa !948
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4075
  %119 = load ptr, ptr %118, align 8, !dbg !4075, !tbaa !948
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4075
  %121 = load ptr, ptr %120, align 8, !dbg !4075, !tbaa !948
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4075
  %123 = load ptr, ptr %122, align 8, !dbg !4075, !tbaa !948
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4075
  %125 = load ptr, ptr %124, align 8, !dbg !4075, !tbaa !948
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #42, !dbg !4075
  br label %147, !dbg !4076

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.16.140, i32 noundef 5) #42, !dbg !4077
  %129 = load ptr, ptr %4, align 8, !dbg !4077, !tbaa !948
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4077
  %131 = load ptr, ptr %130, align 8, !dbg !4077, !tbaa !948
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4077
  %133 = load ptr, ptr %132, align 8, !dbg !4077, !tbaa !948
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4077
  %135 = load ptr, ptr %134, align 8, !dbg !4077, !tbaa !948
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4077
  %137 = load ptr, ptr %136, align 8, !dbg !4077, !tbaa !948
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4077
  %139 = load ptr, ptr %138, align 8, !dbg !4077, !tbaa !948
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4077
  %141 = load ptr, ptr %140, align 8, !dbg !4077, !tbaa !948
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4077
  %143 = load ptr, ptr %142, align 8, !dbg !4077, !tbaa !948
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4077
  %145 = load ptr, ptr %144, align 8, !dbg !4077, !tbaa !948
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #42, !dbg !4077
  br label %147, !dbg !4078

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4079
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #11 !dbg !4080 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4084, metadata !DIExpression()), !dbg !4090
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4085, metadata !DIExpression()), !dbg !4090
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4086, metadata !DIExpression()), !dbg !4090
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4087, metadata !DIExpression()), !dbg !4090
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4088, metadata !DIExpression()), !dbg !4090
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4089, metadata !DIExpression()), !dbg !4090
  br label %6, !dbg !4091

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4093
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4089, metadata !DIExpression()), !dbg !4090
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4094
  %9 = load ptr, ptr %8, align 8, !dbg !4094, !tbaa !948
  %10 = icmp eq ptr %9, null, !dbg !4096
  %11 = add i64 %7, 1, !dbg !4097
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4089, metadata !DIExpression()), !dbg !4090
  br i1 %10, label %12, label %6, !dbg !4096, !llvm.loop !4098

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !4093
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !4100
  ret void, !dbg !4101
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #11 !dbg !4102 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !4124
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4122, metadata !DIExpression(), metadata !4124, metadata ptr %6, metadata !DIExpression()), !dbg !4125
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4116, metadata !DIExpression()), !dbg !4125
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4117, metadata !DIExpression()), !dbg !4125
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4118, metadata !DIExpression()), !dbg !4125
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4119, metadata !DIExpression()), !dbg !4125
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4120, metadata !DIExpression(DW_OP_deref)), !dbg !4125
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #42, !dbg !4126
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4121, metadata !DIExpression()), !dbg !4125
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4121, metadata !DIExpression()), !dbg !4125
  %10 = icmp sgt i32 %9, -1, !dbg !4127
  br i1 %10, label %18, label %11, !dbg !4127

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4127
  store i32 %12, ptr %7, align 8, !dbg !4127
  %13 = icmp ult i32 %9, -7, !dbg !4127
  br i1 %13, label %14, label %18, !dbg !4127

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4127
  %16 = sext i32 %9 to i64, !dbg !4127
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4127
  br label %22, !dbg !4127

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4127
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4127
  store ptr %21, ptr %4, align 8, !dbg !4127
  br label %22, !dbg !4127

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4127
  %25 = load ptr, ptr %24, align 8, !dbg !4127
  store ptr %25, ptr %6, align 8, !dbg !4130, !tbaa !948
  %26 = icmp eq ptr %25, null, !dbg !4131
  br i1 %26, label %197, label %27, !dbg !4132

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4121, metadata !DIExpression()), !dbg !4125
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4121, metadata !DIExpression()), !dbg !4125
  %28 = icmp sgt i32 %23, -1, !dbg !4127
  br i1 %28, label %36, label %29, !dbg !4127

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4127
  store i32 %30, ptr %7, align 8, !dbg !4127
  %31 = icmp ult i32 %23, -7, !dbg !4127
  br i1 %31, label %32, label %36, !dbg !4127

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4127
  %34 = sext i32 %23 to i64, !dbg !4127
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4127
  br label %40, !dbg !4127

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4127
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4127
  store ptr %39, ptr %4, align 8, !dbg !4127
  br label %40, !dbg !4127

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4127
  %43 = load ptr, ptr %42, align 8, !dbg !4127
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4133
  store ptr %43, ptr %44, align 8, !dbg !4130, !tbaa !948
  %45 = icmp eq ptr %43, null, !dbg !4131
  br i1 %45, label %197, label %46, !dbg !4132

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4121, metadata !DIExpression()), !dbg !4125
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4121, metadata !DIExpression()), !dbg !4125
  %47 = icmp sgt i32 %41, -1, !dbg !4127
  br i1 %47, label %55, label %48, !dbg !4127

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4127
  store i32 %49, ptr %7, align 8, !dbg !4127
  %50 = icmp ult i32 %41, -7, !dbg !4127
  br i1 %50, label %51, label %55, !dbg !4127

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4127
  %53 = sext i32 %41 to i64, !dbg !4127
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4127
  br label %59, !dbg !4127

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4127
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4127
  store ptr %58, ptr %4, align 8, !dbg !4127
  br label %59, !dbg !4127

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4127
  %62 = load ptr, ptr %61, align 8, !dbg !4127
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4133
  store ptr %62, ptr %63, align 8, !dbg !4130, !tbaa !948
  %64 = icmp eq ptr %62, null, !dbg !4131
  br i1 %64, label %197, label %65, !dbg !4132

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4121, metadata !DIExpression()), !dbg !4125
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4121, metadata !DIExpression()), !dbg !4125
  %66 = icmp sgt i32 %60, -1, !dbg !4127
  br i1 %66, label %74, label %67, !dbg !4127

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4127
  store i32 %68, ptr %7, align 8, !dbg !4127
  %69 = icmp ult i32 %60, -7, !dbg !4127
  br i1 %69, label %70, label %74, !dbg !4127

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4127
  %72 = sext i32 %60 to i64, !dbg !4127
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4127
  br label %78, !dbg !4127

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4127
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4127
  store ptr %77, ptr %4, align 8, !dbg !4127
  br label %78, !dbg !4127

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4127
  %81 = load ptr, ptr %80, align 8, !dbg !4127
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4133
  store ptr %81, ptr %82, align 8, !dbg !4130, !tbaa !948
  %83 = icmp eq ptr %81, null, !dbg !4131
  br i1 %83, label %197, label %84, !dbg !4132

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4121, metadata !DIExpression()), !dbg !4125
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4121, metadata !DIExpression()), !dbg !4125
  %85 = icmp sgt i32 %79, -1, !dbg !4127
  br i1 %85, label %93, label %86, !dbg !4127

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4127
  store i32 %87, ptr %7, align 8, !dbg !4127
  %88 = icmp ult i32 %79, -7, !dbg !4127
  br i1 %88, label %89, label %93, !dbg !4127

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4127
  %91 = sext i32 %79 to i64, !dbg !4127
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4127
  br label %97, !dbg !4127

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4127
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4127
  store ptr %96, ptr %4, align 8, !dbg !4127
  br label %97, !dbg !4127

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4127
  %100 = load ptr, ptr %99, align 8, !dbg !4127
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4133
  store ptr %100, ptr %101, align 8, !dbg !4130, !tbaa !948
  %102 = icmp eq ptr %100, null, !dbg !4131
  br i1 %102, label %197, label %103, !dbg !4132

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4121, metadata !DIExpression()), !dbg !4125
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4121, metadata !DIExpression()), !dbg !4125
  %104 = icmp sgt i32 %98, -1, !dbg !4127
  br i1 %104, label %112, label %105, !dbg !4127

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4127
  store i32 %106, ptr %7, align 8, !dbg !4127
  %107 = icmp ult i32 %98, -7, !dbg !4127
  br i1 %107, label %108, label %112, !dbg !4127

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4127
  %110 = sext i32 %98 to i64, !dbg !4127
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4127
  br label %116, !dbg !4127

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4127
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4127
  store ptr %115, ptr %4, align 8, !dbg !4127
  br label %116, !dbg !4127

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4127
  %119 = load ptr, ptr %118, align 8, !dbg !4127
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4133
  store ptr %119, ptr %120, align 8, !dbg !4130, !tbaa !948
  %121 = icmp eq ptr %119, null, !dbg !4131
  br i1 %121, label %197, label %122, !dbg !4132

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4121, metadata !DIExpression()), !dbg !4125
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4121, metadata !DIExpression()), !dbg !4125
  %123 = icmp sgt i32 %117, -1, !dbg !4127
  br i1 %123, label %131, label %124, !dbg !4127

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4127
  store i32 %125, ptr %7, align 8, !dbg !4127
  %126 = icmp ult i32 %117, -7, !dbg !4127
  br i1 %126, label %127, label %131, !dbg !4127

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4127
  %129 = sext i32 %117 to i64, !dbg !4127
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4127
  br label %135, !dbg !4127

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4127
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4127
  store ptr %134, ptr %4, align 8, !dbg !4127
  br label %135, !dbg !4127

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4127
  %138 = load ptr, ptr %137, align 8, !dbg !4127
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4133
  store ptr %138, ptr %139, align 8, !dbg !4130, !tbaa !948
  %140 = icmp eq ptr %138, null, !dbg !4131
  br i1 %140, label %197, label %141, !dbg !4132

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4121, metadata !DIExpression()), !dbg !4125
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4121, metadata !DIExpression()), !dbg !4125
  %142 = icmp sgt i32 %136, -1, !dbg !4127
  br i1 %142, label %150, label %143, !dbg !4127

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4127
  store i32 %144, ptr %7, align 8, !dbg !4127
  %145 = icmp ult i32 %136, -7, !dbg !4127
  br i1 %145, label %146, label %150, !dbg !4127

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4127
  %148 = sext i32 %136 to i64, !dbg !4127
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4127
  br label %154, !dbg !4127

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4127
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4127
  store ptr %153, ptr %4, align 8, !dbg !4127
  br label %154, !dbg !4127

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4127
  %157 = load ptr, ptr %156, align 8, !dbg !4127
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4133
  store ptr %157, ptr %158, align 8, !dbg !4130, !tbaa !948
  %159 = icmp eq ptr %157, null, !dbg !4131
  br i1 %159, label %197, label %160, !dbg !4132

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4121, metadata !DIExpression()), !dbg !4125
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4121, metadata !DIExpression()), !dbg !4125
  %161 = icmp sgt i32 %155, -1, !dbg !4127
  br i1 %161, label %169, label %162, !dbg !4127

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4127
  store i32 %163, ptr %7, align 8, !dbg !4127
  %164 = icmp ult i32 %155, -7, !dbg !4127
  br i1 %164, label %165, label %169, !dbg !4127

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4127
  %167 = sext i32 %155 to i64, !dbg !4127
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4127
  br label %173, !dbg !4127

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4127
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4127
  store ptr %172, ptr %4, align 8, !dbg !4127
  br label %173, !dbg !4127

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4127
  %176 = load ptr, ptr %175, align 8, !dbg !4127
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4133
  store ptr %176, ptr %177, align 8, !dbg !4130, !tbaa !948
  %178 = icmp eq ptr %176, null, !dbg !4131
  br i1 %178, label %197, label %179, !dbg !4132

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4121, metadata !DIExpression()), !dbg !4125
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4121, metadata !DIExpression()), !dbg !4125
  %180 = icmp sgt i32 %174, -1, !dbg !4127
  br i1 %180, label %188, label %181, !dbg !4127

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4127
  store i32 %182, ptr %7, align 8, !dbg !4127
  %183 = icmp ult i32 %174, -7, !dbg !4127
  br i1 %183, label %184, label %188, !dbg !4127

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4127
  %186 = sext i32 %174 to i64, !dbg !4127
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4127
  br label %191, !dbg !4127

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4127
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4127
  store ptr %190, ptr %4, align 8, !dbg !4127
  br label %191, !dbg !4127

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4127
  %193 = load ptr, ptr %192, align 8, !dbg !4127
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4133
  store ptr %193, ptr %194, align 8, !dbg !4130, !tbaa !948
  %195 = icmp eq ptr %193, null, !dbg !4131
  %196 = select i1 %195, i64 9, i64 10, !dbg !4132
  br label %197, !dbg !4132

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4134
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4135
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #42, !dbg !4136
  ret void, !dbg !4136
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #11 !dbg !4137 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !4146
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4145, metadata !DIExpression(), metadata !4146, metadata ptr %5, metadata !DIExpression()), !dbg !4147
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4141, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4142, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4143, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4144, metadata !DIExpression()), !dbg !4147
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #42, !dbg !4148
  call void @llvm.va_start(ptr nonnull %5), !dbg !4149
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #42, !dbg !4150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4150, !tbaa.struct !1654
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4150
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #42, !dbg !4150
  call void @llvm.va_end(ptr nonnull %5), !dbg !4151
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #42, !dbg !4152
  ret void, !dbg !4152
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #11 !dbg !4153 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4154, !tbaa !948
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.128, ptr noundef %1), !dbg !4154
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.17.145, i32 noundef 5) #42, !dbg !4155
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.146) #42, !dbg !4155
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.19.147, i32 noundef 5) #42, !dbg !4156
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.148, ptr noundef nonnull @.str.21.149) #42, !dbg !4156
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.22.150, i32 noundef 5) #42, !dbg !4157
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.151) #42, !dbg !4157
  ret void, !dbg !4158
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4159 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4164, metadata !DIExpression()), !dbg !4167
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4165, metadata !DIExpression()), !dbg !4167
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4166, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata ptr %0, metadata !4168, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i64 %1, metadata !4171, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i64 %2, metadata !4172, metadata !DIExpression()), !dbg !4173
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4175
  call void @llvm.dbg.value(metadata ptr %4, metadata !4176, metadata !DIExpression()), !dbg !4181
  %5 = icmp eq ptr %4, null, !dbg !4183
  br i1 %5, label %6, label %7, !dbg !4185

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4186
  unreachable, !dbg !4186

7:                                                ; preds = %3
  ret ptr %4, !dbg !4187
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4169 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4168, metadata !DIExpression()), !dbg !4188
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4171, metadata !DIExpression()), !dbg !4188
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4172, metadata !DIExpression()), !dbg !4188
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4189
  call void @llvm.dbg.value(metadata ptr %4, metadata !4176, metadata !DIExpression()), !dbg !4190
  %5 = icmp eq ptr %4, null, !dbg !4192
  br i1 %5, label %6, label %7, !dbg !4193

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4194
  unreachable, !dbg !4194

7:                                                ; preds = %3
  ret ptr %4, !dbg !4195
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4196 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4200, metadata !DIExpression()), !dbg !4201
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4202
  call void @llvm.dbg.value(metadata ptr %2, metadata !4176, metadata !DIExpression()), !dbg !4203
  %3 = icmp eq ptr %2, null, !dbg !4205
  br i1 %3, label %4, label %5, !dbg !4206

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4207
  unreachable, !dbg !4207

5:                                                ; preds = %1
  ret ptr %2, !dbg !4208
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4209 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4210 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4214, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i64 %0, metadata !4216, metadata !DIExpression()), !dbg !4220
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4222
  call void @llvm.dbg.value(metadata ptr %2, metadata !4176, metadata !DIExpression()), !dbg !4223
  %3 = icmp eq ptr %2, null, !dbg !4225
  br i1 %3, label %4, label %5, !dbg !4226

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4227
  unreachable, !dbg !4227

5:                                                ; preds = %1
  ret ptr %2, !dbg !4228
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4229 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4233, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i64 %0, metadata !4200, metadata !DIExpression()), !dbg !4235
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4237
  call void @llvm.dbg.value(metadata ptr %2, metadata !4176, metadata !DIExpression()), !dbg !4238
  %3 = icmp eq ptr %2, null, !dbg !4240
  br i1 %3, label %4, label %5, !dbg !4241

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4242
  unreachable, !dbg !4242

5:                                                ; preds = %1
  ret ptr %2, !dbg !4243
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4244 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4248, metadata !DIExpression()), !dbg !4250
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4249, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata ptr %0, metadata !4251, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i64 %1, metadata !4255, metadata !DIExpression()), !dbg !4256
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4258
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #48, !dbg !4259
  call void @llvm.dbg.value(metadata ptr %4, metadata !4176, metadata !DIExpression()), !dbg !4260
  %5 = icmp eq ptr %4, null, !dbg !4262
  br i1 %5, label %6, label %7, !dbg !4263

6:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4264
  unreachable, !dbg !4264

7:                                                ; preds = %2
  ret ptr %4, !dbg !4265
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4266 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4267 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4271, metadata !DIExpression()), !dbg !4273
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4272, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata ptr %0, metadata !4274, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata i64 %1, metadata !4277, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata ptr %0, metadata !4251, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i64 %1, metadata !4255, metadata !DIExpression()), !dbg !4280
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4282
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #48, !dbg !4283
  call void @llvm.dbg.value(metadata ptr %4, metadata !4176, metadata !DIExpression()), !dbg !4284
  %5 = icmp eq ptr %4, null, !dbg !4286
  br i1 %5, label %6, label %7, !dbg !4287

6:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4288
  unreachable, !dbg !4288

7:                                                ; preds = %2
  ret ptr %4, !dbg !4289
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4290 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4294, metadata !DIExpression()), !dbg !4297
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4295, metadata !DIExpression()), !dbg !4297
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4296, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata ptr %0, metadata !4298, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata i64 %1, metadata !4301, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata i64 %2, metadata !4302, metadata !DIExpression()), !dbg !4303
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4305
  call void @llvm.dbg.value(metadata ptr %4, metadata !4176, metadata !DIExpression()), !dbg !4306
  %5 = icmp eq ptr %4, null, !dbg !4308
  br i1 %5, label %6, label %7, !dbg !4309

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4310
  unreachable, !dbg !4310

7:                                                ; preds = %3
  ret ptr %4, !dbg !4311
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4312 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4316, metadata !DIExpression()), !dbg !4318
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4317, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata ptr null, metadata !4168, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i64 %0, metadata !4171, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i64 %1, metadata !4172, metadata !DIExpression()), !dbg !4319
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #42, !dbg !4321
  call void @llvm.dbg.value(metadata ptr %3, metadata !4176, metadata !DIExpression()), !dbg !4322
  %4 = icmp eq ptr %3, null, !dbg !4324
  br i1 %4, label %5, label %6, !dbg !4325

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4326
  unreachable, !dbg !4326

6:                                                ; preds = %2
  ret ptr %3, !dbg !4327
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4328 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4332, metadata !DIExpression()), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4333, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr null, metadata !4294, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i64 %0, metadata !4295, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i64 %1, metadata !4296, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata ptr null, metadata !4298, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.value(metadata i64 %0, metadata !4301, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.value(metadata i64 %1, metadata !4302, metadata !DIExpression()), !dbg !4337
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #42, !dbg !4339
  call void @llvm.dbg.value(metadata ptr %3, metadata !4176, metadata !DIExpression()), !dbg !4340
  %4 = icmp eq ptr %3, null, !dbg !4342
  br i1 %4, label %5, label %6, !dbg !4343

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4344
  unreachable, !dbg !4344

6:                                                ; preds = %2
  ret ptr %3, !dbg !4345
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #11 !dbg !4346 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4350, metadata !DIExpression()), !dbg !4352
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4351, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata ptr %0, metadata !889, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata ptr %1, metadata !890, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i64 1, metadata !891, metadata !DIExpression()), !dbg !4353
  %3 = load i64, ptr %1, align 8, !dbg !4355, !tbaa !1203
  call void @llvm.dbg.value(metadata i64 %3, metadata !892, metadata !DIExpression()), !dbg !4353
  %4 = icmp eq ptr %0, null, !dbg !4356
  br i1 %4, label %5, label %8, !dbg !4358

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4359
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4362
  br label %15, !dbg !4362

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4363
  %10 = add nuw i64 %9, 1, !dbg !4363
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4363
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4363
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4363
  call void @llvm.dbg.value(metadata i64 %13, metadata !892, metadata !DIExpression()), !dbg !4353
  br i1 %12, label %14, label %15, !dbg !4366

14:                                               ; preds = %8
  tail call void @xalloc_die() #44, !dbg !4367
  unreachable, !dbg !4367

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4353
  call void @llvm.dbg.value(metadata i64 %16, metadata !892, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata ptr %0, metadata !4168, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata i64 %16, metadata !4171, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata i64 1, metadata !4172, metadata !DIExpression()), !dbg !4368
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #42, !dbg !4370
  call void @llvm.dbg.value(metadata ptr %17, metadata !4176, metadata !DIExpression()), !dbg !4371
  %18 = icmp eq ptr %17, null, !dbg !4373
  br i1 %18, label %19, label %20, !dbg !4374

19:                                               ; preds = %15
  tail call void @xalloc_die() #44, !dbg !4375
  unreachable, !dbg !4375

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !889, metadata !DIExpression()), !dbg !4353
  store i64 %16, ptr %1, align 8, !dbg !4376, !tbaa !1203
  ret ptr %17, !dbg !4377
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !884 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !889, metadata !DIExpression()), !dbg !4378
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !890, metadata !DIExpression()), !dbg !4378
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !891, metadata !DIExpression()), !dbg !4378
  %4 = load i64, ptr %1, align 8, !dbg !4379, !tbaa !1203
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !892, metadata !DIExpression()), !dbg !4378
  %5 = icmp eq ptr %0, null, !dbg !4380
  br i1 %5, label %6, label %13, !dbg !4381

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4382
  br i1 %7, label %8, label %20, !dbg !4383

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4384
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !892, metadata !DIExpression()), !dbg !4378
  %10 = icmp ugt i64 %2, 128, !dbg !4386
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4387
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !892, metadata !DIExpression()), !dbg !4378
  br label %20, !dbg !4388

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4389
  %15 = add nuw i64 %14, 1, !dbg !4389
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4389
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4389
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4389
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !892, metadata !DIExpression()), !dbg !4378
  br i1 %17, label %19, label %20, !dbg !4390

19:                                               ; preds = %13
  tail call void @xalloc_die() #44, !dbg !4391
  unreachable, !dbg !4391

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4378
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !892, metadata !DIExpression()), !dbg !4378
  call void @llvm.dbg.value(metadata ptr %0, metadata !4168, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i64 %21, metadata !4171, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i64 %2, metadata !4172, metadata !DIExpression()), !dbg !4392
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #42, !dbg !4394
  call void @llvm.dbg.value(metadata ptr %22, metadata !4176, metadata !DIExpression()), !dbg !4395
  %23 = icmp eq ptr %22, null, !dbg !4397
  br i1 %23, label %24, label %25, !dbg !4398

24:                                               ; preds = %20
  tail call void @xalloc_die() #44, !dbg !4399
  unreachable, !dbg !4399

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !889, metadata !DIExpression()), !dbg !4378
  store i64 %21, ptr %1, align 8, !dbg !4400, !tbaa !1203
  ret ptr %22, !dbg !4401
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #11 !dbg !896 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !905, metadata !DIExpression()), !dbg !4402
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !906, metadata !DIExpression()), !dbg !4402
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !907, metadata !DIExpression()), !dbg !4402
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !908, metadata !DIExpression()), !dbg !4402
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !909, metadata !DIExpression()), !dbg !4402
  %6 = load i64, ptr %1, align 8, !dbg !4403, !tbaa !1203
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !910, metadata !DIExpression()), !dbg !4402
  %7 = ashr i64 %6, 1, !dbg !4404
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4404
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4404
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4404
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !911, metadata !DIExpression()), !dbg !4402
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4406
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !911, metadata !DIExpression()), !dbg !4402
  %12 = icmp sgt i64 %3, -1, !dbg !4407
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4409
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4409
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !911, metadata !DIExpression()), !dbg !4402
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4410
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4410
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4410
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !912, metadata !DIExpression()), !dbg !4402
  %18 = icmp slt i64 %17, 128, !dbg !4410
  %19 = select i1 %18, i64 128, i64 0, !dbg !4410
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4410
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !913, metadata !DIExpression()), !dbg !4402
  %21 = icmp eq i64 %20, 0, !dbg !4411
  br i1 %21, label %28, label %22, !dbg !4413

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !4414
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !911, metadata !DIExpression()), !dbg !4402
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !4416
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !912, metadata !DIExpression()), !dbg !4402
  br label %28, !dbg !4417

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !4402
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !4402
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !912, metadata !DIExpression()), !dbg !4402
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !911, metadata !DIExpression()), !dbg !4402
  %31 = icmp eq ptr %0, null, !dbg !4418
  br i1 %31, label %32, label %33, !dbg !4420

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !4421, !tbaa !1203
  br label %33, !dbg !4422

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !4423
  %35 = icmp slt i64 %34, %2, !dbg !4425
  br i1 %35, label %36, label %48, !dbg !4426

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4427
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !4427
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !4427
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !911, metadata !DIExpression()), !dbg !4402
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !4428
  br i1 %42, label %47, label %43, !dbg !4428

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !4429
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !4429
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !4429
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !912, metadata !DIExpression()), !dbg !4402
  br i1 %45, label %47, label %48, !dbg !4430

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #44, !dbg !4431
  unreachable, !dbg !4431

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !4402
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !4402
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !912, metadata !DIExpression()), !dbg !4402
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !911, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata ptr %0, metadata !4248, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64 %50, metadata !4249, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata ptr %0, metadata !4251, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i64 %50, metadata !4255, metadata !DIExpression()), !dbg !4434
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !4436
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #48, !dbg !4437
  call void @llvm.dbg.value(metadata ptr %52, metadata !4176, metadata !DIExpression()), !dbg !4438
  %53 = icmp eq ptr %52, null, !dbg !4440
  br i1 %53, label %54, label %55, !dbg !4441

54:                                               ; preds = %48
  tail call void @xalloc_die() #44, !dbg !4442
  unreachable, !dbg !4442

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !905, metadata !DIExpression()), !dbg !4402
  store i64 %49, ptr %1, align 8, !dbg !4443, !tbaa !1203
  ret ptr %52, !dbg !4444
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4445 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4447, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata i64 %0, metadata !4449, metadata !DIExpression()), !dbg !4453
  call void @llvm.dbg.value(metadata i64 1, metadata !4452, metadata !DIExpression()), !dbg !4453
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #50, !dbg !4455
  call void @llvm.dbg.value(metadata ptr %2, metadata !4176, metadata !DIExpression()), !dbg !4456
  %3 = icmp eq ptr %2, null, !dbg !4458
  br i1 %3, label %4, label %5, !dbg !4459

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4460
  unreachable, !dbg !4460

5:                                                ; preds = %1
  ret ptr %2, !dbg !4461
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4462 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4450 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4449, metadata !DIExpression()), !dbg !4463
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4452, metadata !DIExpression()), !dbg !4463
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #50, !dbg !4464
  call void @llvm.dbg.value(metadata ptr %3, metadata !4176, metadata !DIExpression()), !dbg !4465
  %4 = icmp eq ptr %3, null, !dbg !4467
  br i1 %4, label %5, label %6, !dbg !4468

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4469
  unreachable, !dbg !4469

6:                                                ; preds = %2
  ret ptr %3, !dbg !4470
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4471 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4473, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata i64 %0, metadata !4475, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i64 1, metadata !4478, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i64 %0, metadata !4481, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata i64 1, metadata !4484, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata i64 %0, metadata !4481, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata i64 1, metadata !4484, metadata !DIExpression()), !dbg !4485
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #50, !dbg !4487
  call void @llvm.dbg.value(metadata ptr %2, metadata !4176, metadata !DIExpression()), !dbg !4488
  %3 = icmp eq ptr %2, null, !dbg !4490
  br i1 %3, label %4, label %5, !dbg !4491

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4492
  unreachable, !dbg !4492

5:                                                ; preds = %1
  ret ptr %2, !dbg !4493
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4476 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4475, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4478, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i64 %0, metadata !4481, metadata !DIExpression()), !dbg !4495
  call void @llvm.dbg.value(metadata i64 %1, metadata !4484, metadata !DIExpression()), !dbg !4495
  call void @llvm.dbg.value(metadata i64 %0, metadata !4481, metadata !DIExpression()), !dbg !4495
  call void @llvm.dbg.value(metadata i64 %1, metadata !4484, metadata !DIExpression()), !dbg !4495
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #50, !dbg !4497
  call void @llvm.dbg.value(metadata ptr %3, metadata !4176, metadata !DIExpression()), !dbg !4498
  %4 = icmp eq ptr %3, null, !dbg !4500
  br i1 %4, label %5, label %6, !dbg !4501

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4502
  unreachable, !dbg !4502

6:                                                ; preds = %2
  ret ptr %3, !dbg !4503
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4504 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4508, metadata !DIExpression()), !dbg !4510
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4509, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i64 %1, metadata !4200, metadata !DIExpression()), !dbg !4511
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #49, !dbg !4513
  call void @llvm.dbg.value(metadata ptr %3, metadata !4176, metadata !DIExpression()), !dbg !4514
  %4 = icmp eq ptr %3, null, !dbg !4516
  br i1 %4, label %5, label %6, !dbg !4517

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4518
  unreachable, !dbg !4518

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4519, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i64 %1, metadata !4523, metadata !DIExpression()), !dbg !4524
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !4526
  ret ptr %3, !dbg !4527
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4528 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4532, metadata !DIExpression()), !dbg !4534
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4533, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i64 %1, metadata !4214, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i64 %1, metadata !4216, metadata !DIExpression()), !dbg !4537
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #49, !dbg !4539
  call void @llvm.dbg.value(metadata ptr %3, metadata !4176, metadata !DIExpression()), !dbg !4540
  %4 = icmp eq ptr %3, null, !dbg !4542
  br i1 %4, label %5, label %6, !dbg !4543

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4544
  unreachable, !dbg !4544

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4519, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.value(metadata i64 %1, metadata !4523, metadata !DIExpression()), !dbg !4545
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !4547
  ret ptr %3, !dbg !4548
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #11 !dbg !4549 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4553, metadata !DIExpression()), !dbg !4556
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4554, metadata !DIExpression()), !dbg !4556
  %3 = add nsw i64 %1, 1, !dbg !4557
  call void @llvm.dbg.value(metadata i64 %3, metadata !4214, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %3, metadata !4216, metadata !DIExpression()), !dbg !4560
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #49, !dbg !4562
  call void @llvm.dbg.value(metadata ptr %4, metadata !4176, metadata !DIExpression()), !dbg !4563
  %5 = icmp eq ptr %4, null, !dbg !4565
  br i1 %5, label %6, label %7, !dbg !4566

6:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4567
  unreachable, !dbg !4567

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4555, metadata !DIExpression()), !dbg !4556
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4568
  store i8 0, ptr %8, align 1, !dbg !4569, !tbaa !1029
  call void @llvm.dbg.value(metadata ptr %4, metadata !4519, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i64 %1, metadata !4523, metadata !DIExpression()), !dbg !4570
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !4572
  ret ptr %4, !dbg !4573
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !dbg !4574 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4576, metadata !DIExpression()), !dbg !4577
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #43, !dbg !4578
  %3 = add i64 %2, 1, !dbg !4579
  call void @llvm.dbg.value(metadata ptr %0, metadata !4508, metadata !DIExpression()), !dbg !4580
  call void @llvm.dbg.value(metadata i64 %3, metadata !4509, metadata !DIExpression()), !dbg !4580
  call void @llvm.dbg.value(metadata i64 %3, metadata !4200, metadata !DIExpression()), !dbg !4582
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #49, !dbg !4584
  call void @llvm.dbg.value(metadata ptr %4, metadata !4176, metadata !DIExpression()), !dbg !4585
  %5 = icmp eq ptr %4, null, !dbg !4587
  br i1 %5, label %6, label %7, !dbg !4588

6:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4589
  unreachable, !dbg !4589

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4519, metadata !DIExpression()), !dbg !4590
  call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4590
  call void @llvm.dbg.value(metadata i64 %3, metadata !4523, metadata !DIExpression()), !dbg !4590
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #42, !dbg !4592
  ret ptr %4, !dbg !4593
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4594 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4598, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4596, metadata !DIExpression()), !dbg !4599
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.162, ptr noundef nonnull @.str.2.163, i32 noundef 5) #42, !dbg !4598
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.164, ptr noundef %2) #42, !dbg !4598
  %3 = icmp eq i32 %1, 0, !dbg !4598
  tail call void @llvm.assume(i1 %3), !dbg !4598
  tail call void @abort() #44, !dbg !4600
  unreachable, !dbg !4600
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xmemcoll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !4601 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4605, metadata !DIExpression()), !dbg !4611
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4606, metadata !DIExpression()), !dbg !4611
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4607, metadata !DIExpression()), !dbg !4611
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4608, metadata !DIExpression()), !dbg !4611
  %5 = tail call i32 @memcoll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #42, !dbg !4612
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !4609, metadata !DIExpression()), !dbg !4611
  %6 = tail call ptr @__errno_location() #45, !dbg !4613
  %7 = load i32, ptr %6, align 4, !dbg !4613, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !4610, metadata !DIExpression()), !dbg !4611
  %8 = icmp eq i32 %7, 0, !dbg !4614
  br i1 %8, label %17, label %9, !dbg !4616

9:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 %7, metadata !4617, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata ptr %0, metadata !4622, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i64 %1, metadata !4623, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata ptr %2, metadata !4624, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i64 %3, metadata !4625, metadata !DIExpression()), !dbg !4628
  %10 = tail call ptr @dcgettext(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.1.168, i32 noundef 5) #42, !dbg !4630
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %7, ptr noundef %10) #42, !dbg !4630
  %11 = tail call ptr @dcgettext(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.2.169, i32 noundef 5) #42, !dbg !4631
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %11) #42, !dbg !4631
  %12 = load volatile i32, ptr @exit_failure, align 4, !dbg !4632, !tbaa !1020
  call void @llvm.dbg.value(metadata i32 %12, metadata !4626, metadata !DIExpression()), !dbg !4633
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.3.170, i32 noundef 5) #42, !dbg !4632
  %14 = tail call ptr @quotearg_n_style_mem(i32 noundef 0, i32 noundef 8, ptr noundef %0, i64 noundef %1) #42, !dbg !4632
  %15 = tail call ptr @quotearg_n_style_mem(i32 noundef 1, i32 noundef 8, ptr noundef %2, i64 noundef %3) #42, !dbg !4632
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %12, i32 noundef 0, ptr noundef %13, ptr noundef %14, ptr noundef %15) #42, !dbg !4632
  %16 = icmp eq i32 %12, 0, !dbg !4632
  tail call void @llvm.assume(i1 %16), !dbg !4632
  br label %17, !dbg !4634

17:                                               ; preds = %9, %4
  ret i32 %5, !dbg !4635
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xmemcoll0(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !4636 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4638, metadata !DIExpression()), !dbg !4644
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4639, metadata !DIExpression()), !dbg !4644
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4640, metadata !DIExpression()), !dbg !4644
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4641, metadata !DIExpression()), !dbg !4644
  %5 = tail call i32 @memcoll0(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #42, !dbg !4645
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !4642, metadata !DIExpression()), !dbg !4644
  %6 = tail call ptr @__errno_location() #45, !dbg !4646
  %7 = load i32, ptr %6, align 4, !dbg !4646, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !4643, metadata !DIExpression()), !dbg !4644
  %8 = icmp eq i32 %7, 0, !dbg !4647
  br i1 %8, label %19, label %9, !dbg !4649

9:                                                ; preds = %4
  %10 = add i64 %1, -1, !dbg !4650
  %11 = add i64 %3, -1, !dbg !4651
  call void @llvm.dbg.value(metadata i32 %7, metadata !4617, metadata !DIExpression()), !dbg !4652
  call void @llvm.dbg.value(metadata ptr %0, metadata !4622, metadata !DIExpression()), !dbg !4652
  call void @llvm.dbg.value(metadata i64 %10, metadata !4623, metadata !DIExpression()), !dbg !4652
  call void @llvm.dbg.value(metadata ptr %2, metadata !4624, metadata !DIExpression()), !dbg !4652
  call void @llvm.dbg.value(metadata i64 %11, metadata !4625, metadata !DIExpression()), !dbg !4652
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.1.168, i32 noundef 5) #42, !dbg !4654
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %7, ptr noundef %12) #42, !dbg !4654
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.2.169, i32 noundef 5) #42, !dbg !4655
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13) #42, !dbg !4655
  %14 = load volatile i32, ptr @exit_failure, align 4, !dbg !4656, !tbaa !1020
  call void @llvm.dbg.value(metadata i32 %14, metadata !4626, metadata !DIExpression()), !dbg !4657
  %15 = tail call ptr @dcgettext(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.3.170, i32 noundef 5) #42, !dbg !4656
  %16 = tail call ptr @quotearg_n_style_mem(i32 noundef 0, i32 noundef 8, ptr noundef %0, i64 noundef %10) #42, !dbg !4656
  %17 = tail call ptr @quotearg_n_style_mem(i32 noundef 1, i32 noundef 8, ptr noundef %2, i64 noundef %11) #42, !dbg !4656
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %14, i32 noundef 0, ptr noundef %15, ptr noundef %16, ptr noundef %17) #42, !dbg !4656
  %18 = icmp eq i32 %14, 0, !dbg !4656
  tail call void @llvm.assume(i1 %18), !dbg !4656
  br label %19, !dbg !4658

19:                                               ; preds = %9, %4
  ret i32 %5, !dbg !4659
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #11 !dbg !4660 {
  %3 = alloca [81 x i8], align 1, !DIAssignID !4722
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4703, metadata !DIExpression(), metadata !4722, metadata ptr %3, metadata !DIExpression()), !dbg !4723
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4698, metadata !DIExpression()), !dbg !4723
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4699, metadata !DIExpression()), !dbg !4723
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4700, metadata !DIExpression()), !dbg !4723
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4701, metadata !DIExpression()), !dbg !4723
  tail call void @llvm.dbg.value(metadata i8 0, metadata !4702, metadata !DIExpression()), !dbg !4723
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #42, !dbg !4724
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4707, metadata !DIExpression()), !dbg !4725
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4709, metadata !DIExpression()), !dbg !4725
  br label %4, !dbg !4726

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4725
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4723
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4727
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4728
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !4700, metadata !DIExpression()), !dbg !4723
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4701, metadata !DIExpression()), !dbg !4723
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4709, metadata !DIExpression()), !dbg !4725
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4707, metadata !DIExpression()), !dbg !4725
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4702, metadata !DIExpression()), !dbg !4723
  %11 = load i8, ptr %6, align 1, !dbg !4728, !tbaa !1029
  switch i8 %11, label %38 [
    i8 0, label %.loopexit
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4729

12:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4700, metadata !DIExpression()), !dbg !4723
  %13 = icmp slt i64 %7, 80, !dbg !4730
  br i1 %13, label %14, label %43, !dbg !4733

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4734
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4709, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4725
  store i8 114, ptr %10, align 1, !dbg !4735, !tbaa !1029
  br label %43, !dbg !4736

16:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4700, metadata !DIExpression()), !dbg !4723
  %17 = or i32 %8, 576, !dbg !4737
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4701, metadata !DIExpression()), !dbg !4723
  %18 = icmp slt i64 %7, 80, !dbg !4738
  br i1 %18, label %19, label %43, !dbg !4740

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4741
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4709, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4725
  store i8 119, ptr %10, align 1, !dbg !4742, !tbaa !1029
  br label %43, !dbg !4743

21:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4700, metadata !DIExpression()), !dbg !4723
  %22 = or i32 %8, 1088, !dbg !4744
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !4701, metadata !DIExpression()), !dbg !4723
  %23 = icmp slt i64 %7, 80, !dbg !4745
  br i1 %23, label %24, label %43, !dbg !4747

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4748
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4709, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4725
  store i8 97, ptr %10, align 1, !dbg !4749, !tbaa !1029
  br label %43, !dbg !4750

26:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4701, metadata !DIExpression()), !dbg !4723
  %27 = icmp slt i64 %7, 80, !dbg !4751
  br i1 %27, label %28, label %43, !dbg !4753

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4754
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4709, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4725
  store i8 98, ptr %10, align 1, !dbg !4755, !tbaa !1029
  br label %43, !dbg !4756

30:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4700, metadata !DIExpression()), !dbg !4723
  %31 = icmp slt i64 %7, 80, !dbg !4757
  br i1 %31, label %32, label %43, !dbg !4759

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4760
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4709, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4725
  store i8 43, ptr %10, align 1, !dbg !4761, !tbaa !1029
  br label %43, !dbg !4762

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4763
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !4701, metadata !DIExpression()), !dbg !4723
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4702, metadata !DIExpression()), !dbg !4723
  br label %43, !dbg !4764

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4765
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !4701, metadata !DIExpression()), !dbg !4723
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4702, metadata !DIExpression()), !dbg !4723
  br label %43, !dbg !4766

38:                                               ; preds = %4
  %.lcssa10 = phi i1 [ %5, %4 ]
  %.lcssa8 = phi ptr [ %6, %4 ], !dbg !4725
  %.lcssa6 = phi i64 [ %7, %4 ]
  %.lcssa4 = phi i32 [ %8, %4 ], !dbg !4723
  %.lcssa2 = phi i32 [ %9, %4 ], !dbg !4727
  %.lcssa = phi ptr [ %10, %4 ], !dbg !4728
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa8) #43, !dbg !4767
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !4710, metadata !DIExpression()), !dbg !4768
  %40 = sub nsw i64 80, %.lcssa6, !dbg !4769
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !4771
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !4710, metadata !DIExpression()), !dbg !4768
  call void @llvm.dbg.value(metadata ptr %.lcssa, metadata !4772, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.value(metadata ptr %.lcssa8, metadata !4775, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.value(metadata i64 %41, metadata !4776, metadata !DIExpression()), !dbg !4777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.lcssa, ptr noundef nonnull align 1 %.lcssa8, i64 noundef %41, i1 noundef false) #42, !dbg !4779
  %42 = getelementptr inbounds i8, ptr %.lcssa, i64 %41, !dbg !4780
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !4709, metadata !DIExpression()), !dbg !4725
  br label %49, !dbg !4781

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4723
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4723
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !4700, metadata !DIExpression()), !dbg !4723
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !4701, metadata !DIExpression()), !dbg !4723
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4709, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4725
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4702, metadata !DIExpression()), !dbg !4723
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !4782
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !4707, metadata !DIExpression()), !dbg !4725
  br label %4, !dbg !4783, !llvm.loop !4784

.loopexit:                                        ; preds = %4
  %.lcssa11 = phi i1 [ %5, %4 ]
  %.lcssa5 = phi i32 [ %8, %4 ], !dbg !4723
  %.lcssa3 = phi i32 [ %9, %4 ], !dbg !4727
  %.lcssa1 = phi ptr [ %10, %4 ], !dbg !4728
  br label %49, !dbg !4786

49:                                               ; preds = %.loopexit, %38
  %50 = phi i1 [ %.lcssa10, %38 ], [ %.lcssa11, %.loopexit ]
  %51 = phi i32 [ %.lcssa4, %38 ], [ %.lcssa5, %.loopexit ]
  %52 = phi i32 [ %.lcssa2, %38 ], [ %.lcssa3, %.loopexit ]
  %53 = phi ptr [ %42, %38 ], [ %.lcssa1, %.loopexit ], !dbg !4725
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !4709, metadata !DIExpression()), !dbg !4725
  store i8 0, ptr %53, align 1, !dbg !4786, !tbaa !1029
  br i1 %50, label %54, label %65, !dbg !4787

54:                                               ; preds = %49
  %55 = or i32 %52, %51, !dbg !4788
  %56 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %55, i32 noundef 438) #42, !dbg !4789
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !4715, metadata !DIExpression()), !dbg !4790
  %57 = icmp slt i32 %56, 0, !dbg !4791
  br i1 %57, label %67, label %58, !dbg !4793

58:                                               ; preds = %54
  %59 = call noalias ptr @fdopen(i32 noundef %56, ptr noundef nonnull %3) #42, !dbg !4794
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !4718, metadata !DIExpression()), !dbg !4790
  %60 = icmp eq ptr %59, null, !dbg !4795
  br i1 %60, label %61, label %67, !dbg !4796

61:                                               ; preds = %58
  %62 = tail call ptr @__errno_location() #45, !dbg !4797
  %63 = load i32, ptr %62, align 4, !dbg !4797, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !4719, metadata !DIExpression()), !dbg !4798
  %64 = tail call i32 @close(i32 noundef %56) #42, !dbg !4799
  store i32 %63, ptr %62, align 4, !dbg !4800, !tbaa !1020
  br label %67, !dbg !4801

65:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !4802, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.value(metadata ptr %1, metadata !4805, metadata !DIExpression()), !dbg !4806
  %66 = tail call noalias noundef ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4808
  br label %67, !dbg !4809

67:                                               ; preds = %54, %61, %58, %65
  %68 = phi ptr [ %66, %65 ], [ null, %54 ], [ null, %61 ], [ %59, %58 ], !dbg !4723
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #42, !dbg !4810
  ret ptr %68, !dbg !4810
}

; Function Attrs: nofree
declare !dbg !4811 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #38

; Function Attrs: nofree nounwind
declare !dbg !4814 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #11 !dbg !4817 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4855, metadata !DIExpression()), !dbg !4860
  %2 = tail call i64 @__fpending(ptr noundef %0) #42, !dbg !4861
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4856, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4860
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4862, metadata !DIExpression()), !dbg !4865
  %3 = load i32, ptr %0, align 8, !dbg !4867, !tbaa !1353
  %4 = and i32 %3, 32, !dbg !4868
  %5 = icmp eq i32 %4, 0, !dbg !4868
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4858, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4860
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #42, !dbg !4869
  %7 = icmp eq i32 %6, 0, !dbg !4870
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4860
  br i1 %5, label %8, label %18, !dbg !4871

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4873
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4856, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4860
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4874
  %11 = xor i1 %7, true, !dbg !4874
  %12 = sext i1 %11 to i32, !dbg !4874
  br i1 %10, label %21, label %13, !dbg !4874

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #45, !dbg !4875
  %15 = load i32, ptr %14, align 4, !dbg !4875, !tbaa !1020
  %16 = icmp ne i32 %15, 9, !dbg !4876
  %17 = sext i1 %16 to i32, !dbg !4877
  br label %21, !dbg !4877

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4878

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #45, !dbg !4880
  store i32 0, ptr %20, align 4, !dbg !4882, !tbaa !1020
  br label %21, !dbg !4880

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4860
  ret i32 %22, !dbg !4883
}

; Function Attrs: nounwind
declare !dbg !4884 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #11 !dbg !4887 {
  %3 = alloca %struct.__va_list, align 8, !DIAssignID !4914
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4891, metadata !DIExpression(), metadata !4914, metadata ptr %3, metadata !DIExpression()), !dbg !4915
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4889, metadata !DIExpression()), !dbg !4915
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4890, metadata !DIExpression()), !dbg !4915
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #42, !dbg !4916
  call void @llvm.va_start(ptr nonnull %3), !dbg !4917
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4902, metadata !DIExpression()), !dbg !4915
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
  ], !dbg !4918

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4919
  %6 = load i32, ptr %5, align 8, !dbg !4919
  %7 = icmp sgt i32 %6, -1, !dbg !4919
  br i1 %7, label %16, label %8, !dbg !4919

8:                                                ; preds = %4
  %9 = add nsw i32 %6, 8, !dbg !4919
  store i32 %9, ptr %5, align 8, !dbg !4919, !DIAssignID !4920
  call void @llvm.dbg.assign(metadata i32 %9, metadata !4891, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !4920, metadata ptr %5, metadata !DIExpression()), !dbg !4915
  %10 = icmp ult i32 %6, -7, !dbg !4919
  br i1 %10, label %11, label %16, !dbg !4919

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4919
  %13 = load ptr, ptr %12, align 8, !dbg !4919
  %14 = sext i32 %6 to i64, !dbg !4919
  %15 = getelementptr inbounds i8, ptr %13, i64 %14, !dbg !4919
  br label %19, !dbg !4919

16:                                               ; preds = %8, %4
  %17 = load ptr, ptr %3, align 8, !dbg !4919
  %18 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !4919
  store ptr %18, ptr %3, align 8, !dbg !4919, !DIAssignID !4921
  call void @llvm.dbg.assign(metadata ptr %18, metadata !4891, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !4921, metadata ptr %3, metadata !DIExpression()), !dbg !4915
  br label %19, !dbg !4919

19:                                               ; preds = %16, %11
  %20 = phi ptr [ %15, %11 ], [ %17, %16 ], !dbg !4919
  %21 = load i32, ptr %20, align 8, !dbg !4919
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4903, metadata !DIExpression()), !dbg !4922
  call void @llvm.dbg.value(metadata i32 %0, metadata !4923, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.value(metadata i32 %21, metadata !4926, metadata !DIExpression()), !dbg !4928
  %22 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %21) #42, !dbg !4930
  call void @llvm.dbg.value(metadata i32 %22, metadata !4927, metadata !DIExpression()), !dbg !4928
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !4902, metadata !DIExpression()), !dbg !4915
  br label %115

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4931
  %25 = load i32, ptr %24, align 8, !dbg !4931
  %26 = icmp sgt i32 %25, -1, !dbg !4931
  br i1 %26, label %35, label %27, !dbg !4931

27:                                               ; preds = %23
  %28 = add nsw i32 %25, 8, !dbg !4931
  store i32 %28, ptr %24, align 8, !dbg !4931, !DIAssignID !4932
  call void @llvm.dbg.assign(metadata i32 %28, metadata !4891, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !4932, metadata ptr %24, metadata !DIExpression()), !dbg !4915
  %29 = icmp ult i32 %25, -7, !dbg !4931
  br i1 %29, label %30, label %35, !dbg !4931

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4931
  %32 = load ptr, ptr %31, align 8, !dbg !4931
  %33 = sext i32 %25 to i64, !dbg !4931
  %34 = getelementptr inbounds i8, ptr %32, i64 %33, !dbg !4931
  br label %38, !dbg !4931

35:                                               ; preds = %27, %23
  %36 = load ptr, ptr %3, align 8, !dbg !4931
  %37 = getelementptr inbounds i8, ptr %36, i64 8, !dbg !4931
  store ptr %37, ptr %3, align 8, !dbg !4931, !DIAssignID !4933
  call void @llvm.dbg.assign(metadata ptr %37, metadata !4891, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !4933, metadata ptr %3, metadata !DIExpression()), !dbg !4915
  br label %38, !dbg !4931

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %34, %30 ], [ %36, %35 ], !dbg !4931
  %40 = load i32, ptr %39, align 8, !dbg !4931
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !4906, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i32 %0, metadata !815, metadata !DIExpression()), !dbg !4935
  call void @llvm.dbg.value(metadata i32 %40, metadata !816, metadata !DIExpression()), !dbg !4935
  %41 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4937, !tbaa !1020
  %42 = icmp sgt i32 %41, -1, !dbg !4939
  br i1 %42, label %43, label %55, !dbg !4940

43:                                               ; preds = %38
  %44 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %40) #42, !dbg !4941
  call void @llvm.dbg.value(metadata i32 %44, metadata !817, metadata !DIExpression()), !dbg !4935
  %45 = icmp sgt i32 %44, -1, !dbg !4943
  br i1 %45, label %50, label %46, !dbg !4945

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #45, !dbg !4946
  %48 = load i32, ptr %47, align 4, !dbg !4946, !tbaa !1020
  %49 = icmp eq i32 %48, 22, !dbg !4947
  br i1 %49, label %51, label %50, !dbg !4948

50:                                               ; preds = %46, %43
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4949, !tbaa !1020
  call void @llvm.dbg.value(metadata i32 %44, metadata !817, metadata !DIExpression()), !dbg !4935
  br label %115, !dbg !4951

51:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %0, metadata !4923, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.value(metadata i32 %40, metadata !4926, metadata !DIExpression()), !dbg !4952
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #42, !dbg !4955
  call void @llvm.dbg.value(metadata i32 %52, metadata !4927, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.value(metadata i32 %52, metadata !817, metadata !DIExpression()), !dbg !4935
  %53 = icmp sgt i32 %52, -1, !dbg !4956
  br i1 %53, label %54, label %115, !dbg !4958

54:                                               ; preds = %51
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4959, !tbaa !1020
  br label %59, !dbg !4960

55:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !4923, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata i32 %40, metadata !4926, metadata !DIExpression()), !dbg !4961
  %56 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #42, !dbg !4963
  call void @llvm.dbg.value(metadata i32 %56, metadata !4927, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata i32 %56, metadata !817, metadata !DIExpression()), !dbg !4935
  %57 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %58 = icmp eq i32 %57, -1
  br label %59

59:                                               ; preds = %55, %54
  %60 = phi i1 [ true, %54 ], [ %58, %55 ]
  %61 = phi i32 [ %52, %54 ], [ %56, %55 ], !dbg !4964
  call void @llvm.dbg.value(metadata i32 %61, metadata !817, metadata !DIExpression()), !dbg !4935
  %62 = icmp sgt i32 %61, -1, !dbg !4965
  %63 = select i1 %62, i1 %60, i1 false, !dbg !4951
  br i1 %63, label %64, label %115, !dbg !4951

64:                                               ; preds = %59
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 1) #42, !dbg !4966
  call void @llvm.dbg.value(metadata i32 %65, metadata !818, metadata !DIExpression()), !dbg !4967
  %66 = icmp slt i32 %65, 0, !dbg !4968
  br i1 %66, label %71, label %67, !dbg !4969

67:                                               ; preds = %64
  %68 = or i32 %65, 1, !dbg !4970
  %69 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 2, i32 noundef %68) #42, !dbg !4971
  %70 = icmp eq i32 %69, -1, !dbg !4972
  br i1 %70, label %71, label %115, !dbg !4973

71:                                               ; preds = %67, %64
  %72 = tail call ptr @__errno_location() #45, !dbg !4974
  %73 = load i32, ptr %72, align 4, !dbg !4974, !tbaa !1020
  call void @llvm.dbg.value(metadata i32 %73, metadata !821, metadata !DIExpression()), !dbg !4975
  %74 = call i32 @close(i32 noundef %61) #42, !dbg !4976
  store i32 %73, ptr %72, align 4, !dbg !4977, !tbaa !1020
  call void @llvm.dbg.value(metadata i32 -1, metadata !817, metadata !DIExpression()), !dbg !4935
  br label %115, !dbg !4978

75:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %76 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #42, !dbg !4979
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !4902, metadata !DIExpression()), !dbg !4915
  br label %115, !dbg !4980

77:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %78 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4981
  %79 = load i32, ptr %78, align 8, !dbg !4981
  %80 = icmp sgt i32 %79, -1, !dbg !4981
  br i1 %80, label %89, label %81, !dbg !4981

81:                                               ; preds = %77
  %82 = add nsw i32 %79, 8, !dbg !4981
  store i32 %82, ptr %78, align 8, !dbg !4981, !DIAssignID !4982
  call void @llvm.dbg.assign(metadata i32 %82, metadata !4891, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !4982, metadata ptr %78, metadata !DIExpression()), !dbg !4915
  %83 = icmp ult i32 %79, -7, !dbg !4981
  br i1 %83, label %84, label %89, !dbg !4981

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4981
  %86 = load ptr, ptr %85, align 8, !dbg !4981
  %87 = sext i32 %79 to i64, !dbg !4981
  %88 = getelementptr inbounds i8, ptr %86, i64 %87, !dbg !4981
  br label %92, !dbg !4981

89:                                               ; preds = %81, %77
  %90 = load ptr, ptr %3, align 8, !dbg !4981
  %91 = getelementptr inbounds i8, ptr %90, i64 8, !dbg !4981
  store ptr %91, ptr %3, align 8, !dbg !4981, !DIAssignID !4983
  call void @llvm.dbg.assign(metadata ptr %91, metadata !4891, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !4983, metadata ptr %3, metadata !DIExpression()), !dbg !4915
  br label %92, !dbg !4981

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %88, %84 ], [ %90, %89 ], !dbg !4981
  %94 = load i32, ptr %93, align 8, !dbg !4981
  tail call void @llvm.dbg.value(metadata i32 %94, metadata !4908, metadata !DIExpression()), !dbg !4984
  %95 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %94) #42, !dbg !4985
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !4902, metadata !DIExpression()), !dbg !4915
  br label %115, !dbg !4986

96:                                               ; preds = %2
  %97 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4987
  %98 = load i32, ptr %97, align 8, !dbg !4987
  %99 = icmp sgt i32 %98, -1, !dbg !4987
  br i1 %99, label %108, label %100, !dbg !4987

100:                                              ; preds = %96
  %101 = add nsw i32 %98, 8, !dbg !4987
  store i32 %101, ptr %97, align 8, !dbg !4987, !DIAssignID !4988
  call void @llvm.dbg.assign(metadata i32 %101, metadata !4891, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !4988, metadata ptr %97, metadata !DIExpression()), !dbg !4915
  %102 = icmp ult i32 %98, -7, !dbg !4987
  br i1 %102, label %103, label %108, !dbg !4987

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4987
  %105 = load ptr, ptr %104, align 8, !dbg !4987
  %106 = sext i32 %98 to i64, !dbg !4987
  %107 = getelementptr inbounds i8, ptr %105, i64 %106, !dbg !4987
  br label %111, !dbg !4987

108:                                              ; preds = %100, %96
  %109 = load ptr, ptr %3, align 8, !dbg !4987
  %110 = getelementptr inbounds i8, ptr %109, i64 8, !dbg !4987
  store ptr %110, ptr %3, align 8, !dbg !4987, !DIAssignID !4989
  call void @llvm.dbg.assign(metadata ptr %110, metadata !4891, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !4989, metadata ptr %3, metadata !DIExpression()), !dbg !4915
  br label %111, !dbg !4987

111:                                              ; preds = %108, %103
  %112 = phi ptr [ %107, %103 ], [ %109, %108 ], !dbg !4987
  %113 = load ptr, ptr %112, align 8, !dbg !4987
  tail call void @llvm.dbg.value(metadata ptr %113, metadata !4912, metadata !DIExpression()), !dbg !4990
  %114 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %113) #42, !dbg !4991
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !4902, metadata !DIExpression()), !dbg !4915
  br label %115, !dbg !4992

115:                                              ; preds = %71, %67, %59, %51, %50, %75, %92, %111, %19
  %116 = phi i32 [ %114, %111 ], [ %95, %92 ], [ %76, %75 ], [ %22, %19 ], [ %61, %59 ], [ -1, %71 ], [ %61, %67 ], [ %52, %51 ], [ %44, %50 ], !dbg !4993
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !4902, metadata !DIExpression()), !dbg !4915
  call void @llvm.va_end(ptr nonnull %3), !dbg !4994
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #42, !dbg !4995
  ret i32 %116, !dbg !4996
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #11 !dbg !4997 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5002, metadata !DIExpression()), !dbg !5007
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5003, metadata !DIExpression()), !dbg !5007
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5004, metadata !DIExpression()), !dbg !5007
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5005, metadata !DIExpression()), !dbg !5007
  %5 = icmp eq ptr %1, null, !dbg !5008
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5010
  %7 = select i1 %5, ptr @.str.179, ptr %1, !dbg !5010
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5010
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5004, metadata !DIExpression()), !dbg !5007
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5003, metadata !DIExpression()), !dbg !5007
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5002, metadata !DIExpression()), !dbg !5007
  %9 = icmp eq ptr %3, null, !dbg !5011
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5013
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5005, metadata !DIExpression()), !dbg !5007
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #42, !dbg !5014
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5006, metadata !DIExpression()), !dbg !5007
  %12 = icmp ult i64 %11, -3, !dbg !5015
  br i1 %12, label %13, label %17, !dbg !5017

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #43, !dbg !5018
  %15 = icmp eq i32 %14, 0, !dbg !5018
  br i1 %15, label %16, label %29, !dbg !5019

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5020, metadata !DIExpression()), !dbg !5025
  call void @llvm.dbg.value(metadata ptr %10, metadata !5027, metadata !DIExpression()), !dbg !5032
  call void @llvm.dbg.value(metadata i32 0, metadata !5030, metadata !DIExpression()), !dbg !5032
  call void @llvm.dbg.value(metadata i64 8, metadata !5031, metadata !DIExpression()), !dbg !5032
  store i64 0, ptr %10, align 1, !dbg !5034
  br label %29, !dbg !5035

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5036
  br i1 %18, label %19, label %20, !dbg !5038

19:                                               ; preds = %17
  tail call void @abort() #44, !dbg !5039
  unreachable, !dbg !5039

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5040

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #42, !dbg !5042
  br i1 %23, label %29, label %24, !dbg !5043

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5044
  br i1 %25, label %29, label %26, !dbg !5047

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5048, !tbaa !1029
  %28 = zext i8 %27 to i32, !dbg !5049
  store i32 %28, ptr %6, align 4, !dbg !5050, !tbaa !1020
  br label %29, !dbg !5051

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5007
  ret i64 %30, !dbg !5052
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5053 i32 @mbsinit(ptr noundef) local_unnamed_addr #39

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: read) uwtable
define dso_local i32 @memcoll(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef %2, i64 noundef %3) local_unnamed_addr #40 !dbg !5059 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5061, metadata !DIExpression()), !dbg !5070
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5062, metadata !DIExpression()), !dbg !5070
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5063, metadata !DIExpression()), !dbg !5070
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !5064, metadata !DIExpression()), !dbg !5070
  %5 = icmp eq i64 %1, %3, !dbg !5071
  br i1 %5, label %6, label %11, !dbg !5072

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !5073, metadata !DIExpression()), !dbg !5078
  call void @llvm.dbg.value(metadata ptr %2, metadata !5076, metadata !DIExpression()), !dbg !5078
  call void @llvm.dbg.value(metadata i64 %1, metadata !5077, metadata !DIExpression()), !dbg !5078
  %7 = tail call i32 @bcmp(ptr %0, ptr %2, i64 %1), !dbg !5080
  %8 = icmp eq i32 %7, 0, !dbg !5081
  br i1 %8, label %9, label %11, !dbg !5082

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #45, !dbg !5083
  store i32 0, ptr %10, align 4, !dbg !5085, !tbaa !1020
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5065, metadata !DIExpression()), !dbg !5070
  br label %43, !dbg !5086

11:                                               ; preds = %6, %4
  %12 = getelementptr inbounds i8, ptr %0, i64 %1, !dbg !5087
  %13 = load i8, ptr %12, align 1, !dbg !5087, !tbaa !1029
  tail call void @llvm.dbg.value(metadata i8 %13, metadata !5066, metadata !DIExpression()), !dbg !5088
  %14 = getelementptr inbounds i8, ptr %2, i64 %3, !dbg !5089
  %15 = load i8, ptr %14, align 1, !dbg !5089, !tbaa !1029
  tail call void @llvm.dbg.value(metadata i8 %15, metadata !5069, metadata !DIExpression()), !dbg !5088
  store i8 0, ptr %12, align 1, !dbg !5090, !tbaa !1029
  store i8 0, ptr %14, align 1, !dbg !5091, !tbaa !1029
  %16 = add i64 %1, 1, !dbg !5092
  %17 = add i64 %3, 1, !dbg !5093
  call void @llvm.dbg.value(metadata ptr %0, metadata !5094, metadata !DIExpression()), !dbg !5104
  call void @llvm.dbg.value(metadata i64 %16, metadata !5097, metadata !DIExpression()), !dbg !5104
  call void @llvm.dbg.value(metadata ptr %2, metadata !5098, metadata !DIExpression()), !dbg !5104
  call void @llvm.dbg.value(metadata i64 %17, metadata !5099, metadata !DIExpression()), !dbg !5104
  %18 = tail call ptr @__errno_location() #45, !dbg !5104
  br label %19, !dbg !5106

19:                                               ; preds = %37, %11
  %20 = phi ptr [ %2, %11 ], [ %38, %37 ]
  %21 = phi i64 [ %17, %11 ], [ %32, %37 ]
  %22 = phi i64 [ %16, %11 ], [ %31, %37 ]
  %23 = phi ptr [ %0, %11 ], [ %39, %37 ]
  call void @llvm.dbg.value(metadata ptr %23, metadata !5094, metadata !DIExpression()), !dbg !5104
  call void @llvm.dbg.value(metadata i64 %22, metadata !5097, metadata !DIExpression()), !dbg !5104
  call void @llvm.dbg.value(metadata i64 %21, metadata !5099, metadata !DIExpression()), !dbg !5104
  call void @llvm.dbg.value(metadata ptr %20, metadata !5098, metadata !DIExpression()), !dbg !5104
  store i32 0, ptr %18, align 4, !dbg !5107, !tbaa !1020
  %24 = tail call i32 @strcoll(ptr noundef %23, ptr noundef %20) #43, !dbg !5108
  call void @llvm.dbg.value(metadata i32 %24, metadata !5100, metadata !DIExpression()), !dbg !5104
  %25 = icmp eq i32 %24, 0, !dbg !5109
  br i1 %25, label %26, label %.loopexit, !dbg !5106

26:                                               ; preds = %19
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %23) #43, !dbg !5110
  %28 = add i64 %27, 1, !dbg !5111
  call void @llvm.dbg.value(metadata i64 %28, metadata !5101, metadata !DIExpression()), !dbg !5112
  %29 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #43, !dbg !5113
  %30 = add i64 %29, 1, !dbg !5114
  call void @llvm.dbg.value(metadata i64 %30, metadata !5103, metadata !DIExpression()), !dbg !5112
  call void @llvm.dbg.value(metadata !DIArgList(ptr %23, i64 %28), metadata !5094, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5104
  call void @llvm.dbg.value(metadata !DIArgList(ptr %20, i64 %30), metadata !5098, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5104
  %31 = sub i64 %22, %28, !dbg !5115
  call void @llvm.dbg.value(metadata i64 %31, metadata !5097, metadata !DIExpression()), !dbg !5104
  %32 = sub i64 %21, %30, !dbg !5116
  call void @llvm.dbg.value(metadata i64 %32, metadata !5099, metadata !DIExpression()), !dbg !5104
  %33 = icmp eq i64 %31, 0, !dbg !5117
  br i1 %33, label %34, label %37, !dbg !5119

34:                                               ; preds = %26
  %.lcssa = phi i64 [ %32, %26 ], !dbg !5116
  %35 = icmp ne i64 %.lcssa, 0, !dbg !5120
  %36 = sext i1 %35 to i32, !dbg !5120
  br label %41

37:                                               ; preds = %26
  %38 = getelementptr inbounds i8, ptr %20, i64 %30, !dbg !5121
  call void @llvm.dbg.value(metadata ptr %38, metadata !5098, metadata !DIExpression()), !dbg !5104
  %39 = getelementptr inbounds i8, ptr %23, i64 %28, !dbg !5122
  call void @llvm.dbg.value(metadata ptr %39, metadata !5094, metadata !DIExpression()), !dbg !5104
  %40 = icmp eq i64 %32, 0, !dbg !5123
  br i1 %40, label %.loopexit, label %19, !llvm.loop !5125

.loopexit:                                        ; preds = %37, %19
  %.ph = phi i32 [ %24, %19 ], [ 1, %37 ]
  br label %41, !dbg !5127

41:                                               ; preds = %.loopexit, %34
  %42 = phi i32 [ %36, %34 ], [ %.ph, %.loopexit ], !dbg !5104
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !5065, metadata !DIExpression()), !dbg !5070
  store i8 %13, ptr %12, align 1, !dbg !5127, !tbaa !1029
  store i8 %15, ptr %14, align 1, !dbg !5128, !tbaa !1029
  br label %43

43:                                               ; preds = %41, %9
  %44 = phi i32 [ 0, %9 ], [ %42, %41 ], !dbg !5129
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !5065, metadata !DIExpression()), !dbg !5070
  ret i32 %44, !dbg !5130
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5131 i32 @strcoll(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #39

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: read) uwtable
define dso_local i32 @memcoll0(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #40 !dbg !5132 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5134, metadata !DIExpression()), !dbg !5138
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5135, metadata !DIExpression()), !dbg !5138
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5136, metadata !DIExpression()), !dbg !5138
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !5137, metadata !DIExpression()), !dbg !5138
  %5 = icmp eq i64 %1, %3, !dbg !5139
  br i1 %5, label %6, label %11, !dbg !5141

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !5073, metadata !DIExpression()), !dbg !5142
  call void @llvm.dbg.value(metadata ptr %2, metadata !5076, metadata !DIExpression()), !dbg !5142
  call void @llvm.dbg.value(metadata i64 %1, metadata !5077, metadata !DIExpression()), !dbg !5142
  %7 = tail call i32 @bcmp(ptr %0, ptr %2, i64 %1), !dbg !5144
  %8 = icmp eq i32 %7, 0, !dbg !5145
  br i1 %8, label %9, label %11, !dbg !5146

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #45, !dbg !5147
  store i32 0, ptr %10, align 4, !dbg !5149, !tbaa !1020
  br label %35, !dbg !5150

11:                                               ; preds = %6, %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !5094, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.value(metadata i64 %1, metadata !5097, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.value(metadata ptr %2, metadata !5098, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.value(metadata i64 %3, metadata !5099, metadata !DIExpression()), !dbg !5151
  %12 = tail call ptr @__errno_location() #45, !dbg !5151
  br label %13, !dbg !5153

13:                                               ; preds = %31, %11
  %14 = phi ptr [ %2, %11 ], [ %32, %31 ]
  %15 = phi i64 [ %3, %11 ], [ %26, %31 ]
  %16 = phi i64 [ %1, %11 ], [ %25, %31 ]
  %17 = phi ptr [ %0, %11 ], [ %33, %31 ]
  call void @llvm.dbg.value(metadata ptr %17, metadata !5094, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.value(metadata i64 %16, metadata !5097, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.value(metadata i64 %15, metadata !5099, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.value(metadata ptr %14, metadata !5098, metadata !DIExpression()), !dbg !5151
  store i32 0, ptr %12, align 4, !dbg !5154, !tbaa !1020
  %18 = tail call i32 @strcoll(ptr noundef %17, ptr noundef %14) #43, !dbg !5155
  call void @llvm.dbg.value(metadata i32 %18, metadata !5100, metadata !DIExpression()), !dbg !5151
  %19 = icmp eq i32 %18, 0, !dbg !5156
  br i1 %19, label %20, label %.loopexit, !dbg !5153

20:                                               ; preds = %13
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #43, !dbg !5157
  %22 = add i64 %21, 1, !dbg !5158
  call void @llvm.dbg.value(metadata i64 %22, metadata !5101, metadata !DIExpression()), !dbg !5159
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #43, !dbg !5160
  %24 = add i64 %23, 1, !dbg !5161
  call void @llvm.dbg.value(metadata i64 %24, metadata !5103, metadata !DIExpression()), !dbg !5159
  call void @llvm.dbg.value(metadata !DIArgList(ptr %17, i64 %22), metadata !5094, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5151
  call void @llvm.dbg.value(metadata !DIArgList(ptr %14, i64 %24), metadata !5098, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5151
  %25 = sub i64 %16, %22, !dbg !5162
  call void @llvm.dbg.value(metadata i64 %25, metadata !5097, metadata !DIExpression()), !dbg !5151
  %26 = sub i64 %15, %24, !dbg !5163
  call void @llvm.dbg.value(metadata i64 %26, metadata !5099, metadata !DIExpression()), !dbg !5151
  %27 = icmp eq i64 %25, 0, !dbg !5164
  br i1 %27, label %28, label %31, !dbg !5165

28:                                               ; preds = %20
  %.lcssa = phi i64 [ %26, %20 ], !dbg !5163
  %29 = icmp ne i64 %.lcssa, 0, !dbg !5166
  %30 = sext i1 %29 to i32, !dbg !5166
  br label %35

31:                                               ; preds = %20
  %32 = getelementptr inbounds i8, ptr %14, i64 %24, !dbg !5167
  call void @llvm.dbg.value(metadata ptr %32, metadata !5098, metadata !DIExpression()), !dbg !5151
  %33 = getelementptr inbounds i8, ptr %17, i64 %22, !dbg !5168
  call void @llvm.dbg.value(metadata ptr %33, metadata !5094, metadata !DIExpression()), !dbg !5151
  %34 = icmp eq i64 %26, 0, !dbg !5169
  br i1 %34, label %.loopexit, label %13, !llvm.loop !5170

.loopexit:                                        ; preds = %13, %31
  %.ph = phi i32 [ %18, %13 ], [ 1, %31 ]
  br label %35, !dbg !5172

35:                                               ; preds = %.loopexit, %28, %9
  %36 = phi i32 [ 0, %9 ], [ %30, %28 ], [ %.ph, %.loopexit ], !dbg !5173
  ret i32 %36, !dbg !5172
}

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #41 !dbg !5174 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5176, metadata !DIExpression()), !dbg !5180
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5177, metadata !DIExpression()), !dbg !5180
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5178, metadata !DIExpression()), !dbg !5180
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5181
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5181
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5179, metadata !DIExpression()), !dbg !5180
  br i1 %5, label %6, label %8, !dbg !5183

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #45, !dbg !5184
  store i32 12, ptr %7, align 4, !dbg !5186, !tbaa !1020
  br label %12, !dbg !5187

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5181
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5179, metadata !DIExpression()), !dbg !5180
  call void @llvm.dbg.value(metadata ptr %0, metadata !5188, metadata !DIExpression()), !dbg !5192
  call void @llvm.dbg.value(metadata i64 %9, metadata !5191, metadata !DIExpression()), !dbg !5192
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5194
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #48, !dbg !5195
  br label %12, !dbg !5196

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5180
  ret ptr %13, !dbg !5197
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
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { nofree nounwind memory(readwrite, inaccessiblemem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #41 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #42 = { nounwind }
attributes #43 = { nounwind willreturn memory(read) }
attributes #44 = { noreturn nounwind }
attributes #45 = { nounwind willreturn memory(none) }
attributes #46 = { noreturn }
attributes #47 = { cold }
attributes #48 = { nounwind allocsize(1) }
attributes #49 = { nounwind allocsize(0) }
attributes #50 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!100, !477, !481, !496, !800, !842, !847, !849, !852, !854, !856, !858, !860, !862, !866, !557, !571, !622, !868, !870, !872, !874, !775, !880, !915, !917, !920, !922, !812, !829, !924, !926}
!llvm.ident = !{!928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928, !928}
!llvm.module.flags = !{!929, !930, !931, !932, !933, !934, !935, !936}

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
!100 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/comm.o -MD -MP -MF src/.deps/comm.Tpo -c src/comm.c -o src/.comm.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !101, retainedTypes: !158, globals: !168, splitDebugInlining: false, nameTableKind: None)
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
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !163, line: 18, baseType: !164)
!163 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
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
!477 = distinct !DICompileUnit(language: DW_LANG_C11, file: !474, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !478, splitDebugInlining: false, nameTableKind: None)
!478 = !{!472, !475}
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(name: "file_name", scope: !481, file: !482, line: 45, type: !165, isLocal: true, isDefinition: true)
!481 = distinct !DICompileUnit(language: DW_LANG_C11, file: !482, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !483, splitDebugInlining: false, nameTableKind: None)
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
!495 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !496, file: !497, line: 66, type: !547, isLocal: false, isDefinition: true)
!496 = distinct !DICompileUnit(language: DW_LANG_C11, file: !497, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !498, globals: !499, splitDebugInlining: false, nameTableKind: None)
!497 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!498 = !{!160, !167}
!499 = !{!500, !502, !526, !528, !530, !532, !494, !534, !536, !538, !540, !545}
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !497, line: 272, type: !29, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(name: "old_file_name", scope: !504, file: !497, line: 304, type: !165, isLocal: true, isDefinition: true)
!504 = distinct !DISubprogram(name: "verror_at_line", scope: !497, file: !497, line: 298, type: !505, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !519)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !116, !116, !165, !103, !165, !507}
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !508, line: 52, baseType: !509)
!508 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !510, line: 12, baseType: !511)
!510 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !497, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !513)
!513 = !{!514, !515, !516, !517, !518}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !512, file: !497, baseType: !160, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !512, file: !497, baseType: !160, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !512, file: !497, baseType: !160, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !512, file: !497, baseType: !116, size: 32, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !512, file: !497, baseType: !116, size: 32, offset: 224)
!519 = !{!520, !521, !522, !523, !524, !525}
!520 = !DILocalVariable(name: "status", arg: 1, scope: !504, file: !497, line: 298, type: !116)
!521 = !DILocalVariable(name: "errnum", arg: 2, scope: !504, file: !497, line: 298, type: !116)
!522 = !DILocalVariable(name: "file_name", arg: 3, scope: !504, file: !497, line: 298, type: !165)
!523 = !DILocalVariable(name: "line_number", arg: 4, scope: !504, file: !497, line: 298, type: !103)
!524 = !DILocalVariable(name: "message", arg: 5, scope: !504, file: !497, line: 298, type: !165)
!525 = !DILocalVariable(name: "args", arg: 6, scope: !504, file: !497, line: 298, type: !507)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "old_line_number", scope: !504, file: !497, line: 305, type: !103, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !497, line: 338, type: !293, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !497, line: 346, type: !328, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !497, line: 346, type: !303, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(name: "error_message_count", scope: !496, file: !497, line: 69, type: !103, isLocal: false, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !496, file: !497, line: 295, type: !116, isLocal: false, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !497, line: 208, type: !323, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !497, line: 208, type: !542, isLocal: true, isDefinition: true)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 21)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !497, line: 214, type: !29, isLocal: true, isDefinition: true)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{null}
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !552, line: 35, type: !303, isLocal: true, isDefinition: true)
!552 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !552, line: 35, type: !298, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(name: "program_name", scope: !557, file: !558, line: 31, type: !165, isLocal: false, isDefinition: true)
!557 = distinct !DICompileUnit(language: DW_LANG_C11, file: !558, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !559, globals: !560, splitDebugInlining: false, nameTableKind: None)
!558 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!559 = !{!160, !159}
!560 = !{!555, !561, !563}
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !558, line: 46, type: !328, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !558, line: 49, type: !293, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(name: "utf07FF", scope: !567, file: !568, line: 46, type: !595, isLocal: true, isDefinition: true)
!567 = distinct !DISubprogram(name: "proper_name_lite", scope: !568, file: !568, line: 38, type: !569, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !573)
!568 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!569 = !DISubroutineType(types: !570)
!570 = !{!165, !165, !165}
!571 = distinct !DICompileUnit(language: DW_LANG_C11, file: !568, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !572, splitDebugInlining: false, nameTableKind: None)
!572 = !{!565}
!573 = !{!574, !575, !576, !577, !582}
!574 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !567, file: !568, line: 38, type: !165)
!575 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !567, file: !568, line: 38, type: !165)
!576 = !DILocalVariable(name: "translation", scope: !567, file: !568, line: 40, type: !165)
!577 = !DILocalVariable(name: "w", scope: !567, file: !568, line: 47, type: !578)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !579, line: 37, baseType: !580)
!579 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !259, line: 57, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !259, line: 42, baseType: !103)
!582 = !DILocalVariable(name: "mbs", scope: !567, file: !568, line: 48, type: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !584, line: 6, baseType: !585)
!584 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !586, line: 21, baseType: !587)
!586 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !586, line: 13, size: 64, elements: !588)
!588 = !{!589, !590}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !587, file: !586, line: 15, baseType: !116, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !587, file: !586, line: 20, baseType: !591, size: 32, offset: 32)
!591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !587, file: !586, line: 16, size: 32, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !591, file: !586, line: 18, baseType: !103, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !591, file: !586, line: 19, baseType: !293, size: 32)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 16, elements: !304)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !598, line: 78, type: !328, isLocal: true, isDefinition: true)
!598 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !598, line: 79, type: !298, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !598, line: 80, type: !603, isLocal: true, isDefinition: true)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !604)
!604 = !{!605}
!605 = !DISubrange(count: 13)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !598, line: 81, type: !603, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !598, line: 82, type: !183, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !598, line: 83, type: !303, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !598, line: 84, type: !328, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !598, line: 85, type: !323, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !598, line: 86, type: !323, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !598, line: 87, type: !328, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !622, file: !598, line: 76, type: !696, isLocal: false, isDefinition: true)
!622 = distinct !DICompileUnit(language: DW_LANG_C11, file: !598, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !623, retainedTypes: !631, globals: !632, splitDebugInlining: false, nameTableKind: None)
!623 = !{!624, !626, !120}
!624 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !625, line: 42, baseType: !103, size: 32, elements: !137)
!625 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!626 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !625, line: 254, baseType: !103, size: 32, elements: !627)
!627 = !{!628, !629, !630}
!628 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!629 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!630 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!631 = !{!160, !116, !161, !162}
!632 = !{!596, !599, !601, !606, !608, !610, !612, !614, !616, !618, !620, !633, !637, !647, !649, !654, !656, !658, !660, !662, !685, !692, !694}
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !622, file: !598, line: 92, type: !635, isLocal: false, isDefinition: true)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !636, size: 320, elements: !91)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !622, file: !598, line: 1040, type: !639, isLocal: false, isDefinition: true)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !598, line: 56, size: 448, elements: !640)
!640 = !{!641, !642, !643, !645, !646}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !639, file: !598, line: 59, baseType: !624, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !639, file: !598, line: 62, baseType: !116, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !639, file: !598, line: 66, baseType: !644, size: 256, offset: 64)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !329)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !639, file: !598, line: 69, baseType: !165, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !639, file: !598, line: 72, baseType: !165, size: 64, offset: 384)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !622, file: !598, line: 107, type: !639, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(name: "slot0", scope: !622, file: !598, line: 831, type: !651, isLocal: true, isDefinition: true)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 256)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !598, line: 321, type: !303, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !598, line: 357, type: !303, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !598, line: 358, type: !303, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !598, line: 199, type: !323, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(name: "quote", scope: !664, file: !598, line: 228, type: !683, isLocal: true, isDefinition: true)
!664 = distinct !DISubprogram(name: "gettext_quote", scope: !598, file: !598, line: 197, type: !665, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !667)
!665 = !DISubroutineType(types: !666)
!666 = !{!165, !165, !624}
!667 = !{!668, !669, !670, !671, !672}
!668 = !DILocalVariable(name: "msgid", arg: 1, scope: !664, file: !598, line: 197, type: !165)
!669 = !DILocalVariable(name: "s", arg: 2, scope: !664, file: !598, line: 197, type: !624)
!670 = !DILocalVariable(name: "translation", scope: !664, file: !598, line: 199, type: !165)
!671 = !DILocalVariable(name: "w", scope: !664, file: !598, line: 229, type: !578)
!672 = !DILocalVariable(name: "mbs", scope: !664, file: !598, line: 230, type: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !584, line: 6, baseType: !674)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !586, line: 21, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !586, line: 13, size: 64, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !675, file: !586, line: 15, baseType: !116, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !675, file: !586, line: 20, baseType: !679, size: 32, offset: 32)
!679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !675, file: !586, line: 16, size: 32, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !679, file: !586, line: 18, baseType: !103, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !679, file: !586, line: 19, baseType: !293, size: 32)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 64, elements: !684)
!684 = !{!305, !295}
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(name: "slotvec", scope: !622, file: !598, line: 834, type: !687, isLocal: true, isDefinition: true)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !598, line: 823, size: 128, elements: !689)
!689 = !{!690, !691}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !688, file: !598, line: 825, baseType: !162, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !688, file: !598, line: 826, baseType: !159, size: 64, offset: 64)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(name: "nslots", scope: !622, file: !598, line: 832, type: !116, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(name: "slotvec0", scope: !622, file: !598, line: 833, type: !688, isLocal: true, isDefinition: true)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, size: 704, elements: !698)
!697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!698 = !{!699}
!699 = !DISubrange(count: 11)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !702, line: 67, type: !396, isLocal: true, isDefinition: true)
!702 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !702, line: 69, type: !323, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !702, line: 83, type: !323, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !702, line: 83, type: !293, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !702, line: 85, type: !303, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !702, line: 88, type: !713, isLocal: true, isDefinition: true)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !714)
!714 = !{!715}
!715 = !DISubrange(count: 171)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !702, line: 88, type: !718, isLocal: true, isDefinition: true)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !719)
!719 = !{!720}
!720 = !DISubrange(count: 34)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !702, line: 105, type: !188, isLocal: true, isDefinition: true)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !702, line: 109, type: !725, isLocal: true, isDefinition: true)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 23)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !702, line: 113, type: !730, isLocal: true, isDefinition: true)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 28)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !702, line: 120, type: !735, isLocal: true, isDefinition: true)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !736)
!736 = !{!737}
!737 = !DISubrange(count: 32)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !702, line: 127, type: !740, isLocal: true, isDefinition: true)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !741)
!741 = !{!742}
!742 = !DISubrange(count: 36)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !702, line: 134, type: !347, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !702, line: 142, type: !747, isLocal: true, isDefinition: true)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !748)
!748 = !{!749}
!749 = !DISubrange(count: 44)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !702, line: 150, type: !752, isLocal: true, isDefinition: true)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 48)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !702, line: 159, type: !14, isLocal: true, isDefinition: true)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !702, line: 170, type: !19, isLocal: true, isDefinition: true)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !702, line: 248, type: !183, isLocal: true, isDefinition: true)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !702, line: 248, type: !372, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !702, line: 254, type: !183, isLocal: true, isDefinition: true)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !702, line: 254, type: !178, isLocal: true, isDefinition: true)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(scope: null, file: !702, line: 254, type: !347, isLocal: true, isDefinition: true)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(scope: null, file: !702, line: 259, type: !3, isLocal: true, isDefinition: true)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !702, line: 259, type: !451, isLocal: true, isDefinition: true)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !775, file: !776, line: 26, type: !778, isLocal: false, isDefinition: true)
!775 = distinct !DICompileUnit(language: DW_LANG_C11, file: !776, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !777, splitDebugInlining: false, nameTableKind: None)
!776 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!777 = !{!773}
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 376, elements: !779)
!779 = !{!780}
!780 = !DISubrange(count: 47)
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(scope: null, file: !783, line: 34, type: !312, isLocal: true, isDefinition: true)
!783 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !783, line: 34, type: !323, isLocal: true, isDefinition: true)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(scope: null, file: !783, line: 34, type: !200, isLocal: true, isDefinition: true)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !790, line: 39, type: !323, isLocal: true, isDefinition: true)
!790 = !DIFile(filename: "lib/xmemcoll.c", directory: "/src", checksumkind: CSK_MD5, checksum: "77ad181911e918137a808414fb759bea")
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(scope: null, file: !790, line: 39, type: !195, isLocal: true, isDefinition: true)
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(scope: null, file: !790, line: 40, type: !795, isLocal: true, isDefinition: true)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !796)
!796 = !{!797}
!797 = !DISubrange(count: 43)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(name: "exit_failure", scope: !800, file: !801, line: 24, type: !803, isLocal: false, isDefinition: true)
!800 = distinct !DICompileUnit(language: DW_LANG_C11, file: !801, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !802, splitDebugInlining: false, nameTableKind: None)
!801 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!802 = !{!798}
!803 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !116)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !790, line: 41, type: !173, isLocal: true, isDefinition: true)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !808, file: !809, line: 506, type: !116, isLocal: true, isDefinition: true)
!808 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !809, file: !809, line: 485, type: !810, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !814)
!809 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!810 = !DISubroutineType(types: !811)
!811 = !{!116, !116, !116}
!812 = distinct !DICompileUnit(language: DW_LANG_C11, file: !809, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fcntl.o -MD -MP -MF lib/.deps/libcoreutils_a-fcntl.Tpo -c lib/fcntl.c -o lib/.libcoreutils_a-fcntl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !813, splitDebugInlining: false, nameTableKind: None)
!813 = !{!806}
!814 = !{!815, !816, !817, !818, !821}
!815 = !DILocalVariable(name: "fd", arg: 1, scope: !808, file: !809, line: 485, type: !116)
!816 = !DILocalVariable(name: "target", arg: 2, scope: !808, file: !809, line: 485, type: !116)
!817 = !DILocalVariable(name: "result", scope: !808, file: !809, line: 487, type: !116)
!818 = !DILocalVariable(name: "flags", scope: !819, file: !809, line: 530, type: !116)
!819 = distinct !DILexicalBlock(scope: !820, file: !809, line: 529, column: 5)
!820 = distinct !DILexicalBlock(scope: !808, file: !809, line: 528, column: 7)
!821 = !DILocalVariable(name: "saved_errno", scope: !822, file: !809, line: 533, type: !116)
!822 = distinct !DILexicalBlock(scope: !823, file: !809, line: 532, column: 9)
!823 = distinct !DILexicalBlock(scope: !819, file: !809, line: 531, column: 11)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(scope: null, file: !826, line: 108, type: !85, isLocal: true, isDefinition: true)
!826 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!827 = !DIGlobalVariableExpression(var: !828, expr: !DIExpression())
!828 = distinct !DIGlobalVariable(name: "internal_state", scope: !829, file: !826, line: 97, type: !832, isLocal: true, isDefinition: true)
!829 = distinct !DICompileUnit(language: DW_LANG_C11, file: !826, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !830, globals: !831, splitDebugInlining: false, nameTableKind: None)
!830 = !{!160, !162, !167}
!831 = !{!824, !827}
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !584, line: 6, baseType: !833)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !586, line: 21, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !586, line: 13, size: 64, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !834, file: !586, line: 15, baseType: !116, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !834, file: !586, line: 20, baseType: !838, size: 32, offset: 32)
!838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !834, file: !586, line: 16, size: 32, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !838, file: !586, line: 18, baseType: !103, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !838, file: !586, line: 19, baseType: !293, size: 32)
!842 = distinct !DICompileUnit(language: DW_LANG_C11, file: !843, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !844, splitDebugInlining: false, nameTableKind: None)
!843 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!844 = !{!845}
!845 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !846, line: 44, baseType: !103, size: 32, elements: !151)
!846 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!847 = distinct !DICompileUnit(language: DW_LANG_C11, file: !848, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!848 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!849 = distinct !DICompileUnit(language: DW_LANG_C11, file: !850, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !851, splitDebugInlining: false, nameTableKind: None)
!850 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!851 = !{!160}
!852 = distinct !DICompileUnit(language: DW_LANG_C11, file: !853, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen-safer.Tpo -c lib/fopen-safer.c -o lib/.libcoreutils_a-fopen-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!853 = !DIFile(filename: "lib/fopen-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc91097c7b0e7b372b0b37f4c608799b")
!854 = distinct !DICompileUnit(language: DW_LANG_C11, file: !855, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!855 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!856 = distinct !DICompileUnit(language: DW_LANG_C11, file: !857, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !851, splitDebugInlining: false, nameTableKind: None)
!857 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!858 = distinct !DICompileUnit(language: DW_LANG_C11, file: !859, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!859 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!860 = distinct !DICompileUnit(language: DW_LANG_C11, file: !552, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !861, splitDebugInlining: false, nameTableKind: None)
!861 = !{!550, !553}
!862 = distinct !DICompileUnit(language: DW_LANG_C11, file: !863, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-linebuffer.o -MD -MP -MF lib/.deps/libcoreutils_a-linebuffer.Tpo -c lib/linebuffer.c -o lib/.libcoreutils_a-linebuffer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !864, splitDebugInlining: false, nameTableKind: None)
!863 = !DIFile(filename: "lib/linebuffer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d85d9b8947aefddab7f1bb42f1d43333")
!864 = !{!865}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!866 = distinct !DICompileUnit(language: DW_LANG_C11, file: !867, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-memcmp2.o -MD -MP -MF lib/.deps/libcoreutils_a-memcmp2.Tpo -c lib/memcmp2.c -o lib/.libcoreutils_a-memcmp2.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!867 = !DIFile(filename: "lib/memcmp2.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e6bcc41ab98d01454beab912275e871e")
!868 = distinct !DICompileUnit(language: DW_LANG_C11, file: !869, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!869 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!870 = distinct !DICompileUnit(language: DW_LANG_C11, file: !871, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !851, splitDebugInlining: false, nameTableKind: None)
!871 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!872 = distinct !DICompileUnit(language: DW_LANG_C11, file: !873, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dup-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-dup-safer.Tpo -c lib/dup-safer.c -o lib/.libcoreutils_a-dup-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!873 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!874 = distinct !DICompileUnit(language: DW_LANG_C11, file: !702, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !875, retainedTypes: !851, globals: !879, splitDebugInlining: false, nameTableKind: None)
!875 = !{!876}
!876 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !702, line: 40, baseType: !103, size: 32, elements: !877)
!877 = !{!878}
!878 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!879 = !{!700, !703, !705, !707, !709, !711, !716, !721, !723, !728, !733, !738, !743, !745, !750, !755, !757, !759, !761, !763, !765, !767, !769, !771}
!880 = distinct !DICompileUnit(language: DW_LANG_C11, file: !881, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !882, retainedTypes: !914, splitDebugInlining: false, nameTableKind: None)
!881 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!882 = !{!883, !895}
!883 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !884, file: !881, line: 188, baseType: !103, size: 32, elements: !893)
!884 = distinct !DISubprogram(name: "x2nrealloc", scope: !881, file: !881, line: 176, type: !885, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !888)
!885 = !DISubroutineType(types: !886)
!886 = !{!160, !160, !887, !162}
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!888 = !{!889, !890, !891, !892}
!889 = !DILocalVariable(name: "p", arg: 1, scope: !884, file: !881, line: 176, type: !160)
!890 = !DILocalVariable(name: "pn", arg: 2, scope: !884, file: !881, line: 176, type: !887)
!891 = !DILocalVariable(name: "s", arg: 3, scope: !884, file: !881, line: 176, type: !162)
!892 = !DILocalVariable(name: "n", scope: !884, file: !881, line: 178, type: !162)
!893 = !{!894}
!894 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!895 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !896, file: !881, line: 228, baseType: !103, size: 32, elements: !893)
!896 = distinct !DISubprogram(name: "xpalloc", scope: !881, file: !881, line: 223, type: !897, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !904)
!897 = !DISubroutineType(types: !898)
!898 = !{!160, !160, !899, !900, !902, !900}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !901, line: 130, baseType: !902)
!901 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !903, line: 18, baseType: !260)
!903 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!904 = !{!905, !906, !907, !908, !909, !910, !911, !912, !913}
!905 = !DILocalVariable(name: "pa", arg: 1, scope: !896, file: !881, line: 223, type: !160)
!906 = !DILocalVariable(name: "pn", arg: 2, scope: !896, file: !881, line: 223, type: !899)
!907 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !896, file: !881, line: 223, type: !900)
!908 = !DILocalVariable(name: "n_max", arg: 4, scope: !896, file: !881, line: 223, type: !902)
!909 = !DILocalVariable(name: "s", arg: 5, scope: !896, file: !881, line: 223, type: !900)
!910 = !DILocalVariable(name: "n0", scope: !896, file: !881, line: 230, type: !900)
!911 = !DILocalVariable(name: "n", scope: !896, file: !881, line: 237, type: !900)
!912 = !DILocalVariable(name: "nbytes", scope: !896, file: !881, line: 248, type: !900)
!913 = !DILocalVariable(name: "adjusted_nbytes", scope: !896, file: !881, line: 252, type: !900)
!914 = !{!159, !160}
!915 = distinct !DICompileUnit(language: DW_LANG_C11, file: !783, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !916, splitDebugInlining: false, nameTableKind: None)
!916 = !{!781, !784, !786}
!917 = distinct !DICompileUnit(language: DW_LANG_C11, file: !790, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmemcoll.o -MD -MP -MF lib/.deps/libcoreutils_a-xmemcoll.Tpo -c lib/xmemcoll.c -o lib/.libcoreutils_a-xmemcoll.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !918, globals: !919, splitDebugInlining: false, nameTableKind: None)
!918 = !{!624}
!919 = !{!788, !791, !793, !804}
!920 = distinct !DICompileUnit(language: DW_LANG_C11, file: !921, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen.Tpo -c lib/fopen.c -o lib/.libcoreutils_a-fopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !851, splitDebugInlining: false, nameTableKind: None)
!921 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!922 = distinct !DICompileUnit(language: DW_LANG_C11, file: !923, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!923 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!924 = distinct !DICompileUnit(language: DW_LANG_C11, file: !925, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-memcoll.o -MD -MP -MF lib/.deps/libcoreutils_a-memcoll.Tpo -c lib/memcoll.c -o lib/.libcoreutils_a-memcoll.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!925 = !DIFile(filename: "lib/memcoll.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f316fa5066b9311c53750cfc7e26d495")
!926 = distinct !DICompileUnit(language: DW_LANG_C11, file: !927, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !851, splitDebugInlining: false, nameTableKind: None)
!927 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!928 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!929 = !{i32 7, !"Dwarf Version", i32 5}
!930 = !{i32 2, !"Debug Info Version", i32 3}
!931 = !{i32 1, !"wchar_size", i32 4}
!932 = !{i32 8, !"PIC Level", i32 2}
!933 = !{i32 7, !"PIE Level", i32 2}
!934 = !{i32 7, !"uwtable", i32 2}
!935 = !{i32 7, !"frame-pointer", i32 1}
!936 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!937 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 100, type: !938, scopeLine: 101, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !940)
!938 = !DISubroutineType(types: !939)
!939 = !{null, !116}
!940 = !{!941}
!941 = !DILocalVariable(name: "status", arg: 1, scope: !937, file: !2, line: 100, type: !116)
!942 = !DILocation(line: 0, scope: !937)
!943 = !DILocation(line: 102, column: 14, scope: !944)
!944 = distinct !DILexicalBlock(scope: !937, file: !2, line: 102, column: 7)
!945 = !DILocation(line: 102, column: 7, scope: !937)
!946 = !DILocation(line: 103, column: 5, scope: !947)
!947 = distinct !DILexicalBlock(scope: !944, file: !2, line: 103, column: 5)
!948 = !{!949, !949, i64 0}
!949 = !{!"any pointer", !950, i64 0}
!950 = !{!"omnipotent char", !951, i64 0}
!951 = !{!"Simple C/C++ TBAA"}
!952 = !DILocation(line: 106, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !944, file: !2, line: 105, column: 5)
!954 = !DILocation(line: 110, column: 7, scope: !953)
!955 = !DILocation(line: 113, column: 7, scope: !953)
!956 = !DILocation(line: 117, column: 7, scope: !953)
!957 = !DILocation(line: 123, column: 7, scope: !953)
!958 = !DILocation(line: 126, column: 7, scope: !953)
!959 = !DILocation(line: 129, column: 7, scope: !953)
!960 = !DILocation(line: 132, column: 7, scope: !953)
!961 = !DILocation(line: 137, column: 7, scope: !953)
!962 = !DILocation(line: 141, column: 7, scope: !953)
!963 = !DILocation(line: 145, column: 7, scope: !953)
!964 = !DILocation(line: 149, column: 7, scope: !953)
!965 = !DILocation(line: 153, column: 7, scope: !953)
!966 = !DILocation(line: 154, column: 7, scope: !953)
!967 = !DILocation(line: 155, column: 7, scope: !953)
!968 = !DILocation(line: 159, column: 7, scope: !953)
!969 = !DILocalVariable(name: "program", arg: 1, scope: !970, file: !115, line: 836, type: !165)
!970 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !115, file: !115, line: 836, type: !971, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !973)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !165}
!973 = !{!969, !974, !981, !982, !984, !985}
!974 = !DILocalVariable(name: "infomap", scope: !970, file: !115, line: 838, type: !975)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !976, size: 896, elements: !324)
!976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !977)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !970, file: !115, line: 838, size: 128, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !977, file: !115, line: 838, baseType: !165, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !977, file: !115, line: 838, baseType: !165, size: 64, offset: 64)
!981 = !DILocalVariable(name: "node", scope: !970, file: !115, line: 848, type: !165)
!982 = !DILocalVariable(name: "map_prog", scope: !970, file: !115, line: 849, type: !983)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!984 = !DILocalVariable(name: "lc_messages", scope: !970, file: !115, line: 861, type: !165)
!985 = !DILocalVariable(name: "url_program", scope: !970, file: !115, line: 874, type: !165)
!986 = !DILocation(line: 0, scope: !970, inlinedAt: !987)
!987 = distinct !DILocation(line: 166, column: 7, scope: !953)
!988 = !{}
!989 = !DILocation(line: 857, column: 3, scope: !970, inlinedAt: !987)
!990 = !DILocation(line: 861, column: 29, scope: !970, inlinedAt: !987)
!991 = !DILocation(line: 862, column: 7, scope: !992, inlinedAt: !987)
!992 = distinct !DILexicalBlock(scope: !970, file: !115, line: 862, column: 7)
!993 = !DILocation(line: 862, column: 19, scope: !992, inlinedAt: !987)
!994 = !DILocation(line: 862, column: 22, scope: !992, inlinedAt: !987)
!995 = !DILocation(line: 862, column: 7, scope: !970, inlinedAt: !987)
!996 = !DILocation(line: 868, column: 7, scope: !997, inlinedAt: !987)
!997 = distinct !DILexicalBlock(scope: !992, file: !115, line: 863, column: 5)
!998 = !DILocation(line: 870, column: 5, scope: !997, inlinedAt: !987)
!999 = !DILocation(line: 875, column: 3, scope: !970, inlinedAt: !987)
!1000 = !DILocation(line: 877, column: 3, scope: !970, inlinedAt: !987)
!1001 = !DILocation(line: 168, column: 3, scope: !937)
!1002 = !DISubprogram(name: "dcgettext", scope: !1003, file: !1003, line: 51, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1003 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!159, !165, !165, !116}
!1006 = !DISubprogram(name: "__fprintf_chk", scope: !1007, file: !1007, line: 93, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1007 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!116, !1010, !116, !1011, null}
!1010 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !232)
!1011 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !165)
!1012 = !DISubprogram(name: "__printf_chk", scope: !1007, file: !1007, line: 95, type: !1013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!116, !116, !1011, null}
!1015 = !DISubprogram(name: "fputs_unlocked", scope: !508, file: !508, line: 691, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!116, !1011, !1010}
!1018 = !DILocation(line: 0, scope: !210)
!1019 = !DILocation(line: 581, column: 7, scope: !218)
!1020 = !{!1021, !1021, i64 0}
!1021 = !{!"int", !950, i64 0}
!1022 = !DILocation(line: 581, column: 19, scope: !218)
!1023 = !DILocation(line: 581, column: 7, scope: !210)
!1024 = !DILocation(line: 585, column: 26, scope: !217)
!1025 = !DILocation(line: 0, scope: !217)
!1026 = !DILocation(line: 586, column: 23, scope: !217)
!1027 = !DILocation(line: 586, column: 28, scope: !217)
!1028 = !DILocation(line: 586, column: 32, scope: !217)
!1029 = !{!950, !950, i64 0}
!1030 = !DILocation(line: 586, column: 38, scope: !217)
!1031 = !DILocalVariable(name: "__s1", arg: 1, scope: !1032, file: !1033, line: 1359, type: !165)
!1032 = distinct !DISubprogram(name: "streq", scope: !1033, file: !1033, line: 1359, type: !1034, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1036)
!1033 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!205, !165, !165}
!1036 = !{!1031, !1037}
!1037 = !DILocalVariable(name: "__s2", arg: 2, scope: !1032, file: !1033, line: 1359, type: !165)
!1038 = !DILocation(line: 0, scope: !1032, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 586, column: 41, scope: !217)
!1040 = !DILocation(line: 1361, column: 11, scope: !1032, inlinedAt: !1039)
!1041 = !DILocation(line: 1361, column: 10, scope: !1032, inlinedAt: !1039)
!1042 = !DILocation(line: 586, column: 19, scope: !217)
!1043 = !DILocation(line: 587, column: 5, scope: !217)
!1044 = !DILocation(line: 588, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !210, file: !115, line: 588, column: 7)
!1046 = !DILocation(line: 588, column: 7, scope: !210)
!1047 = !DILocation(line: 590, column: 7, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1045, file: !115, line: 589, column: 5)
!1049 = !DILocation(line: 591, column: 7, scope: !1048)
!1050 = !DILocation(line: 595, column: 37, scope: !210)
!1051 = !DILocation(line: 595, column: 35, scope: !210)
!1052 = !DILocation(line: 596, column: 29, scope: !210)
!1053 = !DILocation(line: 597, column: 8, scope: !225)
!1054 = !DILocation(line: 597, column: 7, scope: !210)
!1055 = !DILocation(line: 604, column: 24, scope: !224)
!1056 = !DILocation(line: 604, column: 12, scope: !225)
!1057 = !DILocation(line: 0, scope: !223)
!1058 = !DILocation(line: 610, column: 16, scope: !223)
!1059 = !DILocation(line: 610, column: 7, scope: !223)
!1060 = !DILocation(line: 611, column: 21, scope: !223)
!1061 = !{!1062, !1062, i64 0}
!1062 = !{!"short", !950, i64 0}
!1063 = !DILocation(line: 611, column: 19, scope: !223)
!1064 = !DILocation(line: 611, column: 16, scope: !223)
!1065 = !DILocation(line: 610, column: 30, scope: !223)
!1066 = distinct !{!1066, !1059, !1060, !1067}
!1067 = !{!"llvm.loop.mustprogress"}
!1068 = !DILocation(line: 612, column: 18, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !223, file: !115, line: 612, column: 11)
!1070 = !DILocation(line: 612, column: 11, scope: !223)
!1071 = !DILocation(line: 620, column: 23, scope: !210)
!1072 = !DILocation(line: 625, column: 39, scope: !210)
!1073 = !DILocation(line: 626, column: 3, scope: !210)
!1074 = !DILocation(line: 626, column: 10, scope: !210)
!1075 = !DILocation(line: 626, column: 21, scope: !210)
!1076 = !DILocation(line: 628, column: 44, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !115, line: 628, column: 11)
!1078 = distinct !DILexicalBlock(scope: !210, file: !115, line: 627, column: 5)
!1079 = !DILocation(line: 628, column: 32, scope: !1077)
!1080 = !DILocation(line: 628, column: 49, scope: !1077)
!1081 = !DILocation(line: 628, column: 11, scope: !1078)
!1082 = !DILocation(line: 630, column: 11, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1078, file: !115, line: 630, column: 11)
!1084 = !DILocation(line: 630, column: 11, scope: !1078)
!1085 = !DILocation(line: 632, column: 26, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !115, line: 632, column: 15)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !115, line: 631, column: 9)
!1088 = !DILocation(line: 632, column: 34, scope: !1086)
!1089 = !DILocation(line: 632, column: 37, scope: !1086)
!1090 = !DILocation(line: 632, column: 15, scope: !1087)
!1091 = !DILocation(line: 640, column: 16, scope: !1078)
!1092 = distinct !{!1092, !1073, !1093, !1067}
!1093 = !DILocation(line: 641, column: 5, scope: !210)
!1094 = !DILocation(line: 644, column: 3, scope: !210)
!1095 = !DILocation(line: 0, scope: !1032, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 648, column: 31, scope: !210)
!1097 = !DILocation(line: 0, scope: !1032, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 649, column: 31, scope: !210)
!1099 = !DILocation(line: 0, scope: !1032, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 650, column: 31, scope: !210)
!1101 = !DILocation(line: 0, scope: !1032, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 651, column: 31, scope: !210)
!1103 = !DILocation(line: 0, scope: !1032, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 652, column: 31, scope: !210)
!1105 = !DILocation(line: 0, scope: !1032, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 653, column: 31, scope: !210)
!1107 = !DILocation(line: 0, scope: !1032, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 654, column: 31, scope: !210)
!1109 = !DILocation(line: 0, scope: !1032, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 655, column: 31, scope: !210)
!1111 = !DILocation(line: 0, scope: !1032, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 656, column: 31, scope: !210)
!1113 = !DILocation(line: 0, scope: !1032, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 657, column: 31, scope: !210)
!1115 = !DILocation(line: 663, column: 7, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !210, file: !115, line: 663, column: 7)
!1117 = !DILocation(line: 664, column: 7, scope: !1116)
!1118 = !DILocation(line: 664, column: 10, scope: !1116)
!1119 = !DILocation(line: 663, column: 7, scope: !210)
!1120 = !DILocation(line: 669, column: 7, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !115, line: 665, column: 5)
!1122 = !DILocation(line: 671, column: 5, scope: !1121)
!1123 = !DILocation(line: 676, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1116, file: !115, line: 673, column: 5)
!1125 = !DILocation(line: 679, column: 3, scope: !210)
!1126 = !DILocation(line: 683, column: 3, scope: !210)
!1127 = !DILocation(line: 686, column: 3, scope: !210)
!1128 = !DILocation(line: 688, column: 3, scope: !210)
!1129 = !DILocation(line: 691, column: 3, scope: !210)
!1130 = !DILocation(line: 695, column: 3, scope: !210)
!1131 = !DILocation(line: 696, column: 1, scope: !210)
!1132 = !DISubprogram(name: "setlocale", scope: !1133, file: !1133, line: 122, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1133 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!159, !116, !165}
!1136 = !DISubprogram(name: "strncmp", scope: !1137, file: !1137, line: 159, type: !1138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1137 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!116, !165, !165, !162}
!1140 = !DISubprogram(name: "exit", scope: !1141, file: !1141, line: 624, type: !938, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1141 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1142 = !DISubprogram(name: "getenv", scope: !1141, file: !1141, line: 641, type: !1143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!159, !165}
!1145 = !DISubprogram(name: "strcmp", scope: !1137, file: !1137, line: 156, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!116, !165, !165}
!1148 = !DISubprogram(name: "strspn", scope: !1137, file: !1137, line: 297, type: !1149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!164, !165, !165}
!1151 = !DISubprogram(name: "strchr", scope: !1137, file: !1137, line: 246, type: !1152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!159, !165, !116}
!1154 = !DISubprogram(name: "__ctype_b_loc", scope: !121, file: !121, line: 79, type: !1155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!1157}
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!1160 = !DISubprogram(name: "strcspn", scope: !1137, file: !1137, line: 293, type: !1149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1161 = !DISubprogram(name: "fwrite_unlocked", scope: !508, file: !508, line: 704, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!162, !1164, !162, !162, !1010}
!1164 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1165)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1167 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 424, type: !1168, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1171)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!116, !116, !1170}
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1171 = !{!1172, !1173, !1174}
!1172 = !DILocalVariable(name: "argc", arg: 1, scope: !1167, file: !2, line: 424, type: !116)
!1173 = !DILocalVariable(name: "argv", arg: 2, scope: !1167, file: !2, line: 424, type: !1170)
!1174 = !DILocalVariable(name: "c", scope: !1167, file: !2, line: 426, type: !116)
!1175 = !DILocation(line: 0, scope: !1167)
!1176 = !DILocation(line: 429, column: 21, scope: !1167)
!1177 = !DILocation(line: 429, column: 3, scope: !1167)
!1178 = !DILocation(line: 430, column: 3, scope: !1167)
!1179 = !DILocation(line: 431, column: 3, scope: !1167)
!1180 = !DILocation(line: 432, column: 3, scope: !1167)
!1181 = !DILocation(line: 433, column: 21, scope: !1167)
!1182 = !DILocation(line: 433, column: 19, scope: !1167)
!1183 = !{!1184, !1184, i64 0}
!1184 = !{!"_Bool", !950, i64 0}
!1185 = !DILocation(line: 435, column: 3, scope: !1167)
!1186 = !DILocation(line: 437, column: 3, scope: !1167)
!1187 = !DILocation(line: 437, column: 15, scope: !1167)
!1188 = !DILocation(line: 441, column: 21, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 439, column: 7)
!1190 = !DILocation(line: 442, column: 9, scope: !1189)
!1191 = !DILocation(line: 445, column: 21, scope: !1189)
!1192 = !DILocation(line: 446, column: 9, scope: !1189)
!1193 = !DILocation(line: 449, column: 14, scope: !1189)
!1194 = !DILocation(line: 450, column: 9, scope: !1189)
!1195 = !DILocation(line: 453, column: 15, scope: !1189)
!1196 = !DILocation(line: 454, column: 9, scope: !1189)
!1197 = !DILocation(line: 457, column: 27, scope: !1189)
!1198 = !DILocation(line: 458, column: 9, scope: !1189)
!1199 = !DILocation(line: 461, column: 27, scope: !1189)
!1200 = !DILocation(line: 462, column: 9, scope: !1189)
!1201 = !DILocation(line: 465, column: 13, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 465, column: 13)
!1203 = !{!1204, !1204, i64 0}
!1204 = !{!"long", !950, i64 0}
!1205 = !DILocation(line: 467, column: 19, scope: !1189)
!1206 = !DILocation(line: 465, column: 25, scope: !1202)
!1207 = !DILocation(line: 465, column: 36, scope: !1202)
!1208 = !DILocation(line: 0, scope: !1032, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 465, column: 29, scope: !1202)
!1210 = !DILocation(line: 1361, column: 11, scope: !1032, inlinedAt: !1209)
!1211 = !DILocation(line: 1361, column: 10, scope: !1032, inlinedAt: !1209)
!1212 = !DILocation(line: 465, column: 13, scope: !1189)
!1213 = !DILocation(line: 466, column: 11, scope: !1202)
!1214 = !DILocation(line: 467, column: 17, scope: !1189)
!1215 = !DILocation(line: 468, column: 23, scope: !1189)
!1216 = !DILocation(line: 468, column: 33, scope: !1189)
!1217 = !DILocation(line: 468, column: 21, scope: !1189)
!1218 = !DILocation(line: 469, column: 9, scope: !1189)
!1219 = !DILocation(line: 472, column: 22, scope: !1189)
!1220 = !DILocation(line: 473, column: 9, scope: !1189)
!1221 = distinct !{!1221, !1186, !1222, !1067}
!1222 = !DILocation(line: 481, column: 7, scope: !1167)
!1223 = !DILocation(line: 475, column: 7, scope: !1189)
!1224 = !DILocation(line: 477, column: 7, scope: !1189)
!1225 = !DILocation(line: 480, column: 9, scope: !1189)
!1226 = !DILocation(line: 483, column: 9, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 483, column: 7)
!1228 = !DILocation(line: 483, column: 7, scope: !1167)
!1229 = !DILocation(line: 484, column: 17, scope: !1227)
!1230 = !DILocation(line: 484, column: 5, scope: !1227)
!1231 = !DILocation(line: 486, column: 14, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 486, column: 7)
!1233 = !DILocation(line: 486, column: 12, scope: !1232)
!1234 = !DILocation(line: 486, column: 21, scope: !1232)
!1235 = !DILocation(line: 486, column: 7, scope: !1167)
!1236 = !DILocation(line: 488, column: 16, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !2, line: 488, column: 11)
!1238 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 487, column: 5)
!1239 = !DILocation(line: 488, column: 11, scope: !1238)
!1240 = !DILocation(line: 489, column: 9, scope: !1237)
!1241 = !DILocation(line: 491, column: 9, scope: !1237)
!1242 = !DILocation(line: 492, column: 7, scope: !1238)
!1243 = !DILocation(line: 495, column: 9, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 495, column: 7)
!1245 = !DILocation(line: 495, column: 7, scope: !1167)
!1246 = !DILocation(line: 497, column: 7, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 496, column: 5)
!1248 = !DILocation(line: 498, column: 7, scope: !1247)
!1249 = !DILocation(line: 501, column: 23, scope: !1167)
!1250 = !DILocation(line: 501, column: 3, scope: !1167)
!1251 = !DISubprogram(name: "bindtextdomain", scope: !1003, file: !1003, line: 86, type: !1252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!159, !165, !165}
!1254 = !DISubprogram(name: "textdomain", scope: !1003, file: !1003, line: 82, type: !1143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1255 = !DISubprogram(name: "atexit", scope: !1141, file: !1141, line: 602, type: !1256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!116, !547}
!1258 = !DISubprogram(name: "getopt_long", scope: !418, file: !418, line: 66, type: !1259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!116, !116, !1261, !165, !1263, !423}
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!1264 = !DISubprogram(name: "strlen", scope: !1137, file: !1137, line: 407, type: !1265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!164, !165}
!1267 = distinct !DISubprogram(name: "compare_files", scope: !2, file: !2, line: 261, type: !1268, scopeLine: 262, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1270)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !1170}
!1270 = !{!1271, !1272, !1282, !1285, !1287, !1290, !1292, !1297, !1299, !1303, !1305, !1306, !1312, !1314}
!1271 = !DILocalVariable(name: "infiles", arg: 1, scope: !1267, file: !2, line: 261, type: !1170)
!1272 = !DILocalVariable(name: "lba", scope: !1267, file: !2, line: 264, type: !1273)
!1273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1274, size: 1536, elements: !684)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !1275, line: 32, size: 192, elements: !1276)
!1275 = !DIFile(filename: "./lib/linebuffer.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a0b4e97fdade8fc6fdf94c5a34c83419")
!1276 = !{!1277, !1280, !1281}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1274, file: !1275, line: 34, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1279, line: 130, baseType: !902)
!1279 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1274, file: !1275, line: 35, baseType: !1278, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1274, file: !1275, line: 36, baseType: !159, size: 64, offset: 128)
!1282 = !DILocalVariable(name: "thisline", scope: !1267, file: !2, line: 268, type: !1283)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1284, size: 128, elements: !304)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1285 = !DILocalVariable(name: "all_line", scope: !1267, file: !2, line: 273, type: !1286)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1284, size: 512, elements: !684)
!1287 = !DILocalVariable(name: "alt", scope: !1267, file: !2, line: 276, type: !1288)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 192, elements: !1289)
!1289 = !{!305, !314}
!1290 = !DILocalVariable(name: "streams", scope: !1267, file: !2, line: 279, type: !1291)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 128, elements: !304)
!1292 = !DILocalVariable(name: "total", scope: !1267, file: !2, line: 282, type: !1293)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 192, elements: !313)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1295, line: 102, baseType: !1296)
!1295 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !259, line: 73, baseType: !164)
!1297 = !DILocalVariable(name: "i", scope: !1298, file: !2, line: 285, type: !116)
!1298 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 285, column: 3)
!1299 = !DILocalVariable(name: "j", scope: !1300, file: !2, line: 287, type: !116)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 287, column: 7)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 286, column: 5)
!1302 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 285, column: 3)
!1303 = !DILocalVariable(name: "order", scope: !1304, file: !2, line: 309, type: !116)
!1304 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 308, column: 5)
!1305 = !DILocalVariable(name: "fill_up", scope: !1304, file: !2, line: 310, type: !465)
!1306 = !DILocalVariable(name: "len", scope: !1307, file: !2, line: 325, type: !162)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 324, column: 13)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 320, column: 15)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 319, column: 9)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 316, column: 16)
!1311 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 314, column: 11)
!1312 = !DILocalVariable(name: "i", scope: !1313, file: !2, line: 363, type: !116)
!1313 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 363, column: 7)
!1314 = !DILocalVariable(name: "i", scope: !1315, file: !2, line: 391, type: !116)
!1315 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 391, column: 3)
!1316 = distinct !DIAssignID()
!1317 = !DILocation(line: 0, scope: !1267)
!1318 = distinct !DIAssignID()
!1319 = !DILocation(line: 264, column: 3, scope: !1267)
!1320 = !DILocation(line: 273, column: 3, scope: !1267)
!1321 = !DILocation(line: 0, scope: !1298)
!1322 = !DILocation(line: 0, scope: !1300)
!1323 = !DILocation(line: 289, column: 11, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 288, column: 9)
!1325 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 287, column: 7)
!1326 = !DILocation(line: 290, column: 26, scope: !1324)
!1327 = !DILocation(line: 289, column: 24, scope: !1324)
!1328 = !DILocation(line: 290, column: 11, scope: !1324)
!1329 = !DILocation(line: 295, column: 28, scope: !1301)
!1330 = !DILocation(line: 0, scope: !1032, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 295, column: 21, scope: !1301)
!1332 = !DILocation(line: 1361, column: 11, scope: !1032, inlinedAt: !1331)
!1333 = !DILocation(line: 1361, column: 10, scope: !1032, inlinedAt: !1331)
!1334 = !DILocation(line: 295, column: 21, scope: !1301)
!1335 = !DILocation(line: 295, column: 55, scope: !1301)
!1336 = !DILocation(line: 295, column: 47, scope: !1301)
!1337 = !DILocation(line: 296, column: 12, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 296, column: 11)
!1339 = !DILocation(line: 296, column: 11, scope: !1301)
!1340 = !DILocation(line: 299, column: 7, scope: !1301)
!1341 = !DILocation(line: 302, column: 43, scope: !1301)
!1342 = !DILocation(line: 301, column: 21, scope: !1301)
!1343 = !DILocalVariable(name: "__stream", arg: 1, scope: !1344, file: !1345, line: 135, type: !232)
!1344 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1345, file: !1345, line: 135, type: !1346, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1348)
!1345 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!116, !232}
!1348 = !{!1343}
!1349 = !DILocation(line: 0, scope: !1344, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 303, column: 11, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 303, column: 11)
!1352 = !DILocation(line: 137, column: 10, scope: !1344, inlinedAt: !1350)
!1353 = !{!1354, !1021, i64 0}
!1354 = !{!"_IO_FILE", !1021, i64 0, !949, i64 8, !949, i64 16, !949, i64 24, !949, i64 32, !949, i64 40, !949, i64 48, !949, i64 56, !949, i64 64, !949, i64 72, !949, i64 80, !949, i64 88, !949, i64 96, !949, i64 104, !1021, i64 112, !1021, i64 116, !1204, i64 120, !1062, i64 128, !950, i64 130, !950, i64 131, !949, i64 136, !1204, i64 144, !949, i64 152, !949, i64 160, !949, i64 168, !949, i64 176, !1204, i64 184, !1021, i64 192, !950, i64 196}
!1355 = !DILocation(line: 303, column: 11, scope: !1351)
!1356 = !DILocation(line: 303, column: 11, scope: !1301)
!1357 = !DILocation(line: 307, column: 10, scope: !1267)
!1358 = !DILocation(line: 307, column: 22, scope: !1267)
!1359 = !DILocation(line: 307, column: 3, scope: !1267)
!1360 = !DILocation(line: 297, column: 9, scope: !1338)
!1361 = !DILocation(line: 304, column: 9, scope: !1351)
!1362 = !DILocation(line: 392, column: 9, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 392, column: 9)
!1364 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 391, column: 3)
!1365 = !DILocation(line: 282, column: 13, scope: !1267)
!1366 = !DILocation(line: 0, scope: !1315)
!1367 = !DILocation(line: 392, column: 29, scope: !1363)
!1368 = !DILocation(line: 392, column: 9, scope: !1364)
!1369 = !DILocation(line: 293, column: 17, scope: !1301)
!1370 = !DILocation(line: 292, column: 17, scope: !1301)
!1371 = !DILocation(line: 301, column: 19, scope: !1301)
!1372 = !DILocation(line: 0, scope: !1304)
!1373 = !DILocation(line: 314, column: 12, scope: !1311)
!1374 = !DILocation(line: 314, column: 11, scope: !1304)
!1375 = !DILocation(line: 341, column: 27, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 340, column: 9)
!1377 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 333, column: 11)
!1378 = !DILocation(line: 342, column: 15, scope: !1376)
!1379 = !DILocation(line: 316, column: 17, scope: !1310)
!1380 = !DILocation(line: 316, column: 16, scope: !1311)
!1381 = !DILocation(line: 320, column: 15, scope: !1308)
!1382 = !{i8 0, i8 2}
!1383 = !DILocation(line: 320, column: 15, scope: !1309)
!1384 = !DILocation(line: 321, column: 44, scope: !1308)
!1385 = !{!1386, !949, i64 16}
!1386 = !{!"linebuffer", !1204, i64 0, !1204, i64 8, !949, i64 16}
!1387 = !DILocation(line: 321, column: 65, scope: !1308)
!1388 = !{!1386, !1204, i64 8}
!1389 = !DILocation(line: 321, column: 72, scope: !1308)
!1390 = !DILocation(line: 322, column: 44, scope: !1308)
!1391 = !DILocation(line: 322, column: 65, scope: !1308)
!1392 = !DILocation(line: 322, column: 72, scope: !1308)
!1393 = !DILocation(line: 321, column: 21, scope: !1308)
!1394 = !DILocation(line: 321, column: 13, scope: !1308)
!1395 = !DILocation(line: 325, column: 28, scope: !1307)
!1396 = !DILocation(line: 325, column: 75, scope: !1307)
!1397 = !DILocation(line: 0, scope: !1307)
!1398 = !DILocation(line: 326, column: 44, scope: !1307)
!1399 = !DILocation(line: 326, column: 65, scope: !1307)
!1400 = !DILocation(line: 326, column: 23, scope: !1307)
!1401 = !DILocation(line: 327, column: 25, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 327, column: 19)
!1403 = !DILocation(line: 327, column: 19, scope: !1307)
!1404 = !DILocation(line: 328, column: 25, scope: !1402)
!1405 = !DILocation(line: 328, column: 17, scope: !1402)
!1406 = !DILocation(line: 0, scope: !1311)
!1407 = !DILocation(line: 333, column: 17, scope: !1377)
!1408 = !DILocation(line: 333, column: 11, scope: !1304)
!1409 = !DILocation(line: 336, column: 19, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 334, column: 9)
!1411 = !DILocation(line: 337, column: 11, scope: !1410)
!1412 = !DILocation(line: 360, column: 11, scope: !1304)
!1413 = !DILocation(line: 342, column: 21, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 342, column: 15)
!1415 = !DILocation(line: 345, column: 23, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 343, column: 13)
!1417 = !DILocation(line: 346, column: 15, scope: !1416)
!1418 = !DILocation(line: 351, column: 23, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 349, column: 13)
!1420 = !DILocation(line: 352, column: 15, scope: !1419)
!1421 = !DILocation(line: 0, scope: !1313)
!1422 = !DILocation(line: 364, column: 13, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 363, column: 7)
!1424 = !DILocation(line: 369, column: 36, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 365, column: 11)
!1426 = distinct !DILexicalBlock(scope: !1423, file: !2, line: 364, column: 13)
!1427 = !DILocation(line: 369, column: 41, scope: !1425)
!1428 = !DILocation(line: 371, column: 49, scope: !1425)
!1429 = !DILocation(line: 372, column: 61, scope: !1425)
!1430 = !DILocation(line: 371, column: 27, scope: !1425)
!1431 = !DILocation(line: 374, column: 17, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1425, file: !2, line: 374, column: 17)
!1433 = !DILocation(line: 374, column: 17, scope: !1425)
!1434 = !DILocation(line: 375, column: 28, scope: !1432)
!1435 = !DILocation(line: 375, column: 15, scope: !1432)
!1436 = !DILocation(line: 380, column: 22, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 380, column: 22)
!1438 = !DILocation(line: 380, column: 46, scope: !1437)
!1439 = !DILocation(line: 380, column: 22, scope: !1432)
!1440 = !DILocation(line: 382, column: 28, scope: !1437)
!1441 = !DILocation(line: 381, column: 15, scope: !1437)
!1442 = !DILocation(line: 0, scope: !1344, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 384, column: 17, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1425, file: !2, line: 384, column: 17)
!1445 = !DILocation(line: 137, column: 10, scope: !1344, inlinedAt: !1443)
!1446 = !DILocation(line: 384, column: 17, scope: !1444)
!1447 = !DILocation(line: 384, column: 17, scope: !1425)
!1448 = !DILocation(line: 385, column: 15, scope: !1444)
!1449 = distinct !{!1449, !1359, !1450, !1067}
!1450 = !DILocation(line: 389, column: 5, scope: !1267)
!1451 = !DILocation(line: 395, column: 7, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 395, column: 7)
!1453 = !DILocation(line: 395, column: 7, scope: !1267)
!1454 = !DILocation(line: 393, column: 7, scope: !1363)
!1455 = !DILocation(line: 398, column: 11, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 398, column: 11)
!1457 = distinct !DILexicalBlock(scope: !1452, file: !2, line: 396, column: 5)
!1458 = !DILocation(line: 398, column: 23, scope: !1456)
!1459 = !DILocation(line: 0, scope: !1456)
!1460 = !DILocation(line: 398, column: 11, scope: !1457)
!1461 = !DILocation(line: 400, column: 11, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 399, column: 9)
!1463 = !DILocation(line: 405, column: 9, scope: !1462)
!1464 = !DILocation(line: 408, column: 11, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 407, column: 9)
!1466 = !DILocation(line: 416, column: 7, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 416, column: 7)
!1468 = !DILocation(line: 416, column: 34, scope: !1467)
!1469 = !DILocation(line: 417, column: 5, scope: !1467)
!1470 = !DILocation(line: 420, column: 3, scope: !1267)
!1471 = !DISubprogram(name: "__errno_location", scope: !1472, file: !1472, line: 37, type: !1473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1472 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!423}
!1475 = !DISubprogram(name: "memcmp", scope: !1137, file: !1137, line: 64, type: !1476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!116, !1165, !1165, !162}
!1478 = distinct !DISubprogram(name: "writeline", scope: !2, file: !2, line: 177, type: !1479, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1483)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null, !1481, !116}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1274)
!1483 = !{!1484, !1485, !1486, !1490, !1491, !1492, !1495, !1496, !1497, !1500, !1501, !1502, !1504, !1505}
!1484 = !DILocalVariable(name: "line", arg: 1, scope: !1478, file: !2, line: 177, type: !1481)
!1485 = !DILocalVariable(name: "class", arg: 2, scope: !1478, file: !2, line: 177, type: !116)
!1486 = !DILocalVariable(name: "__ptr", scope: !1487, file: !2, line: 190, type: !165)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 190, column: 9)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 189, column: 11)
!1489 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 180, column: 5)
!1490 = !DILocalVariable(name: "__stream", scope: !1487, file: !2, line: 190, type: !232)
!1491 = !DILocalVariable(name: "__cnt", scope: !1487, file: !2, line: 190, type: !162)
!1492 = !DILocalVariable(name: "__ptr", scope: !1493, file: !2, line: 197, type: !165)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !2, line: 197, column: 9)
!1494 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 196, column: 11)
!1495 = !DILocalVariable(name: "__stream", scope: !1493, file: !2, line: 197, type: !232)
!1496 = !DILocalVariable(name: "__cnt", scope: !1493, file: !2, line: 197, type: !162)
!1497 = !DILocalVariable(name: "__ptr", scope: !1498, file: !2, line: 199, type: !165)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 199, column: 9)
!1499 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 198, column: 11)
!1500 = !DILocalVariable(name: "__stream", scope: !1498, file: !2, line: 199, type: !232)
!1501 = !DILocalVariable(name: "__cnt", scope: !1498, file: !2, line: 199, type: !162)
!1502 = !DILocalVariable(name: "__ptr", scope: !1503, file: !2, line: 203, type: !165)
!1503 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 203, column: 3)
!1504 = !DILocalVariable(name: "__stream", scope: !1503, file: !2, line: 203, type: !232)
!1505 = !DILocalVariable(name: "__cnt", scope: !1503, file: !2, line: 203, type: !162)
!1506 = !DILocation(line: 0, scope: !1478)
!1507 = !DILocation(line: 179, column: 3, scope: !1478)
!1508 = !DILocation(line: 182, column: 12, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 182, column: 11)
!1510 = !DILocation(line: 182, column: 11, scope: !1489)
!1511 = !DILocation(line: 187, column: 12, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 187, column: 11)
!1513 = !DILocation(line: 187, column: 11, scope: !1489)
!1514 = !DILocation(line: 189, column: 11, scope: !1488)
!1515 = !DILocation(line: 189, column: 11, scope: !1489)
!1516 = !DILocation(line: 194, column: 12, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 194, column: 11)
!1518 = !DILocation(line: 194, column: 11, scope: !1489)
!1519 = !DILocation(line: 196, column: 11, scope: !1494)
!1520 = !DILocation(line: 196, column: 11, scope: !1489)
!1521 = !DILocation(line: 197, column: 9, scope: !1494)
!1522 = !DILocation(line: 198, column: 11, scope: !1499)
!1523 = !DILocation(line: 198, column: 11, scope: !1489)
!1524 = !DILocation(line: 0, scope: !1489)
!1525 = !DILocation(line: 203, column: 3, scope: !1478)
!1526 = !DILocation(line: 205, column: 7, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 205, column: 7)
!1528 = !DILocation(line: 0, scope: !1344, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 205, column: 7, scope: !1527)
!1530 = !DILocation(line: 137, column: 10, scope: !1344, inlinedAt: !1529)
!1531 = !DILocation(line: 205, column: 7, scope: !1478)
!1532 = !DILocation(line: 948, column: 21, scope: !1533, inlinedAt: !1536)
!1533 = distinct !DISubprogram(name: "write_error", scope: !115, file: !115, line: 946, type: !548, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1534)
!1534 = !{!1535}
!1535 = !DILocalVariable(name: "saved_errno", scope: !1533, file: !115, line: 948, type: !116)
!1536 = distinct !DILocation(line: 206, column: 5, scope: !1527)
!1537 = !DILocation(line: 0, scope: !1533, inlinedAt: !1536)
!1538 = !DILocation(line: 949, column: 3, scope: !1533, inlinedAt: !1536)
!1539 = !DILocation(line: 950, column: 11, scope: !1533, inlinedAt: !1536)
!1540 = !DILocation(line: 950, column: 3, scope: !1533, inlinedAt: !1536)
!1541 = !DILocation(line: 951, column: 3, scope: !1533, inlinedAt: !1536)
!1542 = !DILocation(line: 952, column: 3, scope: !1533, inlinedAt: !1536)
!1543 = !DILocation(line: 207, column: 1, scope: !1478)
!1544 = distinct !DISubprogram(name: "check_order", scope: !2, file: !2, line: 221, type: !1545, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1547)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{null, !1481, !1481, !116}
!1547 = !{!1548, !1549, !1550, !1551, !1556}
!1548 = !DILocalVariable(name: "prev", arg: 1, scope: !1544, file: !2, line: 221, type: !1481)
!1549 = !DILocalVariable(name: "current", arg: 2, scope: !1544, file: !2, line: 222, type: !1481)
!1550 = !DILocalVariable(name: "whatfile", arg: 3, scope: !1544, file: !2, line: 223, type: !116)
!1551 = !DILocalVariable(name: "order", scope: !1552, file: !2, line: 231, type: !116)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 230, column: 9)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 229, column: 11)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 228, column: 5)
!1555 = distinct !DILexicalBlock(scope: !1544, file: !2, line: 226, column: 7)
!1556 = !DILocalVariable(name: "__errstatus", scope: !1557, file: !2, line: 242, type: !1560)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 242, column: 15)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 241, column: 13)
!1559 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 240, column: 15)
!1560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!1561 = !DILocation(line: 0, scope: !1544)
!1562 = !DILocation(line: 226, column: 7, scope: !1555)
!1563 = !DILocation(line: 227, column: 7, scope: !1555)
!1564 = !DILocation(line: 227, column: 57, scope: !1555)
!1565 = !DILocation(line: 226, column: 7, scope: !1544)
!1566 = !DILocation(line: 229, column: 45, scope: !1553)
!1567 = !DILocation(line: 229, column: 12, scope: !1553)
!1568 = !DILocation(line: 229, column: 11, scope: !1554)
!1569 = !DILocation(line: 233, column: 15, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 233, column: 15)
!1571 = !DILocation(line: 0, scope: !1570)
!1572 = !DILocation(line: 233, column: 15, scope: !1552)
!1573 = !DILocation(line: 234, column: 21, scope: !1570)
!1574 = !DILocation(line: 0, scope: !1552)
!1575 = !DILocation(line: 234, column: 13, scope: !1570)
!1576 = !DILocation(line: 237, column: 21, scope: !1570)
!1577 = !DILocation(line: 240, column: 17, scope: !1559)
!1578 = !DILocation(line: 240, column: 15, scope: !1552)
!1579 = !DILocation(line: 242, column: 15, scope: !1558)
!1580 = !DILocation(line: 0, scope: !1557)
!1581 = !DILocation(line: 242, column: 15, scope: !1557)
!1582 = !DILocation(line: 248, column: 53, scope: !1558)
!1583 = !DILocation(line: 249, column: 13, scope: !1558)
!1584 = !DILocation(line: 252, column: 1, scope: !1544)
!1585 = !DISubprogram(name: "fflush_unlocked", scope: !508, file: !508, line: 239, type: !1346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1586 = !DISubprogram(name: "clearerr_unlocked", scope: !508, file: !508, line: 794, type: !1587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{null, !232}
!1589 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !482, file: !482, line: 50, type: !971, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !1590)
!1590 = !{!1591}
!1591 = !DILocalVariable(name: "file", arg: 1, scope: !1589, file: !482, line: 50, type: !165)
!1592 = !DILocation(line: 0, scope: !1589)
!1593 = !DILocation(line: 52, column: 13, scope: !1589)
!1594 = !DILocation(line: 53, column: 1, scope: !1589)
!1595 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !482, file: !482, line: 87, type: !1596, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !1598)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !205}
!1598 = !{!1599}
!1599 = !DILocalVariable(name: "ignore", arg: 1, scope: !1595, file: !482, line: 87, type: !205)
!1600 = !DILocation(line: 0, scope: !1595)
!1601 = !DILocation(line: 89, column: 16, scope: !1595)
!1602 = !DILocation(line: 90, column: 1, scope: !1595)
!1603 = distinct !DISubprogram(name: "close_stdout", scope: !482, file: !482, line: 116, type: !548, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !1604)
!1604 = !{!1605}
!1605 = !DILocalVariable(name: "write_error", scope: !1606, file: !482, line: 121, type: !165)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !482, line: 120, column: 5)
!1607 = distinct !DILexicalBlock(scope: !1603, file: !482, line: 118, column: 7)
!1608 = !DILocation(line: 118, column: 21, scope: !1607)
!1609 = !DILocation(line: 118, column: 7, scope: !1607)
!1610 = !DILocation(line: 118, column: 29, scope: !1607)
!1611 = !DILocation(line: 119, column: 7, scope: !1607)
!1612 = !DILocation(line: 119, column: 12, scope: !1607)
!1613 = !DILocation(line: 119, column: 25, scope: !1607)
!1614 = !DILocation(line: 119, column: 28, scope: !1607)
!1615 = !DILocation(line: 119, column: 34, scope: !1607)
!1616 = !DILocation(line: 118, column: 7, scope: !1603)
!1617 = !DILocation(line: 121, column: 33, scope: !1606)
!1618 = !DILocation(line: 0, scope: !1606)
!1619 = !DILocation(line: 122, column: 11, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1606, file: !482, line: 122, column: 11)
!1621 = !DILocation(line: 0, scope: !1620)
!1622 = !DILocation(line: 122, column: 11, scope: !1606)
!1623 = !DILocation(line: 123, column: 9, scope: !1620)
!1624 = !DILocation(line: 126, column: 9, scope: !1620)
!1625 = !DILocation(line: 128, column: 14, scope: !1606)
!1626 = !DILocation(line: 128, column: 7, scope: !1606)
!1627 = !DILocation(line: 133, column: 42, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1603, file: !482, line: 133, column: 7)
!1629 = !DILocation(line: 133, column: 28, scope: !1628)
!1630 = !DILocation(line: 133, column: 50, scope: !1628)
!1631 = !DILocation(line: 133, column: 7, scope: !1603)
!1632 = !DILocation(line: 134, column: 12, scope: !1628)
!1633 = !DILocation(line: 134, column: 5, scope: !1628)
!1634 = !DILocation(line: 135, column: 1, scope: !1603)
!1635 = !DISubprogram(name: "_exit", scope: !1636, file: !1636, line: 624, type: !938, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1636 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1637 = distinct !DISubprogram(name: "verror", scope: !497, file: !497, line: 251, type: !1638, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1640)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{null, !116, !116, !165, !507}
!1640 = !{!1641, !1642, !1643, !1644}
!1641 = !DILocalVariable(name: "status", arg: 1, scope: !1637, file: !497, line: 251, type: !116)
!1642 = !DILocalVariable(name: "errnum", arg: 2, scope: !1637, file: !497, line: 251, type: !116)
!1643 = !DILocalVariable(name: "message", arg: 3, scope: !1637, file: !497, line: 251, type: !165)
!1644 = !DILocalVariable(name: "args", arg: 4, scope: !1637, file: !497, line: 251, type: !507)
!1645 = !DILocation(line: 0, scope: !1637)
!1646 = !DILocation(line: 261, column: 3, scope: !1637)
!1647 = !DILocation(line: 265, column: 7, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1637, file: !497, line: 265, column: 7)
!1649 = !DILocation(line: 265, column: 7, scope: !1637)
!1650 = !DILocation(line: 266, column: 5, scope: !1648)
!1651 = !DILocation(line: 272, column: 7, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1648, file: !497, line: 268, column: 5)
!1653 = !DILocation(line: 276, column: 3, scope: !1637)
!1654 = !{i64 0, i64 8, !948, i64 8, i64 8, !948, i64 16, i64 8, !948, i64 24, i64 4, !1020, i64 28, i64 4, !1020}
!1655 = !DILocation(line: 282, column: 1, scope: !1637)
!1656 = distinct !DISubprogram(name: "flush_stdout", scope: !497, file: !497, line: 163, type: !548, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1657)
!1657 = !{!1658}
!1658 = !DILocalVariable(name: "stdout_fd", scope: !1656, file: !497, line: 166, type: !116)
!1659 = !DILocation(line: 0, scope: !1656)
!1660 = !DILocalVariable(name: "fd", arg: 1, scope: !1661, file: !497, line: 145, type: !116)
!1661 = distinct !DISubprogram(name: "is_open", scope: !497, file: !497, line: 145, type: !1662, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1664)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!116, !116}
!1664 = !{!1660}
!1665 = !DILocation(line: 0, scope: !1661, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 182, column: 25, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1656, file: !497, line: 182, column: 7)
!1668 = !DILocation(line: 157, column: 15, scope: !1661, inlinedAt: !1666)
!1669 = !DILocation(line: 157, column: 12, scope: !1661, inlinedAt: !1666)
!1670 = !DILocation(line: 182, column: 7, scope: !1656)
!1671 = !DILocation(line: 184, column: 5, scope: !1667)
!1672 = !DILocation(line: 185, column: 1, scope: !1656)
!1673 = distinct !DISubprogram(name: "error_tail", scope: !497, file: !497, line: 219, type: !1638, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1674)
!1674 = !{!1675, !1676, !1677, !1678}
!1675 = !DILocalVariable(name: "status", arg: 1, scope: !1673, file: !497, line: 219, type: !116)
!1676 = !DILocalVariable(name: "errnum", arg: 2, scope: !1673, file: !497, line: 219, type: !116)
!1677 = !DILocalVariable(name: "message", arg: 3, scope: !1673, file: !497, line: 219, type: !165)
!1678 = !DILocalVariable(name: "args", arg: 4, scope: !1673, file: !497, line: 219, type: !507)
!1679 = distinct !DIAssignID()
!1680 = !DILocation(line: 0, scope: !1673)
!1681 = !DILocation(line: 229, column: 13, scope: !1673)
!1682 = !DILocation(line: 135, column: 10, scope: !1683, inlinedAt: !1725)
!1683 = distinct !DISubprogram(name: "vfprintf", scope: !1007, file: !1007, line: 132, type: !1684, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1721)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!116, !1686, !1011, !509}
!1686 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1687)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1689)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1689, file: !236, line: 51, baseType: !116, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1689, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1689, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1689, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1689, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1689, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1689, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1689, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1689, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1689, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1689, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1689, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1689, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1689, file: !236, line: 70, baseType: !1705, size: 64, offset: 832)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1689, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1689, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1689, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1689, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1689, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1689, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1689, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1689, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1689, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1689, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1689, file: !236, line: 93, baseType: !1705, size: 64, offset: 1344)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1689, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1689, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1689, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1689, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!1721 = !{!1722, !1723, !1724}
!1722 = !DILocalVariable(name: "__stream", arg: 1, scope: !1683, file: !1007, line: 132, type: !1686)
!1723 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1683, file: !1007, line: 133, type: !1011)
!1724 = !DILocalVariable(name: "__ap", arg: 3, scope: !1683, file: !1007, line: 133, type: !509)
!1725 = distinct !DILocation(line: 229, column: 3, scope: !1673)
!1726 = !{!1727, !1729}
!1727 = distinct !{!1727, !1728, !"vfprintf.inline: argument 0"}
!1728 = distinct !{!1728, !"vfprintf.inline"}
!1729 = distinct !{!1729, !1728, !"vfprintf.inline: argument 1"}
!1730 = !DILocation(line: 229, column: 3, scope: !1673)
!1731 = !DILocation(line: 0, scope: !1683, inlinedAt: !1725)
!1732 = !DILocation(line: 232, column: 3, scope: !1673)
!1733 = !DILocation(line: 233, column: 7, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1673, file: !497, line: 233, column: 7)
!1735 = !DILocation(line: 233, column: 7, scope: !1673)
!1736 = !DILocalVariable(name: "errbuf", scope: !1737, file: !497, line: 193, type: !1741)
!1737 = distinct !DISubprogram(name: "print_errno_message", scope: !497, file: !497, line: 188, type: !938, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1738)
!1738 = !{!1739, !1740, !1736}
!1739 = !DILocalVariable(name: "errnum", arg: 1, scope: !1737, file: !497, line: 188, type: !116)
!1740 = !DILocalVariable(name: "s", scope: !1737, file: !497, line: 190, type: !165)
!1741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1742)
!1742 = !{!1743}
!1743 = !DISubrange(count: 1024)
!1744 = !DILocation(line: 0, scope: !1737, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 234, column: 5, scope: !1734)
!1746 = !DILocation(line: 193, column: 3, scope: !1737, inlinedAt: !1745)
!1747 = !DILocation(line: 195, column: 7, scope: !1737, inlinedAt: !1745)
!1748 = !DILocation(line: 207, column: 9, scope: !1749, inlinedAt: !1745)
!1749 = distinct !DILexicalBlock(scope: !1737, file: !497, line: 207, column: 7)
!1750 = !DILocation(line: 207, column: 7, scope: !1737, inlinedAt: !1745)
!1751 = !DILocation(line: 208, column: 9, scope: !1749, inlinedAt: !1745)
!1752 = !DILocation(line: 208, column: 5, scope: !1749, inlinedAt: !1745)
!1753 = !DILocation(line: 214, column: 3, scope: !1737, inlinedAt: !1745)
!1754 = !DILocation(line: 216, column: 1, scope: !1737, inlinedAt: !1745)
!1755 = !DILocation(line: 234, column: 5, scope: !1734)
!1756 = !DILocation(line: 238, column: 3, scope: !1673)
!1757 = !DILocalVariable(name: "__c", arg: 1, scope: !1758, file: !1345, line: 101, type: !116)
!1758 = distinct !DISubprogram(name: "putc_unlocked", scope: !1345, file: !1345, line: 101, type: !1759, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1761)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!116, !116, !1687}
!1761 = !{!1757, !1762}
!1762 = !DILocalVariable(name: "__stream", arg: 2, scope: !1758, file: !1345, line: 101, type: !1687)
!1763 = !DILocation(line: 0, scope: !1758, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 238, column: 3, scope: !1673)
!1765 = !DILocation(line: 103, column: 10, scope: !1758, inlinedAt: !1764)
!1766 = !{!1354, !949, i64 40}
!1767 = !{!1354, !949, i64 48}
!1768 = !{!"branch_weights", i32 2000, i32 1}
!1769 = !DILocation(line: 240, column: 3, scope: !1673)
!1770 = !DILocation(line: 241, column: 7, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1673, file: !497, line: 241, column: 7)
!1772 = !DILocation(line: 241, column: 7, scope: !1673)
!1773 = !DILocation(line: 242, column: 5, scope: !1771)
!1774 = !DILocation(line: 243, column: 1, scope: !1673)
!1775 = !DISubprogram(name: "__vfprintf_chk", scope: !1007, file: !1007, line: 96, type: !1776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!116, !1686, !116, !1011, !509}
!1778 = !DISubprogram(name: "strerror_r", scope: !1137, file: !1137, line: 444, type: !1779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!159, !116, !159, !162}
!1781 = !DISubprogram(name: "__overflow", scope: !508, file: !508, line: 886, type: !1782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!116, !1687, !116}
!1784 = !DISubprogram(name: "fcntl", scope: !1785, file: !1785, line: 149, type: !1786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1785 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!116, !116, !116, null}
!1788 = distinct !DISubprogram(name: "error", scope: !497, file: !497, line: 285, type: !1789, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1791)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{null, !116, !116, !165, null}
!1791 = !{!1792, !1793, !1794, !1795}
!1792 = !DILocalVariable(name: "status", arg: 1, scope: !1788, file: !497, line: 285, type: !116)
!1793 = !DILocalVariable(name: "errnum", arg: 2, scope: !1788, file: !497, line: 285, type: !116)
!1794 = !DILocalVariable(name: "message", arg: 3, scope: !1788, file: !497, line: 285, type: !165)
!1795 = !DILocalVariable(name: "ap", scope: !1788, file: !497, line: 287, type: !507)
!1796 = distinct !DIAssignID()
!1797 = !DILocation(line: 0, scope: !1788)
!1798 = !DILocation(line: 287, column: 3, scope: !1788)
!1799 = !DILocation(line: 288, column: 3, scope: !1788)
!1800 = !DILocation(line: 289, column: 3, scope: !1788)
!1801 = !DILocation(line: 290, column: 3, scope: !1788)
!1802 = !DILocation(line: 291, column: 1, scope: !1788)
!1803 = !DILocation(line: 0, scope: !504)
!1804 = !DILocation(line: 302, column: 7, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !504, file: !497, line: 302, column: 7)
!1806 = !DILocation(line: 302, column: 7, scope: !504)
!1807 = !DILocation(line: 307, column: 11, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !497, line: 307, column: 11)
!1809 = distinct !DILexicalBlock(scope: !1805, file: !497, line: 303, column: 5)
!1810 = !DILocation(line: 307, column: 27, scope: !1808)
!1811 = !DILocation(line: 308, column: 11, scope: !1808)
!1812 = !DILocation(line: 308, column: 28, scope: !1808)
!1813 = !DILocation(line: 308, column: 25, scope: !1808)
!1814 = !DILocation(line: 309, column: 15, scope: !1808)
!1815 = !DILocation(line: 309, column: 33, scope: !1808)
!1816 = !DILocation(line: 310, column: 19, scope: !1808)
!1817 = !DILocation(line: 311, column: 22, scope: !1808)
!1818 = !DILocation(line: 311, column: 56, scope: !1808)
!1819 = !DILocation(line: 307, column: 11, scope: !1809)
!1820 = !DILocation(line: 316, column: 21, scope: !1809)
!1821 = !DILocation(line: 317, column: 23, scope: !1809)
!1822 = !DILocation(line: 318, column: 5, scope: !1809)
!1823 = !DILocation(line: 327, column: 3, scope: !504)
!1824 = !DILocation(line: 331, column: 7, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !504, file: !497, line: 331, column: 7)
!1826 = !DILocation(line: 331, column: 7, scope: !504)
!1827 = !DILocation(line: 332, column: 5, scope: !1825)
!1828 = !DILocation(line: 338, column: 7, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1825, file: !497, line: 334, column: 5)
!1830 = !DILocation(line: 346, column: 3, scope: !504)
!1831 = !DILocation(line: 350, column: 3, scope: !504)
!1832 = !DILocation(line: 356, column: 1, scope: !504)
!1833 = distinct !DISubprogram(name: "error_at_line", scope: !497, file: !497, line: 359, type: !1834, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1836)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{null, !116, !116, !165, !103, !165, null}
!1836 = !{!1837, !1838, !1839, !1840, !1841, !1842}
!1837 = !DILocalVariable(name: "status", arg: 1, scope: !1833, file: !497, line: 359, type: !116)
!1838 = !DILocalVariable(name: "errnum", arg: 2, scope: !1833, file: !497, line: 359, type: !116)
!1839 = !DILocalVariable(name: "file_name", arg: 3, scope: !1833, file: !497, line: 359, type: !165)
!1840 = !DILocalVariable(name: "line_number", arg: 4, scope: !1833, file: !497, line: 360, type: !103)
!1841 = !DILocalVariable(name: "message", arg: 5, scope: !1833, file: !497, line: 360, type: !165)
!1842 = !DILocalVariable(name: "ap", scope: !1833, file: !497, line: 362, type: !507)
!1843 = distinct !DIAssignID()
!1844 = !DILocation(line: 0, scope: !1833)
!1845 = !DILocation(line: 362, column: 3, scope: !1833)
!1846 = !DILocation(line: 363, column: 3, scope: !1833)
!1847 = !DILocation(line: 364, column: 3, scope: !1833)
!1848 = !DILocation(line: 366, column: 3, scope: !1833)
!1849 = !DILocation(line: 367, column: 1, scope: !1833)
!1850 = distinct !DISubprogram(name: "fdadvise", scope: !843, file: !843, line: 25, type: !1851, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !1855)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !116, !1853, !1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !508, line: 63, baseType: !258)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !846, line: 51, baseType: !845)
!1855 = !{!1856, !1857, !1858, !1859}
!1856 = !DILocalVariable(name: "fd", arg: 1, scope: !1850, file: !843, line: 25, type: !116)
!1857 = !DILocalVariable(name: "offset", arg: 2, scope: !1850, file: !843, line: 25, type: !1853)
!1858 = !DILocalVariable(name: "len", arg: 3, scope: !1850, file: !843, line: 25, type: !1853)
!1859 = !DILocalVariable(name: "advice", arg: 4, scope: !1850, file: !843, line: 25, type: !1854)
!1860 = !DILocation(line: 0, scope: !1850)
!1861 = !DILocation(line: 28, column: 3, scope: !1850)
!1862 = !DILocation(line: 30, column: 1, scope: !1850)
!1863 = !DISubprogram(name: "posix_fadvise", scope: !1785, file: !1785, line: 273, type: !1864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!116, !116, !1853, !1853, !116}
!1866 = distinct !DISubprogram(name: "fadvise", scope: !843, file: !843, line: 33, type: !1867, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !1903)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !1869, !1854}
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1871)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1872)
!1872 = !{!1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1871, file: !236, line: 51, baseType: !116, size: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1871, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1871, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1871, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1871, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1871, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1871, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1871, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1871, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1871, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1871, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1871, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1871, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1871, file: !236, line: 70, baseType: !1887, size: 64, offset: 832)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1871, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1871, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1871, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1871, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1871, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1871, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1871, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1871, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1871, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1871, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1871, file: !236, line: 93, baseType: !1887, size: 64, offset: 1344)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1871, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1871, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1871, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1871, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!1903 = !{!1904, !1905}
!1904 = !DILocalVariable(name: "fp", arg: 1, scope: !1866, file: !843, line: 33, type: !1869)
!1905 = !DILocalVariable(name: "advice", arg: 2, scope: !1866, file: !843, line: 33, type: !1854)
!1906 = !DILocation(line: 0, scope: !1866)
!1907 = !DILocation(line: 35, column: 7, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1866, file: !843, line: 35, column: 7)
!1909 = !DILocation(line: 35, column: 7, scope: !1866)
!1910 = !DILocation(line: 36, column: 15, scope: !1908)
!1911 = !DILocation(line: 0, scope: !1850, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 36, column: 5, scope: !1908)
!1913 = !DILocation(line: 28, column: 3, scope: !1850, inlinedAt: !1912)
!1914 = !DILocation(line: 36, column: 5, scope: !1908)
!1915 = !DILocation(line: 37, column: 1, scope: !1866)
!1916 = !DISubprogram(name: "fileno", scope: !508, file: !508, line: 809, type: !1917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!116, !1869}
!1919 = distinct !DISubprogram(name: "rpl_fclose", scope: !848, file: !848, line: 58, type: !1920, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !847, retainedNodes: !1956)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!116, !1922}
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1924)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1925)
!1925 = !{!1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1924, file: !236, line: 51, baseType: !116, size: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1924, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1924, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1924, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1924, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1924, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1924, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1924, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1924, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1924, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1924, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1924, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1924, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1924, file: !236, line: 70, baseType: !1940, size: 64, offset: 832)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1924, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1924, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1924, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1924, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1924, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1924, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1924, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1924, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1924, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1924, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1924, file: !236, line: 93, baseType: !1940, size: 64, offset: 1344)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1924, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1924, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1924, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1924, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!1956 = !{!1957, !1958, !1959, !1960}
!1957 = !DILocalVariable(name: "fp", arg: 1, scope: !1919, file: !848, line: 58, type: !1922)
!1958 = !DILocalVariable(name: "saved_errno", scope: !1919, file: !848, line: 60, type: !116)
!1959 = !DILocalVariable(name: "fd", scope: !1919, file: !848, line: 63, type: !116)
!1960 = !DILocalVariable(name: "result", scope: !1919, file: !848, line: 74, type: !116)
!1961 = !DILocation(line: 0, scope: !1919)
!1962 = !DILocation(line: 63, column: 12, scope: !1919)
!1963 = !DILocation(line: 64, column: 10, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1919, file: !848, line: 64, column: 7)
!1965 = !DILocation(line: 64, column: 7, scope: !1919)
!1966 = !DILocation(line: 65, column: 12, scope: !1964)
!1967 = !DILocation(line: 65, column: 5, scope: !1964)
!1968 = !DILocation(line: 70, column: 9, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1919, file: !848, line: 70, column: 7)
!1970 = !DILocation(line: 70, column: 23, scope: !1969)
!1971 = !DILocation(line: 70, column: 33, scope: !1969)
!1972 = !DILocation(line: 70, column: 26, scope: !1969)
!1973 = !DILocation(line: 70, column: 59, scope: !1969)
!1974 = !DILocation(line: 71, column: 7, scope: !1969)
!1975 = !DILocation(line: 71, column: 10, scope: !1969)
!1976 = !DILocation(line: 70, column: 7, scope: !1919)
!1977 = !DILocation(line: 100, column: 12, scope: !1919)
!1978 = !DILocation(line: 105, column: 7, scope: !1919)
!1979 = !DILocation(line: 72, column: 19, scope: !1969)
!1980 = !DILocation(line: 105, column: 19, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1919, file: !848, line: 105, column: 7)
!1982 = !DILocation(line: 107, column: 13, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1981, file: !848, line: 106, column: 5)
!1984 = !DILocation(line: 109, column: 5, scope: !1983)
!1985 = !DILocation(line: 112, column: 1, scope: !1919)
!1986 = !DISubprogram(name: "fclose", scope: !508, file: !508, line: 178, type: !1920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1987 = !DISubprogram(name: "__freading", scope: !1988, file: !1988, line: 51, type: !1920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1988 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!1989 = !DISubprogram(name: "lseek", scope: !1636, file: !1636, line: 339, type: !1990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!258, !116, !258, !116}
!1992 = distinct !DISubprogram(name: "rpl_fflush", scope: !850, file: !850, line: 130, type: !1993, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !2029)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!116, !1995}
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1997)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1998)
!1998 = !{!1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1997, file: !236, line: 51, baseType: !116, size: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1997, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1997, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1997, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1997, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1997, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1997, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1997, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1997, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1997, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1997, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1997, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1997, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1997, file: !236, line: 70, baseType: !2013, size: 64, offset: 832)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1997, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1997, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1997, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1997, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1997, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1997, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1997, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1997, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1997, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1997, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1997, file: !236, line: 93, baseType: !2013, size: 64, offset: 1344)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1997, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1997, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1997, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1997, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2029 = !{!2030}
!2030 = !DILocalVariable(name: "stream", arg: 1, scope: !1992, file: !850, line: 130, type: !1995)
!2031 = !DILocation(line: 0, scope: !1992)
!2032 = !DILocation(line: 151, column: 14, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1992, file: !850, line: 151, column: 7)
!2034 = !DILocation(line: 151, column: 22, scope: !2033)
!2035 = !DILocation(line: 151, column: 27, scope: !2033)
!2036 = !DILocation(line: 151, column: 7, scope: !1992)
!2037 = !DILocation(line: 152, column: 12, scope: !2033)
!2038 = !DILocation(line: 152, column: 5, scope: !2033)
!2039 = !DILocalVariable(name: "fp", arg: 1, scope: !2040, file: !850, line: 42, type: !1995)
!2040 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !850, file: !850, line: 42, type: !2041, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !2043)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{null, !1995}
!2043 = !{!2039}
!2044 = !DILocation(line: 0, scope: !2040, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 157, column: 3, scope: !1992)
!2046 = !DILocation(line: 44, column: 12, scope: !2047, inlinedAt: !2045)
!2047 = distinct !DILexicalBlock(scope: !2040, file: !850, line: 44, column: 7)
!2048 = !DILocation(line: 44, column: 19, scope: !2047, inlinedAt: !2045)
!2049 = !DILocation(line: 44, column: 7, scope: !2040, inlinedAt: !2045)
!2050 = !DILocation(line: 46, column: 5, scope: !2047, inlinedAt: !2045)
!2051 = !DILocation(line: 159, column: 10, scope: !1992)
!2052 = !DILocation(line: 159, column: 3, scope: !1992)
!2053 = !DILocation(line: 236, column: 1, scope: !1992)
!2054 = !DISubprogram(name: "fflush", scope: !508, file: !508, line: 230, type: !1993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2055 = distinct !DISubprogram(name: "fopen_safer", scope: !853, file: !853, line: 31, type: !2056, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !852, retainedNodes: !2092)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!2058, !165, !165}
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !2060)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !2061)
!2061 = !{!2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2060, file: !236, line: 51, baseType: !116, size: 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2060, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2060, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2060, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2060, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2060, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2060, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2060, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2060, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2060, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2060, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2060, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2060, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2060, file: !236, line: 70, baseType: !2076, size: 64, offset: 832)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2060, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2060, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2060, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2060, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2060, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2060, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2060, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2060, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2060, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2060, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2060, file: !236, line: 93, baseType: !2076, size: 64, offset: 1344)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2060, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2060, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2060, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2060, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2092 = !{!2093, !2094, !2095, !2096, !2099, !2102, !2105}
!2093 = !DILocalVariable(name: "file", arg: 1, scope: !2055, file: !853, line: 31, type: !165)
!2094 = !DILocalVariable(name: "mode", arg: 2, scope: !2055, file: !853, line: 31, type: !165)
!2095 = !DILocalVariable(name: "fp", scope: !2055, file: !853, line: 33, type: !2058)
!2096 = !DILocalVariable(name: "fd", scope: !2097, file: !853, line: 37, type: !116)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !853, line: 36, column: 5)
!2098 = distinct !DILexicalBlock(scope: !2055, file: !853, line: 35, column: 7)
!2099 = !DILocalVariable(name: "f", scope: !2100, file: !853, line: 41, type: !116)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !853, line: 40, column: 9)
!2101 = distinct !DILexicalBlock(scope: !2097, file: !853, line: 39, column: 11)
!2102 = !DILocalVariable(name: "saved_errno", scope: !2103, file: !853, line: 45, type: !116)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !853, line: 44, column: 13)
!2104 = distinct !DILexicalBlock(scope: !2100, file: !853, line: 43, column: 15)
!2105 = !DILocalVariable(name: "saved_errno", scope: !2106, file: !853, line: 54, type: !116)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !853, line: 53, column: 13)
!2107 = distinct !DILexicalBlock(scope: !2100, file: !853, line: 51, column: 15)
!2108 = !DILocation(line: 0, scope: !2055)
!2109 = !DILocation(line: 33, column: 14, scope: !2055)
!2110 = !DILocation(line: 35, column: 7, scope: !2098)
!2111 = !DILocation(line: 35, column: 7, scope: !2055)
!2112 = !DILocation(line: 37, column: 16, scope: !2097)
!2113 = !DILocation(line: 0, scope: !2097)
!2114 = !DILocation(line: 39, column: 19, scope: !2101)
!2115 = !DILocation(line: 41, column: 19, scope: !2100)
!2116 = !DILocation(line: 0, scope: !2100)
!2117 = !DILocation(line: 43, column: 17, scope: !2104)
!2118 = !DILocation(line: 43, column: 15, scope: !2100)
!2119 = !DILocation(line: 45, column: 33, scope: !2103)
!2120 = !DILocation(line: 0, scope: !2103)
!2121 = !DILocation(line: 46, column: 15, scope: !2103)
!2122 = !DILocation(line: 47, column: 21, scope: !2103)
!2123 = !DILocation(line: 51, column: 15, scope: !2107)
!2124 = !DILocation(line: 51, column: 27, scope: !2107)
!2125 = !DILocation(line: 52, column: 15, scope: !2107)
!2126 = !DILocation(line: 52, column: 26, scope: !2107)
!2127 = !DILocation(line: 52, column: 24, scope: !2107)
!2128 = !DILocation(line: 51, column: 15, scope: !2100)
!2129 = !DILocation(line: 54, column: 33, scope: !2106)
!2130 = !DILocation(line: 0, scope: !2106)
!2131 = !DILocation(line: 55, column: 15, scope: !2106)
!2132 = !DILocation(line: 56, column: 21, scope: !2106)
!2133 = !DILocation(line: 63, column: 1, scope: !2055)
!2134 = !DISubprogram(name: "fdopen", scope: !508, file: !508, line: 293, type: !2135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!2058, !116, !165}
!2137 = !DISubprogram(name: "close", scope: !1636, file: !1636, line: 358, type: !1662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2138 = distinct !DISubprogram(name: "fpurge", scope: !855, file: !855, line: 32, type: !2139, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !854, retainedNodes: !2175)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!116, !2141}
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !2143)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !2144)
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2143, file: !236, line: 51, baseType: !116, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2143, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2143, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2143, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2143, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2143, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2143, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2143, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2143, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2143, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2143, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2143, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2143, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2143, file: !236, line: 70, baseType: !2159, size: 64, offset: 832)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2143, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2143, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2143, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2143, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2143, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2143, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2143, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2143, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2143, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2143, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2143, file: !236, line: 93, baseType: !2159, size: 64, offset: 1344)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2143, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2143, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2143, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2143, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2175 = !{!2176}
!2176 = !DILocalVariable(name: "fp", arg: 1, scope: !2138, file: !855, line: 32, type: !2141)
!2177 = !DILocation(line: 0, scope: !2138)
!2178 = !DILocation(line: 36, column: 3, scope: !2138)
!2179 = !DILocation(line: 38, column: 3, scope: !2138)
!2180 = !DISubprogram(name: "__fpurge", scope: !1988, file: !1988, line: 72, type: !2181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{null, !2141}
!2183 = distinct !DISubprogram(name: "rpl_fseeko", scope: !857, file: !857, line: 28, type: !2184, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !2220)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!116, !2186, !1853, !116}
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !2188)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !2189)
!2189 = !{!2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2188, file: !236, line: 51, baseType: !116, size: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2188, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2188, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2188, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2188, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2188, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2188, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2188, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2188, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2188, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2188, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2188, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2188, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2188, file: !236, line: 70, baseType: !2204, size: 64, offset: 832)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2188, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2188, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2188, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2188, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2188, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2188, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2188, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2188, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2188, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2188, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2188, file: !236, line: 93, baseType: !2204, size: 64, offset: 1344)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2188, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2188, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2188, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2188, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2220 = !{!2221, !2222, !2223, !2224}
!2221 = !DILocalVariable(name: "fp", arg: 1, scope: !2183, file: !857, line: 28, type: !2186)
!2222 = !DILocalVariable(name: "offset", arg: 2, scope: !2183, file: !857, line: 28, type: !1853)
!2223 = !DILocalVariable(name: "whence", arg: 3, scope: !2183, file: !857, line: 28, type: !116)
!2224 = !DILocalVariable(name: "pos", scope: !2225, file: !857, line: 123, type: !1853)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !857, line: 119, column: 5)
!2226 = distinct !DILexicalBlock(scope: !2183, file: !857, line: 55, column: 7)
!2227 = !DILocation(line: 0, scope: !2183)
!2228 = !DILocation(line: 55, column: 12, scope: !2226)
!2229 = !{!1354, !949, i64 16}
!2230 = !DILocation(line: 55, column: 33, scope: !2226)
!2231 = !{!1354, !949, i64 8}
!2232 = !DILocation(line: 55, column: 25, scope: !2226)
!2233 = !DILocation(line: 56, column: 7, scope: !2226)
!2234 = !DILocation(line: 56, column: 15, scope: !2226)
!2235 = !DILocation(line: 56, column: 37, scope: !2226)
!2236 = !{!1354, !949, i64 32}
!2237 = !DILocation(line: 56, column: 29, scope: !2226)
!2238 = !DILocation(line: 57, column: 7, scope: !2226)
!2239 = !DILocation(line: 57, column: 15, scope: !2226)
!2240 = !{!1354, !949, i64 72}
!2241 = !DILocation(line: 57, column: 29, scope: !2226)
!2242 = !DILocation(line: 55, column: 7, scope: !2183)
!2243 = !DILocation(line: 123, column: 26, scope: !2225)
!2244 = !DILocation(line: 123, column: 19, scope: !2225)
!2245 = !DILocation(line: 0, scope: !2225)
!2246 = !DILocation(line: 124, column: 15, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2225, file: !857, line: 124, column: 11)
!2248 = !DILocation(line: 124, column: 11, scope: !2225)
!2249 = !DILocation(line: 135, column: 19, scope: !2225)
!2250 = !DILocation(line: 136, column: 12, scope: !2225)
!2251 = !DILocation(line: 136, column: 20, scope: !2225)
!2252 = !{!1354, !1204, i64 144}
!2253 = !DILocation(line: 167, column: 7, scope: !2225)
!2254 = !DILocation(line: 169, column: 10, scope: !2183)
!2255 = !DILocation(line: 169, column: 3, scope: !2183)
!2256 = !DILocation(line: 170, column: 1, scope: !2183)
!2257 = !DISubprogram(name: "fseeko", scope: !508, file: !508, line: 736, type: !2258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!116, !2186, !258, !116}
!2260 = distinct !DISubprogram(name: "getprogname", scope: !859, file: !859, line: 54, type: !2261, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!165}
!2263 = !DILocation(line: 58, column: 10, scope: !2260)
!2264 = !DILocation(line: 58, column: 3, scope: !2260)
!2265 = distinct !DISubprogram(name: "hard_locale", scope: !552, file: !552, line: 28, type: !2266, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !860, retainedNodes: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!205, !116}
!2268 = !{!2269, !2270}
!2269 = !DILocalVariable(name: "category", arg: 1, scope: !2265, file: !552, line: 28, type: !116)
!2270 = !DILocalVariable(name: "locale", scope: !2265, file: !552, line: 30, type: !2271)
!2271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !2272)
!2272 = !{!2273}
!2273 = !DISubrange(count: 257)
!2274 = distinct !DIAssignID()
!2275 = !DILocation(line: 0, scope: !2265)
!2276 = !DILocation(line: 30, column: 3, scope: !2265)
!2277 = !DILocation(line: 32, column: 7, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2265, file: !552, line: 32, column: 7)
!2279 = !DILocation(line: 32, column: 7, scope: !2265)
!2280 = !DILocalVariable(name: "__s1", arg: 1, scope: !2281, file: !1033, line: 1359, type: !165)
!2281 = distinct !DISubprogram(name: "streq", scope: !1033, file: !1033, line: 1359, type: !1034, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !860, retainedNodes: !2282)
!2282 = !{!2280, !2283}
!2283 = !DILocalVariable(name: "__s2", arg: 2, scope: !2281, file: !1033, line: 1359, type: !165)
!2284 = !DILocation(line: 0, scope: !2281, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 35, column: 9, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2265, file: !552, line: 35, column: 7)
!2287 = !DILocation(line: 1361, column: 11, scope: !2281, inlinedAt: !2285)
!2288 = !DILocation(line: 1361, column: 10, scope: !2281, inlinedAt: !2285)
!2289 = !DILocation(line: 35, column: 29, scope: !2286)
!2290 = !DILocation(line: 0, scope: !2281, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 35, column: 32, scope: !2286)
!2292 = !DILocation(line: 1361, column: 11, scope: !2281, inlinedAt: !2291)
!2293 = !DILocation(line: 1361, column: 10, scope: !2281, inlinedAt: !2291)
!2294 = !DILocation(line: 35, column: 7, scope: !2265)
!2295 = !DILocation(line: 46, column: 3, scope: !2265)
!2296 = !DILocation(line: 47, column: 1, scope: !2265)
!2297 = distinct !DISubprogram(name: "initbuffer", scope: !863, file: !863, line: 37, type: !2298, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !2307)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{null, !2300}
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !2302, line: 32, size: 192, elements: !2303)
!2302 = !DIFile(filename: "lib/linebuffer.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a0b4e97fdade8fc6fdf94c5a34c83419")
!2303 = !{!2304, !2305, !2306}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2301, file: !2302, line: 34, baseType: !900, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2301, file: !2302, line: 35, baseType: !900, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2301, file: !2302, line: 36, baseType: !159, size: 64, offset: 128)
!2307 = !{!2308}
!2308 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2297, file: !863, line: 37, type: !2300)
!2309 = !DILocation(line: 0, scope: !2297)
!2310 = !DILocalVariable(name: "__dest", arg: 1, scope: !2311, file: !2312, line: 57, type: !160)
!2311 = distinct !DISubprogram(name: "memset", scope: !2312, file: !2312, line: 57, type: !2313, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !2315)
!2312 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!160, !160, !116, !162}
!2315 = !{!2310, !2316, !2317}
!2316 = !DILocalVariable(name: "__ch", arg: 2, scope: !2311, file: !2312, line: 57, type: !116)
!2317 = !DILocalVariable(name: "__len", arg: 3, scope: !2311, file: !2312, line: 57, type: !162)
!2318 = !DILocation(line: 0, scope: !2311, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 39, column: 3, scope: !2297)
!2320 = !DILocation(line: 59, column: 10, scope: !2311, inlinedAt: !2319)
!2321 = !DILocation(line: 40, column: 1, scope: !2297)
!2322 = distinct !DISubprogram(name: "readlinebuffer", scope: !863, file: !863, line: 43, type: !2323, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !2359)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!2300, !2300, !2325}
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !2327)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !2328)
!2328 = !{!2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2327, file: !236, line: 51, baseType: !116, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2327, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2327, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2327, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2327, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2327, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2327, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2327, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2327, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2327, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2327, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2327, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2327, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2327, file: !236, line: 70, baseType: !2343, size: 64, offset: 832)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2327, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2327, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2327, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2327, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2327, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2327, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2327, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2327, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2327, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2327, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2327, file: !236, line: 93, baseType: !2343, size: 64, offset: 1344)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2327, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2327, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2327, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2327, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2359 = !{!2360, !2361}
!2360 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2322, file: !863, line: 43, type: !2300)
!2361 = !DILocalVariable(name: "stream", arg: 2, scope: !2322, file: !863, line: 43, type: !2325)
!2362 = !DILocation(line: 0, scope: !2322)
!2363 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2364, file: !863, line: 59, type: !2300)
!2364 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !863, file: !863, line: 59, type: !2365, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !2367)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!2300, !2300, !2325, !4}
!2367 = !{!2363, !2368, !2369, !2370, !2371, !2372, !2373, !2374}
!2368 = !DILocalVariable(name: "stream", arg: 2, scope: !2364, file: !863, line: 59, type: !2325)
!2369 = !DILocalVariable(name: "delimiter", arg: 3, scope: !2364, file: !863, line: 60, type: !4)
!2370 = !DILocalVariable(name: "buffer", scope: !2364, file: !863, line: 65, type: !159)
!2371 = !DILocalVariable(name: "p", scope: !2364, file: !863, line: 66, type: !159)
!2372 = !DILocalVariable(name: "end", scope: !2364, file: !863, line: 67, type: !159)
!2373 = !DILocalVariable(name: "c", scope: !2364, file: !863, line: 68, type: !116)
!2374 = !DILocalVariable(name: "oldsize", scope: !2375, file: !863, line: 83, type: !900)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !863, line: 82, column: 9)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !863, line: 81, column: 11)
!2377 = distinct !DILexicalBlock(scope: !2364, file: !863, line: 71, column: 5)
!2378 = !DILocation(line: 0, scope: !2364, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 45, column: 10, scope: !2322)
!2380 = !DILocalVariable(name: "__stream", arg: 1, scope: !2381, file: !1345, line: 128, type: !2325)
!2381 = distinct !DISubprogram(name: "feof_unlocked", scope: !1345, file: !1345, line: 128, type: !2382, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!116, !2325}
!2384 = !{!2380}
!2385 = !DILocation(line: 0, scope: !2381, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 62, column: 7, scope: !2387, inlinedAt: !2379)
!2387 = distinct !DILexicalBlock(scope: !2364, file: !863, line: 62, column: 7)
!2388 = !DILocation(line: 130, column: 10, scope: !2381, inlinedAt: !2386)
!2389 = !DILocation(line: 62, column: 7, scope: !2387, inlinedAt: !2379)
!2390 = !DILocation(line: 62, column: 7, scope: !2364, inlinedAt: !2379)
!2391 = !DILocation(line: 65, column: 30, scope: !2364, inlinedAt: !2379)
!2392 = !DILocation(line: 67, column: 36, scope: !2364, inlinedAt: !2379)
!2393 = !{!1386, !1204, i64 0}
!2394 = !DILocation(line: 67, column: 22, scope: !2364, inlinedAt: !2379)
!2395 = !DILocation(line: 70, column: 3, scope: !2364, inlinedAt: !2379)
!2396 = !DILocalVariable(name: "__fp", arg: 1, scope: !2397, file: !1345, line: 66, type: !2325)
!2397 = distinct !DISubprogram(name: "getc_unlocked", scope: !1345, file: !1345, line: 66, type: !2382, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !2398)
!2398 = !{!2396}
!2399 = !DILocation(line: 0, scope: !2397, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 72, column: 11, scope: !2377, inlinedAt: !2379)
!2401 = !DILocation(line: 68, column: 10, scope: !2397, inlinedAt: !2400)
!2402 = !DILocation(line: 73, column: 11, scope: !2377, inlinedAt: !2379)
!2403 = !DILocation(line: 73, column: 13, scope: !2404, inlinedAt: !2379)
!2404 = distinct !DILexicalBlock(scope: !2377, file: !863, line: 73, column: 11)
!2405 = !DILocation(line: 75, column: 17, scope: !2406, inlinedAt: !2379)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !863, line: 75, column: 15)
!2407 = distinct !DILexicalBlock(scope: !2404, file: !863, line: 74, column: 9)
!2408 = !DILocation(line: 75, column: 27, scope: !2406, inlinedAt: !2379)
!2409 = !DILocalVariable(name: "__stream", arg: 1, scope: !2410, file: !1345, line: 135, type: !2325)
!2410 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1345, file: !1345, line: 135, type: !2382, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !2411)
!2411 = !{!2409}
!2412 = !DILocation(line: 0, scope: !2410, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 75, column: 30, scope: !2406, inlinedAt: !2379)
!2414 = !DILocation(line: 137, column: 10, scope: !2410, inlinedAt: !2413)
!2415 = !DILocation(line: 75, column: 30, scope: !2406, inlinedAt: !2379)
!2416 = !DILocation(line: 75, column: 15, scope: !2407, inlinedAt: !2379)
!2417 = !DILocation(line: 77, column: 15, scope: !2418, inlinedAt: !2379)
!2418 = distinct !DILexicalBlock(scope: !2407, file: !863, line: 77, column: 15)
!2419 = !DILocation(line: 77, column: 21, scope: !2418, inlinedAt: !2379)
!2420 = !DILocation(line: 77, column: 15, scope: !2407, inlinedAt: !2379)
!2421 = !DILocation(line: 0, scope: !2377, inlinedAt: !2379)
!2422 = !DILocation(line: 81, column: 13, scope: !2376, inlinedAt: !2379)
!2423 = !DILocation(line: 81, column: 11, scope: !2377, inlinedAt: !2379)
!2424 = !DILocation(line: 83, column: 39, scope: !2375, inlinedAt: !2379)
!2425 = !DILocation(line: 0, scope: !2375, inlinedAt: !2379)
!2426 = !DILocation(line: 84, column: 20, scope: !2375, inlinedAt: !2379)
!2427 = !DILocation(line: 85, column: 22, scope: !2375, inlinedAt: !2379)
!2428 = !DILocation(line: 86, column: 30, scope: !2375, inlinedAt: !2379)
!2429 = !DILocation(line: 87, column: 38, scope: !2375, inlinedAt: !2379)
!2430 = !DILocation(line: 87, column: 24, scope: !2375, inlinedAt: !2379)
!2431 = !DILocation(line: 88, column: 9, scope: !2375, inlinedAt: !2379)
!2432 = !DILocation(line: 89, column: 14, scope: !2377, inlinedAt: !2379)
!2433 = !DILocation(line: 89, column: 9, scope: !2377, inlinedAt: !2379)
!2434 = !DILocation(line: 89, column: 12, scope: !2377, inlinedAt: !2379)
!2435 = !DILocation(line: 91, column: 12, scope: !2364, inlinedAt: !2379)
!2436 = !DILocation(line: 90, column: 5, scope: !2377, inlinedAt: !2379)
!2437 = distinct !{!2437, !2395, !2438, !1067}
!2438 = !DILocation(line: 91, column: 24, scope: !2364, inlinedAt: !2379)
!2439 = !DILocation(line: 93, column: 26, scope: !2364, inlinedAt: !2379)
!2440 = !DILocation(line: 93, column: 15, scope: !2364, inlinedAt: !2379)
!2441 = !DILocation(line: 93, column: 22, scope: !2364, inlinedAt: !2379)
!2442 = !DILocation(line: 94, column: 3, scope: !2364, inlinedAt: !2379)
!2443 = !DILocation(line: 45, column: 3, scope: !2322)
!2444 = !DISubprogram(name: "__uflow", scope: !508, file: !508, line: 885, type: !2382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2445 = !DILocation(line: 0, scope: !2364)
!2446 = !DILocation(line: 0, scope: !2381, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 62, column: 7, scope: !2387)
!2448 = !DILocation(line: 130, column: 10, scope: !2381, inlinedAt: !2447)
!2449 = !DILocation(line: 62, column: 7, scope: !2387)
!2450 = !DILocation(line: 62, column: 7, scope: !2364)
!2451 = !DILocation(line: 65, column: 30, scope: !2364)
!2452 = !DILocation(line: 67, column: 36, scope: !2364)
!2453 = !DILocation(line: 67, column: 22, scope: !2364)
!2454 = !DILocation(line: 70, column: 3, scope: !2364)
!2455 = !DILocation(line: 0, scope: !2397, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 72, column: 11, scope: !2377)
!2457 = !DILocation(line: 68, column: 10, scope: !2397, inlinedAt: !2456)
!2458 = !DILocation(line: 73, column: 11, scope: !2377)
!2459 = !DILocation(line: 73, column: 13, scope: !2404)
!2460 = !DILocation(line: 75, column: 17, scope: !2406)
!2461 = !DILocation(line: 75, column: 27, scope: !2406)
!2462 = !DILocation(line: 0, scope: !2410, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 75, column: 30, scope: !2406)
!2464 = !DILocation(line: 137, column: 10, scope: !2410, inlinedAt: !2463)
!2465 = !DILocation(line: 75, column: 30, scope: !2406)
!2466 = !DILocation(line: 75, column: 15, scope: !2407)
!2467 = !DILocation(line: 77, column: 15, scope: !2418)
!2468 = !DILocation(line: 77, column: 21, scope: !2418)
!2469 = !DILocation(line: 77, column: 15, scope: !2407)
!2470 = !DILocation(line: 0, scope: !2377)
!2471 = !DILocation(line: 81, column: 13, scope: !2376)
!2472 = !DILocation(line: 81, column: 11, scope: !2377)
!2473 = !DILocation(line: 83, column: 39, scope: !2375)
!2474 = !DILocation(line: 0, scope: !2375)
!2475 = !DILocation(line: 84, column: 20, scope: !2375)
!2476 = !DILocation(line: 85, column: 22, scope: !2375)
!2477 = !DILocation(line: 86, column: 30, scope: !2375)
!2478 = !DILocation(line: 87, column: 38, scope: !2375)
!2479 = !DILocation(line: 87, column: 24, scope: !2375)
!2480 = !DILocation(line: 88, column: 9, scope: !2375)
!2481 = !DILocation(line: 89, column: 14, scope: !2377)
!2482 = !DILocation(line: 89, column: 9, scope: !2377)
!2483 = !DILocation(line: 89, column: 12, scope: !2377)
!2484 = !DILocation(line: 91, column: 12, scope: !2364)
!2485 = !DILocation(line: 90, column: 5, scope: !2377)
!2486 = distinct !{!2486, !2454, !2487, !1067}
!2487 = !DILocation(line: 91, column: 24, scope: !2364)
!2488 = !DILocation(line: 93, column: 26, scope: !2364)
!2489 = !DILocation(line: 93, column: 15, scope: !2364)
!2490 = !DILocation(line: 93, column: 22, scope: !2364)
!2491 = !DILocation(line: 94, column: 3, scope: !2364)
!2492 = !DILocation(line: 95, column: 1, scope: !2364)
!2493 = distinct !DISubprogram(name: "freebuffer", scope: !863, file: !863, line: 100, type: !2298, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !2494)
!2494 = !{!2495}
!2495 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2493, file: !863, line: 100, type: !2300)
!2496 = !DILocation(line: 0, scope: !2493)
!2497 = !DILocation(line: 102, column: 21, scope: !2493)
!2498 = !DILocation(line: 102, column: 3, scope: !2493)
!2499 = !DILocation(line: 103, column: 1, scope: !2493)
!2500 = !DISubprogram(name: "free", scope: !1033, file: !1033, line: 752, type: !2501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{null, !160}
!2503 = distinct !DISubprogram(name: "memcmp2", scope: !867, file: !867, line: 25, type: !2504, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !2506)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!116, !165, !162, !165, !162}
!2506 = !{!2507, !2508, !2509, !2510, !2511}
!2507 = !DILocalVariable(name: "s1", arg: 1, scope: !2503, file: !867, line: 25, type: !165)
!2508 = !DILocalVariable(name: "n1", arg: 2, scope: !2503, file: !867, line: 25, type: !162)
!2509 = !DILocalVariable(name: "s2", arg: 3, scope: !2503, file: !867, line: 25, type: !165)
!2510 = !DILocalVariable(name: "n2", arg: 4, scope: !2503, file: !867, line: 25, type: !162)
!2511 = !DILocalVariable(name: "cmp", scope: !2503, file: !867, line: 27, type: !116)
!2512 = !DILocation(line: 0, scope: !2503)
!2513 = !DILocation(line: 27, column: 29, scope: !2503)
!2514 = !DILocation(line: 27, column: 13, scope: !2503)
!2515 = !DILocation(line: 28, column: 11, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2503, file: !867, line: 28, column: 7)
!2517 = !DILocation(line: 28, column: 7, scope: !2503)
!2518 = !DILocation(line: 29, column: 11, scope: !2516)
!2519 = !DILocation(line: 29, column: 5, scope: !2516)
!2520 = !DILocation(line: 30, column: 3, scope: !2503)
!2521 = distinct !DISubprogram(name: "set_program_name", scope: !558, file: !558, line: 37, type: !971, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !557, retainedNodes: !2522)
!2522 = !{!2523, !2524, !2525}
!2523 = !DILocalVariable(name: "argv0", arg: 1, scope: !2521, file: !558, line: 37, type: !165)
!2524 = !DILocalVariable(name: "slash", scope: !2521, file: !558, line: 44, type: !165)
!2525 = !DILocalVariable(name: "base", scope: !2521, file: !558, line: 45, type: !165)
!2526 = !DILocation(line: 0, scope: !2521)
!2527 = !DILocation(line: 44, column: 23, scope: !2521)
!2528 = !DILocation(line: 45, column: 22, scope: !2521)
!2529 = !DILocation(line: 46, column: 17, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2521, file: !558, line: 46, column: 7)
!2531 = !DILocation(line: 46, column: 9, scope: !2530)
!2532 = !DILocation(line: 46, column: 25, scope: !2530)
!2533 = !DILocation(line: 46, column: 40, scope: !2530)
!2534 = !DILocalVariable(name: "__s1", arg: 1, scope: !2535, file: !1033, line: 974, type: !1165)
!2535 = distinct !DISubprogram(name: "memeq", scope: !1033, file: !1033, line: 974, type: !2536, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !557, retainedNodes: !2538)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!205, !1165, !1165, !162}
!2538 = !{!2534, !2539, !2540}
!2539 = !DILocalVariable(name: "__s2", arg: 2, scope: !2535, file: !1033, line: 974, type: !1165)
!2540 = !DILocalVariable(name: "__n", arg: 3, scope: !2535, file: !1033, line: 974, type: !162)
!2541 = !DILocation(line: 0, scope: !2535, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 46, column: 28, scope: !2530)
!2543 = !DILocation(line: 976, column: 11, scope: !2535, inlinedAt: !2542)
!2544 = !DILocation(line: 976, column: 10, scope: !2535, inlinedAt: !2542)
!2545 = !DILocation(line: 46, column: 7, scope: !2521)
!2546 = !DILocation(line: 49, column: 11, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !558, line: 49, column: 11)
!2548 = distinct !DILexicalBlock(scope: !2530, file: !558, line: 47, column: 5)
!2549 = !DILocation(line: 49, column: 36, scope: !2547)
!2550 = !DILocation(line: 49, column: 11, scope: !2548)
!2551 = !DILocation(line: 65, column: 16, scope: !2521)
!2552 = !DILocation(line: 71, column: 27, scope: !2521)
!2553 = !DILocation(line: 74, column: 33, scope: !2521)
!2554 = !DILocation(line: 76, column: 1, scope: !2521)
!2555 = !DISubprogram(name: "strrchr", scope: !1137, file: !1137, line: 273, type: !1152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2556 = distinct !DIAssignID()
!2557 = !DILocation(line: 0, scope: !567)
!2558 = distinct !DIAssignID()
!2559 = !DILocation(line: 40, column: 29, scope: !567)
!2560 = !DILocation(line: 41, column: 19, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !567, file: !568, line: 41, column: 7)
!2562 = !DILocation(line: 41, column: 7, scope: !567)
!2563 = !DILocation(line: 47, column: 3, scope: !567)
!2564 = !DILocation(line: 48, column: 3, scope: !567)
!2565 = !DILocalVariable(name: "ps", arg: 1, scope: !2566, file: !2567, line: 1135, type: !2570)
!2566 = distinct !DISubprogram(name: "mbszero", scope: !2567, file: !2567, line: 1135, type: !2568, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !2571)
!2567 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2568 = !DISubroutineType(types: !2569)
!2569 = !{null, !2570}
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!2571 = !{!2565}
!2572 = !DILocation(line: 0, scope: !2566, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 48, column: 18, scope: !567)
!2574 = !DILocalVariable(name: "__dest", arg: 1, scope: !2575, file: !2312, line: 57, type: !160)
!2575 = distinct !DISubprogram(name: "memset", scope: !2312, file: !2312, line: 57, type: !2313, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !2576)
!2576 = !{!2574, !2577, !2578}
!2577 = !DILocalVariable(name: "__ch", arg: 2, scope: !2575, file: !2312, line: 57, type: !116)
!2578 = !DILocalVariable(name: "__len", arg: 3, scope: !2575, file: !2312, line: 57, type: !162)
!2579 = !DILocation(line: 0, scope: !2575, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 1137, column: 3, scope: !2566, inlinedAt: !2573)
!2581 = !DILocation(line: 59, column: 10, scope: !2575, inlinedAt: !2580)
!2582 = !DILocation(line: 49, column: 7, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !567, file: !568, line: 49, column: 7)
!2584 = !DILocation(line: 49, column: 39, scope: !2583)
!2585 = !DILocation(line: 49, column: 44, scope: !2583)
!2586 = !DILocation(line: 54, column: 1, scope: !567)
!2587 = !DISubprogram(name: "mbrtoc32", scope: !579, file: !579, line: 57, type: !2588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!162, !2590, !1011, !162, !2592}
!2590 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2591)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2570)
!2593 = distinct !DISubprogram(name: "clone_quoting_options", scope: !598, file: !598, line: 113, type: !2594, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !2597)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!2596, !2596}
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!2597 = !{!2598, !2599, !2600}
!2598 = !DILocalVariable(name: "o", arg: 1, scope: !2593, file: !598, line: 113, type: !2596)
!2599 = !DILocalVariable(name: "saved_errno", scope: !2593, file: !598, line: 115, type: !116)
!2600 = !DILocalVariable(name: "p", scope: !2593, file: !598, line: 116, type: !2596)
!2601 = !DILocation(line: 0, scope: !2593)
!2602 = !DILocation(line: 115, column: 21, scope: !2593)
!2603 = !DILocation(line: 116, column: 40, scope: !2593)
!2604 = !DILocation(line: 116, column: 31, scope: !2593)
!2605 = !DILocation(line: 118, column: 9, scope: !2593)
!2606 = !DILocation(line: 119, column: 3, scope: !2593)
!2607 = distinct !DISubprogram(name: "get_quoting_style", scope: !598, file: !598, line: 124, type: !2608, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !2612)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!624, !2610}
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!2612 = !{!2613}
!2613 = !DILocalVariable(name: "o", arg: 1, scope: !2607, file: !598, line: 124, type: !2610)
!2614 = !DILocation(line: 0, scope: !2607)
!2615 = !DILocation(line: 126, column: 11, scope: !2607)
!2616 = !DILocation(line: 126, column: 46, scope: !2607)
!2617 = !{!2618, !1021, i64 0}
!2618 = !{!"quoting_options", !1021, i64 0, !1021, i64 4, !950, i64 8, !949, i64 40, !949, i64 48}
!2619 = !DILocation(line: 126, column: 3, scope: !2607)
!2620 = distinct !DISubprogram(name: "set_quoting_style", scope: !598, file: !598, line: 132, type: !2621, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !2623)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{null, !2596, !624}
!2623 = !{!2624, !2625}
!2624 = !DILocalVariable(name: "o", arg: 1, scope: !2620, file: !598, line: 132, type: !2596)
!2625 = !DILocalVariable(name: "s", arg: 2, scope: !2620, file: !598, line: 132, type: !624)
!2626 = !DILocation(line: 0, scope: !2620)
!2627 = !DILocation(line: 134, column: 4, scope: !2620)
!2628 = !DILocation(line: 134, column: 45, scope: !2620)
!2629 = !DILocation(line: 135, column: 1, scope: !2620)
!2630 = distinct !DISubprogram(name: "set_char_quoting", scope: !598, file: !598, line: 143, type: !2631, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!116, !2596, !4, !116}
!2633 = !{!2634, !2635, !2636, !2637, !2638, !2640, !2641}
!2634 = !DILocalVariable(name: "o", arg: 1, scope: !2630, file: !598, line: 143, type: !2596)
!2635 = !DILocalVariable(name: "c", arg: 2, scope: !2630, file: !598, line: 143, type: !4)
!2636 = !DILocalVariable(name: "i", arg: 3, scope: !2630, file: !598, line: 143, type: !116)
!2637 = !DILocalVariable(name: "uc", scope: !2630, file: !598, line: 145, type: !167)
!2638 = !DILocalVariable(name: "p", scope: !2630, file: !598, line: 146, type: !2639)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!2640 = !DILocalVariable(name: "shift", scope: !2630, file: !598, line: 148, type: !116)
!2641 = !DILocalVariable(name: "r", scope: !2630, file: !598, line: 149, type: !103)
!2642 = !DILocation(line: 0, scope: !2630)
!2643 = !DILocation(line: 147, column: 6, scope: !2630)
!2644 = !DILocation(line: 147, column: 41, scope: !2630)
!2645 = !DILocation(line: 147, column: 62, scope: !2630)
!2646 = !DILocation(line: 147, column: 57, scope: !2630)
!2647 = !DILocation(line: 148, column: 15, scope: !2630)
!2648 = !DILocation(line: 149, column: 21, scope: !2630)
!2649 = !DILocation(line: 149, column: 24, scope: !2630)
!2650 = !DILocation(line: 149, column: 34, scope: !2630)
!2651 = !DILocation(line: 150, column: 19, scope: !2630)
!2652 = !DILocation(line: 150, column: 24, scope: !2630)
!2653 = !DILocation(line: 150, column: 6, scope: !2630)
!2654 = !DILocation(line: 151, column: 3, scope: !2630)
!2655 = distinct !DISubprogram(name: "set_quoting_flags", scope: !598, file: !598, line: 159, type: !2656, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !2658)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!116, !2596, !116}
!2658 = !{!2659, !2660, !2661}
!2659 = !DILocalVariable(name: "o", arg: 1, scope: !2655, file: !598, line: 159, type: !2596)
!2660 = !DILocalVariable(name: "i", arg: 2, scope: !2655, file: !598, line: 159, type: !116)
!2661 = !DILocalVariable(name: "r", scope: !2655, file: !598, line: 163, type: !116)
!2662 = !DILocation(line: 0, scope: !2655)
!2663 = !DILocation(line: 161, column: 8, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2655, file: !598, line: 161, column: 7)
!2665 = !DILocation(line: 161, column: 7, scope: !2655)
!2666 = !DILocation(line: 163, column: 14, scope: !2655)
!2667 = !{!2618, !1021, i64 4}
!2668 = !DILocation(line: 164, column: 12, scope: !2655)
!2669 = !DILocation(line: 165, column: 3, scope: !2655)
!2670 = distinct !DISubprogram(name: "set_custom_quoting", scope: !598, file: !598, line: 169, type: !2671, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !2673)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{null, !2596, !165, !165}
!2673 = !{!2674, !2675, !2676}
!2674 = !DILocalVariable(name: "o", arg: 1, scope: !2670, file: !598, line: 169, type: !2596)
!2675 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2670, file: !598, line: 170, type: !165)
!2676 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2670, file: !598, line: 170, type: !165)
!2677 = !DILocation(line: 0, scope: !2670)
!2678 = !DILocation(line: 172, column: 8, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2670, file: !598, line: 172, column: 7)
!2680 = !DILocation(line: 172, column: 7, scope: !2670)
!2681 = !DILocation(line: 174, column: 12, scope: !2670)
!2682 = !DILocation(line: 175, column: 8, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2670, file: !598, line: 175, column: 7)
!2684 = !DILocation(line: 175, column: 19, scope: !2683)
!2685 = !DILocation(line: 176, column: 5, scope: !2683)
!2686 = !DILocation(line: 177, column: 6, scope: !2670)
!2687 = !DILocation(line: 177, column: 17, scope: !2670)
!2688 = !{!2618, !949, i64 40}
!2689 = !DILocation(line: 178, column: 6, scope: !2670)
!2690 = !DILocation(line: 178, column: 18, scope: !2670)
!2691 = !{!2618, !949, i64 48}
!2692 = !DILocation(line: 179, column: 1, scope: !2670)
!2693 = !DISubprogram(name: "abort", scope: !1141, file: !1141, line: 598, type: !548, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2694 = distinct !DISubprogram(name: "quotearg_buffer", scope: !598, file: !598, line: 774, type: !2695, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !2697)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!162, !159, !162, !165, !162, !2610}
!2697 = !{!2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705}
!2698 = !DILocalVariable(name: "buffer", arg: 1, scope: !2694, file: !598, line: 774, type: !159)
!2699 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2694, file: !598, line: 774, type: !162)
!2700 = !DILocalVariable(name: "arg", arg: 3, scope: !2694, file: !598, line: 775, type: !165)
!2701 = !DILocalVariable(name: "argsize", arg: 4, scope: !2694, file: !598, line: 775, type: !162)
!2702 = !DILocalVariable(name: "o", arg: 5, scope: !2694, file: !598, line: 776, type: !2610)
!2703 = !DILocalVariable(name: "p", scope: !2694, file: !598, line: 778, type: !2610)
!2704 = !DILocalVariable(name: "saved_errno", scope: !2694, file: !598, line: 779, type: !116)
!2705 = !DILocalVariable(name: "r", scope: !2694, file: !598, line: 780, type: !162)
!2706 = !DILocation(line: 0, scope: !2694)
!2707 = !DILocation(line: 778, column: 37, scope: !2694)
!2708 = !DILocation(line: 779, column: 21, scope: !2694)
!2709 = !DILocation(line: 781, column: 43, scope: !2694)
!2710 = !DILocation(line: 781, column: 53, scope: !2694)
!2711 = !DILocation(line: 781, column: 63, scope: !2694)
!2712 = !DILocation(line: 782, column: 43, scope: !2694)
!2713 = !DILocation(line: 782, column: 58, scope: !2694)
!2714 = !DILocation(line: 780, column: 14, scope: !2694)
!2715 = !DILocation(line: 783, column: 9, scope: !2694)
!2716 = !DILocation(line: 784, column: 3, scope: !2694)
!2717 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !598, file: !598, line: 251, type: !2718, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !2722)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!162, !159, !162, !165, !162, !624, !116, !2720, !165, !165}
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!2722 = !{!2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2748, !2750, !2753, !2754, !2755, !2756, !2759, !2760, !2762, !2763, !2766, !2770, !2771, !2779, !2782, !2783, !2784}
!2723 = !DILocalVariable(name: "buffer", arg: 1, scope: !2717, file: !598, line: 251, type: !159)
!2724 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2717, file: !598, line: 251, type: !162)
!2725 = !DILocalVariable(name: "arg", arg: 3, scope: !2717, file: !598, line: 252, type: !165)
!2726 = !DILocalVariable(name: "argsize", arg: 4, scope: !2717, file: !598, line: 252, type: !162)
!2727 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2717, file: !598, line: 253, type: !624)
!2728 = !DILocalVariable(name: "flags", arg: 6, scope: !2717, file: !598, line: 253, type: !116)
!2729 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2717, file: !598, line: 254, type: !2720)
!2730 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2717, file: !598, line: 255, type: !165)
!2731 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2717, file: !598, line: 256, type: !165)
!2732 = !DILocalVariable(name: "unibyte_locale", scope: !2717, file: !598, line: 258, type: !205)
!2733 = !DILocalVariable(name: "len", scope: !2717, file: !598, line: 260, type: !162)
!2734 = !DILocalVariable(name: "orig_buffersize", scope: !2717, file: !598, line: 261, type: !162)
!2735 = !DILocalVariable(name: "quote_string", scope: !2717, file: !598, line: 262, type: !165)
!2736 = !DILocalVariable(name: "quote_string_len", scope: !2717, file: !598, line: 263, type: !162)
!2737 = !DILocalVariable(name: "backslash_escapes", scope: !2717, file: !598, line: 264, type: !205)
!2738 = !DILocalVariable(name: "elide_outer_quotes", scope: !2717, file: !598, line: 265, type: !205)
!2739 = !DILocalVariable(name: "encountered_single_quote", scope: !2717, file: !598, line: 266, type: !205)
!2740 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2717, file: !598, line: 267, type: !205)
!2741 = !DILabel(scope: !2717, name: "process_input", file: !598, line: 308)
!2742 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2717, file: !598, line: 309, type: !205)
!2743 = !DILocalVariable(name: "lq", scope: !2744, file: !598, line: 361, type: !165)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !598, line: 361, column: 11)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !598, line: 360, column: 13)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !598, line: 333, column: 7)
!2747 = distinct !DILexicalBlock(scope: !2717, file: !598, line: 312, column: 5)
!2748 = !DILocalVariable(name: "i", scope: !2749, file: !598, line: 395, type: !162)
!2749 = distinct !DILexicalBlock(scope: !2717, file: !598, line: 395, column: 3)
!2750 = !DILocalVariable(name: "is_right_quote", scope: !2751, file: !598, line: 397, type: !205)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !598, line: 396, column: 5)
!2752 = distinct !DILexicalBlock(scope: !2749, file: !598, line: 395, column: 3)
!2753 = !DILocalVariable(name: "escaping", scope: !2751, file: !598, line: 398, type: !205)
!2754 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2751, file: !598, line: 399, type: !205)
!2755 = !DILocalVariable(name: "c", scope: !2751, file: !598, line: 417, type: !167)
!2756 = !DILabel(scope: !2757, name: "c_and_shell_escape", file: !598, line: 502)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !598, line: 478, column: 9)
!2758 = distinct !DILexicalBlock(scope: !2751, file: !598, line: 419, column: 9)
!2759 = !DILabel(scope: !2757, name: "c_escape", file: !598, line: 507)
!2760 = !DILocalVariable(name: "m", scope: !2761, file: !598, line: 598, type: !162)
!2761 = distinct !DILexicalBlock(scope: !2758, file: !598, line: 596, column: 11)
!2762 = !DILocalVariable(name: "printable", scope: !2761, file: !598, line: 600, type: !205)
!2763 = !DILocalVariable(name: "mbs", scope: !2764, file: !598, line: 609, type: !673)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !598, line: 608, column: 15)
!2765 = distinct !DILexicalBlock(scope: !2761, file: !598, line: 602, column: 17)
!2766 = !DILocalVariable(name: "w", scope: !2767, file: !598, line: 618, type: !578)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !598, line: 617, column: 19)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !598, line: 616, column: 17)
!2769 = distinct !DILexicalBlock(scope: !2764, file: !598, line: 616, column: 17)
!2770 = !DILocalVariable(name: "bytes", scope: !2767, file: !598, line: 619, type: !162)
!2771 = !DILocalVariable(name: "j", scope: !2772, file: !598, line: 648, type: !162)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !598, line: 648, column: 29)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !598, line: 647, column: 27)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !598, line: 645, column: 29)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !598, line: 636, column: 23)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !598, line: 628, column: 30)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !598, line: 623, column: 30)
!2778 = distinct !DILexicalBlock(scope: !2767, file: !598, line: 621, column: 25)
!2779 = !DILocalVariable(name: "ilim", scope: !2780, file: !598, line: 674, type: !162)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !598, line: 671, column: 15)
!2781 = distinct !DILexicalBlock(scope: !2761, file: !598, line: 670, column: 17)
!2782 = !DILabel(scope: !2751, name: "store_escape", file: !598, line: 709)
!2783 = !DILabel(scope: !2751, name: "store_c", file: !598, line: 712)
!2784 = !DILabel(scope: !2717, name: "force_outer_quoting_style", file: !598, line: 753)
!2785 = distinct !DIAssignID()
!2786 = distinct !DIAssignID()
!2787 = distinct !DIAssignID()
!2788 = distinct !DIAssignID()
!2789 = distinct !DIAssignID()
!2790 = !DILocation(line: 0, scope: !2764)
!2791 = distinct !DIAssignID()
!2792 = !DILocation(line: 0, scope: !2767)
!2793 = !DILocation(line: 0, scope: !2717)
!2794 = !DILocation(line: 258, column: 25, scope: !2717)
!2795 = !DILocation(line: 258, column: 36, scope: !2717)
!2796 = !DILocation(line: 267, column: 3, scope: !2717)
!2797 = !DILocation(line: 261, column: 10, scope: !2717)
!2798 = !DILocation(line: 262, column: 15, scope: !2717)
!2799 = !DILocation(line: 263, column: 10, scope: !2717)
!2800 = !DILocation(line: 308, column: 2, scope: !2717)
!2801 = !DILocation(line: 311, column: 3, scope: !2717)
!2802 = !DILocation(line: 318, column: 11, scope: !2747)
!2803 = !DILocation(line: 319, column: 9, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !598, line: 319, column: 9)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !598, line: 319, column: 9)
!2806 = distinct !DILexicalBlock(scope: !2747, file: !598, line: 318, column: 11)
!2807 = !DILocation(line: 319, column: 9, scope: !2805)
!2808 = !DILocation(line: 0, scope: !664, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 357, column: 26, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !598, line: 335, column: 11)
!2811 = distinct !DILexicalBlock(scope: !2746, file: !598, line: 334, column: 13)
!2812 = !DILocation(line: 199, column: 29, scope: !664, inlinedAt: !2809)
!2813 = !DILocation(line: 201, column: 19, scope: !2814, inlinedAt: !2809)
!2814 = distinct !DILexicalBlock(scope: !664, file: !598, line: 201, column: 7)
!2815 = !DILocation(line: 201, column: 7, scope: !664, inlinedAt: !2809)
!2816 = !DILocation(line: 229, column: 3, scope: !664, inlinedAt: !2809)
!2817 = !DILocation(line: 230, column: 3, scope: !664, inlinedAt: !2809)
!2818 = !DILocalVariable(name: "ps", arg: 1, scope: !2819, file: !2567, line: 1135, type: !2822)
!2819 = distinct !DISubprogram(name: "mbszero", scope: !2567, file: !2567, line: 1135, type: !2820, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !2823)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{null, !2822}
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!2823 = !{!2818}
!2824 = !DILocation(line: 0, scope: !2819, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 230, column: 18, scope: !664, inlinedAt: !2809)
!2826 = !DILocalVariable(name: "__dest", arg: 1, scope: !2827, file: !2312, line: 57, type: !160)
!2827 = distinct !DISubprogram(name: "memset", scope: !2312, file: !2312, line: 57, type: !2313, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !2828)
!2828 = !{!2826, !2829, !2830}
!2829 = !DILocalVariable(name: "__ch", arg: 2, scope: !2827, file: !2312, line: 57, type: !116)
!2830 = !DILocalVariable(name: "__len", arg: 3, scope: !2827, file: !2312, line: 57, type: !162)
!2831 = !DILocation(line: 0, scope: !2827, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 1137, column: 3, scope: !2819, inlinedAt: !2825)
!2833 = !DILocation(line: 59, column: 10, scope: !2827, inlinedAt: !2832)
!2834 = !DILocation(line: 231, column: 7, scope: !2835, inlinedAt: !2809)
!2835 = distinct !DILexicalBlock(scope: !664, file: !598, line: 231, column: 7)
!2836 = !DILocation(line: 231, column: 40, scope: !2835, inlinedAt: !2809)
!2837 = !DILocation(line: 231, column: 45, scope: !2835, inlinedAt: !2809)
!2838 = !DILocation(line: 235, column: 1, scope: !664, inlinedAt: !2809)
!2839 = !DILocation(line: 0, scope: !664, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 358, column: 27, scope: !2810)
!2841 = !DILocation(line: 199, column: 29, scope: !664, inlinedAt: !2840)
!2842 = !DILocation(line: 201, column: 19, scope: !2814, inlinedAt: !2840)
!2843 = !DILocation(line: 201, column: 7, scope: !664, inlinedAt: !2840)
!2844 = !DILocation(line: 229, column: 3, scope: !664, inlinedAt: !2840)
!2845 = !DILocation(line: 230, column: 3, scope: !664, inlinedAt: !2840)
!2846 = !DILocation(line: 0, scope: !2819, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 230, column: 18, scope: !664, inlinedAt: !2840)
!2848 = !DILocation(line: 0, scope: !2827, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 1137, column: 3, scope: !2819, inlinedAt: !2847)
!2850 = !DILocation(line: 59, column: 10, scope: !2827, inlinedAt: !2849)
!2851 = !DILocation(line: 231, column: 7, scope: !2835, inlinedAt: !2840)
!2852 = !DILocation(line: 231, column: 40, scope: !2835, inlinedAt: !2840)
!2853 = !DILocation(line: 231, column: 45, scope: !2835, inlinedAt: !2840)
!2854 = !DILocation(line: 235, column: 1, scope: !664, inlinedAt: !2840)
!2855 = !DILocation(line: 360, column: 13, scope: !2746)
!2856 = !DILocation(line: 0, scope: !2744)
!2857 = !DILocation(line: 361, column: 45, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2744, file: !598, line: 361, column: 11)
!2859 = !DILocation(line: 361, column: 11, scope: !2744)
!2860 = !DILocation(line: 362, column: 13, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !598, line: 362, column: 13)
!2862 = distinct !DILexicalBlock(scope: !2858, file: !598, line: 362, column: 13)
!2863 = !DILocation(line: 362, column: 13, scope: !2862)
!2864 = !DILocation(line: 361, column: 52, scope: !2858)
!2865 = distinct !{!2865, !2859, !2866, !1067}
!2866 = !DILocation(line: 362, column: 13, scope: !2744)
!2867 = !DILocation(line: 365, column: 28, scope: !2746)
!2868 = !DILocation(line: 260, column: 10, scope: !2717)
!2869 = !DILocation(line: 367, column: 7, scope: !2747)
!2870 = !DILocation(line: 373, column: 7, scope: !2747)
!2871 = !DILocation(line: 381, column: 11, scope: !2747)
!2872 = !DILocation(line: 376, column: 11, scope: !2747)
!2873 = !DILocation(line: 382, column: 9, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !598, line: 382, column: 9)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !598, line: 382, column: 9)
!2876 = distinct !DILexicalBlock(scope: !2747, file: !598, line: 381, column: 11)
!2877 = !DILocation(line: 382, column: 9, scope: !2875)
!2878 = !DILocation(line: 389, column: 7, scope: !2747)
!2879 = !DILocation(line: 392, column: 7, scope: !2747)
!2880 = !DILocation(line: 0, scope: !2749)
!2881 = !DILocation(line: 395, column: 8, scope: !2749)
!2882 = !DILocation(line: 395, scope: !2749)
!2883 = !DILocation(line: 395, column: 34, scope: !2752)
!2884 = !DILocation(line: 395, column: 26, scope: !2752)
!2885 = !DILocation(line: 395, column: 48, scope: !2752)
!2886 = !DILocation(line: 395, column: 55, scope: !2752)
!2887 = !DILocation(line: 395, column: 3, scope: !2749)
!2888 = !DILocation(line: 395, column: 67, scope: !2752)
!2889 = !DILocation(line: 0, scope: !2751)
!2890 = !DILocation(line: 402, column: 11, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2751, file: !598, line: 401, column: 11)
!2892 = !DILocation(line: 404, column: 17, scope: !2891)
!2893 = !DILocation(line: 405, column: 39, scope: !2891)
!2894 = !DILocation(line: 409, column: 32, scope: !2891)
!2895 = !DILocation(line: 405, column: 19, scope: !2891)
!2896 = !DILocation(line: 405, column: 15, scope: !2891)
!2897 = !DILocation(line: 410, column: 11, scope: !2891)
!2898 = !DILocation(line: 410, column: 25, scope: !2891)
!2899 = !DILocalVariable(name: "__s1", arg: 1, scope: !2900, file: !1033, line: 974, type: !1165)
!2900 = distinct !DISubprogram(name: "memeq", scope: !1033, file: !1033, line: 974, type: !2536, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !2901)
!2901 = !{!2899, !2902, !2903}
!2902 = !DILocalVariable(name: "__s2", arg: 2, scope: !2900, file: !1033, line: 974, type: !1165)
!2903 = !DILocalVariable(name: "__n", arg: 3, scope: !2900, file: !1033, line: 974, type: !162)
!2904 = !DILocation(line: 0, scope: !2900, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 410, column: 14, scope: !2891)
!2906 = !DILocation(line: 976, column: 11, scope: !2900, inlinedAt: !2905)
!2907 = !DILocation(line: 976, column: 10, scope: !2900, inlinedAt: !2905)
!2908 = !DILocation(line: 401, column: 11, scope: !2751)
!2909 = !DILocation(line: 417, column: 25, scope: !2751)
!2910 = !DILocation(line: 418, column: 7, scope: !2751)
!2911 = !DILocation(line: 421, column: 15, scope: !2758)
!2912 = !DILocation(line: 423, column: 15, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !598, line: 423, column: 15)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !598, line: 422, column: 13)
!2915 = distinct !DILexicalBlock(scope: !2758, file: !598, line: 421, column: 15)
!2916 = !DILocation(line: 423, column: 15, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2913, file: !598, line: 423, column: 15)
!2918 = !DILocation(line: 423, column: 15, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !598, line: 423, column: 15)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !598, line: 423, column: 15)
!2921 = distinct !DILexicalBlock(scope: !2917, file: !598, line: 423, column: 15)
!2922 = !DILocation(line: 423, column: 15, scope: !2920)
!2923 = !DILocation(line: 423, column: 15, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !598, line: 423, column: 15)
!2925 = distinct !DILexicalBlock(scope: !2921, file: !598, line: 423, column: 15)
!2926 = !DILocation(line: 423, column: 15, scope: !2925)
!2927 = !DILocation(line: 423, column: 15, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !598, line: 423, column: 15)
!2929 = distinct !DILexicalBlock(scope: !2921, file: !598, line: 423, column: 15)
!2930 = !DILocation(line: 423, column: 15, scope: !2929)
!2931 = !DILocation(line: 423, column: 15, scope: !2921)
!2932 = !DILocation(line: 423, column: 15, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !598, line: 423, column: 15)
!2934 = distinct !DILexicalBlock(scope: !2913, file: !598, line: 423, column: 15)
!2935 = !DILocation(line: 423, column: 15, scope: !2934)
!2936 = !DILocation(line: 431, column: 19, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2914, file: !598, line: 430, column: 19)
!2938 = !DILocation(line: 431, column: 24, scope: !2937)
!2939 = !DILocation(line: 431, column: 28, scope: !2937)
!2940 = !DILocation(line: 431, column: 38, scope: !2937)
!2941 = !DILocation(line: 431, column: 48, scope: !2937)
!2942 = !DILocation(line: 431, column: 59, scope: !2937)
!2943 = !DILocation(line: 433, column: 19, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !598, line: 433, column: 19)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !598, line: 433, column: 19)
!2946 = distinct !DILexicalBlock(scope: !2937, file: !598, line: 432, column: 17)
!2947 = !DILocation(line: 433, column: 19, scope: !2945)
!2948 = !DILocation(line: 434, column: 19, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !598, line: 434, column: 19)
!2950 = distinct !DILexicalBlock(scope: !2946, file: !598, line: 434, column: 19)
!2951 = !DILocation(line: 434, column: 19, scope: !2950)
!2952 = !DILocation(line: 435, column: 17, scope: !2946)
!2953 = !DILocation(line: 442, column: 20, scope: !2915)
!2954 = !DILocation(line: 447, column: 11, scope: !2758)
!2955 = !DILocation(line: 450, column: 19, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2758, file: !598, line: 448, column: 13)
!2957 = !DILocation(line: 456, column: 19, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2956, file: !598, line: 455, column: 19)
!2959 = !DILocation(line: 456, column: 24, scope: !2958)
!2960 = !DILocation(line: 456, column: 28, scope: !2958)
!2961 = !DILocation(line: 456, column: 38, scope: !2958)
!2962 = !DILocation(line: 456, column: 41, scope: !2958)
!2963 = !DILocation(line: 456, column: 52, scope: !2958)
!2964 = !DILocation(line: 455, column: 19, scope: !2956)
!2965 = !DILocation(line: 457, column: 25, scope: !2958)
!2966 = !DILocation(line: 457, column: 17, scope: !2958)
!2967 = !DILocation(line: 464, column: 25, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2958, file: !598, line: 458, column: 19)
!2969 = !DILocation(line: 468, column: 21, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !598, line: 468, column: 21)
!2971 = distinct !DILexicalBlock(scope: !2968, file: !598, line: 468, column: 21)
!2972 = !DILocation(line: 468, column: 21, scope: !2971)
!2973 = !DILocation(line: 469, column: 21, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !598, line: 469, column: 21)
!2975 = distinct !DILexicalBlock(scope: !2968, file: !598, line: 469, column: 21)
!2976 = !DILocation(line: 469, column: 21, scope: !2975)
!2977 = !DILocation(line: 470, column: 21, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !598, line: 470, column: 21)
!2979 = distinct !DILexicalBlock(scope: !2968, file: !598, line: 470, column: 21)
!2980 = !DILocation(line: 470, column: 21, scope: !2979)
!2981 = !DILocation(line: 471, column: 21, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !598, line: 471, column: 21)
!2983 = distinct !DILexicalBlock(scope: !2968, file: !598, line: 471, column: 21)
!2984 = !DILocation(line: 471, column: 21, scope: !2983)
!2985 = !DILocation(line: 472, column: 21, scope: !2968)
!2986 = !DILocation(line: 482, column: 33, scope: !2757)
!2987 = !DILocation(line: 483, column: 33, scope: !2757)
!2988 = !DILocation(line: 485, column: 33, scope: !2757)
!2989 = !DILocation(line: 486, column: 33, scope: !2757)
!2990 = !DILocation(line: 487, column: 33, scope: !2757)
!2991 = !DILocation(line: 490, column: 17, scope: !2757)
!2992 = !DILocation(line: 492, column: 21, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !598, line: 491, column: 15)
!2994 = distinct !DILexicalBlock(scope: !2757, file: !598, line: 490, column: 17)
!2995 = !DILocation(line: 499, column: 35, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2757, file: !598, line: 499, column: 17)
!2997 = !DILocation(line: 0, scope: !2757)
!2998 = !DILocation(line: 502, column: 11, scope: !2757)
!2999 = !DILocation(line: 504, column: 17, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2757, file: !598, line: 503, column: 17)
!3001 = !DILocation(line: 507, column: 11, scope: !2757)
!3002 = !DILocation(line: 508, column: 17, scope: !2757)
!3003 = !DILocation(line: 517, column: 15, scope: !2758)
!3004 = !DILocation(line: 517, column: 40, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2758, file: !598, line: 517, column: 15)
!3006 = !DILocation(line: 517, column: 47, scope: !3005)
!3007 = !DILocation(line: 517, column: 18, scope: !3005)
!3008 = !DILocation(line: 521, column: 17, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2758, file: !598, line: 521, column: 15)
!3010 = !DILocation(line: 521, column: 15, scope: !2758)
!3011 = !DILocation(line: 525, column: 11, scope: !2758)
!3012 = !DILocation(line: 537, column: 15, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2758, file: !598, line: 536, column: 15)
!3014 = !DILocation(line: 536, column: 15, scope: !2758)
!3015 = !DILocation(line: 544, column: 15, scope: !2758)
!3016 = !DILocation(line: 546, column: 19, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !598, line: 545, column: 13)
!3018 = distinct !DILexicalBlock(scope: !2758, file: !598, line: 544, column: 15)
!3019 = !DILocation(line: 549, column: 19, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3017, file: !598, line: 549, column: 19)
!3021 = !DILocation(line: 549, column: 30, scope: !3020)
!3022 = !DILocation(line: 558, column: 15, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !598, line: 558, column: 15)
!3024 = distinct !DILexicalBlock(scope: !3017, file: !598, line: 558, column: 15)
!3025 = !DILocation(line: 558, column: 15, scope: !3024)
!3026 = !DILocation(line: 559, column: 15, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !598, line: 559, column: 15)
!3028 = distinct !DILexicalBlock(scope: !3017, file: !598, line: 559, column: 15)
!3029 = !DILocation(line: 559, column: 15, scope: !3028)
!3030 = !DILocation(line: 560, column: 15, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !598, line: 560, column: 15)
!3032 = distinct !DILexicalBlock(scope: !3017, file: !598, line: 560, column: 15)
!3033 = !DILocation(line: 560, column: 15, scope: !3032)
!3034 = !DILocation(line: 562, column: 13, scope: !3017)
!3035 = !DILocation(line: 602, column: 17, scope: !2761)
!3036 = !DILocation(line: 0, scope: !2761)
!3037 = !DILocation(line: 605, column: 29, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !2765, file: !598, line: 603, column: 15)
!3039 = !DILocation(line: 605, column: 41, scope: !3038)
!3040 = !DILocation(line: 606, column: 15, scope: !3038)
!3041 = !DILocation(line: 609, column: 17, scope: !2764)
!3042 = !DILocation(line: 0, scope: !2819, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 609, column: 32, scope: !2764)
!3044 = !DILocation(line: 0, scope: !2827, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 1137, column: 3, scope: !2819, inlinedAt: !3043)
!3046 = !DILocation(line: 59, column: 10, scope: !2827, inlinedAt: !3045)
!3047 = !DILocation(line: 613, column: 29, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2764, file: !598, line: 613, column: 21)
!3049 = !DILocation(line: 613, column: 21, scope: !2764)
!3050 = !DILocation(line: 614, column: 29, scope: !3048)
!3051 = !DILocation(line: 614, column: 19, scope: !3048)
!3052 = !DILocation(line: 618, column: 21, scope: !2767)
!3053 = !DILocation(line: 620, column: 54, scope: !2767)
!3054 = !DILocation(line: 619, column: 36, scope: !2767)
!3055 = !DILocation(line: 621, column: 25, scope: !2767)
!3056 = !DILocation(line: 631, column: 38, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !2776, file: !598, line: 629, column: 23)
!3058 = !DILocation(line: 631, column: 48, scope: !3057)
!3059 = !DILocation(line: 631, column: 25, scope: !3057)
!3060 = !DILocation(line: 626, column: 25, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !2777, file: !598, line: 624, column: 23)
!3062 = !DILocation(line: 631, column: 51, scope: !3057)
!3063 = !DILocation(line: 632, column: 28, scope: !3057)
!3064 = !DILocation(line: 631, column: 34, scope: !3057)
!3065 = distinct !{!3065, !3059, !3063, !1067}
!3066 = !DILocation(line: 0, scope: !2772)
!3067 = !DILocation(line: 646, column: 29, scope: !2774)
!3068 = !DILocation(line: 648, column: 29, scope: !2772)
!3069 = !DILocation(line: 649, column: 39, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !2772, file: !598, line: 648, column: 29)
!3071 = !DILocation(line: 649, column: 31, scope: !3070)
!3072 = !DILocation(line: 648, column: 60, scope: !3070)
!3073 = !DILocation(line: 648, column: 50, scope: !3070)
!3074 = distinct !{!3074, !3068, !3075, !1067}
!3075 = !DILocation(line: 654, column: 33, scope: !2772)
!3076 = !DILocation(line: 657, column: 43, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !2775, file: !598, line: 657, column: 29)
!3078 = !DILocalVariable(name: "wc", arg: 1, scope: !3079, file: !3080, line: 865, type: !3083)
!3079 = distinct !DISubprogram(name: "c32isprint", scope: !3080, file: !3080, line: 865, type: !3081, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3085)
!3080 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!116, !3083}
!3083 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3084, line: 20, baseType: !103)
!3084 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3085 = !{!3078}
!3086 = !DILocation(line: 0, scope: !3079, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 657, column: 31, scope: !3077)
!3088 = !DILocation(line: 871, column: 10, scope: !3079, inlinedAt: !3087)
!3089 = !DILocation(line: 657, column: 31, scope: !3077)
!3090 = !DILocation(line: 664, column: 23, scope: !2767)
!3091 = !DILocation(line: 665, column: 19, scope: !2768)
!3092 = !DILocation(line: 666, column: 15, scope: !2765)
!3093 = !DILocation(line: 753, column: 2, scope: !2717)
!3094 = !DILocation(line: 756, column: 51, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !2717, file: !598, line: 756, column: 7)
!3096 = !DILocation(line: 0, scope: !2765)
!3097 = !DILocation(line: 670, column: 19, scope: !2781)
!3098 = !DILocation(line: 670, column: 23, scope: !2781)
!3099 = !DILocation(line: 674, column: 33, scope: !2780)
!3100 = !DILocation(line: 0, scope: !2780)
!3101 = !DILocation(line: 676, column: 17, scope: !2780)
!3102 = !DILocation(line: 678, column: 43, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !598, line: 678, column: 25)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !598, line: 677, column: 19)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !598, line: 676, column: 17)
!3106 = distinct !DILexicalBlock(scope: !2780, file: !598, line: 676, column: 17)
!3107 = !DILocation(line: 680, column: 25, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !598, line: 680, column: 25)
!3109 = distinct !DILexicalBlock(scope: !3103, file: !598, line: 679, column: 23)
!3110 = !DILocation(line: 680, column: 25, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3108, file: !598, line: 680, column: 25)
!3112 = !DILocation(line: 680, column: 25, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !598, line: 680, column: 25)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !598, line: 680, column: 25)
!3115 = distinct !DILexicalBlock(scope: !3111, file: !598, line: 680, column: 25)
!3116 = !DILocation(line: 680, column: 25, scope: !3114)
!3117 = !DILocation(line: 680, column: 25, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !598, line: 680, column: 25)
!3119 = distinct !DILexicalBlock(scope: !3115, file: !598, line: 680, column: 25)
!3120 = !DILocation(line: 680, column: 25, scope: !3119)
!3121 = !DILocation(line: 680, column: 25, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3123, file: !598, line: 680, column: 25)
!3123 = distinct !DILexicalBlock(scope: !3115, file: !598, line: 680, column: 25)
!3124 = !DILocation(line: 680, column: 25, scope: !3123)
!3125 = !DILocation(line: 680, column: 25, scope: !3115)
!3126 = !DILocation(line: 680, column: 25, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !598, line: 680, column: 25)
!3128 = distinct !DILexicalBlock(scope: !3108, file: !598, line: 680, column: 25)
!3129 = !DILocation(line: 680, column: 25, scope: !3128)
!3130 = !DILocation(line: 681, column: 25, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !598, line: 681, column: 25)
!3132 = distinct !DILexicalBlock(scope: !3109, file: !598, line: 681, column: 25)
!3133 = !DILocation(line: 681, column: 25, scope: !3132)
!3134 = !DILocation(line: 682, column: 25, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !598, line: 682, column: 25)
!3136 = distinct !DILexicalBlock(scope: !3109, file: !598, line: 682, column: 25)
!3137 = !DILocation(line: 682, column: 25, scope: !3136)
!3138 = !DILocation(line: 683, column: 38, scope: !3109)
!3139 = !DILocation(line: 683, column: 33, scope: !3109)
!3140 = !DILocation(line: 684, column: 23, scope: !3109)
!3141 = !DILocation(line: 685, column: 30, scope: !3103)
!3142 = !DILocation(line: 687, column: 25, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !598, line: 687, column: 25)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !598, line: 687, column: 25)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !598, line: 686, column: 23)
!3146 = distinct !DILexicalBlock(scope: !3103, file: !598, line: 685, column: 30)
!3147 = !DILocation(line: 687, column: 25, scope: !3144)
!3148 = !DILocation(line: 689, column: 23, scope: !3145)
!3149 = !DILocation(line: 690, column: 35, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3104, file: !598, line: 690, column: 25)
!3151 = !DILocation(line: 690, column: 30, scope: !3150)
!3152 = !DILocation(line: 690, column: 25, scope: !3104)
!3153 = !DILocation(line: 692, column: 21, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !598, line: 692, column: 21)
!3155 = distinct !DILexicalBlock(scope: !3104, file: !598, line: 692, column: 21)
!3156 = !DILocation(line: 692, column: 21, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !598, line: 692, column: 21)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !598, line: 692, column: 21)
!3159 = distinct !DILexicalBlock(scope: !3154, file: !598, line: 692, column: 21)
!3160 = !DILocation(line: 692, column: 21, scope: !3158)
!3161 = !DILocation(line: 692, column: 21, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !598, line: 692, column: 21)
!3163 = distinct !DILexicalBlock(scope: !3159, file: !598, line: 692, column: 21)
!3164 = !DILocation(line: 692, column: 21, scope: !3163)
!3165 = !DILocation(line: 692, column: 21, scope: !3159)
!3166 = !DILocation(line: 0, scope: !3104)
!3167 = !DILocation(line: 693, column: 21, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !598, line: 693, column: 21)
!3169 = distinct !DILexicalBlock(scope: !3104, file: !598, line: 693, column: 21)
!3170 = !DILocation(line: 693, column: 21, scope: !3169)
!3171 = !DILocation(line: 694, column: 25, scope: !3104)
!3172 = !DILocation(line: 676, column: 17, scope: !3105)
!3173 = distinct !{!3173, !3174, !3175}
!3174 = !DILocation(line: 676, column: 17, scope: !3106)
!3175 = !DILocation(line: 695, column: 19, scope: !3106)
!3176 = !DILocation(line: 409, column: 30, scope: !2891)
!3177 = !DILocation(line: 702, column: 34, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !2751, file: !598, line: 702, column: 11)
!3179 = !DILocation(line: 704, column: 14, scope: !3178)
!3180 = !DILocation(line: 705, column: 14, scope: !3178)
!3181 = !DILocation(line: 705, column: 35, scope: !3178)
!3182 = !DILocation(line: 705, column: 17, scope: !3178)
!3183 = !DILocation(line: 705, column: 47, scope: !3178)
!3184 = !DILocation(line: 705, column: 65, scope: !3178)
!3185 = !DILocation(line: 706, column: 11, scope: !3178)
!3186 = !DILocation(line: 702, column: 11, scope: !2751)
!3187 = !DILocation(line: 395, column: 15, scope: !2749)
!3188 = !DILocation(line: 709, column: 5, scope: !2751)
!3189 = !DILocation(line: 710, column: 7, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !2751, file: !598, line: 710, column: 7)
!3191 = !DILocation(line: 710, column: 7, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3190, file: !598, line: 710, column: 7)
!3193 = !DILocation(line: 710, column: 7, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !598, line: 710, column: 7)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !598, line: 710, column: 7)
!3196 = distinct !DILexicalBlock(scope: !3192, file: !598, line: 710, column: 7)
!3197 = !DILocation(line: 710, column: 7, scope: !3195)
!3198 = !DILocation(line: 710, column: 7, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !598, line: 710, column: 7)
!3200 = distinct !DILexicalBlock(scope: !3196, file: !598, line: 710, column: 7)
!3201 = !DILocation(line: 710, column: 7, scope: !3200)
!3202 = !DILocation(line: 710, column: 7, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !598, line: 710, column: 7)
!3204 = distinct !DILexicalBlock(scope: !3196, file: !598, line: 710, column: 7)
!3205 = !DILocation(line: 710, column: 7, scope: !3204)
!3206 = !DILocation(line: 710, column: 7, scope: !3196)
!3207 = !DILocation(line: 710, column: 7, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !598, line: 710, column: 7)
!3209 = distinct !DILexicalBlock(scope: !3190, file: !598, line: 710, column: 7)
!3210 = !DILocation(line: 710, column: 7, scope: !3209)
!3211 = !DILocation(line: 712, column: 5, scope: !2751)
!3212 = !DILocation(line: 713, column: 7, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !598, line: 713, column: 7)
!3214 = distinct !DILexicalBlock(scope: !2751, file: !598, line: 713, column: 7)
!3215 = !DILocation(line: 417, column: 21, scope: !2751)
!3216 = !DILocation(line: 713, column: 7, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !598, line: 713, column: 7)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !598, line: 713, column: 7)
!3219 = distinct !DILexicalBlock(scope: !3213, file: !598, line: 713, column: 7)
!3220 = !DILocation(line: 713, column: 7, scope: !3218)
!3221 = !DILocation(line: 713, column: 7, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !598, line: 713, column: 7)
!3223 = distinct !DILexicalBlock(scope: !3219, file: !598, line: 713, column: 7)
!3224 = !DILocation(line: 713, column: 7, scope: !3223)
!3225 = !DILocation(line: 713, column: 7, scope: !3219)
!3226 = !DILocation(line: 714, column: 7, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !598, line: 714, column: 7)
!3228 = distinct !DILexicalBlock(scope: !2751, file: !598, line: 714, column: 7)
!3229 = !DILocation(line: 714, column: 7, scope: !3228)
!3230 = !DILocation(line: 716, column: 11, scope: !2751)
!3231 = !DILocation(line: 718, column: 5, scope: !2752)
!3232 = !DILocation(line: 395, column: 82, scope: !2752)
!3233 = !DILocation(line: 395, column: 3, scope: !2752)
!3234 = distinct !{!3234, !2887, !3235, !1067}
!3235 = !DILocation(line: 718, column: 5, scope: !2749)
!3236 = !DILocation(line: 720, column: 11, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !2717, file: !598, line: 720, column: 7)
!3238 = !DILocation(line: 720, column: 16, scope: !3237)
!3239 = !DILocation(line: 728, column: 51, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !2717, file: !598, line: 728, column: 7)
!3241 = !DILocation(line: 731, column: 11, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3240, file: !598, line: 730, column: 5)
!3243 = !DILocation(line: 732, column: 16, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3242, file: !598, line: 731, column: 11)
!3245 = !DILocation(line: 732, column: 9, scope: !3244)
!3246 = !DILocation(line: 736, column: 18, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3244, file: !598, line: 736, column: 16)
!3248 = !DILocation(line: 736, column: 29, scope: !3247)
!3249 = !DILocation(line: 745, column: 7, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !2717, file: !598, line: 745, column: 7)
!3251 = !DILocation(line: 745, column: 20, scope: !3250)
!3252 = !DILocation(line: 746, column: 12, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !598, line: 746, column: 5)
!3254 = distinct !DILexicalBlock(scope: !3250, file: !598, line: 746, column: 5)
!3255 = !DILocation(line: 746, column: 5, scope: !3254)
!3256 = !DILocation(line: 747, column: 7, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !598, line: 747, column: 7)
!3258 = distinct !DILexicalBlock(scope: !3253, file: !598, line: 747, column: 7)
!3259 = !DILocation(line: 747, column: 7, scope: !3258)
!3260 = !DILocation(line: 746, column: 39, scope: !3253)
!3261 = distinct !{!3261, !3255, !3262, !1067}
!3262 = !DILocation(line: 747, column: 7, scope: !3254)
!3263 = !DILocation(line: 749, column: 11, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !2717, file: !598, line: 749, column: 7)
!3265 = !DILocation(line: 749, column: 7, scope: !2717)
!3266 = !DILocation(line: 750, column: 5, scope: !3264)
!3267 = !DILocation(line: 750, column: 17, scope: !3264)
!3268 = !DILocation(line: 756, column: 21, scope: !3095)
!3269 = !DILocation(line: 760, column: 42, scope: !2717)
!3270 = !DILocation(line: 758, column: 10, scope: !2717)
!3271 = !DILocation(line: 758, column: 3, scope: !2717)
!3272 = !DILocation(line: 762, column: 1, scope: !2717)
!3273 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1141, file: !1141, line: 98, type: !3274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!162}
!3276 = !DISubprogram(name: "iswprint", scope: !3277, file: !3277, line: 120, type: !3081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3277 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3278 = distinct !DISubprogram(name: "quotearg_alloc", scope: !598, file: !598, line: 788, type: !3279, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!159, !165, !162, !2610}
!3281 = !{!3282, !3283, !3284}
!3282 = !DILocalVariable(name: "arg", arg: 1, scope: !3278, file: !598, line: 788, type: !165)
!3283 = !DILocalVariable(name: "argsize", arg: 2, scope: !3278, file: !598, line: 788, type: !162)
!3284 = !DILocalVariable(name: "o", arg: 3, scope: !3278, file: !598, line: 789, type: !2610)
!3285 = !DILocation(line: 0, scope: !3278)
!3286 = !DILocalVariable(name: "arg", arg: 1, scope: !3287, file: !598, line: 801, type: !165)
!3287 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !598, file: !598, line: 801, type: !3288, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3290)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!159, !165, !162, !887, !2610}
!3290 = !{!3286, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298}
!3291 = !DILocalVariable(name: "argsize", arg: 2, scope: !3287, file: !598, line: 801, type: !162)
!3292 = !DILocalVariable(name: "size", arg: 3, scope: !3287, file: !598, line: 801, type: !887)
!3293 = !DILocalVariable(name: "o", arg: 4, scope: !3287, file: !598, line: 802, type: !2610)
!3294 = !DILocalVariable(name: "p", scope: !3287, file: !598, line: 804, type: !2610)
!3295 = !DILocalVariable(name: "saved_errno", scope: !3287, file: !598, line: 805, type: !116)
!3296 = !DILocalVariable(name: "flags", scope: !3287, file: !598, line: 807, type: !116)
!3297 = !DILocalVariable(name: "bufsize", scope: !3287, file: !598, line: 808, type: !162)
!3298 = !DILocalVariable(name: "buf", scope: !3287, file: !598, line: 812, type: !159)
!3299 = !DILocation(line: 0, scope: !3287, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 791, column: 10, scope: !3278)
!3301 = !DILocation(line: 804, column: 37, scope: !3287, inlinedAt: !3300)
!3302 = !DILocation(line: 805, column: 21, scope: !3287, inlinedAt: !3300)
!3303 = !DILocation(line: 807, column: 18, scope: !3287, inlinedAt: !3300)
!3304 = !DILocation(line: 807, column: 24, scope: !3287, inlinedAt: !3300)
!3305 = !DILocation(line: 808, column: 72, scope: !3287, inlinedAt: !3300)
!3306 = !DILocation(line: 809, column: 56, scope: !3287, inlinedAt: !3300)
!3307 = !DILocation(line: 810, column: 49, scope: !3287, inlinedAt: !3300)
!3308 = !DILocation(line: 811, column: 49, scope: !3287, inlinedAt: !3300)
!3309 = !DILocation(line: 808, column: 20, scope: !3287, inlinedAt: !3300)
!3310 = !DILocation(line: 811, column: 62, scope: !3287, inlinedAt: !3300)
!3311 = !DILocation(line: 812, column: 15, scope: !3287, inlinedAt: !3300)
!3312 = !DILocation(line: 813, column: 60, scope: !3287, inlinedAt: !3300)
!3313 = !DILocation(line: 815, column: 32, scope: !3287, inlinedAt: !3300)
!3314 = !DILocation(line: 815, column: 47, scope: !3287, inlinedAt: !3300)
!3315 = !DILocation(line: 813, column: 3, scope: !3287, inlinedAt: !3300)
!3316 = !DILocation(line: 816, column: 9, scope: !3287, inlinedAt: !3300)
!3317 = !DILocation(line: 791, column: 3, scope: !3278)
!3318 = !DILocation(line: 0, scope: !3287)
!3319 = !DILocation(line: 804, column: 37, scope: !3287)
!3320 = !DILocation(line: 805, column: 21, scope: !3287)
!3321 = !DILocation(line: 807, column: 18, scope: !3287)
!3322 = !DILocation(line: 807, column: 27, scope: !3287)
!3323 = !DILocation(line: 807, column: 24, scope: !3287)
!3324 = !DILocation(line: 808, column: 72, scope: !3287)
!3325 = !DILocation(line: 809, column: 56, scope: !3287)
!3326 = !DILocation(line: 810, column: 49, scope: !3287)
!3327 = !DILocation(line: 811, column: 49, scope: !3287)
!3328 = !DILocation(line: 808, column: 20, scope: !3287)
!3329 = !DILocation(line: 811, column: 62, scope: !3287)
!3330 = !DILocation(line: 812, column: 15, scope: !3287)
!3331 = !DILocation(line: 813, column: 60, scope: !3287)
!3332 = !DILocation(line: 815, column: 32, scope: !3287)
!3333 = !DILocation(line: 815, column: 47, scope: !3287)
!3334 = !DILocation(line: 813, column: 3, scope: !3287)
!3335 = !DILocation(line: 816, column: 9, scope: !3287)
!3336 = !DILocation(line: 817, column: 7, scope: !3287)
!3337 = !DILocation(line: 818, column: 11, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3287, file: !598, line: 817, column: 7)
!3339 = !DILocation(line: 818, column: 5, scope: !3338)
!3340 = !DILocation(line: 819, column: 3, scope: !3287)
!3341 = distinct !DISubprogram(name: "quotearg_free", scope: !598, file: !598, line: 837, type: !548, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3342)
!3342 = !{!3343, !3344}
!3343 = !DILocalVariable(name: "sv", scope: !3341, file: !598, line: 839, type: !687)
!3344 = !DILocalVariable(name: "i", scope: !3345, file: !598, line: 840, type: !116)
!3345 = distinct !DILexicalBlock(scope: !3341, file: !598, line: 840, column: 3)
!3346 = !DILocation(line: 839, column: 24, scope: !3341)
!3347 = !DILocation(line: 0, scope: !3341)
!3348 = !DILocation(line: 0, scope: !3345)
!3349 = !DILocation(line: 840, column: 21, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3345, file: !598, line: 840, column: 3)
!3351 = !DILocation(line: 840, column: 3, scope: !3345)
!3352 = !DILocation(line: 842, column: 13, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3341, file: !598, line: 842, column: 7)
!3354 = !{!3355, !949, i64 8}
!3355 = !{!"slotvec", !1204, i64 0, !949, i64 8}
!3356 = !DILocation(line: 842, column: 17, scope: !3353)
!3357 = !DILocation(line: 842, column: 7, scope: !3341)
!3358 = !DILocation(line: 841, column: 17, scope: !3350)
!3359 = !DILocation(line: 841, column: 5, scope: !3350)
!3360 = !DILocation(line: 840, column: 32, scope: !3350)
!3361 = distinct !{!3361, !3351, !3362, !1067}
!3362 = !DILocation(line: 841, column: 20, scope: !3345)
!3363 = !DILocation(line: 844, column: 7, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3353, file: !598, line: 843, column: 5)
!3365 = !DILocation(line: 845, column: 21, scope: !3364)
!3366 = !{!3355, !1204, i64 0}
!3367 = !DILocation(line: 846, column: 20, scope: !3364)
!3368 = !DILocation(line: 847, column: 5, scope: !3364)
!3369 = !DILocation(line: 848, column: 10, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3341, file: !598, line: 848, column: 7)
!3371 = !DILocation(line: 848, column: 7, scope: !3341)
!3372 = !DILocation(line: 850, column: 7, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3370, file: !598, line: 849, column: 5)
!3374 = !DILocation(line: 851, column: 15, scope: !3373)
!3375 = !DILocation(line: 852, column: 5, scope: !3373)
!3376 = !DILocation(line: 853, column: 10, scope: !3341)
!3377 = !DILocation(line: 854, column: 1, scope: !3341)
!3378 = distinct !DISubprogram(name: "quotearg_n", scope: !598, file: !598, line: 919, type: !1134, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3379)
!3379 = !{!3380, !3381}
!3380 = !DILocalVariable(name: "n", arg: 1, scope: !3378, file: !598, line: 919, type: !116)
!3381 = !DILocalVariable(name: "arg", arg: 2, scope: !3378, file: !598, line: 919, type: !165)
!3382 = !DILocation(line: 0, scope: !3378)
!3383 = !DILocation(line: 921, column: 10, scope: !3378)
!3384 = !DILocation(line: 921, column: 3, scope: !3378)
!3385 = distinct !DISubprogram(name: "quotearg_n_options", scope: !598, file: !598, line: 866, type: !3386, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3388)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!159, !116, !165, !162, !2610}
!3388 = !{!3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3399, !3400, !3402, !3403, !3404}
!3389 = !DILocalVariable(name: "n", arg: 1, scope: !3385, file: !598, line: 866, type: !116)
!3390 = !DILocalVariable(name: "arg", arg: 2, scope: !3385, file: !598, line: 866, type: !165)
!3391 = !DILocalVariable(name: "argsize", arg: 3, scope: !3385, file: !598, line: 866, type: !162)
!3392 = !DILocalVariable(name: "options", arg: 4, scope: !3385, file: !598, line: 867, type: !2610)
!3393 = !DILocalVariable(name: "saved_errno", scope: !3385, file: !598, line: 869, type: !116)
!3394 = !DILocalVariable(name: "sv", scope: !3385, file: !598, line: 871, type: !687)
!3395 = !DILocalVariable(name: "nslots_max", scope: !3385, file: !598, line: 873, type: !116)
!3396 = !DILocalVariable(name: "preallocated", scope: !3397, file: !598, line: 879, type: !205)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !598, line: 878, column: 5)
!3398 = distinct !DILexicalBlock(scope: !3385, file: !598, line: 877, column: 7)
!3399 = !DILocalVariable(name: "new_nslots", scope: !3397, file: !598, line: 880, type: !900)
!3400 = !DILocalVariable(name: "size", scope: !3401, file: !598, line: 891, type: !162)
!3401 = distinct !DILexicalBlock(scope: !3385, file: !598, line: 890, column: 3)
!3402 = !DILocalVariable(name: "val", scope: !3401, file: !598, line: 892, type: !159)
!3403 = !DILocalVariable(name: "flags", scope: !3401, file: !598, line: 894, type: !116)
!3404 = !DILocalVariable(name: "qsize", scope: !3401, file: !598, line: 895, type: !162)
!3405 = distinct !DIAssignID()
!3406 = !DILocation(line: 0, scope: !3397)
!3407 = !DILocation(line: 0, scope: !3385)
!3408 = !DILocation(line: 869, column: 21, scope: !3385)
!3409 = !DILocation(line: 871, column: 24, scope: !3385)
!3410 = !DILocation(line: 874, column: 17, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3385, file: !598, line: 874, column: 7)
!3412 = !DILocation(line: 875, column: 5, scope: !3411)
!3413 = !DILocation(line: 877, column: 7, scope: !3398)
!3414 = !DILocation(line: 877, column: 14, scope: !3398)
!3415 = !DILocation(line: 877, column: 7, scope: !3385)
!3416 = !DILocation(line: 879, column: 31, scope: !3397)
!3417 = !DILocation(line: 880, column: 7, scope: !3397)
!3418 = !DILocation(line: 880, column: 26, scope: !3397)
!3419 = !DILocation(line: 880, column: 13, scope: !3397)
!3420 = distinct !DIAssignID()
!3421 = !DILocation(line: 882, column: 31, scope: !3397)
!3422 = !DILocation(line: 883, column: 33, scope: !3397)
!3423 = !DILocation(line: 883, column: 42, scope: !3397)
!3424 = !DILocation(line: 883, column: 31, scope: !3397)
!3425 = !DILocation(line: 882, column: 22, scope: !3397)
!3426 = !DILocation(line: 882, column: 15, scope: !3397)
!3427 = !DILocation(line: 884, column: 11, scope: !3397)
!3428 = !DILocation(line: 885, column: 15, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3397, file: !598, line: 884, column: 11)
!3430 = !{i64 0, i64 8, !1203, i64 8, i64 8, !948}
!3431 = !DILocation(line: 885, column: 9, scope: !3429)
!3432 = !DILocation(line: 886, column: 20, scope: !3397)
!3433 = !DILocation(line: 886, column: 18, scope: !3397)
!3434 = !DILocation(line: 886, column: 32, scope: !3397)
!3435 = !DILocation(line: 886, column: 43, scope: !3397)
!3436 = !DILocation(line: 886, column: 53, scope: !3397)
!3437 = !DILocation(line: 0, scope: !2827, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 886, column: 7, scope: !3397)
!3439 = !DILocation(line: 59, column: 10, scope: !2827, inlinedAt: !3438)
!3440 = !DILocation(line: 887, column: 16, scope: !3397)
!3441 = !DILocation(line: 887, column: 14, scope: !3397)
!3442 = !DILocation(line: 888, column: 5, scope: !3398)
!3443 = !DILocation(line: 888, column: 5, scope: !3397)
!3444 = !DILocation(line: 891, column: 19, scope: !3401)
!3445 = !DILocation(line: 891, column: 25, scope: !3401)
!3446 = !DILocation(line: 0, scope: !3401)
!3447 = !DILocation(line: 892, column: 23, scope: !3401)
!3448 = !DILocation(line: 894, column: 26, scope: !3401)
!3449 = !DILocation(line: 894, column: 32, scope: !3401)
!3450 = !DILocation(line: 896, column: 55, scope: !3401)
!3451 = !DILocation(line: 897, column: 55, scope: !3401)
!3452 = !DILocation(line: 898, column: 55, scope: !3401)
!3453 = !DILocation(line: 899, column: 55, scope: !3401)
!3454 = !DILocation(line: 895, column: 20, scope: !3401)
!3455 = !DILocation(line: 901, column: 14, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3401, file: !598, line: 901, column: 9)
!3457 = !DILocation(line: 901, column: 9, scope: !3401)
!3458 = !DILocation(line: 903, column: 35, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3456, file: !598, line: 902, column: 7)
!3460 = !DILocation(line: 903, column: 20, scope: !3459)
!3461 = !DILocation(line: 904, column: 17, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3459, file: !598, line: 904, column: 13)
!3463 = !DILocation(line: 904, column: 13, scope: !3459)
!3464 = !DILocation(line: 905, column: 11, scope: !3462)
!3465 = !DILocation(line: 906, column: 27, scope: !3459)
!3466 = !DILocation(line: 906, column: 19, scope: !3459)
!3467 = !DILocation(line: 907, column: 69, scope: !3459)
!3468 = !DILocation(line: 909, column: 44, scope: !3459)
!3469 = !DILocation(line: 910, column: 44, scope: !3459)
!3470 = !DILocation(line: 907, column: 9, scope: !3459)
!3471 = !DILocation(line: 911, column: 7, scope: !3459)
!3472 = !DILocation(line: 913, column: 11, scope: !3401)
!3473 = !DILocation(line: 914, column: 5, scope: !3401)
!3474 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !598, file: !598, line: 925, type: !3475, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!159, !116, !165, !162}
!3477 = !{!3478, !3479, !3480}
!3478 = !DILocalVariable(name: "n", arg: 1, scope: !3474, file: !598, line: 925, type: !116)
!3479 = !DILocalVariable(name: "arg", arg: 2, scope: !3474, file: !598, line: 925, type: !165)
!3480 = !DILocalVariable(name: "argsize", arg: 3, scope: !3474, file: !598, line: 925, type: !162)
!3481 = !DILocation(line: 0, scope: !3474)
!3482 = !DILocation(line: 927, column: 10, scope: !3474)
!3483 = !DILocation(line: 927, column: 3, scope: !3474)
!3484 = distinct !DISubprogram(name: "quotearg", scope: !598, file: !598, line: 931, type: !1143, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3485)
!3485 = !{!3486}
!3486 = !DILocalVariable(name: "arg", arg: 1, scope: !3484, file: !598, line: 931, type: !165)
!3487 = !DILocation(line: 0, scope: !3484)
!3488 = !DILocation(line: 0, scope: !3378, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 933, column: 10, scope: !3484)
!3490 = !DILocation(line: 921, column: 10, scope: !3378, inlinedAt: !3489)
!3491 = !DILocation(line: 933, column: 3, scope: !3484)
!3492 = distinct !DISubprogram(name: "quotearg_mem", scope: !598, file: !598, line: 937, type: !3493, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3495)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!159, !165, !162}
!3495 = !{!3496, !3497}
!3496 = !DILocalVariable(name: "arg", arg: 1, scope: !3492, file: !598, line: 937, type: !165)
!3497 = !DILocalVariable(name: "argsize", arg: 2, scope: !3492, file: !598, line: 937, type: !162)
!3498 = !DILocation(line: 0, scope: !3492)
!3499 = !DILocation(line: 0, scope: !3474, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 939, column: 10, scope: !3492)
!3501 = !DILocation(line: 927, column: 10, scope: !3474, inlinedAt: !3500)
!3502 = !DILocation(line: 939, column: 3, scope: !3492)
!3503 = distinct !DISubprogram(name: "quotearg_n_style", scope: !598, file: !598, line: 943, type: !3504, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!159, !116, !624, !165}
!3506 = !{!3507, !3508, !3509, !3510}
!3507 = !DILocalVariable(name: "n", arg: 1, scope: !3503, file: !598, line: 943, type: !116)
!3508 = !DILocalVariable(name: "s", arg: 2, scope: !3503, file: !598, line: 943, type: !624)
!3509 = !DILocalVariable(name: "arg", arg: 3, scope: !3503, file: !598, line: 943, type: !165)
!3510 = !DILocalVariable(name: "o", scope: !3503, file: !598, line: 945, type: !2611)
!3511 = distinct !DIAssignID()
!3512 = !DILocation(line: 0, scope: !3503)
!3513 = !DILocation(line: 945, column: 3, scope: !3503)
!3514 = !{!3515}
!3515 = distinct !{!3515, !3516, !"quoting_options_from_style: argument 0"}
!3516 = distinct !{!3516, !"quoting_options_from_style"}
!3517 = !DILocation(line: 945, column: 36, scope: !3503)
!3518 = !DILocalVariable(name: "style", arg: 1, scope: !3519, file: !598, line: 183, type: !624)
!3519 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !598, file: !598, line: 183, type: !3520, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3522)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!639, !624}
!3522 = !{!3518, !3523}
!3523 = !DILocalVariable(name: "o", scope: !3519, file: !598, line: 185, type: !639)
!3524 = !DILocation(line: 0, scope: !3519, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 945, column: 36, scope: !3503)
!3526 = !DILocation(line: 185, column: 26, scope: !3519, inlinedAt: !3525)
!3527 = distinct !DIAssignID()
!3528 = !DILocation(line: 186, column: 13, scope: !3529, inlinedAt: !3525)
!3529 = distinct !DILexicalBlock(scope: !3519, file: !598, line: 186, column: 7)
!3530 = !DILocation(line: 186, column: 7, scope: !3519, inlinedAt: !3525)
!3531 = !DILocation(line: 187, column: 5, scope: !3529, inlinedAt: !3525)
!3532 = !DILocation(line: 188, column: 11, scope: !3519, inlinedAt: !3525)
!3533 = distinct !DIAssignID()
!3534 = !DILocation(line: 946, column: 10, scope: !3503)
!3535 = !DILocation(line: 947, column: 1, scope: !3503)
!3536 = !DILocation(line: 946, column: 3, scope: !3503)
!3537 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !598, file: !598, line: 950, type: !3538, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3540)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!159, !116, !624, !165, !162}
!3540 = !{!3541, !3542, !3543, !3544, !3545}
!3541 = !DILocalVariable(name: "n", arg: 1, scope: !3537, file: !598, line: 950, type: !116)
!3542 = !DILocalVariable(name: "s", arg: 2, scope: !3537, file: !598, line: 950, type: !624)
!3543 = !DILocalVariable(name: "arg", arg: 3, scope: !3537, file: !598, line: 951, type: !165)
!3544 = !DILocalVariable(name: "argsize", arg: 4, scope: !3537, file: !598, line: 951, type: !162)
!3545 = !DILocalVariable(name: "o", scope: !3537, file: !598, line: 953, type: !2611)
!3546 = distinct !DIAssignID()
!3547 = !DILocation(line: 0, scope: !3537)
!3548 = !DILocation(line: 953, column: 3, scope: !3537)
!3549 = !{!3550}
!3550 = distinct !{!3550, !3551, !"quoting_options_from_style: argument 0"}
!3551 = distinct !{!3551, !"quoting_options_from_style"}
!3552 = !DILocation(line: 953, column: 36, scope: !3537)
!3553 = !DILocation(line: 0, scope: !3519, inlinedAt: !3554)
!3554 = distinct !DILocation(line: 953, column: 36, scope: !3537)
!3555 = !DILocation(line: 185, column: 26, scope: !3519, inlinedAt: !3554)
!3556 = distinct !DIAssignID()
!3557 = !DILocation(line: 186, column: 13, scope: !3529, inlinedAt: !3554)
!3558 = !DILocation(line: 186, column: 7, scope: !3519, inlinedAt: !3554)
!3559 = !DILocation(line: 187, column: 5, scope: !3529, inlinedAt: !3554)
!3560 = !DILocation(line: 188, column: 11, scope: !3519, inlinedAt: !3554)
!3561 = distinct !DIAssignID()
!3562 = !DILocation(line: 954, column: 10, scope: !3537)
!3563 = !DILocation(line: 955, column: 1, scope: !3537)
!3564 = !DILocation(line: 954, column: 3, scope: !3537)
!3565 = distinct !DISubprogram(name: "quotearg_style", scope: !598, file: !598, line: 958, type: !3566, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3568)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!159, !624, !165}
!3568 = !{!3569, !3570}
!3569 = !DILocalVariable(name: "s", arg: 1, scope: !3565, file: !598, line: 958, type: !624)
!3570 = !DILocalVariable(name: "arg", arg: 2, scope: !3565, file: !598, line: 958, type: !165)
!3571 = distinct !DIAssignID()
!3572 = !DILocation(line: 0, scope: !3565)
!3573 = !DILocation(line: 0, scope: !3503, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 960, column: 10, scope: !3565)
!3575 = !DILocation(line: 945, column: 3, scope: !3503, inlinedAt: !3574)
!3576 = !{!3577}
!3577 = distinct !{!3577, !3578, !"quoting_options_from_style: argument 0"}
!3578 = distinct !{!3578, !"quoting_options_from_style"}
!3579 = !DILocation(line: 945, column: 36, scope: !3503, inlinedAt: !3574)
!3580 = !DILocation(line: 0, scope: !3519, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 945, column: 36, scope: !3503, inlinedAt: !3574)
!3582 = !DILocation(line: 185, column: 26, scope: !3519, inlinedAt: !3581)
!3583 = distinct !DIAssignID()
!3584 = !DILocation(line: 186, column: 13, scope: !3529, inlinedAt: !3581)
!3585 = !DILocation(line: 186, column: 7, scope: !3519, inlinedAt: !3581)
!3586 = !DILocation(line: 187, column: 5, scope: !3529, inlinedAt: !3581)
!3587 = !DILocation(line: 188, column: 11, scope: !3519, inlinedAt: !3581)
!3588 = distinct !DIAssignID()
!3589 = !DILocation(line: 946, column: 10, scope: !3503, inlinedAt: !3574)
!3590 = !DILocation(line: 947, column: 1, scope: !3503, inlinedAt: !3574)
!3591 = !DILocation(line: 960, column: 3, scope: !3565)
!3592 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !598, file: !598, line: 964, type: !3593, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3595)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!159, !624, !165, !162}
!3595 = !{!3596, !3597, !3598}
!3596 = !DILocalVariable(name: "s", arg: 1, scope: !3592, file: !598, line: 964, type: !624)
!3597 = !DILocalVariable(name: "arg", arg: 2, scope: !3592, file: !598, line: 964, type: !165)
!3598 = !DILocalVariable(name: "argsize", arg: 3, scope: !3592, file: !598, line: 964, type: !162)
!3599 = distinct !DIAssignID()
!3600 = !DILocation(line: 0, scope: !3592)
!3601 = !DILocation(line: 0, scope: !3537, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 966, column: 10, scope: !3592)
!3603 = !DILocation(line: 953, column: 3, scope: !3537, inlinedAt: !3602)
!3604 = !{!3605}
!3605 = distinct !{!3605, !3606, !"quoting_options_from_style: argument 0"}
!3606 = distinct !{!3606, !"quoting_options_from_style"}
!3607 = !DILocation(line: 953, column: 36, scope: !3537, inlinedAt: !3602)
!3608 = !DILocation(line: 0, scope: !3519, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 953, column: 36, scope: !3537, inlinedAt: !3602)
!3610 = !DILocation(line: 185, column: 26, scope: !3519, inlinedAt: !3609)
!3611 = distinct !DIAssignID()
!3612 = !DILocation(line: 186, column: 13, scope: !3529, inlinedAt: !3609)
!3613 = !DILocation(line: 186, column: 7, scope: !3519, inlinedAt: !3609)
!3614 = !DILocation(line: 187, column: 5, scope: !3529, inlinedAt: !3609)
!3615 = !DILocation(line: 188, column: 11, scope: !3519, inlinedAt: !3609)
!3616 = distinct !DIAssignID()
!3617 = !DILocation(line: 954, column: 10, scope: !3537, inlinedAt: !3602)
!3618 = !DILocation(line: 955, column: 1, scope: !3537, inlinedAt: !3602)
!3619 = !DILocation(line: 966, column: 3, scope: !3592)
!3620 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !598, file: !598, line: 970, type: !3621, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3623)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!159, !165, !162, !4}
!3623 = !{!3624, !3625, !3626, !3627}
!3624 = !DILocalVariable(name: "arg", arg: 1, scope: !3620, file: !598, line: 970, type: !165)
!3625 = !DILocalVariable(name: "argsize", arg: 2, scope: !3620, file: !598, line: 970, type: !162)
!3626 = !DILocalVariable(name: "ch", arg: 3, scope: !3620, file: !598, line: 970, type: !4)
!3627 = !DILocalVariable(name: "options", scope: !3620, file: !598, line: 972, type: !639)
!3628 = distinct !DIAssignID()
!3629 = !DILocation(line: 0, scope: !3620)
!3630 = !DILocation(line: 972, column: 3, scope: !3620)
!3631 = !DILocation(line: 973, column: 13, scope: !3620)
!3632 = !{i64 0, i64 4, !1020, i64 4, i64 4, !1020, i64 8, i64 32, !1029, i64 40, i64 8, !948, i64 48, i64 8, !948}
!3633 = distinct !DIAssignID()
!3634 = !DILocation(line: 0, scope: !2630, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 974, column: 3, scope: !3620)
!3636 = !DILocation(line: 147, column: 41, scope: !2630, inlinedAt: !3635)
!3637 = !DILocation(line: 147, column: 62, scope: !2630, inlinedAt: !3635)
!3638 = !DILocation(line: 147, column: 57, scope: !2630, inlinedAt: !3635)
!3639 = !DILocation(line: 148, column: 15, scope: !2630, inlinedAt: !3635)
!3640 = !DILocation(line: 149, column: 21, scope: !2630, inlinedAt: !3635)
!3641 = !DILocation(line: 149, column: 24, scope: !2630, inlinedAt: !3635)
!3642 = !DILocation(line: 150, column: 19, scope: !2630, inlinedAt: !3635)
!3643 = !DILocation(line: 150, column: 24, scope: !2630, inlinedAt: !3635)
!3644 = !DILocation(line: 150, column: 6, scope: !2630, inlinedAt: !3635)
!3645 = !DILocation(line: 975, column: 10, scope: !3620)
!3646 = !DILocation(line: 976, column: 1, scope: !3620)
!3647 = !DILocation(line: 975, column: 3, scope: !3620)
!3648 = distinct !DISubprogram(name: "quotearg_char", scope: !598, file: !598, line: 979, type: !3649, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3651)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!159, !165, !4}
!3651 = !{!3652, !3653}
!3652 = !DILocalVariable(name: "arg", arg: 1, scope: !3648, file: !598, line: 979, type: !165)
!3653 = !DILocalVariable(name: "ch", arg: 2, scope: !3648, file: !598, line: 979, type: !4)
!3654 = distinct !DIAssignID()
!3655 = !DILocation(line: 0, scope: !3648)
!3656 = !DILocation(line: 0, scope: !3620, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 981, column: 10, scope: !3648)
!3658 = !DILocation(line: 972, column: 3, scope: !3620, inlinedAt: !3657)
!3659 = !DILocation(line: 973, column: 13, scope: !3620, inlinedAt: !3657)
!3660 = distinct !DIAssignID()
!3661 = !DILocation(line: 0, scope: !2630, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 974, column: 3, scope: !3620, inlinedAt: !3657)
!3663 = !DILocation(line: 147, column: 41, scope: !2630, inlinedAt: !3662)
!3664 = !DILocation(line: 147, column: 62, scope: !2630, inlinedAt: !3662)
!3665 = !DILocation(line: 147, column: 57, scope: !2630, inlinedAt: !3662)
!3666 = !DILocation(line: 148, column: 15, scope: !2630, inlinedAt: !3662)
!3667 = !DILocation(line: 149, column: 21, scope: !2630, inlinedAt: !3662)
!3668 = !DILocation(line: 149, column: 24, scope: !2630, inlinedAt: !3662)
!3669 = !DILocation(line: 150, column: 19, scope: !2630, inlinedAt: !3662)
!3670 = !DILocation(line: 150, column: 24, scope: !2630, inlinedAt: !3662)
!3671 = !DILocation(line: 150, column: 6, scope: !2630, inlinedAt: !3662)
!3672 = !DILocation(line: 975, column: 10, scope: !3620, inlinedAt: !3657)
!3673 = !DILocation(line: 976, column: 1, scope: !3620, inlinedAt: !3657)
!3674 = !DILocation(line: 981, column: 3, scope: !3648)
!3675 = distinct !DISubprogram(name: "quotearg_colon", scope: !598, file: !598, line: 985, type: !1143, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3676)
!3676 = !{!3677}
!3677 = !DILocalVariable(name: "arg", arg: 1, scope: !3675, file: !598, line: 985, type: !165)
!3678 = distinct !DIAssignID()
!3679 = !DILocation(line: 0, scope: !3675)
!3680 = !DILocation(line: 0, scope: !3648, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 987, column: 10, scope: !3675)
!3682 = !DILocation(line: 0, scope: !3620, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 981, column: 10, scope: !3648, inlinedAt: !3681)
!3684 = !DILocation(line: 972, column: 3, scope: !3620, inlinedAt: !3683)
!3685 = !DILocation(line: 973, column: 13, scope: !3620, inlinedAt: !3683)
!3686 = distinct !DIAssignID()
!3687 = !DILocation(line: 0, scope: !2630, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 974, column: 3, scope: !3620, inlinedAt: !3683)
!3689 = !DILocation(line: 147, column: 57, scope: !2630, inlinedAt: !3688)
!3690 = !DILocation(line: 149, column: 21, scope: !2630, inlinedAt: !3688)
!3691 = !DILocation(line: 150, column: 6, scope: !2630, inlinedAt: !3688)
!3692 = !DILocation(line: 975, column: 10, scope: !3620, inlinedAt: !3683)
!3693 = !DILocation(line: 976, column: 1, scope: !3620, inlinedAt: !3683)
!3694 = !DILocation(line: 987, column: 3, scope: !3675)
!3695 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !598, file: !598, line: 991, type: !3493, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3696)
!3696 = !{!3697, !3698}
!3697 = !DILocalVariable(name: "arg", arg: 1, scope: !3695, file: !598, line: 991, type: !165)
!3698 = !DILocalVariable(name: "argsize", arg: 2, scope: !3695, file: !598, line: 991, type: !162)
!3699 = distinct !DIAssignID()
!3700 = !DILocation(line: 0, scope: !3695)
!3701 = !DILocation(line: 0, scope: !3620, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 993, column: 10, scope: !3695)
!3703 = !DILocation(line: 972, column: 3, scope: !3620, inlinedAt: !3702)
!3704 = !DILocation(line: 973, column: 13, scope: !3620, inlinedAt: !3702)
!3705 = distinct !DIAssignID()
!3706 = !DILocation(line: 0, scope: !2630, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 974, column: 3, scope: !3620, inlinedAt: !3702)
!3708 = !DILocation(line: 147, column: 57, scope: !2630, inlinedAt: !3707)
!3709 = !DILocation(line: 149, column: 21, scope: !2630, inlinedAt: !3707)
!3710 = !DILocation(line: 150, column: 6, scope: !2630, inlinedAt: !3707)
!3711 = !DILocation(line: 975, column: 10, scope: !3620, inlinedAt: !3702)
!3712 = !DILocation(line: 976, column: 1, scope: !3620, inlinedAt: !3702)
!3713 = !DILocation(line: 993, column: 3, scope: !3695)
!3714 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !598, file: !598, line: 997, type: !3504, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3715)
!3715 = !{!3716, !3717, !3718, !3719}
!3716 = !DILocalVariable(name: "n", arg: 1, scope: !3714, file: !598, line: 997, type: !116)
!3717 = !DILocalVariable(name: "s", arg: 2, scope: !3714, file: !598, line: 997, type: !624)
!3718 = !DILocalVariable(name: "arg", arg: 3, scope: !3714, file: !598, line: 997, type: !165)
!3719 = !DILocalVariable(name: "options", scope: !3714, file: !598, line: 999, type: !639)
!3720 = distinct !DIAssignID()
!3721 = !DILocation(line: 0, scope: !3714)
!3722 = !DILocation(line: 185, column: 26, scope: !3519, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 1000, column: 13, scope: !3714)
!3724 = !DILocation(line: 999, column: 3, scope: !3714)
!3725 = !DILocation(line: 0, scope: !3519, inlinedAt: !3723)
!3726 = !DILocation(line: 186, column: 13, scope: !3529, inlinedAt: !3723)
!3727 = !DILocation(line: 186, column: 7, scope: !3519, inlinedAt: !3723)
!3728 = !DILocation(line: 187, column: 5, scope: !3529, inlinedAt: !3723)
!3729 = !{!3730}
!3730 = distinct !{!3730, !3731, !"quoting_options_from_style: argument 0"}
!3731 = distinct !{!3731, !"quoting_options_from_style"}
!3732 = !DILocation(line: 1000, column: 13, scope: !3714)
!3733 = distinct !DIAssignID()
!3734 = distinct !DIAssignID()
!3735 = !DILocation(line: 0, scope: !2630, inlinedAt: !3736)
!3736 = distinct !DILocation(line: 1001, column: 3, scope: !3714)
!3737 = !DILocation(line: 147, column: 57, scope: !2630, inlinedAt: !3736)
!3738 = !DILocation(line: 149, column: 21, scope: !2630, inlinedAt: !3736)
!3739 = !DILocation(line: 150, column: 6, scope: !2630, inlinedAt: !3736)
!3740 = distinct !DIAssignID()
!3741 = !DILocation(line: 1002, column: 10, scope: !3714)
!3742 = !DILocation(line: 1003, column: 1, scope: !3714)
!3743 = !DILocation(line: 1002, column: 3, scope: !3714)
!3744 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !598, file: !598, line: 1006, type: !3745, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3747)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!159, !116, !165, !165, !165}
!3747 = !{!3748, !3749, !3750, !3751}
!3748 = !DILocalVariable(name: "n", arg: 1, scope: !3744, file: !598, line: 1006, type: !116)
!3749 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3744, file: !598, line: 1006, type: !165)
!3750 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3744, file: !598, line: 1007, type: !165)
!3751 = !DILocalVariable(name: "arg", arg: 4, scope: !3744, file: !598, line: 1007, type: !165)
!3752 = distinct !DIAssignID()
!3753 = !DILocation(line: 0, scope: !3744)
!3754 = !DILocalVariable(name: "o", scope: !3755, file: !598, line: 1018, type: !639)
!3755 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !598, file: !598, line: 1014, type: !3756, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3758)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!159, !116, !165, !165, !165, !162}
!3758 = !{!3759, !3760, !3761, !3762, !3763, !3754}
!3759 = !DILocalVariable(name: "n", arg: 1, scope: !3755, file: !598, line: 1014, type: !116)
!3760 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3755, file: !598, line: 1014, type: !165)
!3761 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3755, file: !598, line: 1015, type: !165)
!3762 = !DILocalVariable(name: "arg", arg: 4, scope: !3755, file: !598, line: 1016, type: !165)
!3763 = !DILocalVariable(name: "argsize", arg: 5, scope: !3755, file: !598, line: 1016, type: !162)
!3764 = !DILocation(line: 0, scope: !3755, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 1009, column: 10, scope: !3744)
!3766 = !DILocation(line: 1018, column: 3, scope: !3755, inlinedAt: !3765)
!3767 = !DILocation(line: 1018, column: 30, scope: !3755, inlinedAt: !3765)
!3768 = distinct !DIAssignID()
!3769 = distinct !DIAssignID()
!3770 = !DILocation(line: 0, scope: !2670, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 1019, column: 3, scope: !3755, inlinedAt: !3765)
!3772 = !DILocation(line: 174, column: 12, scope: !2670, inlinedAt: !3771)
!3773 = distinct !DIAssignID()
!3774 = !DILocation(line: 175, column: 8, scope: !2683, inlinedAt: !3771)
!3775 = !DILocation(line: 175, column: 19, scope: !2683, inlinedAt: !3771)
!3776 = !DILocation(line: 176, column: 5, scope: !2683, inlinedAt: !3771)
!3777 = !DILocation(line: 177, column: 6, scope: !2670, inlinedAt: !3771)
!3778 = !DILocation(line: 177, column: 17, scope: !2670, inlinedAt: !3771)
!3779 = distinct !DIAssignID()
!3780 = !DILocation(line: 178, column: 6, scope: !2670, inlinedAt: !3771)
!3781 = !DILocation(line: 178, column: 18, scope: !2670, inlinedAt: !3771)
!3782 = distinct !DIAssignID()
!3783 = !DILocation(line: 1020, column: 10, scope: !3755, inlinedAt: !3765)
!3784 = !DILocation(line: 1021, column: 1, scope: !3755, inlinedAt: !3765)
!3785 = !DILocation(line: 1009, column: 3, scope: !3744)
!3786 = distinct !DIAssignID()
!3787 = !DILocation(line: 0, scope: !3755)
!3788 = !DILocation(line: 1018, column: 3, scope: !3755)
!3789 = !DILocation(line: 1018, column: 30, scope: !3755)
!3790 = distinct !DIAssignID()
!3791 = distinct !DIAssignID()
!3792 = !DILocation(line: 0, scope: !2670, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 1019, column: 3, scope: !3755)
!3794 = !DILocation(line: 174, column: 12, scope: !2670, inlinedAt: !3793)
!3795 = distinct !DIAssignID()
!3796 = !DILocation(line: 175, column: 8, scope: !2683, inlinedAt: !3793)
!3797 = !DILocation(line: 175, column: 19, scope: !2683, inlinedAt: !3793)
!3798 = !DILocation(line: 176, column: 5, scope: !2683, inlinedAt: !3793)
!3799 = !DILocation(line: 177, column: 6, scope: !2670, inlinedAt: !3793)
!3800 = !DILocation(line: 177, column: 17, scope: !2670, inlinedAt: !3793)
!3801 = distinct !DIAssignID()
!3802 = !DILocation(line: 178, column: 6, scope: !2670, inlinedAt: !3793)
!3803 = !DILocation(line: 178, column: 18, scope: !2670, inlinedAt: !3793)
!3804 = distinct !DIAssignID()
!3805 = !DILocation(line: 1020, column: 10, scope: !3755)
!3806 = !DILocation(line: 1021, column: 1, scope: !3755)
!3807 = !DILocation(line: 1020, column: 3, scope: !3755)
!3808 = distinct !DISubprogram(name: "quotearg_custom", scope: !598, file: !598, line: 1024, type: !3809, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3811)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!159, !165, !165, !165}
!3811 = !{!3812, !3813, !3814}
!3812 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3808, file: !598, line: 1024, type: !165)
!3813 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3808, file: !598, line: 1024, type: !165)
!3814 = !DILocalVariable(name: "arg", arg: 3, scope: !3808, file: !598, line: 1025, type: !165)
!3815 = distinct !DIAssignID()
!3816 = !DILocation(line: 0, scope: !3808)
!3817 = !DILocation(line: 0, scope: !3744, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 1027, column: 10, scope: !3808)
!3819 = !DILocation(line: 0, scope: !3755, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 1009, column: 10, scope: !3744, inlinedAt: !3818)
!3821 = !DILocation(line: 1018, column: 3, scope: !3755, inlinedAt: !3820)
!3822 = !DILocation(line: 1018, column: 30, scope: !3755, inlinedAt: !3820)
!3823 = distinct !DIAssignID()
!3824 = distinct !DIAssignID()
!3825 = !DILocation(line: 0, scope: !2670, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 1019, column: 3, scope: !3755, inlinedAt: !3820)
!3827 = !DILocation(line: 174, column: 12, scope: !2670, inlinedAt: !3826)
!3828 = distinct !DIAssignID()
!3829 = !DILocation(line: 175, column: 8, scope: !2683, inlinedAt: !3826)
!3830 = !DILocation(line: 175, column: 19, scope: !2683, inlinedAt: !3826)
!3831 = !DILocation(line: 176, column: 5, scope: !2683, inlinedAt: !3826)
!3832 = !DILocation(line: 177, column: 6, scope: !2670, inlinedAt: !3826)
!3833 = !DILocation(line: 177, column: 17, scope: !2670, inlinedAt: !3826)
!3834 = distinct !DIAssignID()
!3835 = !DILocation(line: 178, column: 6, scope: !2670, inlinedAt: !3826)
!3836 = !DILocation(line: 178, column: 18, scope: !2670, inlinedAt: !3826)
!3837 = distinct !DIAssignID()
!3838 = !DILocation(line: 1020, column: 10, scope: !3755, inlinedAt: !3820)
!3839 = !DILocation(line: 1021, column: 1, scope: !3755, inlinedAt: !3820)
!3840 = !DILocation(line: 1027, column: 3, scope: !3808)
!3841 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !598, file: !598, line: 1031, type: !3842, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3844)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!159, !165, !165, !165, !162}
!3844 = !{!3845, !3846, !3847, !3848}
!3845 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3841, file: !598, line: 1031, type: !165)
!3846 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3841, file: !598, line: 1031, type: !165)
!3847 = !DILocalVariable(name: "arg", arg: 3, scope: !3841, file: !598, line: 1032, type: !165)
!3848 = !DILocalVariable(name: "argsize", arg: 4, scope: !3841, file: !598, line: 1032, type: !162)
!3849 = distinct !DIAssignID()
!3850 = !DILocation(line: 0, scope: !3841)
!3851 = !DILocation(line: 0, scope: !3755, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 1034, column: 10, scope: !3841)
!3853 = !DILocation(line: 1018, column: 3, scope: !3755, inlinedAt: !3852)
!3854 = !DILocation(line: 1018, column: 30, scope: !3755, inlinedAt: !3852)
!3855 = distinct !DIAssignID()
!3856 = distinct !DIAssignID()
!3857 = !DILocation(line: 0, scope: !2670, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 1019, column: 3, scope: !3755, inlinedAt: !3852)
!3859 = !DILocation(line: 174, column: 12, scope: !2670, inlinedAt: !3858)
!3860 = distinct !DIAssignID()
!3861 = !DILocation(line: 175, column: 8, scope: !2683, inlinedAt: !3858)
!3862 = !DILocation(line: 175, column: 19, scope: !2683, inlinedAt: !3858)
!3863 = !DILocation(line: 176, column: 5, scope: !2683, inlinedAt: !3858)
!3864 = !DILocation(line: 177, column: 6, scope: !2670, inlinedAt: !3858)
!3865 = !DILocation(line: 177, column: 17, scope: !2670, inlinedAt: !3858)
!3866 = distinct !DIAssignID()
!3867 = !DILocation(line: 178, column: 6, scope: !2670, inlinedAt: !3858)
!3868 = !DILocation(line: 178, column: 18, scope: !2670, inlinedAt: !3858)
!3869 = distinct !DIAssignID()
!3870 = !DILocation(line: 1020, column: 10, scope: !3755, inlinedAt: !3852)
!3871 = !DILocation(line: 1021, column: 1, scope: !3755, inlinedAt: !3852)
!3872 = !DILocation(line: 1034, column: 3, scope: !3841)
!3873 = distinct !DISubprogram(name: "quote_n_mem", scope: !598, file: !598, line: 1049, type: !3874, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3876)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!165, !116, !165, !162}
!3876 = !{!3877, !3878, !3879}
!3877 = !DILocalVariable(name: "n", arg: 1, scope: !3873, file: !598, line: 1049, type: !116)
!3878 = !DILocalVariable(name: "arg", arg: 2, scope: !3873, file: !598, line: 1049, type: !165)
!3879 = !DILocalVariable(name: "argsize", arg: 3, scope: !3873, file: !598, line: 1049, type: !162)
!3880 = !DILocation(line: 0, scope: !3873)
!3881 = !DILocation(line: 1051, column: 10, scope: !3873)
!3882 = !DILocation(line: 1051, column: 3, scope: !3873)
!3883 = distinct !DISubprogram(name: "quote_mem", scope: !598, file: !598, line: 1055, type: !3884, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3886)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!165, !165, !162}
!3886 = !{!3887, !3888}
!3887 = !DILocalVariable(name: "arg", arg: 1, scope: !3883, file: !598, line: 1055, type: !165)
!3888 = !DILocalVariable(name: "argsize", arg: 2, scope: !3883, file: !598, line: 1055, type: !162)
!3889 = !DILocation(line: 0, scope: !3883)
!3890 = !DILocation(line: 0, scope: !3873, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 1057, column: 10, scope: !3883)
!3892 = !DILocation(line: 1051, column: 10, scope: !3873, inlinedAt: !3891)
!3893 = !DILocation(line: 1057, column: 3, scope: !3883)
!3894 = distinct !DISubprogram(name: "quote_n", scope: !598, file: !598, line: 1061, type: !3895, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3897)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!165, !116, !165}
!3897 = !{!3898, !3899}
!3898 = !DILocalVariable(name: "n", arg: 1, scope: !3894, file: !598, line: 1061, type: !116)
!3899 = !DILocalVariable(name: "arg", arg: 2, scope: !3894, file: !598, line: 1061, type: !165)
!3900 = !DILocation(line: 0, scope: !3894)
!3901 = !DILocation(line: 0, scope: !3873, inlinedAt: !3902)
!3902 = distinct !DILocation(line: 1063, column: 10, scope: !3894)
!3903 = !DILocation(line: 1051, column: 10, scope: !3873, inlinedAt: !3902)
!3904 = !DILocation(line: 1063, column: 3, scope: !3894)
!3905 = distinct !DISubprogram(name: "quote", scope: !598, file: !598, line: 1067, type: !3906, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !3908)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!165, !165}
!3908 = !{!3909}
!3909 = !DILocalVariable(name: "arg", arg: 1, scope: !3905, file: !598, line: 1067, type: !165)
!3910 = !DILocation(line: 0, scope: !3905)
!3911 = !DILocation(line: 0, scope: !3894, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 1069, column: 10, scope: !3905)
!3913 = !DILocation(line: 0, scope: !3873, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 1063, column: 10, scope: !3894, inlinedAt: !3912)
!3915 = !DILocation(line: 1051, column: 10, scope: !3873, inlinedAt: !3914)
!3916 = !DILocation(line: 1069, column: 3, scope: !3905)
!3917 = distinct !DISubprogram(name: "setlocale_null_r", scope: !869, file: !869, line: 154, type: !3918, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !3920)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!116, !116, !159, !162}
!3920 = !{!3921, !3922, !3923}
!3921 = !DILocalVariable(name: "category", arg: 1, scope: !3917, file: !869, line: 154, type: !116)
!3922 = !DILocalVariable(name: "buf", arg: 2, scope: !3917, file: !869, line: 154, type: !159)
!3923 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3917, file: !869, line: 154, type: !162)
!3924 = !DILocation(line: 0, scope: !3917)
!3925 = !DILocation(line: 159, column: 10, scope: !3917)
!3926 = !DILocation(line: 159, column: 3, scope: !3917)
!3927 = distinct !DISubprogram(name: "setlocale_null", scope: !869, file: !869, line: 186, type: !3928, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !3930)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!165, !116}
!3930 = !{!3931}
!3931 = !DILocalVariable(name: "category", arg: 1, scope: !3927, file: !869, line: 186, type: !116)
!3932 = !DILocation(line: 0, scope: !3927)
!3933 = !DILocation(line: 189, column: 10, scope: !3927)
!3934 = !DILocation(line: 189, column: 3, scope: !3927)
!3935 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !871, file: !871, line: 35, type: !3928, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !3936)
!3936 = !{!3937, !3938}
!3937 = !DILocalVariable(name: "category", arg: 1, scope: !3935, file: !871, line: 35, type: !116)
!3938 = !DILocalVariable(name: "result", scope: !3935, file: !871, line: 37, type: !165)
!3939 = !DILocation(line: 0, scope: !3935)
!3940 = !DILocation(line: 37, column: 24, scope: !3935)
!3941 = !DILocation(line: 62, column: 3, scope: !3935)
!3942 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !871, file: !871, line: 66, type: !3918, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !3943)
!3943 = !{!3944, !3945, !3946, !3947, !3948}
!3944 = !DILocalVariable(name: "category", arg: 1, scope: !3942, file: !871, line: 66, type: !116)
!3945 = !DILocalVariable(name: "buf", arg: 2, scope: !3942, file: !871, line: 66, type: !159)
!3946 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3942, file: !871, line: 66, type: !162)
!3947 = !DILocalVariable(name: "result", scope: !3942, file: !871, line: 111, type: !165)
!3948 = !DILocalVariable(name: "length", scope: !3949, file: !871, line: 125, type: !162)
!3949 = distinct !DILexicalBlock(scope: !3950, file: !871, line: 124, column: 5)
!3950 = distinct !DILexicalBlock(scope: !3942, file: !871, line: 113, column: 7)
!3951 = !DILocation(line: 0, scope: !3942)
!3952 = !DILocation(line: 0, scope: !3935, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 111, column: 24, scope: !3942)
!3954 = !DILocation(line: 37, column: 24, scope: !3935, inlinedAt: !3953)
!3955 = !DILocation(line: 113, column: 14, scope: !3950)
!3956 = !DILocation(line: 113, column: 7, scope: !3942)
!3957 = !DILocation(line: 116, column: 19, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3959, file: !871, line: 116, column: 11)
!3959 = distinct !DILexicalBlock(scope: !3950, file: !871, line: 114, column: 5)
!3960 = !DILocation(line: 116, column: 11, scope: !3959)
!3961 = !DILocation(line: 120, column: 16, scope: !3958)
!3962 = !DILocation(line: 120, column: 9, scope: !3958)
!3963 = !DILocation(line: 125, column: 23, scope: !3949)
!3964 = !DILocation(line: 0, scope: !3949)
!3965 = !DILocation(line: 126, column: 18, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3949, file: !871, line: 126, column: 11)
!3967 = !DILocation(line: 126, column: 11, scope: !3949)
!3968 = !DILocation(line: 128, column: 39, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3966, file: !871, line: 127, column: 9)
!3970 = !DILocalVariable(name: "__dest", arg: 1, scope: !3971, file: !2312, line: 26, type: !3974)
!3971 = distinct !DISubprogram(name: "memcpy", scope: !2312, file: !2312, line: 26, type: !3972, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !3975)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!160, !3974, !1164, !162}
!3974 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !160)
!3975 = !{!3970, !3976, !3977}
!3976 = !DILocalVariable(name: "__src", arg: 2, scope: !3971, file: !2312, line: 26, type: !1164)
!3977 = !DILocalVariable(name: "__len", arg: 3, scope: !3971, file: !2312, line: 26, type: !162)
!3978 = !DILocation(line: 0, scope: !3971, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 128, column: 11, scope: !3969)
!3980 = !DILocation(line: 29, column: 10, scope: !3971, inlinedAt: !3979)
!3981 = !DILocation(line: 129, column: 11, scope: !3969)
!3982 = !DILocation(line: 133, column: 23, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3984, file: !871, line: 133, column: 15)
!3984 = distinct !DILexicalBlock(scope: !3966, file: !871, line: 132, column: 9)
!3985 = !DILocation(line: 133, column: 15, scope: !3984)
!3986 = !DILocation(line: 138, column: 44, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3983, file: !871, line: 134, column: 13)
!3988 = !DILocation(line: 0, scope: !3971, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 138, column: 15, scope: !3987)
!3990 = !DILocation(line: 29, column: 10, scope: !3971, inlinedAt: !3989)
!3991 = !DILocation(line: 139, column: 15, scope: !3987)
!3992 = !DILocation(line: 139, column: 32, scope: !3987)
!3993 = !DILocation(line: 140, column: 13, scope: !3987)
!3994 = !DILocation(line: 0, scope: !3950)
!3995 = !DILocation(line: 145, column: 1, scope: !3942)
!3996 = distinct !DISubprogram(name: "dup_safer", scope: !873, file: !873, line: 31, type: !1662, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !3997)
!3997 = !{!3998}
!3998 = !DILocalVariable(name: "fd", arg: 1, scope: !3996, file: !873, line: 31, type: !116)
!3999 = !DILocation(line: 0, scope: !3996)
!4000 = !DILocation(line: 33, column: 10, scope: !3996)
!4001 = !DILocation(line: 33, column: 3, scope: !3996)
!4002 = distinct !DISubprogram(name: "version_etc_arn", scope: !702, file: !702, line: 61, type: !4003, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4040)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{null, !4005, !165, !165, !165, !4039, !162}
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4007)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4008)
!4008 = !{!4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4007, file: !236, line: 51, baseType: !116, size: 32)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4007, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4007, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4007, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4007, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4007, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4007, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4007, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4007, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4007, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4007, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4007, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4007, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4007, file: !236, line: 70, baseType: !4023, size: 64, offset: 832)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4007, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4007, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4007, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4007, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4007, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4007, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4007, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4007, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4007, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4007, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4007, file: !236, line: 93, baseType: !4023, size: 64, offset: 1344)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4007, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4007, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4007, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4007, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!4040 = !{!4041, !4042, !4043, !4044, !4045, !4046}
!4041 = !DILocalVariable(name: "stream", arg: 1, scope: !4002, file: !702, line: 61, type: !4005)
!4042 = !DILocalVariable(name: "command_name", arg: 2, scope: !4002, file: !702, line: 62, type: !165)
!4043 = !DILocalVariable(name: "package", arg: 3, scope: !4002, file: !702, line: 62, type: !165)
!4044 = !DILocalVariable(name: "version", arg: 4, scope: !4002, file: !702, line: 63, type: !165)
!4045 = !DILocalVariable(name: "authors", arg: 5, scope: !4002, file: !702, line: 64, type: !4039)
!4046 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4002, file: !702, line: 64, type: !162)
!4047 = !DILocation(line: 0, scope: !4002)
!4048 = !DILocation(line: 66, column: 7, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4002, file: !702, line: 66, column: 7)
!4050 = !DILocation(line: 66, column: 7, scope: !4002)
!4051 = !DILocation(line: 67, column: 5, scope: !4049)
!4052 = !DILocation(line: 69, column: 5, scope: !4049)
!4053 = !DILocation(line: 83, column: 3, scope: !4002)
!4054 = !DILocation(line: 85, column: 3, scope: !4002)
!4055 = !DILocation(line: 88, column: 3, scope: !4002)
!4056 = !DILocation(line: 95, column: 3, scope: !4002)
!4057 = !DILocation(line: 97, column: 3, scope: !4002)
!4058 = !DILocation(line: 105, column: 7, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4002, file: !702, line: 98, column: 5)
!4060 = !DILocation(line: 106, column: 7, scope: !4059)
!4061 = !DILocation(line: 109, column: 7, scope: !4059)
!4062 = !DILocation(line: 110, column: 7, scope: !4059)
!4063 = !DILocation(line: 113, column: 7, scope: !4059)
!4064 = !DILocation(line: 115, column: 7, scope: !4059)
!4065 = !DILocation(line: 120, column: 7, scope: !4059)
!4066 = !DILocation(line: 122, column: 7, scope: !4059)
!4067 = !DILocation(line: 127, column: 7, scope: !4059)
!4068 = !DILocation(line: 129, column: 7, scope: !4059)
!4069 = !DILocation(line: 134, column: 7, scope: !4059)
!4070 = !DILocation(line: 137, column: 7, scope: !4059)
!4071 = !DILocation(line: 142, column: 7, scope: !4059)
!4072 = !DILocation(line: 145, column: 7, scope: !4059)
!4073 = !DILocation(line: 150, column: 7, scope: !4059)
!4074 = !DILocation(line: 154, column: 7, scope: !4059)
!4075 = !DILocation(line: 159, column: 7, scope: !4059)
!4076 = !DILocation(line: 163, column: 7, scope: !4059)
!4077 = !DILocation(line: 170, column: 7, scope: !4059)
!4078 = !DILocation(line: 174, column: 7, scope: !4059)
!4079 = !DILocation(line: 176, column: 1, scope: !4002)
!4080 = distinct !DISubprogram(name: "version_etc_ar", scope: !702, file: !702, line: 183, type: !4081, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4083)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{null, !4005, !165, !165, !165, !4039}
!4083 = !{!4084, !4085, !4086, !4087, !4088, !4089}
!4084 = !DILocalVariable(name: "stream", arg: 1, scope: !4080, file: !702, line: 183, type: !4005)
!4085 = !DILocalVariable(name: "command_name", arg: 2, scope: !4080, file: !702, line: 184, type: !165)
!4086 = !DILocalVariable(name: "package", arg: 3, scope: !4080, file: !702, line: 184, type: !165)
!4087 = !DILocalVariable(name: "version", arg: 4, scope: !4080, file: !702, line: 185, type: !165)
!4088 = !DILocalVariable(name: "authors", arg: 5, scope: !4080, file: !702, line: 185, type: !4039)
!4089 = !DILocalVariable(name: "n_authors", scope: !4080, file: !702, line: 187, type: !162)
!4090 = !DILocation(line: 0, scope: !4080)
!4091 = !DILocation(line: 189, column: 8, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4080, file: !702, line: 189, column: 3)
!4093 = !DILocation(line: 189, scope: !4092)
!4094 = !DILocation(line: 189, column: 23, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4092, file: !702, line: 189, column: 3)
!4096 = !DILocation(line: 189, column: 3, scope: !4092)
!4097 = !DILocation(line: 189, column: 52, scope: !4095)
!4098 = distinct !{!4098, !4096, !4099, !1067}
!4099 = !DILocation(line: 190, column: 5, scope: !4092)
!4100 = !DILocation(line: 191, column: 3, scope: !4080)
!4101 = !DILocation(line: 192, column: 1, scope: !4080)
!4102 = distinct !DISubprogram(name: "version_etc_va", scope: !702, file: !702, line: 199, type: !4103, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4115)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{null, !4005, !165, !165, !165, !4105}
!4105 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !508, line: 52, baseType: !4106)
!4106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !510, line: 12, baseType: !4107)
!4107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !702, baseType: !4108)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4109)
!4109 = !{!4110, !4111, !4112, !4113, !4114}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4108, file: !702, line: 192, baseType: !160, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4108, file: !702, line: 192, baseType: !160, size: 64, offset: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4108, file: !702, line: 192, baseType: !160, size: 64, offset: 128)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4108, file: !702, line: 192, baseType: !116, size: 32, offset: 192)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4108, file: !702, line: 192, baseType: !116, size: 32, offset: 224)
!4115 = !{!4116, !4117, !4118, !4119, !4120, !4121, !4122}
!4116 = !DILocalVariable(name: "stream", arg: 1, scope: !4102, file: !702, line: 199, type: !4005)
!4117 = !DILocalVariable(name: "command_name", arg: 2, scope: !4102, file: !702, line: 200, type: !165)
!4118 = !DILocalVariable(name: "package", arg: 3, scope: !4102, file: !702, line: 200, type: !165)
!4119 = !DILocalVariable(name: "version", arg: 4, scope: !4102, file: !702, line: 201, type: !165)
!4120 = !DILocalVariable(name: "authors", arg: 5, scope: !4102, file: !702, line: 201, type: !4105)
!4121 = !DILocalVariable(name: "n_authors", scope: !4102, file: !702, line: 203, type: !162)
!4122 = !DILocalVariable(name: "authtab", scope: !4102, file: !702, line: 204, type: !4123)
!4123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 640, elements: !91)
!4124 = distinct !DIAssignID()
!4125 = !DILocation(line: 0, scope: !4102)
!4126 = !DILocation(line: 204, column: 3, scope: !4102)
!4127 = !DILocation(line: 208, column: 35, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !702, line: 206, column: 3)
!4129 = distinct !DILexicalBlock(scope: !4102, file: !702, line: 206, column: 3)
!4130 = !DILocation(line: 208, column: 33, scope: !4128)
!4131 = !DILocation(line: 208, column: 67, scope: !4128)
!4132 = !DILocation(line: 206, column: 3, scope: !4129)
!4133 = !DILocation(line: 208, column: 14, scope: !4128)
!4134 = !DILocation(line: 0, scope: !4129)
!4135 = !DILocation(line: 211, column: 3, scope: !4102)
!4136 = !DILocation(line: 213, column: 1, scope: !4102)
!4137 = distinct !DISubprogram(name: "version_etc", scope: !702, file: !702, line: 230, type: !4138, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4140)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{null, !4005, !165, !165, !165, null}
!4140 = !{!4141, !4142, !4143, !4144, !4145}
!4141 = !DILocalVariable(name: "stream", arg: 1, scope: !4137, file: !702, line: 230, type: !4005)
!4142 = !DILocalVariable(name: "command_name", arg: 2, scope: !4137, file: !702, line: 231, type: !165)
!4143 = !DILocalVariable(name: "package", arg: 3, scope: !4137, file: !702, line: 231, type: !165)
!4144 = !DILocalVariable(name: "version", arg: 4, scope: !4137, file: !702, line: 232, type: !165)
!4145 = !DILocalVariable(name: "authors", scope: !4137, file: !702, line: 234, type: !4105)
!4146 = distinct !DIAssignID()
!4147 = !DILocation(line: 0, scope: !4137)
!4148 = !DILocation(line: 234, column: 3, scope: !4137)
!4149 = !DILocation(line: 235, column: 3, scope: !4137)
!4150 = !DILocation(line: 236, column: 3, scope: !4137)
!4151 = !DILocation(line: 237, column: 3, scope: !4137)
!4152 = !DILocation(line: 238, column: 1, scope: !4137)
!4153 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !702, file: !702, line: 241, type: !548, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874)
!4154 = !DILocation(line: 243, column: 3, scope: !4153)
!4155 = !DILocation(line: 248, column: 3, scope: !4153)
!4156 = !DILocation(line: 254, column: 3, scope: !4153)
!4157 = !DILocation(line: 259, column: 3, scope: !4153)
!4158 = !DILocation(line: 261, column: 1, scope: !4153)
!4159 = distinct !DISubprogram(name: "xnrealloc", scope: !4160, file: !4160, line: 147, type: !4161, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4163)
!4160 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!160, !160, !162, !162}
!4163 = !{!4164, !4165, !4166}
!4164 = !DILocalVariable(name: "p", arg: 1, scope: !4159, file: !4160, line: 147, type: !160)
!4165 = !DILocalVariable(name: "n", arg: 2, scope: !4159, file: !4160, line: 147, type: !162)
!4166 = !DILocalVariable(name: "s", arg: 3, scope: !4159, file: !4160, line: 147, type: !162)
!4167 = !DILocation(line: 0, scope: !4159)
!4168 = !DILocalVariable(name: "p", arg: 1, scope: !4169, file: !881, line: 83, type: !160)
!4169 = distinct !DISubprogram(name: "xreallocarray", scope: !881, file: !881, line: 83, type: !4161, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4170)
!4170 = !{!4168, !4171, !4172}
!4171 = !DILocalVariable(name: "n", arg: 2, scope: !4169, file: !881, line: 83, type: !162)
!4172 = !DILocalVariable(name: "s", arg: 3, scope: !4169, file: !881, line: 83, type: !162)
!4173 = !DILocation(line: 0, scope: !4169, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 149, column: 10, scope: !4159)
!4175 = !DILocation(line: 85, column: 25, scope: !4169, inlinedAt: !4174)
!4176 = !DILocalVariable(name: "p", arg: 1, scope: !4177, file: !881, line: 37, type: !160)
!4177 = distinct !DISubprogram(name: "check_nonnull", scope: !881, file: !881, line: 37, type: !4178, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4180)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!160, !160}
!4180 = !{!4176}
!4181 = !DILocation(line: 0, scope: !4177, inlinedAt: !4182)
!4182 = distinct !DILocation(line: 85, column: 10, scope: !4169, inlinedAt: !4174)
!4183 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4182)
!4184 = distinct !DILexicalBlock(scope: !4177, file: !881, line: 39, column: 7)
!4185 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4182)
!4186 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4182)
!4187 = !DILocation(line: 149, column: 3, scope: !4159)
!4188 = !DILocation(line: 0, scope: !4169)
!4189 = !DILocation(line: 85, column: 25, scope: !4169)
!4190 = !DILocation(line: 0, scope: !4177, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 85, column: 10, scope: !4169)
!4192 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4191)
!4193 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4191)
!4194 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4191)
!4195 = !DILocation(line: 85, column: 3, scope: !4169)
!4196 = distinct !DISubprogram(name: "xmalloc", scope: !881, file: !881, line: 47, type: !4197, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4199)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!160, !162}
!4199 = !{!4200}
!4200 = !DILocalVariable(name: "s", arg: 1, scope: !4196, file: !881, line: 47, type: !162)
!4201 = !DILocation(line: 0, scope: !4196)
!4202 = !DILocation(line: 49, column: 25, scope: !4196)
!4203 = !DILocation(line: 0, scope: !4177, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 49, column: 10, scope: !4196)
!4205 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4204)
!4206 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4204)
!4207 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4204)
!4208 = !DILocation(line: 49, column: 3, scope: !4196)
!4209 = !DISubprogram(name: "malloc", scope: !1141, file: !1141, line: 540, type: !4197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4210 = distinct !DISubprogram(name: "ximalloc", scope: !881, file: !881, line: 53, type: !4211, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4213)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!160, !900}
!4213 = !{!4214}
!4214 = !DILocalVariable(name: "s", arg: 1, scope: !4210, file: !881, line: 53, type: !900)
!4215 = !DILocation(line: 0, scope: !4210)
!4216 = !DILocalVariable(name: "s", arg: 1, scope: !4217, file: !4218, line: 55, type: !900)
!4217 = distinct !DISubprogram(name: "imalloc", scope: !4218, file: !4218, line: 55, type: !4211, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4219)
!4218 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4219 = !{!4216}
!4220 = !DILocation(line: 0, scope: !4217, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 55, column: 25, scope: !4210)
!4222 = !DILocation(line: 57, column: 26, scope: !4217, inlinedAt: !4221)
!4223 = !DILocation(line: 0, scope: !4177, inlinedAt: !4224)
!4224 = distinct !DILocation(line: 55, column: 10, scope: !4210)
!4225 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4224)
!4226 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4224)
!4227 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4224)
!4228 = !DILocation(line: 55, column: 3, scope: !4210)
!4229 = distinct !DISubprogram(name: "xcharalloc", scope: !881, file: !881, line: 59, type: !4230, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4232)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!159, !162}
!4232 = !{!4233}
!4233 = !DILocalVariable(name: "n", arg: 1, scope: !4229, file: !881, line: 59, type: !162)
!4234 = !DILocation(line: 0, scope: !4229)
!4235 = !DILocation(line: 0, scope: !4196, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 61, column: 10, scope: !4229)
!4237 = !DILocation(line: 49, column: 25, scope: !4196, inlinedAt: !4236)
!4238 = !DILocation(line: 0, scope: !4177, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 49, column: 10, scope: !4196, inlinedAt: !4236)
!4240 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4239)
!4241 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4239)
!4242 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4239)
!4243 = !DILocation(line: 61, column: 3, scope: !4229)
!4244 = distinct !DISubprogram(name: "xrealloc", scope: !881, file: !881, line: 68, type: !4245, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4247)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!160, !160, !162}
!4247 = !{!4248, !4249}
!4248 = !DILocalVariable(name: "p", arg: 1, scope: !4244, file: !881, line: 68, type: !160)
!4249 = !DILocalVariable(name: "s", arg: 2, scope: !4244, file: !881, line: 68, type: !162)
!4250 = !DILocation(line: 0, scope: !4244)
!4251 = !DILocalVariable(name: "ptr", arg: 1, scope: !4252, file: !4253, line: 2057, type: !160)
!4252 = distinct !DISubprogram(name: "rpl_realloc", scope: !4253, file: !4253, line: 2057, type: !4245, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4254)
!4253 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4254 = !{!4251, !4255}
!4255 = !DILocalVariable(name: "size", arg: 2, scope: !4252, file: !4253, line: 2057, type: !162)
!4256 = !DILocation(line: 0, scope: !4252, inlinedAt: !4257)
!4257 = distinct !DILocation(line: 70, column: 25, scope: !4244)
!4258 = !DILocation(line: 2059, column: 24, scope: !4252, inlinedAt: !4257)
!4259 = !DILocation(line: 2059, column: 10, scope: !4252, inlinedAt: !4257)
!4260 = !DILocation(line: 0, scope: !4177, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 70, column: 10, scope: !4244)
!4262 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4261)
!4263 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4261)
!4264 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4261)
!4265 = !DILocation(line: 70, column: 3, scope: !4244)
!4266 = !DISubprogram(name: "realloc", scope: !1141, file: !1141, line: 551, type: !4245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4267 = distinct !DISubprogram(name: "xirealloc", scope: !881, file: !881, line: 74, type: !4268, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4270)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!160, !160, !900}
!4270 = !{!4271, !4272}
!4271 = !DILocalVariable(name: "p", arg: 1, scope: !4267, file: !881, line: 74, type: !160)
!4272 = !DILocalVariable(name: "s", arg: 2, scope: !4267, file: !881, line: 74, type: !900)
!4273 = !DILocation(line: 0, scope: !4267)
!4274 = !DILocalVariable(name: "p", arg: 1, scope: !4275, file: !4218, line: 66, type: !160)
!4275 = distinct !DISubprogram(name: "irealloc", scope: !4218, file: !4218, line: 66, type: !4268, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4276)
!4276 = !{!4274, !4277}
!4277 = !DILocalVariable(name: "s", arg: 2, scope: !4275, file: !4218, line: 66, type: !900)
!4278 = !DILocation(line: 0, scope: !4275, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 76, column: 25, scope: !4267)
!4280 = !DILocation(line: 0, scope: !4252, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 68, column: 26, scope: !4275, inlinedAt: !4279)
!4282 = !DILocation(line: 2059, column: 24, scope: !4252, inlinedAt: !4281)
!4283 = !DILocation(line: 2059, column: 10, scope: !4252, inlinedAt: !4281)
!4284 = !DILocation(line: 0, scope: !4177, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 76, column: 10, scope: !4267)
!4286 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4285)
!4287 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4285)
!4288 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4285)
!4289 = !DILocation(line: 76, column: 3, scope: !4267)
!4290 = distinct !DISubprogram(name: "xireallocarray", scope: !881, file: !881, line: 89, type: !4291, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4293)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!160, !160, !900, !900}
!4293 = !{!4294, !4295, !4296}
!4294 = !DILocalVariable(name: "p", arg: 1, scope: !4290, file: !881, line: 89, type: !160)
!4295 = !DILocalVariable(name: "n", arg: 2, scope: !4290, file: !881, line: 89, type: !900)
!4296 = !DILocalVariable(name: "s", arg: 3, scope: !4290, file: !881, line: 89, type: !900)
!4297 = !DILocation(line: 0, scope: !4290)
!4298 = !DILocalVariable(name: "p", arg: 1, scope: !4299, file: !4218, line: 98, type: !160)
!4299 = distinct !DISubprogram(name: "ireallocarray", scope: !4218, file: !4218, line: 98, type: !4291, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4300)
!4300 = !{!4298, !4301, !4302}
!4301 = !DILocalVariable(name: "n", arg: 2, scope: !4299, file: !4218, line: 98, type: !900)
!4302 = !DILocalVariable(name: "s", arg: 3, scope: !4299, file: !4218, line: 98, type: !900)
!4303 = !DILocation(line: 0, scope: !4299, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 91, column: 25, scope: !4290)
!4305 = !DILocation(line: 101, column: 13, scope: !4299, inlinedAt: !4304)
!4306 = !DILocation(line: 0, scope: !4177, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 91, column: 10, scope: !4290)
!4308 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4307)
!4309 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4307)
!4310 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4307)
!4311 = !DILocation(line: 91, column: 3, scope: !4290)
!4312 = distinct !DISubprogram(name: "xnmalloc", scope: !881, file: !881, line: 98, type: !4313, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4315)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!160, !162, !162}
!4315 = !{!4316, !4317}
!4316 = !DILocalVariable(name: "n", arg: 1, scope: !4312, file: !881, line: 98, type: !162)
!4317 = !DILocalVariable(name: "s", arg: 2, scope: !4312, file: !881, line: 98, type: !162)
!4318 = !DILocation(line: 0, scope: !4312)
!4319 = !DILocation(line: 0, scope: !4169, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 100, column: 10, scope: !4312)
!4321 = !DILocation(line: 85, column: 25, scope: !4169, inlinedAt: !4320)
!4322 = !DILocation(line: 0, scope: !4177, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 85, column: 10, scope: !4169, inlinedAt: !4320)
!4324 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4323)
!4325 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4323)
!4326 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4323)
!4327 = !DILocation(line: 100, column: 3, scope: !4312)
!4328 = distinct !DISubprogram(name: "xinmalloc", scope: !881, file: !881, line: 104, type: !4329, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4331)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!160, !900, !900}
!4331 = !{!4332, !4333}
!4332 = !DILocalVariable(name: "n", arg: 1, scope: !4328, file: !881, line: 104, type: !900)
!4333 = !DILocalVariable(name: "s", arg: 2, scope: !4328, file: !881, line: 104, type: !900)
!4334 = !DILocation(line: 0, scope: !4328)
!4335 = !DILocation(line: 0, scope: !4290, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 106, column: 10, scope: !4328)
!4337 = !DILocation(line: 0, scope: !4299, inlinedAt: !4338)
!4338 = distinct !DILocation(line: 91, column: 25, scope: !4290, inlinedAt: !4336)
!4339 = !DILocation(line: 101, column: 13, scope: !4299, inlinedAt: !4338)
!4340 = !DILocation(line: 0, scope: !4177, inlinedAt: !4341)
!4341 = distinct !DILocation(line: 91, column: 10, scope: !4290, inlinedAt: !4336)
!4342 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4341)
!4343 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4341)
!4344 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4341)
!4345 = !DILocation(line: 106, column: 3, scope: !4328)
!4346 = distinct !DISubprogram(name: "x2realloc", scope: !881, file: !881, line: 116, type: !4347, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4349)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!160, !160, !887}
!4349 = !{!4350, !4351}
!4350 = !DILocalVariable(name: "p", arg: 1, scope: !4346, file: !881, line: 116, type: !160)
!4351 = !DILocalVariable(name: "ps", arg: 2, scope: !4346, file: !881, line: 116, type: !887)
!4352 = !DILocation(line: 0, scope: !4346)
!4353 = !DILocation(line: 0, scope: !884, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 118, column: 10, scope: !4346)
!4355 = !DILocation(line: 178, column: 14, scope: !884, inlinedAt: !4354)
!4356 = !DILocation(line: 180, column: 9, scope: !4357, inlinedAt: !4354)
!4357 = distinct !DILexicalBlock(scope: !884, file: !881, line: 180, column: 7)
!4358 = !DILocation(line: 180, column: 7, scope: !884, inlinedAt: !4354)
!4359 = !DILocation(line: 182, column: 13, scope: !4360, inlinedAt: !4354)
!4360 = distinct !DILexicalBlock(scope: !4361, file: !881, line: 182, column: 11)
!4361 = distinct !DILexicalBlock(scope: !4357, file: !881, line: 181, column: 5)
!4362 = !DILocation(line: 182, column: 11, scope: !4361, inlinedAt: !4354)
!4363 = !DILocation(line: 197, column: 11, scope: !4364, inlinedAt: !4354)
!4364 = distinct !DILexicalBlock(scope: !4365, file: !881, line: 197, column: 11)
!4365 = distinct !DILexicalBlock(scope: !4357, file: !881, line: 195, column: 5)
!4366 = !DILocation(line: 197, column: 11, scope: !4365, inlinedAt: !4354)
!4367 = !DILocation(line: 198, column: 9, scope: !4364, inlinedAt: !4354)
!4368 = !DILocation(line: 0, scope: !4169, inlinedAt: !4369)
!4369 = distinct !DILocation(line: 201, column: 7, scope: !884, inlinedAt: !4354)
!4370 = !DILocation(line: 85, column: 25, scope: !4169, inlinedAt: !4369)
!4371 = !DILocation(line: 0, scope: !4177, inlinedAt: !4372)
!4372 = distinct !DILocation(line: 85, column: 10, scope: !4169, inlinedAt: !4369)
!4373 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4372)
!4374 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4372)
!4375 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4372)
!4376 = !DILocation(line: 202, column: 7, scope: !884, inlinedAt: !4354)
!4377 = !DILocation(line: 118, column: 3, scope: !4346)
!4378 = !DILocation(line: 0, scope: !884)
!4379 = !DILocation(line: 178, column: 14, scope: !884)
!4380 = !DILocation(line: 180, column: 9, scope: !4357)
!4381 = !DILocation(line: 180, column: 7, scope: !884)
!4382 = !DILocation(line: 182, column: 13, scope: !4360)
!4383 = !DILocation(line: 182, column: 11, scope: !4361)
!4384 = !DILocation(line: 190, column: 30, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4360, file: !881, line: 183, column: 9)
!4386 = !DILocation(line: 191, column: 16, scope: !4385)
!4387 = !DILocation(line: 191, column: 13, scope: !4385)
!4388 = !DILocation(line: 192, column: 9, scope: !4385)
!4389 = !DILocation(line: 197, column: 11, scope: !4364)
!4390 = !DILocation(line: 197, column: 11, scope: !4365)
!4391 = !DILocation(line: 198, column: 9, scope: !4364)
!4392 = !DILocation(line: 0, scope: !4169, inlinedAt: !4393)
!4393 = distinct !DILocation(line: 201, column: 7, scope: !884)
!4394 = !DILocation(line: 85, column: 25, scope: !4169, inlinedAt: !4393)
!4395 = !DILocation(line: 0, scope: !4177, inlinedAt: !4396)
!4396 = distinct !DILocation(line: 85, column: 10, scope: !4169, inlinedAt: !4393)
!4397 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4396)
!4398 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4396)
!4399 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4396)
!4400 = !DILocation(line: 202, column: 7, scope: !884)
!4401 = !DILocation(line: 203, column: 3, scope: !884)
!4402 = !DILocation(line: 0, scope: !896)
!4403 = !DILocation(line: 230, column: 14, scope: !896)
!4404 = !DILocation(line: 238, column: 7, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !896, file: !881, line: 238, column: 7)
!4406 = !DILocation(line: 238, column: 7, scope: !896)
!4407 = !DILocation(line: 240, column: 9, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !896, file: !881, line: 240, column: 7)
!4409 = !DILocation(line: 240, column: 18, scope: !4408)
!4410 = !DILocation(line: 253, column: 8, scope: !896)
!4411 = !DILocation(line: 256, column: 7, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !896, file: !881, line: 256, column: 7)
!4413 = !DILocation(line: 256, column: 7, scope: !896)
!4414 = !DILocation(line: 258, column: 27, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4412, file: !881, line: 257, column: 5)
!4416 = !DILocation(line: 259, column: 32, scope: !4415)
!4417 = !DILocation(line: 260, column: 5, scope: !4415)
!4418 = !DILocation(line: 262, column: 9, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !896, file: !881, line: 262, column: 7)
!4420 = !DILocation(line: 262, column: 7, scope: !896)
!4421 = !DILocation(line: 263, column: 9, scope: !4419)
!4422 = !DILocation(line: 263, column: 5, scope: !4419)
!4423 = !DILocation(line: 264, column: 9, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !896, file: !881, line: 264, column: 7)
!4425 = !DILocation(line: 264, column: 14, scope: !4424)
!4426 = !DILocation(line: 265, column: 7, scope: !4424)
!4427 = !DILocation(line: 265, column: 11, scope: !4424)
!4428 = !DILocation(line: 266, column: 11, scope: !4424)
!4429 = !DILocation(line: 267, column: 14, scope: !4424)
!4430 = !DILocation(line: 264, column: 7, scope: !896)
!4431 = !DILocation(line: 268, column: 5, scope: !4424)
!4432 = !DILocation(line: 0, scope: !4244, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 269, column: 8, scope: !896)
!4434 = !DILocation(line: 0, scope: !4252, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 70, column: 25, scope: !4244, inlinedAt: !4433)
!4436 = !DILocation(line: 2059, column: 24, scope: !4252, inlinedAt: !4435)
!4437 = !DILocation(line: 2059, column: 10, scope: !4252, inlinedAt: !4435)
!4438 = !DILocation(line: 0, scope: !4177, inlinedAt: !4439)
!4439 = distinct !DILocation(line: 70, column: 10, scope: !4244, inlinedAt: !4433)
!4440 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4439)
!4441 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4439)
!4442 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4439)
!4443 = !DILocation(line: 270, column: 7, scope: !896)
!4444 = !DILocation(line: 271, column: 3, scope: !896)
!4445 = distinct !DISubprogram(name: "xzalloc", scope: !881, file: !881, line: 279, type: !4197, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4446)
!4446 = !{!4447}
!4447 = !DILocalVariable(name: "s", arg: 1, scope: !4445, file: !881, line: 279, type: !162)
!4448 = !DILocation(line: 0, scope: !4445)
!4449 = !DILocalVariable(name: "n", arg: 1, scope: !4450, file: !881, line: 294, type: !162)
!4450 = distinct !DISubprogram(name: "xcalloc", scope: !881, file: !881, line: 294, type: !4313, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4451)
!4451 = !{!4449, !4452}
!4452 = !DILocalVariable(name: "s", arg: 2, scope: !4450, file: !881, line: 294, type: !162)
!4453 = !DILocation(line: 0, scope: !4450, inlinedAt: !4454)
!4454 = distinct !DILocation(line: 281, column: 10, scope: !4445)
!4455 = !DILocation(line: 296, column: 25, scope: !4450, inlinedAt: !4454)
!4456 = !DILocation(line: 0, scope: !4177, inlinedAt: !4457)
!4457 = distinct !DILocation(line: 296, column: 10, scope: !4450, inlinedAt: !4454)
!4458 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4457)
!4459 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4457)
!4460 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4457)
!4461 = !DILocation(line: 281, column: 3, scope: !4445)
!4462 = !DISubprogram(name: "calloc", scope: !1141, file: !1141, line: 543, type: !4313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4463 = !DILocation(line: 0, scope: !4450)
!4464 = !DILocation(line: 296, column: 25, scope: !4450)
!4465 = !DILocation(line: 0, scope: !4177, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 296, column: 10, scope: !4450)
!4467 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4466)
!4468 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4466)
!4469 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4466)
!4470 = !DILocation(line: 296, column: 3, scope: !4450)
!4471 = distinct !DISubprogram(name: "xizalloc", scope: !881, file: !881, line: 285, type: !4211, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4472)
!4472 = !{!4473}
!4473 = !DILocalVariable(name: "s", arg: 1, scope: !4471, file: !881, line: 285, type: !900)
!4474 = !DILocation(line: 0, scope: !4471)
!4475 = !DILocalVariable(name: "n", arg: 1, scope: !4476, file: !881, line: 300, type: !900)
!4476 = distinct !DISubprogram(name: "xicalloc", scope: !881, file: !881, line: 300, type: !4329, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4477)
!4477 = !{!4475, !4478}
!4478 = !DILocalVariable(name: "s", arg: 2, scope: !4476, file: !881, line: 300, type: !900)
!4479 = !DILocation(line: 0, scope: !4476, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 287, column: 10, scope: !4471)
!4481 = !DILocalVariable(name: "n", arg: 1, scope: !4482, file: !4218, line: 77, type: !900)
!4482 = distinct !DISubprogram(name: "icalloc", scope: !4218, file: !4218, line: 77, type: !4329, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4483)
!4483 = !{!4481, !4484}
!4484 = !DILocalVariable(name: "s", arg: 2, scope: !4482, file: !4218, line: 77, type: !900)
!4485 = !DILocation(line: 0, scope: !4482, inlinedAt: !4486)
!4486 = distinct !DILocation(line: 302, column: 25, scope: !4476, inlinedAt: !4480)
!4487 = !DILocation(line: 91, column: 10, scope: !4482, inlinedAt: !4486)
!4488 = !DILocation(line: 0, scope: !4177, inlinedAt: !4489)
!4489 = distinct !DILocation(line: 302, column: 10, scope: !4476, inlinedAt: !4480)
!4490 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4489)
!4491 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4489)
!4492 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4489)
!4493 = !DILocation(line: 287, column: 3, scope: !4471)
!4494 = !DILocation(line: 0, scope: !4476)
!4495 = !DILocation(line: 0, scope: !4482, inlinedAt: !4496)
!4496 = distinct !DILocation(line: 302, column: 25, scope: !4476)
!4497 = !DILocation(line: 91, column: 10, scope: !4482, inlinedAt: !4496)
!4498 = !DILocation(line: 0, scope: !4177, inlinedAt: !4499)
!4499 = distinct !DILocation(line: 302, column: 10, scope: !4476)
!4500 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4499)
!4501 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4499)
!4502 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4499)
!4503 = !DILocation(line: 302, column: 3, scope: !4476)
!4504 = distinct !DISubprogram(name: "xmemdup", scope: !881, file: !881, line: 310, type: !4505, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4507)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!160, !1165, !162}
!4507 = !{!4508, !4509}
!4508 = !DILocalVariable(name: "p", arg: 1, scope: !4504, file: !881, line: 310, type: !1165)
!4509 = !DILocalVariable(name: "s", arg: 2, scope: !4504, file: !881, line: 310, type: !162)
!4510 = !DILocation(line: 0, scope: !4504)
!4511 = !DILocation(line: 0, scope: !4196, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 312, column: 18, scope: !4504)
!4513 = !DILocation(line: 49, column: 25, scope: !4196, inlinedAt: !4512)
!4514 = !DILocation(line: 0, scope: !4177, inlinedAt: !4515)
!4515 = distinct !DILocation(line: 49, column: 10, scope: !4196, inlinedAt: !4512)
!4516 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4515)
!4517 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4515)
!4518 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4515)
!4519 = !DILocalVariable(name: "__dest", arg: 1, scope: !4520, file: !2312, line: 26, type: !3974)
!4520 = distinct !DISubprogram(name: "memcpy", scope: !2312, file: !2312, line: 26, type: !3972, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4521)
!4521 = !{!4519, !4522, !4523}
!4522 = !DILocalVariable(name: "__src", arg: 2, scope: !4520, file: !2312, line: 26, type: !1164)
!4523 = !DILocalVariable(name: "__len", arg: 3, scope: !4520, file: !2312, line: 26, type: !162)
!4524 = !DILocation(line: 0, scope: !4520, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 312, column: 10, scope: !4504)
!4526 = !DILocation(line: 29, column: 10, scope: !4520, inlinedAt: !4525)
!4527 = !DILocation(line: 312, column: 3, scope: !4504)
!4528 = distinct !DISubprogram(name: "ximemdup", scope: !881, file: !881, line: 316, type: !4529, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4531)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!160, !1165, !900}
!4531 = !{!4532, !4533}
!4532 = !DILocalVariable(name: "p", arg: 1, scope: !4528, file: !881, line: 316, type: !1165)
!4533 = !DILocalVariable(name: "s", arg: 2, scope: !4528, file: !881, line: 316, type: !900)
!4534 = !DILocation(line: 0, scope: !4528)
!4535 = !DILocation(line: 0, scope: !4210, inlinedAt: !4536)
!4536 = distinct !DILocation(line: 318, column: 18, scope: !4528)
!4537 = !DILocation(line: 0, scope: !4217, inlinedAt: !4538)
!4538 = distinct !DILocation(line: 55, column: 25, scope: !4210, inlinedAt: !4536)
!4539 = !DILocation(line: 57, column: 26, scope: !4217, inlinedAt: !4538)
!4540 = !DILocation(line: 0, scope: !4177, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 55, column: 10, scope: !4210, inlinedAt: !4536)
!4542 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4541)
!4543 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4541)
!4544 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4541)
!4545 = !DILocation(line: 0, scope: !4520, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 318, column: 10, scope: !4528)
!4547 = !DILocation(line: 29, column: 10, scope: !4520, inlinedAt: !4546)
!4548 = !DILocation(line: 318, column: 3, scope: !4528)
!4549 = distinct !DISubprogram(name: "ximemdup0", scope: !881, file: !881, line: 325, type: !4550, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4552)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!159, !1165, !900}
!4552 = !{!4553, !4554, !4555}
!4553 = !DILocalVariable(name: "p", arg: 1, scope: !4549, file: !881, line: 325, type: !1165)
!4554 = !DILocalVariable(name: "s", arg: 2, scope: !4549, file: !881, line: 325, type: !900)
!4555 = !DILocalVariable(name: "result", scope: !4549, file: !881, line: 327, type: !159)
!4556 = !DILocation(line: 0, scope: !4549)
!4557 = !DILocation(line: 327, column: 30, scope: !4549)
!4558 = !DILocation(line: 0, scope: !4210, inlinedAt: !4559)
!4559 = distinct !DILocation(line: 327, column: 18, scope: !4549)
!4560 = !DILocation(line: 0, scope: !4217, inlinedAt: !4561)
!4561 = distinct !DILocation(line: 55, column: 25, scope: !4210, inlinedAt: !4559)
!4562 = !DILocation(line: 57, column: 26, scope: !4217, inlinedAt: !4561)
!4563 = !DILocation(line: 0, scope: !4177, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 55, column: 10, scope: !4210, inlinedAt: !4559)
!4565 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4564)
!4566 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4564)
!4567 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4564)
!4568 = !DILocation(line: 328, column: 3, scope: !4549)
!4569 = !DILocation(line: 328, column: 13, scope: !4549)
!4570 = !DILocation(line: 0, scope: !4520, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 329, column: 10, scope: !4549)
!4572 = !DILocation(line: 29, column: 10, scope: !4520, inlinedAt: !4571)
!4573 = !DILocation(line: 329, column: 3, scope: !4549)
!4574 = distinct !DISubprogram(name: "xstrdup", scope: !881, file: !881, line: 335, type: !1143, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4575)
!4575 = !{!4576}
!4576 = !DILocalVariable(name: "string", arg: 1, scope: !4574, file: !881, line: 335, type: !165)
!4577 = !DILocation(line: 0, scope: !4574)
!4578 = !DILocation(line: 337, column: 27, scope: !4574)
!4579 = !DILocation(line: 337, column: 43, scope: !4574)
!4580 = !DILocation(line: 0, scope: !4504, inlinedAt: !4581)
!4581 = distinct !DILocation(line: 337, column: 10, scope: !4574)
!4582 = !DILocation(line: 0, scope: !4196, inlinedAt: !4583)
!4583 = distinct !DILocation(line: 312, column: 18, scope: !4504, inlinedAt: !4581)
!4584 = !DILocation(line: 49, column: 25, scope: !4196, inlinedAt: !4583)
!4585 = !DILocation(line: 0, scope: !4177, inlinedAt: !4586)
!4586 = distinct !DILocation(line: 49, column: 10, scope: !4196, inlinedAt: !4583)
!4587 = !DILocation(line: 39, column: 8, scope: !4184, inlinedAt: !4586)
!4588 = !DILocation(line: 39, column: 7, scope: !4177, inlinedAt: !4586)
!4589 = !DILocation(line: 40, column: 5, scope: !4184, inlinedAt: !4586)
!4590 = !DILocation(line: 0, scope: !4520, inlinedAt: !4591)
!4591 = distinct !DILocation(line: 312, column: 10, scope: !4504, inlinedAt: !4581)
!4592 = !DILocation(line: 29, column: 10, scope: !4520, inlinedAt: !4591)
!4593 = !DILocation(line: 337, column: 3, scope: !4574)
!4594 = distinct !DISubprogram(name: "xalloc_die", scope: !783, file: !783, line: 32, type: !548, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !4595)
!4595 = !{!4596}
!4596 = !DILocalVariable(name: "__errstatus", scope: !4597, file: !783, line: 34, type: !1560)
!4597 = distinct !DILexicalBlock(scope: !4594, file: !783, line: 34, column: 3)
!4598 = !DILocation(line: 34, column: 3, scope: !4597)
!4599 = !DILocation(line: 0, scope: !4597)
!4600 = !DILocation(line: 40, column: 3, scope: !4594)
!4601 = distinct !DISubprogram(name: "xmemcoll", scope: !790, file: !790, line: 54, type: !4602, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !4604)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!116, !159, !162, !159, !162}
!4604 = !{!4605, !4606, !4607, !4608, !4609, !4610}
!4605 = !DILocalVariable(name: "s1", arg: 1, scope: !4601, file: !790, line: 54, type: !159)
!4606 = !DILocalVariable(name: "s1len", arg: 2, scope: !4601, file: !790, line: 54, type: !162)
!4607 = !DILocalVariable(name: "s2", arg: 3, scope: !4601, file: !790, line: 54, type: !159)
!4608 = !DILocalVariable(name: "s2len", arg: 4, scope: !4601, file: !790, line: 54, type: !162)
!4609 = !DILocalVariable(name: "diff", scope: !4601, file: !790, line: 56, type: !116)
!4610 = !DILocalVariable(name: "collation_errno", scope: !4601, file: !790, line: 57, type: !116)
!4611 = !DILocation(line: 0, scope: !4601)
!4612 = !DILocation(line: 56, column: 14, scope: !4601)
!4613 = !DILocation(line: 57, column: 25, scope: !4601)
!4614 = !DILocation(line: 58, column: 7, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4601, file: !790, line: 58, column: 7)
!4616 = !DILocation(line: 58, column: 7, scope: !4601)
!4617 = !DILocalVariable(name: "collation_errno", arg: 1, scope: !4618, file: !790, line: 35, type: !116)
!4618 = distinct !DISubprogram(name: "collate_error", scope: !790, file: !790, line: 35, type: !4619, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !4621)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{null, !116, !165, !162, !165, !162}
!4621 = !{!4617, !4622, !4623, !4624, !4625, !4626}
!4622 = !DILocalVariable(name: "s1", arg: 2, scope: !4618, file: !790, line: 36, type: !165)
!4623 = !DILocalVariable(name: "s1len", arg: 3, scope: !4618, file: !790, line: 36, type: !162)
!4624 = !DILocalVariable(name: "s2", arg: 4, scope: !4618, file: !790, line: 37, type: !165)
!4625 = !DILocalVariable(name: "s2len", arg: 5, scope: !4618, file: !790, line: 37, type: !162)
!4626 = !DILocalVariable(name: "__errstatus", scope: !4627, file: !790, line: 41, type: !1560)
!4627 = distinct !DILexicalBlock(scope: !4618, file: !790, line: 41, column: 3)
!4628 = !DILocation(line: 0, scope: !4618, inlinedAt: !4629)
!4629 = distinct !DILocation(line: 59, column: 5, scope: !4615)
!4630 = !DILocation(line: 39, column: 3, scope: !4618, inlinedAt: !4629)
!4631 = !DILocation(line: 40, column: 3, scope: !4618, inlinedAt: !4629)
!4632 = !DILocation(line: 41, column: 3, scope: !4627, inlinedAt: !4629)
!4633 = !DILocation(line: 0, scope: !4627, inlinedAt: !4629)
!4634 = !DILocation(line: 59, column: 5, scope: !4615)
!4635 = !DILocation(line: 60, column: 3, scope: !4601)
!4636 = distinct !DISubprogram(name: "xmemcoll0", scope: !790, file: !790, line: 69, type: !2504, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !4637)
!4637 = !{!4638, !4639, !4640, !4641, !4642, !4643}
!4638 = !DILocalVariable(name: "s1", arg: 1, scope: !4636, file: !790, line: 69, type: !165)
!4639 = !DILocalVariable(name: "s1size", arg: 2, scope: !4636, file: !790, line: 69, type: !162)
!4640 = !DILocalVariable(name: "s2", arg: 3, scope: !4636, file: !790, line: 69, type: !165)
!4641 = !DILocalVariable(name: "s2size", arg: 4, scope: !4636, file: !790, line: 69, type: !162)
!4642 = !DILocalVariable(name: "diff", scope: !4636, file: !790, line: 71, type: !116)
!4643 = !DILocalVariable(name: "collation_errno", scope: !4636, file: !790, line: 72, type: !116)
!4644 = !DILocation(line: 0, scope: !4636)
!4645 = !DILocation(line: 71, column: 14, scope: !4636)
!4646 = !DILocation(line: 72, column: 25, scope: !4636)
!4647 = !DILocation(line: 73, column: 7, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4636, file: !790, line: 73, column: 7)
!4649 = !DILocation(line: 73, column: 7, scope: !4636)
!4650 = !DILocation(line: 74, column: 48, scope: !4648)
!4651 = !DILocation(line: 74, column: 64, scope: !4648)
!4652 = !DILocation(line: 0, scope: !4618, inlinedAt: !4653)
!4653 = distinct !DILocation(line: 74, column: 5, scope: !4648)
!4654 = !DILocation(line: 39, column: 3, scope: !4618, inlinedAt: !4653)
!4655 = !DILocation(line: 40, column: 3, scope: !4618, inlinedAt: !4653)
!4656 = !DILocation(line: 41, column: 3, scope: !4627, inlinedAt: !4653)
!4657 = !DILocation(line: 0, scope: !4627, inlinedAt: !4653)
!4658 = !DILocation(line: 74, column: 5, scope: !4648)
!4659 = !DILocation(line: 75, column: 3, scope: !4636)
!4660 = distinct !DISubprogram(name: "rpl_fopen", scope: !921, file: !921, line: 46, type: !4661, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4697)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!4663, !165, !165}
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4665)
!4665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4666)
!4666 = !{!4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4665, file: !236, line: 51, baseType: !116, size: 32)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4665, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4665, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4665, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4665, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4665, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4665, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4665, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4665, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4665, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4665, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4665, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4665, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4665, file: !236, line: 70, baseType: !4681, size: 64, offset: 832)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4665, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4665, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4665, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4665, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4665, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4665, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4665, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4665, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4665, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4665, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4665, file: !236, line: 93, baseType: !4681, size: 64, offset: 1344)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4665, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4665, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4665, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4665, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!4697 = !{!4698, !4699, !4700, !4701, !4702, !4703, !4707, !4709, !4710, !4715, !4718, !4719}
!4698 = !DILocalVariable(name: "filename", arg: 1, scope: !4660, file: !921, line: 46, type: !165)
!4699 = !DILocalVariable(name: "mode", arg: 2, scope: !4660, file: !921, line: 46, type: !165)
!4700 = !DILocalVariable(name: "open_direction", scope: !4660, file: !921, line: 54, type: !116)
!4701 = !DILocalVariable(name: "open_flags", scope: !4660, file: !921, line: 55, type: !116)
!4702 = !DILocalVariable(name: "open_flags_gnu", scope: !4660, file: !921, line: 57, type: !205)
!4703 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4660, file: !921, line: 59, type: !4704)
!4704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4705)
!4705 = !{!4706}
!4706 = !DISubrange(count: 81)
!4707 = !DILocalVariable(name: "p", scope: !4708, file: !921, line: 62, type: !165)
!4708 = distinct !DILexicalBlock(scope: !4660, file: !921, line: 61, column: 3)
!4709 = !DILocalVariable(name: "q", scope: !4708, file: !921, line: 64, type: !159)
!4710 = !DILocalVariable(name: "len", scope: !4711, file: !921, line: 128, type: !162)
!4711 = distinct !DILexicalBlock(scope: !4712, file: !921, line: 127, column: 9)
!4712 = distinct !DILexicalBlock(scope: !4713, file: !921, line: 68, column: 7)
!4713 = distinct !DILexicalBlock(scope: !4714, file: !921, line: 67, column: 5)
!4714 = distinct !DILexicalBlock(scope: !4708, file: !921, line: 67, column: 5)
!4715 = !DILocalVariable(name: "fd", scope: !4716, file: !921, line: 199, type: !116)
!4716 = distinct !DILexicalBlock(scope: !4717, file: !921, line: 198, column: 5)
!4717 = distinct !DILexicalBlock(scope: !4660, file: !921, line: 197, column: 7)
!4718 = !DILocalVariable(name: "fp", scope: !4716, file: !921, line: 204, type: !4663)
!4719 = !DILocalVariable(name: "saved_errno", scope: !4720, file: !921, line: 207, type: !116)
!4720 = distinct !DILexicalBlock(scope: !4721, file: !921, line: 206, column: 9)
!4721 = distinct !DILexicalBlock(scope: !4716, file: !921, line: 205, column: 11)
!4722 = distinct !DIAssignID()
!4723 = !DILocation(line: 0, scope: !4660)
!4724 = !DILocation(line: 59, column: 3, scope: !4660)
!4725 = !DILocation(line: 0, scope: !4708)
!4726 = !DILocation(line: 67, column: 5, scope: !4708)
!4727 = !DILocation(line: 54, column: 7, scope: !4660)
!4728 = !DILocation(line: 67, column: 12, scope: !4713)
!4729 = !DILocation(line: 67, column: 5, scope: !4714)
!4730 = !DILocation(line: 74, column: 19, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4732, file: !921, line: 74, column: 17)
!4732 = distinct !DILexicalBlock(scope: !4712, file: !921, line: 70, column: 11)
!4733 = !DILocation(line: 74, column: 17, scope: !4732)
!4734 = !DILocation(line: 75, column: 17, scope: !4731)
!4735 = !DILocation(line: 75, column: 20, scope: !4731)
!4736 = !DILocation(line: 75, column: 15, scope: !4731)
!4737 = !DILocation(line: 80, column: 24, scope: !4732)
!4738 = !DILocation(line: 82, column: 19, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4732, file: !921, line: 82, column: 17)
!4740 = !DILocation(line: 82, column: 17, scope: !4732)
!4741 = !DILocation(line: 83, column: 17, scope: !4739)
!4742 = !DILocation(line: 83, column: 20, scope: !4739)
!4743 = !DILocation(line: 83, column: 15, scope: !4739)
!4744 = !DILocation(line: 88, column: 24, scope: !4732)
!4745 = !DILocation(line: 90, column: 19, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4732, file: !921, line: 90, column: 17)
!4747 = !DILocation(line: 90, column: 17, scope: !4732)
!4748 = !DILocation(line: 91, column: 17, scope: !4746)
!4749 = !DILocation(line: 91, column: 20, scope: !4746)
!4750 = !DILocation(line: 91, column: 15, scope: !4746)
!4751 = !DILocation(line: 100, column: 19, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4732, file: !921, line: 100, column: 17)
!4753 = !DILocation(line: 100, column: 17, scope: !4732)
!4754 = !DILocation(line: 101, column: 17, scope: !4752)
!4755 = !DILocation(line: 101, column: 20, scope: !4752)
!4756 = !DILocation(line: 101, column: 15, scope: !4752)
!4757 = !DILocation(line: 107, column: 19, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4732, file: !921, line: 107, column: 17)
!4759 = !DILocation(line: 107, column: 17, scope: !4732)
!4760 = !DILocation(line: 108, column: 17, scope: !4758)
!4761 = !DILocation(line: 108, column: 20, scope: !4758)
!4762 = !DILocation(line: 108, column: 15, scope: !4758)
!4763 = !DILocation(line: 113, column: 24, scope: !4732)
!4764 = !DILocation(line: 115, column: 13, scope: !4732)
!4765 = !DILocation(line: 117, column: 24, scope: !4732)
!4766 = !DILocation(line: 119, column: 13, scope: !4732)
!4767 = !DILocation(line: 128, column: 24, scope: !4711)
!4768 = !DILocation(line: 0, scope: !4711)
!4769 = !DILocation(line: 129, column: 48, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4711, file: !921, line: 129, column: 15)
!4771 = !DILocation(line: 129, column: 15, scope: !4711)
!4772 = !DILocalVariable(name: "__dest", arg: 1, scope: !4773, file: !2312, line: 26, type: !3974)
!4773 = distinct !DISubprogram(name: "memcpy", scope: !2312, file: !2312, line: 26, type: !3972, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4774)
!4774 = !{!4772, !4775, !4776}
!4775 = !DILocalVariable(name: "__src", arg: 2, scope: !4773, file: !2312, line: 26, type: !1164)
!4776 = !DILocalVariable(name: "__len", arg: 3, scope: !4773, file: !2312, line: 26, type: !162)
!4777 = !DILocation(line: 0, scope: !4773, inlinedAt: !4778)
!4778 = distinct !DILocation(line: 131, column: 11, scope: !4711)
!4779 = !DILocation(line: 29, column: 10, scope: !4773, inlinedAt: !4778)
!4780 = !DILocation(line: 132, column: 13, scope: !4711)
!4781 = !DILocation(line: 135, column: 9, scope: !4712)
!4782 = !DILocation(line: 67, column: 25, scope: !4713)
!4783 = !DILocation(line: 67, column: 5, scope: !4713)
!4784 = distinct !{!4784, !4729, !4785, !1067}
!4785 = !DILocation(line: 136, column: 7, scope: !4714)
!4786 = !DILocation(line: 138, column: 8, scope: !4708)
!4787 = !DILocation(line: 197, column: 7, scope: !4660)
!4788 = !DILocation(line: 199, column: 47, scope: !4716)
!4789 = !DILocation(line: 199, column: 16, scope: !4716)
!4790 = !DILocation(line: 0, scope: !4716)
!4791 = !DILocation(line: 201, column: 14, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4716, file: !921, line: 201, column: 11)
!4793 = !DILocation(line: 201, column: 11, scope: !4716)
!4794 = !DILocation(line: 204, column: 18, scope: !4716)
!4795 = !DILocation(line: 205, column: 14, scope: !4721)
!4796 = !DILocation(line: 205, column: 11, scope: !4716)
!4797 = !DILocation(line: 207, column: 29, scope: !4720)
!4798 = !DILocation(line: 0, scope: !4720)
!4799 = !DILocation(line: 208, column: 11, scope: !4720)
!4800 = !DILocation(line: 209, column: 17, scope: !4720)
!4801 = !DILocation(line: 210, column: 9, scope: !4720)
!4802 = !DILocalVariable(name: "filename", arg: 1, scope: !4803, file: !921, line: 30, type: !165)
!4803 = distinct !DISubprogram(name: "orig_fopen", scope: !921, file: !921, line: 30, type: !4661, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4804)
!4804 = !{!4802, !4805}
!4805 = !DILocalVariable(name: "mode", arg: 2, scope: !4803, file: !921, line: 30, type: !165)
!4806 = !DILocation(line: 0, scope: !4803, inlinedAt: !4807)
!4807 = distinct !DILocation(line: 219, column: 10, scope: !4660)
!4808 = !DILocation(line: 32, column: 10, scope: !4803, inlinedAt: !4807)
!4809 = !DILocation(line: 219, column: 3, scope: !4660)
!4810 = !DILocation(line: 220, column: 1, scope: !4660)
!4811 = !DISubprogram(name: "open", scope: !1785, file: !1785, line: 181, type: !4812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!116, !165, !116, null}
!4814 = !DISubprogram(name: "fopen", scope: !508, file: !508, line: 258, type: !4815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!4663, !1011, !1011}
!4817 = distinct !DISubprogram(name: "close_stream", scope: !923, file: !923, line: 55, type: !4818, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !4854)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!116, !4820}
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4822)
!4822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4823)
!4823 = !{!4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4822, file: !236, line: 51, baseType: !116, size: 32)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4822, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4822, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4822, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4822, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4822, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4822, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4822, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4822, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4822, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4822, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4822, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4822, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4822, file: !236, line: 70, baseType: !4838, size: 64, offset: 832)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4822, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4822, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4822, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4822, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4822, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4822, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4822, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4822, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4822, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4822, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4822, file: !236, line: 93, baseType: !4838, size: 64, offset: 1344)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4822, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4822, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4822, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4822, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!4854 = !{!4855, !4856, !4858, !4859}
!4855 = !DILocalVariable(name: "stream", arg: 1, scope: !4817, file: !923, line: 55, type: !4820)
!4856 = !DILocalVariable(name: "some_pending", scope: !4817, file: !923, line: 57, type: !4857)
!4857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!4858 = !DILocalVariable(name: "prev_fail", scope: !4817, file: !923, line: 58, type: !4857)
!4859 = !DILocalVariable(name: "fclose_fail", scope: !4817, file: !923, line: 59, type: !4857)
!4860 = !DILocation(line: 0, scope: !4817)
!4861 = !DILocation(line: 57, column: 30, scope: !4817)
!4862 = !DILocalVariable(name: "__stream", arg: 1, scope: !4863, file: !1345, line: 135, type: !4820)
!4863 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1345, file: !1345, line: 135, type: !4818, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !4864)
!4864 = !{!4862}
!4865 = !DILocation(line: 0, scope: !4863, inlinedAt: !4866)
!4866 = distinct !DILocation(line: 58, column: 27, scope: !4817)
!4867 = !DILocation(line: 137, column: 10, scope: !4863, inlinedAt: !4866)
!4868 = !DILocation(line: 58, column: 43, scope: !4817)
!4869 = !DILocation(line: 59, column: 29, scope: !4817)
!4870 = !DILocation(line: 59, column: 45, scope: !4817)
!4871 = !DILocation(line: 69, column: 17, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4817, file: !923, line: 69, column: 7)
!4873 = !DILocation(line: 57, column: 50, scope: !4817)
!4874 = !DILocation(line: 69, column: 33, scope: !4872)
!4875 = !DILocation(line: 69, column: 53, scope: !4872)
!4876 = !DILocation(line: 69, column: 59, scope: !4872)
!4877 = !DILocation(line: 69, column: 7, scope: !4817)
!4878 = !DILocation(line: 71, column: 11, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4872, file: !923, line: 70, column: 5)
!4880 = !DILocation(line: 72, column: 9, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4879, file: !923, line: 71, column: 11)
!4882 = !DILocation(line: 72, column: 15, scope: !4881)
!4883 = !DILocation(line: 77, column: 1, scope: !4817)
!4884 = !DISubprogram(name: "__fpending", scope: !1988, file: !1988, line: 75, type: !4885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{!162, !4820}
!4887 = distinct !DISubprogram(name: "rpl_fcntl", scope: !809, file: !809, line: 202, type: !1786, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !4888)
!4888 = !{!4889, !4890, !4891, !4902, !4903, !4906, !4908, !4912}
!4889 = !DILocalVariable(name: "fd", arg: 1, scope: !4887, file: !809, line: 202, type: !116)
!4890 = !DILocalVariable(name: "action", arg: 2, scope: !4887, file: !809, line: 202, type: !116)
!4891 = !DILocalVariable(name: "arg", scope: !4887, file: !809, line: 208, type: !4892)
!4892 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4893, line: 12, baseType: !4894)
!4893 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!4894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !809, baseType: !4895)
!4895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4896)
!4896 = !{!4897, !4898, !4899, !4900, !4901}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4895, file: !809, line: 208, baseType: !160, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4895, file: !809, line: 208, baseType: !160, size: 64, offset: 64)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4895, file: !809, line: 208, baseType: !160, size: 64, offset: 128)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4895, file: !809, line: 208, baseType: !116, size: 32, offset: 192)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4895, file: !809, line: 208, baseType: !116, size: 32, offset: 224)
!4902 = !DILocalVariable(name: "result", scope: !4887, file: !809, line: 211, type: !116)
!4903 = !DILocalVariable(name: "target", scope: !4904, file: !809, line: 216, type: !116)
!4904 = distinct !DILexicalBlock(scope: !4905, file: !809, line: 215, column: 7)
!4905 = distinct !DILexicalBlock(scope: !4887, file: !809, line: 213, column: 5)
!4906 = !DILocalVariable(name: "target", scope: !4907, file: !809, line: 223, type: !116)
!4907 = distinct !DILexicalBlock(scope: !4905, file: !809, line: 222, column: 7)
!4908 = !DILocalVariable(name: "x", scope: !4909, file: !809, line: 418, type: !116)
!4909 = distinct !DILexicalBlock(scope: !4910, file: !809, line: 417, column: 13)
!4910 = distinct !DILexicalBlock(scope: !4911, file: !809, line: 261, column: 11)
!4911 = distinct !DILexicalBlock(scope: !4905, file: !809, line: 258, column: 7)
!4912 = !DILocalVariable(name: "p", scope: !4913, file: !809, line: 426, type: !160)
!4913 = distinct !DILexicalBlock(scope: !4910, file: !809, line: 425, column: 13)
!4914 = distinct !DIAssignID()
!4915 = !DILocation(line: 0, scope: !4887)
!4916 = !DILocation(line: 208, column: 3, scope: !4887)
!4917 = !DILocation(line: 209, column: 3, scope: !4887)
!4918 = !DILocation(line: 212, column: 3, scope: !4887)
!4919 = !DILocation(line: 216, column: 22, scope: !4904)
!4920 = distinct !DIAssignID()
!4921 = distinct !DIAssignID()
!4922 = !DILocation(line: 0, scope: !4904)
!4923 = !DILocalVariable(name: "fd", arg: 1, scope: !4924, file: !809, line: 444, type: !116)
!4924 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !809, file: !809, line: 444, type: !810, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !4925)
!4925 = !{!4923, !4926, !4927}
!4926 = !DILocalVariable(name: "target", arg: 2, scope: !4924, file: !809, line: 444, type: !116)
!4927 = !DILocalVariable(name: "result", scope: !4924, file: !809, line: 446, type: !116)
!4928 = !DILocation(line: 0, scope: !4924, inlinedAt: !4929)
!4929 = distinct !DILocation(line: 217, column: 18, scope: !4904)
!4930 = !DILocation(line: 479, column: 12, scope: !4924, inlinedAt: !4929)
!4931 = !DILocation(line: 223, column: 22, scope: !4907)
!4932 = distinct !DIAssignID()
!4933 = distinct !DIAssignID()
!4934 = !DILocation(line: 0, scope: !4907)
!4935 = !DILocation(line: 0, scope: !808, inlinedAt: !4936)
!4936 = distinct !DILocation(line: 224, column: 18, scope: !4907)
!4937 = !DILocation(line: 507, column: 12, scope: !4938, inlinedAt: !4936)
!4938 = distinct !DILexicalBlock(scope: !808, file: !809, line: 507, column: 7)
!4939 = !DILocation(line: 507, column: 9, scope: !4938, inlinedAt: !4936)
!4940 = !DILocation(line: 507, column: 7, scope: !808, inlinedAt: !4936)
!4941 = !DILocation(line: 509, column: 16, scope: !4942, inlinedAt: !4936)
!4942 = distinct !DILexicalBlock(scope: !4938, file: !809, line: 508, column: 5)
!4943 = !DILocation(line: 510, column: 13, scope: !4944, inlinedAt: !4936)
!4944 = distinct !DILexicalBlock(scope: !4942, file: !809, line: 510, column: 11)
!4945 = !DILocation(line: 510, column: 23, scope: !4944, inlinedAt: !4936)
!4946 = !DILocation(line: 510, column: 26, scope: !4944, inlinedAt: !4936)
!4947 = !DILocation(line: 510, column: 32, scope: !4944, inlinedAt: !4936)
!4948 = !DILocation(line: 510, column: 11, scope: !4942, inlinedAt: !4936)
!4949 = !DILocation(line: 512, column: 30, scope: !4950, inlinedAt: !4936)
!4950 = distinct !DILexicalBlock(scope: !4944, file: !809, line: 511, column: 9)
!4951 = !DILocation(line: 528, column: 19, scope: !820, inlinedAt: !4936)
!4952 = !DILocation(line: 0, scope: !4924, inlinedAt: !4953)
!4953 = distinct !DILocation(line: 520, column: 20, scope: !4954, inlinedAt: !4936)
!4954 = distinct !DILexicalBlock(scope: !4944, file: !809, line: 519, column: 9)
!4955 = !DILocation(line: 479, column: 12, scope: !4924, inlinedAt: !4953)
!4956 = !DILocation(line: 521, column: 22, scope: !4957, inlinedAt: !4936)
!4957 = distinct !DILexicalBlock(scope: !4954, file: !809, line: 521, column: 15)
!4958 = !DILocation(line: 521, column: 15, scope: !4954, inlinedAt: !4936)
!4959 = !DILocation(line: 522, column: 32, scope: !4957, inlinedAt: !4936)
!4960 = !DILocation(line: 522, column: 13, scope: !4957, inlinedAt: !4936)
!4961 = !DILocation(line: 0, scope: !4924, inlinedAt: !4962)
!4962 = distinct !DILocation(line: 527, column: 14, scope: !4938, inlinedAt: !4936)
!4963 = !DILocation(line: 479, column: 12, scope: !4924, inlinedAt: !4962)
!4964 = !DILocation(line: 0, scope: !4938, inlinedAt: !4936)
!4965 = !DILocation(line: 528, column: 9, scope: !820, inlinedAt: !4936)
!4966 = !DILocation(line: 530, column: 19, scope: !819, inlinedAt: !4936)
!4967 = !DILocation(line: 0, scope: !819, inlinedAt: !4936)
!4968 = !DILocation(line: 531, column: 17, scope: !823, inlinedAt: !4936)
!4969 = !DILocation(line: 531, column: 21, scope: !823, inlinedAt: !4936)
!4970 = !DILocation(line: 531, column: 54, scope: !823, inlinedAt: !4936)
!4971 = !DILocation(line: 531, column: 24, scope: !823, inlinedAt: !4936)
!4972 = !DILocation(line: 531, column: 68, scope: !823, inlinedAt: !4936)
!4973 = !DILocation(line: 531, column: 11, scope: !819, inlinedAt: !4936)
!4974 = !DILocation(line: 533, column: 29, scope: !822, inlinedAt: !4936)
!4975 = !DILocation(line: 0, scope: !822, inlinedAt: !4936)
!4976 = !DILocation(line: 534, column: 11, scope: !822, inlinedAt: !4936)
!4977 = !DILocation(line: 535, column: 17, scope: !822, inlinedAt: !4936)
!4978 = !DILocation(line: 537, column: 9, scope: !822, inlinedAt: !4936)
!4979 = !DILocation(line: 329, column: 22, scope: !4910)
!4980 = !DILocation(line: 330, column: 13, scope: !4910)
!4981 = !DILocation(line: 418, column: 23, scope: !4909)
!4982 = distinct !DIAssignID()
!4983 = distinct !DIAssignID()
!4984 = !DILocation(line: 0, scope: !4909)
!4985 = !DILocation(line: 419, column: 24, scope: !4909)
!4986 = !DILocation(line: 421, column: 13, scope: !4910)
!4987 = !DILocation(line: 426, column: 25, scope: !4913)
!4988 = distinct !DIAssignID()
!4989 = distinct !DIAssignID()
!4990 = !DILocation(line: 0, scope: !4913)
!4991 = !DILocation(line: 427, column: 24, scope: !4913)
!4992 = !DILocation(line: 429, column: 13, scope: !4910)
!4993 = !DILocation(line: 0, scope: !4905)
!4994 = !DILocation(line: 438, column: 3, scope: !4887)
!4995 = !DILocation(line: 441, column: 1, scope: !4887)
!4996 = !DILocation(line: 440, column: 3, scope: !4887)
!4997 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !826, file: !826, line: 100, type: !4998, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !5001)
!4998 = !DISubroutineType(types: !4999)
!4999 = !{!162, !2591, !165, !162, !5000}
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!5001 = !{!5002, !5003, !5004, !5005, !5006}
!5002 = !DILocalVariable(name: "pwc", arg: 1, scope: !4997, file: !826, line: 100, type: !2591)
!5003 = !DILocalVariable(name: "s", arg: 2, scope: !4997, file: !826, line: 100, type: !165)
!5004 = !DILocalVariable(name: "n", arg: 3, scope: !4997, file: !826, line: 100, type: !162)
!5005 = !DILocalVariable(name: "ps", arg: 4, scope: !4997, file: !826, line: 100, type: !5000)
!5006 = !DILocalVariable(name: "ret", scope: !4997, file: !826, line: 130, type: !162)
!5007 = !DILocation(line: 0, scope: !4997)
!5008 = !DILocation(line: 105, column: 9, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4997, file: !826, line: 105, column: 7)
!5010 = !DILocation(line: 105, column: 7, scope: !4997)
!5011 = !DILocation(line: 117, column: 10, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !4997, file: !826, line: 117, column: 7)
!5013 = !DILocation(line: 117, column: 7, scope: !4997)
!5014 = !DILocation(line: 130, column: 16, scope: !4997)
!5015 = !DILocation(line: 135, column: 11, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !4997, file: !826, line: 135, column: 7)
!5017 = !DILocation(line: 135, column: 25, scope: !5016)
!5018 = !DILocation(line: 135, column: 30, scope: !5016)
!5019 = !DILocation(line: 135, column: 7, scope: !4997)
!5020 = !DILocalVariable(name: "ps", arg: 1, scope: !5021, file: !2567, line: 1135, type: !5000)
!5021 = distinct !DISubprogram(name: "mbszero", scope: !2567, file: !2567, line: 1135, type: !5022, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !5024)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{null, !5000}
!5024 = !{!5020}
!5025 = !DILocation(line: 0, scope: !5021, inlinedAt: !5026)
!5026 = distinct !DILocation(line: 137, column: 5, scope: !5016)
!5027 = !DILocalVariable(name: "__dest", arg: 1, scope: !5028, file: !2312, line: 57, type: !160)
!5028 = distinct !DISubprogram(name: "memset", scope: !2312, file: !2312, line: 57, type: !2313, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !5029)
!5029 = !{!5027, !5030, !5031}
!5030 = !DILocalVariable(name: "__ch", arg: 2, scope: !5028, file: !2312, line: 57, type: !116)
!5031 = !DILocalVariable(name: "__len", arg: 3, scope: !5028, file: !2312, line: 57, type: !162)
!5032 = !DILocation(line: 0, scope: !5028, inlinedAt: !5033)
!5033 = distinct !DILocation(line: 1137, column: 3, scope: !5021, inlinedAt: !5026)
!5034 = !DILocation(line: 59, column: 10, scope: !5028, inlinedAt: !5033)
!5035 = !DILocation(line: 137, column: 5, scope: !5016)
!5036 = !DILocation(line: 138, column: 11, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !4997, file: !826, line: 138, column: 7)
!5038 = !DILocation(line: 138, column: 7, scope: !4997)
!5039 = !DILocation(line: 139, column: 5, scope: !5037)
!5040 = !DILocation(line: 143, column: 26, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !4997, file: !826, line: 143, column: 7)
!5042 = !DILocation(line: 143, column: 41, scope: !5041)
!5043 = !DILocation(line: 143, column: 7, scope: !4997)
!5044 = !DILocation(line: 145, column: 15, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5046, file: !826, line: 145, column: 11)
!5046 = distinct !DILexicalBlock(scope: !5041, file: !826, line: 144, column: 5)
!5047 = !DILocation(line: 145, column: 11, scope: !5046)
!5048 = !DILocation(line: 146, column: 32, scope: !5045)
!5049 = !DILocation(line: 146, column: 16, scope: !5045)
!5050 = !DILocation(line: 146, column: 14, scope: !5045)
!5051 = !DILocation(line: 146, column: 9, scope: !5045)
!5052 = !DILocation(line: 286, column: 1, scope: !4997)
!5053 = !DISubprogram(name: "mbsinit", scope: !5054, file: !5054, line: 293, type: !5055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5054 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5055 = !DISubroutineType(types: !5056)
!5056 = !{!116, !5057}
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !832)
!5059 = distinct !DISubprogram(name: "memcoll", scope: !925, file: !925, line: 66, type: !4602, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !924, retainedNodes: !5060)
!5060 = !{!5061, !5062, !5063, !5064, !5065, !5066, !5069}
!5061 = !DILocalVariable(name: "s1", arg: 1, scope: !5059, file: !925, line: 66, type: !159)
!5062 = !DILocalVariable(name: "s1len", arg: 2, scope: !5059, file: !925, line: 66, type: !162)
!5063 = !DILocalVariable(name: "s2", arg: 3, scope: !5059, file: !925, line: 66, type: !159)
!5064 = !DILocalVariable(name: "s2len", arg: 4, scope: !5059, file: !925, line: 66, type: !162)
!5065 = !DILocalVariable(name: "diff", scope: !5059, file: !925, line: 68, type: !116)
!5066 = !DILocalVariable(name: "n1", scope: !5067, file: !925, line: 81, type: !4)
!5067 = distinct !DILexicalBlock(scope: !5068, file: !925, line: 80, column: 5)
!5068 = distinct !DILexicalBlock(scope: !5059, file: !925, line: 74, column: 7)
!5069 = !DILocalVariable(name: "n2", scope: !5067, file: !925, line: 82, type: !4)
!5070 = !DILocation(line: 0, scope: !5059)
!5071 = !DILocation(line: 74, column: 13, scope: !5068)
!5072 = !DILocation(line: 74, column: 22, scope: !5068)
!5073 = !DILocalVariable(name: "__s1", arg: 1, scope: !5074, file: !1033, line: 974, type: !1165)
!5074 = distinct !DISubprogram(name: "memeq", scope: !1033, file: !1033, line: 974, type: !2536, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !924, retainedNodes: !5075)
!5075 = !{!5073, !5076, !5077}
!5076 = !DILocalVariable(name: "__s2", arg: 2, scope: !5074, file: !1033, line: 974, type: !1165)
!5077 = !DILocalVariable(name: "__n", arg: 3, scope: !5074, file: !1033, line: 974, type: !162)
!5078 = !DILocation(line: 0, scope: !5074, inlinedAt: !5079)
!5079 = distinct !DILocation(line: 74, column: 25, scope: !5068)
!5080 = !DILocation(line: 976, column: 11, scope: !5074, inlinedAt: !5079)
!5081 = !DILocation(line: 976, column: 10, scope: !5074, inlinedAt: !5079)
!5082 = !DILocation(line: 74, column: 7, scope: !5059)
!5083 = !DILocation(line: 76, column: 7, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5068, file: !925, line: 75, column: 5)
!5085 = !DILocation(line: 76, column: 13, scope: !5084)
!5086 = !DILocation(line: 78, column: 5, scope: !5084)
!5087 = !DILocation(line: 81, column: 17, scope: !5067)
!5088 = !DILocation(line: 0, scope: !5067)
!5089 = !DILocation(line: 82, column: 17, scope: !5067)
!5090 = !DILocation(line: 84, column: 17, scope: !5067)
!5091 = !DILocation(line: 85, column: 17, scope: !5067)
!5092 = !DILocation(line: 87, column: 38, scope: !5067)
!5093 = !DILocation(line: 87, column: 53, scope: !5067)
!5094 = !DILocalVariable(name: "s1", arg: 1, scope: !5095, file: !925, line: 35, type: !165)
!5095 = distinct !DISubprogram(name: "strcoll_loop", scope: !925, file: !925, line: 35, type: !2504, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !924, retainedNodes: !5096)
!5096 = !{!5094, !5097, !5098, !5099, !5100, !5101, !5103}
!5097 = !DILocalVariable(name: "s1size", arg: 2, scope: !5095, file: !925, line: 35, type: !162)
!5098 = !DILocalVariable(name: "s2", arg: 3, scope: !5095, file: !925, line: 35, type: !165)
!5099 = !DILocalVariable(name: "s2size", arg: 4, scope: !5095, file: !925, line: 35, type: !162)
!5100 = !DILocalVariable(name: "diff", scope: !5095, file: !925, line: 37, type: !116)
!5101 = !DILocalVariable(name: "size1", scope: !5102, file: !925, line: 44, type: !162)
!5102 = distinct !DILexicalBlock(scope: !5095, file: !925, line: 40, column: 5)
!5103 = !DILocalVariable(name: "size2", scope: !5102, file: !925, line: 45, type: !162)
!5104 = !DILocation(line: 0, scope: !5095, inlinedAt: !5105)
!5105 = distinct !DILocation(line: 87, column: 14, scope: !5067)
!5106 = !DILocation(line: 39, column: 3, scope: !5095, inlinedAt: !5105)
!5107 = !DILocation(line: 39, column: 19, scope: !5095, inlinedAt: !5105)
!5108 = !DILocation(line: 39, column: 32, scope: !5095, inlinedAt: !5105)
!5109 = !DILocation(line: 39, column: 30, scope: !5095, inlinedAt: !5105)
!5110 = !DILocation(line: 44, column: 22, scope: !5102, inlinedAt: !5105)
!5111 = !DILocation(line: 44, column: 34, scope: !5102, inlinedAt: !5105)
!5112 = !DILocation(line: 0, scope: !5102, inlinedAt: !5105)
!5113 = !DILocation(line: 45, column: 22, scope: !5102, inlinedAt: !5105)
!5114 = !DILocation(line: 45, column: 34, scope: !5102, inlinedAt: !5105)
!5115 = !DILocation(line: 48, column: 14, scope: !5102, inlinedAt: !5105)
!5116 = !DILocation(line: 49, column: 14, scope: !5102, inlinedAt: !5105)
!5117 = !DILocation(line: 51, column: 18, scope: !5118, inlinedAt: !5105)
!5118 = distinct !DILexicalBlock(scope: !5102, file: !925, line: 51, column: 11)
!5119 = !DILocation(line: 51, column: 11, scope: !5102, inlinedAt: !5105)
!5120 = !DILocation(line: 52, column: 26, scope: !5118, inlinedAt: !5105)
!5121 = !DILocation(line: 47, column: 10, scope: !5102, inlinedAt: !5105)
!5122 = !DILocation(line: 46, column: 10, scope: !5102, inlinedAt: !5105)
!5123 = !DILocation(line: 53, column: 18, scope: !5124, inlinedAt: !5105)
!5124 = distinct !DILexicalBlock(scope: !5102, file: !925, line: 53, column: 11)
!5125 = distinct !{!5125, !5106, !5126, !1067}
!5126 = !DILocation(line: 55, column: 5, scope: !5095, inlinedAt: !5105)
!5127 = !DILocation(line: 89, column: 17, scope: !5067)
!5128 = !DILocation(line: 90, column: 17, scope: !5067)
!5129 = !DILocation(line: 0, scope: !5068)
!5130 = !DILocation(line: 93, column: 3, scope: !5059)
!5131 = !DISubprogram(name: "strcoll", scope: !1137, file: !1137, line: 163, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5132 = distinct !DISubprogram(name: "memcoll0", scope: !925, file: !925, line: 102, type: !2504, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !924, retainedNodes: !5133)
!5133 = !{!5134, !5135, !5136, !5137}
!5134 = !DILocalVariable(name: "s1", arg: 1, scope: !5132, file: !925, line: 102, type: !165)
!5135 = !DILocalVariable(name: "s1size", arg: 2, scope: !5132, file: !925, line: 102, type: !162)
!5136 = !DILocalVariable(name: "s2", arg: 3, scope: !5132, file: !925, line: 102, type: !165)
!5137 = !DILocalVariable(name: "s2size", arg: 4, scope: !5132, file: !925, line: 102, type: !162)
!5138 = !DILocation(line: 0, scope: !5132)
!5139 = !DILocation(line: 104, column: 14, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5132, file: !925, line: 104, column: 7)
!5141 = !DILocation(line: 104, column: 24, scope: !5140)
!5142 = !DILocation(line: 0, scope: !5074, inlinedAt: !5143)
!5143 = distinct !DILocation(line: 104, column: 27, scope: !5140)
!5144 = !DILocation(line: 976, column: 11, scope: !5074, inlinedAt: !5143)
!5145 = !DILocation(line: 976, column: 10, scope: !5074, inlinedAt: !5143)
!5146 = !DILocation(line: 104, column: 7, scope: !5132)
!5147 = !DILocation(line: 106, column: 7, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5140, file: !925, line: 105, column: 5)
!5149 = !DILocation(line: 106, column: 13, scope: !5148)
!5150 = !DILocation(line: 107, column: 7, scope: !5148)
!5151 = !DILocation(line: 0, scope: !5095, inlinedAt: !5152)
!5152 = distinct !DILocation(line: 110, column: 12, scope: !5140)
!5153 = !DILocation(line: 39, column: 3, scope: !5095, inlinedAt: !5152)
!5154 = !DILocation(line: 39, column: 19, scope: !5095, inlinedAt: !5152)
!5155 = !DILocation(line: 39, column: 32, scope: !5095, inlinedAt: !5152)
!5156 = !DILocation(line: 39, column: 30, scope: !5095, inlinedAt: !5152)
!5157 = !DILocation(line: 44, column: 22, scope: !5102, inlinedAt: !5152)
!5158 = !DILocation(line: 44, column: 34, scope: !5102, inlinedAt: !5152)
!5159 = !DILocation(line: 0, scope: !5102, inlinedAt: !5152)
!5160 = !DILocation(line: 45, column: 22, scope: !5102, inlinedAt: !5152)
!5161 = !DILocation(line: 45, column: 34, scope: !5102, inlinedAt: !5152)
!5162 = !DILocation(line: 48, column: 14, scope: !5102, inlinedAt: !5152)
!5163 = !DILocation(line: 49, column: 14, scope: !5102, inlinedAt: !5152)
!5164 = !DILocation(line: 51, column: 18, scope: !5118, inlinedAt: !5152)
!5165 = !DILocation(line: 51, column: 11, scope: !5102, inlinedAt: !5152)
!5166 = !DILocation(line: 52, column: 26, scope: !5118, inlinedAt: !5152)
!5167 = !DILocation(line: 47, column: 10, scope: !5102, inlinedAt: !5152)
!5168 = !DILocation(line: 46, column: 10, scope: !5102, inlinedAt: !5152)
!5169 = !DILocation(line: 53, column: 18, scope: !5124, inlinedAt: !5152)
!5170 = distinct !{!5170, !5153, !5171, !1067}
!5171 = !DILocation(line: 55, column: 5, scope: !5095, inlinedAt: !5152)
!5172 = !DILocation(line: 111, column: 1, scope: !5132)
!5173 = !DILocation(line: 0, scope: !5140)
!5174 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !927, file: !927, line: 27, type: !4161, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !5175)
!5175 = !{!5176, !5177, !5178, !5179}
!5176 = !DILocalVariable(name: "ptr", arg: 1, scope: !5174, file: !927, line: 27, type: !160)
!5177 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5174, file: !927, line: 27, type: !162)
!5178 = !DILocalVariable(name: "size", arg: 3, scope: !5174, file: !927, line: 27, type: !162)
!5179 = !DILocalVariable(name: "nbytes", scope: !5174, file: !927, line: 29, type: !162)
!5180 = !DILocation(line: 0, scope: !5174)
!5181 = !DILocation(line: 30, column: 7, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5174, file: !927, line: 30, column: 7)
!5183 = !DILocation(line: 30, column: 7, scope: !5174)
!5184 = !DILocation(line: 32, column: 7, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5182, file: !927, line: 31, column: 5)
!5186 = !DILocation(line: 32, column: 13, scope: !5185)
!5187 = !DILocation(line: 33, column: 7, scope: !5185)
!5188 = !DILocalVariable(name: "ptr", arg: 1, scope: !5189, file: !4253, line: 2057, type: !160)
!5189 = distinct !DISubprogram(name: "rpl_realloc", scope: !4253, file: !4253, line: 2057, type: !4245, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !5190)
!5190 = !{!5188, !5191}
!5191 = !DILocalVariable(name: "size", arg: 2, scope: !5189, file: !4253, line: 2057, type: !162)
!5192 = !DILocation(line: 0, scope: !5189, inlinedAt: !5193)
!5193 = distinct !DILocation(line: 37, column: 10, scope: !5174)
!5194 = !DILocation(line: 2059, column: 24, scope: !5189, inlinedAt: !5193)
!5195 = !DILocation(line: 2059, column: 10, scope: !5189, inlinedAt: !5193)
!5196 = !DILocation(line: 37, column: 3, scope: !5174)
!5197 = !DILocation(line: 38, column: 1, scope: !5174)
