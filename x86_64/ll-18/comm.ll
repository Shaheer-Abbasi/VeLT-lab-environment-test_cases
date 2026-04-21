; ModuleID = 'src/comm.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.linebuffer = type { i64, i64, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

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
@hard_LC_COLLATE = internal unnamed_addr global i8 0, align 1, !dbg !98
@.str.21 = private unnamed_addr constant [5 x i8] c"123z\00", align 1, !dbg !169
@long_options = internal constant [8 x %struct.option] [%struct.option { ptr @.str.64, i32 0, ptr null, i32 128 }, %struct.option { ptr @.str.65, i32 0, ptr null, i32 129 }, %struct.option { ptr @.str.66, i32 1, ptr null, i32 130 }, %struct.option { ptr @.str.67, i32 0, ptr null, i32 131 }, %struct.option { ptr @.str.68, i32 0, ptr null, i32 122 }, %struct.option { ptr @.str.69, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.70, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !413
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
@issued_disorder_warning = internal unnamed_addr global [2 x i8] zeroinitializer, align 1, !dbg !463
@.str.77 = private unnamed_addr constant [29 x i8] c"input is not in sorted order\00", align 1, !dbg !449
@.str.78 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !454
@.str.79 = private unnamed_addr constant [31 x i8] c"file %d is not in sorted order\00", align 1, !dbg !458
@.str.33 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !472
@Version = dso_local local_unnamed_addr global ptr @.str.33, align 8, !dbg !475
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !479
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !492
@.str.36 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !484
@.str.1.37 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !486
@.str.2.38 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !488
@.str.3.39 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !490
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !494
@stderr = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !500
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !531
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !502
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !521
@.str.1.46 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !523
@.str.2.48 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !525
@.str.3.47 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !527
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !529
@.str.4.41 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !533
@.str.5.42 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !535
@.str.6.43 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !540
@.str.1.67 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !545
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !548
@.str.80 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !554
@.str.1.81 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !556
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !558
@.str.84 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !589
@.str.1.85 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !592
@.str.2.86 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !594
@.str.3.87 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !599
@.str.4.88 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !601
@.str.5.89 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !603
@.str.6.90 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !605
@.str.7.91 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !607
@.str.8.92 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !609
@.str.9.93 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !611
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.84, ptr @.str.1.85, ptr @.str.2.86, ptr @.str.3.87, ptr @.str.4.88, ptr @.str.5.89, ptr @.str.6.90, ptr @.str.7.91, ptr @.str.8.92, ptr @.str.9.93, ptr null], align 16, !dbg !613
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !626
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !640
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !678
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !685
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !642
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !687
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !630
@.str.10.96 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !647
@.str.11.94 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !649
@.str.12.97 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !651
@.str.13.95 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !653
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !655
@.str.112 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !693
@.str.1.113 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !696
@.str.2.114 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !698
@.str.3.115 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !700
@.str.4.116 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !702
@.str.5.117 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !704
@.str.6.118 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !709
@.str.7.119 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !714
@.str.8.120 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !716
@.str.9.121 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !721
@.str.10.122 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !726
@.str.11.123 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !731
@.str.12.124 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !736
@.str.13.125 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !738
@.str.14.126 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !743
@.str.15.127 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !748
@.str.16.128 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !750
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.133 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !752
@.str.18.134 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !754
@.str.19.135 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !756
@.str.20.136 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !758
@.str.21.137 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !760
@.str.22.138 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !762
@.str.23.139 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !764
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !766
@.str.152 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !774
@.str.1.150 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !777
@.str.2.151 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !779
@.str.155 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !781
@.str.1.156 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1, !dbg !784
@.str.2.157 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1, !dbg !786
@exit_failure = dso_local global i32 1, align 4, !dbg !791
@.str.3.158 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1, !dbg !797
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !799
@.str.167 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !817
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !820

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !931 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !935, metadata !DIExpression()), !dbg !936
  %2 = icmp eq i32 %0, 0, !dbg !937
  br i1 %2, label %8, label %3, !dbg !939

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !940, !tbaa !942
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #42, !dbg !940
  %6 = load ptr, ptr @program_name, align 8, !dbg !940, !tbaa !942
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #42, !dbg !940
  br label %51, !dbg !940

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #42, !dbg !946
  %10 = load ptr, ptr @program_name, align 8, !dbg !946, !tbaa !942
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #42, !dbg !946
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #42, !dbg !948
  %13 = load ptr, ptr @stdout, align 8, !dbg !948, !tbaa !942
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !948
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #42, !dbg !949
  %16 = load ptr, ptr @stdout, align 8, !dbg !949, !tbaa !942
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !949
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #42, !dbg !950
  %19 = load ptr, ptr @stdout, align 8, !dbg !950, !tbaa !942
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !950
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #42, !dbg !951
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !951
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #42, !dbg !952
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !952
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #42, !dbg !953
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !953
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #42, !dbg !954
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !954
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #42, !dbg !955
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !955
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #42, !dbg !956
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !956
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #42, !dbg !957
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !957
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #42, !dbg !958
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !958
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #42, !dbg !959
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !959
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #42, !dbg !960
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !960
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #42, !dbg !961
  %32 = load ptr, ptr @stdout, align 8, !dbg !961, !tbaa !942
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !961
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #42, !dbg !962
  %35 = load ptr, ptr @program_name, align 8, !dbg !962, !tbaa !942
  %36 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef %35, ptr noundef %35) #42, !dbg !962
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !963, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata !982, metadata !976, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata ptr poison, metadata !975, metadata !DIExpression()), !dbg !980
  tail call void @emit_bug_reporting_address() #42, !dbg !983
  %37 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #42, !dbg !984
  call void @llvm.dbg.value(metadata ptr %37, metadata !978, metadata !DIExpression()), !dbg !980
  %38 = icmp eq ptr %37, null, !dbg !985
  br i1 %38, label %46, label %39, !dbg !987

39:                                               ; preds = %8
  %40 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(4) @.str.59, i64 noundef 3) #43, !dbg !988
  %41 = icmp eq i32 %40, 0, !dbg !988
  br i1 %41, label %46, label %42, !dbg !989

42:                                               ; preds = %39
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #42, !dbg !990
  %44 = load ptr, ptr @stdout, align 8, !dbg !990, !tbaa !942
  %45 = tail call i32 @fputs_unlocked(ptr noundef %43, ptr noundef %44), !dbg !990
  br label %46, !dbg !992

46:                                               ; preds = %8, %39, %42
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !975, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !979, metadata !DIExpression()), !dbg !980
  %47 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #42, !dbg !993
  %48 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %47, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.5) #42, !dbg !993
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #42, !dbg !994
  %50 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %49, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.63) #42, !dbg !994
  br label %51

51:                                               ; preds = %46, %3
  tail call void @exit(i32 noundef %0) #44, !dbg !995
  unreachable, !dbg !995
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !996 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1000 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1006 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1009 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !210 {
  tail call void @llvm.dbg.value(metadata ptr @.str.5, metadata !214, metadata !DIExpression()), !dbg !1013
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !215, metadata !DIExpression()), !dbg !1013
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1014, !tbaa !1015
  %3 = icmp eq i32 %2, -1, !dbg !1017
  br i1 %3, label %4, label %16, !dbg !1018

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.29) #42, !dbg !1019
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !216, metadata !DIExpression()), !dbg !1020
  %6 = icmp eq ptr %5, null, !dbg !1021
  br i1 %6, label %14, label %7, !dbg !1022

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1023, !tbaa !1024
  %9 = icmp eq i8 %8, 0, !dbg !1023
  br i1 %9, label %14, label %10, !dbg !1025

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1026, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !1032, metadata !DIExpression()), !dbg !1033
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.30) #43, !dbg !1035
  %12 = icmp eq i32 %11, 0, !dbg !1036
  %13 = zext i1 %12 to i32, !dbg !1025
  br label %14, !dbg !1025

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1037, !tbaa !1015
  br label %16, !dbg !1038

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1039
  %18 = icmp eq i32 %17, 0, !dbg !1039
  br i1 %18, label %22, label %19, !dbg !1041

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1042, !tbaa !942
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1042
  br label %124, !dbg !1044

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !219, metadata !DIExpression()), !dbg !1013
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.31) #43, !dbg !1045
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1046
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !220, metadata !DIExpression()), !dbg !1013
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #43, !dbg !1047
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !221, metadata !DIExpression()), !dbg !1013
  %26 = icmp eq ptr %25, null, !dbg !1048
  br i1 %26, label %54, label %27, !dbg !1049

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1050
  br i1 %28, label %54, label %29, !dbg !1051

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !222, metadata !DIExpression()), !dbg !1052
  tail call void @llvm.dbg.value(metadata i64 0, metadata !226, metadata !DIExpression()), !dbg !1052
  %30 = icmp ult ptr %24, %25, !dbg !1053
  br i1 %30, label %31, label %54, !dbg !1054

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #45, !dbg !1013
  %33 = load ptr, ptr %32, align 8, !tbaa !942
  br label %34, !dbg !1054

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !222, metadata !DIExpression()), !dbg !1052
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !226, metadata !DIExpression()), !dbg !1052
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1055
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !222, metadata !DIExpression()), !dbg !1052
  %38 = load i8, ptr %35, align 1, !dbg !1055, !tbaa !1024
  %39 = sext i8 %38 to i64, !dbg !1055
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1055
  %41 = load i16, ptr %40, align 2, !dbg !1055, !tbaa !1056
  %42 = freeze i16 %41, !dbg !1058
  %43 = lshr i16 %42, 13, !dbg !1058
  %44 = and i16 %43, 1, !dbg !1058
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1059
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !226, metadata !DIExpression()), !dbg !1052
  %47 = icmp ult ptr %37, %25, !dbg !1053
  %48 = icmp ult i64 %46, 2, !dbg !1060
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1060
  br i1 %49, label %34, label %50, !dbg !1054, !llvm.loop !1061

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1063
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1065
  %53 = zext i1 %51 to i8, !dbg !1065
  br label %54, !dbg !1065

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1013
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !1013
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !219, metadata !DIExpression()), !dbg !1013
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !221, metadata !DIExpression()), !dbg !1013
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.32) #43, !dbg !1066
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !227, metadata !DIExpression()), !dbg !1013
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1067
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !228, metadata !DIExpression()), !dbg !1013
  br label %59, !dbg !1068

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !1013
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !1013
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !219, metadata !DIExpression()), !dbg !1013
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !228, metadata !DIExpression()), !dbg !1013
  %62 = load i8, ptr %60, align 1, !dbg !1069, !tbaa !1024
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !1070

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1071
  %65 = load i8, ptr %64, align 1, !dbg !1074, !tbaa !1024
  %66 = icmp eq i8 %65, 45, !dbg !1075
  %67 = select i1 %66, i8 0, i8 %61, !dbg !1076
  br label %68, !dbg !1076

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !1013
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !219, metadata !DIExpression()), !dbg !1013
  %70 = tail call ptr @__ctype_b_loc() #45, !dbg !1077
  %71 = load ptr, ptr %70, align 8, !dbg !1077, !tbaa !942
  %72 = sext i8 %62 to i64, !dbg !1077
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1077
  %74 = load i16, ptr %73, align 2, !dbg !1077, !tbaa !1056
  %75 = and i16 %74, 8192, !dbg !1077
  %76 = icmp eq i16 %75, 0, !dbg !1077
  br i1 %76, label %92, label %77, !dbg !1079

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1080
  br i1 %78, label %94, label %79, !dbg !1083

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1084
  %81 = load i8, ptr %80, align 1, !dbg !1084, !tbaa !1024
  %82 = sext i8 %81 to i64, !dbg !1084
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1084
  %84 = load i16, ptr %83, align 2, !dbg !1084, !tbaa !1056
  %85 = and i16 %84, 8192, !dbg !1084
  %86 = icmp eq i16 %85, 0, !dbg !1084
  br i1 %86, label %87, label %94, !dbg !1085

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1086
  %89 = icmp ne i8 %88, 0, !dbg !1086
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1088
  br i1 %91, label %92, label %94, !dbg !1088

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1089
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !228, metadata !DIExpression()), !dbg !1013
  br label %59, !dbg !1068, !llvm.loop !1090

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1092
  %96 = load ptr, ptr @stdout, align 8, !dbg !1092, !tbaa !942
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1092
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1026, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata !982, metadata !1032, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1026, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata !982, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1026, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata !982, metadata !1032, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1026, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata !982, metadata !1032, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1026, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata !982, metadata !1032, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1026, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata !982, metadata !1032, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1026, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata !982, metadata !1032, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1026, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata !982, metadata !1032, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1026, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata !982, metadata !1032, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1026, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata !982, metadata !1032, metadata !DIExpression()), !dbg !1111
  tail call void @llvm.dbg.value(metadata ptr @.str.5, metadata !282, metadata !DIExpression()), !dbg !1013
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.46, i64 noundef 6) #43, !dbg !1113
  %99 = icmp eq i32 %98, 0, !dbg !1113
  br i1 %99, label %103, label %100, !dbg !1115

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.47, i64 noundef 9) #43, !dbg !1116
  %102 = icmp eq i32 %101, 0, !dbg !1116
  br i1 %102, label %103, label %106, !dbg !1117

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1118
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.5, i32 noundef %104, ptr noundef %55) #42, !dbg !1118
  br label %109, !dbg !1120

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1121
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.5, i32 noundef %107, ptr noundef %55) #42, !dbg !1121
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1123, !tbaa !942
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %110), !dbg !1123
  %112 = load ptr, ptr @stdout, align 8, !dbg !1124, !tbaa !942
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %112), !dbg !1124
  %114 = ptrtoint ptr %60 to i64, !dbg !1125
  %115 = sub i64 %114, %95, !dbg !1125
  %116 = load ptr, ptr @stdout, align 8, !dbg !1125, !tbaa !942
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1125
  %118 = load ptr, ptr @stdout, align 8, !dbg !1126, !tbaa !942
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.54, ptr noundef %118), !dbg !1126
  %120 = load ptr, ptr @stdout, align 8, !dbg !1127, !tbaa !942
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.55, ptr noundef %120), !dbg !1127
  %122 = load ptr, ptr @stdout, align 8, !dbg !1128, !tbaa !942
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1128
  br label %124, !dbg !1129

124:                                              ; preds = %109, %19
  ret void, !dbg !1129
}

; Function Attrs: nounwind
declare !dbg !1130 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1134 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1138 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1140 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1143 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1146 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1149 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1152 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1158 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1159 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1165 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1170, metadata !DIExpression()), !dbg !1173
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1171, metadata !DIExpression()), !dbg !1173
  %3 = load ptr, ptr %1, align 8, !dbg !1174, !tbaa !942
  tail call void @set_program_name(ptr noundef %3) #42, !dbg !1175
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.18) #42, !dbg !1176
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #42, !dbg !1177
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.19) #42, !dbg !1178
  %7 = tail call zeroext i1 @hard_locale(i32 noundef 3) #42, !dbg !1179
  %8 = zext i1 %7 to i8, !dbg !1180
  store i8 %8, ptr @hard_LC_COLLATE, align 1, !dbg !1180, !tbaa !1181
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #42, !dbg !1183
  br label %10, !dbg !1184

10:                                               ; preds = %36, %2
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.21, ptr noundef nonnull @long_options, ptr noundef null) #42, !dbg !1185
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1172, metadata !DIExpression()), !dbg !1173
  switch i32 %11, label %43 [
    i32 -1, label %44
    i32 49, label %12
    i32 50, label %13
    i32 51, label %14
    i32 122, label %15
    i32 129, label %16
    i32 128, label %17
    i32 130, label %18
    i32 131, label %35
    i32 -130, label %37
    i32 -131, label %38
  ], !dbg !1184

12:                                               ; preds = %10
  store i1 true, ptr @only_file_1, align 1, !dbg !1186
  br label %36, !dbg !1188

13:                                               ; preds = %10
  store i1 true, ptr @only_file_2, align 1, !dbg !1189
  br label %36, !dbg !1190

14:                                               ; preds = %10
  store i1 true, ptr @both, align 1, !dbg !1191
  br label %36, !dbg !1192

15:                                               ; preds = %10
  store i1 true, ptr @delim, align 1, !dbg !1193
  br label %36, !dbg !1194

16:                                               ; preds = %10
  store i32 2, ptr @check_input_order, align 4, !dbg !1195, !tbaa !1015
  br label %36, !dbg !1196

17:                                               ; preds = %10
  store i32 1, ptr @check_input_order, align 4, !dbg !1197, !tbaa !1015
  br label %36, !dbg !1198

18:                                               ; preds = %10
  %19 = load i64, ptr @col_sep_len, align 8, !dbg !1199, !tbaa !1201
  %20 = icmp eq i64 %19, 0, !dbg !1199
  %21 = load ptr, ptr @optarg, align 8, !dbg !1203, !tbaa !942
  br i1 %20, label %28, label %22, !dbg !1204

22:                                               ; preds = %18
  %23 = load ptr, ptr @col_sep, align 8, !dbg !1205, !tbaa !942
  call void @llvm.dbg.value(metadata ptr %23, metadata !1026, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata ptr %21, metadata !1032, metadata !DIExpression()), !dbg !1206
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %21) #43, !dbg !1208
  %25 = icmp eq i32 %24, 0, !dbg !1209
  br i1 %25, label %28, label %26, !dbg !1210

26:                                               ; preds = %22
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #42, !dbg !1211
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %27) #42, !dbg !1211
  unreachable, !dbg !1211

28:                                               ; preds = %22, %18
  store ptr %21, ptr @col_sep, align 8, !dbg !1212, !tbaa !942
  %29 = load i8, ptr %21, align 1, !dbg !1213, !tbaa !1024
  %30 = icmp eq i8 %29, 0, !dbg !1213
  br i1 %30, label %33, label %31, !dbg !1213

31:                                               ; preds = %28
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %21) #43, !dbg !1214
  br label %33, !dbg !1213

33:                                               ; preds = %28, %31
  %34 = phi i64 [ %32, %31 ], [ 1, %28 ], !dbg !1213
  store i64 %34, ptr @col_sep_len, align 8, !dbg !1215, !tbaa !1201
  br label %36, !dbg !1216

35:                                               ; preds = %10
  store i1 true, ptr @total_option, align 1, !dbg !1217
  br label %36, !dbg !1218

36:                                               ; preds = %35, %33, %17, %16, %15, %14, %13, %12
  br label %10, !dbg !1185, !llvm.loop !1219

37:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #46, !dbg !1221
  unreachable, !dbg !1221

38:                                               ; preds = %10
  %39 = load ptr, ptr @stdout, align 8, !dbg !1222, !tbaa !942
  %40 = load ptr, ptr @Version, align 8, !dbg !1222, !tbaa !942
  %41 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24) #42, !dbg !1222
  %42 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.25) #42, !dbg !1222
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %39, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.23, ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef null) #42, !dbg !1222
  tail call void @exit(i32 noundef 0) #44, !dbg !1222
  unreachable, !dbg !1222

43:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #46, !dbg !1223
  unreachable, !dbg !1223

44:                                               ; preds = %10
  %45 = load i64, ptr @col_sep_len, align 8, !dbg !1224, !tbaa !1201
  %46 = icmp eq i64 %45, 0, !dbg !1224
  br i1 %46, label %47, label %48, !dbg !1226

47:                                               ; preds = %44
  store i64 1, ptr @col_sep_len, align 8, !dbg !1227, !tbaa !1201
  br label %48, !dbg !1228

48:                                               ; preds = %47, %44
  %49 = load i32, ptr @optind, align 4, !dbg !1229, !tbaa !1015
  %50 = sub nsw i32 %0, %49, !dbg !1231
  %51 = icmp slt i32 %50, 2, !dbg !1232
  br i1 %51, label %52, label %64, !dbg !1233

52:                                               ; preds = %48
  %53 = icmp slt i32 %49, %0, !dbg !1234
  br i1 %53, label %56, label %54, !dbg !1237

54:                                               ; preds = %52
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #42, !dbg !1238
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %55) #42, !dbg !1238
  br label %63, !dbg !1238

56:                                               ; preds = %52
  %57 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #42, !dbg !1239
  %58 = sext i32 %0 to i64, !dbg !1239
  %59 = getelementptr ptr, ptr %1, i64 %58, !dbg !1239
  %60 = getelementptr ptr, ptr %59, i64 -1, !dbg !1239
  %61 = load ptr, ptr %60, align 8, !dbg !1239, !tbaa !942
  %62 = tail call ptr @quote(ptr noundef %61) #42, !dbg !1239
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %57, ptr noundef %62) #42, !dbg !1239
  br label %63

63:                                               ; preds = %56, %54
  tail call void @usage(i32 noundef 1) #46, !dbg !1240
  unreachable, !dbg !1240

64:                                               ; preds = %48
  %65 = icmp eq i32 %50, 2, !dbg !1241
  br i1 %65, label %74, label %66, !dbg !1243

66:                                               ; preds = %64
  %67 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #42, !dbg !1244
  %68 = load i32, ptr @optind, align 4, !dbg !1244, !tbaa !1015
  %69 = sext i32 %68 to i64, !dbg !1244
  %70 = getelementptr ptr, ptr %1, i64 %69, !dbg !1244
  %71 = getelementptr ptr, ptr %70, i64 2, !dbg !1244
  %72 = load ptr, ptr %71, align 8, !dbg !1244, !tbaa !942
  %73 = tail call ptr @quote(ptr noundef %72) #42, !dbg !1244
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %67, ptr noundef %73) #42, !dbg !1244
  tail call void @usage(i32 noundef 1) #46, !dbg !1246
  unreachable, !dbg !1246

74:                                               ; preds = %64
  %75 = sext i32 %49 to i64, !dbg !1247
  %76 = getelementptr inbounds ptr, ptr %1, i64 %75, !dbg !1247
  tail call fastcc void @compare_files(ptr noundef nonnull %76) #46, !dbg !1248
  unreachable, !dbg !1248
}

; Function Attrs: nounwind
declare !dbg !1249 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1252 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1253 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1256 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1262 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @compare_files(ptr nocapture noundef readonly %0) unnamed_addr #0 !dbg !1265 {
  %2 = alloca [2 x [4 x %struct.linebuffer]], align 16, !DIAssignID !1314
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1270, metadata !DIExpression(), metadata !1314, metadata ptr %2, metadata !DIExpression()), !dbg !1315
  %3 = alloca [2 x [4 x ptr]], align 16, !DIAssignID !1316
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1283, metadata !DIExpression(), metadata !1316, metadata ptr %3, metadata !DIExpression()), !dbg !1315
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1269, metadata !DIExpression()), !dbg !1315
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %2) #42, !dbg !1317
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #42, !dbg !1318
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1295, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1295, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1297, metadata !DIExpression()), !dbg !1320
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1297, metadata !DIExpression()), !dbg !1320
  call void @initbuffer(ptr noundef nonnull %2) #42, !dbg !1321
  store ptr %2, ptr %3, align 16, !dbg !1324, !tbaa !942
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1297, metadata !DIExpression()), !dbg !1320
  %4 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 0, i64 1, !dbg !1325
  call void @initbuffer(ptr noundef nonnull %4) #42, !dbg !1321
  %5 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 1, !dbg !1326
  store ptr %4, ptr %5, align 8, !dbg !1324, !tbaa !942
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1297, metadata !DIExpression()), !dbg !1320
  %6 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 0, i64 2, !dbg !1325
  call void @initbuffer(ptr noundef nonnull %6) #42, !dbg !1321
  %7 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 2, !dbg !1326
  store ptr %6, ptr %7, align 16, !dbg !1324, !tbaa !942
  tail call void @llvm.dbg.value(metadata i64 3, metadata !1297, metadata !DIExpression()), !dbg !1320
  %8 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 0, i64 3, !dbg !1325
  call void @initbuffer(ptr noundef nonnull %8) #42, !dbg !1321
  %9 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 3, !dbg !1326
  store ptr %8, ptr %9, align 8, !dbg !1324, !tbaa !942
  tail call void @llvm.dbg.value(metadata i64 4, metadata !1297, metadata !DIExpression()), !dbg !1320
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1315
  %10 = load ptr, ptr %0, align 8, !dbg !1327, !tbaa !942
  call void @llvm.dbg.value(metadata ptr %10, metadata !1026, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata ptr @.str.72, metadata !1032, metadata !DIExpression()), !dbg !1328
  %11 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.72) #43, !dbg !1330
  %12 = icmp eq i32 %11, 0, !dbg !1331
  br i1 %12, label %44, label %46, !dbg !1332

13:                                               ; preds = %58
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1295, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1297, metadata !DIExpression()), !dbg !1320
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1297, metadata !DIExpression()), !dbg !1320
  %14 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 1, i64 0, !dbg !1325
  call void @initbuffer(ptr noundef nonnull %14) #42, !dbg !1321
  %15 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 0, !dbg !1326
  store ptr %14, ptr %15, align 16, !dbg !1324, !tbaa !942
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1297, metadata !DIExpression()), !dbg !1320
  %16 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 1, i64 1, !dbg !1325
  call void @initbuffer(ptr noundef nonnull %16) #42, !dbg !1321
  %17 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 1, !dbg !1326
  store ptr %16, ptr %17, align 8, !dbg !1324, !tbaa !942
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1297, metadata !DIExpression()), !dbg !1320
  %18 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 1, i64 2, !dbg !1325
  call void @initbuffer(ptr noundef nonnull %18) #42, !dbg !1321
  %19 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 2, !dbg !1326
  store ptr %18, ptr %19, align 16, !dbg !1324, !tbaa !942
  tail call void @llvm.dbg.value(metadata i64 3, metadata !1297, metadata !DIExpression()), !dbg !1320
  %20 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 1, i64 3, !dbg !1325
  call void @initbuffer(ptr noundef nonnull %20) #42, !dbg !1321
  %21 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 3, !dbg !1326
  store ptr %20, ptr %21, align 8, !dbg !1324, !tbaa !942
  tail call void @llvm.dbg.value(metadata i64 4, metadata !1297, metadata !DIExpression()), !dbg !1320
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !1315
  %22 = getelementptr inbounds ptr, ptr %0, i64 1, !dbg !1327
  %23 = load ptr, ptr %22, align 8, !dbg !1327, !tbaa !942
  call void @llvm.dbg.value(metadata ptr %23, metadata !1026, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata ptr @.str.72, metadata !1032, metadata !DIExpression()), !dbg !1328
  %24 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(2) @.str.72) #43, !dbg !1330
  %25 = icmp eq i32 %24, 0, !dbg !1331
  br i1 %25, label %28, label %26, !dbg !1332

26:                                               ; preds = %13
  %27 = call ptr @fopen_safer(ptr noundef %23, ptr noundef nonnull @.str.73) #42, !dbg !1333
  br label %30, !dbg !1332

28:                                               ; preds = %13
  %29 = load ptr, ptr @stdin, align 8, !dbg !1334, !tbaa !942
  br label %30, !dbg !1332

30:                                               ; preds = %28, %26
  %31 = phi ptr [ %29, %28 ], [ %27, %26 ], !dbg !1332
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1288, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1315
  %32 = icmp eq ptr %31, null, !dbg !1335
  br i1 %32, label %51, label %33, !dbg !1337

33:                                               ; preds = %30
  call void @fadvise(ptr noundef nonnull %31, i32 noundef 2) #42, !dbg !1338
  %34 = load i1, ptr @delim, align 1, !dbg !1339
  %35 = select i1 %34, i8 0, i8 10, !dbg !1339
  %36 = call ptr @readlinebuffer_delim(ptr noundef nonnull %14, ptr noundef nonnull %31, i8 noundef signext %35) #42, !dbg !1340
  tail call void @llvm.dbg.value(metadata ptr %36, metadata !1280, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1341, metadata !DIExpression()), !dbg !1347
  %37 = load i32, ptr %31, align 8, !dbg !1350, !tbaa !1351
  %38 = and i32 %37, 32, !dbg !1353
  %39 = icmp eq i32 %38, 0, !dbg !1353
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1295, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1319
  br i1 %39, label %40, label %65, !dbg !1354

40:                                               ; preds = %33
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1295, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1315
  %41 = icmp ne ptr %61, null, !dbg !1355
  %42 = icmp ne ptr %36, null, !dbg !1356
  %43 = select i1 %41, i1 true, i1 %42, !dbg !1356
  br i1 %43, label %78, label %72, !dbg !1357

44:                                               ; preds = %1
  %45 = load ptr, ptr @stdin, align 8, !dbg !1334, !tbaa !942
  br label %48, !dbg !1332

46:                                               ; preds = %1
  %47 = call ptr @fopen_safer(ptr noundef %10, ptr noundef nonnull @.str.73) #42, !dbg !1333
  br label %48, !dbg !1332

48:                                               ; preds = %46, %44
  %49 = phi ptr [ %45, %44 ], [ %47, %46 ], !dbg !1332
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !1288, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1315
  %50 = icmp eq ptr %49, null, !dbg !1335
  br i1 %50, label %51, label %58, !dbg !1337

51:                                               ; preds = %30, %48
  %52 = phi i64 [ 0, %48 ], [ 1, %30 ]
  %53 = getelementptr inbounds ptr, ptr %0, i64 %52
  %54 = tail call ptr @__errno_location() #45, !dbg !1358
  %55 = load i32, ptr %54, align 4, !dbg !1358, !tbaa !1015
  %56 = load ptr, ptr %53, align 8, !dbg !1358, !tbaa !942
  %57 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %56) #42, !dbg !1358
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %55, ptr noundef nonnull @.str.74, ptr noundef %57) #42, !dbg !1358
  unreachable, !dbg !1358

58:                                               ; preds = %48
  call void @fadvise(ptr noundef nonnull %49, i32 noundef 2) #42, !dbg !1338
  %59 = load i1, ptr @delim, align 1, !dbg !1339
  %60 = select i1 %59, i8 0, i8 10, !dbg !1339
  %61 = call ptr @readlinebuffer_delim(ptr noundef nonnull %2, ptr noundef nonnull %49, i8 noundef signext %60) #42, !dbg !1340
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1280, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !1341, metadata !DIExpression()), !dbg !1347
  %62 = load i32, ptr %49, align 8, !dbg !1350, !tbaa !1351
  %63 = and i32 %62, 32, !dbg !1353
  %64 = icmp eq i32 %63, 0, !dbg !1353
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1295, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1319
  br i1 %64, label %13, label %65, !dbg !1354

65:                                               ; preds = %33, %58
  %66 = phi i64 [ 0, %58 ], [ 1, %33 ]
  %67 = getelementptr inbounds ptr, ptr %0, i64 %66
  %68 = tail call ptr @__errno_location() #45, !dbg !1359
  %69 = load i32, ptr %68, align 4, !dbg !1359, !tbaa !1015
  %70 = load ptr, ptr %67, align 8, !dbg !1359, !tbaa !942
  %71 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %70) #42, !dbg !1359
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %69, ptr noundef nonnull @.str.74, ptr noundef %71) #42, !dbg !1359
  unreachable, !dbg !1359

72:                                               ; preds = %214, %40
  %73 = phi i64 [ 0, %40 ], [ %218, %214 ], !dbg !1360
  %74 = phi i64 [ 0, %40 ], [ %219, %214 ], !dbg !1315
  %75 = phi i64 [ 0, %40 ], [ %220, %214 ], !dbg !1360
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1312, metadata !DIExpression()), !dbg !1361
  %76 = call i32 @rpl_fclose(ptr noundef nonnull %49) #42, !dbg !1362
  %77 = icmp eq i32 %76, 0, !dbg !1365
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1312, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1361
  br i1 %77, label %227, label %232, !dbg !1366

78:                                               ; preds = %40, %214
  %79 = phi i32 [ %221, %214 ], [ 0, %40 ], !dbg !1367
  %80 = phi i32 [ %222, %214 ], [ 0, %40 ], !dbg !1368
  %81 = phi i32 [ %217, %214 ], [ 0, %40 ], !dbg !1367
  %82 = phi i32 [ %216, %214 ], [ 0, %40 ], !dbg !1368
  %83 = phi ptr [ %215, %214 ], [ %61, %40 ], !dbg !1369
  %84 = phi ptr [ %223, %214 ], [ %36, %40 ], !dbg !1369
  %85 = phi i64 [ %220, %214 ], [ 0, %40 ]
  %86 = phi i64 [ %219, %214 ], [ 0, %40 ]
  %87 = phi i64 [ %218, %214 ], [ 0, %40 ]
  tail call void @llvm.dbg.value(metadata ptr %84, metadata !1280, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1280, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1303, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !1370
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1303, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1370
  %88 = icmp eq ptr %83, null, !dbg !1371
  br i1 %88, label %89, label %90, !dbg !1372

89:                                               ; preds = %78
  store i1 true, ptr @seen_unpairable, align 1, !dbg !1373
  br label %137, !dbg !1376

90:                                               ; preds = %78
  %91 = icmp eq ptr %84, null, !dbg !1377
  br i1 %91, label %92, label %93, !dbg !1378

92:                                               ; preds = %90
  store i1 true, ptr @seen_unpairable, align 1, !dbg !1373
  br label %135, !dbg !1376

93:                                               ; preds = %90
  %94 = load i8, ptr @hard_LC_COLLATE, align 1, !dbg !1379, !tbaa !1181, !range !1380, !noundef !982
  %95 = icmp eq i8 %94, 0, !dbg !1379
  br i1 %95, label %108, label %96, !dbg !1381

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.linebuffer, ptr %83, i64 0, i32 2, !dbg !1382
  %98 = load ptr, ptr %97, align 8, !dbg !1382, !tbaa !1383
  %99 = getelementptr inbounds %struct.linebuffer, ptr %83, i64 0, i32 1, !dbg !1385
  %100 = load i64, ptr %99, align 8, !dbg !1385, !tbaa !1386
  %101 = add nsw i64 %100, -1, !dbg !1387
  %102 = getelementptr inbounds %struct.linebuffer, ptr %84, i64 0, i32 2, !dbg !1388
  %103 = load ptr, ptr %102, align 8, !dbg !1388, !tbaa !1383
  %104 = getelementptr inbounds %struct.linebuffer, ptr %84, i64 0, i32 1, !dbg !1389
  %105 = load i64, ptr %104, align 8, !dbg !1389, !tbaa !1386
  %106 = add nsw i64 %105, -1, !dbg !1390
  %107 = call i32 @xmemcoll(ptr noundef %98, i64 noundef %101, ptr noundef %103, i64 noundef %106) #42, !dbg !1391
  tail call void @llvm.dbg.value(metadata i32 %107, metadata !1301, metadata !DIExpression()), !dbg !1370
  br label %127, !dbg !1392

108:                                              ; preds = %93
  %109 = getelementptr inbounds %struct.linebuffer, ptr %83, i64 0, i32 1, !dbg !1393
  %110 = load i64, ptr %109, align 8, !dbg !1393, !tbaa !1386
  %111 = getelementptr inbounds %struct.linebuffer, ptr %84, i64 0, i32 1, !dbg !1393
  %112 = load i64, ptr %111, align 8, !dbg !1393, !tbaa !1386
  %113 = call i64 @llvm.smin.i64(i64 %110, i64 %112), !dbg !1393
  %114 = add nsw i64 %113, -1, !dbg !1394
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !1304, metadata !DIExpression()), !dbg !1395
  %115 = getelementptr inbounds %struct.linebuffer, ptr %83, i64 0, i32 2, !dbg !1396
  %116 = load ptr, ptr %115, align 8, !dbg !1396, !tbaa !1383
  %117 = getelementptr inbounds %struct.linebuffer, ptr %84, i64 0, i32 2, !dbg !1397
  %118 = load ptr, ptr %117, align 8, !dbg !1397, !tbaa !1383
  %119 = call i32 @memcmp(ptr noundef %116, ptr noundef %118, i64 noundef %114) #43, !dbg !1398
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !1301, metadata !DIExpression()), !dbg !1370
  %120 = icmp eq i32 %119, 0, !dbg !1399
  br i1 %120, label %121, label %132, !dbg !1401

121:                                              ; preds = %108
  %122 = icmp slt i64 %110, %112, !dbg !1393
  %123 = icmp sgt i64 %110, %112, !dbg !1402
  %124 = zext i1 %123 to i32, !dbg !1402
  %125 = sext i1 %122 to i32, !dbg !1402
  %126 = add nsw i32 %125, %124, !dbg !1402
  tail call void @llvm.dbg.value(metadata i32 %126, metadata !1301, metadata !DIExpression()), !dbg !1370
  br label %127, !dbg !1403

127:                                              ; preds = %121, %96
  %128 = phi i32 [ %107, %96 ], [ %126, %121 ], !dbg !1404
  tail call void @llvm.dbg.value(metadata i32 %128, metadata !1301, metadata !DIExpression()), !dbg !1370
  %129 = icmp eq i32 %128, 0, !dbg !1405
  br i1 %129, label %130, label %132, !dbg !1406

130:                                              ; preds = %127
  %131 = add i64 %86, 1, !dbg !1407
  tail call void @llvm.dbg.value(metadata i64 %131, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1315
  call fastcc void @writeline(ptr noundef nonnull %84, i32 noundef 3), !dbg !1409
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %131, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1303, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1370
  br label %139, !dbg !1410

132:                                              ; preds = %108, %127
  %133 = phi i32 [ %128, %127 ], [ %119, %108 ]
  store i1 true, ptr @seen_unpairable, align 1, !dbg !1373
  %134 = icmp slt i32 %133, 1, !dbg !1411
  br i1 %134, label %135, label %137, !dbg !1376

135:                                              ; preds = %132, %92
  %136 = add i64 %85, 1, !dbg !1413
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1315
  call fastcc void @writeline(ptr noundef nonnull %83, i32 noundef 1), !dbg !1415
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1315
  br label %139, !dbg !1410

137:                                              ; preds = %89, %132
  %138 = add i64 %87, 1, !dbg !1416
  tail call void @llvm.dbg.value(metadata i64 %138, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1315
  call fastcc void @writeline(ptr noundef %84, i32 noundef 2), !dbg !1418
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %138, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1303, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !1370
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1303, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1370
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1280, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1310, metadata !DIExpression()), !dbg !1419
  br label %179, !dbg !1420

139:                                              ; preds = %130, %135
  %140 = phi i1 [ false, %130 ], [ true, %135 ]
  %141 = phi i64 [ %131, %130 ], [ %86, %135 ]
  %142 = phi i64 [ %85, %130 ], [ %136, %135 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1303, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !1370
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1303, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1370
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1310, metadata !DIExpression()), !dbg !1419
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1315
  %143 = add nsw i32 %82, 1, !dbg !1422
  %144 = and i32 %143, 3, !dbg !1425
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1315
  %145 = zext nneg i32 %144 to i64
  %146 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 %145, !dbg !1426
  %147 = load ptr, ptr %146, align 8, !dbg !1426, !tbaa !942
  %148 = load i1, ptr @delim, align 1, !dbg !1427
  %149 = select i1 %148, i8 0, i8 10, !dbg !1427
  %150 = call ptr @readlinebuffer_delim(ptr noundef %147, ptr noundef nonnull %49, i8 noundef signext %149) #42, !dbg !1428
  tail call void @llvm.dbg.value(metadata ptr %150, metadata !1280, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1315
  %151 = icmp eq ptr %150, null, !dbg !1429
  br i1 %151, label %156, label %152, !dbg !1431

152:                                              ; preds = %139
  %153 = sext i32 %82 to i64, !dbg !1432
  %154 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 %153, !dbg !1432
  %155 = load ptr, ptr %154, align 8, !dbg !1432, !tbaa !942
  call fastcc void @check_order(ptr noundef %155, ptr noundef nonnull %150, i32 noundef 1), !dbg !1433
  br label %167, !dbg !1433

156:                                              ; preds = %139
  %157 = sext i32 %81 to i64, !dbg !1434
  %158 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 %157, !dbg !1434
  %159 = load ptr, ptr %158, align 8, !dbg !1434, !tbaa !942
  %160 = getelementptr inbounds %struct.linebuffer, ptr %159, i64 0, i32 2, !dbg !1436
  %161 = load ptr, ptr %160, align 8, !dbg !1436, !tbaa !1383
  %162 = icmp eq ptr %161, null, !dbg !1434
  br i1 %162, label %167, label %163, !dbg !1437

163:                                              ; preds = %156
  %164 = sext i32 %82 to i64, !dbg !1438
  %165 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 %164, !dbg !1438
  %166 = load ptr, ptr %165, align 8, !dbg !1438, !tbaa !942
  call fastcc void @check_order(ptr noundef nonnull %159, ptr noundef %166, i32 noundef 1), !dbg !1439
  br label %167, !dbg !1439

167:                                              ; preds = %156, %163, %152
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !1341, metadata !DIExpression()), !dbg !1440
  %168 = load i32, ptr %49, align 8, !dbg !1443, !tbaa !1351
  %169 = and i32 %168, 32, !dbg !1444
  %170 = icmp eq i32 %169, 0, !dbg !1444
  br i1 %170, label %178, label %171, !dbg !1445

171:                                              ; preds = %210, %167
  %172 = phi i64 [ 0, %167 ], [ 1, %210 ]
  %173 = tail call ptr @__errno_location() #45, !dbg !1446
  %174 = load i32, ptr %173, align 4, !dbg !1446, !tbaa !1015
  %175 = getelementptr inbounds ptr, ptr %0, i64 %172, !dbg !1446
  %176 = load ptr, ptr %175, align 8, !dbg !1446, !tbaa !942
  %177 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %176) #42, !dbg !1446
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %174, ptr noundef nonnull @.str.74, ptr noundef %177) #42, !dbg !1446
  unreachable, !dbg !1446

178:                                              ; preds = %167
  tail call void @llvm.dbg.value(metadata ptr %150, metadata !1280, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1310, metadata !DIExpression()), !dbg !1419
  br i1 %140, label %214, label %179, !dbg !1420

179:                                              ; preds = %137, %178
  %180 = phi ptr [ %83, %137 ], [ %150, %178 ]
  %181 = phi i32 [ %82, %137 ], [ %144, %178 ]
  %182 = phi i32 [ %81, %137 ], [ %82, %178 ]
  %183 = phi i64 [ %138, %137 ], [ %87, %178 ]
  %184 = phi i64 [ %86, %137 ], [ %141, %178 ]
  %185 = phi i64 [ %85, %137 ], [ %142, %178 ]
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1315
  %186 = add nsw i32 %80, 1, !dbg !1422
  %187 = and i32 %186, 3, !dbg !1425
  tail call void @llvm.dbg.value(metadata i32 %187, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1315
  %188 = zext nneg i32 %187 to i64
  %189 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 %188, !dbg !1426
  %190 = load ptr, ptr %189, align 8, !dbg !1426, !tbaa !942
  %191 = load i1, ptr @delim, align 1, !dbg !1427
  %192 = select i1 %191, i8 0, i8 10, !dbg !1427
  %193 = call ptr @readlinebuffer_delim(ptr noundef %190, ptr noundef nonnull %31, i8 noundef signext %192) #42, !dbg !1428
  tail call void @llvm.dbg.value(metadata ptr %193, metadata !1280, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1315
  %194 = icmp eq ptr %193, null, !dbg !1429
  br i1 %194, label %199, label %195, !dbg !1431

195:                                              ; preds = %179
  %196 = sext i32 %80 to i64, !dbg !1432
  %197 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 %196, !dbg !1432
  %198 = load ptr, ptr %197, align 8, !dbg !1432, !tbaa !942
  call fastcc void @check_order(ptr noundef %198, ptr noundef nonnull %193, i32 noundef 2), !dbg !1433
  br label %210, !dbg !1433

199:                                              ; preds = %179
  %200 = sext i32 %79 to i64, !dbg !1434
  %201 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 %200, !dbg !1434
  %202 = load ptr, ptr %201, align 8, !dbg !1434, !tbaa !942
  %203 = getelementptr inbounds %struct.linebuffer, ptr %202, i64 0, i32 2, !dbg !1436
  %204 = load ptr, ptr %203, align 8, !dbg !1436, !tbaa !1383
  %205 = icmp eq ptr %204, null, !dbg !1434
  br i1 %205, label %210, label %206, !dbg !1437

206:                                              ; preds = %199
  %207 = sext i32 %80 to i64, !dbg !1438
  %208 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 %207, !dbg !1438
  %209 = load ptr, ptr %208, align 8, !dbg !1438, !tbaa !942
  call fastcc void @check_order(ptr noundef nonnull %202, ptr noundef %209, i32 noundef 2), !dbg !1439
  br label %210, !dbg !1439

210:                                              ; preds = %206, %199, %195
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1341, metadata !DIExpression()), !dbg !1440
  %211 = load i32, ptr %31, align 8, !dbg !1443, !tbaa !1351
  %212 = and i32 %211, 32, !dbg !1444
  %213 = icmp eq i32 %212, 0, !dbg !1444
  br i1 %213, label %214, label %171, !dbg !1445

214:                                              ; preds = %210, %178
  %215 = phi ptr [ %150, %178 ], [ %180, %210 ]
  %216 = phi i32 [ %144, %178 ], [ %181, %210 ]
  %217 = phi i32 [ %82, %178 ], [ %182, %210 ]
  %218 = phi i64 [ %87, %178 ], [ %183, %210 ]
  %219 = phi i64 [ %141, %178 ], [ %184, %210 ]
  %220 = phi i64 [ %142, %178 ], [ %185, %210 ]
  %221 = phi i32 [ %79, %178 ], [ %80, %210 ], !dbg !1315
  %222 = phi i32 [ %80, %178 ], [ %187, %210 ], !dbg !1315
  %223 = phi ptr [ %84, %178 ], [ %193, %210 ], !dbg !1315
  tail call void @llvm.dbg.value(metadata ptr %223, metadata !1280, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 %222, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 %221, metadata !1285, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1310, metadata !DIExpression()), !dbg !1419
  tail call void @llvm.dbg.value(metadata i64 %220, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !1290, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1315
  %224 = icmp ne ptr %215, null, !dbg !1355
  %225 = icmp ne ptr %223, null, !dbg !1356
  %226 = select i1 %224, i1 true, i1 %225, !dbg !1356
  br i1 %226, label %78, label %72, !dbg !1357, !llvm.loop !1447

227:                                              ; preds = %72
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1312, metadata !DIExpression()), !dbg !1361
  %228 = call i32 @rpl_fclose(ptr noundef nonnull %31) #42, !dbg !1362
  %229 = icmp eq i32 %228, 0, !dbg !1365
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1312, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1361
  br i1 %229, label %230, label %232, !dbg !1366

230:                                              ; preds = %227
  tail call void @llvm.dbg.value(metadata i64 2, metadata !1312, metadata !DIExpression()), !dbg !1361
  %231 = load i1, ptr @total_option, align 1, !dbg !1449
  br i1 %231, label %239, label %255, !dbg !1451

232:                                              ; preds = %227, %72
  %233 = phi i64 [ 0, %72 ], [ 1, %227 ]
  %234 = tail call ptr @__errno_location() #45, !dbg !1452
  %235 = load i32, ptr %234, align 4, !dbg !1452, !tbaa !1015
  %236 = getelementptr inbounds ptr, ptr %0, i64 %233, !dbg !1452
  %237 = load ptr, ptr %236, align 8, !dbg !1452, !tbaa !942
  %238 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %237) #42, !dbg !1452
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %235, ptr noundef nonnull @.str.74, ptr noundef %238) #42, !dbg !1452
  unreachable, !dbg !1452

239:                                              ; preds = %230
  %240 = load i64, ptr @col_sep_len, align 8, !dbg !1453, !tbaa !1201
  %241 = icmp eq i64 %240, 1, !dbg !1456
  %242 = load ptr, ptr @col_sep, align 8, !dbg !1457, !tbaa !942
  br i1 %241, label %243, label %250, !dbg !1458

243:                                              ; preds = %239
  %244 = load i8, ptr %242, align 1, !dbg !1459, !tbaa !1024
  %245 = sext i8 %244 to i32, !dbg !1459
  %246 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #42, !dbg !1459
  %247 = load i1, ptr @delim, align 1, !dbg !1459
  %248 = select i1 %247, i32 0, i32 10, !dbg !1459
  %249 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.75, i64 noundef %75, i32 noundef %245, i64 noundef %73, i32 noundef %245, i64 noundef %74, i32 noundef %245, ptr noundef %246, i32 noundef %248) #42, !dbg !1459
  br label %255, !dbg !1461

250:                                              ; preds = %239
  %251 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #42, !dbg !1462
  %252 = load i1, ptr @delim, align 1, !dbg !1462
  %253 = select i1 %252, i32 0, i32 10, !dbg !1462
  %254 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.76, i64 noundef %75, ptr noundef %242, i64 noundef %73, ptr noundef %242, i64 noundef %74, ptr noundef %242, ptr noundef %251, i32 noundef %253) #42, !dbg !1462
  br label %255

255:                                              ; preds = %243, %250, %230
  %256 = load i8, ptr @issued_disorder_warning, align 1, !dbg !1464, !tbaa !1181, !range !1380, !noundef !982
  %257 = icmp eq i8 %256, 0, !dbg !1464
  %258 = load i8, ptr getelementptr inbounds ([2 x i8], ptr @issued_disorder_warning, i64 0, i64 1), align 1, !range !1380
  %259 = icmp eq i8 %258, 0
  %260 = select i1 %257, i1 %259, i1 false, !dbg !1466
  br i1 %260, label %263, label %261, !dbg !1466

261:                                              ; preds = %255
  %262 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #42, !dbg !1467
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %262) #42, !dbg !1467
  unreachable, !dbg !1467

263:                                              ; preds = %255
  call void @exit(i32 noundef 0) #44, !dbg !1468
  unreachable, !dbg !1468
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1469 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1473 i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @writeline(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !dbg !1476 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1482, metadata !DIExpression()), !dbg !1504
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1483, metadata !DIExpression()), !dbg !1504
  switch i32 %1, label %20 [
    i32 1, label %3
    i32 2, label %5
    i32 3, label %9
  ], !dbg !1505

3:                                                ; preds = %2
  %4 = load i1, ptr @only_file_1, align 1, !dbg !1506
  br i1 %4, label %45, label %26, !dbg !1508

5:                                                ; preds = %2
  %6 = load i1, ptr @only_file_2, align 1, !dbg !1509
  br i1 %6, label %45, label %7, !dbg !1511

7:                                                ; preds = %5
  %8 = load i1, ptr @only_file_1, align 1, !dbg !1512
  br i1 %8, label %26, label %21, !dbg !1513

9:                                                ; preds = %2
  %10 = load i1, ptr @both, align 1, !dbg !1514
  br i1 %10, label %45, label %11, !dbg !1516

11:                                               ; preds = %9
  %12 = load i1, ptr @only_file_1, align 1, !dbg !1517
  br i1 %12, label %18, label %13, !dbg !1518

13:                                               ; preds = %11
  %14 = load i64, ptr @col_sep_len, align 8, !dbg !1519
  %15 = load ptr, ptr @col_sep, align 8, !dbg !1519, !tbaa !942
  %16 = load ptr, ptr @stdout, align 8, !dbg !1519, !tbaa !942
  %17 = tail call i64 @fwrite_unlocked(ptr noundef %15, i64 noundef 1, i64 noundef %14, ptr noundef %16), !dbg !1519
  br label %18, !dbg !1519

18:                                               ; preds = %13, %11
  %19 = load i1, ptr @only_file_2, align 1, !dbg !1520
  br i1 %19, label %26, label %21, !dbg !1521

20:                                               ; preds = %2
  unreachable

21:                                               ; preds = %18, %7
  %22 = load i64, ptr @col_sep_len, align 8, !dbg !1522
  %23 = load ptr, ptr @col_sep, align 8, !dbg !1522, !tbaa !942
  %24 = load ptr, ptr @stdout, align 8, !dbg !1522, !tbaa !942
  %25 = tail call i64 @fwrite_unlocked(ptr noundef %23, i64 noundef 1, i64 noundef %22, ptr noundef %24), !dbg !1522
  br label %26, !dbg !1523

26:                                               ; preds = %21, %18, %7, %3
  %27 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !1523
  %28 = load i64, ptr %27, align 8, !dbg !1523, !tbaa !1386
  %29 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !1523
  %30 = load ptr, ptr %29, align 8, !dbg !1523, !tbaa !1383
  %31 = load ptr, ptr @stdout, align 8, !dbg !1523, !tbaa !942
  %32 = tail call i64 @fwrite_unlocked(ptr noundef %30, i64 noundef 1, i64 noundef %28, ptr noundef %31), !dbg !1523
  %33 = load ptr, ptr @stdout, align 8, !dbg !1524, !tbaa !942
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1341, metadata !DIExpression()), !dbg !1526
  %34 = load i32, ptr %33, align 8, !dbg !1528, !tbaa !1351
  %35 = and i32 %34, 32, !dbg !1524
  %36 = icmp eq i32 %35, 0, !dbg !1524
  br i1 %36, label %45, label %37, !dbg !1529

37:                                               ; preds = %26
  %38 = tail call ptr @__errno_location() #45, !dbg !1530
  %39 = load i32, ptr %38, align 4, !dbg !1530, !tbaa !1015
  call void @llvm.dbg.value(metadata i32 %39, metadata !1533, metadata !DIExpression()), !dbg !1535
  %40 = tail call i32 @fflush_unlocked(ptr noundef nonnull %33) #42, !dbg !1536
  %41 = load ptr, ptr @stdout, align 8, !dbg !1537, !tbaa !942
  %42 = tail call i32 @fpurge(ptr noundef %41) #42, !dbg !1538
  %43 = load ptr, ptr @stdout, align 8, !dbg !1539, !tbaa !942
  tail call void @clearerr_unlocked(ptr noundef %43) #42, !dbg !1539
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #42, !dbg !1540
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %39, ptr noundef %44) #42, !dbg !1540
  unreachable, !dbg !1540

45:                                               ; preds = %9, %5, %3, %26
  ret void, !dbg !1541
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_order(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #11 !dbg !1542 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1546, metadata !DIExpression()), !dbg !1559
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1547, metadata !DIExpression()), !dbg !1559
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1548, metadata !DIExpression()), !dbg !1559
  %4 = load i32, ptr @check_input_order, align 4, !dbg !1560, !tbaa !1015
  switch i32 %4, label %5 [
    i32 2, label %39
    i32 1, label %7
  ], !dbg !1561

5:                                                ; preds = %3
  %6 = load i1, ptr @seen_unpairable, align 1, !dbg !1562
  br i1 %6, label %7, label %39, !dbg !1563

7:                                                ; preds = %3, %5
  %8 = add nsw i32 %2, -1, !dbg !1564
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [2 x i8], ptr @issued_disorder_warning, i64 0, i64 %9, !dbg !1565
  %11 = load i8, ptr %10, align 1, !dbg !1565, !tbaa !1181, !range !1380, !noundef !982
  %12 = icmp eq i8 %11, 0, !dbg !1565
  br i1 %12, label %13, label %39, !dbg !1566

13:                                               ; preds = %7
  %14 = load i8, ptr @hard_LC_COLLATE, align 1, !dbg !1567, !tbaa !1181, !range !1380, !noundef !982
  %15 = icmp eq i8 %14, 0, !dbg !1567
  %16 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !1569
  %17 = load ptr, ptr %16, align 8, !dbg !1569, !tbaa !1383
  %18 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !1569
  %19 = load i64, ptr %18, align 8, !dbg !1569, !tbaa !1386
  %20 = add nsw i64 %19, -1, !dbg !1569
  %21 = getelementptr inbounds %struct.linebuffer, ptr %1, i64 0, i32 2, !dbg !1569
  %22 = load ptr, ptr %21, align 8, !dbg !1569, !tbaa !1383
  %23 = getelementptr inbounds %struct.linebuffer, ptr %1, i64 0, i32 1, !dbg !1569
  %24 = load i64, ptr %23, align 8, !dbg !1569, !tbaa !1386
  %25 = add nsw i64 %24, -1, !dbg !1569
  br i1 %15, label %28, label %26, !dbg !1570

26:                                               ; preds = %13
  %27 = tail call i32 @xmemcoll(ptr noundef %17, i64 noundef %20, ptr noundef %22, i64 noundef %25) #42, !dbg !1571
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !1549, metadata !DIExpression()), !dbg !1572
  br label %30, !dbg !1573

28:                                               ; preds = %13
  %29 = tail call i32 @memcmp2(ptr noundef %17, i64 noundef %20, ptr noundef %22, i64 noundef %25) #43, !dbg !1574
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1549, metadata !DIExpression()), !dbg !1572
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ], !dbg !1569
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !1549, metadata !DIExpression()), !dbg !1572
  %32 = icmp sgt i32 %31, 0, !dbg !1575
  br i1 %32, label %33, label %39, !dbg !1576

33:                                               ; preds = %30
  %34 = load i32, ptr @check_input_order, align 4, !dbg !1577, !tbaa !1015
  %35 = icmp eq i32 %34, 1, !dbg !1577
  %36 = zext i1 %35 to i32, !dbg !1577
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #42, !dbg !1577
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %36, i32 noundef 0, ptr noundef %37, i32 noundef %2) #42, !dbg !1577
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !1554, metadata !DIExpression()), !dbg !1578
  %38 = xor i1 %35, true, !dbg !1579
  tail call void @llvm.assume(i1 %38), !dbg !1577
  store i8 1, ptr %10, align 1, !dbg !1580, !tbaa !1181
  br label %39, !dbg !1581

39:                                               ; preds = %30, %33, %3, %7, %5
  ret void, !dbg !1582
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

declare !dbg !1583 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1584 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1587 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1589, metadata !DIExpression()), !dbg !1590
  store ptr %0, ptr @file_name, align 8, !dbg !1591, !tbaa !942
  ret void, !dbg !1592
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #13 !dbg !1593 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1597, metadata !DIExpression()), !dbg !1598
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1599, !tbaa !1181
  ret void, !dbg !1600
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #11 !dbg !1601 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1606, !tbaa !942
  %2 = tail call i32 @close_stream(ptr noundef %1) #42, !dbg !1607
  %3 = icmp eq i32 %2, 0, !dbg !1608
  br i1 %3, label %22, label %4, !dbg !1609

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1610, !tbaa !1181, !range !1380, !noundef !982
  %6 = icmp eq i8 %5, 0, !dbg !1610
  br i1 %6, label %11, label %7, !dbg !1611

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #45, !dbg !1612
  %9 = load i32, ptr %8, align 4, !dbg !1612, !tbaa !1015
  %10 = icmp eq i32 %9, 32, !dbg !1613
  br i1 %10, label %22, label %11, !dbg !1614

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1.37, i32 noundef 5) #42, !dbg !1615
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1603, metadata !DIExpression()), !dbg !1616
  %13 = load ptr, ptr @file_name, align 8, !dbg !1617, !tbaa !942
  %14 = icmp eq ptr %13, null, !dbg !1617
  %15 = tail call ptr @__errno_location() #45, !dbg !1619
  %16 = load i32, ptr %15, align 4, !dbg !1619, !tbaa !1015
  br i1 %14, label %19, label %17, !dbg !1620

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #42, !dbg !1621
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.38, ptr noundef %18, ptr noundef %12) #42, !dbg !1621
  br label %20, !dbg !1621

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.39, ptr noundef %12) #42, !dbg !1622
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1623, !tbaa !1015
  tail call void @_exit(i32 noundef %21) #44, !dbg !1624
  unreachable, !dbg !1624

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1625, !tbaa !942
  %24 = tail call i32 @close_stream(ptr noundef %23) #42, !dbg !1627
  %25 = icmp eq i32 %24, 0, !dbg !1628
  br i1 %25, label %28, label %26, !dbg !1629

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1630, !tbaa !1015
  tail call void @_exit(i32 noundef %27) #44, !dbg !1631
  unreachable, !dbg !1631

28:                                               ; preds = %22
  ret void, !dbg !1632
}

; Function Attrs: noreturn
declare !dbg !1633 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 !dbg !1635 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1639, metadata !DIExpression()), !dbg !1643
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1640, metadata !DIExpression()), !dbg !1643
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1641, metadata !DIExpression()), !dbg !1643
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1642, metadata !DIExpression()), !dbg !1643
  tail call fastcc void @flush_stdout(), !dbg !1644
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1645, !tbaa !942
  %6 = icmp eq ptr %5, null, !dbg !1645
  br i1 %6, label %8, label %7, !dbg !1647

7:                                                ; preds = %4
  tail call void %5() #42, !dbg !1648
  br label %12, !dbg !1648

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1649, !tbaa !942
  %10 = tail call ptr @getprogname() #43, !dbg !1649
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef %10) #42, !dbg !1649
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1651
  ret void, !dbg !1652
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #11 !dbg !1653 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1655, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i32 1, metadata !1657, metadata !DIExpression()), !dbg !1662
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #42, !dbg !1665
  %2 = icmp slt i32 %1, 0, !dbg !1666
  br i1 %2, label %6, label %3, !dbg !1667

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1668, !tbaa !942
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #42, !dbg !1668
  br label %6, !dbg !1668

6:                                                ; preds = %3, %0
  ret void, !dbg !1669
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #11 !dbg !1670 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1676
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1672, metadata !DIExpression()), !dbg !1677
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1673, metadata !DIExpression()), !dbg !1677
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1674, metadata !DIExpression()), !dbg !1677
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1675, metadata !DIExpression()), !dbg !1677
  %6 = load ptr, ptr @stderr, align 8, !dbg !1678, !tbaa !942
  call void @llvm.dbg.value(metadata ptr %6, metadata !1679, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata ptr %2, metadata !1719, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata ptr %3, metadata !1720, metadata !DIExpression()), !dbg !1721
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #42, !dbg !1723
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1724, !tbaa !1015
  %9 = add i32 %8, 1, !dbg !1724
  store i32 %9, ptr @error_message_count, align 4, !dbg !1724, !tbaa !1015
  %10 = icmp eq i32 %1, 0, !dbg !1725
  br i1 %10, label %20, label %11, !dbg !1727

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1728, metadata !DIExpression(), metadata !1676, metadata ptr %5, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i32 %1, metadata !1731, metadata !DIExpression()), !dbg !1736
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #42, !dbg !1738
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #42, !dbg !1739
  call void @llvm.dbg.value(metadata ptr %12, metadata !1732, metadata !DIExpression()), !dbg !1736
  %13 = icmp eq ptr %12, null, !dbg !1740
  br i1 %13, label %14, label %16, !dbg !1742

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.41, ptr noundef nonnull @.str.5.42, i32 noundef 5) #42, !dbg !1743
  call void @llvm.dbg.value(metadata ptr %15, metadata !1732, metadata !DIExpression()), !dbg !1736
  br label %16, !dbg !1744

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1736
  call void @llvm.dbg.value(metadata ptr %17, metadata !1732, metadata !DIExpression()), !dbg !1736
  %18 = load ptr, ptr @stderr, align 8, !dbg !1745, !tbaa !942
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.43, ptr noundef %17) #42, !dbg !1745
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #42, !dbg !1746
  br label %20, !dbg !1747

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1748, !tbaa !942
  call void @llvm.dbg.value(metadata i32 10, metadata !1749, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata ptr %21, metadata !1754, metadata !DIExpression()), !dbg !1755
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1757
  %23 = load ptr, ptr %22, align 8, !dbg !1757, !tbaa !1758
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1757
  %25 = load ptr, ptr %24, align 8, !dbg !1757, !tbaa !1759
  %26 = icmp ult ptr %23, %25, !dbg !1757
  br i1 %26, label %29, label %27, !dbg !1757, !prof !1760

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #42, !dbg !1757
  br label %31, !dbg !1757

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1757
  store ptr %30, ptr %22, align 8, !dbg !1757, !tbaa !1758
  store i8 10, ptr %23, align 1, !dbg !1757, !tbaa !1024
  br label %31, !dbg !1757

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1761, !tbaa !942
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #42, !dbg !1761
  %34 = icmp eq i32 %0, 0, !dbg !1762
  br i1 %34, label %36, label %35, !dbg !1764

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #44, !dbg !1765
  unreachable, !dbg !1765

36:                                               ; preds = %31
  ret void, !dbg !1766
}

declare !dbg !1767 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1770 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

declare !dbg !1773 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1776 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #11 !dbg !1780 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1793
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1787, metadata !DIExpression(), metadata !1793, metadata ptr %4, metadata !DIExpression()), !dbg !1794
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1784, metadata !DIExpression()), !dbg !1794
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1785, metadata !DIExpression()), !dbg !1794
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1786, metadata !DIExpression()), !dbg !1794
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #42, !dbg !1795
  call void @llvm.va_start(ptr nonnull %4), !dbg !1796
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #47, !dbg !1797
  call void @llvm.va_end(ptr nonnull %4), !dbg !1798
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #42, !dbg !1799
  ret void, !dbg !1799
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !dbg !504 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !515, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !516, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !517, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !518, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !519, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !520, metadata !DIExpression()), !dbg !1800
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1801, !tbaa !1015
  %8 = icmp eq i32 %7, 0, !dbg !1801
  br i1 %8, label %23, label %9, !dbg !1803

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1804, !tbaa !1015
  %11 = icmp eq i32 %10, %3, !dbg !1807
  br i1 %11, label %12, label %22, !dbg !1808

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1809, !tbaa !942
  %14 = icmp eq ptr %13, %2, !dbg !1810
  br i1 %14, label %36, label %15, !dbg !1811

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1812
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1813
  br i1 %18, label %19, label %22, !dbg !1813

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !1814
  %21 = icmp eq i32 %20, 0, !dbg !1815
  br i1 %21, label %36, label %22, !dbg !1816

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1817, !tbaa !942
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1818, !tbaa !1015
  br label %23, !dbg !1819

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1820
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1821, !tbaa !942
  %25 = icmp eq ptr %24, null, !dbg !1821
  br i1 %25, label %27, label %26, !dbg !1823

26:                                               ; preds = %23
  tail call void %24() #42, !dbg !1824
  br label %31, !dbg !1824

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1825, !tbaa !942
  %29 = tail call ptr @getprogname() #43, !dbg !1825
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.46, ptr noundef %29) #42, !dbg !1825
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1827, !tbaa !942
  %33 = icmp eq ptr %2, null, !dbg !1827
  %34 = select i1 %33, ptr @.str.3.47, ptr @.str.2.48, !dbg !1827
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #42, !dbg !1827
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1828
  br label %36, !dbg !1829

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1829
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #11 !dbg !1830 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1840
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1839, metadata !DIExpression(), metadata !1840, metadata ptr %6, metadata !DIExpression()), !dbg !1841
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1834, metadata !DIExpression()), !dbg !1841
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1835, metadata !DIExpression()), !dbg !1841
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1836, metadata !DIExpression()), !dbg !1841
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1837, metadata !DIExpression()), !dbg !1841
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1838, metadata !DIExpression()), !dbg !1841
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #42, !dbg !1842
  call void @llvm.va_start(ptr nonnull %6), !dbg !1843
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #47, !dbg !1844
  call void @llvm.va_end(ptr nonnull %6), !dbg !1845
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #42, !dbg !1846
  ret void, !dbg !1846
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #11 !dbg !1847 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1853, metadata !DIExpression()), !dbg !1857
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1854, metadata !DIExpression()), !dbg !1857
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1855, metadata !DIExpression()), !dbg !1857
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1856, metadata !DIExpression()), !dbg !1857
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #42, !dbg !1858
  ret void, !dbg !1859
}

; Function Attrs: nounwind
declare !dbg !1860 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 !dbg !1863 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1901, metadata !DIExpression()), !dbg !1903
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1902, metadata !DIExpression()), !dbg !1903
  %3 = icmp eq ptr %0, null, !dbg !1904
  br i1 %3, label %7, label %4, !dbg !1906

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !1907
  call void @llvm.dbg.value(metadata i32 %5, metadata !1853, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i64 0, metadata !1854, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i64 0, metadata !1855, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i32 %1, metadata !1856, metadata !DIExpression()), !dbg !1908
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #42, !dbg !1910
  br label %7, !dbg !1911

7:                                                ; preds = %4, %2
  ret void, !dbg !1912
}

; Function Attrs: nofree nounwind
declare !dbg !1913 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #11 !dbg !1916 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1954, metadata !DIExpression()), !dbg !1958
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1955, metadata !DIExpression()), !dbg !1958
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !1959
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1956, metadata !DIExpression()), !dbg !1958
  %3 = icmp slt i32 %2, 0, !dbg !1960
  br i1 %3, label %4, label %6, !dbg !1962

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1963
  br label %24, !dbg !1964

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #42, !dbg !1965
  %8 = icmp eq i32 %7, 0, !dbg !1965
  br i1 %8, label %13, label %9, !dbg !1967

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !1968
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #42, !dbg !1969
  %12 = icmp eq i64 %11, -1, !dbg !1970
  br i1 %12, label %16, label %13, !dbg !1971

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #42, !dbg !1972
  %15 = icmp eq i32 %14, 0, !dbg !1972
  br i1 %15, label %16, label %18, !dbg !1973

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1955, metadata !DIExpression()), !dbg !1958
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1957, metadata !DIExpression()), !dbg !1958
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1974
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1957, metadata !DIExpression()), !dbg !1958
  br label %24, !dbg !1975

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #45, !dbg !1976
  %20 = load i32, ptr %19, align 4, !dbg !1976, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1955, metadata !DIExpression()), !dbg !1958
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1957, metadata !DIExpression()), !dbg !1958
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1974
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !1957, metadata !DIExpression()), !dbg !1958
  %22 = icmp eq i32 %20, 0, !dbg !1977
  br i1 %22, label %24, label %23, !dbg !1975

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !1979, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1957, metadata !DIExpression()), !dbg !1958
  br label %24, !dbg !1981

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !1958
  ret i32 %25, !dbg !1982
}

; Function Attrs: nofree nounwind
declare !dbg !1983 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1984 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1986 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #11 !dbg !1989 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2027, metadata !DIExpression()), !dbg !2028
  %2 = icmp eq ptr %0, null, !dbg !2029
  br i1 %2, label %6, label %3, !dbg !2031

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #42, !dbg !2032
  %5 = icmp eq i32 %4, 0, !dbg !2032
  br i1 %5, label %6, label %8, !dbg !2033

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2034
  br label %16, !dbg !2035

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2036, metadata !DIExpression()), !dbg !2041
  %9 = load i32, ptr %0, align 8, !dbg !2043, !tbaa !1351
  %10 = and i32 %9, 256, !dbg !2045
  %11 = icmp eq i32 %10, 0, !dbg !2045
  br i1 %11, label %14, label %12, !dbg !2046

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #42, !dbg !2047
  br label %14, !dbg !2047

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2048
  br label %16, !dbg !2049

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2028
  ret i32 %17, !dbg !2050
}

; Function Attrs: nofree nounwind
declare !dbg !2051 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @fopen_safer(ptr noundef nonnull %0, ptr noundef nonnull %1) local_unnamed_addr #11 !dbg !2052 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2090, metadata !DIExpression()), !dbg !2105
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2091, metadata !DIExpression()), !dbg !2105
  %3 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull %0, ptr noundef nonnull %1) #42, !dbg !2106
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2092, metadata !DIExpression()), !dbg !2105
  %4 = icmp eq ptr %3, null, !dbg !2107
  br i1 %4, label %25, label %5, !dbg !2108

5:                                                ; preds = %2
  %6 = tail call i32 @fileno(ptr noundef nonnull %3) #42, !dbg !2109
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2093, metadata !DIExpression()), !dbg !2110
  %7 = icmp ult i32 %6, 3, !dbg !2111
  br i1 %7, label %8, label %25, !dbg !2111

8:                                                ; preds = %5
  %9 = tail call i32 @dup_safer(i32 noundef %6) #42, !dbg !2112
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2096, metadata !DIExpression()), !dbg !2113
  %10 = icmp slt i32 %9, 0, !dbg !2114
  br i1 %10, label %11, label %15, !dbg !2115

11:                                               ; preds = %8
  %12 = tail call ptr @__errno_location() #45, !dbg !2116
  %13 = load i32, ptr %12, align 4, !dbg !2116, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2099, metadata !DIExpression()), !dbg !2117
  %14 = tail call i32 @rpl_fclose(ptr noundef nonnull %3) #42, !dbg !2118
  store i32 %13, ptr %12, align 4, !dbg !2119, !tbaa !1015
  br label %25

15:                                               ; preds = %8
  %16 = tail call i32 @rpl_fclose(ptr noundef nonnull %3) #42, !dbg !2120
  %17 = icmp eq i32 %16, 0, !dbg !2121
  br i1 %17, label %18, label %21, !dbg !2122

18:                                               ; preds = %15
  %19 = tail call noalias ptr @fdopen(i32 noundef %9, ptr noundef nonnull %1) #42, !dbg !2123
  tail call void @llvm.dbg.value(metadata ptr %19, metadata !2092, metadata !DIExpression()), !dbg !2105
  %20 = icmp eq ptr %19, null, !dbg !2124
  br i1 %20, label %21, label %25, !dbg !2125

21:                                               ; preds = %18, %15
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !2092, metadata !DIExpression()), !dbg !2105
  %22 = tail call ptr @__errno_location() #45, !dbg !2126
  %23 = load i32, ptr %22, align 4, !dbg !2126, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !2102, metadata !DIExpression()), !dbg !2127
  %24 = tail call i32 @close(i32 noundef %9) #42, !dbg !2128
  store i32 %23, ptr %22, align 4, !dbg !2129, !tbaa !1015
  br label %25

25:                                               ; preds = %11, %21, %5, %18, %2
  %26 = phi ptr [ null, %2 ], [ null, %11 ], [ null, %21 ], [ %19, %18 ], [ %3, %5 ], !dbg !2105
  ret ptr %26, !dbg !2130
}

; Function Attrs: nofree nounwind
declare !dbg !2131 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !2134 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #11 !dbg !2135 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2173, metadata !DIExpression()), !dbg !2174
  tail call void @__fpurge(ptr noundef nonnull %0) #42, !dbg !2175
  ret i32 0, !dbg !2176
}

; Function Attrs: nounwind
declare !dbg !2177 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !2180 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2218, metadata !DIExpression()), !dbg !2224
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2219, metadata !DIExpression()), !dbg !2224
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2220, metadata !DIExpression()), !dbg !2224
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2225
  %5 = load ptr, ptr %4, align 8, !dbg !2225, !tbaa !2226
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2227
  %7 = load ptr, ptr %6, align 8, !dbg !2227, !tbaa !2228
  %8 = icmp eq ptr %5, %7, !dbg !2229
  br i1 %8, label %9, label %27, !dbg !2230

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2231
  %11 = load ptr, ptr %10, align 8, !dbg !2231, !tbaa !1758
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2232
  %13 = load ptr, ptr %12, align 8, !dbg !2232, !tbaa !2233
  %14 = icmp eq ptr %11, %13, !dbg !2234
  br i1 %14, label %15, label %27, !dbg !2235

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2236
  %17 = load ptr, ptr %16, align 8, !dbg !2236, !tbaa !2237
  %18 = icmp eq ptr %17, null, !dbg !2238
  br i1 %18, label %19, label %27, !dbg !2239

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #42, !dbg !2240
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #42, !dbg !2241
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2221, metadata !DIExpression()), !dbg !2242
  %22 = icmp eq i64 %21, -1, !dbg !2243
  br i1 %22, label %29, label %23, !dbg !2245

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2246, !tbaa !1351
  %25 = and i32 %24, -17, !dbg !2246
  store i32 %25, ptr %0, align 8, !dbg !2246, !tbaa !1351
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2247
  store i64 %21, ptr %26, align 8, !dbg !2248, !tbaa !2249
  br label %29, !dbg !2250

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2251
  br label %29, !dbg !2252

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2224
  ret i32 %30, !dbg !2253
}

; Function Attrs: nofree nounwind
declare !dbg !2254 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !2257 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2260, !tbaa !942
  ret ptr %1, !dbg !2261
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #11 !dbg !2262 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !2271
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2267, metadata !DIExpression(), metadata !2271, metadata ptr %2, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2266, metadata !DIExpression()), !dbg !2272
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #42, !dbg !2273
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #42, !dbg !2274
  %4 = icmp eq i32 %3, 0, !dbg !2274
  br i1 %4, label %5, label %12, !dbg !2276

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !2277, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata !982, metadata !2280, metadata !DIExpression()), !dbg !2281
  %6 = load i16, ptr %2, align 16, !dbg !2284
  %7 = icmp eq i16 %6, 67, !dbg !2284
  br i1 %7, label %11, label %8, !dbg !2285

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !2277, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata ptr @.str.1.67, metadata !2280, metadata !DIExpression()), !dbg !2286
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.67, i64 6), !dbg !2288
  %10 = icmp eq i32 %9, 0, !dbg !2289
  br i1 %10, label %11, label %12, !dbg !2290

11:                                               ; preds = %8, %5
  br label %12, !dbg !2291

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !2272
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #42, !dbg !2292
  ret i1 %13, !dbg !2292
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nofree nounwind memory(argmem: readwrite) uwtable
define dso_local void @initbuffer(ptr noundef %0) local_unnamed_addr #19 !dbg !2293 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2304, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata ptr %0, metadata !2306, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i32 0, metadata !2312, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i64 24, metadata !2313, metadata !DIExpression()), !dbg !2314
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %0, i8 noundef 0, i64 noundef 24, i1 noundef false) #42, !dbg !2316
  ret void, !dbg !2317
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @readlinebuffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !2318 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2356, metadata !DIExpression()), !dbg !2358
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2357, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata ptr %0, metadata !2359, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata ptr %1, metadata !2364, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8 10, metadata !2365, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata ptr %1, metadata !2376, metadata !DIExpression()), !dbg !2381
  %3 = load i32, ptr %1, align 8, !dbg !2384, !tbaa !1351
  %4 = and i32 %3, 16, !dbg !2385
  %5 = icmp eq i32 %4, 0, !dbg !2385
  br i1 %5, label %6, label %60, !dbg !2386

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2387
  %8 = load ptr, ptr %7, align 8, !dbg !2387, !tbaa !1383
  call void @llvm.dbg.value(metadata ptr %8, metadata !2366, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata ptr %8, metadata !2367, metadata !DIExpression()), !dbg !2374
  %9 = load i64, ptr %0, align 8, !dbg !2388, !tbaa !2389
  %10 = getelementptr inbounds i8, ptr %8, i64 %9, !dbg !2390
  call void @llvm.dbg.value(metadata ptr %10, metadata !2368, metadata !DIExpression()), !dbg !2374
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  br label %13, !dbg !2391

13:                                               ; preds = %46, %6
  %14 = phi ptr [ %8, %6 ], [ %47, %46 ], !dbg !2374
  %15 = phi ptr [ %8, %6 ], [ %51, %46 ], !dbg !2374
  %16 = phi ptr [ %10, %6 ], [ %49, %46 ], !dbg !2374
  call void @llvm.dbg.value(metadata ptr %16, metadata !2368, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata ptr %15, metadata !2367, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata ptr %14, metadata !2366, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata ptr %1, metadata !2392, metadata !DIExpression()), !dbg !2395
  %17 = load ptr, ptr %11, align 8, !dbg !2397, !tbaa !2228
  %18 = load ptr, ptr %12, align 8, !dbg !2397, !tbaa !2226
  %19 = icmp ult ptr %17, %18, !dbg !2397
  br i1 %19, label %20, label %24, !dbg !2397, !prof !1760

20:                                               ; preds = %13
  %21 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !2397
  store ptr %21, ptr %11, align 8, !dbg !2397, !tbaa !2228
  %22 = load i8, ptr %17, align 1, !dbg !2397, !tbaa !1024
  %23 = zext i8 %22 to i32, !dbg !2397
  call void @llvm.dbg.value(metadata i32 %23, metadata !2369, metadata !DIExpression()), !dbg !2374
  br label %37, !dbg !2398

24:                                               ; preds = %13
  %25 = tail call i32 @__uflow(ptr noundef nonnull %1) #42, !dbg !2397
  call void @llvm.dbg.value(metadata i32 %25, metadata !2369, metadata !DIExpression()), !dbg !2374
  %26 = icmp eq i32 %25, -1, !dbg !2399
  br i1 %26, label %27, label %37, !dbg !2398

27:                                               ; preds = %24
  %28 = icmp eq ptr %15, %14, !dbg !2401
  br i1 %28, label %60, label %29, !dbg !2404

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %1, metadata !2405, metadata !DIExpression()), !dbg !2408
  %30 = load i32, ptr %1, align 8, !dbg !2410, !tbaa !1351
  %31 = and i32 %30, 32, !dbg !2411
  %32 = icmp eq i32 %31, 0, !dbg !2411
  br i1 %32, label %33, label %60, !dbg !2412

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %15, i64 -1, !dbg !2413
  %35 = load i8, ptr %34, align 1, !dbg !2413, !tbaa !1024
  %36 = icmp eq i8 %35, 10, !dbg !2415
  br i1 %36, label %53, label %37, !dbg !2416

37:                                               ; preds = %33, %24, %20
  %38 = phi i32 [ %25, %24 ], [ %23, %20 ], [ 10, %33 ], !dbg !2417
  call void @llvm.dbg.value(metadata i32 %38, metadata !2369, metadata !DIExpression()), !dbg !2374
  %39 = icmp eq ptr %15, %16, !dbg !2418
  br i1 %39, label %40, label %46, !dbg !2419

40:                                               ; preds = %37
  %41 = load i64, ptr %0, align 8, !dbg !2420, !tbaa !2389
  call void @llvm.dbg.value(metadata i64 %41, metadata !2370, metadata !DIExpression()), !dbg !2421
  %42 = tail call nonnull ptr @xpalloc(ptr noundef %14, ptr noundef nonnull %0, i64 noundef 1, i64 noundef -1, i64 noundef 1) #42, !dbg !2422
  call void @llvm.dbg.value(metadata ptr %42, metadata !2366, metadata !DIExpression()), !dbg !2374
  %43 = getelementptr inbounds i8, ptr %42, i64 %41, !dbg !2423
  call void @llvm.dbg.value(metadata ptr %43, metadata !2367, metadata !DIExpression()), !dbg !2374
  store ptr %42, ptr %7, align 8, !dbg !2424, !tbaa !1383
  %44 = load i64, ptr %0, align 8, !dbg !2425, !tbaa !2389
  %45 = getelementptr inbounds i8, ptr %42, i64 %44, !dbg !2426
  call void @llvm.dbg.value(metadata ptr %45, metadata !2368, metadata !DIExpression()), !dbg !2374
  br label %46, !dbg !2427

46:                                               ; preds = %40, %37
  %47 = phi ptr [ %42, %40 ], [ %14, %37 ], !dbg !2374
  %48 = phi ptr [ %43, %40 ], [ %15, %37 ], !dbg !2374
  %49 = phi ptr [ %45, %40 ], [ %16, %37 ], !dbg !2374
  call void @llvm.dbg.value(metadata ptr %49, metadata !2368, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata ptr %48, metadata !2367, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata ptr %47, metadata !2366, metadata !DIExpression()), !dbg !2374
  %50 = trunc i32 %38 to i8, !dbg !2428
  %51 = getelementptr inbounds i8, ptr %48, i64 1, !dbg !2429
  call void @llvm.dbg.value(metadata ptr %51, metadata !2367, metadata !DIExpression()), !dbg !2374
  store i8 %50, ptr %48, align 1, !dbg !2430, !tbaa !1024
  %52 = icmp eq i32 %38, 10, !dbg !2431
  br i1 %52, label %53, label %13, !dbg !2432, !llvm.loop !2433

53:                                               ; preds = %46, %33
  %54 = phi ptr [ %14, %33 ], [ %47, %46 ], !dbg !2374
  %55 = phi ptr [ %15, %33 ], [ %51, %46 ], !dbg !2374
  call void @llvm.dbg.value(metadata ptr %55, metadata !2367, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata ptr %54, metadata !2366, metadata !DIExpression()), !dbg !2374
  %56 = ptrtoint ptr %55 to i64, !dbg !2435
  %57 = ptrtoint ptr %54 to i64, !dbg !2435
  %58 = sub i64 %56, %57, !dbg !2435
  %59 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !2436
  store i64 %58, ptr %59, align 8, !dbg !2437, !tbaa !1386
  br label %60, !dbg !2438

60:                                               ; preds = %27, %29, %2, %53
  %61 = phi ptr [ null, %2 ], [ %0, %53 ], [ null, %29 ], [ null, %27 ], !dbg !2374
  ret ptr %61, !dbg !2439
}

declare !dbg !2440 i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @readlinebuffer_delim(ptr noundef %0, ptr noundef %1, i8 noundef signext %2) local_unnamed_addr #11 !dbg !2360 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2359, metadata !DIExpression()), !dbg !2441
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2364, metadata !DIExpression()), !dbg !2441
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2365, metadata !DIExpression()), !dbg !2441
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2376, metadata !DIExpression()), !dbg !2442
  %4 = load i32, ptr %1, align 8, !dbg !2444, !tbaa !1351
  %5 = and i32 %4, 16, !dbg !2445
  %6 = icmp eq i32 %5, 0, !dbg !2445
  br i1 %6, label %7, label %62, !dbg !2446

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2447
  %9 = load ptr, ptr %8, align 8, !dbg !2447, !tbaa !1383
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2366, metadata !DIExpression()), !dbg !2441
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2367, metadata !DIExpression()), !dbg !2441
  %10 = load i64, ptr %0, align 8, !dbg !2448, !tbaa !2389
  %11 = getelementptr inbounds i8, ptr %9, i64 %10, !dbg !2449
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !2368, metadata !DIExpression()), !dbg !2441
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %13 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %14 = sext i8 %2 to i32
  br label %15, !dbg !2450

15:                                               ; preds = %48, %7
  %16 = phi ptr [ %9, %7 ], [ %49, %48 ], !dbg !2441
  %17 = phi ptr [ %9, %7 ], [ %53, %48 ], !dbg !2441
  %18 = phi ptr [ %11, %7 ], [ %51, %48 ], !dbg !2441
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !2368, metadata !DIExpression()), !dbg !2441
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !2367, metadata !DIExpression()), !dbg !2441
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !2366, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata ptr %1, metadata !2392, metadata !DIExpression()), !dbg !2451
  %19 = load ptr, ptr %12, align 8, !dbg !2453, !tbaa !2228
  %20 = load ptr, ptr %13, align 8, !dbg !2453, !tbaa !2226
  %21 = icmp ult ptr %19, %20, !dbg !2453
  br i1 %21, label %22, label %26, !dbg !2453, !prof !1760

22:                                               ; preds = %15
  %23 = getelementptr inbounds i8, ptr %19, i64 1, !dbg !2453
  store ptr %23, ptr %12, align 8, !dbg !2453, !tbaa !2228
  %24 = load i8, ptr %19, align 1, !dbg !2453, !tbaa !1024
  %25 = zext i8 %24 to i32, !dbg !2453
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !2369, metadata !DIExpression()), !dbg !2441
  br label %39, !dbg !2454

26:                                               ; preds = %15
  %27 = tail call i32 @__uflow(ptr noundef nonnull %1) #42, !dbg !2453
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !2369, metadata !DIExpression()), !dbg !2441
  %28 = icmp eq i32 %27, -1, !dbg !2455
  br i1 %28, label %29, label %39, !dbg !2454

29:                                               ; preds = %26
  %30 = icmp eq ptr %17, %16, !dbg !2456
  br i1 %30, label %62, label %31, !dbg !2457

31:                                               ; preds = %29
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2405, metadata !DIExpression()), !dbg !2458
  %32 = load i32, ptr %1, align 8, !dbg !2460, !tbaa !1351
  %33 = and i32 %32, 32, !dbg !2461
  %34 = icmp eq i32 %33, 0, !dbg !2461
  br i1 %34, label %35, label %62, !dbg !2462

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %17, i64 -1, !dbg !2463
  %37 = load i8, ptr %36, align 1, !dbg !2463, !tbaa !1024
  %38 = icmp eq i8 %37, %2, !dbg !2464
  br i1 %38, label %55, label %39, !dbg !2465

39:                                               ; preds = %35, %22, %26
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ %14, %35 ], !dbg !2466
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !2369, metadata !DIExpression()), !dbg !2441
  %41 = icmp eq ptr %17, %18, !dbg !2467
  br i1 %41, label %42, label %48, !dbg !2468

42:                                               ; preds = %39
  %43 = load i64, ptr %0, align 8, !dbg !2469, !tbaa !2389
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !2370, metadata !DIExpression()), !dbg !2470
  %44 = tail call nonnull ptr @xpalloc(ptr noundef %16, ptr noundef nonnull %0, i64 noundef 1, i64 noundef -1, i64 noundef 1) #42, !dbg !2471
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !2366, metadata !DIExpression()), !dbg !2441
  %45 = getelementptr inbounds i8, ptr %44, i64 %43, !dbg !2472
  tail call void @llvm.dbg.value(metadata ptr %45, metadata !2367, metadata !DIExpression()), !dbg !2441
  store ptr %44, ptr %8, align 8, !dbg !2473, !tbaa !1383
  %46 = load i64, ptr %0, align 8, !dbg !2474, !tbaa !2389
  %47 = getelementptr inbounds i8, ptr %44, i64 %46, !dbg !2475
  tail call void @llvm.dbg.value(metadata ptr %47, metadata !2368, metadata !DIExpression()), !dbg !2441
  br label %48, !dbg !2476

48:                                               ; preds = %42, %39
  %49 = phi ptr [ %44, %42 ], [ %16, %39 ], !dbg !2441
  %50 = phi ptr [ %45, %42 ], [ %17, %39 ], !dbg !2441
  %51 = phi ptr [ %47, %42 ], [ %18, %39 ], !dbg !2441
  tail call void @llvm.dbg.value(metadata ptr %51, metadata !2368, metadata !DIExpression()), !dbg !2441
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !2367, metadata !DIExpression()), !dbg !2441
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !2366, metadata !DIExpression()), !dbg !2441
  %52 = trunc i32 %40 to i8, !dbg !2477
  %53 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !2478
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !2367, metadata !DIExpression()), !dbg !2441
  store i8 %52, ptr %50, align 1, !dbg !2479, !tbaa !1024
  %54 = icmp eq i32 %40, %14, !dbg !2480
  br i1 %54, label %55, label %15, !dbg !2481, !llvm.loop !2482

55:                                               ; preds = %35, %48
  %56 = phi ptr [ %16, %35 ], [ %49, %48 ], !dbg !2441
  %57 = phi ptr [ %17, %35 ], [ %53, %48 ], !dbg !2441
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !2367, metadata !DIExpression()), !dbg !2441
  tail call void @llvm.dbg.value(metadata ptr %56, metadata !2366, metadata !DIExpression()), !dbg !2441
  %58 = ptrtoint ptr %57 to i64, !dbg !2484
  %59 = ptrtoint ptr %56 to i64, !dbg !2484
  %60 = sub i64 %58, %59, !dbg !2484
  %61 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !2485
  store i64 %60, ptr %61, align 8, !dbg !2486, !tbaa !1386
  br label %62, !dbg !2487

62:                                               ; preds = %31, %29, %55, %3
  %63 = phi ptr [ null, %3 ], [ %0, %55 ], [ null, %29 ], [ null, %31 ], !dbg !2441
  ret ptr %63, !dbg !2488
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @freebuffer(ptr nocapture noundef readonly %0) local_unnamed_addr #21 !dbg !2489 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2491, metadata !DIExpression()), !dbg !2492
  %2 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2493
  %3 = load ptr, ptr %2, align 8, !dbg !2493, !tbaa !1383
  tail call void @free(ptr noundef %3) #42, !dbg !2494
  ret void, !dbg !2495
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2496 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @memcmp2(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #23 !dbg !2499 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2503, metadata !DIExpression()), !dbg !2508
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2504, metadata !DIExpression()), !dbg !2508
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2505, metadata !DIExpression()), !dbg !2508
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2506, metadata !DIExpression()), !dbg !2508
  %5 = tail call i64 @llvm.umin.i64(i64 %1, i64 %3), !dbg !2509
  %6 = tail call i32 @memcmp(ptr noundef %0, ptr noundef %2, i64 noundef %5) #43, !dbg !2510
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2507, metadata !DIExpression()), !dbg !2508
  %7 = icmp eq i32 %6, 0, !dbg !2511
  br i1 %7, label %8, label %14, !dbg !2513

8:                                                ; preds = %4
  %9 = icmp ugt i64 %1, %3, !dbg !2514
  %10 = zext i1 %9 to i32, !dbg !2514
  %11 = icmp ult i64 %1, %3, !dbg !2514
  %12 = sext i1 %11 to i32, !dbg !2514
  %13 = add nsw i32 %12, %10, !dbg !2514
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2507, metadata !DIExpression()), !dbg !2508
  br label %14, !dbg !2515

14:                                               ; preds = %8, %4
  %15 = phi i32 [ %13, %8 ], [ %6, %4 ], !dbg !2508
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !2507, metadata !DIExpression()), !dbg !2508
  ret i32 %15, !dbg !2516
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #24 !dbg !2517 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2519, metadata !DIExpression()), !dbg !2522
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #43, !dbg !2523
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2520, metadata !DIExpression()), !dbg !2522
  %3 = icmp eq ptr %2, null, !dbg !2524
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2524
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2524
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2521, metadata !DIExpression()), !dbg !2522
  %6 = ptrtoint ptr %5 to i64, !dbg !2525
  %7 = ptrtoint ptr %0 to i64, !dbg !2525
  %8 = sub i64 %6, %7, !dbg !2525
  %9 = icmp sgt i64 %8, 6, !dbg !2527
  br i1 %9, label %10, label %19, !dbg !2528

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2529
  call void @llvm.dbg.value(metadata ptr %11, metadata !2530, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata ptr @.str.80, metadata !2535, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i64 7, metadata !2536, metadata !DIExpression()), !dbg !2537
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.80, i64 7), !dbg !2539
  %13 = icmp eq i32 %12, 0, !dbg !2540
  br i1 %13, label %14, label %19, !dbg !2541

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2519, metadata !DIExpression()), !dbg !2522
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.81, i64 noundef 3) #43, !dbg !2542
  %16 = icmp eq i32 %15, 0, !dbg !2545
  %17 = select i1 %16, i64 3, i64 0, !dbg !2546
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2546
  br label %19, !dbg !2546

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2522
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2521, metadata !DIExpression()), !dbg !2522
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2519, metadata !DIExpression()), !dbg !2522
  store ptr %20, ptr @program_name, align 8, !dbg !2547, !tbaa !942
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2548, !tbaa !942
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2549, !tbaa !942
  ret void, !dbg !2550
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2551 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #11 !dbg !560 {
  %3 = alloca i32, align 4, !DIAssignID !2552
  call void @llvm.dbg.assign(metadata i1 undef, metadata !570, metadata !DIExpression(), metadata !2552, metadata ptr %3, metadata !DIExpression()), !dbg !2553
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2554
  call void @llvm.dbg.assign(metadata i1 undef, metadata !575, metadata !DIExpression(), metadata !2554, metadata ptr %4, metadata !DIExpression()), !dbg !2553
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !567, metadata !DIExpression()), !dbg !2553
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !568, metadata !DIExpression()), !dbg !2553
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #42, !dbg !2555
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !569, metadata !DIExpression()), !dbg !2553
  %6 = icmp eq ptr %5, %0, !dbg !2556
  br i1 %6, label %7, label %14, !dbg !2558

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #42, !dbg !2559
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #42, !dbg !2560
  call void @llvm.dbg.value(metadata ptr %4, metadata !2561, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata ptr %4, metadata !2570, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 0, metadata !2573, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i64 8, metadata !2574, metadata !DIExpression()), !dbg !2575
  store i64 0, ptr %4, align 8, !dbg !2577
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #42, !dbg !2578
  %9 = icmp eq i64 %8, 2, !dbg !2580
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2581
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2553
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #42, !dbg !2582
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #42, !dbg !2582
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2553
  ret ptr %15, !dbg !2582
}

; Function Attrs: nounwind
declare !dbg !2583 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #11 !dbg !2589 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2594, metadata !DIExpression()), !dbg !2597
  %2 = tail call ptr @__errno_location() #45, !dbg !2598
  %3 = load i32, ptr %2, align 4, !dbg !2598, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2595, metadata !DIExpression()), !dbg !2597
  %4 = icmp eq ptr %0, null, !dbg !2599
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2599
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #48, !dbg !2600
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2596, metadata !DIExpression()), !dbg !2597
  store i32 %3, ptr %2, align 4, !dbg !2601, !tbaa !1015
  ret ptr %6, !dbg !2602
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #25 !dbg !2603 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2609, metadata !DIExpression()), !dbg !2610
  %2 = icmp eq ptr %0, null, !dbg !2611
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2611
  %4 = load i32, ptr %3, align 8, !dbg !2612, !tbaa !2613
  ret i32 %4, !dbg !2615
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2616 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2620, metadata !DIExpression()), !dbg !2622
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2621, metadata !DIExpression()), !dbg !2622
  %3 = icmp eq ptr %0, null, !dbg !2623
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2623
  store i32 %1, ptr %4, align 8, !dbg !2624, !tbaa !2613
  ret void, !dbg !2625
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #27 !dbg !2626 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2630, metadata !DIExpression()), !dbg !2638
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2631, metadata !DIExpression()), !dbg !2638
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2632, metadata !DIExpression()), !dbg !2638
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2633, metadata !DIExpression()), !dbg !2638
  %4 = icmp eq ptr %0, null, !dbg !2639
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2639
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2640
  %7 = lshr i8 %1, 5, !dbg !2641
  %8 = zext nneg i8 %7 to i64, !dbg !2641
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2642
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2634, metadata !DIExpression()), !dbg !2638
  %10 = and i8 %1, 31, !dbg !2643
  %11 = zext nneg i8 %10 to i32, !dbg !2643
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2636, metadata !DIExpression()), !dbg !2638
  %12 = load i32, ptr %9, align 4, !dbg !2644, !tbaa !1015
  %13 = lshr i32 %12, %11, !dbg !2645
  %14 = and i32 %13, 1, !dbg !2646
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2637, metadata !DIExpression()), !dbg !2638
  %15 = xor i32 %13, %2, !dbg !2647
  %16 = and i32 %15, 1, !dbg !2647
  %17 = shl nuw i32 %16, %11, !dbg !2648
  %18 = xor i32 %17, %12, !dbg !2649
  store i32 %18, ptr %9, align 4, !dbg !2649, !tbaa !1015
  ret i32 %14, !dbg !2650
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #27 !dbg !2651 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2655, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2656, metadata !DIExpression()), !dbg !2658
  %3 = icmp eq ptr %0, null, !dbg !2659
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2661
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2655, metadata !DIExpression()), !dbg !2658
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2662
  %6 = load i32, ptr %5, align 4, !dbg !2662, !tbaa !2663
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2657, metadata !DIExpression()), !dbg !2658
  store i32 %1, ptr %5, align 4, !dbg !2664, !tbaa !2663
  ret i32 %6, !dbg !2665
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2666 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2670, metadata !DIExpression()), !dbg !2673
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2671, metadata !DIExpression()), !dbg !2673
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2672, metadata !DIExpression()), !dbg !2673
  %4 = icmp eq ptr %0, null, !dbg !2674
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2676
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2670, metadata !DIExpression()), !dbg !2673
  store i32 10, ptr %5, align 8, !dbg !2677, !tbaa !2613
  %6 = icmp ne ptr %1, null, !dbg !2678
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2680
  br i1 %8, label %10, label %9, !dbg !2680

9:                                                ; preds = %3
  tail call void @abort() #44, !dbg !2681
  unreachable, !dbg !2681

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2682
  store ptr %1, ptr %11, align 8, !dbg !2683, !tbaa !2684
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2685
  store ptr %2, ptr %12, align 8, !dbg !2686, !tbaa !2687
  ret void, !dbg !2688
}

; Function Attrs: noreturn nounwind
declare !dbg !2689 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #11 !dbg !2690 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2694, metadata !DIExpression()), !dbg !2702
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2695, metadata !DIExpression()), !dbg !2702
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2696, metadata !DIExpression()), !dbg !2702
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2697, metadata !DIExpression()), !dbg !2702
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2698, metadata !DIExpression()), !dbg !2702
  %6 = icmp eq ptr %4, null, !dbg !2703
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2703
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2699, metadata !DIExpression()), !dbg !2702
  %8 = tail call ptr @__errno_location() #45, !dbg !2704
  %9 = load i32, ptr %8, align 4, !dbg !2704, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2700, metadata !DIExpression()), !dbg !2702
  %10 = load i32, ptr %7, align 8, !dbg !2705, !tbaa !2613
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2706
  %12 = load i32, ptr %11, align 4, !dbg !2706, !tbaa !2663
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2707
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2708
  %15 = load ptr, ptr %14, align 8, !dbg !2708, !tbaa !2684
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2709
  %17 = load ptr, ptr %16, align 8, !dbg !2709, !tbaa !2687
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2710
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2701, metadata !DIExpression()), !dbg !2702
  store i32 %9, ptr %8, align 4, !dbg !2711, !tbaa !1015
  ret i64 %18, !dbg !2712
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #11 !dbg !2713 {
  %10 = alloca i32, align 4, !DIAssignID !2781
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2782
  %12 = alloca i32, align 4, !DIAssignID !2783
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2784
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2785
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2759, metadata !DIExpression(), metadata !2785, metadata ptr %14, metadata !DIExpression()), !dbg !2786
  %15 = alloca i32, align 4, !DIAssignID !2787
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2762, metadata !DIExpression(), metadata !2787, metadata ptr %15, metadata !DIExpression()), !dbg !2788
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2719, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2720, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2721, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2722, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2723, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2724, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2725, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2726, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2727, metadata !DIExpression()), !dbg !2789
  %16 = tail call i64 @__ctype_get_mb_cur_max() #42, !dbg !2790
  %17 = icmp eq i64 %16, 1, !dbg !2791
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2728, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2730, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2731, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2732, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2733, metadata !DIExpression()), !dbg !2789
  %18 = trunc i32 %5 to i8, !dbg !2792
  %19 = lshr i8 %18, 1, !dbg !2792
  %20 = and i8 %19, 1, !dbg !2792
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2734, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2735, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2736, metadata !DIExpression()), !dbg !2789
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2793

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2794
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2795
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2796
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2797
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2789
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2798
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2799
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2720, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2736, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2735, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2734, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2733, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2732, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2731, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2730, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2722, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2727, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2726, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2723, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.label(metadata !2737), !dbg !2800
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2738, metadata !DIExpression()), !dbg !2789
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
  ], !dbg !2801

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2734, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2723, metadata !DIExpression()), !dbg !2789
  br label %114, !dbg !2802

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2734, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2723, metadata !DIExpression()), !dbg !2789
  %43 = and i8 %37, 1, !dbg !2803
  %44 = icmp eq i8 %43, 0, !dbg !2803
  br i1 %44, label %45, label %114, !dbg !2802

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2805
  br i1 %46, label %114, label %47, !dbg !2808

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2805, !tbaa !1024
  br label %114, !dbg !2805

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !664, metadata !DIExpression(), metadata !2783, metadata ptr %12, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.assign(metadata i1 undef, metadata !665, metadata !DIExpression(), metadata !2784, metadata ptr %13, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata ptr @.str.11.94, metadata !661, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i32 %29, metadata !662, metadata !DIExpression()), !dbg !2809
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.95, ptr noundef nonnull @.str.11.94, i32 noundef 5) #42, !dbg !2813
  call void @llvm.dbg.value(metadata ptr %49, metadata !663, metadata !DIExpression()), !dbg !2809
  %50 = icmp eq ptr %49, @.str.11.94, !dbg !2814
  br i1 %50, label %51, label %60, !dbg !2816

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #42, !dbg !2817
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #42, !dbg !2818
  call void @llvm.dbg.value(metadata ptr %13, metadata !2819, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata ptr %13, metadata !2827, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i32 0, metadata !2830, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i64 8, metadata !2831, metadata !DIExpression()), !dbg !2832
  store i64 0, ptr %13, align 8, !dbg !2834
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #42, !dbg !2835
  %53 = icmp eq i64 %52, 3, !dbg !2837
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2838
  %57 = icmp eq i32 %29, 9, !dbg !2838
  %58 = select i1 %57, ptr @.str.10.96, ptr @.str.12.97, !dbg !2838
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2838
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #42, !dbg !2839
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #42, !dbg !2839
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2809
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2726, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.assign(metadata i1 undef, metadata !664, metadata !DIExpression(), metadata !2781, metadata ptr %10, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.assign(metadata i1 undef, metadata !665, metadata !DIExpression(), metadata !2782, metadata ptr %11, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata ptr @.str.12.97, metadata !661, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i32 %29, metadata !662, metadata !DIExpression()), !dbg !2840
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.95, ptr noundef nonnull @.str.12.97, i32 noundef 5) #42, !dbg !2842
  call void @llvm.dbg.value(metadata ptr %62, metadata !663, metadata !DIExpression()), !dbg !2840
  %63 = icmp eq ptr %62, @.str.12.97, !dbg !2843
  br i1 %63, label %64, label %73, !dbg !2844

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #42, !dbg !2845
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #42, !dbg !2846
  call void @llvm.dbg.value(metadata ptr %11, metadata !2819, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata ptr %11, metadata !2827, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i32 0, metadata !2830, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 8, metadata !2831, metadata !DIExpression()), !dbg !2849
  store i64 0, ptr %11, align 8, !dbg !2851
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #42, !dbg !2852
  %66 = icmp eq i64 %65, 3, !dbg !2853
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2854
  %70 = icmp eq i32 %29, 9, !dbg !2854
  %71 = select i1 %70, ptr @.str.10.96, ptr @.str.12.97, !dbg !2854
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2854
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #42, !dbg !2855
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #42, !dbg !2855
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2727, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2726, metadata !DIExpression()), !dbg !2789
  %76 = and i8 %37, 1, !dbg !2856
  %77 = icmp eq i8 %76, 0, !dbg !2856
  br i1 %77, label %78, label %93, !dbg !2857

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2739, metadata !DIExpression()), !dbg !2858
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2729, metadata !DIExpression()), !dbg !2789
  %79 = load i8, ptr %74, align 1, !dbg !2859, !tbaa !1024
  %80 = icmp eq i8 %79, 0, !dbg !2861
  br i1 %80, label %93, label %81, !dbg !2861

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2739, metadata !DIExpression()), !dbg !2858
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2729, metadata !DIExpression()), !dbg !2789
  %85 = icmp ult i64 %84, %40, !dbg !2862
  br i1 %85, label %86, label %88, !dbg !2865

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2862
  store i8 %82, ptr %87, align 1, !dbg !2862, !tbaa !1024
  br label %88, !dbg !2862

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2865
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2729, metadata !DIExpression()), !dbg !2789
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2866
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2739, metadata !DIExpression()), !dbg !2858
  %91 = load i8, ptr %90, align 1, !dbg !2859, !tbaa !1024
  %92 = icmp eq i8 %91, 0, !dbg !2861
  br i1 %92, label %93, label %81, !dbg !2861, !llvm.loop !2867

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2869
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2733, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2731, metadata !DIExpression()), !dbg !2789
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #43, !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2732, metadata !DIExpression()), !dbg !2789
  br label %114, !dbg !2871

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2733, metadata !DIExpression()), !dbg !2789
  br label %98, !dbg !2872

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2733, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2734, metadata !DIExpression()), !dbg !2789
  br label %98, !dbg !2873

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2797
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2734, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2733, metadata !DIExpression()), !dbg !2789
  %101 = and i8 %100, 1, !dbg !2874
  %102 = icmp eq i8 %101, 0, !dbg !2874
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2876
  br label %104, !dbg !2876

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2789
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2792
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2734, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2733, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2723, metadata !DIExpression()), !dbg !2789
  %107 = and i8 %106, 1, !dbg !2877
  %108 = icmp eq i8 %107, 0, !dbg !2877
  br i1 %108, label %109, label %114, !dbg !2879

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2880
  br i1 %110, label %114, label %111, !dbg !2883

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2880, !tbaa !1024
  br label %114, !dbg !2880

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2734, metadata !DIExpression()), !dbg !2789
  br label %114, !dbg !2884

113:                                              ; preds = %28
  call void @abort() #44, !dbg !2885
  unreachable, !dbg !2885

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2869
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.96, %45 ], [ @.str.10.96, %47 ], [ @.str.10.96, %42 ], [ %34, %28 ], [ @.str.12.97, %109 ], [ @.str.12.97, %111 ], [ @.str.12.97, %104 ], [ @.str.10.96, %41 ], !dbg !2789
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2789
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2789
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2734, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2733, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2732, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2731, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2727, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2726, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2723, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2744, metadata !DIExpression()), !dbg !2886
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
  br label %138, !dbg !2887

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2869
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2794
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2798
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2799
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2888
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2889
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2720, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2744, metadata !DIExpression()), !dbg !2886
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2738, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2736, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2735, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2730, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2722, metadata !DIExpression()), !dbg !2789
  %147 = icmp eq i64 %139, -1, !dbg !2890
  br i1 %147, label %148, label %152, !dbg !2891

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2892
  %150 = load i8, ptr %149, align 1, !dbg !2892, !tbaa !1024
  %151 = icmp eq i8 %150, 0, !dbg !2893
  br i1 %151, label %612, label %154, !dbg !2894

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2895
  br i1 %153, label %612, label %154, !dbg !2894

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2746, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2749, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2750, metadata !DIExpression()), !dbg !2896
  br i1 %128, label %155, label %170, !dbg !2897

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2899
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2900
  br i1 %157, label %158, label %160, !dbg !2900

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !2901
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2722, metadata !DIExpression()), !dbg !2789
  br label %160, !dbg !2902

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2902
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2722, metadata !DIExpression()), !dbg !2789
  %162 = icmp ugt i64 %156, %161, !dbg !2903
  br i1 %162, label %170, label %163, !dbg !2904

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2905
  call void @llvm.dbg.value(metadata ptr %164, metadata !2906, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata ptr %119, metadata !2909, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i64 %120, metadata !2910, metadata !DIExpression()), !dbg !2911
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2913
  %166 = icmp ne i32 %165, 0, !dbg !2914
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2915
  %168 = xor i1 %166, true, !dbg !2915
  %169 = zext i1 %168 to i8, !dbg !2915
  br i1 %167, label %170, label %666, !dbg !2915

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2896
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2746, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2722, metadata !DIExpression()), !dbg !2789
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2916
  %175 = load i8, ptr %174, align 1, !dbg !2916, !tbaa !1024
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2751, metadata !DIExpression()), !dbg !2896
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
  ], !dbg !2917

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2918

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2919

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2749, metadata !DIExpression()), !dbg !2896
  %179 = and i8 %144, 1, !dbg !2923
  %180 = icmp eq i8 %179, 0, !dbg !2923
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2923
  br i1 %181, label %182, label %198, !dbg !2923

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2925
  br i1 %183, label %184, label %186, !dbg !2929

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2925
  store i8 39, ptr %185, align 1, !dbg !2925, !tbaa !1024
  br label %186, !dbg !2925

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2929
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2729, metadata !DIExpression()), !dbg !2789
  %188 = icmp ult i64 %187, %146, !dbg !2930
  br i1 %188, label %189, label %191, !dbg !2933

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2930
  store i8 36, ptr %190, align 1, !dbg !2930, !tbaa !1024
  br label %191, !dbg !2930

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2933
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2729, metadata !DIExpression()), !dbg !2789
  %193 = icmp ult i64 %192, %146, !dbg !2934
  br i1 %193, label %194, label %196, !dbg !2937

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2934
  store i8 39, ptr %195, align 1, !dbg !2934, !tbaa !1024
  br label %196, !dbg !2934

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2937
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2738, metadata !DIExpression()), !dbg !2789
  br label %198, !dbg !2938

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2789
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2738, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2729, metadata !DIExpression()), !dbg !2789
  %201 = icmp ult i64 %199, %146, !dbg !2939
  br i1 %201, label %202, label %204, !dbg !2942

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2939
  store i8 92, ptr %203, align 1, !dbg !2939, !tbaa !1024
  br label %204, !dbg !2939

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2942
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2729, metadata !DIExpression()), !dbg !2789
  br i1 %125, label %206, label %476, !dbg !2943

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2945
  %208 = icmp ult i64 %207, %171, !dbg !2946
  br i1 %208, label %209, label %465, !dbg !2947

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2948
  %211 = load i8, ptr %210, align 1, !dbg !2948, !tbaa !1024
  %212 = add i8 %211, -48, !dbg !2949
  %213 = icmp ult i8 %212, 10, !dbg !2949
  br i1 %213, label %214, label %465, !dbg !2949

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2950
  br i1 %215, label %216, label %218, !dbg !2954

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2950
  store i8 48, ptr %217, align 1, !dbg !2950, !tbaa !1024
  br label %218, !dbg !2950

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2954
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2729, metadata !DIExpression()), !dbg !2789
  %220 = icmp ult i64 %219, %146, !dbg !2955
  br i1 %220, label %221, label %223, !dbg !2958

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2955
  store i8 48, ptr %222, align 1, !dbg !2955, !tbaa !1024
  br label %223, !dbg !2955

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2958
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2729, metadata !DIExpression()), !dbg !2789
  br label %465, !dbg !2959

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2960

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2961

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2962

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2964

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2966
  %231 = icmp ult i64 %230, %171, !dbg !2967
  br i1 %231, label %232, label %465, !dbg !2968

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2969
  %234 = load i8, ptr %233, align 1, !dbg !2969, !tbaa !1024
  %235 = icmp eq i8 %234, 63, !dbg !2970
  br i1 %235, label %236, label %465, !dbg !2971

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2972
  %238 = load i8, ptr %237, align 1, !dbg !2972, !tbaa !1024
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
  ], !dbg !2973

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2974

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2751, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2744, metadata !DIExpression()), !dbg !2886
  %241 = icmp ult i64 %140, %146, !dbg !2976
  br i1 %241, label %242, label %244, !dbg !2979

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2976
  store i8 63, ptr %243, align 1, !dbg !2976, !tbaa !1024
  br label %244, !dbg !2976

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2979
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2729, metadata !DIExpression()), !dbg !2789
  %246 = icmp ult i64 %245, %146, !dbg !2980
  br i1 %246, label %247, label %249, !dbg !2983

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2980
  store i8 34, ptr %248, align 1, !dbg !2980, !tbaa !1024
  br label %249, !dbg !2980

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2983
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2729, metadata !DIExpression()), !dbg !2789
  %251 = icmp ult i64 %250, %146, !dbg !2984
  br i1 %251, label %252, label %254, !dbg !2987

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2984
  store i8 34, ptr %253, align 1, !dbg !2984, !tbaa !1024
  br label %254, !dbg !2984

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2987
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2729, metadata !DIExpression()), !dbg !2789
  %256 = icmp ult i64 %255, %146, !dbg !2988
  br i1 %256, label %257, label %259, !dbg !2991

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2988
  store i8 63, ptr %258, align 1, !dbg !2988, !tbaa !1024
  br label %259, !dbg !2988

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2991
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2729, metadata !DIExpression()), !dbg !2789
  br label %465, !dbg !2992

261:                                              ; preds = %170
  br label %272, !dbg !2993

262:                                              ; preds = %170
  br label %272, !dbg !2994

263:                                              ; preds = %170
  br label %270, !dbg !2995

264:                                              ; preds = %170
  br label %270, !dbg !2996

265:                                              ; preds = %170
  br label %272, !dbg !2997

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2998

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2999

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !3002

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !3004

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !3005
  call void @llvm.dbg.label(metadata !2752), !dbg !3006
  br i1 %133, label %272, label %655, !dbg !3007

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !3005
  call void @llvm.dbg.label(metadata !2755), !dbg !3009
  br i1 %124, label %520, label %476, !dbg !3010

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !3011

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !3012, !tbaa !1024
  %277 = icmp eq i8 %276, 0, !dbg !3014
  br i1 %277, label %278, label %465, !dbg !3015

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !3016
  br i1 %279, label %280, label %465, !dbg !3018

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2750, metadata !DIExpression()), !dbg !2896
  br label %281, !dbg !3019

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2750, metadata !DIExpression()), !dbg !2896
  br i1 %133, label %465, label %655, !dbg !3020

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2735, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2750, metadata !DIExpression()), !dbg !2896
  br i1 %132, label %284, label %465, !dbg !3022

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !3023

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !3026
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !3028
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !3028
  %290 = select i1 %288, i64 %146, i64 0, !dbg !3028
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2720, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2730, metadata !DIExpression()), !dbg !2789
  %291 = icmp ult i64 %140, %290, !dbg !3029
  br i1 %291, label %292, label %294, !dbg !3032

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3029
  store i8 39, ptr %293, align 1, !dbg !3029, !tbaa !1024
  br label %294, !dbg !3029

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !3032
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2729, metadata !DIExpression()), !dbg !2789
  %296 = icmp ult i64 %295, %290, !dbg !3033
  br i1 %296, label %297, label %299, !dbg !3036

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !3033
  store i8 92, ptr %298, align 1, !dbg !3033, !tbaa !1024
  br label %299, !dbg !3033

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !3036
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2729, metadata !DIExpression()), !dbg !2789
  %301 = icmp ult i64 %300, %290, !dbg !3037
  br i1 %301, label %302, label %304, !dbg !3040

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !3037
  store i8 39, ptr %303, align 1, !dbg !3037, !tbaa !1024
  br label %304, !dbg !3037

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !3040
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2738, metadata !DIExpression()), !dbg !2789
  br label %465, !dbg !3041

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !3042

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2756, metadata !DIExpression()), !dbg !3043
  %308 = tail call ptr @__ctype_b_loc() #45, !dbg !3044
  %309 = load ptr, ptr %308, align 8, !dbg !3044, !tbaa !942
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !3044
  %312 = load i16, ptr %311, align 2, !dbg !3044, !tbaa !1056
  %313 = and i16 %312, 16384, !dbg !3046
  %314 = icmp ne i16 %313, 0, !dbg !3046
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2758, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3043
  br label %355, !dbg !3047

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #42, !dbg !3048
  call void @llvm.dbg.value(metadata ptr %14, metadata !2819, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata ptr %14, metadata !2827, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i32 0, metadata !2830, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64 8, metadata !2831, metadata !DIExpression()), !dbg !3051
  store i64 0, ptr %14, align 8, !dbg !3053
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2756, metadata !DIExpression()), !dbg !3043
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2758, metadata !DIExpression()), !dbg !3043
  %316 = icmp eq i64 %171, -1, !dbg !3054
  br i1 %316, label %317, label %319, !dbg !3056

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #43, !dbg !3057
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2722, metadata !DIExpression()), !dbg !2789
  br label %319, !dbg !3058

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2722, metadata !DIExpression()), !dbg !2789
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #42, !dbg !3059
  %321 = sub i64 %320, %145, !dbg !3060
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #42, !dbg !3061
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2766, metadata !DIExpression()), !dbg !2788
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !3062

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2756, metadata !DIExpression()), !dbg !3043
  %324 = icmp ult i64 %145, %320, !dbg !3063
  br i1 %324, label %326, label %351, !dbg !3065

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2758, metadata !DIExpression()), !dbg !3043
  br label %351, !dbg !3066

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2756, metadata !DIExpression()), !dbg !3043
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !3068
  %330 = load i8, ptr %329, align 1, !dbg !3068, !tbaa !1024
  %331 = icmp eq i8 %330, 0, !dbg !3065
  br i1 %331, label %351, label %332, !dbg !3069

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !3070
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2756, metadata !DIExpression()), !dbg !3043
  %334 = add i64 %333, %145, !dbg !3071
  %335 = icmp eq i64 %333, %321, !dbg !3063
  br i1 %335, label %351, label %326, !dbg !3065, !llvm.loop !3072

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2767, metadata !DIExpression()), !dbg !3073
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !3074
  %339 = and i1 %338, %132, !dbg !3074
  br i1 %339, label %340, label %347, !dbg !3074

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2767, metadata !DIExpression()), !dbg !3073
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !3075
  %343 = load i8, ptr %342, align 1, !dbg !3075, !tbaa !1024
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !3077

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !3078
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2767, metadata !DIExpression()), !dbg !3073
  %346 = icmp eq i64 %345, %322, !dbg !3079
  br i1 %346, label %347, label %340, !dbg !3080, !llvm.loop !3081

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !3083, !tbaa !1015
  call void @llvm.dbg.value(metadata i32 %348, metadata !3085, metadata !DIExpression()), !dbg !3093
  %349 = call i32 @iswprint(i32 noundef %348) #42, !dbg !3095
  %350 = icmp ne i32 %349, 0, !dbg !3096
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2758, metadata !DIExpression()), !dbg !3043
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2756, metadata !DIExpression()), !dbg !3043
  br label %351, !dbg !3097

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2758, metadata !DIExpression()), !dbg !3043
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2756, metadata !DIExpression()), !dbg !3043
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #42, !dbg !3098
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #42, !dbg !3099
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2758, metadata !DIExpression()), !dbg !3043
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2756, metadata !DIExpression()), !dbg !3043
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #42, !dbg !3098
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #42, !dbg !3099
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2896
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !3100
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !3100
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2758, metadata !DIExpression()), !dbg !3043
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2756, metadata !DIExpression()), !dbg !3043
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2722, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2750, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2896
  %359 = icmp ult i64 %357, 2, !dbg !3101
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !3102
  br i1 %361, label %461, label %362, !dbg !3102

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !3103
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2775, metadata !DIExpression()), !dbg !3104
  br label %364, !dbg !3105

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2789
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2888
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2886
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2896
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !3106
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2751, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2749, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2746, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2744, metadata !DIExpression()), !dbg !2886
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2738, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2729, metadata !DIExpression()), !dbg !2789
  br i1 %360, label %417, label %371, !dbg !3107

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !3112

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2749, metadata !DIExpression()), !dbg !2896
  %373 = and i8 %366, 1, !dbg !3115
  %374 = icmp eq i8 %373, 0, !dbg !3115
  %375 = select i1 %132, i1 %374, i1 false, !dbg !3115
  br i1 %375, label %376, label %392, !dbg !3115

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !3117
  br i1 %377, label %378, label %380, !dbg !3121

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3117
  store i8 39, ptr %379, align 1, !dbg !3117, !tbaa !1024
  br label %380, !dbg !3117

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !3121
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2729, metadata !DIExpression()), !dbg !2789
  %382 = icmp ult i64 %381, %146, !dbg !3122
  br i1 %382, label %383, label %385, !dbg !3125

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !3122
  store i8 36, ptr %384, align 1, !dbg !3122, !tbaa !1024
  br label %385, !dbg !3122

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !3125
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2729, metadata !DIExpression()), !dbg !2789
  %387 = icmp ult i64 %386, %146, !dbg !3126
  br i1 %387, label %388, label %390, !dbg !3129

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3126
  store i8 39, ptr %389, align 1, !dbg !3126, !tbaa !1024
  br label %390, !dbg !3126

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2738, metadata !DIExpression()), !dbg !2789
  br label %392, !dbg !3130

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2789
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2738, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2729, metadata !DIExpression()), !dbg !2789
  %395 = icmp ult i64 %393, %146, !dbg !3131
  br i1 %395, label %396, label %398, !dbg !3134

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !3131
  store i8 92, ptr %397, align 1, !dbg !3131, !tbaa !1024
  br label %398, !dbg !3131

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !3134
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2729, metadata !DIExpression()), !dbg !2789
  %400 = icmp ult i64 %399, %146, !dbg !3135
  br i1 %400, label %401, label %405, !dbg !3138

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !3135
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !3135
  store i8 %403, ptr %404, align 1, !dbg !3135, !tbaa !1024
  br label %405, !dbg !3135

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !3138
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2729, metadata !DIExpression()), !dbg !2789
  %407 = icmp ult i64 %406, %146, !dbg !3139
  br i1 %407, label %408, label %413, !dbg !3142

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !3139
  %411 = or disjoint i8 %410, 48, !dbg !3139
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !3139
  store i8 %411, ptr %412, align 1, !dbg !3139, !tbaa !1024
  br label %413, !dbg !3139

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !3142
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2729, metadata !DIExpression()), !dbg !2789
  %415 = and i8 %370, 7, !dbg !3143
  %416 = or disjoint i8 %415, 48, !dbg !3144
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2751, metadata !DIExpression()), !dbg !2896
  br label %426, !dbg !3145

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !3146
  %419 = icmp eq i8 %418, 0, !dbg !3146
  br i1 %419, label %426, label %420, !dbg !3148

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !3149
  br i1 %421, label %422, label %424, !dbg !3153

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3149
  store i8 92, ptr %423, align 1, !dbg !3149, !tbaa !1024
  br label %424, !dbg !3149

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !3153
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2746, metadata !DIExpression()), !dbg !2896
  br label %426, !dbg !3154

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2789
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2888
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2896
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2896
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2751, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2749, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2746, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2738, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2729, metadata !DIExpression()), !dbg !2789
  %432 = add i64 %367, 1, !dbg !3155
  %433 = icmp ugt i64 %363, %432, !dbg !3157
  br i1 %433, label %434, label %463, !dbg !3158

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !3159
  %436 = icmp ne i8 %435, 0, !dbg !3159
  %437 = and i8 %430, 1, !dbg !3159
  %438 = icmp eq i8 %437, 0, !dbg !3159
  %439 = select i1 %436, i1 %438, i1 false, !dbg !3159
  br i1 %439, label %440, label %451, !dbg !3159

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !3162
  br i1 %441, label %442, label %444, !dbg !3166

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !3162
  store i8 39, ptr %443, align 1, !dbg !3162, !tbaa !1024
  br label %444, !dbg !3162

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !3166
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2729, metadata !DIExpression()), !dbg !2789
  %446 = icmp ult i64 %445, %146, !dbg !3167
  br i1 %446, label %447, label %449, !dbg !3170

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !3167
  store i8 39, ptr %448, align 1, !dbg !3167, !tbaa !1024
  br label %449, !dbg !3167

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2738, metadata !DIExpression()), !dbg !2789
  br label %451, !dbg !3171

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !3172
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2738, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2729, metadata !DIExpression()), !dbg !2789
  %454 = icmp ult i64 %452, %146, !dbg !3173
  br i1 %454, label %455, label %457, !dbg !3176

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !3173
  store i8 %431, ptr %456, align 1, !dbg !3173, !tbaa !1024
  br label %457, !dbg !3173

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !3176
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2744, metadata !DIExpression()), !dbg !2886
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !3177
  %460 = load i8, ptr %459, align 1, !dbg !3177, !tbaa !1024
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2751, metadata !DIExpression()), !dbg !2896
  br label %364, !dbg !3178, !llvm.loop !3179

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2751, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2750, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2749, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2746, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2744, metadata !DIExpression()), !dbg !2886
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2738, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2722, metadata !DIExpression()), !dbg !2789
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2751, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2750, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2749, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2746, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2744, metadata !DIExpression()), !dbg !2886
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2738, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2722, metadata !DIExpression()), !dbg !2789
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !3182
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2789
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2794
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2789
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2789
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2886
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2896
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2896
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2896
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2720, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2751, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2750, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2749, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2746, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2744, metadata !DIExpression()), !dbg !2886
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2738, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2735, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2730, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2722, metadata !DIExpression()), !dbg !2789
  br i1 %126, label %487, label %476, !dbg !3183

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
  br i1 %137, label %488, label %509, !dbg !3185

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !3186

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
  %499 = lshr i8 %490, 5, !dbg !3187
  %500 = zext nneg i8 %499 to i64, !dbg !3187
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !3188
  %502 = load i32, ptr %501, align 4, !dbg !3188, !tbaa !1015
  %503 = and i8 %490, 31, !dbg !3189
  %504 = zext nneg i8 %503 to i32, !dbg !3189
  %505 = shl nuw i32 1, %504, !dbg !3190
  %506 = and i32 %502, %505, !dbg !3190
  %507 = icmp eq i32 %506, 0, !dbg !3190
  %508 = and i1 %172, %507, !dbg !3191
  br i1 %508, label %558, label %520, !dbg !3191

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
  br i1 %172, label %558, label %520, !dbg !3192

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !3182
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2789
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2794
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2798
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2888
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !3193
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2896
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2896
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2720, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2751, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2750, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2744, metadata !DIExpression()), !dbg !2886
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2738, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2735, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2730, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2722, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.label(metadata !2778), !dbg !3194
  br i1 %131, label %530, label %659, !dbg !3195

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2749, metadata !DIExpression()), !dbg !2896
  %531 = and i8 %525, 1, !dbg !3197
  %532 = icmp eq i8 %531, 0, !dbg !3197
  %533 = select i1 %132, i1 %532, i1 false, !dbg !3197
  br i1 %533, label %534, label %550, !dbg !3197

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !3199
  br i1 %535, label %536, label %538, !dbg !3203

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3199
  store i8 39, ptr %537, align 1, !dbg !3199, !tbaa !1024
  br label %538, !dbg !3199

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !3203
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2729, metadata !DIExpression()), !dbg !2789
  %540 = icmp ult i64 %539, %529, !dbg !3204
  br i1 %540, label %541, label %543, !dbg !3207

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !3204
  store i8 36, ptr %542, align 1, !dbg !3204, !tbaa !1024
  br label %543, !dbg !3204

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !3207
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2729, metadata !DIExpression()), !dbg !2789
  %545 = icmp ult i64 %544, %529, !dbg !3208
  br i1 %545, label %546, label %548, !dbg !3211

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !3208
  store i8 39, ptr %547, align 1, !dbg !3208, !tbaa !1024
  br label %548, !dbg !3208

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !3211
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2738, metadata !DIExpression()), !dbg !2789
  br label %550, !dbg !3212

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2896
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2738, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2729, metadata !DIExpression()), !dbg !2789
  %553 = icmp ult i64 %551, %529, !dbg !3213
  br i1 %553, label %554, label %556, !dbg !3216

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !3213
  store i8 92, ptr %555, align 1, !dbg !3213, !tbaa !1024
  br label %556, !dbg !3213

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !3216
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2720, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2751, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2750, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2749, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2744, metadata !DIExpression()), !dbg !2886
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2738, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2735, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2730, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2722, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.label(metadata !2779), !dbg !3217
  br label %585, !dbg !3218

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !3182
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2789
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2794
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2798
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2888
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !3193
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2896
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2896
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !3221
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2720, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2751, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2750, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2749, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2744, metadata !DIExpression()), !dbg !2886
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2738, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2735, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2730, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2722, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.label(metadata !2779), !dbg !3217
  %569 = and i8 %563, 1, !dbg !3218
  %570 = icmp ne i8 %569, 0, !dbg !3218
  %571 = and i8 %565, 1, !dbg !3218
  %572 = icmp eq i8 %571, 0, !dbg !3218
  %573 = select i1 %570, i1 %572, i1 false, !dbg !3218
  br i1 %573, label %574, label %585, !dbg !3218

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !3222
  br i1 %575, label %576, label %578, !dbg !3226

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !3222
  store i8 39, ptr %577, align 1, !dbg !3222, !tbaa !1024
  br label %578, !dbg !3222

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !3226
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2729, metadata !DIExpression()), !dbg !2789
  %580 = icmp ult i64 %579, %568, !dbg !3227
  br i1 %580, label %581, label %583, !dbg !3230

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !3227
  store i8 39, ptr %582, align 1, !dbg !3227, !tbaa !1024
  br label %583, !dbg !3227

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !3230
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2738, metadata !DIExpression()), !dbg !2789
  br label %585, !dbg !3231

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2896
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2738, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2729, metadata !DIExpression()), !dbg !2789
  %595 = icmp ult i64 %593, %586, !dbg !3232
  br i1 %595, label %596, label %598, !dbg !3235

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !3232
  store i8 %587, ptr %597, align 1, !dbg !3232, !tbaa !1024
  br label %598, !dbg !3232

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2729, metadata !DIExpression()), !dbg !2789
  %600 = icmp eq i8 %588, 0, !dbg !3236
  %601 = select i1 %600, i8 0, i8 %143, !dbg !3238
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2736, metadata !DIExpression()), !dbg !2789
  br label %602, !dbg !3239

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !3182
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2789
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2794
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2798
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2799
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2888
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !3193
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2720, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2744, metadata !DIExpression()), !dbg !2886
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2738, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2736, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2735, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2730, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2722, metadata !DIExpression()), !dbg !2789
  %611 = add i64 %609, 1, !dbg !3240
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2744, metadata !DIExpression()), !dbg !2886
  br label %138, !dbg !3241, !llvm.loop !3242

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2720, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2736, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2735, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2730, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2729, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2722, metadata !DIExpression()), !dbg !2789
  %613 = icmp eq i64 %140, 0, !dbg !3244
  %614 = and i1 %132, %613, !dbg !3246
  %615 = xor i1 %614, true, !dbg !3246
  %616 = select i1 %615, i1 true, i1 %131, !dbg !3246
  br i1 %616, label %617, label %655, !dbg !3246

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !3247
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !3247
  br i1 %621, label %622, label %631, !dbg !3247

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !3249
  %624 = icmp eq i8 %623, 0, !dbg !3249
  br i1 %624, label %627, label %625, !dbg !3252

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !3253
  br label %672, !dbg !3254

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !3255
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !3257
  br i1 %630, label %28, label %631, !dbg !3257

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !3258
  %634 = select i1 %633, i1 %632, i1 false, !dbg !3260
  br i1 %634, label %635, label %650, !dbg !3260

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2731, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2729, metadata !DIExpression()), !dbg !2789
  %636 = load i8, ptr %119, align 1, !dbg !3261, !tbaa !1024
  %637 = icmp eq i8 %636, 0, !dbg !3264
  br i1 %637, label %650, label %638, !dbg !3264

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2731, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2729, metadata !DIExpression()), !dbg !2789
  %642 = icmp ult i64 %641, %146, !dbg !3265
  br i1 %642, label %643, label %645, !dbg !3268

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !3265
  store i8 %639, ptr %644, align 1, !dbg !3265, !tbaa !1024
  br label %645, !dbg !3265

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !3268
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2729, metadata !DIExpression()), !dbg !2789
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !3269
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2731, metadata !DIExpression()), !dbg !2789
  %648 = load i8, ptr %647, align 1, !dbg !3261, !tbaa !1024
  %649 = icmp eq i8 %648, 0, !dbg !3264
  br i1 %649, label %650, label %638, !dbg !3264, !llvm.loop !3270

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2869
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2729, metadata !DIExpression()), !dbg !2789
  %652 = icmp ult i64 %651, %146, !dbg !3272
  br i1 %652, label %653, label %672, !dbg !3274

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !3275
  store i8 0, ptr %654, align 1, !dbg !3276, !tbaa !1024
  br label %672, !dbg !3275

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2780), !dbg !3277
  %657 = icmp eq i8 %123, 0, !dbg !3278
  %658 = select i1 %657, i32 2, i32 4, !dbg !3278
  br label %666, !dbg !3278

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2780), !dbg !3277
  %662 = icmp eq i32 %115, 2, !dbg !3280
  %663 = icmp eq i8 %123, 0, !dbg !3278
  %664 = select i1 %663, i32 2, i32 4, !dbg !3278
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !3278
  br label %666, !dbg !3278

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2723, metadata !DIExpression()), !dbg !2789
  %670 = and i32 %5, -3, !dbg !3281
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !3282
  br label %672, !dbg !3283

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !3284
}

; Function Attrs: nounwind
declare !dbg !3285 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3288 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !3290 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3294, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3295, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3296, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata ptr %0, metadata !3298, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i64 %1, metadata !3303, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata ptr null, metadata !3304, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata ptr %2, metadata !3305, metadata !DIExpression()), !dbg !3311
  %4 = icmp eq ptr %2, null, !dbg !3313
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3313
  call void @llvm.dbg.value(metadata ptr %5, metadata !3306, metadata !DIExpression()), !dbg !3311
  %6 = tail call ptr @__errno_location() #45, !dbg !3314
  %7 = load i32, ptr %6, align 4, !dbg !3314, !tbaa !1015
  call void @llvm.dbg.value(metadata i32 %7, metadata !3307, metadata !DIExpression()), !dbg !3311
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3315
  %9 = load i32, ptr %8, align 4, !dbg !3315, !tbaa !2663
  %10 = or i32 %9, 1, !dbg !3316
  call void @llvm.dbg.value(metadata i32 %10, metadata !3308, metadata !DIExpression()), !dbg !3311
  %11 = load i32, ptr %5, align 8, !dbg !3317, !tbaa !2613
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3318
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3319
  %14 = load ptr, ptr %13, align 8, !dbg !3319, !tbaa !2684
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3320
  %16 = load ptr, ptr %15, align 8, !dbg !3320, !tbaa !2687
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3321
  %18 = add i64 %17, 1, !dbg !3322
  call void @llvm.dbg.value(metadata i64 %18, metadata !3309, metadata !DIExpression()), !dbg !3311
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #49, !dbg !3323
  call void @llvm.dbg.value(metadata ptr %19, metadata !3310, metadata !DIExpression()), !dbg !3311
  %20 = load i32, ptr %5, align 8, !dbg !3324, !tbaa !2613
  %21 = load ptr, ptr %13, align 8, !dbg !3325, !tbaa !2684
  %22 = load ptr, ptr %15, align 8, !dbg !3326, !tbaa !2687
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3327
  store i32 %7, ptr %6, align 4, !dbg !3328, !tbaa !1015
  ret ptr %19, !dbg !3329
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #11 !dbg !3299 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3298, metadata !DIExpression()), !dbg !3330
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3303, metadata !DIExpression()), !dbg !3330
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3304, metadata !DIExpression()), !dbg !3330
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3305, metadata !DIExpression()), !dbg !3330
  %5 = icmp eq ptr %3, null, !dbg !3331
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3331
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3306, metadata !DIExpression()), !dbg !3330
  %7 = tail call ptr @__errno_location() #45, !dbg !3332
  %8 = load i32, ptr %7, align 4, !dbg !3332, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3307, metadata !DIExpression()), !dbg !3330
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3333
  %10 = load i32, ptr %9, align 4, !dbg !3333, !tbaa !2663
  %11 = icmp eq ptr %2, null, !dbg !3334
  %12 = zext i1 %11 to i32, !dbg !3334
  %13 = or i32 %10, %12, !dbg !3335
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3308, metadata !DIExpression()), !dbg !3330
  %14 = load i32, ptr %6, align 8, !dbg !3336, !tbaa !2613
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3337
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3338
  %17 = load ptr, ptr %16, align 8, !dbg !3338, !tbaa !2684
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3339
  %19 = load ptr, ptr %18, align 8, !dbg !3339, !tbaa !2687
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3340
  %21 = add i64 %20, 1, !dbg !3341
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3309, metadata !DIExpression()), !dbg !3330
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #49, !dbg !3342
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3310, metadata !DIExpression()), !dbg !3330
  %23 = load i32, ptr %6, align 8, !dbg !3343, !tbaa !2613
  %24 = load ptr, ptr %16, align 8, !dbg !3344, !tbaa !2684
  %25 = load ptr, ptr %18, align 8, !dbg !3345, !tbaa !2687
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3346
  store i32 %8, ptr %7, align 4, !dbg !3347, !tbaa !1015
  br i1 %11, label %28, label %27, !dbg !3348

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3349, !tbaa !1201
  br label %28, !dbg !3351

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3352
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #11 !dbg !3353 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3358, !tbaa !942
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3355, metadata !DIExpression()), !dbg !3359
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3356, metadata !DIExpression()), !dbg !3360
  %2 = load i32, ptr @nslots, align 4, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3356, metadata !DIExpression()), !dbg !3360
  %3 = icmp sgt i32 %2, 1, !dbg !3361
  br i1 %3, label %4, label %6, !dbg !3363

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3361
  br label %10, !dbg !3363

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3364
  %8 = load ptr, ptr %7, align 8, !dbg !3364, !tbaa !3366
  %9 = icmp eq ptr %8, @slot0, !dbg !3368
  br i1 %9, label %17, label %16, !dbg !3369

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3356, metadata !DIExpression()), !dbg !3360
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3370
  %13 = load ptr, ptr %12, align 8, !dbg !3370, !tbaa !3366
  tail call void @free(ptr noundef %13) #42, !dbg !3371
  %14 = add nuw nsw i64 %11, 1, !dbg !3372
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3356, metadata !DIExpression()), !dbg !3360
  %15 = icmp eq i64 %14, %5, !dbg !3361
  br i1 %15, label %6, label %10, !dbg !3363, !llvm.loop !3373

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #42, !dbg !3375
  store i64 256, ptr @slotvec0, align 8, !dbg !3377, !tbaa !3378
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3379, !tbaa !3366
  br label %17, !dbg !3380

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3381
  br i1 %18, label %20, label %19, !dbg !3383

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #42, !dbg !3384
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3386, !tbaa !942
  br label %20, !dbg !3387

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3388, !tbaa !1015
  ret void, !dbg !3389
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !3390 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3392, metadata !DIExpression()), !dbg !3394
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3393, metadata !DIExpression()), !dbg !3394
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3395
  ret ptr %3, !dbg !3396
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #11 !dbg !3397 {
  %5 = alloca i64, align 8, !DIAssignID !3417
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3411, metadata !DIExpression(), metadata !3417, metadata ptr %5, metadata !DIExpression()), !dbg !3418
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3401, metadata !DIExpression()), !dbg !3419
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3402, metadata !DIExpression()), !dbg !3419
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3403, metadata !DIExpression()), !dbg !3419
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3404, metadata !DIExpression()), !dbg !3419
  %6 = tail call ptr @__errno_location() #45, !dbg !3420
  %7 = load i32, ptr %6, align 4, !dbg !3420, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3405, metadata !DIExpression()), !dbg !3419
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3421, !tbaa !942
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3406, metadata !DIExpression()), !dbg !3419
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3407, metadata !DIExpression()), !dbg !3419
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3422
  br i1 %9, label %10, label %11, !dbg !3422

10:                                               ; preds = %4
  tail call void @abort() #44, !dbg !3424
  unreachable, !dbg !3424

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3425, !tbaa !1015
  %13 = icmp sgt i32 %12, %0, !dbg !3426
  br i1 %13, label %32, label %14, !dbg !3427

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3428
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3408, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3418
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #42, !dbg !3429
  %16 = sext i32 %12 to i64, !dbg !3430
  store i64 %16, ptr %5, align 8, !dbg !3431, !tbaa !1201, !DIAssignID !3432
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3411, metadata !DIExpression(), metadata !3432, metadata ptr %5, metadata !DIExpression()), !dbg !3418
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3433
  %18 = add nuw nsw i32 %0, 1, !dbg !3434
  %19 = sub i32 %18, %12, !dbg !3435
  %20 = sext i32 %19 to i64, !dbg !3436
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #42, !dbg !3437
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3406, metadata !DIExpression()), !dbg !3419
  store ptr %21, ptr @slotvec, align 8, !dbg !3438, !tbaa !942
  br i1 %15, label %22, label %23, !dbg !3439

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3440, !tbaa.struct !3442
  br label %23, !dbg !3443

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3444, !tbaa !1015
  %25 = sext i32 %24 to i64, !dbg !3445
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3445
  %27 = load i64, ptr %5, align 8, !dbg !3446, !tbaa !1201
  %28 = sub nsw i64 %27, %25, !dbg !3447
  %29 = shl i64 %28, 4, !dbg !3448
  call void @llvm.dbg.value(metadata ptr %26, metadata !2827, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i32 0, metadata !2830, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i64 %29, metadata !2831, metadata !DIExpression()), !dbg !3449
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #42, !dbg !3451
  %30 = load i64, ptr %5, align 8, !dbg !3452, !tbaa !1201
  %31 = trunc i64 %30 to i32, !dbg !3452
  store i32 %31, ptr @nslots, align 4, !dbg !3453, !tbaa !1015
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #42, !dbg !3454
  br label %32, !dbg !3455

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3419
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3406, metadata !DIExpression()), !dbg !3419
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3456
  %36 = load i64, ptr %35, align 8, !dbg !3457, !tbaa !3378
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3412, metadata !DIExpression()), !dbg !3458
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3459
  %38 = load ptr, ptr %37, align 8, !dbg !3459, !tbaa !3366
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3414, metadata !DIExpression()), !dbg !3458
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3460
  %40 = load i32, ptr %39, align 4, !dbg !3460, !tbaa !2663
  %41 = or i32 %40, 1, !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3415, metadata !DIExpression()), !dbg !3458
  %42 = load i32, ptr %3, align 8, !dbg !3462, !tbaa !2613
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3463
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3464
  %45 = load ptr, ptr %44, align 8, !dbg !3464, !tbaa !2684
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3465
  %47 = load ptr, ptr %46, align 8, !dbg !3465, !tbaa !2687
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3466
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3416, metadata !DIExpression()), !dbg !3458
  %49 = icmp ugt i64 %36, %48, !dbg !3467
  br i1 %49, label %60, label %50, !dbg !3469

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3470
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3412, metadata !DIExpression()), !dbg !3458
  store i64 %51, ptr %35, align 8, !dbg !3472, !tbaa !3378
  %52 = icmp eq ptr %38, @slot0, !dbg !3473
  br i1 %52, label %54, label %53, !dbg !3475

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #42, !dbg !3476
  br label %54, !dbg !3476

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #49, !dbg !3477
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3414, metadata !DIExpression()), !dbg !3458
  store ptr %55, ptr %37, align 8, !dbg !3478, !tbaa !3366
  %56 = load i32, ptr %3, align 8, !dbg !3479, !tbaa !2613
  %57 = load ptr, ptr %44, align 8, !dbg !3480, !tbaa !2684
  %58 = load ptr, ptr %46, align 8, !dbg !3481, !tbaa !2687
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3482
  br label %60, !dbg !3483

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3458
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3414, metadata !DIExpression()), !dbg !3458
  store i32 %7, ptr %6, align 4, !dbg !3484, !tbaa !1015
  ret ptr %61, !dbg !3485
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #28

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3486 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3490, metadata !DIExpression()), !dbg !3493
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3491, metadata !DIExpression()), !dbg !3493
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3492, metadata !DIExpression()), !dbg !3493
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3494
  ret ptr %4, !dbg !3495
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #11 !dbg !3496 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3498, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i32 0, metadata !3392, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata ptr %0, metadata !3393, metadata !DIExpression()), !dbg !3500
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3502
  ret ptr %2, !dbg !3503
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !3504 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3508, metadata !DIExpression()), !dbg !3510
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3509, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i32 0, metadata !3490, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata ptr %0, metadata !3491, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i64 %1, metadata !3492, metadata !DIExpression()), !dbg !3511
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3513
  ret ptr %3, !dbg !3514
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !3515 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3523
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3522, metadata !DIExpression(), metadata !3523, metadata ptr %4, metadata !DIExpression()), !dbg !3524
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3519, metadata !DIExpression()), !dbg !3524
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3520, metadata !DIExpression()), !dbg !3524
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3521, metadata !DIExpression()), !dbg !3524
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3525
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3526), !dbg !3529
  call void @llvm.dbg.value(metadata i32 %1, metadata !3530, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3535, metadata !DIExpression()), !dbg !3538
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3538, !alias.scope !3526, !DIAssignID !3539
  call void @llvm.dbg.assign(metadata i8 0, metadata !3522, metadata !DIExpression(), metadata !3539, metadata ptr %4, metadata !DIExpression()), !dbg !3524
  %5 = icmp eq i32 %1, 10, !dbg !3540
  br i1 %5, label %6, label %7, !dbg !3542

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3543, !noalias !3526
  unreachable, !dbg !3543

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3544, !tbaa !2613, !alias.scope !3526, !DIAssignID !3545
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3522, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3545, metadata ptr %4, metadata !DIExpression()), !dbg !3524
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3546
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3547
  ret ptr %8, !dbg !3548
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !3549 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3558
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3557, metadata !DIExpression(), metadata !3558, metadata ptr %5, metadata !DIExpression()), !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3553, metadata !DIExpression()), !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3554, metadata !DIExpression()), !dbg !3559
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3555, metadata !DIExpression()), !dbg !3559
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3556, metadata !DIExpression()), !dbg !3559
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !3560
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3561), !dbg !3564
  call void @llvm.dbg.value(metadata i32 %1, metadata !3530, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3535, metadata !DIExpression()), !dbg !3567
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3567, !alias.scope !3561, !DIAssignID !3568
  call void @llvm.dbg.assign(metadata i8 0, metadata !3557, metadata !DIExpression(), metadata !3568, metadata ptr %5, metadata !DIExpression()), !dbg !3559
  %6 = icmp eq i32 %1, 10, !dbg !3569
  br i1 %6, label %7, label %8, !dbg !3570

7:                                                ; preds = %4
  tail call void @abort() #44, !dbg !3571, !noalias !3561
  unreachable, !dbg !3571

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3572, !tbaa !2613, !alias.scope !3561, !DIAssignID !3573
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3557, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3573, metadata ptr %5, metadata !DIExpression()), !dbg !3559
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3574
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !3575
  ret ptr %9, !dbg !3576
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !3577 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3583
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3581, metadata !DIExpression()), !dbg !3584
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3582, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3522, metadata !DIExpression(), metadata !3583, metadata ptr %3, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 0, metadata !3519, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %0, metadata !3520, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata ptr %1, metadata !3521, metadata !DIExpression()), !dbg !3585
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !3587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3588), !dbg !3591
  call void @llvm.dbg.value(metadata i32 %0, metadata !3530, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3535, metadata !DIExpression()), !dbg !3594
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3594, !alias.scope !3588, !DIAssignID !3595
  call void @llvm.dbg.assign(metadata i8 0, metadata !3522, metadata !DIExpression(), metadata !3595, metadata ptr %3, metadata !DIExpression()), !dbg !3585
  %4 = icmp eq i32 %0, 10, !dbg !3596
  br i1 %4, label %5, label %6, !dbg !3597

5:                                                ; preds = %2
  tail call void @abort() #44, !dbg !3598, !noalias !3588
  unreachable, !dbg !3598

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3599, !tbaa !2613, !alias.scope !3588, !DIAssignID !3600
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3522, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3600, metadata ptr %3, metadata !DIExpression()), !dbg !3585
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3601
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !3602
  ret ptr %7, !dbg !3603
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3604 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3611
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3608, metadata !DIExpression()), !dbg !3612
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3609, metadata !DIExpression()), !dbg !3612
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3610, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3557, metadata !DIExpression(), metadata !3611, metadata ptr %4, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 0, metadata !3553, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 %0, metadata !3554, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata ptr %1, metadata !3555, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i64 %2, metadata !3556, metadata !DIExpression()), !dbg !3613
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3615
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3616), !dbg !3619
  call void @llvm.dbg.value(metadata i32 %0, metadata !3530, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3535, metadata !DIExpression()), !dbg !3622
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3622, !alias.scope !3616, !DIAssignID !3623
  call void @llvm.dbg.assign(metadata i8 0, metadata !3557, metadata !DIExpression(), metadata !3623, metadata ptr %4, metadata !DIExpression()), !dbg !3613
  %5 = icmp eq i32 %0, 10, !dbg !3624
  br i1 %5, label %6, label %7, !dbg !3625

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3626, !noalias !3616
  unreachable, !dbg !3626

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3627, !tbaa !2613, !alias.scope !3616, !DIAssignID !3628
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3557, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3628, metadata ptr %4, metadata !DIExpression()), !dbg !3613
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3629
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3630
  ret ptr %8, !dbg !3631
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #11 !dbg !3632 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3640
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3639, metadata !DIExpression(), metadata !3640, metadata ptr %4, metadata !DIExpression()), !dbg !3641
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3636, metadata !DIExpression()), !dbg !3641
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3637, metadata !DIExpression()), !dbg !3641
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3638, metadata !DIExpression()), !dbg !3641
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3642
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3643, !tbaa.struct !3644, !DIAssignID !3645
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3639, metadata !DIExpression(), metadata !3645, metadata ptr %4, metadata !DIExpression()), !dbg !3641
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2630, metadata !DIExpression()), !dbg !3646
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2631, metadata !DIExpression()), !dbg !3646
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2632, metadata !DIExpression()), !dbg !3646
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2633, metadata !DIExpression()), !dbg !3646
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3648
  %6 = lshr i8 %2, 5, !dbg !3649
  %7 = zext nneg i8 %6 to i64, !dbg !3649
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3650
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2634, metadata !DIExpression()), !dbg !3646
  %9 = and i8 %2, 31, !dbg !3651
  %10 = zext nneg i8 %9 to i32, !dbg !3651
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2636, metadata !DIExpression()), !dbg !3646
  %11 = load i32, ptr %8, align 4, !dbg !3652, !tbaa !1015
  %12 = lshr i32 %11, %10, !dbg !3653
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2637, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3646
  %13 = and i32 %12, 1, !dbg !3654
  %14 = xor i32 %13, 1, !dbg !3654
  %15 = shl nuw i32 %14, %10, !dbg !3655
  %16 = xor i32 %15, %11, !dbg !3656
  store i32 %16, ptr %8, align 4, !dbg !3656, !tbaa !1015
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3657
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3658
  ret ptr %17, !dbg !3659
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #11 !dbg !3660 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3666
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3664, metadata !DIExpression()), !dbg !3667
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3665, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3639, metadata !DIExpression(), metadata !3666, metadata ptr %3, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata ptr %0, metadata !3636, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i64 -1, metadata !3637, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i8 %1, metadata !3638, metadata !DIExpression()), !dbg !3668
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !3670
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3671, !tbaa.struct !3644, !DIAssignID !3672
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3639, metadata !DIExpression(), metadata !3672, metadata ptr %3, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata ptr %3, metadata !2630, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i8 %1, metadata !2631, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 1, metadata !2632, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i8 %1, metadata !2633, metadata !DIExpression()), !dbg !3673
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3675
  %5 = lshr i8 %1, 5, !dbg !3676
  %6 = zext nneg i8 %5 to i64, !dbg !3676
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3677
  call void @llvm.dbg.value(metadata ptr %7, metadata !2634, metadata !DIExpression()), !dbg !3673
  %8 = and i8 %1, 31, !dbg !3678
  %9 = zext nneg i8 %8 to i32, !dbg !3678
  call void @llvm.dbg.value(metadata i32 %9, metadata !2636, metadata !DIExpression()), !dbg !3673
  %10 = load i32, ptr %7, align 4, !dbg !3679, !tbaa !1015
  %11 = lshr i32 %10, %9, !dbg !3680
  call void @llvm.dbg.value(metadata i32 %11, metadata !2637, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3673
  %12 = and i32 %11, 1, !dbg !3681
  %13 = xor i32 %12, 1, !dbg !3681
  %14 = shl nuw i32 %13, %9, !dbg !3682
  %15 = xor i32 %14, %10, !dbg !3683
  store i32 %15, ptr %7, align 4, !dbg !3683, !tbaa !1015
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3684
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !3685
  ret ptr %16, !dbg !3686
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #11 !dbg !3687 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3690
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3689, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata ptr %0, metadata !3664, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8 58, metadata !3665, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3639, metadata !DIExpression(), metadata !3690, metadata ptr %2, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata ptr %0, metadata !3636, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 -1, metadata !3637, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i8 58, metadata !3638, metadata !DIExpression()), !dbg !3694
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #42, !dbg !3696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3697, !tbaa.struct !3644, !DIAssignID !3698
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3639, metadata !DIExpression(), metadata !3698, metadata ptr %2, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata ptr %2, metadata !2630, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i8 58, metadata !2631, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i32 1, metadata !2632, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i8 58, metadata !2633, metadata !DIExpression()), !dbg !3699
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3701
  call void @llvm.dbg.value(metadata ptr %3, metadata !2634, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i32 26, metadata !2636, metadata !DIExpression()), !dbg !3699
  %4 = load i32, ptr %3, align 4, !dbg !3702, !tbaa !1015
  call void @llvm.dbg.value(metadata i32 %4, metadata !2637, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3699
  %5 = or i32 %4, 67108864, !dbg !3703
  store i32 %5, ptr %3, align 4, !dbg !3703, !tbaa !1015
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3704
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #42, !dbg !3705
  ret ptr %6, !dbg !3706
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !3707 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3711
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3709, metadata !DIExpression()), !dbg !3712
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3710, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3639, metadata !DIExpression(), metadata !3711, metadata ptr %3, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata ptr %0, metadata !3636, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i64 %1, metadata !3637, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i8 58, metadata !3638, metadata !DIExpression()), !dbg !3713
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42, !dbg !3715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3716, !tbaa.struct !3644, !DIAssignID !3717
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3639, metadata !DIExpression(), metadata !3717, metadata ptr %3, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata ptr %3, metadata !2630, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i8 58, metadata !2631, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i32 1, metadata !2632, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i8 58, metadata !2633, metadata !DIExpression()), !dbg !3718
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3720
  call void @llvm.dbg.value(metadata ptr %4, metadata !2634, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i32 26, metadata !2636, metadata !DIExpression()), !dbg !3718
  %5 = load i32, ptr %4, align 4, !dbg !3721, !tbaa !1015
  call void @llvm.dbg.value(metadata i32 %5, metadata !2637, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3718
  %6 = or i32 %5, 67108864, !dbg !3722
  store i32 %6, ptr %4, align 4, !dbg !3722, !tbaa !1015
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3723
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42, !dbg !3724
  ret ptr %7, !dbg !3725
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !3726 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3732
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3731, metadata !DIExpression(), metadata !3732, metadata ptr %4, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3535, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3734
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3728, metadata !DIExpression()), !dbg !3733
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3729, metadata !DIExpression()), !dbg !3733
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3730, metadata !DIExpression()), !dbg !3733
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3736
  call void @llvm.dbg.value(metadata i32 %1, metadata !3530, metadata !DIExpression()), !dbg !3737
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3535, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3737
  %5 = icmp eq i32 %1, 10, !dbg !3738
  br i1 %5, label %6, label %7, !dbg !3739

6:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3740, !noalias !3741
  unreachable, !dbg !3740

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3535, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3737
  store i32 %1, ptr %4, align 8, !dbg !3744, !tbaa.struct !3644, !DIAssignID !3745
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3744
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3744
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3731, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3745, metadata ptr %4, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3731, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3746, metadata ptr %8, metadata !DIExpression()), !dbg !3733
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2630, metadata !DIExpression()), !dbg !3747
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2631, metadata !DIExpression()), !dbg !3747
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2632, metadata !DIExpression()), !dbg !3747
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2633, metadata !DIExpression()), !dbg !3747
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3749
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2634, metadata !DIExpression()), !dbg !3747
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2636, metadata !DIExpression()), !dbg !3747
  %10 = load i32, ptr %9, align 4, !dbg !3750, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2637, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3747
  %11 = or i32 %10, 67108864, !dbg !3751
  store i32 %11, ptr %9, align 4, !dbg !3751, !tbaa !1015, !DIAssignID !3752
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3731, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3752, metadata ptr %9, metadata !DIExpression()), !dbg !3733
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3753
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3754
  ret ptr %12, !dbg !3755
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 !dbg !3756 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3764
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3760, metadata !DIExpression()), !dbg !3765
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3761, metadata !DIExpression()), !dbg !3765
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3762, metadata !DIExpression()), !dbg !3765
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3763, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3766, metadata !DIExpression(), metadata !3764, metadata ptr %5, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i32 %0, metadata !3771, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata ptr %1, metadata !3772, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata ptr %2, metadata !3773, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata ptr %3, metadata !3774, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 -1, metadata !3775, metadata !DIExpression()), !dbg !3776
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !3778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3779, !tbaa.struct !3644, !DIAssignID !3780
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3766, metadata !DIExpression(), metadata !3780, metadata ptr %5, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3766, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3781, metadata ptr undef, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata ptr %5, metadata !2670, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata ptr %1, metadata !2671, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata ptr %2, metadata !2672, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata ptr %5, metadata !2670, metadata !DIExpression()), !dbg !3782
  store i32 10, ptr %5, align 8, !dbg !3784, !tbaa !2613, !DIAssignID !3785
  call void @llvm.dbg.assign(metadata i32 10, metadata !3766, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3785, metadata ptr %5, metadata !DIExpression()), !dbg !3776
  %6 = icmp ne ptr %1, null, !dbg !3786
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3787
  br i1 %8, label %10, label %9, !dbg !3787

9:                                                ; preds = %4
  tail call void @abort() #44, !dbg !3788
  unreachable, !dbg !3788

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3789
  store ptr %1, ptr %11, align 8, !dbg !3790, !tbaa !2684, !DIAssignID !3791
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3766, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3791, metadata ptr %11, metadata !DIExpression()), !dbg !3776
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3792
  store ptr %2, ptr %12, align 8, !dbg !3793, !tbaa !2687, !DIAssignID !3794
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3766, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3794, metadata ptr %12, metadata !DIExpression()), !dbg !3776
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3795
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !3796
  ret ptr %13, !dbg !3797
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #11 !dbg !3767 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3798
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3766, metadata !DIExpression(), metadata !3798, metadata ptr %6, metadata !DIExpression()), !dbg !3799
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3771, metadata !DIExpression()), !dbg !3799
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3772, metadata !DIExpression()), !dbg !3799
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3773, metadata !DIExpression()), !dbg !3799
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3774, metadata !DIExpression()), !dbg !3799
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3775, metadata !DIExpression()), !dbg !3799
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #42, !dbg !3800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3801, !tbaa.struct !3644, !DIAssignID !3802
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3766, metadata !DIExpression(), metadata !3802, metadata ptr %6, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3766, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3803, metadata ptr undef, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata ptr %6, metadata !2670, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata ptr %1, metadata !2671, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata ptr %2, metadata !2672, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata ptr %6, metadata !2670, metadata !DIExpression()), !dbg !3804
  store i32 10, ptr %6, align 8, !dbg !3806, !tbaa !2613, !DIAssignID !3807
  call void @llvm.dbg.assign(metadata i32 10, metadata !3766, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3807, metadata ptr %6, metadata !DIExpression()), !dbg !3799
  %7 = icmp ne ptr %1, null, !dbg !3808
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3809
  br i1 %9, label %11, label %10, !dbg !3809

10:                                               ; preds = %5
  tail call void @abort() #44, !dbg !3810
  unreachable, !dbg !3810

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3811
  store ptr %1, ptr %12, align 8, !dbg !3812, !tbaa !2684, !DIAssignID !3813
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3766, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3813, metadata ptr %12, metadata !DIExpression()), !dbg !3799
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3814
  store ptr %2, ptr %13, align 8, !dbg !3815, !tbaa !2687, !DIAssignID !3816
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3766, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3816, metadata ptr %13, metadata !DIExpression()), !dbg !3799
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3817
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #42, !dbg !3818
  ret ptr %14, !dbg !3819
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !3820 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3827
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3824, metadata !DIExpression()), !dbg !3828
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3825, metadata !DIExpression()), !dbg !3828
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3826, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i32 0, metadata !3760, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata ptr %0, metadata !3761, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata ptr %1, metadata !3762, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata ptr %2, metadata !3763, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3766, metadata !DIExpression(), metadata !3827, metadata ptr %4, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i32 0, metadata !3771, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata ptr %0, metadata !3772, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata ptr %1, metadata !3773, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata ptr %2, metadata !3774, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i64 -1, metadata !3775, metadata !DIExpression()), !dbg !3831
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42, !dbg !3833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3834, !tbaa.struct !3644, !DIAssignID !3835
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3766, metadata !DIExpression(), metadata !3835, metadata ptr %4, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3766, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3836, metadata ptr undef, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata ptr %4, metadata !2670, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata ptr %0, metadata !2671, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata ptr %1, metadata !2672, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata ptr %4, metadata !2670, metadata !DIExpression()), !dbg !3837
  store i32 10, ptr %4, align 8, !dbg !3839, !tbaa !2613, !DIAssignID !3840
  call void @llvm.dbg.assign(metadata i32 10, metadata !3766, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3840, metadata ptr %4, metadata !DIExpression()), !dbg !3831
  %5 = icmp ne ptr %0, null, !dbg !3841
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3842
  br i1 %7, label %9, label %8, !dbg !3842

8:                                                ; preds = %3
  tail call void @abort() #44, !dbg !3843
  unreachable, !dbg !3843

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3844
  store ptr %0, ptr %10, align 8, !dbg !3845, !tbaa !2684, !DIAssignID !3846
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3766, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3846, metadata ptr %10, metadata !DIExpression()), !dbg !3831
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3847
  store ptr %1, ptr %11, align 8, !dbg !3848, !tbaa !2687, !DIAssignID !3849
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3766, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3849, metadata ptr %11, metadata !DIExpression()), !dbg !3831
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3850
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42, !dbg !3851
  ret ptr %12, !dbg !3852
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !3853 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3861
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3857, metadata !DIExpression()), !dbg !3862
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3858, metadata !DIExpression()), !dbg !3862
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3859, metadata !DIExpression()), !dbg !3862
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3860, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3766, metadata !DIExpression(), metadata !3861, metadata ptr %5, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i32 0, metadata !3771, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata ptr %0, metadata !3772, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata ptr %1, metadata !3773, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata ptr %2, metadata !3774, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i64 %3, metadata !3775, metadata !DIExpression()), !dbg !3863
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #42, !dbg !3865
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3866, !tbaa.struct !3644, !DIAssignID !3867
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3766, metadata !DIExpression(), metadata !3867, metadata ptr %5, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3766, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3868, metadata ptr undef, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata ptr %5, metadata !2670, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata ptr %0, metadata !2671, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata ptr %1, metadata !2672, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata ptr %5, metadata !2670, metadata !DIExpression()), !dbg !3869
  store i32 10, ptr %5, align 8, !dbg !3871, !tbaa !2613, !DIAssignID !3872
  call void @llvm.dbg.assign(metadata i32 10, metadata !3766, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3872, metadata ptr %5, metadata !DIExpression()), !dbg !3863
  %6 = icmp ne ptr %0, null, !dbg !3873
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3874
  br i1 %8, label %10, label %9, !dbg !3874

9:                                                ; preds = %4
  tail call void @abort() #44, !dbg !3875
  unreachable, !dbg !3875

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3876
  store ptr %0, ptr %11, align 8, !dbg !3877, !tbaa !2684, !DIAssignID !3878
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3766, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3878, metadata ptr %11, metadata !DIExpression()), !dbg !3863
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3879
  store ptr %1, ptr %12, align 8, !dbg !3880, !tbaa !2687, !DIAssignID !3881
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3766, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3881, metadata ptr %12, metadata !DIExpression()), !dbg !3863
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3882
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #42, !dbg !3883
  ret ptr %13, !dbg !3884
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3885 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3889, metadata !DIExpression()), !dbg !3892
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3890, metadata !DIExpression()), !dbg !3892
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3891, metadata !DIExpression()), !dbg !3892
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3893
  ret ptr %4, !dbg !3894
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !3895 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3899, metadata !DIExpression()), !dbg !3901
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3900, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i32 0, metadata !3889, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata ptr %0, metadata !3890, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata i64 %1, metadata !3891, metadata !DIExpression()), !dbg !3902
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3904
  ret ptr %3, !dbg !3905
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !3906 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3910, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3911, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata i32 %0, metadata !3889, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata ptr %1, metadata !3890, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i64 -1, metadata !3891, metadata !DIExpression()), !dbg !3913
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3915
  ret ptr %3, !dbg !3916
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #11 !dbg !3917 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3921, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i32 0, metadata !3910, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata ptr %0, metadata !3911, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i32 0, metadata !3889, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata ptr %0, metadata !3890, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i64 -1, metadata !3891, metadata !DIExpression()), !dbg !3925
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3927
  ret ptr %2, !dbg !3928
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3929 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3933, metadata !DIExpression()), !dbg !3936
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3934, metadata !DIExpression()), !dbg !3936
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3935, metadata !DIExpression()), !dbg !3936
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #42, !dbg !3937
  ret i32 %4, !dbg !3938
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #11 !dbg !3939 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3943, metadata !DIExpression()), !dbg !3944
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #42, !dbg !3945
  ret ptr %2, !dbg !3946
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #11 !dbg !3947 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3949, metadata !DIExpression()), !dbg !3951
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #42, !dbg !3952
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3950, metadata !DIExpression()), !dbg !3951
  ret ptr %2, !dbg !3953
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3954 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3956, metadata !DIExpression()), !dbg !3963
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3957, metadata !DIExpression()), !dbg !3963
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3958, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i32 %0, metadata !3949, metadata !DIExpression()), !dbg !3964
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #42, !dbg !3966
  call void @llvm.dbg.value(metadata ptr %4, metadata !3950, metadata !DIExpression()), !dbg !3964
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3959, metadata !DIExpression()), !dbg !3963
  %5 = icmp eq ptr %4, null, !dbg !3967
  br i1 %5, label %6, label %9, !dbg !3968

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3969
  br i1 %7, label %19, label %8, !dbg !3972

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3973, !tbaa !1024
  br label %19, !dbg !3974

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #43, !dbg !3975
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3960, metadata !DIExpression()), !dbg !3976
  %11 = icmp ult i64 %10, %2, !dbg !3977
  br i1 %11, label %12, label %14, !dbg !3979

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3980
  call void @llvm.dbg.value(metadata ptr %1, metadata !3982, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata ptr %4, metadata !3988, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i64 %13, metadata !3989, metadata !DIExpression()), !dbg !3990
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #42, !dbg !3992
  br label %19, !dbg !3993

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3994
  br i1 %15, label %19, label %16, !dbg !3997

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3998
  call void @llvm.dbg.value(metadata ptr %1, metadata !3982, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata ptr %4, metadata !3988, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i64 %17, metadata !3989, metadata !DIExpression()), !dbg !4000
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #42, !dbg !4002
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4003
  store i8 0, ptr %18, align 1, !dbg !4004, !tbaa !1024
  br label %19, !dbg !4005

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4006
  ret i32 %20, !dbg !4007
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #11 !dbg !4008 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4010, metadata !DIExpression()), !dbg !4011
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #42, !dbg !4012
  ret i32 %2, !dbg !4013
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #11 !dbg !4014 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4053, metadata !DIExpression()), !dbg !4059
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4054, metadata !DIExpression()), !dbg !4059
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4055, metadata !DIExpression()), !dbg !4059
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4056, metadata !DIExpression()), !dbg !4059
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4057, metadata !DIExpression()), !dbg !4059
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4058, metadata !DIExpression()), !dbg !4059
  %7 = icmp eq ptr %1, null, !dbg !4060
  br i1 %7, label %10, label %8, !dbg !4062

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.112, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #42, !dbg !4063
  br label %12, !dbg !4063

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.113, ptr noundef %2, ptr noundef %3) #42, !dbg !4064
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.3.115, i32 noundef 5) #42, !dbg !4065
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #42, !dbg !4065
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.116, ptr noundef %0), !dbg !4066
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.5.117, i32 noundef 5) #42, !dbg !4067
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.118) #42, !dbg !4067
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.116, ptr noundef %0), !dbg !4068
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
  ], !dbg !4069

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.7.119, i32 noundef 5) #42, !dbg !4070
  %21 = load ptr, ptr %4, align 8, !dbg !4070, !tbaa !942
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #42, !dbg !4070
  br label %147, !dbg !4072

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.8.120, i32 noundef 5) #42, !dbg !4073
  %25 = load ptr, ptr %4, align 8, !dbg !4073, !tbaa !942
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4073
  %27 = load ptr, ptr %26, align 8, !dbg !4073, !tbaa !942
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #42, !dbg !4073
  br label %147, !dbg !4074

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.9.121, i32 noundef 5) #42, !dbg !4075
  %31 = load ptr, ptr %4, align 8, !dbg !4075, !tbaa !942
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4075
  %33 = load ptr, ptr %32, align 8, !dbg !4075, !tbaa !942
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4075
  %35 = load ptr, ptr %34, align 8, !dbg !4075, !tbaa !942
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #42, !dbg !4075
  br label %147, !dbg !4076

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.10.122, i32 noundef 5) #42, !dbg !4077
  %39 = load ptr, ptr %4, align 8, !dbg !4077, !tbaa !942
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4077
  %41 = load ptr, ptr %40, align 8, !dbg !4077, !tbaa !942
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4077
  %43 = load ptr, ptr %42, align 8, !dbg !4077, !tbaa !942
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4077
  %45 = load ptr, ptr %44, align 8, !dbg !4077, !tbaa !942
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #42, !dbg !4077
  br label %147, !dbg !4078

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.11.123, i32 noundef 5) #42, !dbg !4079
  %49 = load ptr, ptr %4, align 8, !dbg !4079, !tbaa !942
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4079
  %51 = load ptr, ptr %50, align 8, !dbg !4079, !tbaa !942
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4079
  %53 = load ptr, ptr %52, align 8, !dbg !4079, !tbaa !942
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4079
  %55 = load ptr, ptr %54, align 8, !dbg !4079, !tbaa !942
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4079
  %57 = load ptr, ptr %56, align 8, !dbg !4079, !tbaa !942
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #42, !dbg !4079
  br label %147, !dbg !4080

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.12.124, i32 noundef 5) #42, !dbg !4081
  %61 = load ptr, ptr %4, align 8, !dbg !4081, !tbaa !942
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4081
  %63 = load ptr, ptr %62, align 8, !dbg !4081, !tbaa !942
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4081
  %65 = load ptr, ptr %64, align 8, !dbg !4081, !tbaa !942
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4081
  %67 = load ptr, ptr %66, align 8, !dbg !4081, !tbaa !942
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4081
  %69 = load ptr, ptr %68, align 8, !dbg !4081, !tbaa !942
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4081
  %71 = load ptr, ptr %70, align 8, !dbg !4081, !tbaa !942
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #42, !dbg !4081
  br label %147, !dbg !4082

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.13.125, i32 noundef 5) #42, !dbg !4083
  %75 = load ptr, ptr %4, align 8, !dbg !4083, !tbaa !942
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4083
  %77 = load ptr, ptr %76, align 8, !dbg !4083, !tbaa !942
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4083
  %79 = load ptr, ptr %78, align 8, !dbg !4083, !tbaa !942
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4083
  %81 = load ptr, ptr %80, align 8, !dbg !4083, !tbaa !942
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4083
  %83 = load ptr, ptr %82, align 8, !dbg !4083, !tbaa !942
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4083
  %85 = load ptr, ptr %84, align 8, !dbg !4083, !tbaa !942
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4083
  %87 = load ptr, ptr %86, align 8, !dbg !4083, !tbaa !942
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #42, !dbg !4083
  br label %147, !dbg !4084

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.14.126, i32 noundef 5) #42, !dbg !4085
  %91 = load ptr, ptr %4, align 8, !dbg !4085, !tbaa !942
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4085
  %93 = load ptr, ptr %92, align 8, !dbg !4085, !tbaa !942
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4085
  %95 = load ptr, ptr %94, align 8, !dbg !4085, !tbaa !942
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4085
  %97 = load ptr, ptr %96, align 8, !dbg !4085, !tbaa !942
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4085
  %99 = load ptr, ptr %98, align 8, !dbg !4085, !tbaa !942
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4085
  %101 = load ptr, ptr %100, align 8, !dbg !4085, !tbaa !942
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4085
  %103 = load ptr, ptr %102, align 8, !dbg !4085, !tbaa !942
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4085
  %105 = load ptr, ptr %104, align 8, !dbg !4085, !tbaa !942
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #42, !dbg !4085
  br label %147, !dbg !4086

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.15.127, i32 noundef 5) #42, !dbg !4087
  %109 = load ptr, ptr %4, align 8, !dbg !4087, !tbaa !942
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4087
  %111 = load ptr, ptr %110, align 8, !dbg !4087, !tbaa !942
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4087
  %113 = load ptr, ptr %112, align 8, !dbg !4087, !tbaa !942
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4087
  %115 = load ptr, ptr %114, align 8, !dbg !4087, !tbaa !942
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4087
  %117 = load ptr, ptr %116, align 8, !dbg !4087, !tbaa !942
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4087
  %119 = load ptr, ptr %118, align 8, !dbg !4087, !tbaa !942
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4087
  %121 = load ptr, ptr %120, align 8, !dbg !4087, !tbaa !942
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4087
  %123 = load ptr, ptr %122, align 8, !dbg !4087, !tbaa !942
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4087
  %125 = load ptr, ptr %124, align 8, !dbg !4087, !tbaa !942
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #42, !dbg !4087
  br label %147, !dbg !4088

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.16.128, i32 noundef 5) #42, !dbg !4089
  %129 = load ptr, ptr %4, align 8, !dbg !4089, !tbaa !942
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4089
  %131 = load ptr, ptr %130, align 8, !dbg !4089, !tbaa !942
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4089
  %133 = load ptr, ptr %132, align 8, !dbg !4089, !tbaa !942
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4089
  %135 = load ptr, ptr %134, align 8, !dbg !4089, !tbaa !942
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4089
  %137 = load ptr, ptr %136, align 8, !dbg !4089, !tbaa !942
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4089
  %139 = load ptr, ptr %138, align 8, !dbg !4089, !tbaa !942
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4089
  %141 = load ptr, ptr %140, align 8, !dbg !4089, !tbaa !942
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4089
  %143 = load ptr, ptr %142, align 8, !dbg !4089, !tbaa !942
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4089
  %145 = load ptr, ptr %144, align 8, !dbg !4089, !tbaa !942
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #42, !dbg !4089
  br label %147, !dbg !4090

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4091
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #11 !dbg !4092 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4096, metadata !DIExpression()), !dbg !4102
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4097, metadata !DIExpression()), !dbg !4102
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4098, metadata !DIExpression()), !dbg !4102
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4099, metadata !DIExpression()), !dbg !4102
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4100, metadata !DIExpression()), !dbg !4102
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4101, metadata !DIExpression()), !dbg !4102
  br label %6, !dbg !4103

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4105
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4101, metadata !DIExpression()), !dbg !4102
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4106
  %9 = load ptr, ptr %8, align 8, !dbg !4106, !tbaa !942
  %10 = icmp eq ptr %9, null, !dbg !4108
  %11 = add i64 %7, 1, !dbg !4109
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4101, metadata !DIExpression()), !dbg !4102
  br i1 %10, label %12, label %6, !dbg !4108, !llvm.loop !4110

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4112
  ret void, !dbg !4113
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #11 !dbg !4114 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !4133
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4131, metadata !DIExpression(), metadata !4133, metadata ptr %6, metadata !DIExpression()), !dbg !4134
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4125, metadata !DIExpression()), !dbg !4134
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4126, metadata !DIExpression()), !dbg !4134
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4127, metadata !DIExpression()), !dbg !4134
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4128, metadata !DIExpression()), !dbg !4134
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4129, metadata !DIExpression()), !dbg !4134
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #42, !dbg !4135
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4130, metadata !DIExpression()), !dbg !4134
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4130, metadata !DIExpression()), !dbg !4134
  %10 = icmp ult i32 %9, 41, !dbg !4136
  br i1 %10, label %11, label %16, !dbg !4136

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4136
  %13 = zext nneg i32 %9 to i64, !dbg !4136
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4136
  %15 = add nuw nsw i32 %9, 8, !dbg !4136
  store i32 %15, ptr %4, align 8, !dbg !4136
  br label %19, !dbg !4136

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4136
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4136
  store ptr %18, ptr %7, align 8, !dbg !4136
  br label %19, !dbg !4136

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4136
  %22 = load ptr, ptr %21, align 8, !dbg !4136
  store ptr %22, ptr %6, align 16, !dbg !4139, !tbaa !942
  %23 = icmp eq ptr %22, null, !dbg !4140
  br i1 %23, label %128, label %24, !dbg !4141

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4130, metadata !DIExpression()), !dbg !4134
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4130, metadata !DIExpression()), !dbg !4134
  %25 = icmp ult i32 %20, 41, !dbg !4136
  br i1 %25, label %29, label %26, !dbg !4136

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4136
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4136
  store ptr %28, ptr %7, align 8, !dbg !4136
  br label %34, !dbg !4136

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4136
  %31 = zext nneg i32 %20 to i64, !dbg !4136
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4136
  %33 = add nuw nsw i32 %20, 8, !dbg !4136
  store i32 %33, ptr %4, align 8, !dbg !4136
  br label %34, !dbg !4136

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4136
  %37 = load ptr, ptr %36, align 8, !dbg !4136
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4142
  store ptr %37, ptr %38, align 8, !dbg !4139, !tbaa !942
  %39 = icmp eq ptr %37, null, !dbg !4140
  br i1 %39, label %128, label %40, !dbg !4141

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4130, metadata !DIExpression()), !dbg !4134
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4130, metadata !DIExpression()), !dbg !4134
  %41 = icmp ult i32 %35, 41, !dbg !4136
  br i1 %41, label %45, label %42, !dbg !4136

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4136
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4136
  store ptr %44, ptr %7, align 8, !dbg !4136
  br label %50, !dbg !4136

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4136
  %47 = zext nneg i32 %35 to i64, !dbg !4136
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4136
  %49 = add nuw nsw i32 %35, 8, !dbg !4136
  store i32 %49, ptr %4, align 8, !dbg !4136
  br label %50, !dbg !4136

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4136
  %53 = load ptr, ptr %52, align 8, !dbg !4136
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4142
  store ptr %53, ptr %54, align 16, !dbg !4139, !tbaa !942
  %55 = icmp eq ptr %53, null, !dbg !4140
  br i1 %55, label %128, label %56, !dbg !4141

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4130, metadata !DIExpression()), !dbg !4134
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4130, metadata !DIExpression()), !dbg !4134
  %57 = icmp ult i32 %51, 41, !dbg !4136
  br i1 %57, label %61, label %58, !dbg !4136

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4136
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4136
  store ptr %60, ptr %7, align 8, !dbg !4136
  br label %66, !dbg !4136

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4136
  %63 = zext nneg i32 %51 to i64, !dbg !4136
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4136
  %65 = add nuw nsw i32 %51, 8, !dbg !4136
  store i32 %65, ptr %4, align 8, !dbg !4136
  br label %66, !dbg !4136

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4136
  %69 = load ptr, ptr %68, align 8, !dbg !4136
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4142
  store ptr %69, ptr %70, align 8, !dbg !4139, !tbaa !942
  %71 = icmp eq ptr %69, null, !dbg !4140
  br i1 %71, label %128, label %72, !dbg !4141

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4130, metadata !DIExpression()), !dbg !4134
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4130, metadata !DIExpression()), !dbg !4134
  %73 = icmp ult i32 %67, 41, !dbg !4136
  br i1 %73, label %77, label %74, !dbg !4136

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4136
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4136
  store ptr %76, ptr %7, align 8, !dbg !4136
  br label %82, !dbg !4136

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4136
  %79 = zext nneg i32 %67 to i64, !dbg !4136
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4136
  %81 = add nuw nsw i32 %67, 8, !dbg !4136
  store i32 %81, ptr %4, align 8, !dbg !4136
  br label %82, !dbg !4136

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4136
  %85 = load ptr, ptr %84, align 8, !dbg !4136
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4142
  store ptr %85, ptr %86, align 16, !dbg !4139, !tbaa !942
  %87 = icmp eq ptr %85, null, !dbg !4140
  br i1 %87, label %128, label %88, !dbg !4141

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4130, metadata !DIExpression()), !dbg !4134
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4130, metadata !DIExpression()), !dbg !4134
  %89 = icmp ult i32 %83, 41, !dbg !4136
  br i1 %89, label %93, label %90, !dbg !4136

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4136
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4136
  store ptr %92, ptr %7, align 8, !dbg !4136
  br label %98, !dbg !4136

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4136
  %95 = zext nneg i32 %83 to i64, !dbg !4136
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4136
  %97 = add nuw nsw i32 %83, 8, !dbg !4136
  store i32 %97, ptr %4, align 8, !dbg !4136
  br label %98, !dbg !4136

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4136
  %100 = load ptr, ptr %99, align 8, !dbg !4136
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4142
  store ptr %100, ptr %101, align 8, !dbg !4139, !tbaa !942
  %102 = icmp eq ptr %100, null, !dbg !4140
  br i1 %102, label %128, label %103, !dbg !4141

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4130, metadata !DIExpression()), !dbg !4134
  %104 = load ptr, ptr %7, align 8, !dbg !4136
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4136
  store ptr %105, ptr %7, align 8, !dbg !4136
  %106 = load ptr, ptr %104, align 8, !dbg !4136
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4142
  store ptr %106, ptr %107, align 16, !dbg !4139, !tbaa !942
  %108 = icmp eq ptr %106, null, !dbg !4140
  br i1 %108, label %128, label %109, !dbg !4141

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4130, metadata !DIExpression()), !dbg !4134
  %110 = load ptr, ptr %7, align 8, !dbg !4136
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4136
  store ptr %111, ptr %7, align 8, !dbg !4136
  %112 = load ptr, ptr %110, align 8, !dbg !4136
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4142
  store ptr %112, ptr %113, align 8, !dbg !4139, !tbaa !942
  %114 = icmp eq ptr %112, null, !dbg !4140
  br i1 %114, label %128, label %115, !dbg !4141

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4130, metadata !DIExpression()), !dbg !4134
  %116 = load ptr, ptr %7, align 8, !dbg !4136
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4136
  store ptr %117, ptr %7, align 8, !dbg !4136
  %118 = load ptr, ptr %116, align 8, !dbg !4136
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4142
  store ptr %118, ptr %119, align 16, !dbg !4139, !tbaa !942
  %120 = icmp eq ptr %118, null, !dbg !4140
  br i1 %120, label %128, label %121, !dbg !4141

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4130, metadata !DIExpression()), !dbg !4134
  %122 = load ptr, ptr %7, align 8, !dbg !4136
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4136
  store ptr %123, ptr %7, align 8, !dbg !4136
  %124 = load ptr, ptr %122, align 8, !dbg !4136
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4142
  store ptr %124, ptr %125, align 8, !dbg !4139, !tbaa !942
  %126 = icmp eq ptr %124, null, !dbg !4140
  %127 = select i1 %126, i64 9, i64 10, !dbg !4141
  br label %128, !dbg !4141

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4143
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4144
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #42, !dbg !4145
  ret void, !dbg !4145
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #11 !dbg !4146 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4159
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4154, metadata !DIExpression(), metadata !4159, metadata ptr %5, metadata !DIExpression()), !dbg !4160
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4150, metadata !DIExpression()), !dbg !4160
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4151, metadata !DIExpression()), !dbg !4160
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4152, metadata !DIExpression()), !dbg !4160
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4153, metadata !DIExpression()), !dbg !4160
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #42, !dbg !4161
  call void @llvm.va_start(ptr nonnull %5), !dbg !4162
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4163
  call void @llvm.va_end(ptr nonnull %5), !dbg !4164
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #42, !dbg !4165
  ret void, !dbg !4165
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #11 !dbg !4166 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4167, !tbaa !942
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.116, ptr noundef %1), !dbg !4167
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.17.133, i32 noundef 5) #42, !dbg !4168
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.134) #42, !dbg !4168
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.19.135, i32 noundef 5) #42, !dbg !4169
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.136, ptr noundef nonnull @.str.21.137) #42, !dbg !4169
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.22.138, i32 noundef 5) #42, !dbg !4170
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.139) #42, !dbg !4170
  ret void, !dbg !4171
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4172 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4177, metadata !DIExpression()), !dbg !4180
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4178, metadata !DIExpression()), !dbg !4180
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4179, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata ptr %0, metadata !4181, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i64 %1, metadata !4184, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i64 %2, metadata !4185, metadata !DIExpression()), !dbg !4186
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4188
  call void @llvm.dbg.value(metadata ptr %4, metadata !4189, metadata !DIExpression()), !dbg !4194
  %5 = icmp eq ptr %4, null, !dbg !4196
  br i1 %5, label %6, label %7, !dbg !4198

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4199
  unreachable, !dbg !4199

7:                                                ; preds = %3
  ret ptr %4, !dbg !4200
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4182 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4181, metadata !DIExpression()), !dbg !4201
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4184, metadata !DIExpression()), !dbg !4201
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4185, metadata !DIExpression()), !dbg !4201
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4202
  call void @llvm.dbg.value(metadata ptr %4, metadata !4189, metadata !DIExpression()), !dbg !4203
  %5 = icmp eq ptr %4, null, !dbg !4205
  br i1 %5, label %6, label %7, !dbg !4206

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4207
  unreachable, !dbg !4207

7:                                                ; preds = %3
  ret ptr %4, !dbg !4208
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4209 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4213, metadata !DIExpression()), !dbg !4214
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4215
  call void @llvm.dbg.value(metadata ptr %2, metadata !4189, metadata !DIExpression()), !dbg !4216
  %3 = icmp eq ptr %2, null, !dbg !4218
  br i1 %3, label %4, label %5, !dbg !4219

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4220
  unreachable, !dbg !4220

5:                                                ; preds = %1
  ret ptr %2, !dbg !4221
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4222 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4223 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4227, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata i64 %0, metadata !4229, metadata !DIExpression()), !dbg !4233
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4235
  call void @llvm.dbg.value(metadata ptr %2, metadata !4189, metadata !DIExpression()), !dbg !4236
  %3 = icmp eq ptr %2, null, !dbg !4238
  br i1 %3, label %4, label %5, !dbg !4239

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4240
  unreachable, !dbg !4240

5:                                                ; preds = %1
  ret ptr %2, !dbg !4241
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4242 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4246, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i64 %0, metadata !4213, metadata !DIExpression()), !dbg !4248
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4250
  call void @llvm.dbg.value(metadata ptr %2, metadata !4189, metadata !DIExpression()), !dbg !4251
  %3 = icmp eq ptr %2, null, !dbg !4253
  br i1 %3, label %4, label %5, !dbg !4254

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4255
  unreachable, !dbg !4255

5:                                                ; preds = %1
  ret ptr %2, !dbg !4256
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4257 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4261, metadata !DIExpression()), !dbg !4263
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4262, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata ptr %0, metadata !4264, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i64 %1, metadata !4268, metadata !DIExpression()), !dbg !4269
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4271
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #48, !dbg !4272
  call void @llvm.dbg.value(metadata ptr %4, metadata !4189, metadata !DIExpression()), !dbg !4273
  %5 = icmp eq ptr %4, null, !dbg !4275
  br i1 %5, label %6, label %7, !dbg !4276

6:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4277
  unreachable, !dbg !4277

7:                                                ; preds = %2
  ret ptr %4, !dbg !4278
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4279 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4280 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4284, metadata !DIExpression()), !dbg !4286
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4285, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata ptr %0, metadata !4287, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i64 %1, metadata !4290, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata ptr %0, metadata !4264, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i64 %1, metadata !4268, metadata !DIExpression()), !dbg !4293
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4295
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #48, !dbg !4296
  call void @llvm.dbg.value(metadata ptr %4, metadata !4189, metadata !DIExpression()), !dbg !4297
  %5 = icmp eq ptr %4, null, !dbg !4299
  br i1 %5, label %6, label %7, !dbg !4300

6:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4301
  unreachable, !dbg !4301

7:                                                ; preds = %2
  ret ptr %4, !dbg !4302
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4303 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4307, metadata !DIExpression()), !dbg !4310
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4308, metadata !DIExpression()), !dbg !4310
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4309, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata ptr %0, metadata !4311, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i64 %1, metadata !4314, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i64 %2, metadata !4315, metadata !DIExpression()), !dbg !4316
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #42, !dbg !4318
  call void @llvm.dbg.value(metadata ptr %4, metadata !4189, metadata !DIExpression()), !dbg !4319
  %5 = icmp eq ptr %4, null, !dbg !4321
  br i1 %5, label %6, label %7, !dbg !4322

6:                                                ; preds = %3
  tail call void @xalloc_die() #44, !dbg !4323
  unreachable, !dbg !4323

7:                                                ; preds = %3
  ret ptr %4, !dbg !4324
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4325 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4329, metadata !DIExpression()), !dbg !4331
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4330, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr null, metadata !4181, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %0, metadata !4184, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %1, metadata !4185, metadata !DIExpression()), !dbg !4332
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #42, !dbg !4334
  call void @llvm.dbg.value(metadata ptr %3, metadata !4189, metadata !DIExpression()), !dbg !4335
  %4 = icmp eq ptr %3, null, !dbg !4337
  br i1 %4, label %5, label %6, !dbg !4338

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4339
  unreachable, !dbg !4339

6:                                                ; preds = %2
  ret ptr %3, !dbg !4340
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4341 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4345, metadata !DIExpression()), !dbg !4347
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4346, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.value(metadata ptr null, metadata !4307, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %0, metadata !4308, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %1, metadata !4309, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata ptr null, metadata !4311, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i64 %0, metadata !4314, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i64 %1, metadata !4315, metadata !DIExpression()), !dbg !4350
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #42, !dbg !4352
  call void @llvm.dbg.value(metadata ptr %3, metadata !4189, metadata !DIExpression()), !dbg !4353
  %4 = icmp eq ptr %3, null, !dbg !4355
  br i1 %4, label %5, label %6, !dbg !4356

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4357
  unreachable, !dbg !4357

6:                                                ; preds = %2
  ret ptr %3, !dbg !4358
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #11 !dbg !4359 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4363, metadata !DIExpression()), !dbg !4365
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4364, metadata !DIExpression()), !dbg !4365
  call void @llvm.dbg.value(metadata ptr %0, metadata !884, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata ptr %1, metadata !885, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i64 1, metadata !886, metadata !DIExpression()), !dbg !4366
  %3 = load i64, ptr %1, align 8, !dbg !4368, !tbaa !1201
  call void @llvm.dbg.value(metadata i64 %3, metadata !887, metadata !DIExpression()), !dbg !4366
  %4 = icmp eq ptr %0, null, !dbg !4369
  br i1 %4, label %5, label %8, !dbg !4371

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4372
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4375
  br label %15, !dbg !4375

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4376
  %10 = add nuw i64 %9, 1, !dbg !4376
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4376
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4376
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4376
  call void @llvm.dbg.value(metadata i64 %13, metadata !887, metadata !DIExpression()), !dbg !4366
  br i1 %12, label %14, label %15, !dbg !4379

14:                                               ; preds = %8
  tail call void @xalloc_die() #44, !dbg !4380
  unreachable, !dbg !4380

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4366
  call void @llvm.dbg.value(metadata i64 %16, metadata !887, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata ptr %0, metadata !4181, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata i64 %16, metadata !4184, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata i64 1, metadata !4185, metadata !DIExpression()), !dbg !4381
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #42, !dbg !4383
  call void @llvm.dbg.value(metadata ptr %17, metadata !4189, metadata !DIExpression()), !dbg !4384
  %18 = icmp eq ptr %17, null, !dbg !4386
  br i1 %18, label %19, label %20, !dbg !4387

19:                                               ; preds = %15
  tail call void @xalloc_die() #44, !dbg !4388
  unreachable, !dbg !4388

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !884, metadata !DIExpression()), !dbg !4366
  store i64 %16, ptr %1, align 8, !dbg !4389, !tbaa !1201
  ret ptr %17, !dbg !4390
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !879 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !884, metadata !DIExpression()), !dbg !4391
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !885, metadata !DIExpression()), !dbg !4391
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !886, metadata !DIExpression()), !dbg !4391
  %4 = load i64, ptr %1, align 8, !dbg !4392, !tbaa !1201
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !887, metadata !DIExpression()), !dbg !4391
  %5 = icmp eq ptr %0, null, !dbg !4393
  br i1 %5, label %6, label %13, !dbg !4394

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4395
  br i1 %7, label %8, label %20, !dbg !4396

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4397
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !887, metadata !DIExpression()), !dbg !4391
  %10 = icmp ugt i64 %2, 128, !dbg !4399
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4400
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !887, metadata !DIExpression()), !dbg !4391
  br label %20, !dbg !4401

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4402
  %15 = add nuw i64 %14, 1, !dbg !4402
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4402
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4402
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4402
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !887, metadata !DIExpression()), !dbg !4391
  br i1 %17, label %19, label %20, !dbg !4403

19:                                               ; preds = %13
  tail call void @xalloc_die() #44, !dbg !4404
  unreachable, !dbg !4404

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4391
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !887, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata ptr %0, metadata !4181, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.value(metadata i64 %21, metadata !4184, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.value(metadata i64 %2, metadata !4185, metadata !DIExpression()), !dbg !4405
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #42, !dbg !4407
  call void @llvm.dbg.value(metadata ptr %22, metadata !4189, metadata !DIExpression()), !dbg !4408
  %23 = icmp eq ptr %22, null, !dbg !4410
  br i1 %23, label %24, label %25, !dbg !4411

24:                                               ; preds = %20
  tail call void @xalloc_die() #44, !dbg !4412
  unreachable, !dbg !4412

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !884, metadata !DIExpression()), !dbg !4391
  store i64 %21, ptr %1, align 8, !dbg !4413, !tbaa !1201
  ret ptr %22, !dbg !4414
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #11 !dbg !891 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !900, metadata !DIExpression()), !dbg !4415
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !901, metadata !DIExpression()), !dbg !4415
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !902, metadata !DIExpression()), !dbg !4415
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !903, metadata !DIExpression()), !dbg !4415
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !904, metadata !DIExpression()), !dbg !4415
  %6 = load i64, ptr %1, align 8, !dbg !4416, !tbaa !1201
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !905, metadata !DIExpression()), !dbg !4415
  %7 = ashr i64 %6, 1, !dbg !4417
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4417
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4417
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4417
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !906, metadata !DIExpression()), !dbg !4415
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4419
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !906, metadata !DIExpression()), !dbg !4415
  %12 = icmp sgt i64 %3, -1, !dbg !4420
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4422
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4422
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !906, metadata !DIExpression()), !dbg !4415
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4423
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4423
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4423
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !907, metadata !DIExpression()), !dbg !4415
  %18 = icmp slt i64 %17, 128, !dbg !4423
  %19 = select i1 %18, i64 128, i64 0, !dbg !4423
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4423
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !908, metadata !DIExpression()), !dbg !4415
  %21 = icmp eq i64 %20, 0, !dbg !4424
  br i1 %21, label %26, label %22, !dbg !4426

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4427
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !906, metadata !DIExpression()), !dbg !4415
  %24 = srem i64 %20, %4, !dbg !4429
  %25 = sub nsw i64 %20, %24, !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !907, metadata !DIExpression()), !dbg !4415
  br label %26, !dbg !4431

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4415
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4415
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !907, metadata !DIExpression()), !dbg !4415
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !906, metadata !DIExpression()), !dbg !4415
  %29 = icmp eq ptr %0, null, !dbg !4432
  br i1 %29, label %30, label %31, !dbg !4434

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4435, !tbaa !1201
  br label %31, !dbg !4436

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4437
  %33 = icmp slt i64 %32, %2, !dbg !4439
  br i1 %33, label %34, label %46, !dbg !4440

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4441
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4441
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4441
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !906, metadata !DIExpression()), !dbg !4415
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4442
  br i1 %40, label %45, label %41, !dbg !4442

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4443
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4443
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4443
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !907, metadata !DIExpression()), !dbg !4415
  br i1 %43, label %45, label %46, !dbg !4444

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #44, !dbg !4445
  unreachable, !dbg !4445

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4415
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4415
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !907, metadata !DIExpression()), !dbg !4415
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !906, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata ptr %0, metadata !4261, metadata !DIExpression()), !dbg !4446
  call void @llvm.dbg.value(metadata i64 %48, metadata !4262, metadata !DIExpression()), !dbg !4446
  call void @llvm.dbg.value(metadata ptr %0, metadata !4264, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata i64 %48, metadata !4268, metadata !DIExpression()), !dbg !4448
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4450
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #48, !dbg !4451
  call void @llvm.dbg.value(metadata ptr %50, metadata !4189, metadata !DIExpression()), !dbg !4452
  %51 = icmp eq ptr %50, null, !dbg !4454
  br i1 %51, label %52, label %53, !dbg !4455

52:                                               ; preds = %46
  tail call void @xalloc_die() #44, !dbg !4456
  unreachable, !dbg !4456

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !900, metadata !DIExpression()), !dbg !4415
  store i64 %47, ptr %1, align 8, !dbg !4457, !tbaa !1201
  ret ptr %50, !dbg !4458
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4459 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4461, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 %0, metadata !4463, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.value(metadata i64 1, metadata !4466, metadata !DIExpression()), !dbg !4467
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #50, !dbg !4469
  call void @llvm.dbg.value(metadata ptr %2, metadata !4189, metadata !DIExpression()), !dbg !4470
  %3 = icmp eq ptr %2, null, !dbg !4472
  br i1 %3, label %4, label %5, !dbg !4473

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4474
  unreachable, !dbg !4474

5:                                                ; preds = %1
  ret ptr %2, !dbg !4475
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4476 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4464 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4463, metadata !DIExpression()), !dbg !4477
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4466, metadata !DIExpression()), !dbg !4477
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #50, !dbg !4478
  call void @llvm.dbg.value(metadata ptr %3, metadata !4189, metadata !DIExpression()), !dbg !4479
  %4 = icmp eq ptr %3, null, !dbg !4481
  br i1 %4, label %5, label %6, !dbg !4482

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4483
  unreachable, !dbg !4483

6:                                                ; preds = %2
  ret ptr %3, !dbg !4484
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4485 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4487, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i64 %0, metadata !4489, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i64 1, metadata !4492, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i64 %0, metadata !4495, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i64 1, metadata !4498, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i64 %0, metadata !4495, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i64 1, metadata !4498, metadata !DIExpression()), !dbg !4499
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #50, !dbg !4501
  call void @llvm.dbg.value(metadata ptr %2, metadata !4189, metadata !DIExpression()), !dbg !4502
  %3 = icmp eq ptr %2, null, !dbg !4504
  br i1 %3, label %4, label %5, !dbg !4505

4:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4506
  unreachable, !dbg !4506

5:                                                ; preds = %1
  ret ptr %2, !dbg !4507
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4490 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4489, metadata !DIExpression()), !dbg !4508
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4492, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i64 %0, metadata !4495, metadata !DIExpression()), !dbg !4509
  call void @llvm.dbg.value(metadata i64 %1, metadata !4498, metadata !DIExpression()), !dbg !4509
  call void @llvm.dbg.value(metadata i64 %0, metadata !4495, metadata !DIExpression()), !dbg !4509
  call void @llvm.dbg.value(metadata i64 %1, metadata !4498, metadata !DIExpression()), !dbg !4509
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #50, !dbg !4511
  call void @llvm.dbg.value(metadata ptr %3, metadata !4189, metadata !DIExpression()), !dbg !4512
  %4 = icmp eq ptr %3, null, !dbg !4514
  br i1 %4, label %5, label %6, !dbg !4515

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4516
  unreachable, !dbg !4516

6:                                                ; preds = %2
  ret ptr %3, !dbg !4517
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4518 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4524
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i64 %1, metadata !4213, metadata !DIExpression()), !dbg !4525
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #49, !dbg !4527
  call void @llvm.dbg.value(metadata ptr %3, metadata !4189, metadata !DIExpression()), !dbg !4528
  %4 = icmp eq ptr %3, null, !dbg !4530
  br i1 %4, label %5, label %6, !dbg !4531

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4532
  unreachable, !dbg !4532

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4533, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata ptr %0, metadata !4536, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata i64 %1, metadata !4537, metadata !DIExpression()), !dbg !4538
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !4540
  ret ptr %3, !dbg !4541
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4542 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4546, metadata !DIExpression()), !dbg !4548
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4547, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i64 %1, metadata !4227, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i64 %1, metadata !4229, metadata !DIExpression()), !dbg !4551
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #49, !dbg !4553
  call void @llvm.dbg.value(metadata ptr %3, metadata !4189, metadata !DIExpression()), !dbg !4554
  %4 = icmp eq ptr %3, null, !dbg !4556
  br i1 %4, label %5, label %6, !dbg !4557

5:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4558
  unreachable, !dbg !4558

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4533, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata ptr %0, metadata !4536, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 %1, metadata !4537, metadata !DIExpression()), !dbg !4559
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !4561
  ret ptr %3, !dbg !4562
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #11 !dbg !4563 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4567, metadata !DIExpression()), !dbg !4570
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4568, metadata !DIExpression()), !dbg !4570
  %3 = add nsw i64 %1, 1, !dbg !4571
  call void @llvm.dbg.value(metadata i64 %3, metadata !4227, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %3, metadata !4229, metadata !DIExpression()), !dbg !4574
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #49, !dbg !4576
  call void @llvm.dbg.value(metadata ptr %4, metadata !4189, metadata !DIExpression()), !dbg !4577
  %5 = icmp eq ptr %4, null, !dbg !4579
  br i1 %5, label %6, label %7, !dbg !4580

6:                                                ; preds = %2
  tail call void @xalloc_die() #44, !dbg !4581
  unreachable, !dbg !4581

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4569, metadata !DIExpression()), !dbg !4570
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4582
  store i8 0, ptr %8, align 1, !dbg !4583, !tbaa !1024
  call void @llvm.dbg.value(metadata ptr %4, metadata !4533, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata ptr %0, metadata !4536, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i64 %1, metadata !4537, metadata !DIExpression()), !dbg !4584
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #42, !dbg !4586
  ret ptr %4, !dbg !4587
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !dbg !4588 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4590, metadata !DIExpression()), !dbg !4591
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #43, !dbg !4592
  %3 = add i64 %2, 1, !dbg !4593
  call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i64 %3, metadata !4523, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i64 %3, metadata !4213, metadata !DIExpression()), !dbg !4596
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #49, !dbg !4598
  call void @llvm.dbg.value(metadata ptr %4, metadata !4189, metadata !DIExpression()), !dbg !4599
  %5 = icmp eq ptr %4, null, !dbg !4601
  br i1 %5, label %6, label %7, !dbg !4602

6:                                                ; preds = %1
  tail call void @xalloc_die() #44, !dbg !4603
  unreachable, !dbg !4603

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4533, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata ptr %0, metadata !4536, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i64 %3, metadata !4537, metadata !DIExpression()), !dbg !4604
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #42, !dbg !4606
  ret ptr %4, !dbg !4607
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4608 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4612, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4610, metadata !DIExpression()), !dbg !4613
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.150, ptr noundef nonnull @.str.2.151, i32 noundef 5) #42, !dbg !4612
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.152, ptr noundef %2) #42, !dbg !4612
  %3 = icmp eq i32 %1, 0, !dbg !4612
  tail call void @llvm.assume(i1 %3), !dbg !4612
  tail call void @abort() #44, !dbg !4614
  unreachable, !dbg !4614
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xmemcoll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !4615 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4619, metadata !DIExpression()), !dbg !4625
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4620, metadata !DIExpression()), !dbg !4625
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4621, metadata !DIExpression()), !dbg !4625
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4622, metadata !DIExpression()), !dbg !4625
  %5 = tail call i32 @memcoll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #42, !dbg !4626
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !4623, metadata !DIExpression()), !dbg !4625
  %6 = tail call ptr @__errno_location() #45, !dbg !4627
  %7 = load i32, ptr %6, align 4, !dbg !4627, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !4624, metadata !DIExpression()), !dbg !4625
  %8 = icmp eq i32 %7, 0, !dbg !4628
  br i1 %8, label %17, label %9, !dbg !4630

9:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 %7, metadata !4631, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata ptr %0, metadata !4636, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i64 %1, metadata !4637, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata ptr %2, metadata !4638, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i64 %3, metadata !4639, metadata !DIExpression()), !dbg !4642
  %10 = tail call ptr @dcgettext(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.1.156, i32 noundef 5) #42, !dbg !4644
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %7, ptr noundef %10) #42, !dbg !4644
  %11 = tail call ptr @dcgettext(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.2.157, i32 noundef 5) #42, !dbg !4645
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %11) #42, !dbg !4645
  %12 = load volatile i32, ptr @exit_failure, align 4, !dbg !4646, !tbaa !1015
  call void @llvm.dbg.value(metadata i32 %12, metadata !4640, metadata !DIExpression()), !dbg !4647
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.3.158, i32 noundef 5) #42, !dbg !4646
  %14 = tail call ptr @quotearg_n_style_mem(i32 noundef 0, i32 noundef 8, ptr noundef %0, i64 noundef %1) #42, !dbg !4646
  %15 = tail call ptr @quotearg_n_style_mem(i32 noundef 1, i32 noundef 8, ptr noundef %2, i64 noundef %3) #42, !dbg !4646
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %12, i32 noundef 0, ptr noundef %13, ptr noundef %14, ptr noundef %15) #42, !dbg !4646
  %16 = icmp eq i32 %12, 0, !dbg !4646
  tail call void @llvm.assume(i1 %16), !dbg !4646
  br label %17, !dbg !4648

17:                                               ; preds = %9, %4
  ret i32 %5, !dbg !4649
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xmemcoll0(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !4650 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4652, metadata !DIExpression()), !dbg !4658
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4653, metadata !DIExpression()), !dbg !4658
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4654, metadata !DIExpression()), !dbg !4658
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4655, metadata !DIExpression()), !dbg !4658
  %5 = tail call i32 @memcoll0(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #42, !dbg !4659
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !4656, metadata !DIExpression()), !dbg !4658
  %6 = tail call ptr @__errno_location() #45, !dbg !4660
  %7 = load i32, ptr %6, align 4, !dbg !4660, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !4657, metadata !DIExpression()), !dbg !4658
  %8 = icmp eq i32 %7, 0, !dbg !4661
  br i1 %8, label %19, label %9, !dbg !4663

9:                                                ; preds = %4
  %10 = add i64 %1, -1, !dbg !4664
  %11 = add i64 %3, -1, !dbg !4665
  call void @llvm.dbg.value(metadata i32 %7, metadata !4631, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata ptr %0, metadata !4636, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata i64 %10, metadata !4637, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata ptr %2, metadata !4638, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata i64 %11, metadata !4639, metadata !DIExpression()), !dbg !4666
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.1.156, i32 noundef 5) #42, !dbg !4668
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %7, ptr noundef %12) #42, !dbg !4668
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.2.157, i32 noundef 5) #42, !dbg !4669
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13) #42, !dbg !4669
  %14 = load volatile i32, ptr @exit_failure, align 4, !dbg !4670, !tbaa !1015
  call void @llvm.dbg.value(metadata i32 %14, metadata !4640, metadata !DIExpression()), !dbg !4671
  %15 = tail call ptr @dcgettext(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.3.158, i32 noundef 5) #42, !dbg !4670
  %16 = tail call ptr @quotearg_n_style_mem(i32 noundef 0, i32 noundef 8, ptr noundef %0, i64 noundef %10) #42, !dbg !4670
  %17 = tail call ptr @quotearg_n_style_mem(i32 noundef 1, i32 noundef 8, ptr noundef %2, i64 noundef %11) #42, !dbg !4670
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %14, i32 noundef 0, ptr noundef %15, ptr noundef %16, ptr noundef %17) #42, !dbg !4670
  %18 = icmp eq i32 %14, 0, !dbg !4670
  tail call void @llvm.assume(i1 %18), !dbg !4670
  br label %19, !dbg !4672

19:                                               ; preds = %9, %4
  ret i32 %5, !dbg !4673
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #11 !dbg !4674 {
  %3 = alloca [81 x i8], align 16, !DIAssignID !4736
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4717, metadata !DIExpression(), metadata !4736, metadata ptr %3, metadata !DIExpression()), !dbg !4737
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4712, metadata !DIExpression()), !dbg !4737
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4713, metadata !DIExpression()), !dbg !4737
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4714, metadata !DIExpression()), !dbg !4737
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4715, metadata !DIExpression()), !dbg !4737
  tail call void @llvm.dbg.value(metadata i8 0, metadata !4716, metadata !DIExpression()), !dbg !4737
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #42, !dbg !4738
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4721, metadata !DIExpression()), !dbg !4739
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4723, metadata !DIExpression()), !dbg !4739
  br label %4, !dbg !4740

4:                                                ; preds = %43, %2
  %5 = phi i8 [ 0, %2 ], [ %44, %43 ], !dbg !4737
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4739
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4737
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4741
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4742
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !4714, metadata !DIExpression()), !dbg !4737
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4715, metadata !DIExpression()), !dbg !4737
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4723, metadata !DIExpression()), !dbg !4739
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4721, metadata !DIExpression()), !dbg !4739
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !4716, metadata !DIExpression()), !dbg !4737
  %11 = load i8, ptr %6, align 1, !dbg !4742, !tbaa !1024
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4743

12:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4714, metadata !DIExpression()), !dbg !4737
  %13 = icmp slt i64 %7, 80, !dbg !4744
  br i1 %13, label %14, label %43, !dbg !4747

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4748
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4723, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4739
  store i8 114, ptr %10, align 1, !dbg !4749, !tbaa !1024
  br label %43, !dbg !4750

16:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4714, metadata !DIExpression()), !dbg !4737
  %17 = or i32 %8, 576, !dbg !4751
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4715, metadata !DIExpression()), !dbg !4737
  %18 = icmp slt i64 %7, 80, !dbg !4752
  br i1 %18, label %19, label %43, !dbg !4754

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4755
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4723, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4739
  store i8 119, ptr %10, align 1, !dbg !4756, !tbaa !1024
  br label %43, !dbg !4757

21:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4714, metadata !DIExpression()), !dbg !4737
  %22 = or i32 %8, 1088, !dbg !4758
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !4715, metadata !DIExpression()), !dbg !4737
  %23 = icmp slt i64 %7, 80, !dbg !4759
  br i1 %23, label %24, label %43, !dbg !4761

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4762
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4723, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4739
  store i8 97, ptr %10, align 1, !dbg !4763, !tbaa !1024
  br label %43, !dbg !4764

26:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4715, metadata !DIExpression()), !dbg !4737
  %27 = icmp slt i64 %7, 80, !dbg !4765
  br i1 %27, label %28, label %43, !dbg !4767

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4768
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4723, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4739
  store i8 98, ptr %10, align 1, !dbg !4769, !tbaa !1024
  br label %43, !dbg !4770

30:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4714, metadata !DIExpression()), !dbg !4737
  %31 = icmp slt i64 %7, 80, !dbg !4771
  br i1 %31, label %32, label %43, !dbg !4773

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4774
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4723, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4739
  store i8 43, ptr %10, align 1, !dbg !4775, !tbaa !1024
  br label %43, !dbg !4776

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4777
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !4715, metadata !DIExpression()), !dbg !4737
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4716, metadata !DIExpression()), !dbg !4737
  br label %43, !dbg !4778

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4779
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !4715, metadata !DIExpression()), !dbg !4737
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4716, metadata !DIExpression()), !dbg !4737
  br label %43, !dbg !4780

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #43, !dbg !4781
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !4724, metadata !DIExpression()), !dbg !4782
  %40 = sub nsw i64 80, %7, !dbg !4783
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !4785
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !4724, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.value(metadata ptr %10, metadata !4786, metadata !DIExpression()), !dbg !4791
  call void @llvm.dbg.value(metadata ptr %6, metadata !4789, metadata !DIExpression()), !dbg !4791
  call void @llvm.dbg.value(metadata i64 %41, metadata !4790, metadata !DIExpression()), !dbg !4791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #42, !dbg !4793
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !4794
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !4723, metadata !DIExpression()), !dbg !4739
  br label %49, !dbg !4795

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i8 [ 1, %36 ], [ 1, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ], !dbg !4737
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4737
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4737
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !4714, metadata !DIExpression()), !dbg !4737
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !4715, metadata !DIExpression()), !dbg !4737
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4723, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4739
  tail call void @llvm.dbg.value(metadata i8 %44, metadata !4716, metadata !DIExpression()), !dbg !4737
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !4796
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !4721, metadata !DIExpression()), !dbg !4739
  br label %4, !dbg !4797, !llvm.loop !4798

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !4739
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !4723, metadata !DIExpression()), !dbg !4739
  store i8 0, ptr %50, align 1, !dbg !4800, !tbaa !1024
  %51 = and i8 %5, 1, !dbg !4801
  %52 = icmp eq i8 %51, 0, !dbg !4801
  br i1 %52, label %64, label %53, !dbg !4802

53:                                               ; preds = %49
  %54 = or i32 %9, %8, !dbg !4803
  %55 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %54, i32 noundef 438) #42, !dbg !4804
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !4729, metadata !DIExpression()), !dbg !4805
  %56 = icmp slt i32 %55, 0, !dbg !4806
  br i1 %56, label %66, label %57, !dbg !4808

57:                                               ; preds = %53
  %58 = call noalias ptr @fdopen(i32 noundef %55, ptr noundef nonnull %3) #42, !dbg !4809
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !4732, metadata !DIExpression()), !dbg !4805
  %59 = icmp eq ptr %58, null, !dbg !4810
  br i1 %59, label %60, label %66, !dbg !4811

60:                                               ; preds = %57
  %61 = tail call ptr @__errno_location() #45, !dbg !4812
  %62 = load i32, ptr %61, align 4, !dbg !4812, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !4733, metadata !DIExpression()), !dbg !4813
  %63 = tail call i32 @close(i32 noundef %55) #42, !dbg !4814
  store i32 %62, ptr %61, align 4, !dbg !4815, !tbaa !1015
  br label %66, !dbg !4816

64:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !4817, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata ptr %1, metadata !4820, metadata !DIExpression()), !dbg !4821
  %65 = tail call noalias noundef ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4823
  br label %66, !dbg !4824

66:                                               ; preds = %53, %60, %57, %64
  %67 = phi ptr [ %65, %64 ], [ null, %53 ], [ null, %60 ], [ %58, %57 ], !dbg !4737
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #42, !dbg !4825
  ret ptr %67, !dbg !4825
}

; Function Attrs: nofree
declare !dbg !4826 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #38

; Function Attrs: nofree nounwind
declare !dbg !4829 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #11 !dbg !4832 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4870, metadata !DIExpression()), !dbg !4875
  %2 = tail call i64 @__fpending(ptr noundef %0) #42, !dbg !4876
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4871, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4875
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4877, metadata !DIExpression()), !dbg !4880
  %3 = load i32, ptr %0, align 8, !dbg !4882, !tbaa !1351
  %4 = and i32 %3, 32, !dbg !4883
  %5 = icmp eq i32 %4, 0, !dbg !4883
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4873, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4875
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #42, !dbg !4884
  %7 = icmp eq i32 %6, 0, !dbg !4885
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4874, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4875
  br i1 %5, label %8, label %18, !dbg !4886

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4888
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4871, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4875
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4889
  %11 = xor i1 %7, true, !dbg !4889
  %12 = sext i1 %11 to i32, !dbg !4889
  br i1 %10, label %21, label %13, !dbg !4889

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #45, !dbg !4890
  %15 = load i32, ptr %14, align 4, !dbg !4890, !tbaa !1015
  %16 = icmp ne i32 %15, 9, !dbg !4891
  %17 = sext i1 %16 to i32, !dbg !4892
  br label %21, !dbg !4892

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4893

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #45, !dbg !4895
  store i32 0, ptr %20, align 4, !dbg !4897, !tbaa !1015
  br label %21, !dbg !4895

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4875
  ret i32 %22, !dbg !4898
}

; Function Attrs: nounwind
declare !dbg !4899 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #11 !dbg !4902 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4929
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4906, metadata !DIExpression(), metadata !4929, metadata ptr %3, metadata !DIExpression()), !dbg !4930
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4904, metadata !DIExpression()), !dbg !4930
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4905, metadata !DIExpression()), !dbg !4930
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #42, !dbg !4931
  call void @llvm.va_start(ptr nonnull %3), !dbg !4932
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4917, metadata !DIExpression()), !dbg !4930
  switch i32 %1, label %90 [
    i32 0, label %4
    i32 1030, label %21
    i32 1, label %71
    i32 3, label %71
    i32 1025, label %71
    i32 9, label %71
    i32 1032, label %71
    i32 1034, label %71
    i32 11, label %71
    i32 1033, label %73
    i32 1031, label %73
    i32 10, label %73
    i32 1026, label %73
    i32 2, label %73
    i32 4, label %73
    i32 1024, label %73
    i32 8, label %73
  ], !dbg !4933

4:                                                ; preds = %2
  %5 = load i32, ptr %3, align 16, !dbg !4934
  %6 = icmp ult i32 %5, 41, !dbg !4934
  br i1 %6, label %7, label %13, !dbg !4934

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4934
  %9 = load ptr, ptr %8, align 16, !dbg !4934
  %10 = zext nneg i32 %5 to i64, !dbg !4934
  %11 = getelementptr i8, ptr %9, i64 %10, !dbg !4934
  %12 = add nuw nsw i32 %5, 8, !dbg !4934
  store i32 %12, ptr %3, align 16, !dbg !4934, !DIAssignID !4935
  call void @llvm.dbg.assign(metadata i32 %12, metadata !4906, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4935, metadata ptr %3, metadata !DIExpression()), !dbg !4930
  br label %17, !dbg !4934

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4934
  %15 = load ptr, ptr %14, align 8, !dbg !4934
  %16 = getelementptr i8, ptr %15, i64 8, !dbg !4934
  store ptr %16, ptr %14, align 8, !dbg !4934, !DIAssignID !4936
  call void @llvm.dbg.assign(metadata ptr %16, metadata !4906, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !4936, metadata ptr %14, metadata !DIExpression()), !dbg !4930
  br label %17, !dbg !4934

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %11, %7 ], [ %15, %13 ], !dbg !4934
  %19 = load i32, ptr %18, align 4, !dbg !4934
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !4918, metadata !DIExpression()), !dbg !4937
  call void @llvm.dbg.value(metadata i32 %0, metadata !4938, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata i32 %19, metadata !4941, metadata !DIExpression()), !dbg !4943
  %20 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %19) #42, !dbg !4945
  call void @llvm.dbg.value(metadata i32 %20, metadata !4942, metadata !DIExpression()), !dbg !4943
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4917, metadata !DIExpression()), !dbg !4930
  br label %107

21:                                               ; preds = %2
  %22 = load i32, ptr %3, align 16, !dbg !4946
  %23 = icmp ult i32 %22, 41, !dbg !4946
  br i1 %23, label %24, label %30, !dbg !4946

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4946
  %26 = load ptr, ptr %25, align 16, !dbg !4946
  %27 = zext nneg i32 %22 to i64, !dbg !4946
  %28 = getelementptr i8, ptr %26, i64 %27, !dbg !4946
  %29 = add nuw nsw i32 %22, 8, !dbg !4946
  store i32 %29, ptr %3, align 16, !dbg !4946, !DIAssignID !4947
  call void @llvm.dbg.assign(metadata i32 %29, metadata !4906, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4947, metadata ptr %3, metadata !DIExpression()), !dbg !4930
  br label %34, !dbg !4946

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4946
  %32 = load ptr, ptr %31, align 8, !dbg !4946
  %33 = getelementptr i8, ptr %32, i64 8, !dbg !4946
  store ptr %33, ptr %31, align 8, !dbg !4946, !DIAssignID !4948
  call void @llvm.dbg.assign(metadata ptr %33, metadata !4906, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !4948, metadata ptr %31, metadata !DIExpression()), !dbg !4930
  br label %34, !dbg !4946

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %28, %24 ], [ %32, %30 ], !dbg !4946
  %36 = load i32, ptr %35, align 4, !dbg !4946
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !4921, metadata !DIExpression()), !dbg !4949
  call void @llvm.dbg.value(metadata i32 %0, metadata !808, metadata !DIExpression()), !dbg !4950
  call void @llvm.dbg.value(metadata i32 %36, metadata !809, metadata !DIExpression()), !dbg !4950
  %37 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4952, !tbaa !1015
  %38 = icmp sgt i32 %37, -1, !dbg !4954
  br i1 %38, label %39, label %51, !dbg !4955

39:                                               ; preds = %34
  %40 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %36) #42, !dbg !4956
  call void @llvm.dbg.value(metadata i32 %40, metadata !810, metadata !DIExpression()), !dbg !4950
  %41 = icmp sgt i32 %40, -1, !dbg !4958
  br i1 %41, label %46, label %42, !dbg !4960

42:                                               ; preds = %39
  %43 = tail call ptr @__errno_location() #45, !dbg !4961
  %44 = load i32, ptr %43, align 4, !dbg !4961, !tbaa !1015
  %45 = icmp eq i32 %44, 22, !dbg !4962
  br i1 %45, label %47, label %46, !dbg !4963

46:                                               ; preds = %42, %39
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4964, !tbaa !1015
  call void @llvm.dbg.value(metadata i32 %40, metadata !810, metadata !DIExpression()), !dbg !4950
  br label %107, !dbg !4966

47:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !4938, metadata !DIExpression()), !dbg !4967
  call void @llvm.dbg.value(metadata i32 %36, metadata !4941, metadata !DIExpression()), !dbg !4967
  %48 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #42, !dbg !4970
  call void @llvm.dbg.value(metadata i32 %48, metadata !4942, metadata !DIExpression()), !dbg !4967
  call void @llvm.dbg.value(metadata i32 %48, metadata !810, metadata !DIExpression()), !dbg !4950
  %49 = icmp sgt i32 %48, -1, !dbg !4971
  br i1 %49, label %50, label %107, !dbg !4973

50:                                               ; preds = %47
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4974, !tbaa !1015
  br label %55, !dbg !4975

51:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 %0, metadata !4938, metadata !DIExpression()), !dbg !4976
  call void @llvm.dbg.value(metadata i32 %36, metadata !4941, metadata !DIExpression()), !dbg !4976
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #42, !dbg !4978
  call void @llvm.dbg.value(metadata i32 %52, metadata !4942, metadata !DIExpression()), !dbg !4976
  call void @llvm.dbg.value(metadata i32 %52, metadata !810, metadata !DIExpression()), !dbg !4950
  %53 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %54 = icmp eq i32 %53, -1
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i1 [ true, %50 ], [ %54, %51 ]
  %57 = phi i32 [ %48, %50 ], [ %52, %51 ], !dbg !4979
  call void @llvm.dbg.value(metadata i32 %57, metadata !810, metadata !DIExpression()), !dbg !4950
  %58 = icmp sgt i32 %57, -1, !dbg !4980
  %59 = select i1 %58, i1 %56, i1 false, !dbg !4966
  br i1 %59, label %60, label %107, !dbg !4966

60:                                               ; preds = %55
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 1) #42, !dbg !4981
  call void @llvm.dbg.value(metadata i32 %61, metadata !811, metadata !DIExpression()), !dbg !4982
  %62 = icmp slt i32 %61, 0, !dbg !4983
  br i1 %62, label %67, label %63, !dbg !4984

63:                                               ; preds = %60
  %64 = or i32 %61, 1, !dbg !4985
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 2, i32 noundef %64) #42, !dbg !4986
  %66 = icmp eq i32 %65, -1, !dbg !4987
  br i1 %66, label %67, label %107, !dbg !4988

67:                                               ; preds = %63, %60
  %68 = tail call ptr @__errno_location() #45, !dbg !4989
  %69 = load i32, ptr %68, align 4, !dbg !4989, !tbaa !1015
  call void @llvm.dbg.value(metadata i32 %69, metadata !814, metadata !DIExpression()), !dbg !4990
  %70 = call i32 @close(i32 noundef %57) #42, !dbg !4991
  store i32 %69, ptr %68, align 4, !dbg !4992, !tbaa !1015
  call void @llvm.dbg.value(metadata i32 -1, metadata !810, metadata !DIExpression()), !dbg !4950
  br label %107, !dbg !4993

71:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %72 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #42, !dbg !4994
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !4917, metadata !DIExpression()), !dbg !4930
  br label %107, !dbg !4995

73:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %74 = load i32, ptr %3, align 16, !dbg !4996
  %75 = icmp ult i32 %74, 41, !dbg !4996
  br i1 %75, label %76, label %82, !dbg !4996

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4996
  %78 = load ptr, ptr %77, align 16, !dbg !4996
  %79 = zext nneg i32 %74 to i64, !dbg !4996
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4996
  %81 = add nuw nsw i32 %74, 8, !dbg !4996
  store i32 %81, ptr %3, align 16, !dbg !4996, !DIAssignID !4997
  call void @llvm.dbg.assign(metadata i32 %81, metadata !4906, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4997, metadata ptr %3, metadata !DIExpression()), !dbg !4930
  br label %86, !dbg !4996

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4996
  %84 = load ptr, ptr %83, align 8, !dbg !4996
  %85 = getelementptr i8, ptr %84, i64 8, !dbg !4996
  store ptr %85, ptr %83, align 8, !dbg !4996, !DIAssignID !4998
  call void @llvm.dbg.assign(metadata ptr %85, metadata !4906, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !4998, metadata ptr %83, metadata !DIExpression()), !dbg !4930
  br label %86, !dbg !4996

86:                                               ; preds = %82, %76
  %87 = phi ptr [ %80, %76 ], [ %84, %82 ], !dbg !4996
  %88 = load i32, ptr %87, align 4, !dbg !4996
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !4923, metadata !DIExpression()), !dbg !4999
  %89 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %88) #42, !dbg !5000
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !4917, metadata !DIExpression()), !dbg !4930
  br label %107, !dbg !5001

90:                                               ; preds = %2
  %91 = load i32, ptr %3, align 16, !dbg !5002
  %92 = icmp ult i32 %91, 41, !dbg !5002
  br i1 %92, label %93, label %99, !dbg !5002

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !5002
  %95 = load ptr, ptr %94, align 16, !dbg !5002
  %96 = zext nneg i32 %91 to i64, !dbg !5002
  %97 = getelementptr i8, ptr %95, i64 %96, !dbg !5002
  %98 = add nuw nsw i32 %91, 8, !dbg !5002
  store i32 %98, ptr %3, align 16, !dbg !5002, !DIAssignID !5003
  call void @llvm.dbg.assign(metadata i32 %98, metadata !4906, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !5003, metadata ptr %3, metadata !DIExpression()), !dbg !4930
  br label %103, !dbg !5002

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !5002
  %101 = load ptr, ptr %100, align 8, !dbg !5002
  %102 = getelementptr i8, ptr %101, i64 8, !dbg !5002
  store ptr %102, ptr %100, align 8, !dbg !5002, !DIAssignID !5004
  call void @llvm.dbg.assign(metadata ptr %102, metadata !4906, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !5004, metadata ptr %100, metadata !DIExpression()), !dbg !4930
  br label %103, !dbg !5002

103:                                              ; preds = %99, %93
  %104 = phi ptr [ %97, %93 ], [ %101, %99 ], !dbg !5002
  %105 = load ptr, ptr %104, align 8, !dbg !5002
  tail call void @llvm.dbg.value(metadata ptr %105, metadata !4927, metadata !DIExpression()), !dbg !5005
  %106 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %105) #42, !dbg !5006
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !4917, metadata !DIExpression()), !dbg !4930
  br label %107, !dbg !5007

107:                                              ; preds = %67, %63, %55, %47, %46, %71, %86, %103, %17
  %108 = phi i32 [ %106, %103 ], [ %89, %86 ], [ %72, %71 ], [ %20, %17 ], [ %57, %55 ], [ -1, %67 ], [ %57, %63 ], [ %48, %47 ], [ %40, %46 ], !dbg !5008
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !4917, metadata !DIExpression()), !dbg !4930
  call void @llvm.va_end(ptr nonnull %3), !dbg !5009
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #42, !dbg !5010
  ret i32 %108, !dbg !5011
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #11 !dbg !5012 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5017, metadata !DIExpression()), !dbg !5022
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5018, metadata !DIExpression()), !dbg !5022
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5019, metadata !DIExpression()), !dbg !5022
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5020, metadata !DIExpression()), !dbg !5022
  %5 = icmp eq ptr %1, null, !dbg !5023
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5025
  %7 = select i1 %5, ptr @.str.167, ptr %1, !dbg !5025
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5025
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5019, metadata !DIExpression()), !dbg !5022
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5018, metadata !DIExpression()), !dbg !5022
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5017, metadata !DIExpression()), !dbg !5022
  %9 = icmp eq ptr %3, null, !dbg !5026
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5028
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5020, metadata !DIExpression()), !dbg !5022
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #42, !dbg !5029
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5021, metadata !DIExpression()), !dbg !5022
  %12 = icmp ult i64 %11, -3, !dbg !5030
  br i1 %12, label %13, label %17, !dbg !5032

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #43, !dbg !5033
  %15 = icmp eq i32 %14, 0, !dbg !5033
  br i1 %15, label %16, label %29, !dbg !5034

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5035, metadata !DIExpression()), !dbg !5040
  call void @llvm.dbg.value(metadata ptr %10, metadata !5042, metadata !DIExpression()), !dbg !5047
  call void @llvm.dbg.value(metadata i32 0, metadata !5045, metadata !DIExpression()), !dbg !5047
  call void @llvm.dbg.value(metadata i64 8, metadata !5046, metadata !DIExpression()), !dbg !5047
  store i64 0, ptr %10, align 1, !dbg !5049
  br label %29, !dbg !5050

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5051
  br i1 %18, label %19, label %20, !dbg !5053

19:                                               ; preds = %17
  tail call void @abort() #44, !dbg !5054
  unreachable, !dbg !5054

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5055

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #42, !dbg !5057
  br i1 %23, label %29, label %24, !dbg !5058

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5059
  br i1 %25, label %29, label %26, !dbg !5062

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5063, !tbaa !1024
  %28 = zext i8 %27 to i32, !dbg !5064
  store i32 %28, ptr %6, align 4, !dbg !5065, !tbaa !1015
  br label %29, !dbg !5066

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5022
  ret i64 %30, !dbg !5067
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5068 i32 @mbsinit(ptr noundef) local_unnamed_addr #39

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: read) uwtable
define dso_local i32 @memcoll(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef %2, i64 noundef %3) local_unnamed_addr #40 !dbg !5074 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5076, metadata !DIExpression()), !dbg !5085
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5077, metadata !DIExpression()), !dbg !5085
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5078, metadata !DIExpression()), !dbg !5085
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !5079, metadata !DIExpression()), !dbg !5085
  %5 = icmp eq i64 %1, %3, !dbg !5086
  br i1 %5, label %6, label %11, !dbg !5087

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !5088, metadata !DIExpression()), !dbg !5093
  call void @llvm.dbg.value(metadata ptr %2, metadata !5091, metadata !DIExpression()), !dbg !5093
  call void @llvm.dbg.value(metadata i64 %1, metadata !5092, metadata !DIExpression()), !dbg !5093
  %7 = tail call i32 @bcmp(ptr %0, ptr %2, i64 %1), !dbg !5095
  %8 = icmp eq i32 %7, 0, !dbg !5096
  br i1 %8, label %9, label %11, !dbg !5097

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #45, !dbg !5098
  store i32 0, ptr %10, align 4, !dbg !5100, !tbaa !1015
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5080, metadata !DIExpression()), !dbg !5085
  br label %43, !dbg !5101

11:                                               ; preds = %6, %4
  %12 = getelementptr inbounds i8, ptr %0, i64 %1, !dbg !5102
  %13 = load i8, ptr %12, align 1, !dbg !5102, !tbaa !1024
  tail call void @llvm.dbg.value(metadata i8 %13, metadata !5081, metadata !DIExpression()), !dbg !5103
  %14 = getelementptr inbounds i8, ptr %2, i64 %3, !dbg !5104
  %15 = load i8, ptr %14, align 1, !dbg !5104, !tbaa !1024
  tail call void @llvm.dbg.value(metadata i8 %15, metadata !5084, metadata !DIExpression()), !dbg !5103
  store i8 0, ptr %12, align 1, !dbg !5105, !tbaa !1024
  store i8 0, ptr %14, align 1, !dbg !5106, !tbaa !1024
  %16 = add i64 %1, 1, !dbg !5107
  %17 = add i64 %3, 1, !dbg !5108
  call void @llvm.dbg.value(metadata ptr %0, metadata !5109, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.value(metadata i64 %16, metadata !5112, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.value(metadata ptr %2, metadata !5113, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.value(metadata i64 %17, metadata !5114, metadata !DIExpression()), !dbg !5119
  %18 = tail call ptr @__errno_location() #45, !dbg !5119
  br label %19, !dbg !5121

19:                                               ; preds = %37, %11
  %20 = phi ptr [ %2, %11 ], [ %38, %37 ]
  %21 = phi i64 [ %17, %11 ], [ %32, %37 ]
  %22 = phi i64 [ %16, %11 ], [ %31, %37 ]
  %23 = phi ptr [ %0, %11 ], [ %39, %37 ]
  call void @llvm.dbg.value(metadata ptr %23, metadata !5109, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.value(metadata i64 %22, metadata !5112, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.value(metadata i64 %21, metadata !5114, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.value(metadata ptr %20, metadata !5113, metadata !DIExpression()), !dbg !5119
  store i32 0, ptr %18, align 4, !dbg !5122, !tbaa !1015
  %24 = tail call i32 @strcoll(ptr noundef %23, ptr noundef %20) #43, !dbg !5123
  call void @llvm.dbg.value(metadata i32 %24, metadata !5115, metadata !DIExpression()), !dbg !5119
  %25 = icmp eq i32 %24, 0, !dbg !5124
  br i1 %25, label %26, label %41, !dbg !5121

26:                                               ; preds = %19
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %23) #43, !dbg !5125
  %28 = add i64 %27, 1, !dbg !5126
  call void @llvm.dbg.value(metadata i64 %28, metadata !5116, metadata !DIExpression()), !dbg !5127
  %29 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #43, !dbg !5128
  %30 = add i64 %29, 1, !dbg !5129
  call void @llvm.dbg.value(metadata i64 %30, metadata !5118, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata !DIArgList(ptr %23, i64 %28), metadata !5109, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5119
  call void @llvm.dbg.value(metadata !DIArgList(ptr %20, i64 %30), metadata !5113, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5119
  %31 = sub i64 %22, %28, !dbg !5130
  call void @llvm.dbg.value(metadata i64 %31, metadata !5112, metadata !DIExpression()), !dbg !5119
  %32 = sub i64 %21, %30, !dbg !5131
  call void @llvm.dbg.value(metadata i64 %32, metadata !5114, metadata !DIExpression()), !dbg !5119
  %33 = icmp eq i64 %31, 0, !dbg !5132
  br i1 %33, label %34, label %37, !dbg !5134

34:                                               ; preds = %26
  %35 = icmp ne i64 %32, 0, !dbg !5135
  %36 = sext i1 %35 to i32, !dbg !5135
  br label %41

37:                                               ; preds = %26
  %38 = getelementptr inbounds i8, ptr %20, i64 %30, !dbg !5136
  call void @llvm.dbg.value(metadata ptr %38, metadata !5113, metadata !DIExpression()), !dbg !5119
  %39 = getelementptr inbounds i8, ptr %23, i64 %28, !dbg !5137
  call void @llvm.dbg.value(metadata ptr %39, metadata !5109, metadata !DIExpression()), !dbg !5119
  %40 = icmp eq i64 %32, 0, !dbg !5138
  br i1 %40, label %41, label %19, !llvm.loop !5140

41:                                               ; preds = %19, %37, %34
  %42 = phi i32 [ %36, %34 ], [ 1, %37 ], [ %24, %19 ], !dbg !5119
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !5080, metadata !DIExpression()), !dbg !5085
  store i8 %13, ptr %12, align 1, !dbg !5142, !tbaa !1024
  store i8 %15, ptr %14, align 1, !dbg !5143, !tbaa !1024
  br label %43

43:                                               ; preds = %41, %9
  %44 = phi i32 [ 0, %9 ], [ %42, %41 ], !dbg !5144
  tail call void @llvm.dbg.value(metadata i32 %44, metadata !5080, metadata !DIExpression()), !dbg !5085
  ret i32 %44, !dbg !5145
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5146 i32 @strcoll(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #39

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: read) uwtable
define dso_local i32 @memcoll0(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #40 !dbg !5147 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5149, metadata !DIExpression()), !dbg !5153
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5150, metadata !DIExpression()), !dbg !5153
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5151, metadata !DIExpression()), !dbg !5153
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !5152, metadata !DIExpression()), !dbg !5153
  %5 = icmp eq i64 %1, %3, !dbg !5154
  br i1 %5, label %6, label %11, !dbg !5156

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !5088, metadata !DIExpression()), !dbg !5157
  call void @llvm.dbg.value(metadata ptr %2, metadata !5091, metadata !DIExpression()), !dbg !5157
  call void @llvm.dbg.value(metadata i64 %1, metadata !5092, metadata !DIExpression()), !dbg !5157
  %7 = tail call i32 @bcmp(ptr %0, ptr %2, i64 %1), !dbg !5159
  %8 = icmp eq i32 %7, 0, !dbg !5160
  br i1 %8, label %9, label %11, !dbg !5161

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #45, !dbg !5162
  store i32 0, ptr %10, align 4, !dbg !5164, !tbaa !1015
  br label %35, !dbg !5165

11:                                               ; preds = %6, %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !5109, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata i64 %1, metadata !5112, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata ptr %2, metadata !5113, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata i64 %3, metadata !5114, metadata !DIExpression()), !dbg !5166
  %12 = tail call ptr @__errno_location() #45, !dbg !5166
  br label %13, !dbg !5168

13:                                               ; preds = %31, %11
  %14 = phi ptr [ %2, %11 ], [ %32, %31 ]
  %15 = phi i64 [ %3, %11 ], [ %26, %31 ]
  %16 = phi i64 [ %1, %11 ], [ %25, %31 ]
  %17 = phi ptr [ %0, %11 ], [ %33, %31 ]
  call void @llvm.dbg.value(metadata ptr %17, metadata !5109, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata i64 %16, metadata !5112, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata i64 %15, metadata !5114, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata ptr %14, metadata !5113, metadata !DIExpression()), !dbg !5166
  store i32 0, ptr %12, align 4, !dbg !5169, !tbaa !1015
  %18 = tail call i32 @strcoll(ptr noundef %17, ptr noundef %14) #43, !dbg !5170
  call void @llvm.dbg.value(metadata i32 %18, metadata !5115, metadata !DIExpression()), !dbg !5166
  %19 = icmp eq i32 %18, 0, !dbg !5171
  br i1 %19, label %20, label %35, !dbg !5168

20:                                               ; preds = %13
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #43, !dbg !5172
  %22 = add i64 %21, 1, !dbg !5173
  call void @llvm.dbg.value(metadata i64 %22, metadata !5116, metadata !DIExpression()), !dbg !5174
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #43, !dbg !5175
  %24 = add i64 %23, 1, !dbg !5176
  call void @llvm.dbg.value(metadata i64 %24, metadata !5118, metadata !DIExpression()), !dbg !5174
  call void @llvm.dbg.value(metadata !DIArgList(ptr %17, i64 %22), metadata !5109, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5166
  call void @llvm.dbg.value(metadata !DIArgList(ptr %14, i64 %24), metadata !5113, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5166
  %25 = sub i64 %16, %22, !dbg !5177
  call void @llvm.dbg.value(metadata i64 %25, metadata !5112, metadata !DIExpression()), !dbg !5166
  %26 = sub i64 %15, %24, !dbg !5178
  call void @llvm.dbg.value(metadata i64 %26, metadata !5114, metadata !DIExpression()), !dbg !5166
  %27 = icmp eq i64 %25, 0, !dbg !5179
  br i1 %27, label %28, label %31, !dbg !5180

28:                                               ; preds = %20
  %29 = icmp ne i64 %26, 0, !dbg !5181
  %30 = sext i1 %29 to i32, !dbg !5181
  br label %35

31:                                               ; preds = %20
  %32 = getelementptr inbounds i8, ptr %14, i64 %24, !dbg !5182
  call void @llvm.dbg.value(metadata ptr %32, metadata !5113, metadata !DIExpression()), !dbg !5166
  %33 = getelementptr inbounds i8, ptr %17, i64 %22, !dbg !5183
  call void @llvm.dbg.value(metadata ptr %33, metadata !5109, metadata !DIExpression()), !dbg !5166
  %34 = icmp eq i64 %26, 0, !dbg !5184
  br i1 %34, label %35, label %13, !llvm.loop !5185

35:                                               ; preds = %31, %13, %28, %9
  %36 = phi i32 [ 0, %9 ], [ %30, %28 ], [ 1, %31 ], [ %18, %13 ], !dbg !5187
  ret i32 %36, !dbg !5188
}

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #41 !dbg !5189 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5191, metadata !DIExpression()), !dbg !5195
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5192, metadata !DIExpression()), !dbg !5195
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5193, metadata !DIExpression()), !dbg !5195
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5196
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5196
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5194, metadata !DIExpression()), !dbg !5195
  br i1 %5, label %6, label %8, !dbg !5198

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #45, !dbg !5199
  store i32 12, ptr %7, align 4, !dbg !5201, !tbaa !1015
  br label %12, !dbg !5202

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5196
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5194, metadata !DIExpression()), !dbg !5195
  call void @llvm.dbg.value(metadata ptr %0, metadata !5203, metadata !DIExpression()), !dbg !5207
  call void @llvm.dbg.value(metadata i64 %9, metadata !5206, metadata !DIExpression()), !dbg !5207
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5209
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #48, !dbg !5210
  br label %12, !dbg !5211

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5195
  ret ptr %13, !dbg !5212
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

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
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { nofree nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nofree nounwind memory(readwrite, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nounwind }
attributes #43 = { nounwind willreturn memory(read) }
attributes #44 = { noreturn nounwind }
attributes #45 = { nounwind willreturn memory(none) }
attributes #46 = { noreturn }
attributes #47 = { cold }
attributes #48 = { nounwind allocsize(1) }
attributes #49 = { nounwind allocsize(0) }
attributes #50 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!100, !477, !481, !496, !793, !835, !840, !842, !845, !847, !849, !851, !853, !857, !861, !550, !564, !615, !863, !865, !867, !869, !768, !875, !910, !912, !915, !917, !805, !822, !919, !921}
!llvm.ident = !{!923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923, !923}
!llvm.module.flags = !{!924, !925, !926, !927, !928, !929, !930}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/comm.c", directory: "/src", checksumkind: CSK_MD5, checksum: "38a1b8268c0573e3e950891e137bb09f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!105 = !DIEnumerator(name: "CHECK_ORDER_OPTION", value: 128)
!106 = !DIEnumerator(name: "NOCHECK_ORDER_OPTION", value: 129)
!107 = !DIEnumerator(name: "OUTPUT_DELIMITER_OPTION", value: 130)
!108 = !DIEnumerator(name: "TOTAL_OPTION", value: 131)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 64, baseType: !103, size: 32, elements: !110)
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "CHECK_ORDER_DEFAULT", value: 0)
!112 = !DIEnumerator(name: "CHECK_ORDER_ENABLED", value: 1)
!113 = !DIEnumerator(name: "CHECK_ORDER_DISABLED", value: 2)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !115, line: 337, baseType: !116, size: 32, elements: !117)
!115 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!116 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!117 = !{!118, !119}
!118 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!119 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!234 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !237)
!236 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!259 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!418 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!495 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !496, file: !497, line: 66, type: !542, isLocal: false, isDefinition: true)
!496 = distinct !DICompileUnit(language: DW_LANG_C11, file: !497, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !498, globals: !499, splitDebugInlining: false, nameTableKind: None)
!497 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!498 = !{!160, !167}
!499 = !{!500, !502, !521, !523, !525, !527, !494, !529, !531, !533, !535, !540}
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !497, line: 272, type: !29, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(name: "old_file_name", scope: !504, file: !497, line: 304, type: !165, isLocal: true, isDefinition: true)
!504 = distinct !DISubprogram(name: "verror_at_line", scope: !497, file: !497, line: 298, type: !505, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !514)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !116, !116, !165, !103, !165, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !509)
!509 = !{!510, !511, !512, !513}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !508, file: !497, baseType: !103, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !508, file: !497, baseType: !103, size: 32, offset: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !508, file: !497, baseType: !160, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !508, file: !497, baseType: !160, size: 64, offset: 128)
!514 = !{!515, !516, !517, !518, !519, !520}
!515 = !DILocalVariable(name: "status", arg: 1, scope: !504, file: !497, line: 298, type: !116)
!516 = !DILocalVariable(name: "errnum", arg: 2, scope: !504, file: !497, line: 298, type: !116)
!517 = !DILocalVariable(name: "file_name", arg: 3, scope: !504, file: !497, line: 298, type: !165)
!518 = !DILocalVariable(name: "line_number", arg: 4, scope: !504, file: !497, line: 298, type: !103)
!519 = !DILocalVariable(name: "message", arg: 5, scope: !504, file: !497, line: 298, type: !165)
!520 = !DILocalVariable(name: "args", arg: 6, scope: !504, file: !497, line: 298, type: !507)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(name: "old_line_number", scope: !504, file: !497, line: 305, type: !103, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !497, line: 338, type: !293, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !497, line: 346, type: !328, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !497, line: 346, type: !303, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(name: "error_message_count", scope: !496, file: !497, line: 69, type: !103, isLocal: false, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !496, file: !497, line: 295, type: !116, isLocal: false, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !497, line: 208, type: !323, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !497, line: 208, type: !537, isLocal: true, isDefinition: true)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !538)
!538 = !{!539}
!539 = !DISubrange(count: 21)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !497, line: 214, type: !29, isLocal: true, isDefinition: true)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{null}
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !547, line: 35, type: !298, isLocal: true, isDefinition: true)
!547 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(name: "program_name", scope: !550, file: !551, line: 31, type: !165, isLocal: false, isDefinition: true)
!550 = distinct !DICompileUnit(language: DW_LANG_C11, file: !551, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !552, globals: !553, splitDebugInlining: false, nameTableKind: None)
!551 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!552 = !{!160, !159}
!553 = !{!548, !554, !556}
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !551, line: 46, type: !328, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !551, line: 49, type: !293, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(name: "utf07FF", scope: !560, file: !561, line: 46, type: !588, isLocal: true, isDefinition: true)
!560 = distinct !DISubprogram(name: "proper_name_lite", scope: !561, file: !561, line: 38, type: !562, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !566)
!561 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!562 = !DISubroutineType(types: !563)
!563 = !{!165, !165, !165}
!564 = distinct !DICompileUnit(language: DW_LANG_C11, file: !561, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !565, splitDebugInlining: false, nameTableKind: None)
!565 = !{!558}
!566 = !{!567, !568, !569, !570, !575}
!567 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !560, file: !561, line: 38, type: !165)
!568 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !560, file: !561, line: 38, type: !165)
!569 = !DILocalVariable(name: "translation", scope: !560, file: !561, line: 40, type: !165)
!570 = !DILocalVariable(name: "w", scope: !560, file: !561, line: 47, type: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !572, line: 37, baseType: !573)
!572 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !259, line: 57, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !259, line: 42, baseType: !103)
!575 = !DILocalVariable(name: "mbs", scope: !560, file: !561, line: 48, type: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !577, line: 6, baseType: !578)
!577 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !579, line: 21, baseType: !580)
!579 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !579, line: 13, size: 64, elements: !581)
!581 = !{!582, !583}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !580, file: !579, line: 15, baseType: !116, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !580, file: !579, line: 20, baseType: !584, size: 32, offset: 32)
!584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !580, file: !579, line: 16, size: 32, elements: !585)
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !584, file: !579, line: 18, baseType: !103, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !584, file: !579, line: 19, baseType: !293, size: 32)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 16, elements: !304)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !591, line: 78, type: !328, isLocal: true, isDefinition: true)
!591 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !591, line: 79, type: !298, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !591, line: 80, type: !596, isLocal: true, isDefinition: true)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 13)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !591, line: 81, type: !596, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !591, line: 82, type: !183, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !591, line: 83, type: !303, isLocal: true, isDefinition: true)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !591, line: 84, type: !328, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !591, line: 85, type: !323, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !591, line: 86, type: !323, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !591, line: 87, type: !328, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !615, file: !591, line: 76, type: !689, isLocal: false, isDefinition: true)
!615 = distinct !DICompileUnit(language: DW_LANG_C11, file: !591, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !616, retainedTypes: !624, globals: !625, splitDebugInlining: false, nameTableKind: None)
!616 = !{!617, !619, !120}
!617 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !618, line: 42, baseType: !103, size: 32, elements: !137)
!618 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!619 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !618, line: 254, baseType: !103, size: 32, elements: !620)
!620 = !{!621, !622, !623}
!621 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!622 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!623 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!624 = !{!160, !116, !161, !162}
!625 = !{!589, !592, !594, !599, !601, !603, !605, !607, !609, !611, !613, !626, !630, !640, !642, !647, !649, !651, !653, !655, !678, !685, !687}
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !615, file: !591, line: 92, type: !628, isLocal: false, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 320, elements: !91)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !617)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !615, file: !591, line: 1040, type: !632, isLocal: false, isDefinition: true)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !591, line: 56, size: 448, elements: !633)
!633 = !{!634, !635, !636, !638, !639}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !632, file: !591, line: 59, baseType: !617, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !591, line: 62, baseType: !116, size: 32, offset: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !632, file: !591, line: 66, baseType: !637, size: 256, offset: 64)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !329)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !632, file: !591, line: 69, baseType: !165, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !632, file: !591, line: 72, baseType: !165, size: 64, offset: 384)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !615, file: !591, line: 107, type: !632, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(name: "slot0", scope: !615, file: !591, line: 831, type: !644, isLocal: true, isDefinition: true)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 256)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !591, line: 321, type: !303, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !591, line: 357, type: !303, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !591, line: 358, type: !303, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !591, line: 199, type: !323, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(name: "quote", scope: !657, file: !591, line: 228, type: !676, isLocal: true, isDefinition: true)
!657 = distinct !DISubprogram(name: "gettext_quote", scope: !591, file: !591, line: 197, type: !658, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !660)
!658 = !DISubroutineType(types: !659)
!659 = !{!165, !165, !617}
!660 = !{!661, !662, !663, !664, !665}
!661 = !DILocalVariable(name: "msgid", arg: 1, scope: !657, file: !591, line: 197, type: !165)
!662 = !DILocalVariable(name: "s", arg: 2, scope: !657, file: !591, line: 197, type: !617)
!663 = !DILocalVariable(name: "translation", scope: !657, file: !591, line: 199, type: !165)
!664 = !DILocalVariable(name: "w", scope: !657, file: !591, line: 229, type: !571)
!665 = !DILocalVariable(name: "mbs", scope: !657, file: !591, line: 230, type: !666)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !577, line: 6, baseType: !667)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !579, line: 21, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !579, line: 13, size: 64, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !668, file: !579, line: 15, baseType: !116, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !668, file: !579, line: 20, baseType: !672, size: 32, offset: 32)
!672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !668, file: !579, line: 16, size: 32, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !672, file: !579, line: 18, baseType: !103, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !672, file: !579, line: 19, baseType: !293, size: 32)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 64, elements: !677)
!677 = !{!305, !295}
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(name: "slotvec", scope: !615, file: !591, line: 834, type: !680, isLocal: true, isDefinition: true)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !591, line: 823, size: 128, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !681, file: !591, line: 825, baseType: !162, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !681, file: !591, line: 826, baseType: !159, size: 64, offset: 64)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(name: "nslots", scope: !615, file: !591, line: 832, type: !116, isLocal: true, isDefinition: true)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(name: "slotvec0", scope: !615, file: !591, line: 833, type: !681, isLocal: true, isDefinition: true)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 704, elements: !691)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!691 = !{!692}
!692 = !DISubrange(count: 11)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !695, line: 67, type: !396, isLocal: true, isDefinition: true)
!695 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !695, line: 69, type: !323, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !695, line: 83, type: !323, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !695, line: 83, type: !293, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !695, line: 85, type: !303, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !695, line: 88, type: !706, isLocal: true, isDefinition: true)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !707)
!707 = !{!708}
!708 = !DISubrange(count: 171)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !695, line: 88, type: !711, isLocal: true, isDefinition: true)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !712)
!712 = !{!713}
!713 = !DISubrange(count: 34)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !695, line: 105, type: !188, isLocal: true, isDefinition: true)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !695, line: 109, type: !718, isLocal: true, isDefinition: true)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !719)
!719 = !{!720}
!720 = !DISubrange(count: 23)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !695, line: 113, type: !723, isLocal: true, isDefinition: true)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !724)
!724 = !{!725}
!725 = !DISubrange(count: 28)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !695, line: 120, type: !728, isLocal: true, isDefinition: true)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !729)
!729 = !{!730}
!730 = !DISubrange(count: 32)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !695, line: 127, type: !733, isLocal: true, isDefinition: true)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !734)
!734 = !{!735}
!735 = !DISubrange(count: 36)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !695, line: 134, type: !347, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !695, line: 142, type: !740, isLocal: true, isDefinition: true)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !741)
!741 = !{!742}
!742 = !DISubrange(count: 44)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !695, line: 150, type: !745, isLocal: true, isDefinition: true)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !746)
!746 = !{!747}
!747 = !DISubrange(count: 48)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !695, line: 159, type: !14, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !695, line: 170, type: !19, isLocal: true, isDefinition: true)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !695, line: 248, type: !183, isLocal: true, isDefinition: true)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !695, line: 248, type: !372, isLocal: true, isDefinition: true)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !695, line: 254, type: !183, isLocal: true, isDefinition: true)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(scope: null, file: !695, line: 254, type: !178, isLocal: true, isDefinition: true)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !695, line: 254, type: !347, isLocal: true, isDefinition: true)
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(scope: null, file: !695, line: 259, type: !3, isLocal: true, isDefinition: true)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !695, line: 259, type: !451, isLocal: true, isDefinition: true)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !768, file: !769, line: 26, type: !771, isLocal: false, isDefinition: true)
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !769, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !770, splitDebugInlining: false, nameTableKind: None)
!769 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!770 = !{!766}
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 376, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 47)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !776, line: 34, type: !312, isLocal: true, isDefinition: true)
!776 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !776, line: 34, type: !323, isLocal: true, isDefinition: true)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !776, line: 34, type: !200, isLocal: true, isDefinition: true)
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(scope: null, file: !783, line: 39, type: !323, isLocal: true, isDefinition: true)
!783 = !DIFile(filename: "lib/xmemcoll.c", directory: "/src", checksumkind: CSK_MD5, checksum: "77ad181911e918137a808414fb759bea")
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !783, line: 39, type: !195, isLocal: true, isDefinition: true)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(scope: null, file: !783, line: 40, type: !788, isLocal: true, isDefinition: true)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !789)
!789 = !{!790}
!790 = !DISubrange(count: 43)
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(name: "exit_failure", scope: !793, file: !794, line: 24, type: !796, isLocal: false, isDefinition: true)
!793 = distinct !DICompileUnit(language: DW_LANG_C11, file: !794, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !795, splitDebugInlining: false, nameTableKind: None)
!794 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!795 = !{!791}
!796 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !116)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(scope: null, file: !783, line: 41, type: !173, isLocal: true, isDefinition: true)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !801, file: !802, line: 506, type: !116, isLocal: true, isDefinition: true)
!801 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !802, file: !802, line: 485, type: !803, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !807)
!802 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!803 = !DISubroutineType(types: !804)
!804 = !{!116, !116, !116}
!805 = distinct !DICompileUnit(language: DW_LANG_C11, file: !802, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fcntl.o -MD -MP -MF lib/.deps/libcoreutils_a-fcntl.Tpo -c lib/fcntl.c -o lib/.libcoreutils_a-fcntl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !806, splitDebugInlining: false, nameTableKind: None)
!806 = !{!799}
!807 = !{!808, !809, !810, !811, !814}
!808 = !DILocalVariable(name: "fd", arg: 1, scope: !801, file: !802, line: 485, type: !116)
!809 = !DILocalVariable(name: "target", arg: 2, scope: !801, file: !802, line: 485, type: !116)
!810 = !DILocalVariable(name: "result", scope: !801, file: !802, line: 487, type: !116)
!811 = !DILocalVariable(name: "flags", scope: !812, file: !802, line: 530, type: !116)
!812 = distinct !DILexicalBlock(scope: !813, file: !802, line: 529, column: 5)
!813 = distinct !DILexicalBlock(scope: !801, file: !802, line: 528, column: 7)
!814 = !DILocalVariable(name: "saved_errno", scope: !815, file: !802, line: 533, type: !116)
!815 = distinct !DILexicalBlock(scope: !816, file: !802, line: 532, column: 9)
!816 = distinct !DILexicalBlock(scope: !812, file: !802, line: 531, column: 11)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(scope: null, file: !819, line: 108, type: !85, isLocal: true, isDefinition: true)
!819 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(name: "internal_state", scope: !822, file: !819, line: 97, type: !825, isLocal: true, isDefinition: true)
!822 = distinct !DICompileUnit(language: DW_LANG_C11, file: !819, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !823, globals: !824, splitDebugInlining: false, nameTableKind: None)
!823 = !{!160, !162, !167}
!824 = !{!817, !820}
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !577, line: 6, baseType: !826)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !579, line: 21, baseType: !827)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !579, line: 13, size: 64, elements: !828)
!828 = !{!829, !830}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !827, file: !579, line: 15, baseType: !116, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !827, file: !579, line: 20, baseType: !831, size: 32, offset: 32)
!831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !827, file: !579, line: 16, size: 32, elements: !832)
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !831, file: !579, line: 18, baseType: !103, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !831, file: !579, line: 19, baseType: !293, size: 32)
!835 = distinct !DICompileUnit(language: DW_LANG_C11, file: !836, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !837, splitDebugInlining: false, nameTableKind: None)
!836 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!837 = !{!838}
!838 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !839, line: 44, baseType: !103, size: 32, elements: !151)
!839 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!840 = distinct !DICompileUnit(language: DW_LANG_C11, file: !841, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!841 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!842 = distinct !DICompileUnit(language: DW_LANG_C11, file: !843, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !844, splitDebugInlining: false, nameTableKind: None)
!843 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!844 = !{!160}
!845 = distinct !DICompileUnit(language: DW_LANG_C11, file: !846, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen-safer.Tpo -c lib/fopen-safer.c -o lib/.libcoreutils_a-fopen-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!846 = !DIFile(filename: "lib/fopen-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc91097c7b0e7b372b0b37f4c608799b")
!847 = distinct !DICompileUnit(language: DW_LANG_C11, file: !848, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!848 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!849 = distinct !DICompileUnit(language: DW_LANG_C11, file: !850, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !844, splitDebugInlining: false, nameTableKind: None)
!850 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!851 = distinct !DICompileUnit(language: DW_LANG_C11, file: !852, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!852 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!853 = distinct !DICompileUnit(language: DW_LANG_C11, file: !547, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !854, splitDebugInlining: false, nameTableKind: None)
!854 = !{!855, !545}
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(scope: null, file: !547, line: 35, type: !303, isLocal: true, isDefinition: true)
!857 = distinct !DICompileUnit(language: DW_LANG_C11, file: !858, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-linebuffer.o -MD -MP -MF lib/.deps/libcoreutils_a-linebuffer.Tpo -c lib/linebuffer.c -o lib/.libcoreutils_a-linebuffer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !859, splitDebugInlining: false, nameTableKind: None)
!858 = !DIFile(filename: "lib/linebuffer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d85d9b8947aefddab7f1bb42f1d43333")
!859 = !{!860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!861 = distinct !DICompileUnit(language: DW_LANG_C11, file: !862, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-memcmp2.o -MD -MP -MF lib/.deps/libcoreutils_a-memcmp2.Tpo -c lib/memcmp2.c -o lib/.libcoreutils_a-memcmp2.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!862 = !DIFile(filename: "lib/memcmp2.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e6bcc41ab98d01454beab912275e871e")
!863 = distinct !DICompileUnit(language: DW_LANG_C11, file: !864, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!864 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!865 = distinct !DICompileUnit(language: DW_LANG_C11, file: !866, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !844, splitDebugInlining: false, nameTableKind: None)
!866 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!867 = distinct !DICompileUnit(language: DW_LANG_C11, file: !868, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dup-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-dup-safer.Tpo -c lib/dup-safer.c -o lib/.libcoreutils_a-dup-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!868 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!869 = distinct !DICompileUnit(language: DW_LANG_C11, file: !695, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !870, retainedTypes: !844, globals: !874, splitDebugInlining: false, nameTableKind: None)
!870 = !{!871}
!871 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !695, line: 40, baseType: !103, size: 32, elements: !872)
!872 = !{!873}
!873 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!874 = !{!693, !696, !698, !700, !702, !704, !709, !714, !716, !721, !726, !731, !736, !738, !743, !748, !750, !752, !754, !756, !758, !760, !762, !764}
!875 = distinct !DICompileUnit(language: DW_LANG_C11, file: !876, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !877, retainedTypes: !909, splitDebugInlining: false, nameTableKind: None)
!876 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!877 = !{!878, !890}
!878 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !879, file: !876, line: 188, baseType: !103, size: 32, elements: !888)
!879 = distinct !DISubprogram(name: "x2nrealloc", scope: !876, file: !876, line: 176, type: !880, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !883)
!880 = !DISubroutineType(types: !881)
!881 = !{!160, !160, !882, !162}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!883 = !{!884, !885, !886, !887}
!884 = !DILocalVariable(name: "p", arg: 1, scope: !879, file: !876, line: 176, type: !160)
!885 = !DILocalVariable(name: "pn", arg: 2, scope: !879, file: !876, line: 176, type: !882)
!886 = !DILocalVariable(name: "s", arg: 3, scope: !879, file: !876, line: 176, type: !162)
!887 = !DILocalVariable(name: "n", scope: !879, file: !876, line: 178, type: !162)
!888 = !{!889}
!889 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!890 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !891, file: !876, line: 228, baseType: !103, size: 32, elements: !888)
!891 = distinct !DISubprogram(name: "xpalloc", scope: !876, file: !876, line: 223, type: !892, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !899)
!892 = !DISubroutineType(types: !893)
!893 = !{!160, !160, !894, !895, !897, !895}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !896, line: 130, baseType: !897)
!896 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !898, line: 18, baseType: !260)
!898 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!899 = !{!900, !901, !902, !903, !904, !905, !906, !907, !908}
!900 = !DILocalVariable(name: "pa", arg: 1, scope: !891, file: !876, line: 223, type: !160)
!901 = !DILocalVariable(name: "pn", arg: 2, scope: !891, file: !876, line: 223, type: !894)
!902 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !891, file: !876, line: 223, type: !895)
!903 = !DILocalVariable(name: "n_max", arg: 4, scope: !891, file: !876, line: 223, type: !897)
!904 = !DILocalVariable(name: "s", arg: 5, scope: !891, file: !876, line: 223, type: !895)
!905 = !DILocalVariable(name: "n0", scope: !891, file: !876, line: 230, type: !895)
!906 = !DILocalVariable(name: "n", scope: !891, file: !876, line: 237, type: !895)
!907 = !DILocalVariable(name: "nbytes", scope: !891, file: !876, line: 248, type: !895)
!908 = !DILocalVariable(name: "adjusted_nbytes", scope: !891, file: !876, line: 252, type: !895)
!909 = !{!159, !160}
!910 = distinct !DICompileUnit(language: DW_LANG_C11, file: !776, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !911, splitDebugInlining: false, nameTableKind: None)
!911 = !{!774, !777, !779}
!912 = distinct !DICompileUnit(language: DW_LANG_C11, file: !783, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmemcoll.o -MD -MP -MF lib/.deps/libcoreutils_a-xmemcoll.Tpo -c lib/xmemcoll.c -o lib/.libcoreutils_a-xmemcoll.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !913, globals: !914, splitDebugInlining: false, nameTableKind: None)
!913 = !{!617}
!914 = !{!781, !784, !786, !797}
!915 = distinct !DICompileUnit(language: DW_LANG_C11, file: !916, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen.Tpo -c lib/fopen.c -o lib/.libcoreutils_a-fopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !844, splitDebugInlining: false, nameTableKind: None)
!916 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!917 = distinct !DICompileUnit(language: DW_LANG_C11, file: !918, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!918 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!919 = distinct !DICompileUnit(language: DW_LANG_C11, file: !920, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-memcoll.o -MD -MP -MF lib/.deps/libcoreutils_a-memcoll.Tpo -c lib/memcoll.c -o lib/.libcoreutils_a-memcoll.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!920 = !DIFile(filename: "lib/memcoll.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f316fa5066b9311c53750cfc7e26d495")
!921 = distinct !DICompileUnit(language: DW_LANG_C11, file: !922, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !844, splitDebugInlining: false, nameTableKind: None)
!922 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!923 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!924 = !{i32 7, !"Dwarf Version", i32 5}
!925 = !{i32 2, !"Debug Info Version", i32 3}
!926 = !{i32 1, !"wchar_size", i32 4}
!927 = !{i32 8, !"PIC Level", i32 2}
!928 = !{i32 7, !"PIE Level", i32 2}
!929 = !{i32 7, !"uwtable", i32 2}
!930 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!931 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 100, type: !932, scopeLine: 101, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !934)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !116}
!934 = !{!935}
!935 = !DILocalVariable(name: "status", arg: 1, scope: !931, file: !2, line: 100, type: !116)
!936 = !DILocation(line: 0, scope: !931)
!937 = !DILocation(line: 102, column: 14, scope: !938)
!938 = distinct !DILexicalBlock(scope: !931, file: !2, line: 102, column: 7)
!939 = !DILocation(line: 102, column: 7, scope: !931)
!940 = !DILocation(line: 103, column: 5, scope: !941)
!941 = distinct !DILexicalBlock(scope: !938, file: !2, line: 103, column: 5)
!942 = !{!943, !943, i64 0}
!943 = !{!"any pointer", !944, i64 0}
!944 = !{!"omnipotent char", !945, i64 0}
!945 = !{!"Simple C/C++ TBAA"}
!946 = !DILocation(line: 106, column: 7, scope: !947)
!947 = distinct !DILexicalBlock(scope: !938, file: !2, line: 105, column: 5)
!948 = !DILocation(line: 110, column: 7, scope: !947)
!949 = !DILocation(line: 113, column: 7, scope: !947)
!950 = !DILocation(line: 117, column: 7, scope: !947)
!951 = !DILocation(line: 123, column: 7, scope: !947)
!952 = !DILocation(line: 126, column: 7, scope: !947)
!953 = !DILocation(line: 129, column: 7, scope: !947)
!954 = !DILocation(line: 132, column: 7, scope: !947)
!955 = !DILocation(line: 137, column: 7, scope: !947)
!956 = !DILocation(line: 141, column: 7, scope: !947)
!957 = !DILocation(line: 145, column: 7, scope: !947)
!958 = !DILocation(line: 149, column: 7, scope: !947)
!959 = !DILocation(line: 153, column: 7, scope: !947)
!960 = !DILocation(line: 154, column: 7, scope: !947)
!961 = !DILocation(line: 155, column: 7, scope: !947)
!962 = !DILocation(line: 159, column: 7, scope: !947)
!963 = !DILocalVariable(name: "program", arg: 1, scope: !964, file: !115, line: 836, type: !165)
!964 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !115, file: !115, line: 836, type: !965, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !967)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !165}
!967 = !{!963, !968, !975, !976, !978, !979}
!968 = !DILocalVariable(name: "infomap", scope: !964, file: !115, line: 838, type: !969)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !970, size: 896, elements: !324)
!970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !971)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !964, file: !115, line: 838, size: 128, elements: !972)
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !971, file: !115, line: 838, baseType: !165, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !971, file: !115, line: 838, baseType: !165, size: 64, offset: 64)
!975 = !DILocalVariable(name: "node", scope: !964, file: !115, line: 848, type: !165)
!976 = !DILocalVariable(name: "map_prog", scope: !964, file: !115, line: 849, type: !977)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!978 = !DILocalVariable(name: "lc_messages", scope: !964, file: !115, line: 861, type: !165)
!979 = !DILocalVariable(name: "url_program", scope: !964, file: !115, line: 874, type: !165)
!980 = !DILocation(line: 0, scope: !964, inlinedAt: !981)
!981 = distinct !DILocation(line: 166, column: 7, scope: !947)
!982 = !{}
!983 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !981)
!984 = !DILocation(line: 861, column: 29, scope: !964, inlinedAt: !981)
!985 = !DILocation(line: 862, column: 7, scope: !986, inlinedAt: !981)
!986 = distinct !DILexicalBlock(scope: !964, file: !115, line: 862, column: 7)
!987 = !DILocation(line: 862, column: 19, scope: !986, inlinedAt: !981)
!988 = !DILocation(line: 862, column: 22, scope: !986, inlinedAt: !981)
!989 = !DILocation(line: 862, column: 7, scope: !964, inlinedAt: !981)
!990 = !DILocation(line: 868, column: 7, scope: !991, inlinedAt: !981)
!991 = distinct !DILexicalBlock(scope: !986, file: !115, line: 863, column: 5)
!992 = !DILocation(line: 870, column: 5, scope: !991, inlinedAt: !981)
!993 = !DILocation(line: 875, column: 3, scope: !964, inlinedAt: !981)
!994 = !DILocation(line: 877, column: 3, scope: !964, inlinedAt: !981)
!995 = !DILocation(line: 168, column: 3, scope: !931)
!996 = !DISubprogram(name: "dcgettext", scope: !997, file: !997, line: 51, type: !998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!997 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!998 = !DISubroutineType(types: !999)
!999 = !{!159, !165, !165, !116}
!1000 = !DISubprogram(name: "__fprintf_chk", scope: !1001, file: !1001, line: 93, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1001 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!116, !1004, !116, !1005, null}
!1004 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !232)
!1005 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !165)
!1006 = !DISubprogram(name: "__printf_chk", scope: !1001, file: !1001, line: 95, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!116, !116, !1005, null}
!1009 = !DISubprogram(name: "fputs_unlocked", scope: !1010, file: !1010, line: 691, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1010 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!116, !1005, !1004}
!1013 = !DILocation(line: 0, scope: !210)
!1014 = !DILocation(line: 581, column: 7, scope: !218)
!1015 = !{!1016, !1016, i64 0}
!1016 = !{!"int", !944, i64 0}
!1017 = !DILocation(line: 581, column: 19, scope: !218)
!1018 = !DILocation(line: 581, column: 7, scope: !210)
!1019 = !DILocation(line: 585, column: 26, scope: !217)
!1020 = !DILocation(line: 0, scope: !217)
!1021 = !DILocation(line: 586, column: 23, scope: !217)
!1022 = !DILocation(line: 586, column: 28, scope: !217)
!1023 = !DILocation(line: 586, column: 32, scope: !217)
!1024 = !{!944, !944, i64 0}
!1025 = !DILocation(line: 586, column: 38, scope: !217)
!1026 = !DILocalVariable(name: "__s1", arg: 1, scope: !1027, file: !1028, line: 1359, type: !165)
!1027 = distinct !DISubprogram(name: "streq", scope: !1028, file: !1028, line: 1359, type: !1029, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1031)
!1028 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!205, !165, !165}
!1031 = !{!1026, !1032}
!1032 = !DILocalVariable(name: "__s2", arg: 2, scope: !1027, file: !1028, line: 1359, type: !165)
!1033 = !DILocation(line: 0, scope: !1027, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 586, column: 41, scope: !217)
!1035 = !DILocation(line: 1361, column: 11, scope: !1027, inlinedAt: !1034)
!1036 = !DILocation(line: 1361, column: 10, scope: !1027, inlinedAt: !1034)
!1037 = !DILocation(line: 586, column: 19, scope: !217)
!1038 = !DILocation(line: 587, column: 5, scope: !217)
!1039 = !DILocation(line: 588, column: 7, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !210, file: !115, line: 588, column: 7)
!1041 = !DILocation(line: 588, column: 7, scope: !210)
!1042 = !DILocation(line: 590, column: 7, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !115, line: 589, column: 5)
!1044 = !DILocation(line: 591, column: 7, scope: !1043)
!1045 = !DILocation(line: 595, column: 37, scope: !210)
!1046 = !DILocation(line: 595, column: 35, scope: !210)
!1047 = !DILocation(line: 596, column: 29, scope: !210)
!1048 = !DILocation(line: 597, column: 8, scope: !225)
!1049 = !DILocation(line: 597, column: 7, scope: !210)
!1050 = !DILocation(line: 604, column: 24, scope: !224)
!1051 = !DILocation(line: 604, column: 12, scope: !225)
!1052 = !DILocation(line: 0, scope: !223)
!1053 = !DILocation(line: 610, column: 16, scope: !223)
!1054 = !DILocation(line: 610, column: 7, scope: !223)
!1055 = !DILocation(line: 611, column: 21, scope: !223)
!1056 = !{!1057, !1057, i64 0}
!1057 = !{!"short", !944, i64 0}
!1058 = !DILocation(line: 611, column: 19, scope: !223)
!1059 = !DILocation(line: 611, column: 16, scope: !223)
!1060 = !DILocation(line: 610, column: 30, scope: !223)
!1061 = distinct !{!1061, !1054, !1055, !1062}
!1062 = !{!"llvm.loop.mustprogress"}
!1063 = !DILocation(line: 612, column: 18, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !223, file: !115, line: 612, column: 11)
!1065 = !DILocation(line: 612, column: 11, scope: !223)
!1066 = !DILocation(line: 620, column: 23, scope: !210)
!1067 = !DILocation(line: 625, column: 39, scope: !210)
!1068 = !DILocation(line: 626, column: 3, scope: !210)
!1069 = !DILocation(line: 626, column: 10, scope: !210)
!1070 = !DILocation(line: 626, column: 21, scope: !210)
!1071 = !DILocation(line: 628, column: 44, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !115, line: 628, column: 11)
!1073 = distinct !DILexicalBlock(scope: !210, file: !115, line: 627, column: 5)
!1074 = !DILocation(line: 628, column: 32, scope: !1072)
!1075 = !DILocation(line: 628, column: 49, scope: !1072)
!1076 = !DILocation(line: 628, column: 11, scope: !1073)
!1077 = !DILocation(line: 630, column: 11, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1073, file: !115, line: 630, column: 11)
!1079 = !DILocation(line: 630, column: 11, scope: !1073)
!1080 = !DILocation(line: 632, column: 26, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !115, line: 632, column: 15)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !115, line: 631, column: 9)
!1083 = !DILocation(line: 632, column: 34, scope: !1081)
!1084 = !DILocation(line: 632, column: 37, scope: !1081)
!1085 = !DILocation(line: 632, column: 15, scope: !1082)
!1086 = !DILocation(line: 636, column: 16, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1082, file: !115, line: 636, column: 15)
!1088 = !DILocation(line: 636, column: 29, scope: !1087)
!1089 = !DILocation(line: 640, column: 16, scope: !1073)
!1090 = distinct !{!1090, !1068, !1091, !1062}
!1091 = !DILocation(line: 641, column: 5, scope: !210)
!1092 = !DILocation(line: 644, column: 3, scope: !210)
!1093 = !DILocation(line: 0, scope: !1027, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 648, column: 31, scope: !210)
!1095 = !DILocation(line: 0, scope: !1027, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 649, column: 31, scope: !210)
!1097 = !DILocation(line: 0, scope: !1027, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 650, column: 31, scope: !210)
!1099 = !DILocation(line: 0, scope: !1027, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 651, column: 31, scope: !210)
!1101 = !DILocation(line: 0, scope: !1027, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 652, column: 31, scope: !210)
!1103 = !DILocation(line: 0, scope: !1027, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 653, column: 31, scope: !210)
!1105 = !DILocation(line: 0, scope: !1027, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 654, column: 31, scope: !210)
!1107 = !DILocation(line: 0, scope: !1027, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 655, column: 31, scope: !210)
!1109 = !DILocation(line: 0, scope: !1027, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 656, column: 31, scope: !210)
!1111 = !DILocation(line: 0, scope: !1027, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 657, column: 31, scope: !210)
!1113 = !DILocation(line: 663, column: 7, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !210, file: !115, line: 663, column: 7)
!1115 = !DILocation(line: 664, column: 7, scope: !1114)
!1116 = !DILocation(line: 664, column: 10, scope: !1114)
!1117 = !DILocation(line: 663, column: 7, scope: !210)
!1118 = !DILocation(line: 669, column: 7, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1114, file: !115, line: 665, column: 5)
!1120 = !DILocation(line: 671, column: 5, scope: !1119)
!1121 = !DILocation(line: 676, column: 7, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1114, file: !115, line: 673, column: 5)
!1123 = !DILocation(line: 679, column: 3, scope: !210)
!1124 = !DILocation(line: 683, column: 3, scope: !210)
!1125 = !DILocation(line: 686, column: 3, scope: !210)
!1126 = !DILocation(line: 688, column: 3, scope: !210)
!1127 = !DILocation(line: 691, column: 3, scope: !210)
!1128 = !DILocation(line: 695, column: 3, scope: !210)
!1129 = !DILocation(line: 696, column: 1, scope: !210)
!1130 = !DISubprogram(name: "setlocale", scope: !1131, file: !1131, line: 122, type: !1132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1131 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!159, !116, !165}
!1134 = !DISubprogram(name: "strncmp", scope: !1135, file: !1135, line: 159, type: !1136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1135 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!116, !165, !165, !162}
!1138 = !DISubprogram(name: "exit", scope: !1139, file: !1139, line: 624, type: !932, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1139 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1140 = !DISubprogram(name: "getenv", scope: !1139, file: !1139, line: 641, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!159, !165}
!1143 = !DISubprogram(name: "strcmp", scope: !1135, file: !1135, line: 156, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!116, !165, !165}
!1146 = !DISubprogram(name: "strspn", scope: !1135, file: !1135, line: 297, type: !1147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!164, !165, !165}
!1149 = !DISubprogram(name: "strchr", scope: !1135, file: !1135, line: 246, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!159, !165, !116}
!1152 = !DISubprogram(name: "__ctype_b_loc", scope: !121, file: !121, line: 79, type: !1153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!1155}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!1158 = !DISubprogram(name: "strcspn", scope: !1135, file: !1135, line: 293, type: !1147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1159 = !DISubprogram(name: "fwrite_unlocked", scope: !1010, file: !1010, line: 704, type: !1160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!162, !1162, !162, !162, !1004}
!1162 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1163)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1165 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 424, type: !1166, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1169)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!116, !116, !1168}
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1169 = !{!1170, !1171, !1172}
!1170 = !DILocalVariable(name: "argc", arg: 1, scope: !1165, file: !2, line: 424, type: !116)
!1171 = !DILocalVariable(name: "argv", arg: 2, scope: !1165, file: !2, line: 424, type: !1168)
!1172 = !DILocalVariable(name: "c", scope: !1165, file: !2, line: 426, type: !116)
!1173 = !DILocation(line: 0, scope: !1165)
!1174 = !DILocation(line: 429, column: 21, scope: !1165)
!1175 = !DILocation(line: 429, column: 3, scope: !1165)
!1176 = !DILocation(line: 430, column: 3, scope: !1165)
!1177 = !DILocation(line: 431, column: 3, scope: !1165)
!1178 = !DILocation(line: 432, column: 3, scope: !1165)
!1179 = !DILocation(line: 433, column: 21, scope: !1165)
!1180 = !DILocation(line: 433, column: 19, scope: !1165)
!1181 = !{!1182, !1182, i64 0}
!1182 = !{!"_Bool", !944, i64 0}
!1183 = !DILocation(line: 435, column: 3, scope: !1165)
!1184 = !DILocation(line: 437, column: 3, scope: !1165)
!1185 = !DILocation(line: 437, column: 15, scope: !1165)
!1186 = !DILocation(line: 441, column: 21, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 439, column: 7)
!1188 = !DILocation(line: 442, column: 9, scope: !1187)
!1189 = !DILocation(line: 445, column: 21, scope: !1187)
!1190 = !DILocation(line: 446, column: 9, scope: !1187)
!1191 = !DILocation(line: 449, column: 14, scope: !1187)
!1192 = !DILocation(line: 450, column: 9, scope: !1187)
!1193 = !DILocation(line: 453, column: 15, scope: !1187)
!1194 = !DILocation(line: 454, column: 9, scope: !1187)
!1195 = !DILocation(line: 457, column: 27, scope: !1187)
!1196 = !DILocation(line: 458, column: 9, scope: !1187)
!1197 = !DILocation(line: 461, column: 27, scope: !1187)
!1198 = !DILocation(line: 462, column: 9, scope: !1187)
!1199 = !DILocation(line: 465, column: 13, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 465, column: 13)
!1201 = !{!1202, !1202, i64 0}
!1202 = !{!"long", !944, i64 0}
!1203 = !DILocation(line: 467, column: 19, scope: !1187)
!1204 = !DILocation(line: 465, column: 25, scope: !1200)
!1205 = !DILocation(line: 465, column: 36, scope: !1200)
!1206 = !DILocation(line: 0, scope: !1027, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 465, column: 29, scope: !1200)
!1208 = !DILocation(line: 1361, column: 11, scope: !1027, inlinedAt: !1207)
!1209 = !DILocation(line: 1361, column: 10, scope: !1027, inlinedAt: !1207)
!1210 = !DILocation(line: 465, column: 13, scope: !1187)
!1211 = !DILocation(line: 466, column: 11, scope: !1200)
!1212 = !DILocation(line: 467, column: 17, scope: !1187)
!1213 = !DILocation(line: 468, column: 23, scope: !1187)
!1214 = !DILocation(line: 468, column: 33, scope: !1187)
!1215 = !DILocation(line: 468, column: 21, scope: !1187)
!1216 = !DILocation(line: 469, column: 9, scope: !1187)
!1217 = !DILocation(line: 472, column: 22, scope: !1187)
!1218 = !DILocation(line: 473, column: 9, scope: !1187)
!1219 = distinct !{!1219, !1184, !1220, !1062}
!1220 = !DILocation(line: 481, column: 7, scope: !1165)
!1221 = !DILocation(line: 475, column: 7, scope: !1187)
!1222 = !DILocation(line: 477, column: 7, scope: !1187)
!1223 = !DILocation(line: 480, column: 9, scope: !1187)
!1224 = !DILocation(line: 483, column: 9, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 483, column: 7)
!1226 = !DILocation(line: 483, column: 7, scope: !1165)
!1227 = !DILocation(line: 484, column: 17, scope: !1225)
!1228 = !DILocation(line: 484, column: 5, scope: !1225)
!1229 = !DILocation(line: 486, column: 14, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 486, column: 7)
!1231 = !DILocation(line: 486, column: 12, scope: !1230)
!1232 = !DILocation(line: 486, column: 21, scope: !1230)
!1233 = !DILocation(line: 486, column: 7, scope: !1165)
!1234 = !DILocation(line: 488, column: 16, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !2, line: 488, column: 11)
!1236 = distinct !DILexicalBlock(scope: !1230, file: !2, line: 487, column: 5)
!1237 = !DILocation(line: 488, column: 11, scope: !1236)
!1238 = !DILocation(line: 489, column: 9, scope: !1235)
!1239 = !DILocation(line: 491, column: 9, scope: !1235)
!1240 = !DILocation(line: 492, column: 7, scope: !1236)
!1241 = !DILocation(line: 495, column: 9, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 495, column: 7)
!1243 = !DILocation(line: 495, column: 7, scope: !1165)
!1244 = !DILocation(line: 497, column: 7, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 496, column: 5)
!1246 = !DILocation(line: 498, column: 7, scope: !1245)
!1247 = !DILocation(line: 501, column: 23, scope: !1165)
!1248 = !DILocation(line: 501, column: 3, scope: !1165)
!1249 = !DISubprogram(name: "bindtextdomain", scope: !997, file: !997, line: 86, type: !1250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!159, !165, !165}
!1252 = !DISubprogram(name: "textdomain", scope: !997, file: !997, line: 82, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1253 = !DISubprogram(name: "atexit", scope: !1139, file: !1139, line: 602, type: !1254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!116, !542}
!1256 = !DISubprogram(name: "getopt_long", scope: !418, file: !418, line: 66, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!116, !116, !1259, !165, !1261, !423}
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!1262 = !DISubprogram(name: "strlen", scope: !1135, file: !1135, line: 407, type: !1263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!164, !165}
!1265 = distinct !DISubprogram(name: "compare_files", scope: !2, file: !2, line: 261, type: !1266, scopeLine: 262, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1268)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !1168}
!1268 = !{!1269, !1270, !1280, !1283, !1285, !1288, !1290, !1295, !1297, !1301, !1303, !1304, !1310, !1312}
!1269 = !DILocalVariable(name: "infiles", arg: 1, scope: !1265, file: !2, line: 261, type: !1168)
!1270 = !DILocalVariable(name: "lba", scope: !1265, file: !2, line: 264, type: !1271)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1272, size: 1536, elements: !677)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !1273, line: 32, size: 192, elements: !1274)
!1273 = !DIFile(filename: "./lib/linebuffer.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a0b4e97fdade8fc6fdf94c5a34c83419")
!1274 = !{!1275, !1278, !1279}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1272, file: !1273, line: 34, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1277, line: 130, baseType: !897)
!1277 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1272, file: !1273, line: 35, baseType: !1276, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1272, file: !1273, line: 36, baseType: !159, size: 64, offset: 128)
!1280 = !DILocalVariable(name: "thisline", scope: !1265, file: !2, line: 268, type: !1281)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1282, size: 128, elements: !304)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1283 = !DILocalVariable(name: "all_line", scope: !1265, file: !2, line: 273, type: !1284)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1282, size: 512, elements: !677)
!1285 = !DILocalVariable(name: "alt", scope: !1265, file: !2, line: 276, type: !1286)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 192, elements: !1287)
!1287 = !{!305, !314}
!1288 = !DILocalVariable(name: "streams", scope: !1265, file: !2, line: 279, type: !1289)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 128, elements: !304)
!1290 = !DILocalVariable(name: "total", scope: !1265, file: !2, line: 282, type: !1291)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1292, size: 192, elements: !313)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1293, line: 102, baseType: !1294)
!1293 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !259, line: 73, baseType: !164)
!1295 = !DILocalVariable(name: "i", scope: !1296, file: !2, line: 285, type: !116)
!1296 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 285, column: 3)
!1297 = !DILocalVariable(name: "j", scope: !1298, file: !2, line: 287, type: !116)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 287, column: 7)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 286, column: 5)
!1300 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 285, column: 3)
!1301 = !DILocalVariable(name: "order", scope: !1302, file: !2, line: 309, type: !116)
!1302 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 308, column: 5)
!1303 = !DILocalVariable(name: "fill_up", scope: !1302, file: !2, line: 310, type: !465)
!1304 = !DILocalVariable(name: "len", scope: !1305, file: !2, line: 325, type: !162)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !2, line: 324, column: 13)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 320, column: 15)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 319, column: 9)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 316, column: 16)
!1309 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 314, column: 11)
!1310 = !DILocalVariable(name: "i", scope: !1311, file: !2, line: 363, type: !116)
!1311 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 363, column: 7)
!1312 = !DILocalVariable(name: "i", scope: !1313, file: !2, line: 391, type: !116)
!1313 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 391, column: 3)
!1314 = distinct !DIAssignID()
!1315 = !DILocation(line: 0, scope: !1265)
!1316 = distinct !DIAssignID()
!1317 = !DILocation(line: 264, column: 3, scope: !1265)
!1318 = !DILocation(line: 273, column: 3, scope: !1265)
!1319 = !DILocation(line: 0, scope: !1296)
!1320 = !DILocation(line: 0, scope: !1298)
!1321 = !DILocation(line: 289, column: 11, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 288, column: 9)
!1323 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 287, column: 7)
!1324 = !DILocation(line: 290, column: 26, scope: !1322)
!1325 = !DILocation(line: 289, column: 24, scope: !1322)
!1326 = !DILocation(line: 290, column: 11, scope: !1322)
!1327 = !DILocation(line: 295, column: 28, scope: !1299)
!1328 = !DILocation(line: 0, scope: !1027, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 295, column: 21, scope: !1299)
!1330 = !DILocation(line: 1361, column: 11, scope: !1027, inlinedAt: !1329)
!1331 = !DILocation(line: 1361, column: 10, scope: !1027, inlinedAt: !1329)
!1332 = !DILocation(line: 295, column: 21, scope: !1299)
!1333 = !DILocation(line: 295, column: 55, scope: !1299)
!1334 = !DILocation(line: 295, column: 47, scope: !1299)
!1335 = !DILocation(line: 296, column: 12, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 296, column: 11)
!1337 = !DILocation(line: 296, column: 11, scope: !1299)
!1338 = !DILocation(line: 299, column: 7, scope: !1299)
!1339 = !DILocation(line: 302, column: 43, scope: !1299)
!1340 = !DILocation(line: 301, column: 21, scope: !1299)
!1341 = !DILocalVariable(name: "__stream", arg: 1, scope: !1342, file: !1343, line: 135, type: !232)
!1342 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1343, file: !1343, line: 135, type: !1344, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1346)
!1343 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!116, !232}
!1346 = !{!1341}
!1347 = !DILocation(line: 0, scope: !1342, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 303, column: 11, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 303, column: 11)
!1350 = !DILocation(line: 137, column: 10, scope: !1342, inlinedAt: !1348)
!1351 = !{!1352, !1016, i64 0}
!1352 = !{!"_IO_FILE", !1016, i64 0, !943, i64 8, !943, i64 16, !943, i64 24, !943, i64 32, !943, i64 40, !943, i64 48, !943, i64 56, !943, i64 64, !943, i64 72, !943, i64 80, !943, i64 88, !943, i64 96, !943, i64 104, !1016, i64 112, !1016, i64 116, !1202, i64 120, !1057, i64 128, !944, i64 130, !944, i64 131, !943, i64 136, !1202, i64 144, !943, i64 152, !943, i64 160, !943, i64 168, !943, i64 176, !1202, i64 184, !1016, i64 192, !944, i64 196}
!1353 = !DILocation(line: 303, column: 11, scope: !1349)
!1354 = !DILocation(line: 303, column: 11, scope: !1299)
!1355 = !DILocation(line: 307, column: 10, scope: !1265)
!1356 = !DILocation(line: 307, column: 22, scope: !1265)
!1357 = !DILocation(line: 307, column: 3, scope: !1265)
!1358 = !DILocation(line: 297, column: 9, scope: !1336)
!1359 = !DILocation(line: 304, column: 9, scope: !1349)
!1360 = !DILocation(line: 282, column: 13, scope: !1265)
!1361 = !DILocation(line: 0, scope: !1313)
!1362 = !DILocation(line: 392, column: 9, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 392, column: 9)
!1364 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 391, column: 3)
!1365 = !DILocation(line: 392, column: 29, scope: !1363)
!1366 = !DILocation(line: 392, column: 9, scope: !1364)
!1367 = !DILocation(line: 293, column: 17, scope: !1299)
!1368 = !DILocation(line: 292, column: 17, scope: !1299)
!1369 = !DILocation(line: 301, column: 19, scope: !1299)
!1370 = !DILocation(line: 0, scope: !1302)
!1371 = !DILocation(line: 314, column: 12, scope: !1309)
!1372 = !DILocation(line: 314, column: 11, scope: !1302)
!1373 = !DILocation(line: 341, column: 27, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !2, line: 340, column: 9)
!1375 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 333, column: 11)
!1376 = !DILocation(line: 342, column: 15, scope: !1374)
!1377 = !DILocation(line: 316, column: 17, scope: !1308)
!1378 = !DILocation(line: 316, column: 16, scope: !1309)
!1379 = !DILocation(line: 320, column: 15, scope: !1306)
!1380 = !{i8 0, i8 2}
!1381 = !DILocation(line: 320, column: 15, scope: !1307)
!1382 = !DILocation(line: 321, column: 44, scope: !1306)
!1383 = !{!1384, !943, i64 16}
!1384 = !{!"linebuffer", !1202, i64 0, !1202, i64 8, !943, i64 16}
!1385 = !DILocation(line: 321, column: 65, scope: !1306)
!1386 = !{!1384, !1202, i64 8}
!1387 = !DILocation(line: 321, column: 72, scope: !1306)
!1388 = !DILocation(line: 322, column: 44, scope: !1306)
!1389 = !DILocation(line: 322, column: 65, scope: !1306)
!1390 = !DILocation(line: 322, column: 72, scope: !1306)
!1391 = !DILocation(line: 321, column: 21, scope: !1306)
!1392 = !DILocation(line: 321, column: 13, scope: !1306)
!1393 = !DILocation(line: 325, column: 28, scope: !1305)
!1394 = !DILocation(line: 325, column: 75, scope: !1305)
!1395 = !DILocation(line: 0, scope: !1305)
!1396 = !DILocation(line: 326, column: 44, scope: !1305)
!1397 = !DILocation(line: 326, column: 65, scope: !1305)
!1398 = !DILocation(line: 326, column: 23, scope: !1305)
!1399 = !DILocation(line: 327, column: 25, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 327, column: 19)
!1401 = !DILocation(line: 327, column: 19, scope: !1305)
!1402 = !DILocation(line: 328, column: 25, scope: !1400)
!1403 = !DILocation(line: 328, column: 17, scope: !1400)
!1404 = !DILocation(line: 0, scope: !1309)
!1405 = !DILocation(line: 333, column: 17, scope: !1375)
!1406 = !DILocation(line: 333, column: 11, scope: !1302)
!1407 = !DILocation(line: 336, column: 19, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1375, file: !2, line: 334, column: 9)
!1409 = !DILocation(line: 337, column: 11, scope: !1408)
!1410 = !DILocation(line: 360, column: 11, scope: !1302)
!1411 = !DILocation(line: 342, column: 21, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1374, file: !2, line: 342, column: 15)
!1413 = !DILocation(line: 345, column: 23, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 343, column: 13)
!1415 = !DILocation(line: 346, column: 15, scope: !1414)
!1416 = !DILocation(line: 351, column: 23, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 349, column: 13)
!1418 = !DILocation(line: 352, column: 15, scope: !1417)
!1419 = !DILocation(line: 0, scope: !1311)
!1420 = !DILocation(line: 364, column: 13, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 363, column: 7)
!1422 = !DILocation(line: 369, column: 36, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 365, column: 11)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !2, line: 364, column: 13)
!1425 = !DILocation(line: 369, column: 41, scope: !1423)
!1426 = !DILocation(line: 371, column: 49, scope: !1423)
!1427 = !DILocation(line: 372, column: 61, scope: !1423)
!1428 = !DILocation(line: 371, column: 27, scope: !1423)
!1429 = !DILocation(line: 374, column: 17, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1423, file: !2, line: 374, column: 17)
!1431 = !DILocation(line: 374, column: 17, scope: !1423)
!1432 = !DILocation(line: 375, column: 28, scope: !1430)
!1433 = !DILocation(line: 375, column: 15, scope: !1430)
!1434 = !DILocation(line: 380, column: 22, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1430, file: !2, line: 380, column: 22)
!1436 = !DILocation(line: 380, column: 46, scope: !1435)
!1437 = !DILocation(line: 380, column: 22, scope: !1430)
!1438 = !DILocation(line: 382, column: 28, scope: !1435)
!1439 = !DILocation(line: 381, column: 15, scope: !1435)
!1440 = !DILocation(line: 0, scope: !1342, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 384, column: 17, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1423, file: !2, line: 384, column: 17)
!1443 = !DILocation(line: 137, column: 10, scope: !1342, inlinedAt: !1441)
!1444 = !DILocation(line: 384, column: 17, scope: !1442)
!1445 = !DILocation(line: 384, column: 17, scope: !1423)
!1446 = !DILocation(line: 385, column: 15, scope: !1442)
!1447 = distinct !{!1447, !1357, !1448, !1062}
!1448 = !DILocation(line: 389, column: 5, scope: !1265)
!1449 = !DILocation(line: 395, column: 7, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 395, column: 7)
!1451 = !DILocation(line: 395, column: 7, scope: !1265)
!1452 = !DILocation(line: 393, column: 7, scope: !1363)
!1453 = !DILocation(line: 398, column: 11, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 398, column: 11)
!1455 = distinct !DILexicalBlock(scope: !1450, file: !2, line: 396, column: 5)
!1456 = !DILocation(line: 398, column: 23, scope: !1454)
!1457 = !DILocation(line: 0, scope: !1454)
!1458 = !DILocation(line: 398, column: 11, scope: !1455)
!1459 = !DILocation(line: 400, column: 11, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 399, column: 9)
!1461 = !DILocation(line: 405, column: 9, scope: !1460)
!1462 = !DILocation(line: 408, column: 11, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 407, column: 9)
!1464 = !DILocation(line: 416, column: 7, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 416, column: 7)
!1466 = !DILocation(line: 416, column: 34, scope: !1465)
!1467 = !DILocation(line: 417, column: 5, scope: !1465)
!1468 = !DILocation(line: 420, column: 3, scope: !1265)
!1469 = !DISubprogram(name: "__errno_location", scope: !1470, file: !1470, line: 37, type: !1471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1470 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!423}
!1473 = !DISubprogram(name: "memcmp", scope: !1135, file: !1135, line: 64, type: !1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!116, !1163, !1163, !162}
!1476 = distinct !DISubprogram(name: "writeline", scope: !2, file: !2, line: 177, type: !1477, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1481)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{null, !1479, !116}
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1272)
!1481 = !{!1482, !1483, !1484, !1488, !1489, !1490, !1493, !1494, !1495, !1498, !1499, !1500, !1502, !1503}
!1482 = !DILocalVariable(name: "line", arg: 1, scope: !1476, file: !2, line: 177, type: !1479)
!1483 = !DILocalVariable(name: "class", arg: 2, scope: !1476, file: !2, line: 177, type: !116)
!1484 = !DILocalVariable(name: "__ptr", scope: !1485, file: !2, line: 190, type: !165)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 190, column: 9)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 189, column: 11)
!1487 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 180, column: 5)
!1488 = !DILocalVariable(name: "__stream", scope: !1485, file: !2, line: 190, type: !232)
!1489 = !DILocalVariable(name: "__cnt", scope: !1485, file: !2, line: 190, type: !162)
!1490 = !DILocalVariable(name: "__ptr", scope: !1491, file: !2, line: 197, type: !165)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 197, column: 9)
!1492 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 196, column: 11)
!1493 = !DILocalVariable(name: "__stream", scope: !1491, file: !2, line: 197, type: !232)
!1494 = !DILocalVariable(name: "__cnt", scope: !1491, file: !2, line: 197, type: !162)
!1495 = !DILocalVariable(name: "__ptr", scope: !1496, file: !2, line: 199, type: !165)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !2, line: 199, column: 9)
!1497 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 198, column: 11)
!1498 = !DILocalVariable(name: "__stream", scope: !1496, file: !2, line: 199, type: !232)
!1499 = !DILocalVariable(name: "__cnt", scope: !1496, file: !2, line: 199, type: !162)
!1500 = !DILocalVariable(name: "__ptr", scope: !1501, file: !2, line: 203, type: !165)
!1501 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 203, column: 3)
!1502 = !DILocalVariable(name: "__stream", scope: !1501, file: !2, line: 203, type: !232)
!1503 = !DILocalVariable(name: "__cnt", scope: !1501, file: !2, line: 203, type: !162)
!1504 = !DILocation(line: 0, scope: !1476)
!1505 = !DILocation(line: 179, column: 3, scope: !1476)
!1506 = !DILocation(line: 182, column: 12, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 182, column: 11)
!1508 = !DILocation(line: 182, column: 11, scope: !1487)
!1509 = !DILocation(line: 187, column: 12, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 187, column: 11)
!1511 = !DILocation(line: 187, column: 11, scope: !1487)
!1512 = !DILocation(line: 189, column: 11, scope: !1486)
!1513 = !DILocation(line: 189, column: 11, scope: !1487)
!1514 = !DILocation(line: 194, column: 12, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 194, column: 11)
!1516 = !DILocation(line: 194, column: 11, scope: !1487)
!1517 = !DILocation(line: 196, column: 11, scope: !1492)
!1518 = !DILocation(line: 196, column: 11, scope: !1487)
!1519 = !DILocation(line: 197, column: 9, scope: !1492)
!1520 = !DILocation(line: 198, column: 11, scope: !1497)
!1521 = !DILocation(line: 198, column: 11, scope: !1487)
!1522 = !DILocation(line: 0, scope: !1487)
!1523 = !DILocation(line: 203, column: 3, scope: !1476)
!1524 = !DILocation(line: 205, column: 7, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 205, column: 7)
!1526 = !DILocation(line: 0, scope: !1342, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 205, column: 7, scope: !1525)
!1528 = !DILocation(line: 137, column: 10, scope: !1342, inlinedAt: !1527)
!1529 = !DILocation(line: 205, column: 7, scope: !1476)
!1530 = !DILocation(line: 948, column: 21, scope: !1531, inlinedAt: !1534)
!1531 = distinct !DISubprogram(name: "write_error", scope: !115, file: !115, line: 946, type: !543, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1532)
!1532 = !{!1533}
!1533 = !DILocalVariable(name: "saved_errno", scope: !1531, file: !115, line: 948, type: !116)
!1534 = distinct !DILocation(line: 206, column: 5, scope: !1525)
!1535 = !DILocation(line: 0, scope: !1531, inlinedAt: !1534)
!1536 = !DILocation(line: 949, column: 3, scope: !1531, inlinedAt: !1534)
!1537 = !DILocation(line: 950, column: 11, scope: !1531, inlinedAt: !1534)
!1538 = !DILocation(line: 950, column: 3, scope: !1531, inlinedAt: !1534)
!1539 = !DILocation(line: 951, column: 3, scope: !1531, inlinedAt: !1534)
!1540 = !DILocation(line: 952, column: 3, scope: !1531, inlinedAt: !1534)
!1541 = !DILocation(line: 207, column: 1, scope: !1476)
!1542 = distinct !DISubprogram(name: "check_order", scope: !2, file: !2, line: 221, type: !1543, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1545)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !1479, !1479, !116}
!1545 = !{!1546, !1547, !1548, !1549, !1554}
!1546 = !DILocalVariable(name: "prev", arg: 1, scope: !1542, file: !2, line: 221, type: !1479)
!1547 = !DILocalVariable(name: "current", arg: 2, scope: !1542, file: !2, line: 222, type: !1479)
!1548 = !DILocalVariable(name: "whatfile", arg: 3, scope: !1542, file: !2, line: 223, type: !116)
!1549 = !DILocalVariable(name: "order", scope: !1550, file: !2, line: 231, type: !116)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 230, column: 9)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 229, column: 11)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 228, column: 5)
!1553 = distinct !DILexicalBlock(scope: !1542, file: !2, line: 226, column: 7)
!1554 = !DILocalVariable(name: "__errstatus", scope: !1555, file: !2, line: 242, type: !1558)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !2, line: 242, column: 15)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 241, column: 13)
!1557 = distinct !DILexicalBlock(scope: !1550, file: !2, line: 240, column: 15)
!1558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!1559 = !DILocation(line: 0, scope: !1542)
!1560 = !DILocation(line: 226, column: 7, scope: !1553)
!1561 = !DILocation(line: 227, column: 7, scope: !1553)
!1562 = !DILocation(line: 227, column: 57, scope: !1553)
!1563 = !DILocation(line: 226, column: 7, scope: !1542)
!1564 = !DILocation(line: 229, column: 45, scope: !1551)
!1565 = !DILocation(line: 229, column: 12, scope: !1551)
!1566 = !DILocation(line: 229, column: 11, scope: !1552)
!1567 = !DILocation(line: 233, column: 15, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1550, file: !2, line: 233, column: 15)
!1569 = !DILocation(line: 0, scope: !1568)
!1570 = !DILocation(line: 233, column: 15, scope: !1550)
!1571 = !DILocation(line: 234, column: 21, scope: !1568)
!1572 = !DILocation(line: 0, scope: !1550)
!1573 = !DILocation(line: 234, column: 13, scope: !1568)
!1574 = !DILocation(line: 237, column: 21, scope: !1568)
!1575 = !DILocation(line: 240, column: 17, scope: !1557)
!1576 = !DILocation(line: 240, column: 15, scope: !1550)
!1577 = !DILocation(line: 242, column: 15, scope: !1556)
!1578 = !DILocation(line: 0, scope: !1555)
!1579 = !DILocation(line: 242, column: 15, scope: !1555)
!1580 = !DILocation(line: 248, column: 53, scope: !1556)
!1581 = !DILocation(line: 249, column: 13, scope: !1556)
!1582 = !DILocation(line: 252, column: 1, scope: !1542)
!1583 = !DISubprogram(name: "fflush_unlocked", scope: !1010, file: !1010, line: 239, type: !1344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1584 = !DISubprogram(name: "clearerr_unlocked", scope: !1010, file: !1010, line: 794, type: !1585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{null, !232}
!1587 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !482, file: !482, line: 50, type: !965, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !1588)
!1588 = !{!1589}
!1589 = !DILocalVariable(name: "file", arg: 1, scope: !1587, file: !482, line: 50, type: !165)
!1590 = !DILocation(line: 0, scope: !1587)
!1591 = !DILocation(line: 52, column: 13, scope: !1587)
!1592 = !DILocation(line: 53, column: 1, scope: !1587)
!1593 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !482, file: !482, line: 87, type: !1594, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !1596)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{null, !205}
!1596 = !{!1597}
!1597 = !DILocalVariable(name: "ignore", arg: 1, scope: !1593, file: !482, line: 87, type: !205)
!1598 = !DILocation(line: 0, scope: !1593)
!1599 = !DILocation(line: 89, column: 16, scope: !1593)
!1600 = !DILocation(line: 90, column: 1, scope: !1593)
!1601 = distinct !DISubprogram(name: "close_stdout", scope: !482, file: !482, line: 116, type: !543, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !1602)
!1602 = !{!1603}
!1603 = !DILocalVariable(name: "write_error", scope: !1604, file: !482, line: 121, type: !165)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !482, line: 120, column: 5)
!1605 = distinct !DILexicalBlock(scope: !1601, file: !482, line: 118, column: 7)
!1606 = !DILocation(line: 118, column: 21, scope: !1605)
!1607 = !DILocation(line: 118, column: 7, scope: !1605)
!1608 = !DILocation(line: 118, column: 29, scope: !1605)
!1609 = !DILocation(line: 119, column: 7, scope: !1605)
!1610 = !DILocation(line: 119, column: 12, scope: !1605)
!1611 = !DILocation(line: 119, column: 25, scope: !1605)
!1612 = !DILocation(line: 119, column: 28, scope: !1605)
!1613 = !DILocation(line: 119, column: 34, scope: !1605)
!1614 = !DILocation(line: 118, column: 7, scope: !1601)
!1615 = !DILocation(line: 121, column: 33, scope: !1604)
!1616 = !DILocation(line: 0, scope: !1604)
!1617 = !DILocation(line: 122, column: 11, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1604, file: !482, line: 122, column: 11)
!1619 = !DILocation(line: 0, scope: !1618)
!1620 = !DILocation(line: 122, column: 11, scope: !1604)
!1621 = !DILocation(line: 123, column: 9, scope: !1618)
!1622 = !DILocation(line: 126, column: 9, scope: !1618)
!1623 = !DILocation(line: 128, column: 14, scope: !1604)
!1624 = !DILocation(line: 128, column: 7, scope: !1604)
!1625 = !DILocation(line: 133, column: 42, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1601, file: !482, line: 133, column: 7)
!1627 = !DILocation(line: 133, column: 28, scope: !1626)
!1628 = !DILocation(line: 133, column: 50, scope: !1626)
!1629 = !DILocation(line: 133, column: 7, scope: !1601)
!1630 = !DILocation(line: 134, column: 12, scope: !1626)
!1631 = !DILocation(line: 134, column: 5, scope: !1626)
!1632 = !DILocation(line: 135, column: 1, scope: !1601)
!1633 = !DISubprogram(name: "_exit", scope: !1634, file: !1634, line: 624, type: !932, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1634 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1635 = distinct !DISubprogram(name: "verror", scope: !497, file: !497, line: 251, type: !1636, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1638)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !116, !116, !165, !507}
!1638 = !{!1639, !1640, !1641, !1642}
!1639 = !DILocalVariable(name: "status", arg: 1, scope: !1635, file: !497, line: 251, type: !116)
!1640 = !DILocalVariable(name: "errnum", arg: 2, scope: !1635, file: !497, line: 251, type: !116)
!1641 = !DILocalVariable(name: "message", arg: 3, scope: !1635, file: !497, line: 251, type: !165)
!1642 = !DILocalVariable(name: "args", arg: 4, scope: !1635, file: !497, line: 251, type: !507)
!1643 = !DILocation(line: 0, scope: !1635)
!1644 = !DILocation(line: 261, column: 3, scope: !1635)
!1645 = !DILocation(line: 265, column: 7, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1635, file: !497, line: 265, column: 7)
!1647 = !DILocation(line: 265, column: 7, scope: !1635)
!1648 = !DILocation(line: 266, column: 5, scope: !1646)
!1649 = !DILocation(line: 272, column: 7, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1646, file: !497, line: 268, column: 5)
!1651 = !DILocation(line: 276, column: 3, scope: !1635)
!1652 = !DILocation(line: 282, column: 1, scope: !1635)
!1653 = distinct !DISubprogram(name: "flush_stdout", scope: !497, file: !497, line: 163, type: !543, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1654)
!1654 = !{!1655}
!1655 = !DILocalVariable(name: "stdout_fd", scope: !1653, file: !497, line: 166, type: !116)
!1656 = !DILocation(line: 0, scope: !1653)
!1657 = !DILocalVariable(name: "fd", arg: 1, scope: !1658, file: !497, line: 145, type: !116)
!1658 = distinct !DISubprogram(name: "is_open", scope: !497, file: !497, line: 145, type: !1659, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1661)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!116, !116}
!1661 = !{!1657}
!1662 = !DILocation(line: 0, scope: !1658, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 182, column: 25, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1653, file: !497, line: 182, column: 7)
!1665 = !DILocation(line: 157, column: 15, scope: !1658, inlinedAt: !1663)
!1666 = !DILocation(line: 157, column: 12, scope: !1658, inlinedAt: !1663)
!1667 = !DILocation(line: 182, column: 7, scope: !1653)
!1668 = !DILocation(line: 184, column: 5, scope: !1664)
!1669 = !DILocation(line: 185, column: 1, scope: !1653)
!1670 = distinct !DISubprogram(name: "error_tail", scope: !497, file: !497, line: 219, type: !1636, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1671)
!1671 = !{!1672, !1673, !1674, !1675}
!1672 = !DILocalVariable(name: "status", arg: 1, scope: !1670, file: !497, line: 219, type: !116)
!1673 = !DILocalVariable(name: "errnum", arg: 2, scope: !1670, file: !497, line: 219, type: !116)
!1674 = !DILocalVariable(name: "message", arg: 3, scope: !1670, file: !497, line: 219, type: !165)
!1675 = !DILocalVariable(name: "args", arg: 4, scope: !1670, file: !497, line: 219, type: !507)
!1676 = distinct !DIAssignID()
!1677 = !DILocation(line: 0, scope: !1670)
!1678 = !DILocation(line: 229, column: 13, scope: !1670)
!1679 = !DILocalVariable(name: "__stream", arg: 1, scope: !1680, file: !1001, line: 132, type: !1683)
!1680 = distinct !DISubprogram(name: "vfprintf", scope: !1001, file: !1001, line: 132, type: !1681, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1718)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!116, !1683, !1005, !507}
!1683 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1684)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1686)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1687)
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1686, file: !236, line: 51, baseType: !116, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1686, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1686, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1686, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1686, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1686, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1686, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1686, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1686, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1686, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1686, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1686, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1686, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1686, file: !236, line: 70, baseType: !1702, size: 64, offset: 832)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1686, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1686, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1686, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1686, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1686, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1686, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1686, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1686, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1686, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1686, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1686, file: !236, line: 93, baseType: !1702, size: 64, offset: 1344)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1686, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1686, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1686, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1686, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!1718 = !{!1679, !1719, !1720}
!1719 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1680, file: !1001, line: 133, type: !1005)
!1720 = !DILocalVariable(name: "__ap", arg: 3, scope: !1680, file: !1001, line: 133, type: !507)
!1721 = !DILocation(line: 0, scope: !1680, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 229, column: 3, scope: !1670)
!1723 = !DILocation(line: 135, column: 10, scope: !1680, inlinedAt: !1722)
!1724 = !DILocation(line: 232, column: 3, scope: !1670)
!1725 = !DILocation(line: 233, column: 7, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1670, file: !497, line: 233, column: 7)
!1727 = !DILocation(line: 233, column: 7, scope: !1670)
!1728 = !DILocalVariable(name: "errbuf", scope: !1729, file: !497, line: 193, type: !1733)
!1729 = distinct !DISubprogram(name: "print_errno_message", scope: !497, file: !497, line: 188, type: !932, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1730)
!1730 = !{!1731, !1732, !1728}
!1731 = !DILocalVariable(name: "errnum", arg: 1, scope: !1729, file: !497, line: 188, type: !116)
!1732 = !DILocalVariable(name: "s", scope: !1729, file: !497, line: 190, type: !165)
!1733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1734)
!1734 = !{!1735}
!1735 = !DISubrange(count: 1024)
!1736 = !DILocation(line: 0, scope: !1729, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 234, column: 5, scope: !1726)
!1738 = !DILocation(line: 193, column: 3, scope: !1729, inlinedAt: !1737)
!1739 = !DILocation(line: 195, column: 7, scope: !1729, inlinedAt: !1737)
!1740 = !DILocation(line: 207, column: 9, scope: !1741, inlinedAt: !1737)
!1741 = distinct !DILexicalBlock(scope: !1729, file: !497, line: 207, column: 7)
!1742 = !DILocation(line: 207, column: 7, scope: !1729, inlinedAt: !1737)
!1743 = !DILocation(line: 208, column: 9, scope: !1741, inlinedAt: !1737)
!1744 = !DILocation(line: 208, column: 5, scope: !1741, inlinedAt: !1737)
!1745 = !DILocation(line: 214, column: 3, scope: !1729, inlinedAt: !1737)
!1746 = !DILocation(line: 216, column: 1, scope: !1729, inlinedAt: !1737)
!1747 = !DILocation(line: 234, column: 5, scope: !1726)
!1748 = !DILocation(line: 238, column: 3, scope: !1670)
!1749 = !DILocalVariable(name: "__c", arg: 1, scope: !1750, file: !1343, line: 101, type: !116)
!1750 = distinct !DISubprogram(name: "putc_unlocked", scope: !1343, file: !1343, line: 101, type: !1751, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1753)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!116, !116, !1684}
!1753 = !{!1749, !1754}
!1754 = !DILocalVariable(name: "__stream", arg: 2, scope: !1750, file: !1343, line: 101, type: !1684)
!1755 = !DILocation(line: 0, scope: !1750, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 238, column: 3, scope: !1670)
!1757 = !DILocation(line: 103, column: 10, scope: !1750, inlinedAt: !1756)
!1758 = !{!1352, !943, i64 40}
!1759 = !{!1352, !943, i64 48}
!1760 = !{!"branch_weights", i32 2000, i32 1}
!1761 = !DILocation(line: 240, column: 3, scope: !1670)
!1762 = !DILocation(line: 241, column: 7, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1670, file: !497, line: 241, column: 7)
!1764 = !DILocation(line: 241, column: 7, scope: !1670)
!1765 = !DILocation(line: 242, column: 5, scope: !1763)
!1766 = !DILocation(line: 243, column: 1, scope: !1670)
!1767 = !DISubprogram(name: "__vfprintf_chk", scope: !1001, file: !1001, line: 96, type: !1768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!116, !1683, !116, !1005, !507}
!1770 = !DISubprogram(name: "strerror_r", scope: !1135, file: !1135, line: 444, type: !1771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!159, !116, !159, !162}
!1773 = !DISubprogram(name: "__overflow", scope: !1010, file: !1010, line: 886, type: !1774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!116, !1684, !116}
!1776 = !DISubprogram(name: "fcntl", scope: !1777, file: !1777, line: 149, type: !1778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1777 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!116, !116, !116, null}
!1780 = distinct !DISubprogram(name: "error", scope: !497, file: !497, line: 285, type: !1781, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1783)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{null, !116, !116, !165, null}
!1783 = !{!1784, !1785, !1786, !1787}
!1784 = !DILocalVariable(name: "status", arg: 1, scope: !1780, file: !497, line: 285, type: !116)
!1785 = !DILocalVariable(name: "errnum", arg: 2, scope: !1780, file: !497, line: 285, type: !116)
!1786 = !DILocalVariable(name: "message", arg: 3, scope: !1780, file: !497, line: 285, type: !165)
!1787 = !DILocalVariable(name: "ap", scope: !1780, file: !497, line: 287, type: !1788)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1010, line: 52, baseType: !1789)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1790, line: 12, baseType: !1791)
!1790 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !497, baseType: !1792)
!1792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 192, elements: !86)
!1793 = distinct !DIAssignID()
!1794 = !DILocation(line: 0, scope: !1780)
!1795 = !DILocation(line: 287, column: 3, scope: !1780)
!1796 = !DILocation(line: 288, column: 3, scope: !1780)
!1797 = !DILocation(line: 289, column: 3, scope: !1780)
!1798 = !DILocation(line: 290, column: 3, scope: !1780)
!1799 = !DILocation(line: 291, column: 1, scope: !1780)
!1800 = !DILocation(line: 0, scope: !504)
!1801 = !DILocation(line: 302, column: 7, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !504, file: !497, line: 302, column: 7)
!1803 = !DILocation(line: 302, column: 7, scope: !504)
!1804 = !DILocation(line: 307, column: 11, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !497, line: 307, column: 11)
!1806 = distinct !DILexicalBlock(scope: !1802, file: !497, line: 303, column: 5)
!1807 = !DILocation(line: 307, column: 27, scope: !1805)
!1808 = !DILocation(line: 308, column: 11, scope: !1805)
!1809 = !DILocation(line: 308, column: 28, scope: !1805)
!1810 = !DILocation(line: 308, column: 25, scope: !1805)
!1811 = !DILocation(line: 309, column: 15, scope: !1805)
!1812 = !DILocation(line: 309, column: 33, scope: !1805)
!1813 = !DILocation(line: 310, column: 19, scope: !1805)
!1814 = !DILocation(line: 311, column: 22, scope: !1805)
!1815 = !DILocation(line: 311, column: 56, scope: !1805)
!1816 = !DILocation(line: 307, column: 11, scope: !1806)
!1817 = !DILocation(line: 316, column: 21, scope: !1806)
!1818 = !DILocation(line: 317, column: 23, scope: !1806)
!1819 = !DILocation(line: 318, column: 5, scope: !1806)
!1820 = !DILocation(line: 327, column: 3, scope: !504)
!1821 = !DILocation(line: 331, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !504, file: !497, line: 331, column: 7)
!1823 = !DILocation(line: 331, column: 7, scope: !504)
!1824 = !DILocation(line: 332, column: 5, scope: !1822)
!1825 = !DILocation(line: 338, column: 7, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1822, file: !497, line: 334, column: 5)
!1827 = !DILocation(line: 346, column: 3, scope: !504)
!1828 = !DILocation(line: 350, column: 3, scope: !504)
!1829 = !DILocation(line: 356, column: 1, scope: !504)
!1830 = distinct !DISubprogram(name: "error_at_line", scope: !497, file: !497, line: 359, type: !1831, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1833)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !116, !116, !165, !103, !165, null}
!1833 = !{!1834, !1835, !1836, !1837, !1838, !1839}
!1834 = !DILocalVariable(name: "status", arg: 1, scope: !1830, file: !497, line: 359, type: !116)
!1835 = !DILocalVariable(name: "errnum", arg: 2, scope: !1830, file: !497, line: 359, type: !116)
!1836 = !DILocalVariable(name: "file_name", arg: 3, scope: !1830, file: !497, line: 359, type: !165)
!1837 = !DILocalVariable(name: "line_number", arg: 4, scope: !1830, file: !497, line: 360, type: !103)
!1838 = !DILocalVariable(name: "message", arg: 5, scope: !1830, file: !497, line: 360, type: !165)
!1839 = !DILocalVariable(name: "ap", scope: !1830, file: !497, line: 362, type: !1788)
!1840 = distinct !DIAssignID()
!1841 = !DILocation(line: 0, scope: !1830)
!1842 = !DILocation(line: 362, column: 3, scope: !1830)
!1843 = !DILocation(line: 363, column: 3, scope: !1830)
!1844 = !DILocation(line: 364, column: 3, scope: !1830)
!1845 = !DILocation(line: 366, column: 3, scope: !1830)
!1846 = !DILocation(line: 367, column: 1, scope: !1830)
!1847 = distinct !DISubprogram(name: "fdadvise", scope: !836, file: !836, line: 25, type: !1848, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !1852)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !116, !1850, !1850, !1851}
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1010, line: 63, baseType: !258)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !839, line: 51, baseType: !838)
!1852 = !{!1853, !1854, !1855, !1856}
!1853 = !DILocalVariable(name: "fd", arg: 1, scope: !1847, file: !836, line: 25, type: !116)
!1854 = !DILocalVariable(name: "offset", arg: 2, scope: !1847, file: !836, line: 25, type: !1850)
!1855 = !DILocalVariable(name: "len", arg: 3, scope: !1847, file: !836, line: 25, type: !1850)
!1856 = !DILocalVariable(name: "advice", arg: 4, scope: !1847, file: !836, line: 25, type: !1851)
!1857 = !DILocation(line: 0, scope: !1847)
!1858 = !DILocation(line: 28, column: 3, scope: !1847)
!1859 = !DILocation(line: 30, column: 1, scope: !1847)
!1860 = !DISubprogram(name: "posix_fadvise", scope: !1777, file: !1777, line: 273, type: !1861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!116, !116, !1850, !1850, !116}
!1863 = distinct !DISubprogram(name: "fadvise", scope: !836, file: !836, line: 33, type: !1864, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !1900)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{null, !1866, !1851}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1868)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1869)
!1869 = !{!1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1868, file: !236, line: 51, baseType: !116, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1868, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1868, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1868, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1868, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1868, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1868, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1868, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1868, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1868, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1868, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1868, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1868, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1868, file: !236, line: 70, baseType: !1884, size: 64, offset: 832)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1868, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1868, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1868, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1868, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1868, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1868, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1868, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1868, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1868, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1868, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1868, file: !236, line: 93, baseType: !1884, size: 64, offset: 1344)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1868, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1868, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1868, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1868, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!1900 = !{!1901, !1902}
!1901 = !DILocalVariable(name: "fp", arg: 1, scope: !1863, file: !836, line: 33, type: !1866)
!1902 = !DILocalVariable(name: "advice", arg: 2, scope: !1863, file: !836, line: 33, type: !1851)
!1903 = !DILocation(line: 0, scope: !1863)
!1904 = !DILocation(line: 35, column: 7, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1863, file: !836, line: 35, column: 7)
!1906 = !DILocation(line: 35, column: 7, scope: !1863)
!1907 = !DILocation(line: 36, column: 15, scope: !1905)
!1908 = !DILocation(line: 0, scope: !1847, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 36, column: 5, scope: !1905)
!1910 = !DILocation(line: 28, column: 3, scope: !1847, inlinedAt: !1909)
!1911 = !DILocation(line: 36, column: 5, scope: !1905)
!1912 = !DILocation(line: 37, column: 1, scope: !1863)
!1913 = !DISubprogram(name: "fileno", scope: !1010, file: !1010, line: 809, type: !1914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!116, !1866}
!1916 = distinct !DISubprogram(name: "rpl_fclose", scope: !841, file: !841, line: 58, type: !1917, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !1953)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!116, !1919}
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1921)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1922)
!1922 = !{!1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1921, file: !236, line: 51, baseType: !116, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1921, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1921, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1921, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1921, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1921, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1921, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1921, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1921, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1921, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1921, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1921, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1921, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1921, file: !236, line: 70, baseType: !1937, size: 64, offset: 832)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1921, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1921, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1921, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1921, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1921, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1921, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1921, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1921, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1921, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1921, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1921, file: !236, line: 93, baseType: !1937, size: 64, offset: 1344)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1921, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1921, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1921, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1921, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!1953 = !{!1954, !1955, !1956, !1957}
!1954 = !DILocalVariable(name: "fp", arg: 1, scope: !1916, file: !841, line: 58, type: !1919)
!1955 = !DILocalVariable(name: "saved_errno", scope: !1916, file: !841, line: 60, type: !116)
!1956 = !DILocalVariable(name: "fd", scope: !1916, file: !841, line: 63, type: !116)
!1957 = !DILocalVariable(name: "result", scope: !1916, file: !841, line: 74, type: !116)
!1958 = !DILocation(line: 0, scope: !1916)
!1959 = !DILocation(line: 63, column: 12, scope: !1916)
!1960 = !DILocation(line: 64, column: 10, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1916, file: !841, line: 64, column: 7)
!1962 = !DILocation(line: 64, column: 7, scope: !1916)
!1963 = !DILocation(line: 65, column: 12, scope: !1961)
!1964 = !DILocation(line: 65, column: 5, scope: !1961)
!1965 = !DILocation(line: 70, column: 9, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1916, file: !841, line: 70, column: 7)
!1967 = !DILocation(line: 70, column: 23, scope: !1966)
!1968 = !DILocation(line: 70, column: 33, scope: !1966)
!1969 = !DILocation(line: 70, column: 26, scope: !1966)
!1970 = !DILocation(line: 70, column: 59, scope: !1966)
!1971 = !DILocation(line: 71, column: 7, scope: !1966)
!1972 = !DILocation(line: 71, column: 10, scope: !1966)
!1973 = !DILocation(line: 70, column: 7, scope: !1916)
!1974 = !DILocation(line: 100, column: 12, scope: !1916)
!1975 = !DILocation(line: 105, column: 7, scope: !1916)
!1976 = !DILocation(line: 72, column: 19, scope: !1966)
!1977 = !DILocation(line: 105, column: 19, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1916, file: !841, line: 105, column: 7)
!1979 = !DILocation(line: 107, column: 13, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1978, file: !841, line: 106, column: 5)
!1981 = !DILocation(line: 109, column: 5, scope: !1980)
!1982 = !DILocation(line: 112, column: 1, scope: !1916)
!1983 = !DISubprogram(name: "fclose", scope: !1010, file: !1010, line: 178, type: !1917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1984 = !DISubprogram(name: "__freading", scope: !1985, file: !1985, line: 51, type: !1917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1985 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!1986 = !DISubprogram(name: "lseek", scope: !1634, file: !1634, line: 339, type: !1987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!258, !116, !258, !116}
!1989 = distinct !DISubprogram(name: "rpl_fflush", scope: !843, file: !843, line: 130, type: !1990, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !2026)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!116, !1992}
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1994)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1995)
!1995 = !{!1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1994, file: !236, line: 51, baseType: !116, size: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1994, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1994, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1994, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1994, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1994, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1994, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1994, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1994, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1994, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1994, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1994, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1994, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1994, file: !236, line: 70, baseType: !2010, size: 64, offset: 832)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1994, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1994, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1994, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1994, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1994, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1994, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1994, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1994, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1994, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1994, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1994, file: !236, line: 93, baseType: !2010, size: 64, offset: 1344)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1994, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1994, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1994, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1994, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2026 = !{!2027}
!2027 = !DILocalVariable(name: "stream", arg: 1, scope: !1989, file: !843, line: 130, type: !1992)
!2028 = !DILocation(line: 0, scope: !1989)
!2029 = !DILocation(line: 151, column: 14, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1989, file: !843, line: 151, column: 7)
!2031 = !DILocation(line: 151, column: 22, scope: !2030)
!2032 = !DILocation(line: 151, column: 27, scope: !2030)
!2033 = !DILocation(line: 151, column: 7, scope: !1989)
!2034 = !DILocation(line: 152, column: 12, scope: !2030)
!2035 = !DILocation(line: 152, column: 5, scope: !2030)
!2036 = !DILocalVariable(name: "fp", arg: 1, scope: !2037, file: !843, line: 42, type: !1992)
!2037 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !843, file: !843, line: 42, type: !2038, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !2040)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{null, !1992}
!2040 = !{!2036}
!2041 = !DILocation(line: 0, scope: !2037, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 157, column: 3, scope: !1989)
!2043 = !DILocation(line: 44, column: 12, scope: !2044, inlinedAt: !2042)
!2044 = distinct !DILexicalBlock(scope: !2037, file: !843, line: 44, column: 7)
!2045 = !DILocation(line: 44, column: 19, scope: !2044, inlinedAt: !2042)
!2046 = !DILocation(line: 44, column: 7, scope: !2037, inlinedAt: !2042)
!2047 = !DILocation(line: 46, column: 5, scope: !2044, inlinedAt: !2042)
!2048 = !DILocation(line: 159, column: 10, scope: !1989)
!2049 = !DILocation(line: 159, column: 3, scope: !1989)
!2050 = !DILocation(line: 236, column: 1, scope: !1989)
!2051 = !DISubprogram(name: "fflush", scope: !1010, file: !1010, line: 230, type: !1990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2052 = distinct !DISubprogram(name: "fopen_safer", scope: !846, file: !846, line: 31, type: !2053, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !845, retainedNodes: !2089)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!2055, !165, !165}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !2057)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !2058)
!2058 = !{!2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2057, file: !236, line: 51, baseType: !116, size: 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2057, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2057, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2057, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2057, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2057, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2057, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2057, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2057, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2057, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2057, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2057, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2057, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2057, file: !236, line: 70, baseType: !2073, size: 64, offset: 832)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2057, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2057, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2057, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2057, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2057, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2057, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2057, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2057, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2057, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2057, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2057, file: !236, line: 93, baseType: !2073, size: 64, offset: 1344)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2057, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2057, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2057, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2057, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2089 = !{!2090, !2091, !2092, !2093, !2096, !2099, !2102}
!2090 = !DILocalVariable(name: "file", arg: 1, scope: !2052, file: !846, line: 31, type: !165)
!2091 = !DILocalVariable(name: "mode", arg: 2, scope: !2052, file: !846, line: 31, type: !165)
!2092 = !DILocalVariable(name: "fp", scope: !2052, file: !846, line: 33, type: !2055)
!2093 = !DILocalVariable(name: "fd", scope: !2094, file: !846, line: 37, type: !116)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !846, line: 36, column: 5)
!2095 = distinct !DILexicalBlock(scope: !2052, file: !846, line: 35, column: 7)
!2096 = !DILocalVariable(name: "f", scope: !2097, file: !846, line: 41, type: !116)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !846, line: 40, column: 9)
!2098 = distinct !DILexicalBlock(scope: !2094, file: !846, line: 39, column: 11)
!2099 = !DILocalVariable(name: "saved_errno", scope: !2100, file: !846, line: 45, type: !116)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !846, line: 44, column: 13)
!2101 = distinct !DILexicalBlock(scope: !2097, file: !846, line: 43, column: 15)
!2102 = !DILocalVariable(name: "saved_errno", scope: !2103, file: !846, line: 54, type: !116)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !846, line: 53, column: 13)
!2104 = distinct !DILexicalBlock(scope: !2097, file: !846, line: 51, column: 15)
!2105 = !DILocation(line: 0, scope: !2052)
!2106 = !DILocation(line: 33, column: 14, scope: !2052)
!2107 = !DILocation(line: 35, column: 7, scope: !2095)
!2108 = !DILocation(line: 35, column: 7, scope: !2052)
!2109 = !DILocation(line: 37, column: 16, scope: !2094)
!2110 = !DILocation(line: 0, scope: !2094)
!2111 = !DILocation(line: 39, column: 19, scope: !2098)
!2112 = !DILocation(line: 41, column: 19, scope: !2097)
!2113 = !DILocation(line: 0, scope: !2097)
!2114 = !DILocation(line: 43, column: 17, scope: !2101)
!2115 = !DILocation(line: 43, column: 15, scope: !2097)
!2116 = !DILocation(line: 45, column: 33, scope: !2100)
!2117 = !DILocation(line: 0, scope: !2100)
!2118 = !DILocation(line: 46, column: 15, scope: !2100)
!2119 = !DILocation(line: 47, column: 21, scope: !2100)
!2120 = !DILocation(line: 51, column: 15, scope: !2104)
!2121 = !DILocation(line: 51, column: 27, scope: !2104)
!2122 = !DILocation(line: 52, column: 15, scope: !2104)
!2123 = !DILocation(line: 52, column: 26, scope: !2104)
!2124 = !DILocation(line: 52, column: 24, scope: !2104)
!2125 = !DILocation(line: 51, column: 15, scope: !2097)
!2126 = !DILocation(line: 54, column: 33, scope: !2103)
!2127 = !DILocation(line: 0, scope: !2103)
!2128 = !DILocation(line: 55, column: 15, scope: !2103)
!2129 = !DILocation(line: 56, column: 21, scope: !2103)
!2130 = !DILocation(line: 63, column: 1, scope: !2052)
!2131 = !DISubprogram(name: "fdopen", scope: !1010, file: !1010, line: 293, type: !2132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!2055, !116, !165}
!2134 = !DISubprogram(name: "close", scope: !1634, file: !1634, line: 358, type: !1659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2135 = distinct !DISubprogram(name: "fpurge", scope: !848, file: !848, line: 32, type: !2136, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !847, retainedNodes: !2172)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!116, !2138}
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !2140)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !2141)
!2141 = !{!2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2140, file: !236, line: 51, baseType: !116, size: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2140, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2140, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2140, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2140, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2140, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2140, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2140, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2140, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2140, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2140, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2140, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2140, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2140, file: !236, line: 70, baseType: !2156, size: 64, offset: 832)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2140, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2140, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2140, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2140, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2140, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2140, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2140, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2140, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2140, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2140, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2140, file: !236, line: 93, baseType: !2156, size: 64, offset: 1344)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2140, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2140, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2140, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2140, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2172 = !{!2173}
!2173 = !DILocalVariable(name: "fp", arg: 1, scope: !2135, file: !848, line: 32, type: !2138)
!2174 = !DILocation(line: 0, scope: !2135)
!2175 = !DILocation(line: 36, column: 3, scope: !2135)
!2176 = !DILocation(line: 38, column: 3, scope: !2135)
!2177 = !DISubprogram(name: "__fpurge", scope: !1985, file: !1985, line: 72, type: !2178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{null, !2138}
!2180 = distinct !DISubprogram(name: "rpl_fseeko", scope: !850, file: !850, line: 28, type: !2181, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !2217)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!116, !2183, !1850, !116}
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !2185)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !2186)
!2186 = !{!2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2185, file: !236, line: 51, baseType: !116, size: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2185, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2185, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2185, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2185, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2185, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2185, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2185, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2185, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2185, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2185, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2185, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2185, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2185, file: !236, line: 70, baseType: !2201, size: 64, offset: 832)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2185, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2185, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2185, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2185, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2185, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2185, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2185, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2185, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2185, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2185, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2185, file: !236, line: 93, baseType: !2201, size: 64, offset: 1344)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2185, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2185, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2185, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2185, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2217 = !{!2218, !2219, !2220, !2221}
!2218 = !DILocalVariable(name: "fp", arg: 1, scope: !2180, file: !850, line: 28, type: !2183)
!2219 = !DILocalVariable(name: "offset", arg: 2, scope: !2180, file: !850, line: 28, type: !1850)
!2220 = !DILocalVariable(name: "whence", arg: 3, scope: !2180, file: !850, line: 28, type: !116)
!2221 = !DILocalVariable(name: "pos", scope: !2222, file: !850, line: 123, type: !1850)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !850, line: 119, column: 5)
!2223 = distinct !DILexicalBlock(scope: !2180, file: !850, line: 55, column: 7)
!2224 = !DILocation(line: 0, scope: !2180)
!2225 = !DILocation(line: 55, column: 12, scope: !2223)
!2226 = !{!1352, !943, i64 16}
!2227 = !DILocation(line: 55, column: 33, scope: !2223)
!2228 = !{!1352, !943, i64 8}
!2229 = !DILocation(line: 55, column: 25, scope: !2223)
!2230 = !DILocation(line: 56, column: 7, scope: !2223)
!2231 = !DILocation(line: 56, column: 15, scope: !2223)
!2232 = !DILocation(line: 56, column: 37, scope: !2223)
!2233 = !{!1352, !943, i64 32}
!2234 = !DILocation(line: 56, column: 29, scope: !2223)
!2235 = !DILocation(line: 57, column: 7, scope: !2223)
!2236 = !DILocation(line: 57, column: 15, scope: !2223)
!2237 = !{!1352, !943, i64 72}
!2238 = !DILocation(line: 57, column: 29, scope: !2223)
!2239 = !DILocation(line: 55, column: 7, scope: !2180)
!2240 = !DILocation(line: 123, column: 26, scope: !2222)
!2241 = !DILocation(line: 123, column: 19, scope: !2222)
!2242 = !DILocation(line: 0, scope: !2222)
!2243 = !DILocation(line: 124, column: 15, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2222, file: !850, line: 124, column: 11)
!2245 = !DILocation(line: 124, column: 11, scope: !2222)
!2246 = !DILocation(line: 135, column: 19, scope: !2222)
!2247 = !DILocation(line: 136, column: 12, scope: !2222)
!2248 = !DILocation(line: 136, column: 20, scope: !2222)
!2249 = !{!1352, !1202, i64 144}
!2250 = !DILocation(line: 167, column: 7, scope: !2222)
!2251 = !DILocation(line: 169, column: 10, scope: !2180)
!2252 = !DILocation(line: 169, column: 3, scope: !2180)
!2253 = !DILocation(line: 170, column: 1, scope: !2180)
!2254 = !DISubprogram(name: "fseeko", scope: !1010, file: !1010, line: 736, type: !2255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!116, !2183, !258, !116}
!2257 = distinct !DISubprogram(name: "getprogname", scope: !852, file: !852, line: 54, type: !2258, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !851)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!165}
!2260 = !DILocation(line: 58, column: 10, scope: !2257)
!2261 = !DILocation(line: 58, column: 3, scope: !2257)
!2262 = distinct !DISubprogram(name: "hard_locale", scope: !547, file: !547, line: 28, type: !2263, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !853, retainedNodes: !2265)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!205, !116}
!2265 = !{!2266, !2267}
!2266 = !DILocalVariable(name: "category", arg: 1, scope: !2262, file: !547, line: 28, type: !116)
!2267 = !DILocalVariable(name: "locale", scope: !2262, file: !547, line: 30, type: !2268)
!2268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !2269)
!2269 = !{!2270}
!2270 = !DISubrange(count: 257)
!2271 = distinct !DIAssignID()
!2272 = !DILocation(line: 0, scope: !2262)
!2273 = !DILocation(line: 30, column: 3, scope: !2262)
!2274 = !DILocation(line: 32, column: 7, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2262, file: !547, line: 32, column: 7)
!2276 = !DILocation(line: 32, column: 7, scope: !2262)
!2277 = !DILocalVariable(name: "__s1", arg: 1, scope: !2278, file: !1028, line: 1359, type: !165)
!2278 = distinct !DISubprogram(name: "streq", scope: !1028, file: !1028, line: 1359, type: !1029, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !853, retainedNodes: !2279)
!2279 = !{!2277, !2280}
!2280 = !DILocalVariable(name: "__s2", arg: 2, scope: !2278, file: !1028, line: 1359, type: !165)
!2281 = !DILocation(line: 0, scope: !2278, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 35, column: 9, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2262, file: !547, line: 35, column: 7)
!2284 = !DILocation(line: 1361, column: 11, scope: !2278, inlinedAt: !2282)
!2285 = !DILocation(line: 35, column: 29, scope: !2283)
!2286 = !DILocation(line: 0, scope: !2278, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 35, column: 32, scope: !2283)
!2288 = !DILocation(line: 1361, column: 11, scope: !2278, inlinedAt: !2287)
!2289 = !DILocation(line: 1361, column: 10, scope: !2278, inlinedAt: !2287)
!2290 = !DILocation(line: 35, column: 7, scope: !2262)
!2291 = !DILocation(line: 46, column: 3, scope: !2262)
!2292 = !DILocation(line: 47, column: 1, scope: !2262)
!2293 = distinct !DISubprogram(name: "initbuffer", scope: !858, file: !858, line: 37, type: !2294, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !2303)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{null, !2296}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !2298, line: 32, size: 192, elements: !2299)
!2298 = !DIFile(filename: "lib/linebuffer.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a0b4e97fdade8fc6fdf94c5a34c83419")
!2299 = !{!2300, !2301, !2302}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2297, file: !2298, line: 34, baseType: !895, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2297, file: !2298, line: 35, baseType: !895, size: 64, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2297, file: !2298, line: 36, baseType: !159, size: 64, offset: 128)
!2303 = !{!2304}
!2304 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2293, file: !858, line: 37, type: !2296)
!2305 = !DILocation(line: 0, scope: !2293)
!2306 = !DILocalVariable(name: "__dest", arg: 1, scope: !2307, file: !2308, line: 57, type: !160)
!2307 = distinct !DISubprogram(name: "memset", scope: !2308, file: !2308, line: 57, type: !2309, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !2311)
!2308 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!160, !160, !116, !162}
!2311 = !{!2306, !2312, !2313}
!2312 = !DILocalVariable(name: "__ch", arg: 2, scope: !2307, file: !2308, line: 57, type: !116)
!2313 = !DILocalVariable(name: "__len", arg: 3, scope: !2307, file: !2308, line: 57, type: !162)
!2314 = !DILocation(line: 0, scope: !2307, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 39, column: 3, scope: !2293)
!2316 = !DILocation(line: 59, column: 10, scope: !2307, inlinedAt: !2315)
!2317 = !DILocation(line: 40, column: 1, scope: !2293)
!2318 = distinct !DISubprogram(name: "readlinebuffer", scope: !858, file: !858, line: 43, type: !2319, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !2355)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!2296, !2296, !2321}
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !2323)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !2324)
!2324 = !{!2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2323, file: !236, line: 51, baseType: !116, size: 32)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2323, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2323, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2323, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2323, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2323, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2323, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2323, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2323, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2323, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2323, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2323, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2323, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2323, file: !236, line: 70, baseType: !2339, size: 64, offset: 832)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2323, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2323, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2323, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2323, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2323, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2323, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2323, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2323, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2323, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2323, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2323, file: !236, line: 93, baseType: !2339, size: 64, offset: 1344)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2323, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2323, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2323, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2323, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2355 = !{!2356, !2357}
!2356 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2318, file: !858, line: 43, type: !2296)
!2357 = !DILocalVariable(name: "stream", arg: 2, scope: !2318, file: !858, line: 43, type: !2321)
!2358 = !DILocation(line: 0, scope: !2318)
!2359 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2360, file: !858, line: 59, type: !2296)
!2360 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !858, file: !858, line: 59, type: !2361, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !2363)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!2296, !2296, !2321, !4}
!2363 = !{!2359, !2364, !2365, !2366, !2367, !2368, !2369, !2370}
!2364 = !DILocalVariable(name: "stream", arg: 2, scope: !2360, file: !858, line: 59, type: !2321)
!2365 = !DILocalVariable(name: "delimiter", arg: 3, scope: !2360, file: !858, line: 60, type: !4)
!2366 = !DILocalVariable(name: "buffer", scope: !2360, file: !858, line: 65, type: !159)
!2367 = !DILocalVariable(name: "p", scope: !2360, file: !858, line: 66, type: !159)
!2368 = !DILocalVariable(name: "end", scope: !2360, file: !858, line: 67, type: !159)
!2369 = !DILocalVariable(name: "c", scope: !2360, file: !858, line: 68, type: !116)
!2370 = !DILocalVariable(name: "oldsize", scope: !2371, file: !858, line: 83, type: !895)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !858, line: 82, column: 9)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !858, line: 81, column: 11)
!2373 = distinct !DILexicalBlock(scope: !2360, file: !858, line: 71, column: 5)
!2374 = !DILocation(line: 0, scope: !2360, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 45, column: 10, scope: !2318)
!2376 = !DILocalVariable(name: "__stream", arg: 1, scope: !2377, file: !1343, line: 128, type: !2321)
!2377 = distinct !DISubprogram(name: "feof_unlocked", scope: !1343, file: !1343, line: 128, type: !2378, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !2380)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!116, !2321}
!2380 = !{!2376}
!2381 = !DILocation(line: 0, scope: !2377, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 62, column: 7, scope: !2383, inlinedAt: !2375)
!2383 = distinct !DILexicalBlock(scope: !2360, file: !858, line: 62, column: 7)
!2384 = !DILocation(line: 130, column: 10, scope: !2377, inlinedAt: !2382)
!2385 = !DILocation(line: 62, column: 7, scope: !2383, inlinedAt: !2375)
!2386 = !DILocation(line: 62, column: 7, scope: !2360, inlinedAt: !2375)
!2387 = !DILocation(line: 65, column: 30, scope: !2360, inlinedAt: !2375)
!2388 = !DILocation(line: 67, column: 36, scope: !2360, inlinedAt: !2375)
!2389 = !{!1384, !1202, i64 0}
!2390 = !DILocation(line: 67, column: 22, scope: !2360, inlinedAt: !2375)
!2391 = !DILocation(line: 70, column: 3, scope: !2360, inlinedAt: !2375)
!2392 = !DILocalVariable(name: "__fp", arg: 1, scope: !2393, file: !1343, line: 66, type: !2321)
!2393 = distinct !DISubprogram(name: "getc_unlocked", scope: !1343, file: !1343, line: 66, type: !2378, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !2394)
!2394 = !{!2392}
!2395 = !DILocation(line: 0, scope: !2393, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 72, column: 11, scope: !2373, inlinedAt: !2375)
!2397 = !DILocation(line: 68, column: 10, scope: !2393, inlinedAt: !2396)
!2398 = !DILocation(line: 73, column: 11, scope: !2373, inlinedAt: !2375)
!2399 = !DILocation(line: 73, column: 13, scope: !2400, inlinedAt: !2375)
!2400 = distinct !DILexicalBlock(scope: !2373, file: !858, line: 73, column: 11)
!2401 = !DILocation(line: 75, column: 17, scope: !2402, inlinedAt: !2375)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !858, line: 75, column: 15)
!2403 = distinct !DILexicalBlock(scope: !2400, file: !858, line: 74, column: 9)
!2404 = !DILocation(line: 75, column: 27, scope: !2402, inlinedAt: !2375)
!2405 = !DILocalVariable(name: "__stream", arg: 1, scope: !2406, file: !1343, line: 135, type: !2321)
!2406 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1343, file: !1343, line: 135, type: !2378, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !2407)
!2407 = !{!2405}
!2408 = !DILocation(line: 0, scope: !2406, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 75, column: 30, scope: !2402, inlinedAt: !2375)
!2410 = !DILocation(line: 137, column: 10, scope: !2406, inlinedAt: !2409)
!2411 = !DILocation(line: 75, column: 30, scope: !2402, inlinedAt: !2375)
!2412 = !DILocation(line: 75, column: 15, scope: !2403, inlinedAt: !2375)
!2413 = !DILocation(line: 77, column: 15, scope: !2414, inlinedAt: !2375)
!2414 = distinct !DILexicalBlock(scope: !2403, file: !858, line: 77, column: 15)
!2415 = !DILocation(line: 77, column: 21, scope: !2414, inlinedAt: !2375)
!2416 = !DILocation(line: 77, column: 15, scope: !2403, inlinedAt: !2375)
!2417 = !DILocation(line: 0, scope: !2373, inlinedAt: !2375)
!2418 = !DILocation(line: 81, column: 13, scope: !2372, inlinedAt: !2375)
!2419 = !DILocation(line: 81, column: 11, scope: !2373, inlinedAt: !2375)
!2420 = !DILocation(line: 83, column: 39, scope: !2371, inlinedAt: !2375)
!2421 = !DILocation(line: 0, scope: !2371, inlinedAt: !2375)
!2422 = !DILocation(line: 84, column: 20, scope: !2371, inlinedAt: !2375)
!2423 = !DILocation(line: 85, column: 22, scope: !2371, inlinedAt: !2375)
!2424 = !DILocation(line: 86, column: 30, scope: !2371, inlinedAt: !2375)
!2425 = !DILocation(line: 87, column: 38, scope: !2371, inlinedAt: !2375)
!2426 = !DILocation(line: 87, column: 24, scope: !2371, inlinedAt: !2375)
!2427 = !DILocation(line: 88, column: 9, scope: !2371, inlinedAt: !2375)
!2428 = !DILocation(line: 89, column: 14, scope: !2373, inlinedAt: !2375)
!2429 = !DILocation(line: 89, column: 9, scope: !2373, inlinedAt: !2375)
!2430 = !DILocation(line: 89, column: 12, scope: !2373, inlinedAt: !2375)
!2431 = !DILocation(line: 91, column: 12, scope: !2360, inlinedAt: !2375)
!2432 = !DILocation(line: 90, column: 5, scope: !2373, inlinedAt: !2375)
!2433 = distinct !{!2433, !2391, !2434, !1062}
!2434 = !DILocation(line: 91, column: 24, scope: !2360, inlinedAt: !2375)
!2435 = !DILocation(line: 93, column: 26, scope: !2360, inlinedAt: !2375)
!2436 = !DILocation(line: 93, column: 15, scope: !2360, inlinedAt: !2375)
!2437 = !DILocation(line: 93, column: 22, scope: !2360, inlinedAt: !2375)
!2438 = !DILocation(line: 94, column: 3, scope: !2360, inlinedAt: !2375)
!2439 = !DILocation(line: 45, column: 3, scope: !2318)
!2440 = !DISubprogram(name: "__uflow", scope: !1010, file: !1010, line: 885, type: !2378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2441 = !DILocation(line: 0, scope: !2360)
!2442 = !DILocation(line: 0, scope: !2377, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 62, column: 7, scope: !2383)
!2444 = !DILocation(line: 130, column: 10, scope: !2377, inlinedAt: !2443)
!2445 = !DILocation(line: 62, column: 7, scope: !2383)
!2446 = !DILocation(line: 62, column: 7, scope: !2360)
!2447 = !DILocation(line: 65, column: 30, scope: !2360)
!2448 = !DILocation(line: 67, column: 36, scope: !2360)
!2449 = !DILocation(line: 67, column: 22, scope: !2360)
!2450 = !DILocation(line: 70, column: 3, scope: !2360)
!2451 = !DILocation(line: 0, scope: !2393, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 72, column: 11, scope: !2373)
!2453 = !DILocation(line: 68, column: 10, scope: !2393, inlinedAt: !2452)
!2454 = !DILocation(line: 73, column: 11, scope: !2373)
!2455 = !DILocation(line: 73, column: 13, scope: !2400)
!2456 = !DILocation(line: 75, column: 17, scope: !2402)
!2457 = !DILocation(line: 75, column: 27, scope: !2402)
!2458 = !DILocation(line: 0, scope: !2406, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 75, column: 30, scope: !2402)
!2460 = !DILocation(line: 137, column: 10, scope: !2406, inlinedAt: !2459)
!2461 = !DILocation(line: 75, column: 30, scope: !2402)
!2462 = !DILocation(line: 75, column: 15, scope: !2403)
!2463 = !DILocation(line: 77, column: 15, scope: !2414)
!2464 = !DILocation(line: 77, column: 21, scope: !2414)
!2465 = !DILocation(line: 77, column: 15, scope: !2403)
!2466 = !DILocation(line: 0, scope: !2373)
!2467 = !DILocation(line: 81, column: 13, scope: !2372)
!2468 = !DILocation(line: 81, column: 11, scope: !2373)
!2469 = !DILocation(line: 83, column: 39, scope: !2371)
!2470 = !DILocation(line: 0, scope: !2371)
!2471 = !DILocation(line: 84, column: 20, scope: !2371)
!2472 = !DILocation(line: 85, column: 22, scope: !2371)
!2473 = !DILocation(line: 86, column: 30, scope: !2371)
!2474 = !DILocation(line: 87, column: 38, scope: !2371)
!2475 = !DILocation(line: 87, column: 24, scope: !2371)
!2476 = !DILocation(line: 88, column: 9, scope: !2371)
!2477 = !DILocation(line: 89, column: 14, scope: !2373)
!2478 = !DILocation(line: 89, column: 9, scope: !2373)
!2479 = !DILocation(line: 89, column: 12, scope: !2373)
!2480 = !DILocation(line: 91, column: 12, scope: !2360)
!2481 = !DILocation(line: 90, column: 5, scope: !2373)
!2482 = distinct !{!2482, !2450, !2483, !1062}
!2483 = !DILocation(line: 91, column: 24, scope: !2360)
!2484 = !DILocation(line: 93, column: 26, scope: !2360)
!2485 = !DILocation(line: 93, column: 15, scope: !2360)
!2486 = !DILocation(line: 93, column: 22, scope: !2360)
!2487 = !DILocation(line: 94, column: 3, scope: !2360)
!2488 = !DILocation(line: 95, column: 1, scope: !2360)
!2489 = distinct !DISubprogram(name: "freebuffer", scope: !858, file: !858, line: 100, type: !2294, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !857, retainedNodes: !2490)
!2490 = !{!2491}
!2491 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2489, file: !858, line: 100, type: !2296)
!2492 = !DILocation(line: 0, scope: !2489)
!2493 = !DILocation(line: 102, column: 21, scope: !2489)
!2494 = !DILocation(line: 102, column: 3, scope: !2489)
!2495 = !DILocation(line: 103, column: 1, scope: !2489)
!2496 = !DISubprogram(name: "free", scope: !1028, file: !1028, line: 752, type: !2497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{null, !160}
!2499 = distinct !DISubprogram(name: "memcmp2", scope: !862, file: !862, line: 25, type: !2500, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !2502)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!116, !165, !162, !165, !162}
!2502 = !{!2503, !2504, !2505, !2506, !2507}
!2503 = !DILocalVariable(name: "s1", arg: 1, scope: !2499, file: !862, line: 25, type: !165)
!2504 = !DILocalVariable(name: "n1", arg: 2, scope: !2499, file: !862, line: 25, type: !162)
!2505 = !DILocalVariable(name: "s2", arg: 3, scope: !2499, file: !862, line: 25, type: !165)
!2506 = !DILocalVariable(name: "n2", arg: 4, scope: !2499, file: !862, line: 25, type: !162)
!2507 = !DILocalVariable(name: "cmp", scope: !2499, file: !862, line: 27, type: !116)
!2508 = !DILocation(line: 0, scope: !2499)
!2509 = !DILocation(line: 27, column: 29, scope: !2499)
!2510 = !DILocation(line: 27, column: 13, scope: !2499)
!2511 = !DILocation(line: 28, column: 11, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2499, file: !862, line: 28, column: 7)
!2513 = !DILocation(line: 28, column: 7, scope: !2499)
!2514 = !DILocation(line: 29, column: 11, scope: !2512)
!2515 = !DILocation(line: 29, column: 5, scope: !2512)
!2516 = !DILocation(line: 30, column: 3, scope: !2499)
!2517 = distinct !DISubprogram(name: "set_program_name", scope: !551, file: !551, line: 37, type: !965, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2518)
!2518 = !{!2519, !2520, !2521}
!2519 = !DILocalVariable(name: "argv0", arg: 1, scope: !2517, file: !551, line: 37, type: !165)
!2520 = !DILocalVariable(name: "slash", scope: !2517, file: !551, line: 44, type: !165)
!2521 = !DILocalVariable(name: "base", scope: !2517, file: !551, line: 45, type: !165)
!2522 = !DILocation(line: 0, scope: !2517)
!2523 = !DILocation(line: 44, column: 23, scope: !2517)
!2524 = !DILocation(line: 45, column: 22, scope: !2517)
!2525 = !DILocation(line: 46, column: 17, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2517, file: !551, line: 46, column: 7)
!2527 = !DILocation(line: 46, column: 9, scope: !2526)
!2528 = !DILocation(line: 46, column: 25, scope: !2526)
!2529 = !DILocation(line: 46, column: 40, scope: !2526)
!2530 = !DILocalVariable(name: "__s1", arg: 1, scope: !2531, file: !1028, line: 974, type: !1163)
!2531 = distinct !DISubprogram(name: "memeq", scope: !1028, file: !1028, line: 974, type: !2532, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !2534)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!205, !1163, !1163, !162}
!2534 = !{!2530, !2535, !2536}
!2535 = !DILocalVariable(name: "__s2", arg: 2, scope: !2531, file: !1028, line: 974, type: !1163)
!2536 = !DILocalVariable(name: "__n", arg: 3, scope: !2531, file: !1028, line: 974, type: !162)
!2537 = !DILocation(line: 0, scope: !2531, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 46, column: 28, scope: !2526)
!2539 = !DILocation(line: 976, column: 11, scope: !2531, inlinedAt: !2538)
!2540 = !DILocation(line: 976, column: 10, scope: !2531, inlinedAt: !2538)
!2541 = !DILocation(line: 46, column: 7, scope: !2517)
!2542 = !DILocation(line: 49, column: 11, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !551, line: 49, column: 11)
!2544 = distinct !DILexicalBlock(scope: !2526, file: !551, line: 47, column: 5)
!2545 = !DILocation(line: 49, column: 36, scope: !2543)
!2546 = !DILocation(line: 49, column: 11, scope: !2544)
!2547 = !DILocation(line: 65, column: 16, scope: !2517)
!2548 = !DILocation(line: 71, column: 27, scope: !2517)
!2549 = !DILocation(line: 74, column: 33, scope: !2517)
!2550 = !DILocation(line: 76, column: 1, scope: !2517)
!2551 = !DISubprogram(name: "strrchr", scope: !1135, file: !1135, line: 273, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2552 = distinct !DIAssignID()
!2553 = !DILocation(line: 0, scope: !560)
!2554 = distinct !DIAssignID()
!2555 = !DILocation(line: 40, column: 29, scope: !560)
!2556 = !DILocation(line: 41, column: 19, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !560, file: !561, line: 41, column: 7)
!2558 = !DILocation(line: 41, column: 7, scope: !560)
!2559 = !DILocation(line: 47, column: 3, scope: !560)
!2560 = !DILocation(line: 48, column: 3, scope: !560)
!2561 = !DILocalVariable(name: "ps", arg: 1, scope: !2562, file: !2563, line: 1135, type: !2566)
!2562 = distinct !DISubprogram(name: "mbszero", scope: !2563, file: !2563, line: 1135, type: !2564, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2567)
!2563 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2564 = !DISubroutineType(types: !2565)
!2565 = !{null, !2566}
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!2567 = !{!2561}
!2568 = !DILocation(line: 0, scope: !2562, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 48, column: 18, scope: !560)
!2570 = !DILocalVariable(name: "__dest", arg: 1, scope: !2571, file: !2308, line: 57, type: !160)
!2571 = distinct !DISubprogram(name: "memset", scope: !2308, file: !2308, line: 57, type: !2309, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2572)
!2572 = !{!2570, !2573, !2574}
!2573 = !DILocalVariable(name: "__ch", arg: 2, scope: !2571, file: !2308, line: 57, type: !116)
!2574 = !DILocalVariable(name: "__len", arg: 3, scope: !2571, file: !2308, line: 57, type: !162)
!2575 = !DILocation(line: 0, scope: !2571, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 1137, column: 3, scope: !2562, inlinedAt: !2569)
!2577 = !DILocation(line: 59, column: 10, scope: !2571, inlinedAt: !2576)
!2578 = !DILocation(line: 49, column: 7, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !560, file: !561, line: 49, column: 7)
!2580 = !DILocation(line: 49, column: 39, scope: !2579)
!2581 = !DILocation(line: 49, column: 44, scope: !2579)
!2582 = !DILocation(line: 54, column: 1, scope: !560)
!2583 = !DISubprogram(name: "mbrtoc32", scope: !572, file: !572, line: 57, type: !2584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!162, !2586, !1005, !162, !2588}
!2586 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2587)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2566)
!2589 = distinct !DISubprogram(name: "clone_quoting_options", scope: !591, file: !591, line: 113, type: !2590, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2593)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!2592, !2592}
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!2593 = !{!2594, !2595, !2596}
!2594 = !DILocalVariable(name: "o", arg: 1, scope: !2589, file: !591, line: 113, type: !2592)
!2595 = !DILocalVariable(name: "saved_errno", scope: !2589, file: !591, line: 115, type: !116)
!2596 = !DILocalVariable(name: "p", scope: !2589, file: !591, line: 116, type: !2592)
!2597 = !DILocation(line: 0, scope: !2589)
!2598 = !DILocation(line: 115, column: 21, scope: !2589)
!2599 = !DILocation(line: 116, column: 40, scope: !2589)
!2600 = !DILocation(line: 116, column: 31, scope: !2589)
!2601 = !DILocation(line: 118, column: 9, scope: !2589)
!2602 = !DILocation(line: 119, column: 3, scope: !2589)
!2603 = distinct !DISubprogram(name: "get_quoting_style", scope: !591, file: !591, line: 124, type: !2604, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2608)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!617, !2606}
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!2608 = !{!2609}
!2609 = !DILocalVariable(name: "o", arg: 1, scope: !2603, file: !591, line: 124, type: !2606)
!2610 = !DILocation(line: 0, scope: !2603)
!2611 = !DILocation(line: 126, column: 11, scope: !2603)
!2612 = !DILocation(line: 126, column: 46, scope: !2603)
!2613 = !{!2614, !1016, i64 0}
!2614 = !{!"quoting_options", !1016, i64 0, !1016, i64 4, !944, i64 8, !943, i64 40, !943, i64 48}
!2615 = !DILocation(line: 126, column: 3, scope: !2603)
!2616 = distinct !DISubprogram(name: "set_quoting_style", scope: !591, file: !591, line: 132, type: !2617, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2619)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{null, !2592, !617}
!2619 = !{!2620, !2621}
!2620 = !DILocalVariable(name: "o", arg: 1, scope: !2616, file: !591, line: 132, type: !2592)
!2621 = !DILocalVariable(name: "s", arg: 2, scope: !2616, file: !591, line: 132, type: !617)
!2622 = !DILocation(line: 0, scope: !2616)
!2623 = !DILocation(line: 134, column: 4, scope: !2616)
!2624 = !DILocation(line: 134, column: 45, scope: !2616)
!2625 = !DILocation(line: 135, column: 1, scope: !2616)
!2626 = distinct !DISubprogram(name: "set_char_quoting", scope: !591, file: !591, line: 143, type: !2627, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2629)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!116, !2592, !4, !116}
!2629 = !{!2630, !2631, !2632, !2633, !2634, !2636, !2637}
!2630 = !DILocalVariable(name: "o", arg: 1, scope: !2626, file: !591, line: 143, type: !2592)
!2631 = !DILocalVariable(name: "c", arg: 2, scope: !2626, file: !591, line: 143, type: !4)
!2632 = !DILocalVariable(name: "i", arg: 3, scope: !2626, file: !591, line: 143, type: !116)
!2633 = !DILocalVariable(name: "uc", scope: !2626, file: !591, line: 145, type: !167)
!2634 = !DILocalVariable(name: "p", scope: !2626, file: !591, line: 146, type: !2635)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!2636 = !DILocalVariable(name: "shift", scope: !2626, file: !591, line: 148, type: !116)
!2637 = !DILocalVariable(name: "r", scope: !2626, file: !591, line: 149, type: !103)
!2638 = !DILocation(line: 0, scope: !2626)
!2639 = !DILocation(line: 147, column: 6, scope: !2626)
!2640 = !DILocation(line: 147, column: 41, scope: !2626)
!2641 = !DILocation(line: 147, column: 62, scope: !2626)
!2642 = !DILocation(line: 147, column: 57, scope: !2626)
!2643 = !DILocation(line: 148, column: 15, scope: !2626)
!2644 = !DILocation(line: 149, column: 21, scope: !2626)
!2645 = !DILocation(line: 149, column: 24, scope: !2626)
!2646 = !DILocation(line: 149, column: 34, scope: !2626)
!2647 = !DILocation(line: 150, column: 19, scope: !2626)
!2648 = !DILocation(line: 150, column: 24, scope: !2626)
!2649 = !DILocation(line: 150, column: 6, scope: !2626)
!2650 = !DILocation(line: 151, column: 3, scope: !2626)
!2651 = distinct !DISubprogram(name: "set_quoting_flags", scope: !591, file: !591, line: 159, type: !2652, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2654)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!116, !2592, !116}
!2654 = !{!2655, !2656, !2657}
!2655 = !DILocalVariable(name: "o", arg: 1, scope: !2651, file: !591, line: 159, type: !2592)
!2656 = !DILocalVariable(name: "i", arg: 2, scope: !2651, file: !591, line: 159, type: !116)
!2657 = !DILocalVariable(name: "r", scope: !2651, file: !591, line: 163, type: !116)
!2658 = !DILocation(line: 0, scope: !2651)
!2659 = !DILocation(line: 161, column: 8, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2651, file: !591, line: 161, column: 7)
!2661 = !DILocation(line: 161, column: 7, scope: !2651)
!2662 = !DILocation(line: 163, column: 14, scope: !2651)
!2663 = !{!2614, !1016, i64 4}
!2664 = !DILocation(line: 164, column: 12, scope: !2651)
!2665 = !DILocation(line: 165, column: 3, scope: !2651)
!2666 = distinct !DISubprogram(name: "set_custom_quoting", scope: !591, file: !591, line: 169, type: !2667, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{null, !2592, !165, !165}
!2669 = !{!2670, !2671, !2672}
!2670 = !DILocalVariable(name: "o", arg: 1, scope: !2666, file: !591, line: 169, type: !2592)
!2671 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2666, file: !591, line: 170, type: !165)
!2672 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2666, file: !591, line: 170, type: !165)
!2673 = !DILocation(line: 0, scope: !2666)
!2674 = !DILocation(line: 172, column: 8, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2666, file: !591, line: 172, column: 7)
!2676 = !DILocation(line: 172, column: 7, scope: !2666)
!2677 = !DILocation(line: 174, column: 12, scope: !2666)
!2678 = !DILocation(line: 175, column: 8, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2666, file: !591, line: 175, column: 7)
!2680 = !DILocation(line: 175, column: 19, scope: !2679)
!2681 = !DILocation(line: 176, column: 5, scope: !2679)
!2682 = !DILocation(line: 177, column: 6, scope: !2666)
!2683 = !DILocation(line: 177, column: 17, scope: !2666)
!2684 = !{!2614, !943, i64 40}
!2685 = !DILocation(line: 178, column: 6, scope: !2666)
!2686 = !DILocation(line: 178, column: 18, scope: !2666)
!2687 = !{!2614, !943, i64 48}
!2688 = !DILocation(line: 179, column: 1, scope: !2666)
!2689 = !DISubprogram(name: "abort", scope: !1139, file: !1139, line: 598, type: !543, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2690 = distinct !DISubprogram(name: "quotearg_buffer", scope: !591, file: !591, line: 774, type: !2691, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2693)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!162, !159, !162, !165, !162, !2606}
!2693 = !{!2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701}
!2694 = !DILocalVariable(name: "buffer", arg: 1, scope: !2690, file: !591, line: 774, type: !159)
!2695 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2690, file: !591, line: 774, type: !162)
!2696 = !DILocalVariable(name: "arg", arg: 3, scope: !2690, file: !591, line: 775, type: !165)
!2697 = !DILocalVariable(name: "argsize", arg: 4, scope: !2690, file: !591, line: 775, type: !162)
!2698 = !DILocalVariable(name: "o", arg: 5, scope: !2690, file: !591, line: 776, type: !2606)
!2699 = !DILocalVariable(name: "p", scope: !2690, file: !591, line: 778, type: !2606)
!2700 = !DILocalVariable(name: "saved_errno", scope: !2690, file: !591, line: 779, type: !116)
!2701 = !DILocalVariable(name: "r", scope: !2690, file: !591, line: 780, type: !162)
!2702 = !DILocation(line: 0, scope: !2690)
!2703 = !DILocation(line: 778, column: 37, scope: !2690)
!2704 = !DILocation(line: 779, column: 21, scope: !2690)
!2705 = !DILocation(line: 781, column: 43, scope: !2690)
!2706 = !DILocation(line: 781, column: 53, scope: !2690)
!2707 = !DILocation(line: 781, column: 63, scope: !2690)
!2708 = !DILocation(line: 782, column: 43, scope: !2690)
!2709 = !DILocation(line: 782, column: 58, scope: !2690)
!2710 = !DILocation(line: 780, column: 14, scope: !2690)
!2711 = !DILocation(line: 783, column: 9, scope: !2690)
!2712 = !DILocation(line: 784, column: 3, scope: !2690)
!2713 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !591, file: !591, line: 251, type: !2714, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2718)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!162, !159, !162, !165, !162, !617, !116, !2716, !165, !165}
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2744, !2746, !2749, !2750, !2751, !2752, !2755, !2756, !2758, !2759, !2762, !2766, !2767, !2775, !2778, !2779, !2780}
!2719 = !DILocalVariable(name: "buffer", arg: 1, scope: !2713, file: !591, line: 251, type: !159)
!2720 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2713, file: !591, line: 251, type: !162)
!2721 = !DILocalVariable(name: "arg", arg: 3, scope: !2713, file: !591, line: 252, type: !165)
!2722 = !DILocalVariable(name: "argsize", arg: 4, scope: !2713, file: !591, line: 252, type: !162)
!2723 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2713, file: !591, line: 253, type: !617)
!2724 = !DILocalVariable(name: "flags", arg: 6, scope: !2713, file: !591, line: 253, type: !116)
!2725 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2713, file: !591, line: 254, type: !2716)
!2726 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2713, file: !591, line: 255, type: !165)
!2727 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2713, file: !591, line: 256, type: !165)
!2728 = !DILocalVariable(name: "unibyte_locale", scope: !2713, file: !591, line: 258, type: !205)
!2729 = !DILocalVariable(name: "len", scope: !2713, file: !591, line: 260, type: !162)
!2730 = !DILocalVariable(name: "orig_buffersize", scope: !2713, file: !591, line: 261, type: !162)
!2731 = !DILocalVariable(name: "quote_string", scope: !2713, file: !591, line: 262, type: !165)
!2732 = !DILocalVariable(name: "quote_string_len", scope: !2713, file: !591, line: 263, type: !162)
!2733 = !DILocalVariable(name: "backslash_escapes", scope: !2713, file: !591, line: 264, type: !205)
!2734 = !DILocalVariable(name: "elide_outer_quotes", scope: !2713, file: !591, line: 265, type: !205)
!2735 = !DILocalVariable(name: "encountered_single_quote", scope: !2713, file: !591, line: 266, type: !205)
!2736 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2713, file: !591, line: 267, type: !205)
!2737 = !DILabel(scope: !2713, name: "process_input", file: !591, line: 308)
!2738 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2713, file: !591, line: 309, type: !205)
!2739 = !DILocalVariable(name: "lq", scope: !2740, file: !591, line: 361, type: !165)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !591, line: 361, column: 11)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !591, line: 360, column: 13)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !591, line: 333, column: 7)
!2743 = distinct !DILexicalBlock(scope: !2713, file: !591, line: 312, column: 5)
!2744 = !DILocalVariable(name: "i", scope: !2745, file: !591, line: 395, type: !162)
!2745 = distinct !DILexicalBlock(scope: !2713, file: !591, line: 395, column: 3)
!2746 = !DILocalVariable(name: "is_right_quote", scope: !2747, file: !591, line: 397, type: !205)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !591, line: 396, column: 5)
!2748 = distinct !DILexicalBlock(scope: !2745, file: !591, line: 395, column: 3)
!2749 = !DILocalVariable(name: "escaping", scope: !2747, file: !591, line: 398, type: !205)
!2750 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2747, file: !591, line: 399, type: !205)
!2751 = !DILocalVariable(name: "c", scope: !2747, file: !591, line: 417, type: !167)
!2752 = !DILabel(scope: !2753, name: "c_and_shell_escape", file: !591, line: 502)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !591, line: 478, column: 9)
!2754 = distinct !DILexicalBlock(scope: !2747, file: !591, line: 419, column: 9)
!2755 = !DILabel(scope: !2753, name: "c_escape", file: !591, line: 507)
!2756 = !DILocalVariable(name: "m", scope: !2757, file: !591, line: 598, type: !162)
!2757 = distinct !DILexicalBlock(scope: !2754, file: !591, line: 596, column: 11)
!2758 = !DILocalVariable(name: "printable", scope: !2757, file: !591, line: 600, type: !205)
!2759 = !DILocalVariable(name: "mbs", scope: !2760, file: !591, line: 609, type: !666)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !591, line: 608, column: 15)
!2761 = distinct !DILexicalBlock(scope: !2757, file: !591, line: 602, column: 17)
!2762 = !DILocalVariable(name: "w", scope: !2763, file: !591, line: 618, type: !571)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !591, line: 617, column: 19)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !591, line: 616, column: 17)
!2765 = distinct !DILexicalBlock(scope: !2760, file: !591, line: 616, column: 17)
!2766 = !DILocalVariable(name: "bytes", scope: !2763, file: !591, line: 619, type: !162)
!2767 = !DILocalVariable(name: "j", scope: !2768, file: !591, line: 648, type: !162)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !591, line: 648, column: 29)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !591, line: 647, column: 27)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !591, line: 645, column: 29)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !591, line: 636, column: 23)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !591, line: 628, column: 30)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !591, line: 623, column: 30)
!2774 = distinct !DILexicalBlock(scope: !2763, file: !591, line: 621, column: 25)
!2775 = !DILocalVariable(name: "ilim", scope: !2776, file: !591, line: 674, type: !162)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !591, line: 671, column: 15)
!2777 = distinct !DILexicalBlock(scope: !2757, file: !591, line: 670, column: 17)
!2778 = !DILabel(scope: !2747, name: "store_escape", file: !591, line: 709)
!2779 = !DILabel(scope: !2747, name: "store_c", file: !591, line: 712)
!2780 = !DILabel(scope: !2713, name: "force_outer_quoting_style", file: !591, line: 753)
!2781 = distinct !DIAssignID()
!2782 = distinct !DIAssignID()
!2783 = distinct !DIAssignID()
!2784 = distinct !DIAssignID()
!2785 = distinct !DIAssignID()
!2786 = !DILocation(line: 0, scope: !2760)
!2787 = distinct !DIAssignID()
!2788 = !DILocation(line: 0, scope: !2763)
!2789 = !DILocation(line: 0, scope: !2713)
!2790 = !DILocation(line: 258, column: 25, scope: !2713)
!2791 = !DILocation(line: 258, column: 36, scope: !2713)
!2792 = !DILocation(line: 265, column: 8, scope: !2713)
!2793 = !DILocation(line: 267, column: 3, scope: !2713)
!2794 = !DILocation(line: 261, column: 10, scope: !2713)
!2795 = !DILocation(line: 262, column: 15, scope: !2713)
!2796 = !DILocation(line: 263, column: 10, scope: !2713)
!2797 = !DILocation(line: 264, column: 8, scope: !2713)
!2798 = !DILocation(line: 266, column: 8, scope: !2713)
!2799 = !DILocation(line: 267, column: 8, scope: !2713)
!2800 = !DILocation(line: 308, column: 2, scope: !2713)
!2801 = !DILocation(line: 311, column: 3, scope: !2713)
!2802 = !DILocation(line: 318, column: 11, scope: !2743)
!2803 = !DILocation(line: 318, column: 12, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2743, file: !591, line: 318, column: 11)
!2805 = !DILocation(line: 319, column: 9, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !591, line: 319, column: 9)
!2807 = distinct !DILexicalBlock(scope: !2804, file: !591, line: 319, column: 9)
!2808 = !DILocation(line: 319, column: 9, scope: !2807)
!2809 = !DILocation(line: 0, scope: !657, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 357, column: 26, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !591, line: 335, column: 11)
!2812 = distinct !DILexicalBlock(scope: !2742, file: !591, line: 334, column: 13)
!2813 = !DILocation(line: 199, column: 29, scope: !657, inlinedAt: !2810)
!2814 = !DILocation(line: 201, column: 19, scope: !2815, inlinedAt: !2810)
!2815 = distinct !DILexicalBlock(scope: !657, file: !591, line: 201, column: 7)
!2816 = !DILocation(line: 201, column: 7, scope: !657, inlinedAt: !2810)
!2817 = !DILocation(line: 229, column: 3, scope: !657, inlinedAt: !2810)
!2818 = !DILocation(line: 230, column: 3, scope: !657, inlinedAt: !2810)
!2819 = !DILocalVariable(name: "ps", arg: 1, scope: !2820, file: !2563, line: 1135, type: !2823)
!2820 = distinct !DISubprogram(name: "mbszero", scope: !2563, file: !2563, line: 1135, type: !2821, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2824)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{null, !2823}
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!2824 = !{!2819}
!2825 = !DILocation(line: 0, scope: !2820, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 230, column: 18, scope: !657, inlinedAt: !2810)
!2827 = !DILocalVariable(name: "__dest", arg: 1, scope: !2828, file: !2308, line: 57, type: !160)
!2828 = distinct !DISubprogram(name: "memset", scope: !2308, file: !2308, line: 57, type: !2309, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2829)
!2829 = !{!2827, !2830, !2831}
!2830 = !DILocalVariable(name: "__ch", arg: 2, scope: !2828, file: !2308, line: 57, type: !116)
!2831 = !DILocalVariable(name: "__len", arg: 3, scope: !2828, file: !2308, line: 57, type: !162)
!2832 = !DILocation(line: 0, scope: !2828, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 1137, column: 3, scope: !2820, inlinedAt: !2826)
!2834 = !DILocation(line: 59, column: 10, scope: !2828, inlinedAt: !2833)
!2835 = !DILocation(line: 231, column: 7, scope: !2836, inlinedAt: !2810)
!2836 = distinct !DILexicalBlock(scope: !657, file: !591, line: 231, column: 7)
!2837 = !DILocation(line: 231, column: 40, scope: !2836, inlinedAt: !2810)
!2838 = !DILocation(line: 231, column: 45, scope: !2836, inlinedAt: !2810)
!2839 = !DILocation(line: 235, column: 1, scope: !657, inlinedAt: !2810)
!2840 = !DILocation(line: 0, scope: !657, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 358, column: 27, scope: !2811)
!2842 = !DILocation(line: 199, column: 29, scope: !657, inlinedAt: !2841)
!2843 = !DILocation(line: 201, column: 19, scope: !2815, inlinedAt: !2841)
!2844 = !DILocation(line: 201, column: 7, scope: !657, inlinedAt: !2841)
!2845 = !DILocation(line: 229, column: 3, scope: !657, inlinedAt: !2841)
!2846 = !DILocation(line: 230, column: 3, scope: !657, inlinedAt: !2841)
!2847 = !DILocation(line: 0, scope: !2820, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 230, column: 18, scope: !657, inlinedAt: !2841)
!2849 = !DILocation(line: 0, scope: !2828, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 1137, column: 3, scope: !2820, inlinedAt: !2848)
!2851 = !DILocation(line: 59, column: 10, scope: !2828, inlinedAt: !2850)
!2852 = !DILocation(line: 231, column: 7, scope: !2836, inlinedAt: !2841)
!2853 = !DILocation(line: 231, column: 40, scope: !2836, inlinedAt: !2841)
!2854 = !DILocation(line: 231, column: 45, scope: !2836, inlinedAt: !2841)
!2855 = !DILocation(line: 235, column: 1, scope: !657, inlinedAt: !2841)
!2856 = !DILocation(line: 360, column: 14, scope: !2741)
!2857 = !DILocation(line: 360, column: 13, scope: !2742)
!2858 = !DILocation(line: 0, scope: !2740)
!2859 = !DILocation(line: 361, column: 45, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2740, file: !591, line: 361, column: 11)
!2861 = !DILocation(line: 361, column: 11, scope: !2740)
!2862 = !DILocation(line: 362, column: 13, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !591, line: 362, column: 13)
!2864 = distinct !DILexicalBlock(scope: !2860, file: !591, line: 362, column: 13)
!2865 = !DILocation(line: 362, column: 13, scope: !2864)
!2866 = !DILocation(line: 361, column: 52, scope: !2860)
!2867 = distinct !{!2867, !2861, !2868, !1062}
!2868 = !DILocation(line: 362, column: 13, scope: !2740)
!2869 = !DILocation(line: 260, column: 10, scope: !2713)
!2870 = !DILocation(line: 365, column: 28, scope: !2742)
!2871 = !DILocation(line: 367, column: 7, scope: !2743)
!2872 = !DILocation(line: 370, column: 7, scope: !2743)
!2873 = !DILocation(line: 373, column: 7, scope: !2743)
!2874 = !DILocation(line: 376, column: 12, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2743, file: !591, line: 376, column: 11)
!2876 = !DILocation(line: 376, column: 11, scope: !2743)
!2877 = !DILocation(line: 381, column: 12, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2743, file: !591, line: 381, column: 11)
!2879 = !DILocation(line: 381, column: 11, scope: !2743)
!2880 = !DILocation(line: 382, column: 9, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !591, line: 382, column: 9)
!2882 = distinct !DILexicalBlock(scope: !2878, file: !591, line: 382, column: 9)
!2883 = !DILocation(line: 382, column: 9, scope: !2882)
!2884 = !DILocation(line: 389, column: 7, scope: !2743)
!2885 = !DILocation(line: 392, column: 7, scope: !2743)
!2886 = !DILocation(line: 0, scope: !2745)
!2887 = !DILocation(line: 395, column: 8, scope: !2745)
!2888 = !DILocation(line: 309, column: 8, scope: !2713)
!2889 = !DILocation(line: 395, scope: !2745)
!2890 = !DILocation(line: 395, column: 34, scope: !2748)
!2891 = !DILocation(line: 395, column: 26, scope: !2748)
!2892 = !DILocation(line: 395, column: 48, scope: !2748)
!2893 = !DILocation(line: 395, column: 55, scope: !2748)
!2894 = !DILocation(line: 395, column: 3, scope: !2745)
!2895 = !DILocation(line: 395, column: 67, scope: !2748)
!2896 = !DILocation(line: 0, scope: !2747)
!2897 = !DILocation(line: 402, column: 11, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2747, file: !591, line: 401, column: 11)
!2899 = !DILocation(line: 404, column: 17, scope: !2898)
!2900 = !DILocation(line: 405, column: 39, scope: !2898)
!2901 = !DILocation(line: 409, column: 32, scope: !2898)
!2902 = !DILocation(line: 405, column: 19, scope: !2898)
!2903 = !DILocation(line: 405, column: 15, scope: !2898)
!2904 = !DILocation(line: 410, column: 11, scope: !2898)
!2905 = !DILocation(line: 410, column: 25, scope: !2898)
!2906 = !DILocalVariable(name: "__s1", arg: 1, scope: !2907, file: !1028, line: 974, type: !1163)
!2907 = distinct !DISubprogram(name: "memeq", scope: !1028, file: !1028, line: 974, type: !2532, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !2908)
!2908 = !{!2906, !2909, !2910}
!2909 = !DILocalVariable(name: "__s2", arg: 2, scope: !2907, file: !1028, line: 974, type: !1163)
!2910 = !DILocalVariable(name: "__n", arg: 3, scope: !2907, file: !1028, line: 974, type: !162)
!2911 = !DILocation(line: 0, scope: !2907, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 410, column: 14, scope: !2898)
!2913 = !DILocation(line: 976, column: 11, scope: !2907, inlinedAt: !2912)
!2914 = !DILocation(line: 976, column: 10, scope: !2907, inlinedAt: !2912)
!2915 = !DILocation(line: 401, column: 11, scope: !2747)
!2916 = !DILocation(line: 417, column: 25, scope: !2747)
!2917 = !DILocation(line: 418, column: 7, scope: !2747)
!2918 = !DILocation(line: 421, column: 15, scope: !2754)
!2919 = !DILocation(line: 423, column: 15, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !591, line: 423, column: 15)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !591, line: 422, column: 13)
!2922 = distinct !DILexicalBlock(scope: !2754, file: !591, line: 421, column: 15)
!2923 = !DILocation(line: 423, column: 15, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2920, file: !591, line: 423, column: 15)
!2925 = !DILocation(line: 423, column: 15, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !591, line: 423, column: 15)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !591, line: 423, column: 15)
!2928 = distinct !DILexicalBlock(scope: !2924, file: !591, line: 423, column: 15)
!2929 = !DILocation(line: 423, column: 15, scope: !2927)
!2930 = !DILocation(line: 423, column: 15, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !591, line: 423, column: 15)
!2932 = distinct !DILexicalBlock(scope: !2928, file: !591, line: 423, column: 15)
!2933 = !DILocation(line: 423, column: 15, scope: !2932)
!2934 = !DILocation(line: 423, column: 15, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !591, line: 423, column: 15)
!2936 = distinct !DILexicalBlock(scope: !2928, file: !591, line: 423, column: 15)
!2937 = !DILocation(line: 423, column: 15, scope: !2936)
!2938 = !DILocation(line: 423, column: 15, scope: !2928)
!2939 = !DILocation(line: 423, column: 15, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !591, line: 423, column: 15)
!2941 = distinct !DILexicalBlock(scope: !2920, file: !591, line: 423, column: 15)
!2942 = !DILocation(line: 423, column: 15, scope: !2941)
!2943 = !DILocation(line: 431, column: 19, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2921, file: !591, line: 430, column: 19)
!2945 = !DILocation(line: 431, column: 24, scope: !2944)
!2946 = !DILocation(line: 431, column: 28, scope: !2944)
!2947 = !DILocation(line: 431, column: 38, scope: !2944)
!2948 = !DILocation(line: 431, column: 48, scope: !2944)
!2949 = !DILocation(line: 431, column: 59, scope: !2944)
!2950 = !DILocation(line: 433, column: 19, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !591, line: 433, column: 19)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !591, line: 433, column: 19)
!2953 = distinct !DILexicalBlock(scope: !2944, file: !591, line: 432, column: 17)
!2954 = !DILocation(line: 433, column: 19, scope: !2952)
!2955 = !DILocation(line: 434, column: 19, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !591, line: 434, column: 19)
!2957 = distinct !DILexicalBlock(scope: !2953, file: !591, line: 434, column: 19)
!2958 = !DILocation(line: 434, column: 19, scope: !2957)
!2959 = !DILocation(line: 435, column: 17, scope: !2953)
!2960 = !DILocation(line: 442, column: 20, scope: !2922)
!2961 = !DILocation(line: 447, column: 11, scope: !2754)
!2962 = !DILocation(line: 450, column: 19, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2754, file: !591, line: 448, column: 13)
!2964 = !DILocation(line: 456, column: 19, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2963, file: !591, line: 455, column: 19)
!2966 = !DILocation(line: 456, column: 24, scope: !2965)
!2967 = !DILocation(line: 456, column: 28, scope: !2965)
!2968 = !DILocation(line: 456, column: 38, scope: !2965)
!2969 = !DILocation(line: 456, column: 41, scope: !2965)
!2970 = !DILocation(line: 456, column: 52, scope: !2965)
!2971 = !DILocation(line: 455, column: 19, scope: !2963)
!2972 = !DILocation(line: 457, column: 25, scope: !2965)
!2973 = !DILocation(line: 457, column: 17, scope: !2965)
!2974 = !DILocation(line: 464, column: 25, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2965, file: !591, line: 458, column: 19)
!2976 = !DILocation(line: 468, column: 21, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !591, line: 468, column: 21)
!2978 = distinct !DILexicalBlock(scope: !2975, file: !591, line: 468, column: 21)
!2979 = !DILocation(line: 468, column: 21, scope: !2978)
!2980 = !DILocation(line: 469, column: 21, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !591, line: 469, column: 21)
!2982 = distinct !DILexicalBlock(scope: !2975, file: !591, line: 469, column: 21)
!2983 = !DILocation(line: 469, column: 21, scope: !2982)
!2984 = !DILocation(line: 470, column: 21, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !591, line: 470, column: 21)
!2986 = distinct !DILexicalBlock(scope: !2975, file: !591, line: 470, column: 21)
!2987 = !DILocation(line: 470, column: 21, scope: !2986)
!2988 = !DILocation(line: 471, column: 21, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !591, line: 471, column: 21)
!2990 = distinct !DILexicalBlock(scope: !2975, file: !591, line: 471, column: 21)
!2991 = !DILocation(line: 471, column: 21, scope: !2990)
!2992 = !DILocation(line: 472, column: 21, scope: !2975)
!2993 = !DILocation(line: 482, column: 33, scope: !2753)
!2994 = !DILocation(line: 483, column: 33, scope: !2753)
!2995 = !DILocation(line: 485, column: 33, scope: !2753)
!2996 = !DILocation(line: 486, column: 33, scope: !2753)
!2997 = !DILocation(line: 487, column: 33, scope: !2753)
!2998 = !DILocation(line: 490, column: 17, scope: !2753)
!2999 = !DILocation(line: 492, column: 21, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !3001, file: !591, line: 491, column: 15)
!3001 = distinct !DILexicalBlock(scope: !2753, file: !591, line: 490, column: 17)
!3002 = !DILocation(line: 499, column: 35, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2753, file: !591, line: 499, column: 17)
!3004 = !DILocation(line: 499, column: 57, scope: !3003)
!3005 = !DILocation(line: 0, scope: !2753)
!3006 = !DILocation(line: 502, column: 11, scope: !2753)
!3007 = !DILocation(line: 504, column: 17, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2753, file: !591, line: 503, column: 17)
!3009 = !DILocation(line: 507, column: 11, scope: !2753)
!3010 = !DILocation(line: 508, column: 17, scope: !2753)
!3011 = !DILocation(line: 517, column: 15, scope: !2754)
!3012 = !DILocation(line: 517, column: 40, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2754, file: !591, line: 517, column: 15)
!3014 = !DILocation(line: 517, column: 47, scope: !3013)
!3015 = !DILocation(line: 517, column: 18, scope: !3013)
!3016 = !DILocation(line: 521, column: 17, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2754, file: !591, line: 521, column: 15)
!3018 = !DILocation(line: 521, column: 15, scope: !2754)
!3019 = !DILocation(line: 525, column: 11, scope: !2754)
!3020 = !DILocation(line: 537, column: 15, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !2754, file: !591, line: 536, column: 15)
!3022 = !DILocation(line: 544, column: 15, scope: !2754)
!3023 = !DILocation(line: 546, column: 19, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !591, line: 545, column: 13)
!3025 = distinct !DILexicalBlock(scope: !2754, file: !591, line: 544, column: 15)
!3026 = !DILocation(line: 549, column: 19, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3024, file: !591, line: 549, column: 19)
!3028 = !DILocation(line: 549, column: 30, scope: !3027)
!3029 = !DILocation(line: 558, column: 15, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !591, line: 558, column: 15)
!3031 = distinct !DILexicalBlock(scope: !3024, file: !591, line: 558, column: 15)
!3032 = !DILocation(line: 558, column: 15, scope: !3031)
!3033 = !DILocation(line: 559, column: 15, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !591, line: 559, column: 15)
!3035 = distinct !DILexicalBlock(scope: !3024, file: !591, line: 559, column: 15)
!3036 = !DILocation(line: 559, column: 15, scope: !3035)
!3037 = !DILocation(line: 560, column: 15, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !591, line: 560, column: 15)
!3039 = distinct !DILexicalBlock(scope: !3024, file: !591, line: 560, column: 15)
!3040 = !DILocation(line: 560, column: 15, scope: !3039)
!3041 = !DILocation(line: 562, column: 13, scope: !3024)
!3042 = !DILocation(line: 602, column: 17, scope: !2757)
!3043 = !DILocation(line: 0, scope: !2757)
!3044 = !DILocation(line: 605, column: 29, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !2761, file: !591, line: 603, column: 15)
!3046 = !DILocation(line: 605, column: 27, scope: !3045)
!3047 = !DILocation(line: 606, column: 15, scope: !3045)
!3048 = !DILocation(line: 609, column: 17, scope: !2760)
!3049 = !DILocation(line: 0, scope: !2820, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 609, column: 32, scope: !2760)
!3051 = !DILocation(line: 0, scope: !2828, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 1137, column: 3, scope: !2820, inlinedAt: !3050)
!3053 = !DILocation(line: 59, column: 10, scope: !2828, inlinedAt: !3052)
!3054 = !DILocation(line: 613, column: 29, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !2760, file: !591, line: 613, column: 21)
!3056 = !DILocation(line: 613, column: 21, scope: !2760)
!3057 = !DILocation(line: 614, column: 29, scope: !3055)
!3058 = !DILocation(line: 614, column: 19, scope: !3055)
!3059 = !DILocation(line: 618, column: 21, scope: !2763)
!3060 = !DILocation(line: 620, column: 54, scope: !2763)
!3061 = !DILocation(line: 619, column: 36, scope: !2763)
!3062 = !DILocation(line: 621, column: 25, scope: !2763)
!3063 = !DILocation(line: 631, column: 38, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !2772, file: !591, line: 629, column: 23)
!3065 = !DILocation(line: 631, column: 48, scope: !3064)
!3066 = !DILocation(line: 626, column: 25, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !2773, file: !591, line: 624, column: 23)
!3068 = !DILocation(line: 631, column: 51, scope: !3064)
!3069 = !DILocation(line: 631, column: 25, scope: !3064)
!3070 = !DILocation(line: 632, column: 28, scope: !3064)
!3071 = !DILocation(line: 631, column: 34, scope: !3064)
!3072 = distinct !{!3072, !3069, !3070, !1062}
!3073 = !DILocation(line: 0, scope: !2768)
!3074 = !DILocation(line: 646, column: 29, scope: !2770)
!3075 = !DILocation(line: 649, column: 39, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !2768, file: !591, line: 648, column: 29)
!3077 = !DILocation(line: 649, column: 31, scope: !3076)
!3078 = !DILocation(line: 648, column: 60, scope: !3076)
!3079 = !DILocation(line: 648, column: 50, scope: !3076)
!3080 = !DILocation(line: 648, column: 29, scope: !2768)
!3081 = distinct !{!3081, !3080, !3082, !1062}
!3082 = !DILocation(line: 654, column: 33, scope: !2768)
!3083 = !DILocation(line: 657, column: 43, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !2771, file: !591, line: 657, column: 29)
!3085 = !DILocalVariable(name: "wc", arg: 1, scope: !3086, file: !3087, line: 865, type: !3090)
!3086 = distinct !DISubprogram(name: "c32isprint", scope: !3087, file: !3087, line: 865, type: !3088, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3092)
!3087 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!116, !3090}
!3090 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3091, line: 20, baseType: !103)
!3091 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3092 = !{!3085}
!3093 = !DILocation(line: 0, scope: !3086, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 657, column: 31, scope: !3084)
!3095 = !DILocation(line: 871, column: 10, scope: !3086, inlinedAt: !3094)
!3096 = !DILocation(line: 657, column: 31, scope: !3084)
!3097 = !DILocation(line: 664, column: 23, scope: !2763)
!3098 = !DILocation(line: 665, column: 19, scope: !2764)
!3099 = !DILocation(line: 666, column: 15, scope: !2761)
!3100 = !DILocation(line: 0, scope: !2761)
!3101 = !DILocation(line: 670, column: 19, scope: !2777)
!3102 = !DILocation(line: 670, column: 23, scope: !2777)
!3103 = !DILocation(line: 674, column: 33, scope: !2776)
!3104 = !DILocation(line: 0, scope: !2776)
!3105 = !DILocation(line: 676, column: 17, scope: !2776)
!3106 = !DILocation(line: 398, column: 12, scope: !2747)
!3107 = !DILocation(line: 678, column: 43, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !591, line: 678, column: 25)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !591, line: 677, column: 19)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !591, line: 676, column: 17)
!3111 = distinct !DILexicalBlock(scope: !2776, file: !591, line: 676, column: 17)
!3112 = !DILocation(line: 680, column: 25, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !591, line: 680, column: 25)
!3114 = distinct !DILexicalBlock(scope: !3108, file: !591, line: 679, column: 23)
!3115 = !DILocation(line: 680, column: 25, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3113, file: !591, line: 680, column: 25)
!3117 = !DILocation(line: 680, column: 25, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !591, line: 680, column: 25)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !591, line: 680, column: 25)
!3120 = distinct !DILexicalBlock(scope: !3116, file: !591, line: 680, column: 25)
!3121 = !DILocation(line: 680, column: 25, scope: !3119)
!3122 = !DILocation(line: 680, column: 25, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !591, line: 680, column: 25)
!3124 = distinct !DILexicalBlock(scope: !3120, file: !591, line: 680, column: 25)
!3125 = !DILocation(line: 680, column: 25, scope: !3124)
!3126 = !DILocation(line: 680, column: 25, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !591, line: 680, column: 25)
!3128 = distinct !DILexicalBlock(scope: !3120, file: !591, line: 680, column: 25)
!3129 = !DILocation(line: 680, column: 25, scope: !3128)
!3130 = !DILocation(line: 680, column: 25, scope: !3120)
!3131 = !DILocation(line: 680, column: 25, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !591, line: 680, column: 25)
!3133 = distinct !DILexicalBlock(scope: !3113, file: !591, line: 680, column: 25)
!3134 = !DILocation(line: 680, column: 25, scope: !3133)
!3135 = !DILocation(line: 681, column: 25, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !591, line: 681, column: 25)
!3137 = distinct !DILexicalBlock(scope: !3114, file: !591, line: 681, column: 25)
!3138 = !DILocation(line: 681, column: 25, scope: !3137)
!3139 = !DILocation(line: 682, column: 25, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !591, line: 682, column: 25)
!3141 = distinct !DILexicalBlock(scope: !3114, file: !591, line: 682, column: 25)
!3142 = !DILocation(line: 682, column: 25, scope: !3141)
!3143 = !DILocation(line: 683, column: 38, scope: !3114)
!3144 = !DILocation(line: 683, column: 33, scope: !3114)
!3145 = !DILocation(line: 684, column: 23, scope: !3114)
!3146 = !DILocation(line: 685, column: 30, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3108, file: !591, line: 685, column: 30)
!3148 = !DILocation(line: 685, column: 30, scope: !3108)
!3149 = !DILocation(line: 687, column: 25, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !591, line: 687, column: 25)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !591, line: 687, column: 25)
!3152 = distinct !DILexicalBlock(scope: !3147, file: !591, line: 686, column: 23)
!3153 = !DILocation(line: 687, column: 25, scope: !3151)
!3154 = !DILocation(line: 689, column: 23, scope: !3152)
!3155 = !DILocation(line: 690, column: 35, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3109, file: !591, line: 690, column: 25)
!3157 = !DILocation(line: 690, column: 30, scope: !3156)
!3158 = !DILocation(line: 690, column: 25, scope: !3109)
!3159 = !DILocation(line: 692, column: 21, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !591, line: 692, column: 21)
!3161 = distinct !DILexicalBlock(scope: !3109, file: !591, line: 692, column: 21)
!3162 = !DILocation(line: 692, column: 21, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !591, line: 692, column: 21)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !591, line: 692, column: 21)
!3165 = distinct !DILexicalBlock(scope: !3160, file: !591, line: 692, column: 21)
!3166 = !DILocation(line: 692, column: 21, scope: !3164)
!3167 = !DILocation(line: 692, column: 21, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !591, line: 692, column: 21)
!3169 = distinct !DILexicalBlock(scope: !3165, file: !591, line: 692, column: 21)
!3170 = !DILocation(line: 692, column: 21, scope: !3169)
!3171 = !DILocation(line: 692, column: 21, scope: !3165)
!3172 = !DILocation(line: 0, scope: !3109)
!3173 = !DILocation(line: 693, column: 21, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !591, line: 693, column: 21)
!3175 = distinct !DILexicalBlock(scope: !3109, file: !591, line: 693, column: 21)
!3176 = !DILocation(line: 693, column: 21, scope: !3175)
!3177 = !DILocation(line: 694, column: 25, scope: !3109)
!3178 = !DILocation(line: 676, column: 17, scope: !3110)
!3179 = distinct !{!3179, !3180, !3181}
!3180 = !DILocation(line: 676, column: 17, scope: !3111)
!3181 = !DILocation(line: 695, column: 19, scope: !3111)
!3182 = !DILocation(line: 409, column: 30, scope: !2898)
!3183 = !DILocation(line: 702, column: 34, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !2747, file: !591, line: 702, column: 11)
!3185 = !DILocation(line: 704, column: 14, scope: !3184)
!3186 = !DILocation(line: 705, column: 14, scope: !3184)
!3187 = !DILocation(line: 705, column: 35, scope: !3184)
!3188 = !DILocation(line: 705, column: 17, scope: !3184)
!3189 = !DILocation(line: 705, column: 47, scope: !3184)
!3190 = !DILocation(line: 705, column: 65, scope: !3184)
!3191 = !DILocation(line: 706, column: 11, scope: !3184)
!3192 = !DILocation(line: 702, column: 11, scope: !2747)
!3193 = !DILocation(line: 395, column: 15, scope: !2745)
!3194 = !DILocation(line: 709, column: 5, scope: !2747)
!3195 = !DILocation(line: 710, column: 7, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !2747, file: !591, line: 710, column: 7)
!3197 = !DILocation(line: 710, column: 7, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3196, file: !591, line: 710, column: 7)
!3199 = !DILocation(line: 710, column: 7, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !591, line: 710, column: 7)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !591, line: 710, column: 7)
!3202 = distinct !DILexicalBlock(scope: !3198, file: !591, line: 710, column: 7)
!3203 = !DILocation(line: 710, column: 7, scope: !3201)
!3204 = !DILocation(line: 710, column: 7, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !591, line: 710, column: 7)
!3206 = distinct !DILexicalBlock(scope: !3202, file: !591, line: 710, column: 7)
!3207 = !DILocation(line: 710, column: 7, scope: !3206)
!3208 = !DILocation(line: 710, column: 7, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !591, line: 710, column: 7)
!3210 = distinct !DILexicalBlock(scope: !3202, file: !591, line: 710, column: 7)
!3211 = !DILocation(line: 710, column: 7, scope: !3210)
!3212 = !DILocation(line: 710, column: 7, scope: !3202)
!3213 = !DILocation(line: 710, column: 7, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !591, line: 710, column: 7)
!3215 = distinct !DILexicalBlock(scope: !3196, file: !591, line: 710, column: 7)
!3216 = !DILocation(line: 710, column: 7, scope: !3215)
!3217 = !DILocation(line: 712, column: 5, scope: !2747)
!3218 = !DILocation(line: 713, column: 7, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !591, line: 713, column: 7)
!3220 = distinct !DILexicalBlock(scope: !2747, file: !591, line: 713, column: 7)
!3221 = !DILocation(line: 417, column: 21, scope: !2747)
!3222 = !DILocation(line: 713, column: 7, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !591, line: 713, column: 7)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !591, line: 713, column: 7)
!3225 = distinct !DILexicalBlock(scope: !3219, file: !591, line: 713, column: 7)
!3226 = !DILocation(line: 713, column: 7, scope: !3224)
!3227 = !DILocation(line: 713, column: 7, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !591, line: 713, column: 7)
!3229 = distinct !DILexicalBlock(scope: !3225, file: !591, line: 713, column: 7)
!3230 = !DILocation(line: 713, column: 7, scope: !3229)
!3231 = !DILocation(line: 713, column: 7, scope: !3225)
!3232 = !DILocation(line: 714, column: 7, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !591, line: 714, column: 7)
!3234 = distinct !DILexicalBlock(scope: !2747, file: !591, line: 714, column: 7)
!3235 = !DILocation(line: 714, column: 7, scope: !3234)
!3236 = !DILocation(line: 716, column: 13, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !2747, file: !591, line: 716, column: 11)
!3238 = !DILocation(line: 716, column: 11, scope: !2747)
!3239 = !DILocation(line: 718, column: 5, scope: !2748)
!3240 = !DILocation(line: 395, column: 82, scope: !2748)
!3241 = !DILocation(line: 395, column: 3, scope: !2748)
!3242 = distinct !{!3242, !2894, !3243, !1062}
!3243 = !DILocation(line: 718, column: 5, scope: !2745)
!3244 = !DILocation(line: 720, column: 11, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !2713, file: !591, line: 720, column: 7)
!3246 = !DILocation(line: 720, column: 16, scope: !3245)
!3247 = !DILocation(line: 728, column: 51, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !2713, file: !591, line: 728, column: 7)
!3249 = !DILocation(line: 731, column: 11, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !591, line: 731, column: 11)
!3251 = distinct !DILexicalBlock(scope: !3248, file: !591, line: 730, column: 5)
!3252 = !DILocation(line: 731, column: 11, scope: !3251)
!3253 = !DILocation(line: 732, column: 16, scope: !3250)
!3254 = !DILocation(line: 732, column: 9, scope: !3250)
!3255 = !DILocation(line: 736, column: 18, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3250, file: !591, line: 736, column: 16)
!3257 = !DILocation(line: 736, column: 29, scope: !3256)
!3258 = !DILocation(line: 745, column: 7, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !2713, file: !591, line: 745, column: 7)
!3260 = !DILocation(line: 745, column: 20, scope: !3259)
!3261 = !DILocation(line: 746, column: 12, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !591, line: 746, column: 5)
!3263 = distinct !DILexicalBlock(scope: !3259, file: !591, line: 746, column: 5)
!3264 = !DILocation(line: 746, column: 5, scope: !3263)
!3265 = !DILocation(line: 747, column: 7, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !591, line: 747, column: 7)
!3267 = distinct !DILexicalBlock(scope: !3262, file: !591, line: 747, column: 7)
!3268 = !DILocation(line: 747, column: 7, scope: !3267)
!3269 = !DILocation(line: 746, column: 39, scope: !3262)
!3270 = distinct !{!3270, !3264, !3271, !1062}
!3271 = !DILocation(line: 747, column: 7, scope: !3263)
!3272 = !DILocation(line: 749, column: 11, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !2713, file: !591, line: 749, column: 7)
!3274 = !DILocation(line: 749, column: 7, scope: !2713)
!3275 = !DILocation(line: 750, column: 5, scope: !3273)
!3276 = !DILocation(line: 750, column: 17, scope: !3273)
!3277 = !DILocation(line: 753, column: 2, scope: !2713)
!3278 = !DILocation(line: 756, column: 51, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !2713, file: !591, line: 756, column: 7)
!3280 = !DILocation(line: 756, column: 21, scope: !3279)
!3281 = !DILocation(line: 760, column: 42, scope: !2713)
!3282 = !DILocation(line: 758, column: 10, scope: !2713)
!3283 = !DILocation(line: 758, column: 3, scope: !2713)
!3284 = !DILocation(line: 762, column: 1, scope: !2713)
!3285 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1139, file: !1139, line: 98, type: !3286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!162}
!3288 = !DISubprogram(name: "iswprint", scope: !3289, file: !3289, line: 120, type: !3088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3289 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3290 = distinct !DISubprogram(name: "quotearg_alloc", scope: !591, file: !591, line: 788, type: !3291, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3293)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!159, !165, !162, !2606}
!3293 = !{!3294, !3295, !3296}
!3294 = !DILocalVariable(name: "arg", arg: 1, scope: !3290, file: !591, line: 788, type: !165)
!3295 = !DILocalVariable(name: "argsize", arg: 2, scope: !3290, file: !591, line: 788, type: !162)
!3296 = !DILocalVariable(name: "o", arg: 3, scope: !3290, file: !591, line: 789, type: !2606)
!3297 = !DILocation(line: 0, scope: !3290)
!3298 = !DILocalVariable(name: "arg", arg: 1, scope: !3299, file: !591, line: 801, type: !165)
!3299 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !591, file: !591, line: 801, type: !3300, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3302)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!159, !165, !162, !882, !2606}
!3302 = !{!3298, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310}
!3303 = !DILocalVariable(name: "argsize", arg: 2, scope: !3299, file: !591, line: 801, type: !162)
!3304 = !DILocalVariable(name: "size", arg: 3, scope: !3299, file: !591, line: 801, type: !882)
!3305 = !DILocalVariable(name: "o", arg: 4, scope: !3299, file: !591, line: 802, type: !2606)
!3306 = !DILocalVariable(name: "p", scope: !3299, file: !591, line: 804, type: !2606)
!3307 = !DILocalVariable(name: "saved_errno", scope: !3299, file: !591, line: 805, type: !116)
!3308 = !DILocalVariable(name: "flags", scope: !3299, file: !591, line: 807, type: !116)
!3309 = !DILocalVariable(name: "bufsize", scope: !3299, file: !591, line: 808, type: !162)
!3310 = !DILocalVariable(name: "buf", scope: !3299, file: !591, line: 812, type: !159)
!3311 = !DILocation(line: 0, scope: !3299, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 791, column: 10, scope: !3290)
!3313 = !DILocation(line: 804, column: 37, scope: !3299, inlinedAt: !3312)
!3314 = !DILocation(line: 805, column: 21, scope: !3299, inlinedAt: !3312)
!3315 = !DILocation(line: 807, column: 18, scope: !3299, inlinedAt: !3312)
!3316 = !DILocation(line: 807, column: 24, scope: !3299, inlinedAt: !3312)
!3317 = !DILocation(line: 808, column: 72, scope: !3299, inlinedAt: !3312)
!3318 = !DILocation(line: 809, column: 56, scope: !3299, inlinedAt: !3312)
!3319 = !DILocation(line: 810, column: 49, scope: !3299, inlinedAt: !3312)
!3320 = !DILocation(line: 811, column: 49, scope: !3299, inlinedAt: !3312)
!3321 = !DILocation(line: 808, column: 20, scope: !3299, inlinedAt: !3312)
!3322 = !DILocation(line: 811, column: 62, scope: !3299, inlinedAt: !3312)
!3323 = !DILocation(line: 812, column: 15, scope: !3299, inlinedAt: !3312)
!3324 = !DILocation(line: 813, column: 60, scope: !3299, inlinedAt: !3312)
!3325 = !DILocation(line: 815, column: 32, scope: !3299, inlinedAt: !3312)
!3326 = !DILocation(line: 815, column: 47, scope: !3299, inlinedAt: !3312)
!3327 = !DILocation(line: 813, column: 3, scope: !3299, inlinedAt: !3312)
!3328 = !DILocation(line: 816, column: 9, scope: !3299, inlinedAt: !3312)
!3329 = !DILocation(line: 791, column: 3, scope: !3290)
!3330 = !DILocation(line: 0, scope: !3299)
!3331 = !DILocation(line: 804, column: 37, scope: !3299)
!3332 = !DILocation(line: 805, column: 21, scope: !3299)
!3333 = !DILocation(line: 807, column: 18, scope: !3299)
!3334 = !DILocation(line: 807, column: 27, scope: !3299)
!3335 = !DILocation(line: 807, column: 24, scope: !3299)
!3336 = !DILocation(line: 808, column: 72, scope: !3299)
!3337 = !DILocation(line: 809, column: 56, scope: !3299)
!3338 = !DILocation(line: 810, column: 49, scope: !3299)
!3339 = !DILocation(line: 811, column: 49, scope: !3299)
!3340 = !DILocation(line: 808, column: 20, scope: !3299)
!3341 = !DILocation(line: 811, column: 62, scope: !3299)
!3342 = !DILocation(line: 812, column: 15, scope: !3299)
!3343 = !DILocation(line: 813, column: 60, scope: !3299)
!3344 = !DILocation(line: 815, column: 32, scope: !3299)
!3345 = !DILocation(line: 815, column: 47, scope: !3299)
!3346 = !DILocation(line: 813, column: 3, scope: !3299)
!3347 = !DILocation(line: 816, column: 9, scope: !3299)
!3348 = !DILocation(line: 817, column: 7, scope: !3299)
!3349 = !DILocation(line: 818, column: 11, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3299, file: !591, line: 817, column: 7)
!3351 = !DILocation(line: 818, column: 5, scope: !3350)
!3352 = !DILocation(line: 819, column: 3, scope: !3299)
!3353 = distinct !DISubprogram(name: "quotearg_free", scope: !591, file: !591, line: 837, type: !543, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3354)
!3354 = !{!3355, !3356}
!3355 = !DILocalVariable(name: "sv", scope: !3353, file: !591, line: 839, type: !680)
!3356 = !DILocalVariable(name: "i", scope: !3357, file: !591, line: 840, type: !116)
!3357 = distinct !DILexicalBlock(scope: !3353, file: !591, line: 840, column: 3)
!3358 = !DILocation(line: 839, column: 24, scope: !3353)
!3359 = !DILocation(line: 0, scope: !3353)
!3360 = !DILocation(line: 0, scope: !3357)
!3361 = !DILocation(line: 840, column: 21, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3357, file: !591, line: 840, column: 3)
!3363 = !DILocation(line: 840, column: 3, scope: !3357)
!3364 = !DILocation(line: 842, column: 13, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3353, file: !591, line: 842, column: 7)
!3366 = !{!3367, !943, i64 8}
!3367 = !{!"slotvec", !1202, i64 0, !943, i64 8}
!3368 = !DILocation(line: 842, column: 17, scope: !3365)
!3369 = !DILocation(line: 842, column: 7, scope: !3353)
!3370 = !DILocation(line: 841, column: 17, scope: !3362)
!3371 = !DILocation(line: 841, column: 5, scope: !3362)
!3372 = !DILocation(line: 840, column: 32, scope: !3362)
!3373 = distinct !{!3373, !3363, !3374, !1062}
!3374 = !DILocation(line: 841, column: 20, scope: !3357)
!3375 = !DILocation(line: 844, column: 7, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3365, file: !591, line: 843, column: 5)
!3377 = !DILocation(line: 845, column: 21, scope: !3376)
!3378 = !{!3367, !1202, i64 0}
!3379 = !DILocation(line: 846, column: 20, scope: !3376)
!3380 = !DILocation(line: 847, column: 5, scope: !3376)
!3381 = !DILocation(line: 848, column: 10, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3353, file: !591, line: 848, column: 7)
!3383 = !DILocation(line: 848, column: 7, scope: !3353)
!3384 = !DILocation(line: 850, column: 7, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3382, file: !591, line: 849, column: 5)
!3386 = !DILocation(line: 851, column: 15, scope: !3385)
!3387 = !DILocation(line: 852, column: 5, scope: !3385)
!3388 = !DILocation(line: 853, column: 10, scope: !3353)
!3389 = !DILocation(line: 854, column: 1, scope: !3353)
!3390 = distinct !DISubprogram(name: "quotearg_n", scope: !591, file: !591, line: 919, type: !1132, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3391)
!3391 = !{!3392, !3393}
!3392 = !DILocalVariable(name: "n", arg: 1, scope: !3390, file: !591, line: 919, type: !116)
!3393 = !DILocalVariable(name: "arg", arg: 2, scope: !3390, file: !591, line: 919, type: !165)
!3394 = !DILocation(line: 0, scope: !3390)
!3395 = !DILocation(line: 921, column: 10, scope: !3390)
!3396 = !DILocation(line: 921, column: 3, scope: !3390)
!3397 = distinct !DISubprogram(name: "quotearg_n_options", scope: !591, file: !591, line: 866, type: !3398, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3400)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!159, !116, !165, !162, !2606}
!3400 = !{!3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3411, !3412, !3414, !3415, !3416}
!3401 = !DILocalVariable(name: "n", arg: 1, scope: !3397, file: !591, line: 866, type: !116)
!3402 = !DILocalVariable(name: "arg", arg: 2, scope: !3397, file: !591, line: 866, type: !165)
!3403 = !DILocalVariable(name: "argsize", arg: 3, scope: !3397, file: !591, line: 866, type: !162)
!3404 = !DILocalVariable(name: "options", arg: 4, scope: !3397, file: !591, line: 867, type: !2606)
!3405 = !DILocalVariable(name: "saved_errno", scope: !3397, file: !591, line: 869, type: !116)
!3406 = !DILocalVariable(name: "sv", scope: !3397, file: !591, line: 871, type: !680)
!3407 = !DILocalVariable(name: "nslots_max", scope: !3397, file: !591, line: 873, type: !116)
!3408 = !DILocalVariable(name: "preallocated", scope: !3409, file: !591, line: 879, type: !205)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !591, line: 878, column: 5)
!3410 = distinct !DILexicalBlock(scope: !3397, file: !591, line: 877, column: 7)
!3411 = !DILocalVariable(name: "new_nslots", scope: !3409, file: !591, line: 880, type: !895)
!3412 = !DILocalVariable(name: "size", scope: !3413, file: !591, line: 891, type: !162)
!3413 = distinct !DILexicalBlock(scope: !3397, file: !591, line: 890, column: 3)
!3414 = !DILocalVariable(name: "val", scope: !3413, file: !591, line: 892, type: !159)
!3415 = !DILocalVariable(name: "flags", scope: !3413, file: !591, line: 894, type: !116)
!3416 = !DILocalVariable(name: "qsize", scope: !3413, file: !591, line: 895, type: !162)
!3417 = distinct !DIAssignID()
!3418 = !DILocation(line: 0, scope: !3409)
!3419 = !DILocation(line: 0, scope: !3397)
!3420 = !DILocation(line: 869, column: 21, scope: !3397)
!3421 = !DILocation(line: 871, column: 24, scope: !3397)
!3422 = !DILocation(line: 874, column: 17, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3397, file: !591, line: 874, column: 7)
!3424 = !DILocation(line: 875, column: 5, scope: !3423)
!3425 = !DILocation(line: 877, column: 7, scope: !3410)
!3426 = !DILocation(line: 877, column: 14, scope: !3410)
!3427 = !DILocation(line: 877, column: 7, scope: !3397)
!3428 = !DILocation(line: 879, column: 31, scope: !3409)
!3429 = !DILocation(line: 880, column: 7, scope: !3409)
!3430 = !DILocation(line: 880, column: 26, scope: !3409)
!3431 = !DILocation(line: 880, column: 13, scope: !3409)
!3432 = distinct !DIAssignID()
!3433 = !DILocation(line: 882, column: 31, scope: !3409)
!3434 = !DILocation(line: 883, column: 33, scope: !3409)
!3435 = !DILocation(line: 883, column: 42, scope: !3409)
!3436 = !DILocation(line: 883, column: 31, scope: !3409)
!3437 = !DILocation(line: 882, column: 22, scope: !3409)
!3438 = !DILocation(line: 882, column: 15, scope: !3409)
!3439 = !DILocation(line: 884, column: 11, scope: !3409)
!3440 = !DILocation(line: 885, column: 15, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3409, file: !591, line: 884, column: 11)
!3442 = !{i64 0, i64 8, !1201, i64 8, i64 8, !942}
!3443 = !DILocation(line: 885, column: 9, scope: !3441)
!3444 = !DILocation(line: 886, column: 20, scope: !3409)
!3445 = !DILocation(line: 886, column: 18, scope: !3409)
!3446 = !DILocation(line: 886, column: 32, scope: !3409)
!3447 = !DILocation(line: 886, column: 43, scope: !3409)
!3448 = !DILocation(line: 886, column: 53, scope: !3409)
!3449 = !DILocation(line: 0, scope: !2828, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 886, column: 7, scope: !3409)
!3451 = !DILocation(line: 59, column: 10, scope: !2828, inlinedAt: !3450)
!3452 = !DILocation(line: 887, column: 16, scope: !3409)
!3453 = !DILocation(line: 887, column: 14, scope: !3409)
!3454 = !DILocation(line: 888, column: 5, scope: !3410)
!3455 = !DILocation(line: 888, column: 5, scope: !3409)
!3456 = !DILocation(line: 891, column: 19, scope: !3413)
!3457 = !DILocation(line: 891, column: 25, scope: !3413)
!3458 = !DILocation(line: 0, scope: !3413)
!3459 = !DILocation(line: 892, column: 23, scope: !3413)
!3460 = !DILocation(line: 894, column: 26, scope: !3413)
!3461 = !DILocation(line: 894, column: 32, scope: !3413)
!3462 = !DILocation(line: 896, column: 55, scope: !3413)
!3463 = !DILocation(line: 897, column: 55, scope: !3413)
!3464 = !DILocation(line: 898, column: 55, scope: !3413)
!3465 = !DILocation(line: 899, column: 55, scope: !3413)
!3466 = !DILocation(line: 895, column: 20, scope: !3413)
!3467 = !DILocation(line: 901, column: 14, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3413, file: !591, line: 901, column: 9)
!3469 = !DILocation(line: 901, column: 9, scope: !3413)
!3470 = !DILocation(line: 903, column: 35, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3468, file: !591, line: 902, column: 7)
!3472 = !DILocation(line: 903, column: 20, scope: !3471)
!3473 = !DILocation(line: 904, column: 17, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3471, file: !591, line: 904, column: 13)
!3475 = !DILocation(line: 904, column: 13, scope: !3471)
!3476 = !DILocation(line: 905, column: 11, scope: !3474)
!3477 = !DILocation(line: 906, column: 27, scope: !3471)
!3478 = !DILocation(line: 906, column: 19, scope: !3471)
!3479 = !DILocation(line: 907, column: 69, scope: !3471)
!3480 = !DILocation(line: 909, column: 44, scope: !3471)
!3481 = !DILocation(line: 910, column: 44, scope: !3471)
!3482 = !DILocation(line: 907, column: 9, scope: !3471)
!3483 = !DILocation(line: 911, column: 7, scope: !3471)
!3484 = !DILocation(line: 913, column: 11, scope: !3413)
!3485 = !DILocation(line: 914, column: 5, scope: !3413)
!3486 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !591, file: !591, line: 925, type: !3487, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3489)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!159, !116, !165, !162}
!3489 = !{!3490, !3491, !3492}
!3490 = !DILocalVariable(name: "n", arg: 1, scope: !3486, file: !591, line: 925, type: !116)
!3491 = !DILocalVariable(name: "arg", arg: 2, scope: !3486, file: !591, line: 925, type: !165)
!3492 = !DILocalVariable(name: "argsize", arg: 3, scope: !3486, file: !591, line: 925, type: !162)
!3493 = !DILocation(line: 0, scope: !3486)
!3494 = !DILocation(line: 927, column: 10, scope: !3486)
!3495 = !DILocation(line: 927, column: 3, scope: !3486)
!3496 = distinct !DISubprogram(name: "quotearg", scope: !591, file: !591, line: 931, type: !1141, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3497)
!3497 = !{!3498}
!3498 = !DILocalVariable(name: "arg", arg: 1, scope: !3496, file: !591, line: 931, type: !165)
!3499 = !DILocation(line: 0, scope: !3496)
!3500 = !DILocation(line: 0, scope: !3390, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 933, column: 10, scope: !3496)
!3502 = !DILocation(line: 921, column: 10, scope: !3390, inlinedAt: !3501)
!3503 = !DILocation(line: 933, column: 3, scope: !3496)
!3504 = distinct !DISubprogram(name: "quotearg_mem", scope: !591, file: !591, line: 937, type: !3505, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3507)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!159, !165, !162}
!3507 = !{!3508, !3509}
!3508 = !DILocalVariable(name: "arg", arg: 1, scope: !3504, file: !591, line: 937, type: !165)
!3509 = !DILocalVariable(name: "argsize", arg: 2, scope: !3504, file: !591, line: 937, type: !162)
!3510 = !DILocation(line: 0, scope: !3504)
!3511 = !DILocation(line: 0, scope: !3486, inlinedAt: !3512)
!3512 = distinct !DILocation(line: 939, column: 10, scope: !3504)
!3513 = !DILocation(line: 927, column: 10, scope: !3486, inlinedAt: !3512)
!3514 = !DILocation(line: 939, column: 3, scope: !3504)
!3515 = distinct !DISubprogram(name: "quotearg_n_style", scope: !591, file: !591, line: 943, type: !3516, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3518)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!159, !116, !617, !165}
!3518 = !{!3519, !3520, !3521, !3522}
!3519 = !DILocalVariable(name: "n", arg: 1, scope: !3515, file: !591, line: 943, type: !116)
!3520 = !DILocalVariable(name: "s", arg: 2, scope: !3515, file: !591, line: 943, type: !617)
!3521 = !DILocalVariable(name: "arg", arg: 3, scope: !3515, file: !591, line: 943, type: !165)
!3522 = !DILocalVariable(name: "o", scope: !3515, file: !591, line: 945, type: !2607)
!3523 = distinct !DIAssignID()
!3524 = !DILocation(line: 0, scope: !3515)
!3525 = !DILocation(line: 945, column: 3, scope: !3515)
!3526 = !{!3527}
!3527 = distinct !{!3527, !3528, !"quoting_options_from_style: argument 0"}
!3528 = distinct !{!3528, !"quoting_options_from_style"}
!3529 = !DILocation(line: 945, column: 36, scope: !3515)
!3530 = !DILocalVariable(name: "style", arg: 1, scope: !3531, file: !591, line: 183, type: !617)
!3531 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !591, file: !591, line: 183, type: !3532, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3534)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!632, !617}
!3534 = !{!3530, !3535}
!3535 = !DILocalVariable(name: "o", scope: !3531, file: !591, line: 185, type: !632)
!3536 = !DILocation(line: 0, scope: !3531, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 945, column: 36, scope: !3515)
!3538 = !DILocation(line: 185, column: 26, scope: !3531, inlinedAt: !3537)
!3539 = distinct !DIAssignID()
!3540 = !DILocation(line: 186, column: 13, scope: !3541, inlinedAt: !3537)
!3541 = distinct !DILexicalBlock(scope: !3531, file: !591, line: 186, column: 7)
!3542 = !DILocation(line: 186, column: 7, scope: !3531, inlinedAt: !3537)
!3543 = !DILocation(line: 187, column: 5, scope: !3541, inlinedAt: !3537)
!3544 = !DILocation(line: 188, column: 11, scope: !3531, inlinedAt: !3537)
!3545 = distinct !DIAssignID()
!3546 = !DILocation(line: 946, column: 10, scope: !3515)
!3547 = !DILocation(line: 947, column: 1, scope: !3515)
!3548 = !DILocation(line: 946, column: 3, scope: !3515)
!3549 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !591, file: !591, line: 950, type: !3550, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3552)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!159, !116, !617, !165, !162}
!3552 = !{!3553, !3554, !3555, !3556, !3557}
!3553 = !DILocalVariable(name: "n", arg: 1, scope: !3549, file: !591, line: 950, type: !116)
!3554 = !DILocalVariable(name: "s", arg: 2, scope: !3549, file: !591, line: 950, type: !617)
!3555 = !DILocalVariable(name: "arg", arg: 3, scope: !3549, file: !591, line: 951, type: !165)
!3556 = !DILocalVariable(name: "argsize", arg: 4, scope: !3549, file: !591, line: 951, type: !162)
!3557 = !DILocalVariable(name: "o", scope: !3549, file: !591, line: 953, type: !2607)
!3558 = distinct !DIAssignID()
!3559 = !DILocation(line: 0, scope: !3549)
!3560 = !DILocation(line: 953, column: 3, scope: !3549)
!3561 = !{!3562}
!3562 = distinct !{!3562, !3563, !"quoting_options_from_style: argument 0"}
!3563 = distinct !{!3563, !"quoting_options_from_style"}
!3564 = !DILocation(line: 953, column: 36, scope: !3549)
!3565 = !DILocation(line: 0, scope: !3531, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 953, column: 36, scope: !3549)
!3567 = !DILocation(line: 185, column: 26, scope: !3531, inlinedAt: !3566)
!3568 = distinct !DIAssignID()
!3569 = !DILocation(line: 186, column: 13, scope: !3541, inlinedAt: !3566)
!3570 = !DILocation(line: 186, column: 7, scope: !3531, inlinedAt: !3566)
!3571 = !DILocation(line: 187, column: 5, scope: !3541, inlinedAt: !3566)
!3572 = !DILocation(line: 188, column: 11, scope: !3531, inlinedAt: !3566)
!3573 = distinct !DIAssignID()
!3574 = !DILocation(line: 954, column: 10, scope: !3549)
!3575 = !DILocation(line: 955, column: 1, scope: !3549)
!3576 = !DILocation(line: 954, column: 3, scope: !3549)
!3577 = distinct !DISubprogram(name: "quotearg_style", scope: !591, file: !591, line: 958, type: !3578, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3580)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!159, !617, !165}
!3580 = !{!3581, !3582}
!3581 = !DILocalVariable(name: "s", arg: 1, scope: !3577, file: !591, line: 958, type: !617)
!3582 = !DILocalVariable(name: "arg", arg: 2, scope: !3577, file: !591, line: 958, type: !165)
!3583 = distinct !DIAssignID()
!3584 = !DILocation(line: 0, scope: !3577)
!3585 = !DILocation(line: 0, scope: !3515, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 960, column: 10, scope: !3577)
!3587 = !DILocation(line: 945, column: 3, scope: !3515, inlinedAt: !3586)
!3588 = !{!3589}
!3589 = distinct !{!3589, !3590, !"quoting_options_from_style: argument 0"}
!3590 = distinct !{!3590, !"quoting_options_from_style"}
!3591 = !DILocation(line: 945, column: 36, scope: !3515, inlinedAt: !3586)
!3592 = !DILocation(line: 0, scope: !3531, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 945, column: 36, scope: !3515, inlinedAt: !3586)
!3594 = !DILocation(line: 185, column: 26, scope: !3531, inlinedAt: !3593)
!3595 = distinct !DIAssignID()
!3596 = !DILocation(line: 186, column: 13, scope: !3541, inlinedAt: !3593)
!3597 = !DILocation(line: 186, column: 7, scope: !3531, inlinedAt: !3593)
!3598 = !DILocation(line: 187, column: 5, scope: !3541, inlinedAt: !3593)
!3599 = !DILocation(line: 188, column: 11, scope: !3531, inlinedAt: !3593)
!3600 = distinct !DIAssignID()
!3601 = !DILocation(line: 946, column: 10, scope: !3515, inlinedAt: !3586)
!3602 = !DILocation(line: 947, column: 1, scope: !3515, inlinedAt: !3586)
!3603 = !DILocation(line: 960, column: 3, scope: !3577)
!3604 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !591, file: !591, line: 964, type: !3605, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3607)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!159, !617, !165, !162}
!3607 = !{!3608, !3609, !3610}
!3608 = !DILocalVariable(name: "s", arg: 1, scope: !3604, file: !591, line: 964, type: !617)
!3609 = !DILocalVariable(name: "arg", arg: 2, scope: !3604, file: !591, line: 964, type: !165)
!3610 = !DILocalVariable(name: "argsize", arg: 3, scope: !3604, file: !591, line: 964, type: !162)
!3611 = distinct !DIAssignID()
!3612 = !DILocation(line: 0, scope: !3604)
!3613 = !DILocation(line: 0, scope: !3549, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 966, column: 10, scope: !3604)
!3615 = !DILocation(line: 953, column: 3, scope: !3549, inlinedAt: !3614)
!3616 = !{!3617}
!3617 = distinct !{!3617, !3618, !"quoting_options_from_style: argument 0"}
!3618 = distinct !{!3618, !"quoting_options_from_style"}
!3619 = !DILocation(line: 953, column: 36, scope: !3549, inlinedAt: !3614)
!3620 = !DILocation(line: 0, scope: !3531, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 953, column: 36, scope: !3549, inlinedAt: !3614)
!3622 = !DILocation(line: 185, column: 26, scope: !3531, inlinedAt: !3621)
!3623 = distinct !DIAssignID()
!3624 = !DILocation(line: 186, column: 13, scope: !3541, inlinedAt: !3621)
!3625 = !DILocation(line: 186, column: 7, scope: !3531, inlinedAt: !3621)
!3626 = !DILocation(line: 187, column: 5, scope: !3541, inlinedAt: !3621)
!3627 = !DILocation(line: 188, column: 11, scope: !3531, inlinedAt: !3621)
!3628 = distinct !DIAssignID()
!3629 = !DILocation(line: 954, column: 10, scope: !3549, inlinedAt: !3614)
!3630 = !DILocation(line: 955, column: 1, scope: !3549, inlinedAt: !3614)
!3631 = !DILocation(line: 966, column: 3, scope: !3604)
!3632 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !591, file: !591, line: 970, type: !3633, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3635)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!159, !165, !162, !4}
!3635 = !{!3636, !3637, !3638, !3639}
!3636 = !DILocalVariable(name: "arg", arg: 1, scope: !3632, file: !591, line: 970, type: !165)
!3637 = !DILocalVariable(name: "argsize", arg: 2, scope: !3632, file: !591, line: 970, type: !162)
!3638 = !DILocalVariable(name: "ch", arg: 3, scope: !3632, file: !591, line: 970, type: !4)
!3639 = !DILocalVariable(name: "options", scope: !3632, file: !591, line: 972, type: !632)
!3640 = distinct !DIAssignID()
!3641 = !DILocation(line: 0, scope: !3632)
!3642 = !DILocation(line: 972, column: 3, scope: !3632)
!3643 = !DILocation(line: 973, column: 13, scope: !3632)
!3644 = !{i64 0, i64 4, !1015, i64 4, i64 4, !1015, i64 8, i64 32, !1024, i64 40, i64 8, !942, i64 48, i64 8, !942}
!3645 = distinct !DIAssignID()
!3646 = !DILocation(line: 0, scope: !2626, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 974, column: 3, scope: !3632)
!3648 = !DILocation(line: 147, column: 41, scope: !2626, inlinedAt: !3647)
!3649 = !DILocation(line: 147, column: 62, scope: !2626, inlinedAt: !3647)
!3650 = !DILocation(line: 147, column: 57, scope: !2626, inlinedAt: !3647)
!3651 = !DILocation(line: 148, column: 15, scope: !2626, inlinedAt: !3647)
!3652 = !DILocation(line: 149, column: 21, scope: !2626, inlinedAt: !3647)
!3653 = !DILocation(line: 149, column: 24, scope: !2626, inlinedAt: !3647)
!3654 = !DILocation(line: 150, column: 19, scope: !2626, inlinedAt: !3647)
!3655 = !DILocation(line: 150, column: 24, scope: !2626, inlinedAt: !3647)
!3656 = !DILocation(line: 150, column: 6, scope: !2626, inlinedAt: !3647)
!3657 = !DILocation(line: 975, column: 10, scope: !3632)
!3658 = !DILocation(line: 976, column: 1, scope: !3632)
!3659 = !DILocation(line: 975, column: 3, scope: !3632)
!3660 = distinct !DISubprogram(name: "quotearg_char", scope: !591, file: !591, line: 979, type: !3661, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3663)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!159, !165, !4}
!3663 = !{!3664, !3665}
!3664 = !DILocalVariable(name: "arg", arg: 1, scope: !3660, file: !591, line: 979, type: !165)
!3665 = !DILocalVariable(name: "ch", arg: 2, scope: !3660, file: !591, line: 979, type: !4)
!3666 = distinct !DIAssignID()
!3667 = !DILocation(line: 0, scope: !3660)
!3668 = !DILocation(line: 0, scope: !3632, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 981, column: 10, scope: !3660)
!3670 = !DILocation(line: 972, column: 3, scope: !3632, inlinedAt: !3669)
!3671 = !DILocation(line: 973, column: 13, scope: !3632, inlinedAt: !3669)
!3672 = distinct !DIAssignID()
!3673 = !DILocation(line: 0, scope: !2626, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 974, column: 3, scope: !3632, inlinedAt: !3669)
!3675 = !DILocation(line: 147, column: 41, scope: !2626, inlinedAt: !3674)
!3676 = !DILocation(line: 147, column: 62, scope: !2626, inlinedAt: !3674)
!3677 = !DILocation(line: 147, column: 57, scope: !2626, inlinedAt: !3674)
!3678 = !DILocation(line: 148, column: 15, scope: !2626, inlinedAt: !3674)
!3679 = !DILocation(line: 149, column: 21, scope: !2626, inlinedAt: !3674)
!3680 = !DILocation(line: 149, column: 24, scope: !2626, inlinedAt: !3674)
!3681 = !DILocation(line: 150, column: 19, scope: !2626, inlinedAt: !3674)
!3682 = !DILocation(line: 150, column: 24, scope: !2626, inlinedAt: !3674)
!3683 = !DILocation(line: 150, column: 6, scope: !2626, inlinedAt: !3674)
!3684 = !DILocation(line: 975, column: 10, scope: !3632, inlinedAt: !3669)
!3685 = !DILocation(line: 976, column: 1, scope: !3632, inlinedAt: !3669)
!3686 = !DILocation(line: 981, column: 3, scope: !3660)
!3687 = distinct !DISubprogram(name: "quotearg_colon", scope: !591, file: !591, line: 985, type: !1141, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3688)
!3688 = !{!3689}
!3689 = !DILocalVariable(name: "arg", arg: 1, scope: !3687, file: !591, line: 985, type: !165)
!3690 = distinct !DIAssignID()
!3691 = !DILocation(line: 0, scope: !3687)
!3692 = !DILocation(line: 0, scope: !3660, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 987, column: 10, scope: !3687)
!3694 = !DILocation(line: 0, scope: !3632, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 981, column: 10, scope: !3660, inlinedAt: !3693)
!3696 = !DILocation(line: 972, column: 3, scope: !3632, inlinedAt: !3695)
!3697 = !DILocation(line: 973, column: 13, scope: !3632, inlinedAt: !3695)
!3698 = distinct !DIAssignID()
!3699 = !DILocation(line: 0, scope: !2626, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 974, column: 3, scope: !3632, inlinedAt: !3695)
!3701 = !DILocation(line: 147, column: 57, scope: !2626, inlinedAt: !3700)
!3702 = !DILocation(line: 149, column: 21, scope: !2626, inlinedAt: !3700)
!3703 = !DILocation(line: 150, column: 6, scope: !2626, inlinedAt: !3700)
!3704 = !DILocation(line: 975, column: 10, scope: !3632, inlinedAt: !3695)
!3705 = !DILocation(line: 976, column: 1, scope: !3632, inlinedAt: !3695)
!3706 = !DILocation(line: 987, column: 3, scope: !3687)
!3707 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !591, file: !591, line: 991, type: !3505, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3708)
!3708 = !{!3709, !3710}
!3709 = !DILocalVariable(name: "arg", arg: 1, scope: !3707, file: !591, line: 991, type: !165)
!3710 = !DILocalVariable(name: "argsize", arg: 2, scope: !3707, file: !591, line: 991, type: !162)
!3711 = distinct !DIAssignID()
!3712 = !DILocation(line: 0, scope: !3707)
!3713 = !DILocation(line: 0, scope: !3632, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 993, column: 10, scope: !3707)
!3715 = !DILocation(line: 972, column: 3, scope: !3632, inlinedAt: !3714)
!3716 = !DILocation(line: 973, column: 13, scope: !3632, inlinedAt: !3714)
!3717 = distinct !DIAssignID()
!3718 = !DILocation(line: 0, scope: !2626, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 974, column: 3, scope: !3632, inlinedAt: !3714)
!3720 = !DILocation(line: 147, column: 57, scope: !2626, inlinedAt: !3719)
!3721 = !DILocation(line: 149, column: 21, scope: !2626, inlinedAt: !3719)
!3722 = !DILocation(line: 150, column: 6, scope: !2626, inlinedAt: !3719)
!3723 = !DILocation(line: 975, column: 10, scope: !3632, inlinedAt: !3714)
!3724 = !DILocation(line: 976, column: 1, scope: !3632, inlinedAt: !3714)
!3725 = !DILocation(line: 993, column: 3, scope: !3707)
!3726 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !591, file: !591, line: 997, type: !3516, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3727)
!3727 = !{!3728, !3729, !3730, !3731}
!3728 = !DILocalVariable(name: "n", arg: 1, scope: !3726, file: !591, line: 997, type: !116)
!3729 = !DILocalVariable(name: "s", arg: 2, scope: !3726, file: !591, line: 997, type: !617)
!3730 = !DILocalVariable(name: "arg", arg: 3, scope: !3726, file: !591, line: 997, type: !165)
!3731 = !DILocalVariable(name: "options", scope: !3726, file: !591, line: 999, type: !632)
!3732 = distinct !DIAssignID()
!3733 = !DILocation(line: 0, scope: !3726)
!3734 = !DILocation(line: 185, column: 26, scope: !3531, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 1000, column: 13, scope: !3726)
!3736 = !DILocation(line: 999, column: 3, scope: !3726)
!3737 = !DILocation(line: 0, scope: !3531, inlinedAt: !3735)
!3738 = !DILocation(line: 186, column: 13, scope: !3541, inlinedAt: !3735)
!3739 = !DILocation(line: 186, column: 7, scope: !3531, inlinedAt: !3735)
!3740 = !DILocation(line: 187, column: 5, scope: !3541, inlinedAt: !3735)
!3741 = !{!3742}
!3742 = distinct !{!3742, !3743, !"quoting_options_from_style: argument 0"}
!3743 = distinct !{!3743, !"quoting_options_from_style"}
!3744 = !DILocation(line: 1000, column: 13, scope: !3726)
!3745 = distinct !DIAssignID()
!3746 = distinct !DIAssignID()
!3747 = !DILocation(line: 0, scope: !2626, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 1001, column: 3, scope: !3726)
!3749 = !DILocation(line: 147, column: 57, scope: !2626, inlinedAt: !3748)
!3750 = !DILocation(line: 149, column: 21, scope: !2626, inlinedAt: !3748)
!3751 = !DILocation(line: 150, column: 6, scope: !2626, inlinedAt: !3748)
!3752 = distinct !DIAssignID()
!3753 = !DILocation(line: 1002, column: 10, scope: !3726)
!3754 = !DILocation(line: 1003, column: 1, scope: !3726)
!3755 = !DILocation(line: 1002, column: 3, scope: !3726)
!3756 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !591, file: !591, line: 1006, type: !3757, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3759)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!159, !116, !165, !165, !165}
!3759 = !{!3760, !3761, !3762, !3763}
!3760 = !DILocalVariable(name: "n", arg: 1, scope: !3756, file: !591, line: 1006, type: !116)
!3761 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3756, file: !591, line: 1006, type: !165)
!3762 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3756, file: !591, line: 1007, type: !165)
!3763 = !DILocalVariable(name: "arg", arg: 4, scope: !3756, file: !591, line: 1007, type: !165)
!3764 = distinct !DIAssignID()
!3765 = !DILocation(line: 0, scope: !3756)
!3766 = !DILocalVariable(name: "o", scope: !3767, file: !591, line: 1018, type: !632)
!3767 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !591, file: !591, line: 1014, type: !3768, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3770)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!159, !116, !165, !165, !165, !162}
!3770 = !{!3771, !3772, !3773, !3774, !3775, !3766}
!3771 = !DILocalVariable(name: "n", arg: 1, scope: !3767, file: !591, line: 1014, type: !116)
!3772 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3767, file: !591, line: 1014, type: !165)
!3773 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3767, file: !591, line: 1015, type: !165)
!3774 = !DILocalVariable(name: "arg", arg: 4, scope: !3767, file: !591, line: 1016, type: !165)
!3775 = !DILocalVariable(name: "argsize", arg: 5, scope: !3767, file: !591, line: 1016, type: !162)
!3776 = !DILocation(line: 0, scope: !3767, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 1009, column: 10, scope: !3756)
!3778 = !DILocation(line: 1018, column: 3, scope: !3767, inlinedAt: !3777)
!3779 = !DILocation(line: 1018, column: 30, scope: !3767, inlinedAt: !3777)
!3780 = distinct !DIAssignID()
!3781 = distinct !DIAssignID()
!3782 = !DILocation(line: 0, scope: !2666, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 1019, column: 3, scope: !3767, inlinedAt: !3777)
!3784 = !DILocation(line: 174, column: 12, scope: !2666, inlinedAt: !3783)
!3785 = distinct !DIAssignID()
!3786 = !DILocation(line: 175, column: 8, scope: !2679, inlinedAt: !3783)
!3787 = !DILocation(line: 175, column: 19, scope: !2679, inlinedAt: !3783)
!3788 = !DILocation(line: 176, column: 5, scope: !2679, inlinedAt: !3783)
!3789 = !DILocation(line: 177, column: 6, scope: !2666, inlinedAt: !3783)
!3790 = !DILocation(line: 177, column: 17, scope: !2666, inlinedAt: !3783)
!3791 = distinct !DIAssignID()
!3792 = !DILocation(line: 178, column: 6, scope: !2666, inlinedAt: !3783)
!3793 = !DILocation(line: 178, column: 18, scope: !2666, inlinedAt: !3783)
!3794 = distinct !DIAssignID()
!3795 = !DILocation(line: 1020, column: 10, scope: !3767, inlinedAt: !3777)
!3796 = !DILocation(line: 1021, column: 1, scope: !3767, inlinedAt: !3777)
!3797 = !DILocation(line: 1009, column: 3, scope: !3756)
!3798 = distinct !DIAssignID()
!3799 = !DILocation(line: 0, scope: !3767)
!3800 = !DILocation(line: 1018, column: 3, scope: !3767)
!3801 = !DILocation(line: 1018, column: 30, scope: !3767)
!3802 = distinct !DIAssignID()
!3803 = distinct !DIAssignID()
!3804 = !DILocation(line: 0, scope: !2666, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 1019, column: 3, scope: !3767)
!3806 = !DILocation(line: 174, column: 12, scope: !2666, inlinedAt: !3805)
!3807 = distinct !DIAssignID()
!3808 = !DILocation(line: 175, column: 8, scope: !2679, inlinedAt: !3805)
!3809 = !DILocation(line: 175, column: 19, scope: !2679, inlinedAt: !3805)
!3810 = !DILocation(line: 176, column: 5, scope: !2679, inlinedAt: !3805)
!3811 = !DILocation(line: 177, column: 6, scope: !2666, inlinedAt: !3805)
!3812 = !DILocation(line: 177, column: 17, scope: !2666, inlinedAt: !3805)
!3813 = distinct !DIAssignID()
!3814 = !DILocation(line: 178, column: 6, scope: !2666, inlinedAt: !3805)
!3815 = !DILocation(line: 178, column: 18, scope: !2666, inlinedAt: !3805)
!3816 = distinct !DIAssignID()
!3817 = !DILocation(line: 1020, column: 10, scope: !3767)
!3818 = !DILocation(line: 1021, column: 1, scope: !3767)
!3819 = !DILocation(line: 1020, column: 3, scope: !3767)
!3820 = distinct !DISubprogram(name: "quotearg_custom", scope: !591, file: !591, line: 1024, type: !3821, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3823)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!159, !165, !165, !165}
!3823 = !{!3824, !3825, !3826}
!3824 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3820, file: !591, line: 1024, type: !165)
!3825 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3820, file: !591, line: 1024, type: !165)
!3826 = !DILocalVariable(name: "arg", arg: 3, scope: !3820, file: !591, line: 1025, type: !165)
!3827 = distinct !DIAssignID()
!3828 = !DILocation(line: 0, scope: !3820)
!3829 = !DILocation(line: 0, scope: !3756, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 1027, column: 10, scope: !3820)
!3831 = !DILocation(line: 0, scope: !3767, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 1009, column: 10, scope: !3756, inlinedAt: !3830)
!3833 = !DILocation(line: 1018, column: 3, scope: !3767, inlinedAt: !3832)
!3834 = !DILocation(line: 1018, column: 30, scope: !3767, inlinedAt: !3832)
!3835 = distinct !DIAssignID()
!3836 = distinct !DIAssignID()
!3837 = !DILocation(line: 0, scope: !2666, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 1019, column: 3, scope: !3767, inlinedAt: !3832)
!3839 = !DILocation(line: 174, column: 12, scope: !2666, inlinedAt: !3838)
!3840 = distinct !DIAssignID()
!3841 = !DILocation(line: 175, column: 8, scope: !2679, inlinedAt: !3838)
!3842 = !DILocation(line: 175, column: 19, scope: !2679, inlinedAt: !3838)
!3843 = !DILocation(line: 176, column: 5, scope: !2679, inlinedAt: !3838)
!3844 = !DILocation(line: 177, column: 6, scope: !2666, inlinedAt: !3838)
!3845 = !DILocation(line: 177, column: 17, scope: !2666, inlinedAt: !3838)
!3846 = distinct !DIAssignID()
!3847 = !DILocation(line: 178, column: 6, scope: !2666, inlinedAt: !3838)
!3848 = !DILocation(line: 178, column: 18, scope: !2666, inlinedAt: !3838)
!3849 = distinct !DIAssignID()
!3850 = !DILocation(line: 1020, column: 10, scope: !3767, inlinedAt: !3832)
!3851 = !DILocation(line: 1021, column: 1, scope: !3767, inlinedAt: !3832)
!3852 = !DILocation(line: 1027, column: 3, scope: !3820)
!3853 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !591, file: !591, line: 1031, type: !3854, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3856)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!159, !165, !165, !165, !162}
!3856 = !{!3857, !3858, !3859, !3860}
!3857 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3853, file: !591, line: 1031, type: !165)
!3858 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3853, file: !591, line: 1031, type: !165)
!3859 = !DILocalVariable(name: "arg", arg: 3, scope: !3853, file: !591, line: 1032, type: !165)
!3860 = !DILocalVariable(name: "argsize", arg: 4, scope: !3853, file: !591, line: 1032, type: !162)
!3861 = distinct !DIAssignID()
!3862 = !DILocation(line: 0, scope: !3853)
!3863 = !DILocation(line: 0, scope: !3767, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 1034, column: 10, scope: !3853)
!3865 = !DILocation(line: 1018, column: 3, scope: !3767, inlinedAt: !3864)
!3866 = !DILocation(line: 1018, column: 30, scope: !3767, inlinedAt: !3864)
!3867 = distinct !DIAssignID()
!3868 = distinct !DIAssignID()
!3869 = !DILocation(line: 0, scope: !2666, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 1019, column: 3, scope: !3767, inlinedAt: !3864)
!3871 = !DILocation(line: 174, column: 12, scope: !2666, inlinedAt: !3870)
!3872 = distinct !DIAssignID()
!3873 = !DILocation(line: 175, column: 8, scope: !2679, inlinedAt: !3870)
!3874 = !DILocation(line: 175, column: 19, scope: !2679, inlinedAt: !3870)
!3875 = !DILocation(line: 176, column: 5, scope: !2679, inlinedAt: !3870)
!3876 = !DILocation(line: 177, column: 6, scope: !2666, inlinedAt: !3870)
!3877 = !DILocation(line: 177, column: 17, scope: !2666, inlinedAt: !3870)
!3878 = distinct !DIAssignID()
!3879 = !DILocation(line: 178, column: 6, scope: !2666, inlinedAt: !3870)
!3880 = !DILocation(line: 178, column: 18, scope: !2666, inlinedAt: !3870)
!3881 = distinct !DIAssignID()
!3882 = !DILocation(line: 1020, column: 10, scope: !3767, inlinedAt: !3864)
!3883 = !DILocation(line: 1021, column: 1, scope: !3767, inlinedAt: !3864)
!3884 = !DILocation(line: 1034, column: 3, scope: !3853)
!3885 = distinct !DISubprogram(name: "quote_n_mem", scope: !591, file: !591, line: 1049, type: !3886, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3888)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!165, !116, !165, !162}
!3888 = !{!3889, !3890, !3891}
!3889 = !DILocalVariable(name: "n", arg: 1, scope: !3885, file: !591, line: 1049, type: !116)
!3890 = !DILocalVariable(name: "arg", arg: 2, scope: !3885, file: !591, line: 1049, type: !165)
!3891 = !DILocalVariable(name: "argsize", arg: 3, scope: !3885, file: !591, line: 1049, type: !162)
!3892 = !DILocation(line: 0, scope: !3885)
!3893 = !DILocation(line: 1051, column: 10, scope: !3885)
!3894 = !DILocation(line: 1051, column: 3, scope: !3885)
!3895 = distinct !DISubprogram(name: "quote_mem", scope: !591, file: !591, line: 1055, type: !3896, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3898)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!165, !165, !162}
!3898 = !{!3899, !3900}
!3899 = !DILocalVariable(name: "arg", arg: 1, scope: !3895, file: !591, line: 1055, type: !165)
!3900 = !DILocalVariable(name: "argsize", arg: 2, scope: !3895, file: !591, line: 1055, type: !162)
!3901 = !DILocation(line: 0, scope: !3895)
!3902 = !DILocation(line: 0, scope: !3885, inlinedAt: !3903)
!3903 = distinct !DILocation(line: 1057, column: 10, scope: !3895)
!3904 = !DILocation(line: 1051, column: 10, scope: !3885, inlinedAt: !3903)
!3905 = !DILocation(line: 1057, column: 3, scope: !3895)
!3906 = distinct !DISubprogram(name: "quote_n", scope: !591, file: !591, line: 1061, type: !3907, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3909)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!165, !116, !165}
!3909 = !{!3910, !3911}
!3910 = !DILocalVariable(name: "n", arg: 1, scope: !3906, file: !591, line: 1061, type: !116)
!3911 = !DILocalVariable(name: "arg", arg: 2, scope: !3906, file: !591, line: 1061, type: !165)
!3912 = !DILocation(line: 0, scope: !3906)
!3913 = !DILocation(line: 0, scope: !3885, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 1063, column: 10, scope: !3906)
!3915 = !DILocation(line: 1051, column: 10, scope: !3885, inlinedAt: !3914)
!3916 = !DILocation(line: 1063, column: 3, scope: !3906)
!3917 = distinct !DISubprogram(name: "quote", scope: !591, file: !591, line: 1067, type: !3918, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3920)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!165, !165}
!3920 = !{!3921}
!3921 = !DILocalVariable(name: "arg", arg: 1, scope: !3917, file: !591, line: 1067, type: !165)
!3922 = !DILocation(line: 0, scope: !3917)
!3923 = !DILocation(line: 0, scope: !3906, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 1069, column: 10, scope: !3917)
!3925 = !DILocation(line: 0, scope: !3885, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 1063, column: 10, scope: !3906, inlinedAt: !3924)
!3927 = !DILocation(line: 1051, column: 10, scope: !3885, inlinedAt: !3926)
!3928 = !DILocation(line: 1069, column: 3, scope: !3917)
!3929 = distinct !DISubprogram(name: "setlocale_null_r", scope: !864, file: !864, line: 154, type: !3930, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !863, retainedNodes: !3932)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!116, !116, !159, !162}
!3932 = !{!3933, !3934, !3935}
!3933 = !DILocalVariable(name: "category", arg: 1, scope: !3929, file: !864, line: 154, type: !116)
!3934 = !DILocalVariable(name: "buf", arg: 2, scope: !3929, file: !864, line: 154, type: !159)
!3935 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3929, file: !864, line: 154, type: !162)
!3936 = !DILocation(line: 0, scope: !3929)
!3937 = !DILocation(line: 159, column: 10, scope: !3929)
!3938 = !DILocation(line: 159, column: 3, scope: !3929)
!3939 = distinct !DISubprogram(name: "setlocale_null", scope: !864, file: !864, line: 186, type: !3940, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !863, retainedNodes: !3942)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!165, !116}
!3942 = !{!3943}
!3943 = !DILocalVariable(name: "category", arg: 1, scope: !3939, file: !864, line: 186, type: !116)
!3944 = !DILocation(line: 0, scope: !3939)
!3945 = !DILocation(line: 189, column: 10, scope: !3939)
!3946 = !DILocation(line: 189, column: 3, scope: !3939)
!3947 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !866, file: !866, line: 35, type: !3940, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !865, retainedNodes: !3948)
!3948 = !{!3949, !3950}
!3949 = !DILocalVariable(name: "category", arg: 1, scope: !3947, file: !866, line: 35, type: !116)
!3950 = !DILocalVariable(name: "result", scope: !3947, file: !866, line: 37, type: !165)
!3951 = !DILocation(line: 0, scope: !3947)
!3952 = !DILocation(line: 37, column: 24, scope: !3947)
!3953 = !DILocation(line: 62, column: 3, scope: !3947)
!3954 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !866, file: !866, line: 66, type: !3930, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !865, retainedNodes: !3955)
!3955 = !{!3956, !3957, !3958, !3959, !3960}
!3956 = !DILocalVariable(name: "category", arg: 1, scope: !3954, file: !866, line: 66, type: !116)
!3957 = !DILocalVariable(name: "buf", arg: 2, scope: !3954, file: !866, line: 66, type: !159)
!3958 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3954, file: !866, line: 66, type: !162)
!3959 = !DILocalVariable(name: "result", scope: !3954, file: !866, line: 111, type: !165)
!3960 = !DILocalVariable(name: "length", scope: !3961, file: !866, line: 125, type: !162)
!3961 = distinct !DILexicalBlock(scope: !3962, file: !866, line: 124, column: 5)
!3962 = distinct !DILexicalBlock(scope: !3954, file: !866, line: 113, column: 7)
!3963 = !DILocation(line: 0, scope: !3954)
!3964 = !DILocation(line: 0, scope: !3947, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 111, column: 24, scope: !3954)
!3966 = !DILocation(line: 37, column: 24, scope: !3947, inlinedAt: !3965)
!3967 = !DILocation(line: 113, column: 14, scope: !3962)
!3968 = !DILocation(line: 113, column: 7, scope: !3954)
!3969 = !DILocation(line: 116, column: 19, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3971, file: !866, line: 116, column: 11)
!3971 = distinct !DILexicalBlock(scope: !3962, file: !866, line: 114, column: 5)
!3972 = !DILocation(line: 116, column: 11, scope: !3971)
!3973 = !DILocation(line: 120, column: 16, scope: !3970)
!3974 = !DILocation(line: 120, column: 9, scope: !3970)
!3975 = !DILocation(line: 125, column: 23, scope: !3961)
!3976 = !DILocation(line: 0, scope: !3961)
!3977 = !DILocation(line: 126, column: 18, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3961, file: !866, line: 126, column: 11)
!3979 = !DILocation(line: 126, column: 11, scope: !3961)
!3980 = !DILocation(line: 128, column: 39, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3978, file: !866, line: 127, column: 9)
!3982 = !DILocalVariable(name: "__dest", arg: 1, scope: !3983, file: !2308, line: 26, type: !3986)
!3983 = distinct !DISubprogram(name: "memcpy", scope: !2308, file: !2308, line: 26, type: !3984, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !865, retainedNodes: !3987)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!160, !3986, !1162, !162}
!3986 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !160)
!3987 = !{!3982, !3988, !3989}
!3988 = !DILocalVariable(name: "__src", arg: 2, scope: !3983, file: !2308, line: 26, type: !1162)
!3989 = !DILocalVariable(name: "__len", arg: 3, scope: !3983, file: !2308, line: 26, type: !162)
!3990 = !DILocation(line: 0, scope: !3983, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 128, column: 11, scope: !3981)
!3992 = !DILocation(line: 29, column: 10, scope: !3983, inlinedAt: !3991)
!3993 = !DILocation(line: 129, column: 11, scope: !3981)
!3994 = !DILocation(line: 133, column: 23, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3996, file: !866, line: 133, column: 15)
!3996 = distinct !DILexicalBlock(scope: !3978, file: !866, line: 132, column: 9)
!3997 = !DILocation(line: 133, column: 15, scope: !3996)
!3998 = !DILocation(line: 138, column: 44, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3995, file: !866, line: 134, column: 13)
!4000 = !DILocation(line: 0, scope: !3983, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 138, column: 15, scope: !3999)
!4002 = !DILocation(line: 29, column: 10, scope: !3983, inlinedAt: !4001)
!4003 = !DILocation(line: 139, column: 15, scope: !3999)
!4004 = !DILocation(line: 139, column: 32, scope: !3999)
!4005 = !DILocation(line: 140, column: 13, scope: !3999)
!4006 = !DILocation(line: 0, scope: !3962)
!4007 = !DILocation(line: 145, column: 1, scope: !3954)
!4008 = distinct !DISubprogram(name: "dup_safer", scope: !868, file: !868, line: 31, type: !1659, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !867, retainedNodes: !4009)
!4009 = !{!4010}
!4010 = !DILocalVariable(name: "fd", arg: 1, scope: !4008, file: !868, line: 31, type: !116)
!4011 = !DILocation(line: 0, scope: !4008)
!4012 = !DILocation(line: 33, column: 10, scope: !4008)
!4013 = !DILocation(line: 33, column: 3, scope: !4008)
!4014 = distinct !DISubprogram(name: "version_etc_arn", scope: !695, file: !695, line: 61, type: !4015, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4052)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{null, !4017, !165, !165, !165, !4051, !162}
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4019)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4020)
!4020 = !{!4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4019, file: !236, line: 51, baseType: !116, size: 32)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4019, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4019, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4019, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4019, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4019, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4019, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4019, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4019, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4019, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4019, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4019, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4019, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4019, file: !236, line: 70, baseType: !4035, size: 64, offset: 832)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4019, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4019, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4019, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4019, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4019, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4019, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4019, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4019, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4019, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4019, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4019, file: !236, line: 93, baseType: !4035, size: 64, offset: 1344)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4019, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4019, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4019, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4019, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!4052 = !{!4053, !4054, !4055, !4056, !4057, !4058}
!4053 = !DILocalVariable(name: "stream", arg: 1, scope: !4014, file: !695, line: 61, type: !4017)
!4054 = !DILocalVariable(name: "command_name", arg: 2, scope: !4014, file: !695, line: 62, type: !165)
!4055 = !DILocalVariable(name: "package", arg: 3, scope: !4014, file: !695, line: 62, type: !165)
!4056 = !DILocalVariable(name: "version", arg: 4, scope: !4014, file: !695, line: 63, type: !165)
!4057 = !DILocalVariable(name: "authors", arg: 5, scope: !4014, file: !695, line: 64, type: !4051)
!4058 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4014, file: !695, line: 64, type: !162)
!4059 = !DILocation(line: 0, scope: !4014)
!4060 = !DILocation(line: 66, column: 7, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4014, file: !695, line: 66, column: 7)
!4062 = !DILocation(line: 66, column: 7, scope: !4014)
!4063 = !DILocation(line: 67, column: 5, scope: !4061)
!4064 = !DILocation(line: 69, column: 5, scope: !4061)
!4065 = !DILocation(line: 83, column: 3, scope: !4014)
!4066 = !DILocation(line: 85, column: 3, scope: !4014)
!4067 = !DILocation(line: 88, column: 3, scope: !4014)
!4068 = !DILocation(line: 95, column: 3, scope: !4014)
!4069 = !DILocation(line: 97, column: 3, scope: !4014)
!4070 = !DILocation(line: 105, column: 7, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4014, file: !695, line: 98, column: 5)
!4072 = !DILocation(line: 106, column: 7, scope: !4071)
!4073 = !DILocation(line: 109, column: 7, scope: !4071)
!4074 = !DILocation(line: 110, column: 7, scope: !4071)
!4075 = !DILocation(line: 113, column: 7, scope: !4071)
!4076 = !DILocation(line: 115, column: 7, scope: !4071)
!4077 = !DILocation(line: 120, column: 7, scope: !4071)
!4078 = !DILocation(line: 122, column: 7, scope: !4071)
!4079 = !DILocation(line: 127, column: 7, scope: !4071)
!4080 = !DILocation(line: 129, column: 7, scope: !4071)
!4081 = !DILocation(line: 134, column: 7, scope: !4071)
!4082 = !DILocation(line: 137, column: 7, scope: !4071)
!4083 = !DILocation(line: 142, column: 7, scope: !4071)
!4084 = !DILocation(line: 145, column: 7, scope: !4071)
!4085 = !DILocation(line: 150, column: 7, scope: !4071)
!4086 = !DILocation(line: 154, column: 7, scope: !4071)
!4087 = !DILocation(line: 159, column: 7, scope: !4071)
!4088 = !DILocation(line: 163, column: 7, scope: !4071)
!4089 = !DILocation(line: 170, column: 7, scope: !4071)
!4090 = !DILocation(line: 174, column: 7, scope: !4071)
!4091 = !DILocation(line: 176, column: 1, scope: !4014)
!4092 = distinct !DISubprogram(name: "version_etc_ar", scope: !695, file: !695, line: 183, type: !4093, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4095)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{null, !4017, !165, !165, !165, !4051}
!4095 = !{!4096, !4097, !4098, !4099, !4100, !4101}
!4096 = !DILocalVariable(name: "stream", arg: 1, scope: !4092, file: !695, line: 183, type: !4017)
!4097 = !DILocalVariable(name: "command_name", arg: 2, scope: !4092, file: !695, line: 184, type: !165)
!4098 = !DILocalVariable(name: "package", arg: 3, scope: !4092, file: !695, line: 184, type: !165)
!4099 = !DILocalVariable(name: "version", arg: 4, scope: !4092, file: !695, line: 185, type: !165)
!4100 = !DILocalVariable(name: "authors", arg: 5, scope: !4092, file: !695, line: 185, type: !4051)
!4101 = !DILocalVariable(name: "n_authors", scope: !4092, file: !695, line: 187, type: !162)
!4102 = !DILocation(line: 0, scope: !4092)
!4103 = !DILocation(line: 189, column: 8, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4092, file: !695, line: 189, column: 3)
!4105 = !DILocation(line: 189, scope: !4104)
!4106 = !DILocation(line: 189, column: 23, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4104, file: !695, line: 189, column: 3)
!4108 = !DILocation(line: 189, column: 3, scope: !4104)
!4109 = !DILocation(line: 189, column: 52, scope: !4107)
!4110 = distinct !{!4110, !4108, !4111, !1062}
!4111 = !DILocation(line: 190, column: 5, scope: !4104)
!4112 = !DILocation(line: 191, column: 3, scope: !4092)
!4113 = !DILocation(line: 192, column: 1, scope: !4092)
!4114 = distinct !DISubprogram(name: "version_etc_va", scope: !695, file: !695, line: 199, type: !4115, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4124)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{null, !4017, !165, !165, !165, !4117}
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4119)
!4119 = !{!4120, !4121, !4122, !4123}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4118, file: !695, line: 192, baseType: !103, size: 32)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4118, file: !695, line: 192, baseType: !103, size: 32, offset: 32)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4118, file: !695, line: 192, baseType: !160, size: 64, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4118, file: !695, line: 192, baseType: !160, size: 64, offset: 128)
!4124 = !{!4125, !4126, !4127, !4128, !4129, !4130, !4131}
!4125 = !DILocalVariable(name: "stream", arg: 1, scope: !4114, file: !695, line: 199, type: !4017)
!4126 = !DILocalVariable(name: "command_name", arg: 2, scope: !4114, file: !695, line: 200, type: !165)
!4127 = !DILocalVariable(name: "package", arg: 3, scope: !4114, file: !695, line: 200, type: !165)
!4128 = !DILocalVariable(name: "version", arg: 4, scope: !4114, file: !695, line: 201, type: !165)
!4129 = !DILocalVariable(name: "authors", arg: 5, scope: !4114, file: !695, line: 201, type: !4117)
!4130 = !DILocalVariable(name: "n_authors", scope: !4114, file: !695, line: 203, type: !162)
!4131 = !DILocalVariable(name: "authtab", scope: !4114, file: !695, line: 204, type: !4132)
!4132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 640, elements: !91)
!4133 = distinct !DIAssignID()
!4134 = !DILocation(line: 0, scope: !4114)
!4135 = !DILocation(line: 204, column: 3, scope: !4114)
!4136 = !DILocation(line: 208, column: 35, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4138, file: !695, line: 206, column: 3)
!4138 = distinct !DILexicalBlock(scope: !4114, file: !695, line: 206, column: 3)
!4139 = !DILocation(line: 208, column: 33, scope: !4137)
!4140 = !DILocation(line: 208, column: 67, scope: !4137)
!4141 = !DILocation(line: 206, column: 3, scope: !4138)
!4142 = !DILocation(line: 208, column: 14, scope: !4137)
!4143 = !DILocation(line: 0, scope: !4138)
!4144 = !DILocation(line: 211, column: 3, scope: !4114)
!4145 = !DILocation(line: 213, column: 1, scope: !4114)
!4146 = distinct !DISubprogram(name: "version_etc", scope: !695, file: !695, line: 230, type: !4147, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4149)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{null, !4017, !165, !165, !165, null}
!4149 = !{!4150, !4151, !4152, !4153, !4154}
!4150 = !DILocalVariable(name: "stream", arg: 1, scope: !4146, file: !695, line: 230, type: !4017)
!4151 = !DILocalVariable(name: "command_name", arg: 2, scope: !4146, file: !695, line: 231, type: !165)
!4152 = !DILocalVariable(name: "package", arg: 3, scope: !4146, file: !695, line: 231, type: !165)
!4153 = !DILocalVariable(name: "version", arg: 4, scope: !4146, file: !695, line: 232, type: !165)
!4154 = !DILocalVariable(name: "authors", scope: !4146, file: !695, line: 234, type: !4155)
!4155 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1010, line: 52, baseType: !4156)
!4156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1790, line: 12, baseType: !4157)
!4157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !695, baseType: !4158)
!4158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4118, size: 192, elements: !86)
!4159 = distinct !DIAssignID()
!4160 = !DILocation(line: 0, scope: !4146)
!4161 = !DILocation(line: 234, column: 3, scope: !4146)
!4162 = !DILocation(line: 235, column: 3, scope: !4146)
!4163 = !DILocation(line: 236, column: 3, scope: !4146)
!4164 = !DILocation(line: 237, column: 3, scope: !4146)
!4165 = !DILocation(line: 238, column: 1, scope: !4146)
!4166 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !695, file: !695, line: 241, type: !543, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869)
!4167 = !DILocation(line: 243, column: 3, scope: !4166)
!4168 = !DILocation(line: 248, column: 3, scope: !4166)
!4169 = !DILocation(line: 254, column: 3, scope: !4166)
!4170 = !DILocation(line: 259, column: 3, scope: !4166)
!4171 = !DILocation(line: 261, column: 1, scope: !4166)
!4172 = distinct !DISubprogram(name: "xnrealloc", scope: !4173, file: !4173, line: 147, type: !4174, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4176)
!4173 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!160, !160, !162, !162}
!4176 = !{!4177, !4178, !4179}
!4177 = !DILocalVariable(name: "p", arg: 1, scope: !4172, file: !4173, line: 147, type: !160)
!4178 = !DILocalVariable(name: "n", arg: 2, scope: !4172, file: !4173, line: 147, type: !162)
!4179 = !DILocalVariable(name: "s", arg: 3, scope: !4172, file: !4173, line: 147, type: !162)
!4180 = !DILocation(line: 0, scope: !4172)
!4181 = !DILocalVariable(name: "p", arg: 1, scope: !4182, file: !876, line: 83, type: !160)
!4182 = distinct !DISubprogram(name: "xreallocarray", scope: !876, file: !876, line: 83, type: !4174, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4183)
!4183 = !{!4181, !4184, !4185}
!4184 = !DILocalVariable(name: "n", arg: 2, scope: !4182, file: !876, line: 83, type: !162)
!4185 = !DILocalVariable(name: "s", arg: 3, scope: !4182, file: !876, line: 83, type: !162)
!4186 = !DILocation(line: 0, scope: !4182, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 149, column: 10, scope: !4172)
!4188 = !DILocation(line: 85, column: 25, scope: !4182, inlinedAt: !4187)
!4189 = !DILocalVariable(name: "p", arg: 1, scope: !4190, file: !876, line: 37, type: !160)
!4190 = distinct !DISubprogram(name: "check_nonnull", scope: !876, file: !876, line: 37, type: !4191, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4193)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!160, !160}
!4193 = !{!4189}
!4194 = !DILocation(line: 0, scope: !4190, inlinedAt: !4195)
!4195 = distinct !DILocation(line: 85, column: 10, scope: !4182, inlinedAt: !4187)
!4196 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4195)
!4197 = distinct !DILexicalBlock(scope: !4190, file: !876, line: 39, column: 7)
!4198 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4195)
!4199 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4195)
!4200 = !DILocation(line: 149, column: 3, scope: !4172)
!4201 = !DILocation(line: 0, scope: !4182)
!4202 = !DILocation(line: 85, column: 25, scope: !4182)
!4203 = !DILocation(line: 0, scope: !4190, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 85, column: 10, scope: !4182)
!4205 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4204)
!4206 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4204)
!4207 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4204)
!4208 = !DILocation(line: 85, column: 3, scope: !4182)
!4209 = distinct !DISubprogram(name: "xmalloc", scope: !876, file: !876, line: 47, type: !4210, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4212)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!160, !162}
!4212 = !{!4213}
!4213 = !DILocalVariable(name: "s", arg: 1, scope: !4209, file: !876, line: 47, type: !162)
!4214 = !DILocation(line: 0, scope: !4209)
!4215 = !DILocation(line: 49, column: 25, scope: !4209)
!4216 = !DILocation(line: 0, scope: !4190, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 49, column: 10, scope: !4209)
!4218 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4217)
!4219 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4217)
!4220 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4217)
!4221 = !DILocation(line: 49, column: 3, scope: !4209)
!4222 = !DISubprogram(name: "malloc", scope: !1139, file: !1139, line: 540, type: !4210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4223 = distinct !DISubprogram(name: "ximalloc", scope: !876, file: !876, line: 53, type: !4224, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4226)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!160, !895}
!4226 = !{!4227}
!4227 = !DILocalVariable(name: "s", arg: 1, scope: !4223, file: !876, line: 53, type: !895)
!4228 = !DILocation(line: 0, scope: !4223)
!4229 = !DILocalVariable(name: "s", arg: 1, scope: !4230, file: !4231, line: 55, type: !895)
!4230 = distinct !DISubprogram(name: "imalloc", scope: !4231, file: !4231, line: 55, type: !4224, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4232)
!4231 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4232 = !{!4229}
!4233 = !DILocation(line: 0, scope: !4230, inlinedAt: !4234)
!4234 = distinct !DILocation(line: 55, column: 25, scope: !4223)
!4235 = !DILocation(line: 57, column: 26, scope: !4230, inlinedAt: !4234)
!4236 = !DILocation(line: 0, scope: !4190, inlinedAt: !4237)
!4237 = distinct !DILocation(line: 55, column: 10, scope: !4223)
!4238 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4237)
!4239 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4237)
!4240 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4237)
!4241 = !DILocation(line: 55, column: 3, scope: !4223)
!4242 = distinct !DISubprogram(name: "xcharalloc", scope: !876, file: !876, line: 59, type: !4243, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4245)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!159, !162}
!4245 = !{!4246}
!4246 = !DILocalVariable(name: "n", arg: 1, scope: !4242, file: !876, line: 59, type: !162)
!4247 = !DILocation(line: 0, scope: !4242)
!4248 = !DILocation(line: 0, scope: !4209, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 61, column: 10, scope: !4242)
!4250 = !DILocation(line: 49, column: 25, scope: !4209, inlinedAt: !4249)
!4251 = !DILocation(line: 0, scope: !4190, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 49, column: 10, scope: !4209, inlinedAt: !4249)
!4253 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4252)
!4254 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4252)
!4255 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4252)
!4256 = !DILocation(line: 61, column: 3, scope: !4242)
!4257 = distinct !DISubprogram(name: "xrealloc", scope: !876, file: !876, line: 68, type: !4258, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4260)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!160, !160, !162}
!4260 = !{!4261, !4262}
!4261 = !DILocalVariable(name: "p", arg: 1, scope: !4257, file: !876, line: 68, type: !160)
!4262 = !DILocalVariable(name: "s", arg: 2, scope: !4257, file: !876, line: 68, type: !162)
!4263 = !DILocation(line: 0, scope: !4257)
!4264 = !DILocalVariable(name: "ptr", arg: 1, scope: !4265, file: !4266, line: 2057, type: !160)
!4265 = distinct !DISubprogram(name: "rpl_realloc", scope: !4266, file: !4266, line: 2057, type: !4258, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4267)
!4266 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4267 = !{!4264, !4268}
!4268 = !DILocalVariable(name: "size", arg: 2, scope: !4265, file: !4266, line: 2057, type: !162)
!4269 = !DILocation(line: 0, scope: !4265, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 70, column: 25, scope: !4257)
!4271 = !DILocation(line: 2059, column: 24, scope: !4265, inlinedAt: !4270)
!4272 = !DILocation(line: 2059, column: 10, scope: !4265, inlinedAt: !4270)
!4273 = !DILocation(line: 0, scope: !4190, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 70, column: 10, scope: !4257)
!4275 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4274)
!4276 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4274)
!4277 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4274)
!4278 = !DILocation(line: 70, column: 3, scope: !4257)
!4279 = !DISubprogram(name: "realloc", scope: !1139, file: !1139, line: 551, type: !4258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4280 = distinct !DISubprogram(name: "xirealloc", scope: !876, file: !876, line: 74, type: !4281, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4283)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!160, !160, !895}
!4283 = !{!4284, !4285}
!4284 = !DILocalVariable(name: "p", arg: 1, scope: !4280, file: !876, line: 74, type: !160)
!4285 = !DILocalVariable(name: "s", arg: 2, scope: !4280, file: !876, line: 74, type: !895)
!4286 = !DILocation(line: 0, scope: !4280)
!4287 = !DILocalVariable(name: "p", arg: 1, scope: !4288, file: !4231, line: 66, type: !160)
!4288 = distinct !DISubprogram(name: "irealloc", scope: !4231, file: !4231, line: 66, type: !4281, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4289)
!4289 = !{!4287, !4290}
!4290 = !DILocalVariable(name: "s", arg: 2, scope: !4288, file: !4231, line: 66, type: !895)
!4291 = !DILocation(line: 0, scope: !4288, inlinedAt: !4292)
!4292 = distinct !DILocation(line: 76, column: 25, scope: !4280)
!4293 = !DILocation(line: 0, scope: !4265, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 68, column: 26, scope: !4288, inlinedAt: !4292)
!4295 = !DILocation(line: 2059, column: 24, scope: !4265, inlinedAt: !4294)
!4296 = !DILocation(line: 2059, column: 10, scope: !4265, inlinedAt: !4294)
!4297 = !DILocation(line: 0, scope: !4190, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 76, column: 10, scope: !4280)
!4299 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4298)
!4300 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4298)
!4301 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4298)
!4302 = !DILocation(line: 76, column: 3, scope: !4280)
!4303 = distinct !DISubprogram(name: "xireallocarray", scope: !876, file: !876, line: 89, type: !4304, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4306)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!160, !160, !895, !895}
!4306 = !{!4307, !4308, !4309}
!4307 = !DILocalVariable(name: "p", arg: 1, scope: !4303, file: !876, line: 89, type: !160)
!4308 = !DILocalVariable(name: "n", arg: 2, scope: !4303, file: !876, line: 89, type: !895)
!4309 = !DILocalVariable(name: "s", arg: 3, scope: !4303, file: !876, line: 89, type: !895)
!4310 = !DILocation(line: 0, scope: !4303)
!4311 = !DILocalVariable(name: "p", arg: 1, scope: !4312, file: !4231, line: 98, type: !160)
!4312 = distinct !DISubprogram(name: "ireallocarray", scope: !4231, file: !4231, line: 98, type: !4304, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4313)
!4313 = !{!4311, !4314, !4315}
!4314 = !DILocalVariable(name: "n", arg: 2, scope: !4312, file: !4231, line: 98, type: !895)
!4315 = !DILocalVariable(name: "s", arg: 3, scope: !4312, file: !4231, line: 98, type: !895)
!4316 = !DILocation(line: 0, scope: !4312, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 91, column: 25, scope: !4303)
!4318 = !DILocation(line: 101, column: 13, scope: !4312, inlinedAt: !4317)
!4319 = !DILocation(line: 0, scope: !4190, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 91, column: 10, scope: !4303)
!4321 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4320)
!4322 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4320)
!4323 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4320)
!4324 = !DILocation(line: 91, column: 3, scope: !4303)
!4325 = distinct !DISubprogram(name: "xnmalloc", scope: !876, file: !876, line: 98, type: !4326, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4328)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!160, !162, !162}
!4328 = !{!4329, !4330}
!4329 = !DILocalVariable(name: "n", arg: 1, scope: !4325, file: !876, line: 98, type: !162)
!4330 = !DILocalVariable(name: "s", arg: 2, scope: !4325, file: !876, line: 98, type: !162)
!4331 = !DILocation(line: 0, scope: !4325)
!4332 = !DILocation(line: 0, scope: !4182, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 100, column: 10, scope: !4325)
!4334 = !DILocation(line: 85, column: 25, scope: !4182, inlinedAt: !4333)
!4335 = !DILocation(line: 0, scope: !4190, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 85, column: 10, scope: !4182, inlinedAt: !4333)
!4337 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4336)
!4338 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4336)
!4339 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4336)
!4340 = !DILocation(line: 100, column: 3, scope: !4325)
!4341 = distinct !DISubprogram(name: "xinmalloc", scope: !876, file: !876, line: 104, type: !4342, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4344)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!160, !895, !895}
!4344 = !{!4345, !4346}
!4345 = !DILocalVariable(name: "n", arg: 1, scope: !4341, file: !876, line: 104, type: !895)
!4346 = !DILocalVariable(name: "s", arg: 2, scope: !4341, file: !876, line: 104, type: !895)
!4347 = !DILocation(line: 0, scope: !4341)
!4348 = !DILocation(line: 0, scope: !4303, inlinedAt: !4349)
!4349 = distinct !DILocation(line: 106, column: 10, scope: !4341)
!4350 = !DILocation(line: 0, scope: !4312, inlinedAt: !4351)
!4351 = distinct !DILocation(line: 91, column: 25, scope: !4303, inlinedAt: !4349)
!4352 = !DILocation(line: 101, column: 13, scope: !4312, inlinedAt: !4351)
!4353 = !DILocation(line: 0, scope: !4190, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 91, column: 10, scope: !4303, inlinedAt: !4349)
!4355 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4354)
!4356 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4354)
!4357 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4354)
!4358 = !DILocation(line: 106, column: 3, scope: !4341)
!4359 = distinct !DISubprogram(name: "x2realloc", scope: !876, file: !876, line: 116, type: !4360, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4362)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!160, !160, !882}
!4362 = !{!4363, !4364}
!4363 = !DILocalVariable(name: "p", arg: 1, scope: !4359, file: !876, line: 116, type: !160)
!4364 = !DILocalVariable(name: "ps", arg: 2, scope: !4359, file: !876, line: 116, type: !882)
!4365 = !DILocation(line: 0, scope: !4359)
!4366 = !DILocation(line: 0, scope: !879, inlinedAt: !4367)
!4367 = distinct !DILocation(line: 118, column: 10, scope: !4359)
!4368 = !DILocation(line: 178, column: 14, scope: !879, inlinedAt: !4367)
!4369 = !DILocation(line: 180, column: 9, scope: !4370, inlinedAt: !4367)
!4370 = distinct !DILexicalBlock(scope: !879, file: !876, line: 180, column: 7)
!4371 = !DILocation(line: 180, column: 7, scope: !879, inlinedAt: !4367)
!4372 = !DILocation(line: 182, column: 13, scope: !4373, inlinedAt: !4367)
!4373 = distinct !DILexicalBlock(scope: !4374, file: !876, line: 182, column: 11)
!4374 = distinct !DILexicalBlock(scope: !4370, file: !876, line: 181, column: 5)
!4375 = !DILocation(line: 182, column: 11, scope: !4374, inlinedAt: !4367)
!4376 = !DILocation(line: 197, column: 11, scope: !4377, inlinedAt: !4367)
!4377 = distinct !DILexicalBlock(scope: !4378, file: !876, line: 197, column: 11)
!4378 = distinct !DILexicalBlock(scope: !4370, file: !876, line: 195, column: 5)
!4379 = !DILocation(line: 197, column: 11, scope: !4378, inlinedAt: !4367)
!4380 = !DILocation(line: 198, column: 9, scope: !4377, inlinedAt: !4367)
!4381 = !DILocation(line: 0, scope: !4182, inlinedAt: !4382)
!4382 = distinct !DILocation(line: 201, column: 7, scope: !879, inlinedAt: !4367)
!4383 = !DILocation(line: 85, column: 25, scope: !4182, inlinedAt: !4382)
!4384 = !DILocation(line: 0, scope: !4190, inlinedAt: !4385)
!4385 = distinct !DILocation(line: 85, column: 10, scope: !4182, inlinedAt: !4382)
!4386 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4385)
!4387 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4385)
!4388 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4385)
!4389 = !DILocation(line: 202, column: 7, scope: !879, inlinedAt: !4367)
!4390 = !DILocation(line: 118, column: 3, scope: !4359)
!4391 = !DILocation(line: 0, scope: !879)
!4392 = !DILocation(line: 178, column: 14, scope: !879)
!4393 = !DILocation(line: 180, column: 9, scope: !4370)
!4394 = !DILocation(line: 180, column: 7, scope: !879)
!4395 = !DILocation(line: 182, column: 13, scope: !4373)
!4396 = !DILocation(line: 182, column: 11, scope: !4374)
!4397 = !DILocation(line: 190, column: 30, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4373, file: !876, line: 183, column: 9)
!4399 = !DILocation(line: 191, column: 16, scope: !4398)
!4400 = !DILocation(line: 191, column: 13, scope: !4398)
!4401 = !DILocation(line: 192, column: 9, scope: !4398)
!4402 = !DILocation(line: 197, column: 11, scope: !4377)
!4403 = !DILocation(line: 197, column: 11, scope: !4378)
!4404 = !DILocation(line: 198, column: 9, scope: !4377)
!4405 = !DILocation(line: 0, scope: !4182, inlinedAt: !4406)
!4406 = distinct !DILocation(line: 201, column: 7, scope: !879)
!4407 = !DILocation(line: 85, column: 25, scope: !4182, inlinedAt: !4406)
!4408 = !DILocation(line: 0, scope: !4190, inlinedAt: !4409)
!4409 = distinct !DILocation(line: 85, column: 10, scope: !4182, inlinedAt: !4406)
!4410 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4409)
!4411 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4409)
!4412 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4409)
!4413 = !DILocation(line: 202, column: 7, scope: !879)
!4414 = !DILocation(line: 203, column: 3, scope: !879)
!4415 = !DILocation(line: 0, scope: !891)
!4416 = !DILocation(line: 230, column: 14, scope: !891)
!4417 = !DILocation(line: 238, column: 7, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !891, file: !876, line: 238, column: 7)
!4419 = !DILocation(line: 238, column: 7, scope: !891)
!4420 = !DILocation(line: 240, column: 9, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !891, file: !876, line: 240, column: 7)
!4422 = !DILocation(line: 240, column: 18, scope: !4421)
!4423 = !DILocation(line: 253, column: 8, scope: !891)
!4424 = !DILocation(line: 256, column: 7, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !891, file: !876, line: 256, column: 7)
!4426 = !DILocation(line: 256, column: 7, scope: !891)
!4427 = !DILocation(line: 258, column: 27, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4425, file: !876, line: 257, column: 5)
!4429 = !DILocation(line: 259, column: 50, scope: !4428)
!4430 = !DILocation(line: 259, column: 32, scope: !4428)
!4431 = !DILocation(line: 260, column: 5, scope: !4428)
!4432 = !DILocation(line: 262, column: 9, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !891, file: !876, line: 262, column: 7)
!4434 = !DILocation(line: 262, column: 7, scope: !891)
!4435 = !DILocation(line: 263, column: 9, scope: !4433)
!4436 = !DILocation(line: 263, column: 5, scope: !4433)
!4437 = !DILocation(line: 264, column: 9, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !891, file: !876, line: 264, column: 7)
!4439 = !DILocation(line: 264, column: 14, scope: !4438)
!4440 = !DILocation(line: 265, column: 7, scope: !4438)
!4441 = !DILocation(line: 265, column: 11, scope: !4438)
!4442 = !DILocation(line: 266, column: 11, scope: !4438)
!4443 = !DILocation(line: 267, column: 14, scope: !4438)
!4444 = !DILocation(line: 264, column: 7, scope: !891)
!4445 = !DILocation(line: 268, column: 5, scope: !4438)
!4446 = !DILocation(line: 0, scope: !4257, inlinedAt: !4447)
!4447 = distinct !DILocation(line: 269, column: 8, scope: !891)
!4448 = !DILocation(line: 0, scope: !4265, inlinedAt: !4449)
!4449 = distinct !DILocation(line: 70, column: 25, scope: !4257, inlinedAt: !4447)
!4450 = !DILocation(line: 2059, column: 24, scope: !4265, inlinedAt: !4449)
!4451 = !DILocation(line: 2059, column: 10, scope: !4265, inlinedAt: !4449)
!4452 = !DILocation(line: 0, scope: !4190, inlinedAt: !4453)
!4453 = distinct !DILocation(line: 70, column: 10, scope: !4257, inlinedAt: !4447)
!4454 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4453)
!4455 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4453)
!4456 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4453)
!4457 = !DILocation(line: 270, column: 7, scope: !891)
!4458 = !DILocation(line: 271, column: 3, scope: !891)
!4459 = distinct !DISubprogram(name: "xzalloc", scope: !876, file: !876, line: 279, type: !4210, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4460)
!4460 = !{!4461}
!4461 = !DILocalVariable(name: "s", arg: 1, scope: !4459, file: !876, line: 279, type: !162)
!4462 = !DILocation(line: 0, scope: !4459)
!4463 = !DILocalVariable(name: "n", arg: 1, scope: !4464, file: !876, line: 294, type: !162)
!4464 = distinct !DISubprogram(name: "xcalloc", scope: !876, file: !876, line: 294, type: !4326, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4465)
!4465 = !{!4463, !4466}
!4466 = !DILocalVariable(name: "s", arg: 2, scope: !4464, file: !876, line: 294, type: !162)
!4467 = !DILocation(line: 0, scope: !4464, inlinedAt: !4468)
!4468 = distinct !DILocation(line: 281, column: 10, scope: !4459)
!4469 = !DILocation(line: 296, column: 25, scope: !4464, inlinedAt: !4468)
!4470 = !DILocation(line: 0, scope: !4190, inlinedAt: !4471)
!4471 = distinct !DILocation(line: 296, column: 10, scope: !4464, inlinedAt: !4468)
!4472 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4471)
!4473 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4471)
!4474 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4471)
!4475 = !DILocation(line: 281, column: 3, scope: !4459)
!4476 = !DISubprogram(name: "calloc", scope: !1139, file: !1139, line: 543, type: !4326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4477 = !DILocation(line: 0, scope: !4464)
!4478 = !DILocation(line: 296, column: 25, scope: !4464)
!4479 = !DILocation(line: 0, scope: !4190, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 296, column: 10, scope: !4464)
!4481 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4480)
!4482 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4480)
!4483 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4480)
!4484 = !DILocation(line: 296, column: 3, scope: !4464)
!4485 = distinct !DISubprogram(name: "xizalloc", scope: !876, file: !876, line: 285, type: !4224, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4486)
!4486 = !{!4487}
!4487 = !DILocalVariable(name: "s", arg: 1, scope: !4485, file: !876, line: 285, type: !895)
!4488 = !DILocation(line: 0, scope: !4485)
!4489 = !DILocalVariable(name: "n", arg: 1, scope: !4490, file: !876, line: 300, type: !895)
!4490 = distinct !DISubprogram(name: "xicalloc", scope: !876, file: !876, line: 300, type: !4342, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4491)
!4491 = !{!4489, !4492}
!4492 = !DILocalVariable(name: "s", arg: 2, scope: !4490, file: !876, line: 300, type: !895)
!4493 = !DILocation(line: 0, scope: !4490, inlinedAt: !4494)
!4494 = distinct !DILocation(line: 287, column: 10, scope: !4485)
!4495 = !DILocalVariable(name: "n", arg: 1, scope: !4496, file: !4231, line: 77, type: !895)
!4496 = distinct !DISubprogram(name: "icalloc", scope: !4231, file: !4231, line: 77, type: !4342, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4497)
!4497 = !{!4495, !4498}
!4498 = !DILocalVariable(name: "s", arg: 2, scope: !4496, file: !4231, line: 77, type: !895)
!4499 = !DILocation(line: 0, scope: !4496, inlinedAt: !4500)
!4500 = distinct !DILocation(line: 302, column: 25, scope: !4490, inlinedAt: !4494)
!4501 = !DILocation(line: 91, column: 10, scope: !4496, inlinedAt: !4500)
!4502 = !DILocation(line: 0, scope: !4190, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 302, column: 10, scope: !4490, inlinedAt: !4494)
!4504 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4503)
!4505 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4503)
!4506 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4503)
!4507 = !DILocation(line: 287, column: 3, scope: !4485)
!4508 = !DILocation(line: 0, scope: !4490)
!4509 = !DILocation(line: 0, scope: !4496, inlinedAt: !4510)
!4510 = distinct !DILocation(line: 302, column: 25, scope: !4490)
!4511 = !DILocation(line: 91, column: 10, scope: !4496, inlinedAt: !4510)
!4512 = !DILocation(line: 0, scope: !4190, inlinedAt: !4513)
!4513 = distinct !DILocation(line: 302, column: 10, scope: !4490)
!4514 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4513)
!4515 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4513)
!4516 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4513)
!4517 = !DILocation(line: 302, column: 3, scope: !4490)
!4518 = distinct !DISubprogram(name: "xmemdup", scope: !876, file: !876, line: 310, type: !4519, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4521)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!160, !1163, !162}
!4521 = !{!4522, !4523}
!4522 = !DILocalVariable(name: "p", arg: 1, scope: !4518, file: !876, line: 310, type: !1163)
!4523 = !DILocalVariable(name: "s", arg: 2, scope: !4518, file: !876, line: 310, type: !162)
!4524 = !DILocation(line: 0, scope: !4518)
!4525 = !DILocation(line: 0, scope: !4209, inlinedAt: !4526)
!4526 = distinct !DILocation(line: 312, column: 18, scope: !4518)
!4527 = !DILocation(line: 49, column: 25, scope: !4209, inlinedAt: !4526)
!4528 = !DILocation(line: 0, scope: !4190, inlinedAt: !4529)
!4529 = distinct !DILocation(line: 49, column: 10, scope: !4209, inlinedAt: !4526)
!4530 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4529)
!4531 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4529)
!4532 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4529)
!4533 = !DILocalVariable(name: "__dest", arg: 1, scope: !4534, file: !2308, line: 26, type: !3986)
!4534 = distinct !DISubprogram(name: "memcpy", scope: !2308, file: !2308, line: 26, type: !3984, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4535)
!4535 = !{!4533, !4536, !4537}
!4536 = !DILocalVariable(name: "__src", arg: 2, scope: !4534, file: !2308, line: 26, type: !1162)
!4537 = !DILocalVariable(name: "__len", arg: 3, scope: !4534, file: !2308, line: 26, type: !162)
!4538 = !DILocation(line: 0, scope: !4534, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 312, column: 10, scope: !4518)
!4540 = !DILocation(line: 29, column: 10, scope: !4534, inlinedAt: !4539)
!4541 = !DILocation(line: 312, column: 3, scope: !4518)
!4542 = distinct !DISubprogram(name: "ximemdup", scope: !876, file: !876, line: 316, type: !4543, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4545)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!160, !1163, !895}
!4545 = !{!4546, !4547}
!4546 = !DILocalVariable(name: "p", arg: 1, scope: !4542, file: !876, line: 316, type: !1163)
!4547 = !DILocalVariable(name: "s", arg: 2, scope: !4542, file: !876, line: 316, type: !895)
!4548 = !DILocation(line: 0, scope: !4542)
!4549 = !DILocation(line: 0, scope: !4223, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 318, column: 18, scope: !4542)
!4551 = !DILocation(line: 0, scope: !4230, inlinedAt: !4552)
!4552 = distinct !DILocation(line: 55, column: 25, scope: !4223, inlinedAt: !4550)
!4553 = !DILocation(line: 57, column: 26, scope: !4230, inlinedAt: !4552)
!4554 = !DILocation(line: 0, scope: !4190, inlinedAt: !4555)
!4555 = distinct !DILocation(line: 55, column: 10, scope: !4223, inlinedAt: !4550)
!4556 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4555)
!4557 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4555)
!4558 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4555)
!4559 = !DILocation(line: 0, scope: !4534, inlinedAt: !4560)
!4560 = distinct !DILocation(line: 318, column: 10, scope: !4542)
!4561 = !DILocation(line: 29, column: 10, scope: !4534, inlinedAt: !4560)
!4562 = !DILocation(line: 318, column: 3, scope: !4542)
!4563 = distinct !DISubprogram(name: "ximemdup0", scope: !876, file: !876, line: 325, type: !4564, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4566)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!159, !1163, !895}
!4566 = !{!4567, !4568, !4569}
!4567 = !DILocalVariable(name: "p", arg: 1, scope: !4563, file: !876, line: 325, type: !1163)
!4568 = !DILocalVariable(name: "s", arg: 2, scope: !4563, file: !876, line: 325, type: !895)
!4569 = !DILocalVariable(name: "result", scope: !4563, file: !876, line: 327, type: !159)
!4570 = !DILocation(line: 0, scope: !4563)
!4571 = !DILocation(line: 327, column: 30, scope: !4563)
!4572 = !DILocation(line: 0, scope: !4223, inlinedAt: !4573)
!4573 = distinct !DILocation(line: 327, column: 18, scope: !4563)
!4574 = !DILocation(line: 0, scope: !4230, inlinedAt: !4575)
!4575 = distinct !DILocation(line: 55, column: 25, scope: !4223, inlinedAt: !4573)
!4576 = !DILocation(line: 57, column: 26, scope: !4230, inlinedAt: !4575)
!4577 = !DILocation(line: 0, scope: !4190, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 55, column: 10, scope: !4223, inlinedAt: !4573)
!4579 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4578)
!4580 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4578)
!4581 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4578)
!4582 = !DILocation(line: 328, column: 3, scope: !4563)
!4583 = !DILocation(line: 328, column: 13, scope: !4563)
!4584 = !DILocation(line: 0, scope: !4534, inlinedAt: !4585)
!4585 = distinct !DILocation(line: 329, column: 10, scope: !4563)
!4586 = !DILocation(line: 29, column: 10, scope: !4534, inlinedAt: !4585)
!4587 = !DILocation(line: 329, column: 3, scope: !4563)
!4588 = distinct !DISubprogram(name: "xstrdup", scope: !876, file: !876, line: 335, type: !1141, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4589)
!4589 = !{!4590}
!4590 = !DILocalVariable(name: "string", arg: 1, scope: !4588, file: !876, line: 335, type: !165)
!4591 = !DILocation(line: 0, scope: !4588)
!4592 = !DILocation(line: 337, column: 27, scope: !4588)
!4593 = !DILocation(line: 337, column: 43, scope: !4588)
!4594 = !DILocation(line: 0, scope: !4518, inlinedAt: !4595)
!4595 = distinct !DILocation(line: 337, column: 10, scope: !4588)
!4596 = !DILocation(line: 0, scope: !4209, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 312, column: 18, scope: !4518, inlinedAt: !4595)
!4598 = !DILocation(line: 49, column: 25, scope: !4209, inlinedAt: !4597)
!4599 = !DILocation(line: 0, scope: !4190, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 49, column: 10, scope: !4209, inlinedAt: !4597)
!4601 = !DILocation(line: 39, column: 8, scope: !4197, inlinedAt: !4600)
!4602 = !DILocation(line: 39, column: 7, scope: !4190, inlinedAt: !4600)
!4603 = !DILocation(line: 40, column: 5, scope: !4197, inlinedAt: !4600)
!4604 = !DILocation(line: 0, scope: !4534, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 312, column: 10, scope: !4518, inlinedAt: !4595)
!4606 = !DILocation(line: 29, column: 10, scope: !4534, inlinedAt: !4605)
!4607 = !DILocation(line: 337, column: 3, scope: !4588)
!4608 = distinct !DISubprogram(name: "xalloc_die", scope: !776, file: !776, line: 32, type: !543, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4609)
!4609 = !{!4610}
!4610 = !DILocalVariable(name: "__errstatus", scope: !4611, file: !776, line: 34, type: !1558)
!4611 = distinct !DILexicalBlock(scope: !4608, file: !776, line: 34, column: 3)
!4612 = !DILocation(line: 34, column: 3, scope: !4611)
!4613 = !DILocation(line: 0, scope: !4611)
!4614 = !DILocation(line: 40, column: 3, scope: !4608)
!4615 = distinct !DISubprogram(name: "xmemcoll", scope: !783, file: !783, line: 54, type: !4616, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !912, retainedNodes: !4618)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!116, !159, !162, !159, !162}
!4618 = !{!4619, !4620, !4621, !4622, !4623, !4624}
!4619 = !DILocalVariable(name: "s1", arg: 1, scope: !4615, file: !783, line: 54, type: !159)
!4620 = !DILocalVariable(name: "s1len", arg: 2, scope: !4615, file: !783, line: 54, type: !162)
!4621 = !DILocalVariable(name: "s2", arg: 3, scope: !4615, file: !783, line: 54, type: !159)
!4622 = !DILocalVariable(name: "s2len", arg: 4, scope: !4615, file: !783, line: 54, type: !162)
!4623 = !DILocalVariable(name: "diff", scope: !4615, file: !783, line: 56, type: !116)
!4624 = !DILocalVariable(name: "collation_errno", scope: !4615, file: !783, line: 57, type: !116)
!4625 = !DILocation(line: 0, scope: !4615)
!4626 = !DILocation(line: 56, column: 14, scope: !4615)
!4627 = !DILocation(line: 57, column: 25, scope: !4615)
!4628 = !DILocation(line: 58, column: 7, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4615, file: !783, line: 58, column: 7)
!4630 = !DILocation(line: 58, column: 7, scope: !4615)
!4631 = !DILocalVariable(name: "collation_errno", arg: 1, scope: !4632, file: !783, line: 35, type: !116)
!4632 = distinct !DISubprogram(name: "collate_error", scope: !783, file: !783, line: 35, type: !4633, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !912, retainedNodes: !4635)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{null, !116, !165, !162, !165, !162}
!4635 = !{!4631, !4636, !4637, !4638, !4639, !4640}
!4636 = !DILocalVariable(name: "s1", arg: 2, scope: !4632, file: !783, line: 36, type: !165)
!4637 = !DILocalVariable(name: "s1len", arg: 3, scope: !4632, file: !783, line: 36, type: !162)
!4638 = !DILocalVariable(name: "s2", arg: 4, scope: !4632, file: !783, line: 37, type: !165)
!4639 = !DILocalVariable(name: "s2len", arg: 5, scope: !4632, file: !783, line: 37, type: !162)
!4640 = !DILocalVariable(name: "__errstatus", scope: !4641, file: !783, line: 41, type: !1558)
!4641 = distinct !DILexicalBlock(scope: !4632, file: !783, line: 41, column: 3)
!4642 = !DILocation(line: 0, scope: !4632, inlinedAt: !4643)
!4643 = distinct !DILocation(line: 59, column: 5, scope: !4629)
!4644 = !DILocation(line: 39, column: 3, scope: !4632, inlinedAt: !4643)
!4645 = !DILocation(line: 40, column: 3, scope: !4632, inlinedAt: !4643)
!4646 = !DILocation(line: 41, column: 3, scope: !4641, inlinedAt: !4643)
!4647 = !DILocation(line: 0, scope: !4641, inlinedAt: !4643)
!4648 = !DILocation(line: 59, column: 5, scope: !4629)
!4649 = !DILocation(line: 60, column: 3, scope: !4615)
!4650 = distinct !DISubprogram(name: "xmemcoll0", scope: !783, file: !783, line: 69, type: !2500, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !912, retainedNodes: !4651)
!4651 = !{!4652, !4653, !4654, !4655, !4656, !4657}
!4652 = !DILocalVariable(name: "s1", arg: 1, scope: !4650, file: !783, line: 69, type: !165)
!4653 = !DILocalVariable(name: "s1size", arg: 2, scope: !4650, file: !783, line: 69, type: !162)
!4654 = !DILocalVariable(name: "s2", arg: 3, scope: !4650, file: !783, line: 69, type: !165)
!4655 = !DILocalVariable(name: "s2size", arg: 4, scope: !4650, file: !783, line: 69, type: !162)
!4656 = !DILocalVariable(name: "diff", scope: !4650, file: !783, line: 71, type: !116)
!4657 = !DILocalVariable(name: "collation_errno", scope: !4650, file: !783, line: 72, type: !116)
!4658 = !DILocation(line: 0, scope: !4650)
!4659 = !DILocation(line: 71, column: 14, scope: !4650)
!4660 = !DILocation(line: 72, column: 25, scope: !4650)
!4661 = !DILocation(line: 73, column: 7, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4650, file: !783, line: 73, column: 7)
!4663 = !DILocation(line: 73, column: 7, scope: !4650)
!4664 = !DILocation(line: 74, column: 48, scope: !4662)
!4665 = !DILocation(line: 74, column: 64, scope: !4662)
!4666 = !DILocation(line: 0, scope: !4632, inlinedAt: !4667)
!4667 = distinct !DILocation(line: 74, column: 5, scope: !4662)
!4668 = !DILocation(line: 39, column: 3, scope: !4632, inlinedAt: !4667)
!4669 = !DILocation(line: 40, column: 3, scope: !4632, inlinedAt: !4667)
!4670 = !DILocation(line: 41, column: 3, scope: !4641, inlinedAt: !4667)
!4671 = !DILocation(line: 0, scope: !4641, inlinedAt: !4667)
!4672 = !DILocation(line: 74, column: 5, scope: !4662)
!4673 = !DILocation(line: 75, column: 3, scope: !4650)
!4674 = distinct !DISubprogram(name: "rpl_fopen", scope: !916, file: !916, line: 46, type: !4675, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !4711)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!4677, !165, !165}
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4679)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4680)
!4680 = !{!4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4679, file: !236, line: 51, baseType: !116, size: 32)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4679, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4679, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4679, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4679, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4679, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4679, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4679, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4679, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4679, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4679, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4679, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4679, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4679, file: !236, line: 70, baseType: !4695, size: 64, offset: 832)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4679, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4679, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4679, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4679, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4679, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4679, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4679, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4679, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4679, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4679, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4679, file: !236, line: 93, baseType: !4695, size: 64, offset: 1344)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4679, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4679, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4679, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4679, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!4711 = !{!4712, !4713, !4714, !4715, !4716, !4717, !4721, !4723, !4724, !4729, !4732, !4733}
!4712 = !DILocalVariable(name: "filename", arg: 1, scope: !4674, file: !916, line: 46, type: !165)
!4713 = !DILocalVariable(name: "mode", arg: 2, scope: !4674, file: !916, line: 46, type: !165)
!4714 = !DILocalVariable(name: "open_direction", scope: !4674, file: !916, line: 54, type: !116)
!4715 = !DILocalVariable(name: "open_flags", scope: !4674, file: !916, line: 55, type: !116)
!4716 = !DILocalVariable(name: "open_flags_gnu", scope: !4674, file: !916, line: 57, type: !205)
!4717 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4674, file: !916, line: 59, type: !4718)
!4718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4719)
!4719 = !{!4720}
!4720 = !DISubrange(count: 81)
!4721 = !DILocalVariable(name: "p", scope: !4722, file: !916, line: 62, type: !165)
!4722 = distinct !DILexicalBlock(scope: !4674, file: !916, line: 61, column: 3)
!4723 = !DILocalVariable(name: "q", scope: !4722, file: !916, line: 64, type: !159)
!4724 = !DILocalVariable(name: "len", scope: !4725, file: !916, line: 128, type: !162)
!4725 = distinct !DILexicalBlock(scope: !4726, file: !916, line: 127, column: 9)
!4726 = distinct !DILexicalBlock(scope: !4727, file: !916, line: 68, column: 7)
!4727 = distinct !DILexicalBlock(scope: !4728, file: !916, line: 67, column: 5)
!4728 = distinct !DILexicalBlock(scope: !4722, file: !916, line: 67, column: 5)
!4729 = !DILocalVariable(name: "fd", scope: !4730, file: !916, line: 199, type: !116)
!4730 = distinct !DILexicalBlock(scope: !4731, file: !916, line: 198, column: 5)
!4731 = distinct !DILexicalBlock(scope: !4674, file: !916, line: 197, column: 7)
!4732 = !DILocalVariable(name: "fp", scope: !4730, file: !916, line: 204, type: !4677)
!4733 = !DILocalVariable(name: "saved_errno", scope: !4734, file: !916, line: 207, type: !116)
!4734 = distinct !DILexicalBlock(scope: !4735, file: !916, line: 206, column: 9)
!4735 = distinct !DILexicalBlock(scope: !4730, file: !916, line: 205, column: 11)
!4736 = distinct !DIAssignID()
!4737 = !DILocation(line: 0, scope: !4674)
!4738 = !DILocation(line: 59, column: 3, scope: !4674)
!4739 = !DILocation(line: 0, scope: !4722)
!4740 = !DILocation(line: 67, column: 5, scope: !4722)
!4741 = !DILocation(line: 54, column: 7, scope: !4674)
!4742 = !DILocation(line: 67, column: 12, scope: !4727)
!4743 = !DILocation(line: 67, column: 5, scope: !4728)
!4744 = !DILocation(line: 74, column: 19, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4746, file: !916, line: 74, column: 17)
!4746 = distinct !DILexicalBlock(scope: !4726, file: !916, line: 70, column: 11)
!4747 = !DILocation(line: 74, column: 17, scope: !4746)
!4748 = !DILocation(line: 75, column: 17, scope: !4745)
!4749 = !DILocation(line: 75, column: 20, scope: !4745)
!4750 = !DILocation(line: 75, column: 15, scope: !4745)
!4751 = !DILocation(line: 80, column: 24, scope: !4746)
!4752 = !DILocation(line: 82, column: 19, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4746, file: !916, line: 82, column: 17)
!4754 = !DILocation(line: 82, column: 17, scope: !4746)
!4755 = !DILocation(line: 83, column: 17, scope: !4753)
!4756 = !DILocation(line: 83, column: 20, scope: !4753)
!4757 = !DILocation(line: 83, column: 15, scope: !4753)
!4758 = !DILocation(line: 88, column: 24, scope: !4746)
!4759 = !DILocation(line: 90, column: 19, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4746, file: !916, line: 90, column: 17)
!4761 = !DILocation(line: 90, column: 17, scope: !4746)
!4762 = !DILocation(line: 91, column: 17, scope: !4760)
!4763 = !DILocation(line: 91, column: 20, scope: !4760)
!4764 = !DILocation(line: 91, column: 15, scope: !4760)
!4765 = !DILocation(line: 100, column: 19, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4746, file: !916, line: 100, column: 17)
!4767 = !DILocation(line: 100, column: 17, scope: !4746)
!4768 = !DILocation(line: 101, column: 17, scope: !4766)
!4769 = !DILocation(line: 101, column: 20, scope: !4766)
!4770 = !DILocation(line: 101, column: 15, scope: !4766)
!4771 = !DILocation(line: 107, column: 19, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4746, file: !916, line: 107, column: 17)
!4773 = !DILocation(line: 107, column: 17, scope: !4746)
!4774 = !DILocation(line: 108, column: 17, scope: !4772)
!4775 = !DILocation(line: 108, column: 20, scope: !4772)
!4776 = !DILocation(line: 108, column: 15, scope: !4772)
!4777 = !DILocation(line: 113, column: 24, scope: !4746)
!4778 = !DILocation(line: 115, column: 13, scope: !4746)
!4779 = !DILocation(line: 117, column: 24, scope: !4746)
!4780 = !DILocation(line: 119, column: 13, scope: !4746)
!4781 = !DILocation(line: 128, column: 24, scope: !4725)
!4782 = !DILocation(line: 0, scope: !4725)
!4783 = !DILocation(line: 129, column: 48, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4725, file: !916, line: 129, column: 15)
!4785 = !DILocation(line: 129, column: 15, scope: !4725)
!4786 = !DILocalVariable(name: "__dest", arg: 1, scope: !4787, file: !2308, line: 26, type: !3986)
!4787 = distinct !DISubprogram(name: "memcpy", scope: !2308, file: !2308, line: 26, type: !3984, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !4788)
!4788 = !{!4786, !4789, !4790}
!4789 = !DILocalVariable(name: "__src", arg: 2, scope: !4787, file: !2308, line: 26, type: !1162)
!4790 = !DILocalVariable(name: "__len", arg: 3, scope: !4787, file: !2308, line: 26, type: !162)
!4791 = !DILocation(line: 0, scope: !4787, inlinedAt: !4792)
!4792 = distinct !DILocation(line: 131, column: 11, scope: !4725)
!4793 = !DILocation(line: 29, column: 10, scope: !4787, inlinedAt: !4792)
!4794 = !DILocation(line: 132, column: 13, scope: !4725)
!4795 = !DILocation(line: 135, column: 9, scope: !4726)
!4796 = !DILocation(line: 67, column: 25, scope: !4727)
!4797 = !DILocation(line: 67, column: 5, scope: !4727)
!4798 = distinct !{!4798, !4743, !4799, !1062}
!4799 = !DILocation(line: 136, column: 7, scope: !4728)
!4800 = !DILocation(line: 138, column: 8, scope: !4722)
!4801 = !DILocation(line: 197, column: 7, scope: !4731)
!4802 = !DILocation(line: 197, column: 7, scope: !4674)
!4803 = !DILocation(line: 199, column: 47, scope: !4730)
!4804 = !DILocation(line: 199, column: 16, scope: !4730)
!4805 = !DILocation(line: 0, scope: !4730)
!4806 = !DILocation(line: 201, column: 14, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4730, file: !916, line: 201, column: 11)
!4808 = !DILocation(line: 201, column: 11, scope: !4730)
!4809 = !DILocation(line: 204, column: 18, scope: !4730)
!4810 = !DILocation(line: 205, column: 14, scope: !4735)
!4811 = !DILocation(line: 205, column: 11, scope: !4730)
!4812 = !DILocation(line: 207, column: 29, scope: !4734)
!4813 = !DILocation(line: 0, scope: !4734)
!4814 = !DILocation(line: 208, column: 11, scope: !4734)
!4815 = !DILocation(line: 209, column: 17, scope: !4734)
!4816 = !DILocation(line: 210, column: 9, scope: !4734)
!4817 = !DILocalVariable(name: "filename", arg: 1, scope: !4818, file: !916, line: 30, type: !165)
!4818 = distinct !DISubprogram(name: "orig_fopen", scope: !916, file: !916, line: 30, type: !4675, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !4819)
!4819 = !{!4817, !4820}
!4820 = !DILocalVariable(name: "mode", arg: 2, scope: !4818, file: !916, line: 30, type: !165)
!4821 = !DILocation(line: 0, scope: !4818, inlinedAt: !4822)
!4822 = distinct !DILocation(line: 219, column: 10, scope: !4674)
!4823 = !DILocation(line: 32, column: 10, scope: !4818, inlinedAt: !4822)
!4824 = !DILocation(line: 219, column: 3, scope: !4674)
!4825 = !DILocation(line: 220, column: 1, scope: !4674)
!4826 = !DISubprogram(name: "open", scope: !1777, file: !1777, line: 181, type: !4827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!116, !165, !116, null}
!4829 = !DISubprogram(name: "fopen", scope: !1010, file: !1010, line: 258, type: !4830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!4677, !1005, !1005}
!4832 = distinct !DISubprogram(name: "close_stream", scope: !918, file: !918, line: 55, type: !4833, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !4869)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!116, !4835}
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4837)
!4837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4838)
!4838 = !{!4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4837, file: !236, line: 51, baseType: !116, size: 32)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4837, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4837, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4837, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4837, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4837, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4837, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4837, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4837, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4837, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4837, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4837, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4837, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4837, file: !236, line: 70, baseType: !4853, size: 64, offset: 832)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4837, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4837, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4837, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4837, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4837, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4837, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4837, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4837, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4837, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4837, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4837, file: !236, line: 93, baseType: !4853, size: 64, offset: 1344)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4837, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4837, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4837, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4837, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!4869 = !{!4870, !4871, !4873, !4874}
!4870 = !DILocalVariable(name: "stream", arg: 1, scope: !4832, file: !918, line: 55, type: !4835)
!4871 = !DILocalVariable(name: "some_pending", scope: !4832, file: !918, line: 57, type: !4872)
!4872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!4873 = !DILocalVariable(name: "prev_fail", scope: !4832, file: !918, line: 58, type: !4872)
!4874 = !DILocalVariable(name: "fclose_fail", scope: !4832, file: !918, line: 59, type: !4872)
!4875 = !DILocation(line: 0, scope: !4832)
!4876 = !DILocation(line: 57, column: 30, scope: !4832)
!4877 = !DILocalVariable(name: "__stream", arg: 1, scope: !4878, file: !1343, line: 135, type: !4835)
!4878 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1343, file: !1343, line: 135, type: !4833, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !4879)
!4879 = !{!4877}
!4880 = !DILocation(line: 0, scope: !4878, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 58, column: 27, scope: !4832)
!4882 = !DILocation(line: 137, column: 10, scope: !4878, inlinedAt: !4881)
!4883 = !DILocation(line: 58, column: 43, scope: !4832)
!4884 = !DILocation(line: 59, column: 29, scope: !4832)
!4885 = !DILocation(line: 59, column: 45, scope: !4832)
!4886 = !DILocation(line: 69, column: 17, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4832, file: !918, line: 69, column: 7)
!4888 = !DILocation(line: 57, column: 50, scope: !4832)
!4889 = !DILocation(line: 69, column: 33, scope: !4887)
!4890 = !DILocation(line: 69, column: 53, scope: !4887)
!4891 = !DILocation(line: 69, column: 59, scope: !4887)
!4892 = !DILocation(line: 69, column: 7, scope: !4832)
!4893 = !DILocation(line: 71, column: 11, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4887, file: !918, line: 70, column: 5)
!4895 = !DILocation(line: 72, column: 9, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4894, file: !918, line: 71, column: 11)
!4897 = !DILocation(line: 72, column: 15, scope: !4896)
!4898 = !DILocation(line: 77, column: 1, scope: !4832)
!4899 = !DISubprogram(name: "__fpending", scope: !1985, file: !1985, line: 75, type: !4900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!162, !4835}
!4902 = distinct !DISubprogram(name: "rpl_fcntl", scope: !802, file: !802, line: 202, type: !1778, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !4903)
!4903 = !{!4904, !4905, !4906, !4917, !4918, !4921, !4923, !4927}
!4904 = !DILocalVariable(name: "fd", arg: 1, scope: !4902, file: !802, line: 202, type: !116)
!4905 = !DILocalVariable(name: "action", arg: 2, scope: !4902, file: !802, line: 202, type: !116)
!4906 = !DILocalVariable(name: "arg", scope: !4902, file: !802, line: 208, type: !4907)
!4907 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4908, line: 12, baseType: !4909)
!4908 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!4909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !802, baseType: !4910)
!4910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4911, size: 192, elements: !86)
!4911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4912)
!4912 = !{!4913, !4914, !4915, !4916}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4911, file: !802, line: 208, baseType: !103, size: 32)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4911, file: !802, line: 208, baseType: !103, size: 32, offset: 32)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4911, file: !802, line: 208, baseType: !160, size: 64, offset: 64)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4911, file: !802, line: 208, baseType: !160, size: 64, offset: 128)
!4917 = !DILocalVariable(name: "result", scope: !4902, file: !802, line: 211, type: !116)
!4918 = !DILocalVariable(name: "target", scope: !4919, file: !802, line: 216, type: !116)
!4919 = distinct !DILexicalBlock(scope: !4920, file: !802, line: 215, column: 7)
!4920 = distinct !DILexicalBlock(scope: !4902, file: !802, line: 213, column: 5)
!4921 = !DILocalVariable(name: "target", scope: !4922, file: !802, line: 223, type: !116)
!4922 = distinct !DILexicalBlock(scope: !4920, file: !802, line: 222, column: 7)
!4923 = !DILocalVariable(name: "x", scope: !4924, file: !802, line: 418, type: !116)
!4924 = distinct !DILexicalBlock(scope: !4925, file: !802, line: 417, column: 13)
!4925 = distinct !DILexicalBlock(scope: !4926, file: !802, line: 261, column: 11)
!4926 = distinct !DILexicalBlock(scope: !4920, file: !802, line: 258, column: 7)
!4927 = !DILocalVariable(name: "p", scope: !4928, file: !802, line: 426, type: !160)
!4928 = distinct !DILexicalBlock(scope: !4925, file: !802, line: 425, column: 13)
!4929 = distinct !DIAssignID()
!4930 = !DILocation(line: 0, scope: !4902)
!4931 = !DILocation(line: 208, column: 3, scope: !4902)
!4932 = !DILocation(line: 209, column: 3, scope: !4902)
!4933 = !DILocation(line: 212, column: 3, scope: !4902)
!4934 = !DILocation(line: 216, column: 22, scope: !4919)
!4935 = distinct !DIAssignID()
!4936 = distinct !DIAssignID()
!4937 = !DILocation(line: 0, scope: !4919)
!4938 = !DILocalVariable(name: "fd", arg: 1, scope: !4939, file: !802, line: 444, type: !116)
!4939 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !802, file: !802, line: 444, type: !803, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !4940)
!4940 = !{!4938, !4941, !4942}
!4941 = !DILocalVariable(name: "target", arg: 2, scope: !4939, file: !802, line: 444, type: !116)
!4942 = !DILocalVariable(name: "result", scope: !4939, file: !802, line: 446, type: !116)
!4943 = !DILocation(line: 0, scope: !4939, inlinedAt: !4944)
!4944 = distinct !DILocation(line: 217, column: 18, scope: !4919)
!4945 = !DILocation(line: 479, column: 12, scope: !4939, inlinedAt: !4944)
!4946 = !DILocation(line: 223, column: 22, scope: !4922)
!4947 = distinct !DIAssignID()
!4948 = distinct !DIAssignID()
!4949 = !DILocation(line: 0, scope: !4922)
!4950 = !DILocation(line: 0, scope: !801, inlinedAt: !4951)
!4951 = distinct !DILocation(line: 224, column: 18, scope: !4922)
!4952 = !DILocation(line: 507, column: 12, scope: !4953, inlinedAt: !4951)
!4953 = distinct !DILexicalBlock(scope: !801, file: !802, line: 507, column: 7)
!4954 = !DILocation(line: 507, column: 9, scope: !4953, inlinedAt: !4951)
!4955 = !DILocation(line: 507, column: 7, scope: !801, inlinedAt: !4951)
!4956 = !DILocation(line: 509, column: 16, scope: !4957, inlinedAt: !4951)
!4957 = distinct !DILexicalBlock(scope: !4953, file: !802, line: 508, column: 5)
!4958 = !DILocation(line: 510, column: 13, scope: !4959, inlinedAt: !4951)
!4959 = distinct !DILexicalBlock(scope: !4957, file: !802, line: 510, column: 11)
!4960 = !DILocation(line: 510, column: 23, scope: !4959, inlinedAt: !4951)
!4961 = !DILocation(line: 510, column: 26, scope: !4959, inlinedAt: !4951)
!4962 = !DILocation(line: 510, column: 32, scope: !4959, inlinedAt: !4951)
!4963 = !DILocation(line: 510, column: 11, scope: !4957, inlinedAt: !4951)
!4964 = !DILocation(line: 512, column: 30, scope: !4965, inlinedAt: !4951)
!4965 = distinct !DILexicalBlock(scope: !4959, file: !802, line: 511, column: 9)
!4966 = !DILocation(line: 528, column: 19, scope: !813, inlinedAt: !4951)
!4967 = !DILocation(line: 0, scope: !4939, inlinedAt: !4968)
!4968 = distinct !DILocation(line: 520, column: 20, scope: !4969, inlinedAt: !4951)
!4969 = distinct !DILexicalBlock(scope: !4959, file: !802, line: 519, column: 9)
!4970 = !DILocation(line: 479, column: 12, scope: !4939, inlinedAt: !4968)
!4971 = !DILocation(line: 521, column: 22, scope: !4972, inlinedAt: !4951)
!4972 = distinct !DILexicalBlock(scope: !4969, file: !802, line: 521, column: 15)
!4973 = !DILocation(line: 521, column: 15, scope: !4969, inlinedAt: !4951)
!4974 = !DILocation(line: 522, column: 32, scope: !4972, inlinedAt: !4951)
!4975 = !DILocation(line: 522, column: 13, scope: !4972, inlinedAt: !4951)
!4976 = !DILocation(line: 0, scope: !4939, inlinedAt: !4977)
!4977 = distinct !DILocation(line: 527, column: 14, scope: !4953, inlinedAt: !4951)
!4978 = !DILocation(line: 479, column: 12, scope: !4939, inlinedAt: !4977)
!4979 = !DILocation(line: 0, scope: !4953, inlinedAt: !4951)
!4980 = !DILocation(line: 528, column: 9, scope: !813, inlinedAt: !4951)
!4981 = !DILocation(line: 530, column: 19, scope: !812, inlinedAt: !4951)
!4982 = !DILocation(line: 0, scope: !812, inlinedAt: !4951)
!4983 = !DILocation(line: 531, column: 17, scope: !816, inlinedAt: !4951)
!4984 = !DILocation(line: 531, column: 21, scope: !816, inlinedAt: !4951)
!4985 = !DILocation(line: 531, column: 54, scope: !816, inlinedAt: !4951)
!4986 = !DILocation(line: 531, column: 24, scope: !816, inlinedAt: !4951)
!4987 = !DILocation(line: 531, column: 68, scope: !816, inlinedAt: !4951)
!4988 = !DILocation(line: 531, column: 11, scope: !812, inlinedAt: !4951)
!4989 = !DILocation(line: 533, column: 29, scope: !815, inlinedAt: !4951)
!4990 = !DILocation(line: 0, scope: !815, inlinedAt: !4951)
!4991 = !DILocation(line: 534, column: 11, scope: !815, inlinedAt: !4951)
!4992 = !DILocation(line: 535, column: 17, scope: !815, inlinedAt: !4951)
!4993 = !DILocation(line: 537, column: 9, scope: !815, inlinedAt: !4951)
!4994 = !DILocation(line: 329, column: 22, scope: !4925)
!4995 = !DILocation(line: 330, column: 13, scope: !4925)
!4996 = !DILocation(line: 418, column: 23, scope: !4924)
!4997 = distinct !DIAssignID()
!4998 = distinct !DIAssignID()
!4999 = !DILocation(line: 0, scope: !4924)
!5000 = !DILocation(line: 419, column: 24, scope: !4924)
!5001 = !DILocation(line: 421, column: 13, scope: !4925)
!5002 = !DILocation(line: 426, column: 25, scope: !4928)
!5003 = distinct !DIAssignID()
!5004 = distinct !DIAssignID()
!5005 = !DILocation(line: 0, scope: !4928)
!5006 = !DILocation(line: 427, column: 24, scope: !4928)
!5007 = !DILocation(line: 429, column: 13, scope: !4925)
!5008 = !DILocation(line: 0, scope: !4920)
!5009 = !DILocation(line: 438, column: 3, scope: !4902)
!5010 = !DILocation(line: 441, column: 1, scope: !4902)
!5011 = !DILocation(line: 440, column: 3, scope: !4902)
!5012 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !819, file: !819, line: 100, type: !5013, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !5016)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{!162, !2587, !165, !162, !5015}
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!5016 = !{!5017, !5018, !5019, !5020, !5021}
!5017 = !DILocalVariable(name: "pwc", arg: 1, scope: !5012, file: !819, line: 100, type: !2587)
!5018 = !DILocalVariable(name: "s", arg: 2, scope: !5012, file: !819, line: 100, type: !165)
!5019 = !DILocalVariable(name: "n", arg: 3, scope: !5012, file: !819, line: 100, type: !162)
!5020 = !DILocalVariable(name: "ps", arg: 4, scope: !5012, file: !819, line: 100, type: !5015)
!5021 = !DILocalVariable(name: "ret", scope: !5012, file: !819, line: 130, type: !162)
!5022 = !DILocation(line: 0, scope: !5012)
!5023 = !DILocation(line: 105, column: 9, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5012, file: !819, line: 105, column: 7)
!5025 = !DILocation(line: 105, column: 7, scope: !5012)
!5026 = !DILocation(line: 117, column: 10, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5012, file: !819, line: 117, column: 7)
!5028 = !DILocation(line: 117, column: 7, scope: !5012)
!5029 = !DILocation(line: 130, column: 16, scope: !5012)
!5030 = !DILocation(line: 135, column: 11, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5012, file: !819, line: 135, column: 7)
!5032 = !DILocation(line: 135, column: 25, scope: !5031)
!5033 = !DILocation(line: 135, column: 30, scope: !5031)
!5034 = !DILocation(line: 135, column: 7, scope: !5012)
!5035 = !DILocalVariable(name: "ps", arg: 1, scope: !5036, file: !2563, line: 1135, type: !5015)
!5036 = distinct !DISubprogram(name: "mbszero", scope: !2563, file: !2563, line: 1135, type: !5037, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !5039)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{null, !5015}
!5039 = !{!5035}
!5040 = !DILocation(line: 0, scope: !5036, inlinedAt: !5041)
!5041 = distinct !DILocation(line: 137, column: 5, scope: !5031)
!5042 = !DILocalVariable(name: "__dest", arg: 1, scope: !5043, file: !2308, line: 57, type: !160)
!5043 = distinct !DISubprogram(name: "memset", scope: !2308, file: !2308, line: 57, type: !2309, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !5044)
!5044 = !{!5042, !5045, !5046}
!5045 = !DILocalVariable(name: "__ch", arg: 2, scope: !5043, file: !2308, line: 57, type: !116)
!5046 = !DILocalVariable(name: "__len", arg: 3, scope: !5043, file: !2308, line: 57, type: !162)
!5047 = !DILocation(line: 0, scope: !5043, inlinedAt: !5048)
!5048 = distinct !DILocation(line: 1137, column: 3, scope: !5036, inlinedAt: !5041)
!5049 = !DILocation(line: 59, column: 10, scope: !5043, inlinedAt: !5048)
!5050 = !DILocation(line: 137, column: 5, scope: !5031)
!5051 = !DILocation(line: 138, column: 11, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5012, file: !819, line: 138, column: 7)
!5053 = !DILocation(line: 138, column: 7, scope: !5012)
!5054 = !DILocation(line: 139, column: 5, scope: !5052)
!5055 = !DILocation(line: 143, column: 26, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5012, file: !819, line: 143, column: 7)
!5057 = !DILocation(line: 143, column: 41, scope: !5056)
!5058 = !DILocation(line: 143, column: 7, scope: !5012)
!5059 = !DILocation(line: 145, column: 15, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5061, file: !819, line: 145, column: 11)
!5061 = distinct !DILexicalBlock(scope: !5056, file: !819, line: 144, column: 5)
!5062 = !DILocation(line: 145, column: 11, scope: !5061)
!5063 = !DILocation(line: 146, column: 32, scope: !5060)
!5064 = !DILocation(line: 146, column: 16, scope: !5060)
!5065 = !DILocation(line: 146, column: 14, scope: !5060)
!5066 = !DILocation(line: 146, column: 9, scope: !5060)
!5067 = !DILocation(line: 286, column: 1, scope: !5012)
!5068 = !DISubprogram(name: "mbsinit", scope: !5069, file: !5069, line: 293, type: !5070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5069 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!116, !5072}
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!5074 = distinct !DISubprogram(name: "memcoll", scope: !920, file: !920, line: 66, type: !4616, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !5075)
!5075 = !{!5076, !5077, !5078, !5079, !5080, !5081, !5084}
!5076 = !DILocalVariable(name: "s1", arg: 1, scope: !5074, file: !920, line: 66, type: !159)
!5077 = !DILocalVariable(name: "s1len", arg: 2, scope: !5074, file: !920, line: 66, type: !162)
!5078 = !DILocalVariable(name: "s2", arg: 3, scope: !5074, file: !920, line: 66, type: !159)
!5079 = !DILocalVariable(name: "s2len", arg: 4, scope: !5074, file: !920, line: 66, type: !162)
!5080 = !DILocalVariable(name: "diff", scope: !5074, file: !920, line: 68, type: !116)
!5081 = !DILocalVariable(name: "n1", scope: !5082, file: !920, line: 81, type: !4)
!5082 = distinct !DILexicalBlock(scope: !5083, file: !920, line: 80, column: 5)
!5083 = distinct !DILexicalBlock(scope: !5074, file: !920, line: 74, column: 7)
!5084 = !DILocalVariable(name: "n2", scope: !5082, file: !920, line: 82, type: !4)
!5085 = !DILocation(line: 0, scope: !5074)
!5086 = !DILocation(line: 74, column: 13, scope: !5083)
!5087 = !DILocation(line: 74, column: 22, scope: !5083)
!5088 = !DILocalVariable(name: "__s1", arg: 1, scope: !5089, file: !1028, line: 974, type: !1163)
!5089 = distinct !DISubprogram(name: "memeq", scope: !1028, file: !1028, line: 974, type: !2532, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !5090)
!5090 = !{!5088, !5091, !5092}
!5091 = !DILocalVariable(name: "__s2", arg: 2, scope: !5089, file: !1028, line: 974, type: !1163)
!5092 = !DILocalVariable(name: "__n", arg: 3, scope: !5089, file: !1028, line: 974, type: !162)
!5093 = !DILocation(line: 0, scope: !5089, inlinedAt: !5094)
!5094 = distinct !DILocation(line: 74, column: 25, scope: !5083)
!5095 = !DILocation(line: 976, column: 11, scope: !5089, inlinedAt: !5094)
!5096 = !DILocation(line: 976, column: 10, scope: !5089, inlinedAt: !5094)
!5097 = !DILocation(line: 74, column: 7, scope: !5074)
!5098 = !DILocation(line: 76, column: 7, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5083, file: !920, line: 75, column: 5)
!5100 = !DILocation(line: 76, column: 13, scope: !5099)
!5101 = !DILocation(line: 78, column: 5, scope: !5099)
!5102 = !DILocation(line: 81, column: 17, scope: !5082)
!5103 = !DILocation(line: 0, scope: !5082)
!5104 = !DILocation(line: 82, column: 17, scope: !5082)
!5105 = !DILocation(line: 84, column: 17, scope: !5082)
!5106 = !DILocation(line: 85, column: 17, scope: !5082)
!5107 = !DILocation(line: 87, column: 38, scope: !5082)
!5108 = !DILocation(line: 87, column: 53, scope: !5082)
!5109 = !DILocalVariable(name: "s1", arg: 1, scope: !5110, file: !920, line: 35, type: !165)
!5110 = distinct !DISubprogram(name: "strcoll_loop", scope: !920, file: !920, line: 35, type: !2500, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !5111)
!5111 = !{!5109, !5112, !5113, !5114, !5115, !5116, !5118}
!5112 = !DILocalVariable(name: "s1size", arg: 2, scope: !5110, file: !920, line: 35, type: !162)
!5113 = !DILocalVariable(name: "s2", arg: 3, scope: !5110, file: !920, line: 35, type: !165)
!5114 = !DILocalVariable(name: "s2size", arg: 4, scope: !5110, file: !920, line: 35, type: !162)
!5115 = !DILocalVariable(name: "diff", scope: !5110, file: !920, line: 37, type: !116)
!5116 = !DILocalVariable(name: "size1", scope: !5117, file: !920, line: 44, type: !162)
!5117 = distinct !DILexicalBlock(scope: !5110, file: !920, line: 40, column: 5)
!5118 = !DILocalVariable(name: "size2", scope: !5117, file: !920, line: 45, type: !162)
!5119 = !DILocation(line: 0, scope: !5110, inlinedAt: !5120)
!5120 = distinct !DILocation(line: 87, column: 14, scope: !5082)
!5121 = !DILocation(line: 39, column: 3, scope: !5110, inlinedAt: !5120)
!5122 = !DILocation(line: 39, column: 19, scope: !5110, inlinedAt: !5120)
!5123 = !DILocation(line: 39, column: 32, scope: !5110, inlinedAt: !5120)
!5124 = !DILocation(line: 39, column: 30, scope: !5110, inlinedAt: !5120)
!5125 = !DILocation(line: 44, column: 22, scope: !5117, inlinedAt: !5120)
!5126 = !DILocation(line: 44, column: 34, scope: !5117, inlinedAt: !5120)
!5127 = !DILocation(line: 0, scope: !5117, inlinedAt: !5120)
!5128 = !DILocation(line: 45, column: 22, scope: !5117, inlinedAt: !5120)
!5129 = !DILocation(line: 45, column: 34, scope: !5117, inlinedAt: !5120)
!5130 = !DILocation(line: 48, column: 14, scope: !5117, inlinedAt: !5120)
!5131 = !DILocation(line: 49, column: 14, scope: !5117, inlinedAt: !5120)
!5132 = !DILocation(line: 51, column: 18, scope: !5133, inlinedAt: !5120)
!5133 = distinct !DILexicalBlock(scope: !5117, file: !920, line: 51, column: 11)
!5134 = !DILocation(line: 51, column: 11, scope: !5117, inlinedAt: !5120)
!5135 = !DILocation(line: 52, column: 26, scope: !5133, inlinedAt: !5120)
!5136 = !DILocation(line: 47, column: 10, scope: !5117, inlinedAt: !5120)
!5137 = !DILocation(line: 46, column: 10, scope: !5117, inlinedAt: !5120)
!5138 = !DILocation(line: 53, column: 18, scope: !5139, inlinedAt: !5120)
!5139 = distinct !DILexicalBlock(scope: !5117, file: !920, line: 53, column: 11)
!5140 = distinct !{!5140, !5121, !5141, !1062}
!5141 = !DILocation(line: 55, column: 5, scope: !5110, inlinedAt: !5120)
!5142 = !DILocation(line: 89, column: 17, scope: !5082)
!5143 = !DILocation(line: 90, column: 17, scope: !5082)
!5144 = !DILocation(line: 0, scope: !5083)
!5145 = !DILocation(line: 93, column: 3, scope: !5074)
!5146 = !DISubprogram(name: "strcoll", scope: !1135, file: !1135, line: 163, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5147 = distinct !DISubprogram(name: "memcoll0", scope: !920, file: !920, line: 102, type: !2500, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !5148)
!5148 = !{!5149, !5150, !5151, !5152}
!5149 = !DILocalVariable(name: "s1", arg: 1, scope: !5147, file: !920, line: 102, type: !165)
!5150 = !DILocalVariable(name: "s1size", arg: 2, scope: !5147, file: !920, line: 102, type: !162)
!5151 = !DILocalVariable(name: "s2", arg: 3, scope: !5147, file: !920, line: 102, type: !165)
!5152 = !DILocalVariable(name: "s2size", arg: 4, scope: !5147, file: !920, line: 102, type: !162)
!5153 = !DILocation(line: 0, scope: !5147)
!5154 = !DILocation(line: 104, column: 14, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5147, file: !920, line: 104, column: 7)
!5156 = !DILocation(line: 104, column: 24, scope: !5155)
!5157 = !DILocation(line: 0, scope: !5089, inlinedAt: !5158)
!5158 = distinct !DILocation(line: 104, column: 27, scope: !5155)
!5159 = !DILocation(line: 976, column: 11, scope: !5089, inlinedAt: !5158)
!5160 = !DILocation(line: 976, column: 10, scope: !5089, inlinedAt: !5158)
!5161 = !DILocation(line: 104, column: 7, scope: !5147)
!5162 = !DILocation(line: 106, column: 7, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5155, file: !920, line: 105, column: 5)
!5164 = !DILocation(line: 106, column: 13, scope: !5163)
!5165 = !DILocation(line: 107, column: 7, scope: !5163)
!5166 = !DILocation(line: 0, scope: !5110, inlinedAt: !5167)
!5167 = distinct !DILocation(line: 110, column: 12, scope: !5155)
!5168 = !DILocation(line: 39, column: 3, scope: !5110, inlinedAt: !5167)
!5169 = !DILocation(line: 39, column: 19, scope: !5110, inlinedAt: !5167)
!5170 = !DILocation(line: 39, column: 32, scope: !5110, inlinedAt: !5167)
!5171 = !DILocation(line: 39, column: 30, scope: !5110, inlinedAt: !5167)
!5172 = !DILocation(line: 44, column: 22, scope: !5117, inlinedAt: !5167)
!5173 = !DILocation(line: 44, column: 34, scope: !5117, inlinedAt: !5167)
!5174 = !DILocation(line: 0, scope: !5117, inlinedAt: !5167)
!5175 = !DILocation(line: 45, column: 22, scope: !5117, inlinedAt: !5167)
!5176 = !DILocation(line: 45, column: 34, scope: !5117, inlinedAt: !5167)
!5177 = !DILocation(line: 48, column: 14, scope: !5117, inlinedAt: !5167)
!5178 = !DILocation(line: 49, column: 14, scope: !5117, inlinedAt: !5167)
!5179 = !DILocation(line: 51, column: 18, scope: !5133, inlinedAt: !5167)
!5180 = !DILocation(line: 51, column: 11, scope: !5117, inlinedAt: !5167)
!5181 = !DILocation(line: 52, column: 26, scope: !5133, inlinedAt: !5167)
!5182 = !DILocation(line: 47, column: 10, scope: !5117, inlinedAt: !5167)
!5183 = !DILocation(line: 46, column: 10, scope: !5117, inlinedAt: !5167)
!5184 = !DILocation(line: 53, column: 18, scope: !5139, inlinedAt: !5167)
!5185 = distinct !{!5185, !5168, !5186, !1062}
!5186 = !DILocation(line: 55, column: 5, scope: !5110, inlinedAt: !5167)
!5187 = !DILocation(line: 0, scope: !5155)
!5188 = !DILocation(line: 111, column: 1, scope: !5147)
!5189 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !922, file: !922, line: 27, type: !4174, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !5190)
!5190 = !{!5191, !5192, !5193, !5194}
!5191 = !DILocalVariable(name: "ptr", arg: 1, scope: !5189, file: !922, line: 27, type: !160)
!5192 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5189, file: !922, line: 27, type: !162)
!5193 = !DILocalVariable(name: "size", arg: 3, scope: !5189, file: !922, line: 27, type: !162)
!5194 = !DILocalVariable(name: "nbytes", scope: !5189, file: !922, line: 29, type: !162)
!5195 = !DILocation(line: 0, scope: !5189)
!5196 = !DILocation(line: 30, column: 7, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5189, file: !922, line: 30, column: 7)
!5198 = !DILocation(line: 30, column: 7, scope: !5189)
!5199 = !DILocation(line: 32, column: 7, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5197, file: !922, line: 31, column: 5)
!5201 = !DILocation(line: 32, column: 13, scope: !5200)
!5202 = !DILocation(line: 33, column: 7, scope: !5200)
!5203 = !DILocalVariable(name: "ptr", arg: 1, scope: !5204, file: !4266, line: 2057, type: !160)
!5204 = distinct !DISubprogram(name: "rpl_realloc", scope: !4266, file: !4266, line: 2057, type: !4258, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !5205)
!5205 = !{!5203, !5206}
!5206 = !DILocalVariable(name: "size", arg: 2, scope: !5204, file: !4266, line: 2057, type: !162)
!5207 = !DILocation(line: 0, scope: !5204, inlinedAt: !5208)
!5208 = distinct !DILocation(line: 37, column: 10, scope: !5189)
!5209 = !DILocation(line: 2059, column: 24, scope: !5204, inlinedAt: !5208)
!5210 = !DILocation(line: 2059, column: 10, scope: !5204, inlinedAt: !5208)
!5211 = !DILocation(line: 37, column: 3, scope: !5189)
!5212 = !DILocation(line: 38, column: 1, scope: !5189)
