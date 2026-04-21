; ModuleID = 'src/comm.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !532
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !502
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !522
@.str.1.46 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !524
@.str.2.48 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !526
@.str.3.47 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !528
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !530
@.str.4.41 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !534
@.str.5.42 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !536
@.str.6.43 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !541
@.str.1.67 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !546
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !549
@.str.80 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !555
@.str.1.81 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !557
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !559
@.str.84 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !590
@.str.1.85 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !593
@.str.2.86 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !595
@.str.3.87 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !600
@.str.4.88 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !602
@.str.5.89 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !604
@.str.6.90 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !606
@.str.7.91 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !608
@.str.8.92 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !610
@.str.9.93 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !612
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.84, ptr @.str.1.85, ptr @.str.2.86, ptr @.str.3.87, ptr @.str.4.88, ptr @.str.5.89, ptr @.str.6.90, ptr @.str.7.91, ptr @.str.8.92, ptr @.str.9.93, ptr null], align 16, !dbg !614
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !625
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !639
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !677
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !684
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !641
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !686
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !629
@.str.10.96 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !646
@.str.11.94 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !648
@.str.12.97 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !650
@.str.13.95 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !652
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !654
@.str.112 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !692
@.str.1.113 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !695
@.str.2.114 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !697
@.str.3.115 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !699
@.str.4.116 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !701
@.str.5.117 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !703
@.str.6.118 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !708
@.str.7.119 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !713
@.str.8.120 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !715
@.str.9.121 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !720
@.str.10.122 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !725
@.str.11.123 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !730
@.str.12.124 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !735
@.str.13.125 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !737
@.str.14.126 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !742
@.str.15.127 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !747
@.str.16.128 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !749
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.133 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !751
@.str.18.134 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !753
@.str.19.135 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !755
@.str.20.136 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !757
@.str.21.137 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !759
@.str.22.138 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !761
@.str.23.139 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !763
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !765
@.str.152 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !773
@.str.1.150 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !776
@.str.2.151 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !778
@.str.155 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !780
@.str.1.156 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1, !dbg !783
@.str.2.157 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1, !dbg !785
@exit_failure = dso_local global i32 1, align 4, !dbg !790
@.str.3.158 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1, !dbg !796
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !798
@.str.167 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !816
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !819

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !927 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !931, metadata !DIExpression()), !dbg !932
  %2 = icmp eq i32 %0, 0, !dbg !933
  br i1 %2, label %8, label %3, !dbg !935

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !936, !tbaa !938
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #41, !dbg !936
  %6 = load ptr, ptr @program_name, align 8, !dbg !936, !tbaa !938
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #41, !dbg !936
  br label %51, !dbg !936

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #41, !dbg !942
  %10 = load ptr, ptr @program_name, align 8, !dbg !942, !tbaa !938
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #41, !dbg !942
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #41, !dbg !944
  %13 = load ptr, ptr @stdout, align 8, !dbg !944, !tbaa !938
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !944
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #41, !dbg !945
  %16 = load ptr, ptr @stdout, align 8, !dbg !945, !tbaa !938
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !945
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #41, !dbg !946
  %19 = load ptr, ptr @stdout, align 8, !dbg !946, !tbaa !938
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !946
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #41, !dbg !947
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !947
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #41, !dbg !948
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !948
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #41, !dbg !949
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !949
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #41, !dbg !950
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !950
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #41, !dbg !951
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !951
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #41, !dbg !952
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !952
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #41, !dbg !953
  tail call fastcc void @oputs_(ptr noundef %27), !dbg !953
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #41, !dbg !954
  tail call fastcc void @oputs_(ptr noundef %28), !dbg !954
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #41, !dbg !955
  tail call fastcc void @oputs_(ptr noundef %29), !dbg !955
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #41, !dbg !956
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !956
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #41, !dbg !957
  %32 = load ptr, ptr @stdout, align 8, !dbg !957, !tbaa !938
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !957
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #41, !dbg !958
  %35 = load ptr, ptr @program_name, align 8, !dbg !958, !tbaa !938
  %36 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef %35, ptr noundef %35) #41, !dbg !958
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !959, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !971, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata ptr poison, metadata !971, metadata !DIExpression()), !dbg !976
  tail call void @emit_bug_reporting_address() #41, !dbg !978
  %37 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #41, !dbg !979
  call void @llvm.dbg.value(metadata ptr %37, metadata !974, metadata !DIExpression()), !dbg !976
  %38 = icmp eq ptr %37, null, !dbg !980
  br i1 %38, label %46, label %39, !dbg !982

39:                                               ; preds = %8
  %40 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(4) @.str.59, i64 noundef 3) #42, !dbg !983
  %41 = icmp eq i32 %40, 0, !dbg !983
  br i1 %41, label %46, label %42, !dbg !984

42:                                               ; preds = %39
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #41, !dbg !985
  %44 = load ptr, ptr @stdout, align 8, !dbg !985, !tbaa !938
  %45 = tail call i32 @fputs_unlocked(ptr noundef %43, ptr noundef %44), !dbg !985
  br label %46, !dbg !987

46:                                               ; preds = %8, %39, %42
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !971, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !975, metadata !DIExpression()), !dbg !976
  %47 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #41, !dbg !988
  %48 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %47, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.5) #41, !dbg !988
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #41, !dbg !989
  %50 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %49, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.63) #41, !dbg !989
  br label %51

51:                                               ; preds = %46, %3
  tail call void @exit(i32 noundef %0) #43, !dbg !990
  unreachable, !dbg !990
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !991 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !996 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1002 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1005 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !210 {
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !214, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata ptr %0, metadata !215, metadata !DIExpression()), !dbg !1009
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1010, !tbaa !1011
  %3 = icmp eq i32 %2, -1, !dbg !1013
  br i1 %3, label %4, label %16, !dbg !1014

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.29) #41, !dbg !1015
  call void @llvm.dbg.value(metadata ptr %5, metadata !216, metadata !DIExpression()), !dbg !1016
  %6 = icmp eq ptr %5, null, !dbg !1017
  br i1 %6, label %14, label %7, !dbg !1018

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1019, !tbaa !1020
  %9 = icmp eq i8 %8, 0, !dbg !1019
  br i1 %9, label %14, label %10, !dbg !1021

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1022, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !1028, metadata !DIExpression()), !dbg !1029
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.30) #42, !dbg !1031
  %12 = icmp eq i32 %11, 0, !dbg !1032
  %13 = zext i1 %12 to i32, !dbg !1021
  br label %14, !dbg !1021

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1033, !tbaa !1011
  br label %16, !dbg !1034

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1035
  %18 = icmp eq i32 %17, 0, !dbg !1035
  br i1 %18, label %22, label %19, !dbg !1037

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1038, !tbaa !938
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1038
  br label %128, !dbg !1040

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !219, metadata !DIExpression()), !dbg !1009
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.31) #42, !dbg !1041
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1042
  call void @llvm.dbg.value(metadata ptr %24, metadata !220, metadata !DIExpression()), !dbg !1009
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #42, !dbg !1043
  call void @llvm.dbg.value(metadata ptr %25, metadata !221, metadata !DIExpression()), !dbg !1009
  %26 = icmp eq ptr %25, null, !dbg !1044
  br i1 %26, label %58, label %27, !dbg !1045

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1046
  br i1 %28, label %58, label %29, !dbg !1047

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !222, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i64 0, metadata !226, metadata !DIExpression()), !dbg !1048
  %30 = icmp ult ptr %24, %25, !dbg !1049
  br i1 %30, label %31, label %52, !dbg !1050

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #44, !dbg !1009
  %33 = load ptr, ptr %32, align 8, !tbaa !938
  br label %34, !dbg !1050

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !222, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i64 %36, metadata !226, metadata !DIExpression()), !dbg !1048
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1051
  call void @llvm.dbg.value(metadata ptr %37, metadata !222, metadata !DIExpression()), !dbg !1048
  %38 = load i8, ptr %35, align 1, !dbg !1051, !tbaa !1020
  %39 = sext i8 %38 to i64, !dbg !1051
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1051
  %41 = load i16, ptr %40, align 2, !dbg !1051, !tbaa !1052
  %42 = freeze i16 %41, !dbg !1054
  %43 = lshr i16 %42, 13, !dbg !1054
  %44 = and i16 %43, 1, !dbg !1054
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1055
  call void @llvm.dbg.value(metadata i64 %46, metadata !226, metadata !DIExpression()), !dbg !1048
  %47 = icmp ult ptr %37, %25, !dbg !1049
  %48 = icmp ult i64 %46, 2, !dbg !1056
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1056
  br i1 %49, label %34, label %50, !dbg !1050, !llvm.loop !1057

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1059
  br i1 %51, label %52, label %54, !dbg !1061

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1061

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !1061
  call void @llvm.dbg.value(metadata i8 %57, metadata !219, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata ptr %56, metadata !221, metadata !DIExpression()), !dbg !1009
  br label %58, !dbg !1062

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !1009
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !1009
  call void @llvm.dbg.value(metadata i8 %60, metadata !219, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata ptr %59, metadata !221, metadata !DIExpression()), !dbg !1009
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.32) #42, !dbg !1063
  call void @llvm.dbg.value(metadata i64 %61, metadata !227, metadata !DIExpression()), !dbg !1009
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !1064
  call void @llvm.dbg.value(metadata ptr %62, metadata !228, metadata !DIExpression()), !dbg !1009
  br label %63, !dbg !1065

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !1009
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !1009
  call void @llvm.dbg.value(metadata i8 %65, metadata !219, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata ptr %64, metadata !228, metadata !DIExpression()), !dbg !1009
  %66 = load i8, ptr %64, align 1, !dbg !1066, !tbaa !1020
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !1067

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1068
  %69 = load i8, ptr %68, align 1, !dbg !1071, !tbaa !1020
  %70 = icmp eq i8 %69, 45, !dbg !1072
  %71 = select i1 %70, i8 0, i8 %65, !dbg !1073
  br label %72, !dbg !1073

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !1009
  call void @llvm.dbg.value(metadata i8 %73, metadata !219, metadata !DIExpression()), !dbg !1009
  %74 = tail call ptr @__ctype_b_loc() #44, !dbg !1074
  %75 = load ptr, ptr %74, align 8, !dbg !1074, !tbaa !938
  %76 = sext i8 %66 to i64, !dbg !1074
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1074
  %78 = load i16, ptr %77, align 2, !dbg !1074, !tbaa !1052
  %79 = and i16 %78, 8192, !dbg !1074
  %80 = icmp eq i16 %79, 0, !dbg !1074
  br i1 %80, label %96, label %81, !dbg !1076

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1077
  br i1 %82, label %98, label %83, !dbg !1080

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1081
  %85 = load i8, ptr %84, align 1, !dbg !1081, !tbaa !1020
  %86 = sext i8 %85 to i64, !dbg !1081
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1081
  %88 = load i16, ptr %87, align 2, !dbg !1081, !tbaa !1052
  %89 = and i16 %88, 8192, !dbg !1081
  %90 = icmp eq i16 %89, 0, !dbg !1081
  br i1 %90, label %91, label %98, !dbg !1082

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1083
  %93 = icmp ne i8 %92, 0, !dbg !1083
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1085
  br i1 %95, label %96, label %98, !dbg !1085

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1086
  call void @llvm.dbg.value(metadata ptr %97, metadata !228, metadata !DIExpression()), !dbg !1009
  br label %63, !dbg !1065, !llvm.loop !1087

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1089
  %100 = load ptr, ptr @stdout, align 8, !dbg !1089, !tbaa !938
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1089
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1022, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1022, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1022, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1022, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1022, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1022, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1022, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1022, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1022, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1022, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !282, metadata !DIExpression()), !dbg !1009
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.46, i64 noundef 6) #42, !dbg !1110
  %103 = icmp eq i32 %102, 0, !dbg !1110
  br i1 %103, label %107, label %104, !dbg !1112

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.47, i64 noundef 9) #42, !dbg !1113
  %106 = icmp eq i32 %105, 0, !dbg !1113
  br i1 %106, label %107, label %110, !dbg !1114

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1115
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.5, i32 noundef %108, ptr noundef %59) #41, !dbg !1115
  br label %113, !dbg !1117

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1118
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.5, i32 noundef %111, ptr noundef %59) #41, !dbg !1118
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1120, !tbaa !938
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %114), !dbg !1120
  %116 = load ptr, ptr @stdout, align 8, !dbg !1121, !tbaa !938
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %116), !dbg !1121
  %118 = ptrtoint ptr %64 to i64, !dbg !1122
  %119 = sub i64 %118, %99, !dbg !1122
  %120 = load ptr, ptr @stdout, align 8, !dbg !1122, !tbaa !938
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1122
  %122 = load ptr, ptr @stdout, align 8, !dbg !1123, !tbaa !938
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.54, ptr noundef %122), !dbg !1123
  %124 = load ptr, ptr @stdout, align 8, !dbg !1124, !tbaa !938
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.55, ptr noundef %124), !dbg !1124
  %126 = load ptr, ptr @stdout, align 8, !dbg !1125, !tbaa !938
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1125
  br label %128, !dbg !1126

128:                                              ; preds = %113, %19
  ret void, !dbg !1126
}

; Function Attrs: nounwind
declare !dbg !1127 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1131 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1135 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1137 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1140 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1143 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1146 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1149 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1155 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1156 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1162 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1167, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata ptr %1, metadata !1168, metadata !DIExpression()), !dbg !1170
  %3 = load ptr, ptr %1, align 8, !dbg !1171, !tbaa !938
  tail call void @set_program_name(ptr noundef %3) #41, !dbg !1172
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.18) #41, !dbg !1173
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #41, !dbg !1174
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.19) #41, !dbg !1175
  %7 = tail call zeroext i1 @hard_locale(i32 noundef 3) #41, !dbg !1176
  %8 = zext i1 %7 to i8, !dbg !1177
  store i8 %8, ptr @hard_LC_COLLATE, align 1, !dbg !1177, !tbaa !1178
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #41, !dbg !1180
  br label %10, !dbg !1181

10:                                               ; preds = %39, %2
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.21, ptr noundef nonnull @long_options, ptr noundef null) #41, !dbg !1182
  call void @llvm.dbg.value(metadata i32 %11, metadata !1169, metadata !DIExpression()), !dbg !1170
  switch i32 %11, label %46 [
    i32 -1, label %47
    i32 49, label %12
    i32 50, label %13
    i32 51, label %14
    i32 122, label %15
    i32 129, label %16
    i32 128, label %17
    i32 130, label %18
    i32 131, label %38
    i32 -130, label %40
    i32 -131, label %41
  ], !dbg !1181

12:                                               ; preds = %10
  store i1 true, ptr @only_file_1, align 1, !dbg !1183
  br label %39, !dbg !1185

13:                                               ; preds = %10
  store i1 true, ptr @only_file_2, align 1, !dbg !1186
  br label %39, !dbg !1187

14:                                               ; preds = %10
  store i1 true, ptr @both, align 1, !dbg !1188
  br label %39, !dbg !1189

15:                                               ; preds = %10
  store i1 true, ptr @delim, align 1, !dbg !1190
  br label %39, !dbg !1191

16:                                               ; preds = %10
  store i32 2, ptr @check_input_order, align 4, !dbg !1192, !tbaa !1020
  br label %39, !dbg !1193

17:                                               ; preds = %10
  store i32 1, ptr @check_input_order, align 4, !dbg !1194, !tbaa !1020
  br label %39, !dbg !1195

18:                                               ; preds = %10
  %19 = load i64, ptr @col_sep_len, align 8, !dbg !1196, !tbaa !1198
  %20 = icmp eq i64 %19, 0, !dbg !1196
  br i1 %20, label %21, label %23, !dbg !1200

21:                                               ; preds = %18
  %22 = load ptr, ptr @optarg, align 8, !dbg !1201, !tbaa !938
  br label %30, !dbg !1200

23:                                               ; preds = %18
  %24 = load ptr, ptr @col_sep, align 8, !dbg !1202, !tbaa !938
  %25 = load ptr, ptr @optarg, align 8, !dbg !1203, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %24, metadata !1022, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata ptr %25, metadata !1028, metadata !DIExpression()), !dbg !1204
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) %25) #42, !dbg !1206
  %27 = icmp eq i32 %26, 0, !dbg !1207
  br i1 %27, label %30, label %28, !dbg !1208

28:                                               ; preds = %23
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #41, !dbg !1209
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %29) #41, !dbg !1209
  unreachable, !dbg !1209

30:                                               ; preds = %21, %23
  %31 = phi ptr [ %22, %21 ], [ %25, %23 ], !dbg !1201
  store ptr %31, ptr @col_sep, align 8, !dbg !1210, !tbaa !938
  %32 = load i8, ptr %31, align 1, !dbg !1211, !tbaa !1020
  %33 = icmp eq i8 %32, 0, !dbg !1211
  br i1 %33, label %36, label %34, !dbg !1211

34:                                               ; preds = %30
  %35 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31) #42, !dbg !1212
  br label %36, !dbg !1211

36:                                               ; preds = %30, %34
  %37 = phi i64 [ %35, %34 ], [ 1, %30 ], !dbg !1211
  store i64 %37, ptr @col_sep_len, align 8, !dbg !1213, !tbaa !1198
  br label %39, !dbg !1214

38:                                               ; preds = %10
  store i1 true, ptr @total_option, align 1, !dbg !1215
  br label %39, !dbg !1216

39:                                               ; preds = %38, %36, %17, %16, %15, %14, %13, %12
  br label %10, !dbg !1182, !llvm.loop !1217

40:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #45, !dbg !1219
  unreachable, !dbg !1219

41:                                               ; preds = %10
  %42 = load ptr, ptr @stdout, align 8, !dbg !1220, !tbaa !938
  %43 = load ptr, ptr @Version, align 8, !dbg !1220, !tbaa !938
  %44 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24) #41, !dbg !1220
  %45 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.25) #41, !dbg !1220
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %42, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.23, ptr noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef null) #41, !dbg !1220
  tail call void @exit(i32 noundef 0) #43, !dbg !1220
  unreachable, !dbg !1220

46:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #45, !dbg !1221
  unreachable, !dbg !1221

47:                                               ; preds = %10
  %48 = load i64, ptr @col_sep_len, align 8, !dbg !1222, !tbaa !1198
  %49 = icmp eq i64 %48, 0, !dbg !1222
  br i1 %49, label %50, label %51, !dbg !1224

50:                                               ; preds = %47
  store i64 1, ptr @col_sep_len, align 8, !dbg !1225, !tbaa !1198
  br label %51, !dbg !1226

51:                                               ; preds = %50, %47
  %52 = load i32, ptr @optind, align 4, !dbg !1227, !tbaa !1011
  %53 = sub nsw i32 %0, %52, !dbg !1229
  %54 = icmp slt i32 %53, 2, !dbg !1230
  br i1 %54, label %55, label %67, !dbg !1231

55:                                               ; preds = %51
  %56 = icmp slt i32 %52, %0, !dbg !1232
  br i1 %56, label %59, label %57, !dbg !1235

57:                                               ; preds = %55
  %58 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #41, !dbg !1236
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %58) #41, !dbg !1236
  br label %66, !dbg !1236

59:                                               ; preds = %55
  %60 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #41, !dbg !1237
  %61 = add nsw i32 %0, -1, !dbg !1237
  %62 = sext i32 %61 to i64, !dbg !1237
  %63 = getelementptr inbounds ptr, ptr %1, i64 %62, !dbg !1237
  %64 = load ptr, ptr %63, align 8, !dbg !1237, !tbaa !938
  %65 = tail call ptr @quote(ptr noundef %64) #41, !dbg !1237
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %60, ptr noundef %65) #41, !dbg !1237
  br label %66

66:                                               ; preds = %59, %57
  tail call void @usage(i32 noundef 1) #45, !dbg !1238
  unreachable, !dbg !1238

67:                                               ; preds = %51
  %68 = icmp eq i32 %53, 2, !dbg !1239
  br i1 %68, label %77, label %69, !dbg !1241

69:                                               ; preds = %67
  %70 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #41, !dbg !1242
  %71 = load i32, ptr @optind, align 4, !dbg !1242, !tbaa !1011
  %72 = add nsw i32 %71, 2, !dbg !1242
  %73 = sext i32 %72 to i64, !dbg !1242
  %74 = getelementptr inbounds ptr, ptr %1, i64 %73, !dbg !1242
  %75 = load ptr, ptr %74, align 8, !dbg !1242, !tbaa !938
  %76 = tail call ptr @quote(ptr noundef %75) #41, !dbg !1242
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %70, ptr noundef %76) #41, !dbg !1242
  tail call void @usage(i32 noundef 1) #45, !dbg !1244
  unreachable, !dbg !1244

77:                                               ; preds = %67
  %78 = sext i32 %52 to i64, !dbg !1245
  %79 = getelementptr inbounds ptr, ptr %1, i64 %78, !dbg !1245
  tail call fastcc void @compare_files(ptr noundef nonnull %79) #45, !dbg !1246
  unreachable, !dbg !1246
}

; Function Attrs: nounwind
declare !dbg !1247 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1250 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1251 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1254 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1260 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @compare_files(ptr nocapture noundef readonly %0) unnamed_addr #0 !dbg !1263 {
  %2 = alloca [2 x [4 x %struct.linebuffer]], align 16
  %3 = alloca [2 x [4 x ptr]], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1267, metadata !DIExpression()), !dbg !1310
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %2) #41, !dbg !1311
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1268, metadata !DIExpression()), !dbg !1312
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #41, !dbg !1313
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1279, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i64 0, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i64 0, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i64 0, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i32 0, metadata !1291, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i64 0, metadata !1291, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i32 0, metadata !1293, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 0, metadata !1293, metadata !DIExpression()), !dbg !1316
  call void @initbuffer(ptr noundef nonnull %2) #41, !dbg !1317
  store ptr %2, ptr %3, align 16, !dbg !1320, !tbaa !938
  call void @llvm.dbg.value(metadata i64 1, metadata !1293, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 1, metadata !1293, metadata !DIExpression()), !dbg !1316
  %4 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 0, i64 1, !dbg !1321
  call void @initbuffer(ptr noundef nonnull %4) #41, !dbg !1317
  %5 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 1, !dbg !1322
  store ptr %4, ptr %5, align 8, !dbg !1320, !tbaa !938
  call void @llvm.dbg.value(metadata i64 2, metadata !1293, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 2, metadata !1293, metadata !DIExpression()), !dbg !1316
  %6 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 0, i64 2, !dbg !1321
  call void @initbuffer(ptr noundef nonnull %6) #41, !dbg !1317
  %7 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 2, !dbg !1322
  store ptr %6, ptr %7, align 16, !dbg !1320, !tbaa !938
  call void @llvm.dbg.value(metadata i64 3, metadata !1293, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 3, metadata !1293, metadata !DIExpression()), !dbg !1316
  %8 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 0, i64 3, !dbg !1321
  call void @initbuffer(ptr noundef nonnull %8) #41, !dbg !1317
  %9 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 3, !dbg !1322
  store ptr %8, ptr %9, align 8, !dbg !1320, !tbaa !938
  call void @llvm.dbg.value(metadata i64 4, metadata !1293, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32 0, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1310
  call void @llvm.dbg.value(metadata i32 0, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1310
  call void @llvm.dbg.value(metadata i32 0, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1310
  %10 = load ptr, ptr %0, align 8, !dbg !1323, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %10, metadata !1022, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata ptr @.str.72, metadata !1028, metadata !DIExpression()), !dbg !1324
  %11 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.72) #42, !dbg !1326
  %12 = icmp eq i32 %11, 0, !dbg !1327
  br i1 %12, label %13, label %15, !dbg !1328

13:                                               ; preds = %1
  %14 = load ptr, ptr @stdin, align 8, !dbg !1329, !tbaa !938
  br label %17, !dbg !1328

15:                                               ; preds = %1
  %16 = call ptr @fopen_safer(ptr noundef %10, ptr noundef nonnull @.str.73) #41, !dbg !1330
  br label %17, !dbg !1328

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ], !dbg !1328
  call void @llvm.dbg.value(metadata ptr %18, metadata !1284, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1310
  %19 = icmp eq ptr %18, null, !dbg !1331
  br i1 %19, label %20, label %27, !dbg !1333

20:                                               ; preds = %58, %17
  %21 = phi i64 [ 0, %17 ], [ 1, %58 ]
  %22 = getelementptr inbounds ptr, ptr %0, i64 %21, !dbg !1323
  %23 = tail call ptr @__errno_location() #44, !dbg !1334
  %24 = load i32, ptr %23, align 4, !dbg !1334, !tbaa !1011
  %25 = load ptr, ptr %22, align 8, !dbg !1334, !tbaa !938
  %26 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %25) #41, !dbg !1334
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %24, ptr noundef nonnull @.str.74, ptr noundef %26) #41, !dbg !1334
  unreachable, !dbg !1334

27:                                               ; preds = %17
  call void @fadvise(ptr noundef nonnull %18, i32 noundef 2) #41, !dbg !1335
  %28 = load i1, ptr @delim, align 1, !dbg !1336
  %29 = select i1 %28, i8 0, i8 10, !dbg !1336
  %30 = call ptr @readlinebuffer_delim(ptr noundef nonnull %2, ptr noundef nonnull %18, i8 noundef signext %29) #41, !dbg !1337
  call void @llvm.dbg.value(metadata ptr %30, metadata !1276, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata ptr %18, metadata !1338, metadata !DIExpression()), !dbg !1344
  %31 = load i32, ptr %18, align 8, !dbg !1347, !tbaa !1348
  %32 = and i32 %31, 32, !dbg !1350
  %33 = icmp eq i32 %32, 0, !dbg !1350
  br i1 %33, label %41, label %34, !dbg !1351

34:                                               ; preds = %61, %27
  %35 = phi i64 [ 0, %27 ], [ 1, %61 ]
  %36 = getelementptr inbounds ptr, ptr %0, i64 %35, !dbg !1323
  %37 = tail call ptr @__errno_location() #44, !dbg !1352
  %38 = load i32, ptr %37, align 4, !dbg !1352, !tbaa !1011
  %39 = load ptr, ptr %36, align 8, !dbg !1352, !tbaa !938
  %40 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %39) #41, !dbg !1352
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %38, ptr noundef nonnull @.str.74, ptr noundef %40) #41, !dbg !1352
  unreachable, !dbg !1352

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i64 1, metadata !1291, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i64 1, metadata !1291, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i32 0, metadata !1293, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 0, metadata !1293, metadata !DIExpression()), !dbg !1316
  %42 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 1, i64 0, !dbg !1321
  call void @initbuffer(ptr noundef nonnull %42) #41, !dbg !1317
  %43 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 0, !dbg !1322
  store ptr %42, ptr %43, align 16, !dbg !1320, !tbaa !938
  call void @llvm.dbg.value(metadata i64 1, metadata !1293, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 1, metadata !1293, metadata !DIExpression()), !dbg !1316
  %44 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 1, i64 1, !dbg !1321
  call void @initbuffer(ptr noundef nonnull %44) #41, !dbg !1317
  %45 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 1, !dbg !1322
  store ptr %44, ptr %45, align 8, !dbg !1320, !tbaa !938
  call void @llvm.dbg.value(metadata i64 2, metadata !1293, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 2, metadata !1293, metadata !DIExpression()), !dbg !1316
  %46 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 1, i64 2, !dbg !1321
  call void @initbuffer(ptr noundef nonnull %46) #41, !dbg !1317
  %47 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 2, !dbg !1322
  store ptr %46, ptr %47, align 16, !dbg !1320, !tbaa !938
  call void @llvm.dbg.value(metadata i64 3, metadata !1293, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 3, metadata !1293, metadata !DIExpression()), !dbg !1316
  %48 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], ptr %2, i64 0, i64 1, i64 3, !dbg !1321
  call void @initbuffer(ptr noundef nonnull %48) #41, !dbg !1317
  %49 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 3, !dbg !1322
  store ptr %48, ptr %49, align 8, !dbg !1320, !tbaa !938
  call void @llvm.dbg.value(metadata i64 4, metadata !1293, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32 0, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1310
  call void @llvm.dbg.value(metadata i32 0, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1310
  call void @llvm.dbg.value(metadata i32 0, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !1310
  %50 = getelementptr inbounds ptr, ptr %0, i64 1, !dbg !1323
  %51 = load ptr, ptr %50, align 8, !dbg !1323, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %51, metadata !1022, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata ptr @.str.72, metadata !1028, metadata !DIExpression()), !dbg !1324
  %52 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(2) @.str.72) #42, !dbg !1326
  %53 = icmp eq i32 %52, 0, !dbg !1327
  br i1 %53, label %56, label %54, !dbg !1328

54:                                               ; preds = %41
  %55 = call ptr @fopen_safer(ptr noundef %51, ptr noundef nonnull @.str.73) #41, !dbg !1330
  br label %58, !dbg !1328

56:                                               ; preds = %41
  %57 = load ptr, ptr @stdin, align 8, !dbg !1329, !tbaa !938
  br label %58, !dbg !1328

58:                                               ; preds = %56, %54
  %59 = phi ptr [ %57, %56 ], [ %55, %54 ], !dbg !1328
  call void @llvm.dbg.value(metadata ptr %59, metadata !1284, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1310
  %60 = icmp eq ptr %59, null, !dbg !1331
  br i1 %60, label %20, label %61, !dbg !1333

61:                                               ; preds = %58
  call void @fadvise(ptr noundef nonnull %59, i32 noundef 2) #41, !dbg !1335
  %62 = load i1, ptr @delim, align 1, !dbg !1336
  %63 = select i1 %62, i8 0, i8 10, !dbg !1336
  %64 = call ptr @readlinebuffer_delim(ptr noundef nonnull %42, ptr noundef nonnull %59, i8 noundef signext %63) #41, !dbg !1337
  call void @llvm.dbg.value(metadata ptr %64, metadata !1276, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata ptr %59, metadata !1338, metadata !DIExpression()), !dbg !1344
  %65 = load i32, ptr %59, align 8, !dbg !1347, !tbaa !1348
  %66 = and i32 %65, 32, !dbg !1350
  %67 = icmp eq i32 %66, 0, !dbg !1350
  br i1 %67, label %68, label %34, !dbg !1351

68:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i64 2, metadata !1291, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i64 0, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i64 0, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i64 0, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1310
  %69 = icmp ne ptr %30, null, !dbg !1353
  %70 = icmp ne ptr %64, null, !dbg !1354
  %71 = select i1 %69, i1 true, i1 %70, !dbg !1354
  br i1 %71, label %78, label %72, !dbg !1355

72:                                               ; preds = %214, %68
  %73 = phi i64 [ 0, %68 ], [ %218, %214 ], !dbg !1356
  %74 = phi i64 [ 0, %68 ], [ %219, %214 ], !dbg !1310
  %75 = phi i64 [ 0, %68 ], [ %220, %214 ], !dbg !1356
  call void @llvm.dbg.value(metadata i64 0, metadata !1308, metadata !DIExpression()), !dbg !1357
  %76 = call i32 @rpl_fclose(ptr noundef nonnull %18) #41, !dbg !1358
  %77 = icmp eq i32 %76, 0, !dbg !1361
  br i1 %77, label %234, label %227, !dbg !1362

78:                                               ; preds = %68, %214
  %79 = phi i32 [ %221, %214 ], [ 0, %68 ], !dbg !1363
  %80 = phi i32 [ %222, %214 ], [ 0, %68 ], !dbg !1364
  %81 = phi i32 [ %217, %214 ], [ 0, %68 ], !dbg !1363
  %82 = phi i32 [ %216, %214 ], [ 0, %68 ], !dbg !1364
  %83 = phi ptr [ %215, %214 ], [ %30, %68 ], !dbg !1365
  %84 = phi ptr [ %223, %214 ], [ %64, %68 ], !dbg !1365
  %85 = phi i64 [ %220, %214 ], [ 0, %68 ]
  %86 = phi i64 [ %219, %214 ], [ 0, %68 ]
  %87 = phi i64 [ %218, %214 ], [ 0, %68 ]
  call void @llvm.dbg.value(metadata ptr %84, metadata !1276, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata ptr %83, metadata !1276, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i32 %82, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1310
  call void @llvm.dbg.value(metadata i32 %81, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1310
  call void @llvm.dbg.value(metadata i32 %80, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1310
  call void @llvm.dbg.value(metadata i32 %79, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %85, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %86, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %87, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i8 0, metadata !1299, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !1366
  call void @llvm.dbg.value(metadata i8 0, metadata !1299, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1366
  %88 = icmp eq ptr %83, null, !dbg !1367
  br i1 %88, label %89, label %90, !dbg !1368

89:                                               ; preds = %78
  store i1 true, ptr @seen_unpairable, align 1, !dbg !1369
  br label %137, !dbg !1372

90:                                               ; preds = %78
  %91 = icmp eq ptr %84, null, !dbg !1373
  br i1 %91, label %92, label %93, !dbg !1374

92:                                               ; preds = %90
  store i1 true, ptr @seen_unpairable, align 1, !dbg !1369
  br label %135, !dbg !1372

93:                                               ; preds = %90
  %94 = load i8, ptr @hard_LC_COLLATE, align 1, !dbg !1375, !tbaa !1178, !range !1376, !noundef !995
  %95 = icmp eq i8 %94, 0, !dbg !1375
  br i1 %95, label %108, label %96, !dbg !1377

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.linebuffer, ptr %83, i64 0, i32 2, !dbg !1378
  %98 = load ptr, ptr %97, align 8, !dbg !1378, !tbaa !1379
  %99 = getelementptr inbounds %struct.linebuffer, ptr %83, i64 0, i32 1, !dbg !1381
  %100 = load i64, ptr %99, align 8, !dbg !1381, !tbaa !1382
  %101 = add nsw i64 %100, -1, !dbg !1383
  %102 = getelementptr inbounds %struct.linebuffer, ptr %84, i64 0, i32 2, !dbg !1384
  %103 = load ptr, ptr %102, align 8, !dbg !1384, !tbaa !1379
  %104 = getelementptr inbounds %struct.linebuffer, ptr %84, i64 0, i32 1, !dbg !1385
  %105 = load i64, ptr %104, align 8, !dbg !1385, !tbaa !1382
  %106 = add nsw i64 %105, -1, !dbg !1386
  %107 = call i32 @xmemcoll(ptr noundef %98, i64 noundef %101, ptr noundef %103, i64 noundef %106) #41, !dbg !1387
  call void @llvm.dbg.value(metadata i32 %107, metadata !1297, metadata !DIExpression()), !dbg !1366
  br label %127, !dbg !1388

108:                                              ; preds = %93
  %109 = getelementptr inbounds %struct.linebuffer, ptr %83, i64 0, i32 1, !dbg !1389
  %110 = load i64, ptr %109, align 8, !dbg !1389, !tbaa !1382
  %111 = getelementptr inbounds %struct.linebuffer, ptr %84, i64 0, i32 1, !dbg !1389
  %112 = load i64, ptr %111, align 8, !dbg !1389, !tbaa !1382
  %113 = call i64 @llvm.smin.i64(i64 %110, i64 %112), !dbg !1389
  %114 = add nsw i64 %113, -1, !dbg !1390
  call void @llvm.dbg.value(metadata i64 %114, metadata !1300, metadata !DIExpression()), !dbg !1391
  %115 = getelementptr inbounds %struct.linebuffer, ptr %83, i64 0, i32 2, !dbg !1392
  %116 = load ptr, ptr %115, align 8, !dbg !1392, !tbaa !1379
  %117 = getelementptr inbounds %struct.linebuffer, ptr %84, i64 0, i32 2, !dbg !1393
  %118 = load ptr, ptr %117, align 8, !dbg !1393, !tbaa !1379
  %119 = call i32 @memcmp(ptr noundef %116, ptr noundef %118, i64 noundef %114) #42, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %119, metadata !1297, metadata !DIExpression()), !dbg !1366
  %120 = icmp eq i32 %119, 0, !dbg !1395
  br i1 %120, label %121, label %132, !dbg !1397

121:                                              ; preds = %108
  %122 = icmp slt i64 %110, %112, !dbg !1389
  %123 = icmp sgt i64 %110, %112, !dbg !1398
  %124 = zext i1 %123 to i32, !dbg !1398
  %125 = sext i1 %122 to i32, !dbg !1398
  %126 = add nsw i32 %125, %124, !dbg !1398
  call void @llvm.dbg.value(metadata i32 %126, metadata !1297, metadata !DIExpression()), !dbg !1366
  br label %127, !dbg !1399

127:                                              ; preds = %121, %96
  %128 = phi i32 [ %107, %96 ], [ %126, %121 ], !dbg !1400
  call void @llvm.dbg.value(metadata i32 %128, metadata !1297, metadata !DIExpression()), !dbg !1366
  %129 = icmp eq i32 %128, 0, !dbg !1401
  br i1 %129, label %130, label %132, !dbg !1402

130:                                              ; preds = %127
  %131 = add i64 %86, 1, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %131, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1310
  call fastcc void @writeline(ptr noundef nonnull %84, i32 noundef 3), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %85, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %131, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %87, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i8 1, metadata !1299, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1366
  br label %139, !dbg !1406

132:                                              ; preds = %108, %127
  %133 = phi i32 [ %128, %127 ], [ %119, %108 ]
  store i1 true, ptr @seen_unpairable, align 1, !dbg !1369
  %134 = icmp slt i32 %133, 1, !dbg !1407
  br i1 %134, label %135, label %137, !dbg !1372

135:                                              ; preds = %132, %92
  %136 = add i64 %85, 1, !dbg !1409
  call void @llvm.dbg.value(metadata i64 %136, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1310
  call fastcc void @writeline(ptr noundef nonnull %83, i32 noundef 1), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %86, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %87, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1310
  br label %139, !dbg !1406

137:                                              ; preds = %89, %132
  %138 = add i64 %87, 1, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %138, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1310
  call fastcc void @writeline(ptr noundef %84, i32 noundef 2), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %85, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %86, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %138, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i8 poison, metadata !1299, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !1366
  call void @llvm.dbg.value(metadata i8 1, metadata !1299, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1366
  call void @llvm.dbg.value(metadata ptr %83, metadata !1276, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i32 %82, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1310
  call void @llvm.dbg.value(metadata i32 %81, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1310
  call void @llvm.dbg.value(metadata i64 1, metadata !1306, metadata !DIExpression()), !dbg !1415
  br label %179, !dbg !1416

139:                                              ; preds = %130, %135
  %140 = phi i1 [ false, %130 ], [ true, %135 ]
  %141 = phi i64 [ %131, %130 ], [ %86, %135 ]
  %142 = phi i64 [ %85, %130 ], [ %136, %135 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1299, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !1366
  call void @llvm.dbg.value(metadata i8 poison, metadata !1299, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !1366
  call void @llvm.dbg.value(metadata i64 0, metadata !1306, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %81, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1310
  call void @llvm.dbg.value(metadata i32 %82, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1310
  %143 = add nsw i32 %82, 1, !dbg !1418
  %144 = and i32 %143, 3, !dbg !1421
  call void @llvm.dbg.value(metadata i32 %144, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1310
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 %145, !dbg !1422
  %147 = load ptr, ptr %146, align 8, !dbg !1422, !tbaa !938
  %148 = load i1, ptr @delim, align 1, !dbg !1423
  %149 = select i1 %148, i8 0, i8 10, !dbg !1423
  %150 = call ptr @readlinebuffer_delim(ptr noundef %147, ptr noundef nonnull %18, i8 noundef signext %149) #41, !dbg !1424
  call void @llvm.dbg.value(metadata ptr %150, metadata !1276, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1310
  %151 = icmp eq ptr %150, null, !dbg !1425
  br i1 %151, label %156, label %152, !dbg !1427

152:                                              ; preds = %139
  %153 = sext i32 %82 to i64, !dbg !1428
  %154 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 %153, !dbg !1428
  %155 = load ptr, ptr %154, align 8, !dbg !1428, !tbaa !938
  call fastcc void @check_order(ptr noundef %155, ptr noundef nonnull %150, i32 noundef 1), !dbg !1429
  br label %167, !dbg !1429

156:                                              ; preds = %139
  %157 = sext i32 %81 to i64, !dbg !1430
  %158 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 %157, !dbg !1430
  %159 = load ptr, ptr %158, align 8, !dbg !1430, !tbaa !938
  %160 = getelementptr inbounds %struct.linebuffer, ptr %159, i64 0, i32 2, !dbg !1432
  %161 = load ptr, ptr %160, align 8, !dbg !1432, !tbaa !1379
  %162 = icmp eq ptr %161, null, !dbg !1430
  br i1 %162, label %167, label %163, !dbg !1433

163:                                              ; preds = %156
  %164 = sext i32 %82 to i64, !dbg !1434
  %165 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 0, i64 %164, !dbg !1434
  %166 = load ptr, ptr %165, align 8, !dbg !1434, !tbaa !938
  call fastcc void @check_order(ptr noundef nonnull %159, ptr noundef %166, i32 noundef 1), !dbg !1435
  br label %167, !dbg !1435

167:                                              ; preds = %156, %163, %152
  call void @llvm.dbg.value(metadata ptr %18, metadata !1338, metadata !DIExpression()), !dbg !1436
  %168 = load i32, ptr %18, align 8, !dbg !1439, !tbaa !1348
  %169 = and i32 %168, 32, !dbg !1440
  %170 = icmp eq i32 %169, 0, !dbg !1440
  br i1 %170, label %178, label %171, !dbg !1441

171:                                              ; preds = %210, %167
  %172 = phi i64 [ 0, %167 ], [ 1, %210 ]
  %173 = tail call ptr @__errno_location() #44, !dbg !1442
  %174 = load i32, ptr %173, align 4, !dbg !1442, !tbaa !1011
  %175 = getelementptr inbounds ptr, ptr %0, i64 %172, !dbg !1442
  %176 = load ptr, ptr %175, align 8, !dbg !1442, !tbaa !938
  %177 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %176) #41, !dbg !1442
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %174, ptr noundef nonnull @.str.74, ptr noundef %177) #41, !dbg !1442
  unreachable, !dbg !1442

178:                                              ; preds = %167
  call void @llvm.dbg.value(metadata ptr %150, metadata !1276, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i32 %144, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1310
  call void @llvm.dbg.value(metadata i32 %82, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1310
  call void @llvm.dbg.value(metadata i64 1, metadata !1306, metadata !DIExpression()), !dbg !1415
  br i1 %140, label %214, label %179, !dbg !1416

179:                                              ; preds = %137, %178
  %180 = phi ptr [ %83, %137 ], [ %150, %178 ]
  %181 = phi i32 [ %82, %137 ], [ %144, %178 ]
  %182 = phi i32 [ %81, %137 ], [ %82, %178 ]
  %183 = phi i64 [ %138, %137 ], [ %87, %178 ]
  %184 = phi i64 [ %86, %137 ], [ %141, %178 ]
  %185 = phi i64 [ %85, %137 ], [ %142, %178 ]
  call void @llvm.dbg.value(metadata i32 %79, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !1310
  call void @llvm.dbg.value(metadata i32 %80, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1310
  %186 = add nsw i32 %80, 1, !dbg !1418
  %187 = and i32 %186, 3, !dbg !1421
  call void @llvm.dbg.value(metadata i32 %187, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1310
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 %188, !dbg !1422
  %190 = load ptr, ptr %189, align 8, !dbg !1422, !tbaa !938
  %191 = load i1, ptr @delim, align 1, !dbg !1423
  %192 = select i1 %191, i8 0, i8 10, !dbg !1423
  %193 = call ptr @readlinebuffer_delim(ptr noundef %190, ptr noundef nonnull %59, i8 noundef signext %192) #41, !dbg !1424
  call void @llvm.dbg.value(metadata ptr %193, metadata !1276, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1310
  %194 = icmp eq ptr %193, null, !dbg !1425
  br i1 %194, label %199, label %195, !dbg !1427

195:                                              ; preds = %179
  %196 = sext i32 %80 to i64, !dbg !1428
  %197 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 %196, !dbg !1428
  %198 = load ptr, ptr %197, align 8, !dbg !1428, !tbaa !938
  call fastcc void @check_order(ptr noundef %198, ptr noundef nonnull %193, i32 noundef 2), !dbg !1429
  br label %210, !dbg !1429

199:                                              ; preds = %179
  %200 = sext i32 %79 to i64, !dbg !1430
  %201 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 %200, !dbg !1430
  %202 = load ptr, ptr %201, align 8, !dbg !1430, !tbaa !938
  %203 = getelementptr inbounds %struct.linebuffer, ptr %202, i64 0, i32 2, !dbg !1432
  %204 = load ptr, ptr %203, align 8, !dbg !1432, !tbaa !1379
  %205 = icmp eq ptr %204, null, !dbg !1430
  br i1 %205, label %210, label %206, !dbg !1433

206:                                              ; preds = %199
  %207 = sext i32 %80 to i64, !dbg !1434
  %208 = getelementptr inbounds [2 x [4 x ptr]], ptr %3, i64 0, i64 1, i64 %207, !dbg !1434
  %209 = load ptr, ptr %208, align 8, !dbg !1434, !tbaa !938
  call fastcc void @check_order(ptr noundef nonnull %202, ptr noundef %209, i32 noundef 2), !dbg !1435
  br label %210, !dbg !1435

210:                                              ; preds = %206, %199, %195
  call void @llvm.dbg.value(metadata ptr %59, metadata !1338, metadata !DIExpression()), !dbg !1436
  %211 = load i32, ptr %59, align 8, !dbg !1439, !tbaa !1348
  %212 = and i32 %211, 32, !dbg !1440
  %213 = icmp eq i32 %212, 0, !dbg !1440
  br i1 %213, label %214, label %171, !dbg !1441

214:                                              ; preds = %210, %178
  %215 = phi ptr [ %150, %178 ], [ %180, %210 ]
  %216 = phi i32 [ %144, %178 ], [ %181, %210 ]
  %217 = phi i32 [ %82, %178 ], [ %182, %210 ]
  %218 = phi i64 [ %87, %178 ], [ %183, %210 ]
  %219 = phi i64 [ %141, %178 ], [ %184, %210 ]
  %220 = phi i64 [ %142, %178 ], [ %185, %210 ]
  %221 = phi i32 [ %79, %178 ], [ %80, %210 ], !dbg !1310
  %222 = phi i32 [ %80, %178 ], [ %187, %210 ], !dbg !1310
  %223 = phi ptr [ %84, %178 ], [ %193, %210 ], !dbg !1310
  call void @llvm.dbg.value(metadata ptr %223, metadata !1276, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i32 %222, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1310
  call void @llvm.dbg.value(metadata i32 %221, metadata !1281, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1310
  call void @llvm.dbg.value(metadata i64 2, metadata !1306, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %85, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %86, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %138, metadata !1286, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1310
  %224 = icmp ne ptr %215, null, !dbg !1353
  %225 = icmp ne ptr %223, null, !dbg !1354
  %226 = select i1 %224, i1 true, i1 %225, !dbg !1354
  br i1 %226, label %78, label %72, !dbg !1355, !llvm.loop !1443

227:                                              ; preds = %234, %72
  %228 = phi i64 [ 0, %72 ], [ 1, %234 ]
  %229 = tail call ptr @__errno_location() #44, !dbg !1445
  %230 = load i32, ptr %229, align 4, !dbg !1445, !tbaa !1011
  %231 = getelementptr inbounds ptr, ptr %0, i64 %228, !dbg !1445
  %232 = load ptr, ptr %231, align 8, !dbg !1445, !tbaa !938
  %233 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %232) #41, !dbg !1445
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %230, ptr noundef nonnull @.str.74, ptr noundef %233) #41, !dbg !1445
  unreachable, !dbg !1445

234:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 1, metadata !1308, metadata !DIExpression()), !dbg !1357
  %235 = call i32 @rpl_fclose(ptr noundef nonnull %59) #41, !dbg !1358
  %236 = icmp eq i32 %235, 0, !dbg !1361
  br i1 %236, label %237, label %227, !dbg !1362

237:                                              ; preds = %234
  call void @llvm.dbg.value(metadata i64 2, metadata !1308, metadata !DIExpression()), !dbg !1357
  %238 = load i1, ptr @total_option, align 1, !dbg !1446
  br i1 %238, label %239, label %255, !dbg !1448

239:                                              ; preds = %237
  %240 = load i64, ptr @col_sep_len, align 8, !dbg !1449, !tbaa !1198
  %241 = icmp eq i64 %240, 1, !dbg !1452
  %242 = load ptr, ptr @col_sep, align 8, !dbg !1453, !tbaa !938
  br i1 %241, label %243, label %250, !dbg !1454

243:                                              ; preds = %239
  %244 = load i8, ptr %242, align 1, !dbg !1455, !tbaa !1020
  %245 = sext i8 %244 to i32, !dbg !1455
  %246 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #41, !dbg !1455
  %247 = load i1, ptr @delim, align 1, !dbg !1455
  %248 = select i1 %247, i32 0, i32 10, !dbg !1455
  %249 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.75, i64 noundef %75, i32 noundef %245, i64 noundef %73, i32 noundef %245, i64 noundef %74, i32 noundef %245, ptr noundef %246, i32 noundef %248) #41, !dbg !1455
  br label %255, !dbg !1457

250:                                              ; preds = %239
  %251 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #41, !dbg !1458
  %252 = load i1, ptr @delim, align 1, !dbg !1458
  %253 = select i1 %252, i32 0, i32 10, !dbg !1458
  %254 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.76, i64 noundef %75, ptr noundef %242, i64 noundef %73, ptr noundef %242, i64 noundef %74, ptr noundef %242, ptr noundef %251, i32 noundef %253) #41, !dbg !1458
  br label %255

255:                                              ; preds = %243, %250, %237
  %256 = load i8, ptr @issued_disorder_warning, align 1, !dbg !1460, !tbaa !1178, !range !1376, !noundef !995
  %257 = icmp eq i8 %256, 0, !dbg !1460
  %258 = load i8, ptr getelementptr inbounds ([2 x i8], ptr @issued_disorder_warning, i64 0, i64 1), align 1
  %259 = icmp eq i8 %258, 0
  %260 = select i1 %257, i1 %259, i1 false, !dbg !1462
  br i1 %260, label %263, label %261, !dbg !1462

261:                                              ; preds = %255
  %262 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #41, !dbg !1463
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %262) #41, !dbg !1463
  unreachable, !dbg !1463

263:                                              ; preds = %255
  call void @exit(i32 noundef 0) #43, !dbg !1464
  unreachable, !dbg !1464
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1465 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1469 i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @writeline(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !dbg !1472 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1478, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i32 %1, metadata !1479, metadata !DIExpression()), !dbg !1500
  switch i32 %1, label %25 [
    i32 1, label %3
    i32 2, label %5
    i32 3, label %9
  ], !dbg !1501

3:                                                ; preds = %2
  %4 = load i1, ptr @only_file_1, align 1, !dbg !1502
  br i1 %4, label %44, label %25, !dbg !1504

5:                                                ; preds = %2
  %6 = load i1, ptr @only_file_2, align 1, !dbg !1505
  br i1 %6, label %44, label %7, !dbg !1507

7:                                                ; preds = %5
  %8 = load i1, ptr @only_file_1, align 1, !dbg !1508
  br i1 %8, label %25, label %20, !dbg !1509

9:                                                ; preds = %2
  %10 = load i1, ptr @both, align 1, !dbg !1510
  br i1 %10, label %44, label %11, !dbg !1512

11:                                               ; preds = %9
  %12 = load i1, ptr @only_file_1, align 1, !dbg !1513
  br i1 %12, label %18, label %13, !dbg !1514

13:                                               ; preds = %11
  %14 = load i64, ptr @col_sep_len, align 8, !dbg !1515, !tbaa !1198
  %15 = load ptr, ptr @col_sep, align 8, !dbg !1515, !tbaa !938
  %16 = load ptr, ptr @stdout, align 8, !dbg !1515, !tbaa !938
  %17 = tail call i64 @fwrite_unlocked(ptr noundef %15, i64 noundef 1, i64 noundef %14, ptr noundef %16), !dbg !1515
  br label %18, !dbg !1515

18:                                               ; preds = %13, %11
  %19 = load i1, ptr @only_file_2, align 1, !dbg !1516
  br i1 %19, label %25, label %20, !dbg !1517

20:                                               ; preds = %18, %7
  %21 = load i64, ptr @col_sep_len, align 8, !dbg !1518, !tbaa !1198
  %22 = load ptr, ptr @col_sep, align 8, !dbg !1518, !tbaa !938
  %23 = load ptr, ptr @stdout, align 8, !dbg !1518, !tbaa !938
  %24 = tail call i64 @fwrite_unlocked(ptr noundef %22, i64 noundef 1, i64 noundef %21, ptr noundef %23), !dbg !1518
  br label %25, !dbg !1519

25:                                               ; preds = %20, %18, %7, %3, %2
  %26 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !1519
  %27 = load i64, ptr %26, align 8, !dbg !1519, !tbaa !1382
  %28 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !1519
  %29 = load ptr, ptr %28, align 8, !dbg !1519, !tbaa !1379
  %30 = load ptr, ptr @stdout, align 8, !dbg !1519, !tbaa !938
  %31 = tail call i64 @fwrite_unlocked(ptr noundef %29, i64 noundef 1, i64 noundef %27, ptr noundef %30), !dbg !1519
  %32 = load ptr, ptr @stdout, align 8, !dbg !1520, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %32, metadata !1338, metadata !DIExpression()), !dbg !1522
  %33 = load i32, ptr %32, align 8, !dbg !1524, !tbaa !1348
  %34 = and i32 %33, 32, !dbg !1520
  %35 = icmp eq i32 %34, 0, !dbg !1520
  br i1 %35, label %44, label %36, !dbg !1525

36:                                               ; preds = %25
  %37 = tail call ptr @__errno_location() #44, !dbg !1526
  %38 = load i32, ptr %37, align 4, !dbg !1526, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %38, metadata !1529, metadata !DIExpression()), !dbg !1531
  %39 = tail call i32 @fflush_unlocked(ptr noundef nonnull %32) #41, !dbg !1532
  %40 = load ptr, ptr @stdout, align 8, !dbg !1533, !tbaa !938
  %41 = tail call i32 @fpurge(ptr noundef %40) #41, !dbg !1534
  %42 = load ptr, ptr @stdout, align 8, !dbg !1535, !tbaa !938
  tail call void @clearerr_unlocked(ptr noundef %42) #41, !dbg !1535
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #41, !dbg !1536
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %38, ptr noundef %43) #41, !dbg !1536
  unreachable, !dbg !1536

44:                                               ; preds = %9, %5, %3, %25
  ret void, !dbg !1537
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_order(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #11 !dbg !1538 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1542, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata ptr %1, metadata !1543, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i32 %2, metadata !1544, metadata !DIExpression()), !dbg !1555
  %4 = load i32, ptr @check_input_order, align 4, !dbg !1556, !tbaa !1020
  switch i32 %4, label %5 [
    i32 2, label %39
    i32 1, label %7
  ], !dbg !1557

5:                                                ; preds = %3
  %6 = load i1, ptr @seen_unpairable, align 1, !dbg !1558
  br i1 %6, label %7, label %39, !dbg !1559

7:                                                ; preds = %3, %5
  %8 = add nsw i32 %2, -1, !dbg !1560
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [2 x i8], ptr @issued_disorder_warning, i64 0, i64 %9, !dbg !1561
  %11 = load i8, ptr %10, align 1, !dbg !1561, !tbaa !1178, !range !1376, !noundef !995
  %12 = icmp eq i8 %11, 0, !dbg !1561
  br i1 %12, label %13, label %39, !dbg !1562

13:                                               ; preds = %7
  %14 = load i8, ptr @hard_LC_COLLATE, align 1, !dbg !1563, !tbaa !1178, !range !1376, !noundef !995
  %15 = icmp eq i8 %14, 0, !dbg !1563
  %16 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !1565
  %17 = load ptr, ptr %16, align 8, !dbg !1565, !tbaa !1379
  %18 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !1565
  %19 = load i64, ptr %18, align 8, !dbg !1565, !tbaa !1382
  %20 = add nsw i64 %19, -1, !dbg !1565
  %21 = getelementptr inbounds %struct.linebuffer, ptr %1, i64 0, i32 2, !dbg !1565
  %22 = load ptr, ptr %21, align 8, !dbg !1565, !tbaa !1379
  %23 = getelementptr inbounds %struct.linebuffer, ptr %1, i64 0, i32 1, !dbg !1565
  %24 = load i64, ptr %23, align 8, !dbg !1565, !tbaa !1382
  %25 = add nsw i64 %24, -1, !dbg !1565
  br i1 %15, label %28, label %26, !dbg !1566

26:                                               ; preds = %13
  %27 = tail call i32 @xmemcoll(ptr noundef %17, i64 noundef %20, ptr noundef %22, i64 noundef %25) #41, !dbg !1567
  call void @llvm.dbg.value(metadata i32 %27, metadata !1545, metadata !DIExpression()), !dbg !1568
  br label %30, !dbg !1569

28:                                               ; preds = %13
  %29 = tail call i32 @memcmp2(ptr noundef %17, i64 noundef %20, ptr noundef %22, i64 noundef %25) #42, !dbg !1570
  call void @llvm.dbg.value(metadata i32 %29, metadata !1545, metadata !DIExpression()), !dbg !1568
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ], !dbg !1565
  call void @llvm.dbg.value(metadata i32 %31, metadata !1545, metadata !DIExpression()), !dbg !1568
  %32 = icmp sgt i32 %31, 0, !dbg !1571
  br i1 %32, label %33, label %39, !dbg !1572

33:                                               ; preds = %30
  %34 = load i32, ptr @check_input_order, align 4, !dbg !1573, !tbaa !1020
  %35 = icmp eq i32 %34, 1, !dbg !1573
  %36 = zext i1 %35 to i32, !dbg !1573
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #41, !dbg !1573
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %36, i32 noundef 0, ptr noundef %37, i32 noundef %2) #41, !dbg !1573
  call void @llvm.dbg.value(metadata i32 %36, metadata !1550, metadata !DIExpression()), !dbg !1574
  %38 = xor i1 %35, true, !dbg !1575
  tail call void @llvm.assume(i1 %38), !dbg !1573
  store i8 1, ptr %10, align 1, !dbg !1576, !tbaa !1178
  br label %39, !dbg !1577

39:                                               ; preds = %30, %33, %3, %7, %5
  ret void, !dbg !1578
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #12

declare !dbg !1579 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1580 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1583 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1585, metadata !DIExpression()), !dbg !1586
  store ptr %0, ptr @file_name, align 8, !dbg !1587, !tbaa !938
  ret void, !dbg !1588
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #13 !dbg !1589 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1593, metadata !DIExpression()), !dbg !1594
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1595, !tbaa !1178
  ret void, !dbg !1596
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #11 !dbg !1597 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1602, !tbaa !938
  %2 = tail call i32 @close_stream(ptr noundef %1) #41, !dbg !1603
  %3 = icmp eq i32 %2, 0, !dbg !1604
  br i1 %3, label %22, label %4, !dbg !1605

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1606, !tbaa !1178, !range !1376, !noundef !995
  %6 = icmp eq i8 %5, 0, !dbg !1606
  br i1 %6, label %11, label %7, !dbg !1607

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #44, !dbg !1608
  %9 = load i32, ptr %8, align 4, !dbg !1608, !tbaa !1011
  %10 = icmp eq i32 %9, 32, !dbg !1609
  br i1 %10, label %22, label %11, !dbg !1610

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1.37, i32 noundef 5) #41, !dbg !1611
  call void @llvm.dbg.value(metadata ptr %12, metadata !1599, metadata !DIExpression()), !dbg !1612
  %13 = load ptr, ptr @file_name, align 8, !dbg !1613, !tbaa !938
  %14 = icmp eq ptr %13, null, !dbg !1613
  %15 = tail call ptr @__errno_location() #44, !dbg !1615
  %16 = load i32, ptr %15, align 4, !dbg !1615, !tbaa !1011
  br i1 %14, label %19, label %17, !dbg !1616

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #41, !dbg !1617
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.38, ptr noundef %18, ptr noundef %12) #41, !dbg !1617
  br label %20, !dbg !1617

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.39, ptr noundef %12) #41, !dbg !1618
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1619, !tbaa !1011
  tail call void @_exit(i32 noundef %21) #43, !dbg !1620
  unreachable, !dbg !1620

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1621, !tbaa !938
  %24 = tail call i32 @close_stream(ptr noundef %23) #41, !dbg !1623
  %25 = icmp eq i32 %24, 0, !dbg !1624
  br i1 %25, label %28, label %26, !dbg !1625

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1626, !tbaa !1011
  tail call void @_exit(i32 noundef %27) #43, !dbg !1627
  unreachable, !dbg !1627

28:                                               ; preds = %22
  ret void, !dbg !1628
}

; Function Attrs: noreturn
declare !dbg !1629 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 !dbg !1631 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1635, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i32 %1, metadata !1636, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %2, metadata !1637, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata ptr %3, metadata !1638, metadata !DIExpression()), !dbg !1639
  tail call fastcc void @flush_stdout(), !dbg !1640
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1641, !tbaa !938
  %6 = icmp eq ptr %5, null, !dbg !1641
  br i1 %6, label %8, label %7, !dbg !1643

7:                                                ; preds = %4
  tail call void %5() #41, !dbg !1644
  br label %12, !dbg !1644

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1645, !tbaa !938
  %10 = tail call ptr @getprogname() #42, !dbg !1645
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef %10) #41, !dbg !1645
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1647
  ret void, !dbg !1648
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #11 !dbg !1649 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1651, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i32 1, metadata !1653, metadata !DIExpression()), !dbg !1658
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #41, !dbg !1661
  %2 = icmp slt i32 %1, 0, !dbg !1662
  br i1 %2, label %6, label %3, !dbg !1663

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1664, !tbaa !938
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #41, !dbg !1664
  br label %6, !dbg !1664

6:                                                ; preds = %3, %0
  ret void, !dbg !1665
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #11 !dbg !1666 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1668, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i32 %1, metadata !1669, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata ptr %2, metadata !1670, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata ptr %3, metadata !1671, metadata !DIExpression()), !dbg !1672
  %6 = load ptr, ptr @stderr, align 8, !dbg !1673, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %6, metadata !1674, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata ptr %2, metadata !1714, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata ptr %3, metadata !1715, metadata !DIExpression()), !dbg !1716
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #41, !dbg !1718
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1719, !tbaa !1011
  %9 = add i32 %8, 1, !dbg !1719
  store i32 %9, ptr @error_message_count, align 4, !dbg !1719, !tbaa !1011
  %10 = icmp eq i32 %1, 0, !dbg !1720
  br i1 %10, label %20, label %11, !dbg !1722

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1723, metadata !DIExpression()), !dbg !1731
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #41, !dbg !1733
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1727, metadata !DIExpression()), !dbg !1734
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #41, !dbg !1735
  call void @llvm.dbg.value(metadata ptr %12, metadata !1726, metadata !DIExpression()), !dbg !1731
  %13 = icmp eq ptr %12, null, !dbg !1736
  br i1 %13, label %14, label %16, !dbg !1738

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.41, ptr noundef nonnull @.str.5.42, i32 noundef 5) #41, !dbg !1739
  call void @llvm.dbg.value(metadata ptr %15, metadata !1726, metadata !DIExpression()), !dbg !1731
  br label %16, !dbg !1740

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1731
  call void @llvm.dbg.value(metadata ptr %17, metadata !1726, metadata !DIExpression()), !dbg !1731
  %18 = load ptr, ptr @stderr, align 8, !dbg !1741, !tbaa !938
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.43, ptr noundef %17) #41, !dbg !1741
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #41, !dbg !1742
  br label %20, !dbg !1743

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1744, !tbaa !938
  call void @llvm.dbg.value(metadata i32 10, metadata !1745, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata ptr %21, metadata !1750, metadata !DIExpression()), !dbg !1751
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1753
  %23 = load ptr, ptr %22, align 8, !dbg !1753, !tbaa !1754
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1753
  %25 = load ptr, ptr %24, align 8, !dbg !1753, !tbaa !1755
  %26 = icmp ult ptr %23, %25, !dbg !1753
  br i1 %26, label %29, label %27, !dbg !1753, !prof !1756

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #41, !dbg !1753
  br label %31, !dbg !1753

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1753
  store ptr %30, ptr %22, align 8, !dbg !1753, !tbaa !1754
  store i8 10, ptr %23, align 1, !dbg !1753, !tbaa !1020
  br label %31, !dbg !1753

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1757, !tbaa !938
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #41, !dbg !1757
  %34 = icmp eq i32 %0, 0, !dbg !1758
  br i1 %34, label %36, label %35, !dbg !1760

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #43, !dbg !1761
  unreachable, !dbg !1761

36:                                               ; preds = %31
  ret void, !dbg !1762
}

declare !dbg !1763 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1766 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

declare !dbg !1769 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1772 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #11 !dbg !1776 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1780, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i32 %1, metadata !1781, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata ptr %2, metadata !1782, metadata !DIExpression()), !dbg !1789
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #41, !dbg !1790
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1783, metadata !DIExpression()), !dbg !1791
  call void @llvm.va_start(ptr nonnull %4), !dbg !1792
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #46, !dbg !1793
  call void @llvm.va_end(ptr nonnull %4), !dbg !1794
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #41, !dbg !1795
  ret void, !dbg !1795
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !dbg !504 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !516, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i32 %1, metadata !517, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr %2, metadata !518, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i32 %3, metadata !519, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr %4, metadata !520, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr %5, metadata !521, metadata !DIExpression()), !dbg !1796
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1797, !tbaa !1011
  %8 = icmp eq i32 %7, 0, !dbg !1797
  br i1 %8, label %23, label %9, !dbg !1799

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1800, !tbaa !1011
  %11 = icmp eq i32 %10, %3, !dbg !1803
  br i1 %11, label %12, label %22, !dbg !1804

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1805, !tbaa !938
  %14 = icmp eq ptr %13, %2, !dbg !1806
  br i1 %14, label %36, label %15, !dbg !1807

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1808
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1809
  br i1 %18, label %19, label %22, !dbg !1809

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !1810
  %21 = icmp eq i32 %20, 0, !dbg !1811
  br i1 %21, label %36, label %22, !dbg !1812

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1813, !tbaa !938
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1814, !tbaa !1011
  br label %23, !dbg !1815

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1816
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1817, !tbaa !938
  %25 = icmp eq ptr %24, null, !dbg !1817
  br i1 %25, label %27, label %26, !dbg !1819

26:                                               ; preds = %23
  tail call void %24() #41, !dbg !1820
  br label %31, !dbg !1820

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1821, !tbaa !938
  %29 = tail call ptr @getprogname() #42, !dbg !1821
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.46, ptr noundef %29) #41, !dbg !1821
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1823, !tbaa !938
  %33 = icmp eq ptr %2, null, !dbg !1823
  %34 = select i1 %33, ptr @.str.3.47, ptr @.str.2.48, !dbg !1823
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #41, !dbg !1823
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1824
  br label %36, !dbg !1825

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1825
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #11 !dbg !1826 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1830, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i32 %1, metadata !1831, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata ptr %2, metadata !1832, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i32 %3, metadata !1833, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata ptr %4, metadata !1834, metadata !DIExpression()), !dbg !1836
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #41, !dbg !1837
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1835, metadata !DIExpression()), !dbg !1838
  call void @llvm.va_start(ptr nonnull %6), !dbg !1839
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #46, !dbg !1840
  call void @llvm.va_end(ptr nonnull %6), !dbg !1841
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #41, !dbg !1842
  ret void, !dbg !1842
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #11 !dbg !1843 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1849, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %1, metadata !1850, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %2, metadata !1851, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 %3, metadata !1852, metadata !DIExpression()), !dbg !1853
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #41, !dbg !1854
  ret void, !dbg !1855
}

; Function Attrs: nounwind
declare !dbg !1856 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 !dbg !1859 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1897, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i32 %1, metadata !1898, metadata !DIExpression()), !dbg !1899
  %3 = icmp eq ptr %0, null, !dbg !1900
  br i1 %3, label %7, label %4, !dbg !1902

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !1903
  call void @llvm.dbg.value(metadata i32 %5, metadata !1849, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i64 0, metadata !1850, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i64 0, metadata !1851, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i32 %1, metadata !1852, metadata !DIExpression()), !dbg !1904
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #41, !dbg !1906
  br label %7, !dbg !1907

7:                                                ; preds = %4, %2
  ret void, !dbg !1908
}

; Function Attrs: nofree nounwind
declare !dbg !1909 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #11 !dbg !1912 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1950, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 0, metadata !1951, metadata !DIExpression()), !dbg !1954
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !1955
  call void @llvm.dbg.value(metadata i32 %2, metadata !1952, metadata !DIExpression()), !dbg !1954
  %3 = icmp slt i32 %2, 0, !dbg !1956
  br i1 %3, label %4, label %6, !dbg !1958

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1959
  br label %24, !dbg !1960

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !1961
  %8 = icmp eq i32 %7, 0, !dbg !1961
  br i1 %8, label %13, label %9, !dbg !1963

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !1964
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #41, !dbg !1965
  %12 = icmp eq i64 %11, -1, !dbg !1966
  br i1 %12, label %16, label %13, !dbg !1967

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #41, !dbg !1968
  %15 = icmp eq i32 %14, 0, !dbg !1968
  br i1 %15, label %16, label %18, !dbg !1969

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !1951, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 0, metadata !1953, metadata !DIExpression()), !dbg !1954
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1970
  call void @llvm.dbg.value(metadata i32 %17, metadata !1953, metadata !DIExpression()), !dbg !1954
  br label %24, !dbg !1971

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #44, !dbg !1972
  %20 = load i32, ptr %19, align 4, !dbg !1972, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %20, metadata !1951, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 0, metadata !1953, metadata !DIExpression()), !dbg !1954
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !1970
  call void @llvm.dbg.value(metadata i32 %21, metadata !1953, metadata !DIExpression()), !dbg !1954
  %22 = icmp eq i32 %20, 0, !dbg !1973
  br i1 %22, label %24, label %23, !dbg !1971

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !1975, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 -1, metadata !1953, metadata !DIExpression()), !dbg !1954
  br label %24, !dbg !1977

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !1954
  ret i32 %25, !dbg !1978
}

; Function Attrs: nofree nounwind
declare !dbg !1979 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1980 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1982 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #11 !dbg !1985 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2023, metadata !DIExpression()), !dbg !2024
  %2 = icmp eq ptr %0, null, !dbg !2025
  br i1 %2, label %6, label %3, !dbg !2027

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !2028
  %5 = icmp eq i32 %4, 0, !dbg !2028
  br i1 %5, label %6, label %8, !dbg !2029

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2030
  br label %16, !dbg !2031

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2032, metadata !DIExpression()), !dbg !2037
  %9 = load i32, ptr %0, align 8, !dbg !2039, !tbaa !1348
  %10 = and i32 %9, 256, !dbg !2041
  %11 = icmp eq i32 %10, 0, !dbg !2041
  br i1 %11, label %14, label %12, !dbg !2042

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #41, !dbg !2043
  br label %14, !dbg !2043

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2044
  br label %16, !dbg !2045

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2024
  ret i32 %17, !dbg !2046
}

; Function Attrs: nofree nounwind
declare !dbg !2047 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @fopen_safer(ptr noundef nonnull %0, ptr noundef nonnull %1) local_unnamed_addr #11 !dbg !2048 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2086, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata ptr %1, metadata !2087, metadata !DIExpression()), !dbg !2101
  %3 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull %0, ptr noundef nonnull %1) #41, !dbg !2102
  call void @llvm.dbg.value(metadata ptr %3, metadata !2088, metadata !DIExpression()), !dbg !2101
  %4 = icmp eq ptr %3, null, !dbg !2103
  br i1 %4, label %25, label %5, !dbg !2104

5:                                                ; preds = %2
  %6 = tail call i32 @fileno(ptr noundef nonnull %3) #41, !dbg !2105
  call void @llvm.dbg.value(metadata i32 %6, metadata !2089, metadata !DIExpression()), !dbg !2106
  %7 = icmp ult i32 %6, 3, !dbg !2107
  br i1 %7, label %8, label %25, !dbg !2107

8:                                                ; preds = %5
  %9 = tail call i32 @dup_safer(i32 noundef %6) #41, !dbg !2108
  call void @llvm.dbg.value(metadata i32 %9, metadata !2092, metadata !DIExpression()), !dbg !2109
  %10 = icmp slt i32 %9, 0, !dbg !2110
  br i1 %10, label %11, label %15, !dbg !2111

11:                                               ; preds = %8
  %12 = tail call ptr @__errno_location() #44, !dbg !2112
  %13 = load i32, ptr %12, align 4, !dbg !2112, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %13, metadata !2095, metadata !DIExpression()), !dbg !2113
  %14 = tail call i32 @rpl_fclose(ptr noundef nonnull %3) #41, !dbg !2114
  store i32 %13, ptr %12, align 4, !dbg !2115, !tbaa !1011
  br label %25

15:                                               ; preds = %8
  %16 = tail call i32 @rpl_fclose(ptr noundef nonnull %3) #41, !dbg !2116
  %17 = icmp eq i32 %16, 0, !dbg !2117
  br i1 %17, label %18, label %21, !dbg !2118

18:                                               ; preds = %15
  %19 = tail call noalias ptr @fdopen(i32 noundef %9, ptr noundef nonnull %1) #41, !dbg !2119
  call void @llvm.dbg.value(metadata ptr %19, metadata !2088, metadata !DIExpression()), !dbg !2101
  %20 = icmp eq ptr %19, null, !dbg !2120
  br i1 %20, label %21, label %25, !dbg !2121

21:                                               ; preds = %18, %15
  call void @llvm.dbg.value(metadata ptr poison, metadata !2088, metadata !DIExpression()), !dbg !2101
  %22 = tail call ptr @__errno_location() #44, !dbg !2122
  %23 = load i32, ptr %22, align 4, !dbg !2122, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %23, metadata !2098, metadata !DIExpression()), !dbg !2123
  %24 = tail call i32 @close(i32 noundef %9) #41, !dbg !2124
  store i32 %23, ptr %22, align 4, !dbg !2125, !tbaa !1011
  br label %25

25:                                               ; preds = %5, %18, %2, %21, %11
  %26 = phi ptr [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ], !dbg !2101
  ret ptr %26, !dbg !2126
}

; Function Attrs: nofree nounwind
declare !dbg !2127 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !2130 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #11 !dbg !2131 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2169, metadata !DIExpression()), !dbg !2170
  tail call void @__fpurge(ptr noundef nonnull %0) #41, !dbg !2171
  ret i32 0, !dbg !2172
}

; Function Attrs: nounwind
declare !dbg !2173 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !2176 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2214, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %1, metadata !2215, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i32 %2, metadata !2216, metadata !DIExpression()), !dbg !2220
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2221
  %5 = load ptr, ptr %4, align 8, !dbg !2221, !tbaa !2222
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2223
  %7 = load ptr, ptr %6, align 8, !dbg !2223, !tbaa !2224
  %8 = icmp eq ptr %5, %7, !dbg !2225
  br i1 %8, label %9, label %27, !dbg !2226

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2227
  %11 = load ptr, ptr %10, align 8, !dbg !2227, !tbaa !1754
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2228
  %13 = load ptr, ptr %12, align 8, !dbg !2228, !tbaa !2229
  %14 = icmp eq ptr %11, %13, !dbg !2230
  br i1 %14, label %15, label %27, !dbg !2231

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2232
  %17 = load ptr, ptr %16, align 8, !dbg !2232, !tbaa !2233
  %18 = icmp eq ptr %17, null, !dbg !2234
  br i1 %18, label %19, label %27, !dbg !2235

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !2236
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #41, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %21, metadata !2217, metadata !DIExpression()), !dbg !2238
  %22 = icmp eq i64 %21, -1, !dbg !2239
  br i1 %22, label %29, label %23, !dbg !2241

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2242, !tbaa !1348
  %25 = and i32 %24, -17, !dbg !2242
  store i32 %25, ptr %0, align 8, !dbg !2242, !tbaa !1348
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2243
  store i64 %21, ptr %26, align 8, !dbg !2244, !tbaa !2245
  br label %29, !dbg !2246

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2247
  br label %29, !dbg !2248

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2220
  ret i32 %30, !dbg !2249
}

; Function Attrs: nofree nounwind
declare !dbg !2250 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !2253 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2256, !tbaa !938
  ret ptr %1, !dbg !2257
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #11 !dbg !2258 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2262, metadata !DIExpression()), !dbg !2267
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #41, !dbg !2268
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2263, metadata !DIExpression()), !dbg !2269
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #41, !dbg !2270
  %4 = icmp eq i32 %3, 0, !dbg !2270
  br i1 %4, label %5, label %12, !dbg !2272

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !2273, metadata !DIExpression()), !dbg !2277
  %6 = load i16, ptr %2, align 16, !dbg !2280
  %7 = icmp eq i16 %6, 67, !dbg !2280
  br i1 %7, label %11, label %8, !dbg !2281

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !2273, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata ptr @.str.1.67, metadata !2276, metadata !DIExpression()), !dbg !2282
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.67, i64 6), !dbg !2284
  %10 = icmp eq i32 %9, 0, !dbg !2285
  br i1 %10, label %11, label %12, !dbg !2286

11:                                               ; preds = %8, %5
  br label %12, !dbg !2287

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !2267
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #41, !dbg !2288
  ret i1 %13, !dbg !2288
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nofree nounwind memory(argmem: readwrite) uwtable
define dso_local void @initbuffer(ptr noundef %0) local_unnamed_addr #19 !dbg !2289 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2299, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata ptr %0, metadata !2301, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 0, metadata !2307, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 24, metadata !2308, metadata !DIExpression()), !dbg !2309
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %0, i8 noundef 0, i64 noundef 24, i1 noundef false) #41, !dbg !2311
  ret void, !dbg !2312
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nounwind uwtable
define dso_local ptr @readlinebuffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !2313 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2351, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata ptr %1, metadata !2352, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata ptr %0, metadata !2354, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata ptr %1, metadata !2359, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 10, metadata !2360, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata ptr %1, metadata !2371, metadata !DIExpression()), !dbg !2376
  %3 = load i32, ptr %1, align 8, !dbg !2379, !tbaa !1348
  %4 = and i32 %3, 16, !dbg !2380
  %5 = icmp eq i32 %4, 0, !dbg !2380
  br i1 %5, label %6, label %60, !dbg !2381

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2382
  %8 = load ptr, ptr %7, align 8, !dbg !2382, !tbaa !1379
  call void @llvm.dbg.value(metadata ptr %8, metadata !2361, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata ptr %8, metadata !2362, metadata !DIExpression()), !dbg !2369
  %9 = load i64, ptr %0, align 8, !dbg !2383, !tbaa !2384
  %10 = getelementptr inbounds i8, ptr %8, i64 %9, !dbg !2385
  call void @llvm.dbg.value(metadata ptr %10, metadata !2363, metadata !DIExpression()), !dbg !2369
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  br label %13, !dbg !2386

13:                                               ; preds = %46, %6
  %14 = phi ptr [ %8, %6 ], [ %47, %46 ], !dbg !2369
  %15 = phi ptr [ %8, %6 ], [ %51, %46 ], !dbg !2369
  %16 = phi ptr [ %10, %6 ], [ %49, %46 ], !dbg !2369
  call void @llvm.dbg.value(metadata ptr %16, metadata !2363, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata ptr %15, metadata !2362, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata ptr %14, metadata !2361, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata ptr %1, metadata !2387, metadata !DIExpression()), !dbg !2390
  %17 = load ptr, ptr %11, align 8, !dbg !2392, !tbaa !2224
  %18 = load ptr, ptr %12, align 8, !dbg !2392, !tbaa !2222
  %19 = icmp ult ptr %17, %18, !dbg !2392
  br i1 %19, label %20, label %24, !dbg !2392, !prof !1756

20:                                               ; preds = %13
  %21 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !2392
  store ptr %21, ptr %11, align 8, !dbg !2392, !tbaa !2224
  %22 = load i8, ptr %17, align 1, !dbg !2392, !tbaa !1020
  %23 = zext i8 %22 to i32, !dbg !2392
  call void @llvm.dbg.value(metadata i32 %23, metadata !2364, metadata !DIExpression()), !dbg !2369
  br label %37, !dbg !2393

24:                                               ; preds = %13
  %25 = tail call i32 @__uflow(ptr noundef nonnull %1) #41, !dbg !2392
  call void @llvm.dbg.value(metadata i32 %25, metadata !2364, metadata !DIExpression()), !dbg !2369
  %26 = icmp eq i32 %25, -1, !dbg !2394
  br i1 %26, label %27, label %37, !dbg !2393

27:                                               ; preds = %24
  %28 = icmp eq ptr %15, %14, !dbg !2396
  br i1 %28, label %60, label %29, !dbg !2399

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %1, metadata !2400, metadata !DIExpression()), !dbg !2403
  %30 = load i32, ptr %1, align 8, !dbg !2405, !tbaa !1348
  %31 = and i32 %30, 32, !dbg !2406
  %32 = icmp eq i32 %31, 0, !dbg !2406
  br i1 %32, label %33, label %60, !dbg !2407

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %15, i64 -1, !dbg !2408
  %35 = load i8, ptr %34, align 1, !dbg !2408, !tbaa !1020
  %36 = icmp eq i8 %35, 10, !dbg !2410
  br i1 %36, label %53, label %37, !dbg !2411

37:                                               ; preds = %33, %24, %20
  %38 = phi i32 [ %25, %24 ], [ %23, %20 ], [ 10, %33 ], !dbg !2412
  call void @llvm.dbg.value(metadata i32 %38, metadata !2364, metadata !DIExpression()), !dbg !2369
  %39 = icmp eq ptr %15, %16, !dbg !2413
  br i1 %39, label %40, label %46, !dbg !2414

40:                                               ; preds = %37
  %41 = load i64, ptr %0, align 8, !dbg !2415, !tbaa !2384
  call void @llvm.dbg.value(metadata i64 %41, metadata !2365, metadata !DIExpression()), !dbg !2416
  %42 = tail call nonnull ptr @xpalloc(ptr noundef %14, ptr noundef nonnull %0, i64 noundef 1, i64 noundef -1, i64 noundef 1) #41, !dbg !2417
  call void @llvm.dbg.value(metadata ptr %42, metadata !2361, metadata !DIExpression()), !dbg !2369
  %43 = getelementptr inbounds i8, ptr %42, i64 %41, !dbg !2418
  call void @llvm.dbg.value(metadata ptr %43, metadata !2362, metadata !DIExpression()), !dbg !2369
  store ptr %42, ptr %7, align 8, !dbg !2419, !tbaa !1379
  %44 = load i64, ptr %0, align 8, !dbg !2420, !tbaa !2384
  %45 = getelementptr inbounds i8, ptr %42, i64 %44, !dbg !2421
  call void @llvm.dbg.value(metadata ptr %45, metadata !2363, metadata !DIExpression()), !dbg !2369
  br label %46, !dbg !2422

46:                                               ; preds = %40, %37
  %47 = phi ptr [ %42, %40 ], [ %14, %37 ], !dbg !2369
  %48 = phi ptr [ %43, %40 ], [ %15, %37 ], !dbg !2369
  %49 = phi ptr [ %45, %40 ], [ %16, %37 ], !dbg !2369
  call void @llvm.dbg.value(metadata ptr %49, metadata !2363, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata ptr %48, metadata !2362, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata ptr %47, metadata !2361, metadata !DIExpression()), !dbg !2369
  %50 = trunc i32 %38 to i8, !dbg !2423
  %51 = getelementptr inbounds i8, ptr %48, i64 1, !dbg !2424
  call void @llvm.dbg.value(metadata ptr %51, metadata !2362, metadata !DIExpression()), !dbg !2369
  store i8 %50, ptr %48, align 1, !dbg !2425, !tbaa !1020
  %52 = icmp eq i32 %38, 10, !dbg !2426
  br i1 %52, label %53, label %13, !dbg !2427, !llvm.loop !2428

53:                                               ; preds = %46, %33
  %54 = phi ptr [ %14, %33 ], [ %47, %46 ], !dbg !2369
  %55 = phi ptr [ %15, %33 ], [ %51, %46 ], !dbg !2369
  call void @llvm.dbg.value(metadata ptr %55, metadata !2362, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata ptr %54, metadata !2361, metadata !DIExpression()), !dbg !2369
  %56 = ptrtoint ptr %55 to i64, !dbg !2430
  %57 = ptrtoint ptr %54 to i64, !dbg !2430
  %58 = sub i64 %56, %57, !dbg !2430
  %59 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !2431
  store i64 %58, ptr %59, align 8, !dbg !2432, !tbaa !1382
  br label %60, !dbg !2433

60:                                               ; preds = %27, %29, %2, %53
  %61 = phi ptr [ null, %2 ], [ %0, %53 ], [ null, %29 ], [ null, %27 ], !dbg !2369
  ret ptr %61, !dbg !2434
}

declare !dbg !2435 i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @readlinebuffer_delim(ptr noundef %0, ptr noundef %1, i8 noundef signext %2) local_unnamed_addr #11 !dbg !2355 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2354, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata ptr %1, metadata !2359, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 %2, metadata !2360, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata ptr %1, metadata !2371, metadata !DIExpression()), !dbg !2437
  %4 = load i32, ptr %1, align 8, !dbg !2439, !tbaa !1348
  %5 = and i32 %4, 16, !dbg !2440
  %6 = icmp eq i32 %5, 0, !dbg !2440
  br i1 %6, label %7, label %62, !dbg !2441

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2442
  %9 = load ptr, ptr %8, align 8, !dbg !2442, !tbaa !1379
  call void @llvm.dbg.value(metadata ptr %9, metadata !2361, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata ptr %9, metadata !2362, metadata !DIExpression()), !dbg !2436
  %10 = load i64, ptr %0, align 8, !dbg !2443, !tbaa !2384
  %11 = getelementptr inbounds i8, ptr %9, i64 %10, !dbg !2444
  call void @llvm.dbg.value(metadata ptr %11, metadata !2363, metadata !DIExpression()), !dbg !2436
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %13 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %14 = sext i8 %2 to i32
  br label %15, !dbg !2445

15:                                               ; preds = %48, %7
  %16 = phi ptr [ %9, %7 ], [ %49, %48 ], !dbg !2436
  %17 = phi ptr [ %9, %7 ], [ %53, %48 ], !dbg !2436
  %18 = phi ptr [ %11, %7 ], [ %51, %48 ], !dbg !2436
  call void @llvm.dbg.value(metadata ptr %18, metadata !2363, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata ptr %17, metadata !2362, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata ptr %16, metadata !2361, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata ptr %1, metadata !2387, metadata !DIExpression()), !dbg !2446
  %19 = load ptr, ptr %12, align 8, !dbg !2448, !tbaa !2224
  %20 = load ptr, ptr %13, align 8, !dbg !2448, !tbaa !2222
  %21 = icmp ult ptr %19, %20, !dbg !2448
  br i1 %21, label %22, label %26, !dbg !2448, !prof !1756

22:                                               ; preds = %15
  %23 = getelementptr inbounds i8, ptr %19, i64 1, !dbg !2448
  store ptr %23, ptr %12, align 8, !dbg !2448, !tbaa !2224
  %24 = load i8, ptr %19, align 1, !dbg !2448, !tbaa !1020
  %25 = zext i8 %24 to i32, !dbg !2448
  call void @llvm.dbg.value(metadata i32 %25, metadata !2364, metadata !DIExpression()), !dbg !2436
  br label %39, !dbg !2449

26:                                               ; preds = %15
  %27 = tail call i32 @__uflow(ptr noundef nonnull %1) #41, !dbg !2448
  call void @llvm.dbg.value(metadata i32 %27, metadata !2364, metadata !DIExpression()), !dbg !2436
  %28 = icmp eq i32 %27, -1, !dbg !2450
  br i1 %28, label %29, label %39, !dbg !2449

29:                                               ; preds = %26
  %30 = icmp eq ptr %17, %16, !dbg !2451
  br i1 %30, label %62, label %31, !dbg !2452

31:                                               ; preds = %29
  call void @llvm.dbg.value(metadata ptr %1, metadata !2400, metadata !DIExpression()), !dbg !2453
  %32 = load i32, ptr %1, align 8, !dbg !2455, !tbaa !1348
  %33 = and i32 %32, 32, !dbg !2456
  %34 = icmp eq i32 %33, 0, !dbg !2456
  br i1 %34, label %35, label %62, !dbg !2457

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %17, i64 -1, !dbg !2458
  %37 = load i8, ptr %36, align 1, !dbg !2458, !tbaa !1020
  %38 = icmp eq i8 %37, %2, !dbg !2459
  br i1 %38, label %55, label %39, !dbg !2460

39:                                               ; preds = %35, %22, %26
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ %14, %35 ], !dbg !2461
  call void @llvm.dbg.value(metadata i32 %40, metadata !2364, metadata !DIExpression()), !dbg !2436
  %41 = icmp eq ptr %17, %18, !dbg !2462
  br i1 %41, label %42, label %48, !dbg !2463

42:                                               ; preds = %39
  %43 = load i64, ptr %0, align 8, !dbg !2464, !tbaa !2384
  call void @llvm.dbg.value(metadata i64 %43, metadata !2365, metadata !DIExpression()), !dbg !2465
  %44 = tail call nonnull ptr @xpalloc(ptr noundef %16, ptr noundef nonnull %0, i64 noundef 1, i64 noundef -1, i64 noundef 1) #41, !dbg !2466
  call void @llvm.dbg.value(metadata ptr %44, metadata !2361, metadata !DIExpression()), !dbg !2436
  %45 = getelementptr inbounds i8, ptr %44, i64 %43, !dbg !2467
  call void @llvm.dbg.value(metadata ptr %45, metadata !2362, metadata !DIExpression()), !dbg !2436
  store ptr %44, ptr %8, align 8, !dbg !2468, !tbaa !1379
  %46 = load i64, ptr %0, align 8, !dbg !2469, !tbaa !2384
  %47 = getelementptr inbounds i8, ptr %44, i64 %46, !dbg !2470
  call void @llvm.dbg.value(metadata ptr %47, metadata !2363, metadata !DIExpression()), !dbg !2436
  br label %48, !dbg !2471

48:                                               ; preds = %42, %39
  %49 = phi ptr [ %44, %42 ], [ %16, %39 ], !dbg !2436
  %50 = phi ptr [ %45, %42 ], [ %17, %39 ], !dbg !2436
  %51 = phi ptr [ %47, %42 ], [ %18, %39 ], !dbg !2436
  call void @llvm.dbg.value(metadata ptr %51, metadata !2363, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata ptr %50, metadata !2362, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata ptr %49, metadata !2361, metadata !DIExpression()), !dbg !2436
  %52 = trunc i32 %40 to i8, !dbg !2472
  %53 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !2473
  call void @llvm.dbg.value(metadata ptr %53, metadata !2362, metadata !DIExpression()), !dbg !2436
  store i8 %52, ptr %50, align 1, !dbg !2474, !tbaa !1020
  %54 = icmp eq i32 %40, %14, !dbg !2475
  br i1 %54, label %55, label %15, !dbg !2476, !llvm.loop !2477

55:                                               ; preds = %35, %48
  %56 = phi ptr [ %16, %35 ], [ %49, %48 ], !dbg !2436
  %57 = phi ptr [ %17, %35 ], [ %53, %48 ], !dbg !2436
  call void @llvm.dbg.value(metadata ptr %57, metadata !2362, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata ptr %56, metadata !2361, metadata !DIExpression()), !dbg !2436
  %58 = ptrtoint ptr %57 to i64, !dbg !2479
  %59 = ptrtoint ptr %56 to i64, !dbg !2479
  %60 = sub i64 %58, %59, !dbg !2479
  %61 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 1, !dbg !2480
  store i64 %60, ptr %61, align 8, !dbg !2481, !tbaa !1382
  br label %62, !dbg !2482

62:                                               ; preds = %31, %29, %55, %3
  %63 = phi ptr [ null, %3 ], [ %0, %55 ], [ null, %29 ], [ null, %31 ], !dbg !2436
  ret ptr %63, !dbg !2483
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @freebuffer(ptr nocapture noundef readonly %0) local_unnamed_addr #21 !dbg !2484 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2486, metadata !DIExpression()), !dbg !2487
  %2 = getelementptr inbounds %struct.linebuffer, ptr %0, i64 0, i32 2, !dbg !2488
  %3 = load ptr, ptr %2, align 8, !dbg !2488, !tbaa !1379
  tail call void @free(ptr noundef %3) #41, !dbg !2489
  ret void, !dbg !2490
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2491 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @memcmp2(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #23 !dbg !2494 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2498, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i64 %1, metadata !2499, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata ptr %2, metadata !2500, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i64 %3, metadata !2501, metadata !DIExpression()), !dbg !2503
  %5 = tail call i64 @llvm.umin.i64(i64 %1, i64 %3), !dbg !2504
  %6 = tail call i32 @memcmp(ptr noundef %0, ptr noundef %2, i64 noundef %5) #42, !dbg !2505
  call void @llvm.dbg.value(metadata i32 %6, metadata !2502, metadata !DIExpression()), !dbg !2503
  %7 = icmp eq i32 %6, 0, !dbg !2506
  br i1 %7, label %8, label %14, !dbg !2508

8:                                                ; preds = %4
  %9 = icmp ugt i64 %1, %3, !dbg !2509
  %10 = zext i1 %9 to i32, !dbg !2509
  %11 = icmp ult i64 %1, %3, !dbg !2509
  %12 = sext i1 %11 to i32, !dbg !2509
  %13 = add nsw i32 %12, %10, !dbg !2509
  call void @llvm.dbg.value(metadata i32 %13, metadata !2502, metadata !DIExpression()), !dbg !2503
  br label %14, !dbg !2510

14:                                               ; preds = %8, %4
  %15 = phi i32 [ %13, %8 ], [ %6, %4 ], !dbg !2503
  call void @llvm.dbg.value(metadata i32 %15, metadata !2502, metadata !DIExpression()), !dbg !2503
  ret i32 %15, !dbg !2511
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #24 !dbg !2512 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2514, metadata !DIExpression()), !dbg !2517
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #42, !dbg !2518
  call void @llvm.dbg.value(metadata ptr %2, metadata !2515, metadata !DIExpression()), !dbg !2517
  %3 = icmp eq ptr %2, null, !dbg !2519
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2519
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2519
  call void @llvm.dbg.value(metadata ptr %5, metadata !2516, metadata !DIExpression()), !dbg !2517
  %6 = ptrtoint ptr %5 to i64, !dbg !2520
  %7 = ptrtoint ptr %0 to i64, !dbg !2520
  %8 = sub i64 %6, %7, !dbg !2520
  %9 = icmp sgt i64 %8, 6, !dbg !2522
  br i1 %9, label %10, label %19, !dbg !2523

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2524
  call void @llvm.dbg.value(metadata ptr %11, metadata !2525, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata ptr @.str.80, metadata !2530, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i64 7, metadata !2531, metadata !DIExpression()), !dbg !2532
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.80, i64 7), !dbg !2534
  %13 = icmp eq i32 %12, 0, !dbg !2535
  br i1 %13, label %14, label %19, !dbg !2536

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2514, metadata !DIExpression()), !dbg !2517
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.81, i64 noundef 3) #42, !dbg !2537
  %16 = icmp eq i32 %15, 0, !dbg !2540
  %17 = select i1 %16, i64 3, i64 0, !dbg !2541
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2541
  br label %19, !dbg !2541

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2517
  call void @llvm.dbg.value(metadata ptr %21, metadata !2516, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata ptr %20, metadata !2514, metadata !DIExpression()), !dbg !2517
  store ptr %20, ptr @program_name, align 8, !dbg !2542, !tbaa !938
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2543, !tbaa !938
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2544, !tbaa !938
  ret void, !dbg !2545
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2546 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #11 !dbg !561 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !568, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata ptr %1, metadata !569, metadata !DIExpression()), !dbg !2547
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #41, !dbg !2548
  call void @llvm.dbg.value(metadata ptr %5, metadata !570, metadata !DIExpression()), !dbg !2547
  %6 = icmp eq ptr %5, %0, !dbg !2549
  br i1 %6, label %7, label %14, !dbg !2551

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #41, !dbg !2552
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !2553
  call void @llvm.dbg.declare(metadata ptr %4, metadata !576, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata ptr %4, metadata !2555, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata ptr %4, metadata !2564, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i32 0, metadata !2567, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 8, metadata !2568, metadata !DIExpression()), !dbg !2569
  store i64 0, ptr %4, align 8, !dbg !2571
  call void @llvm.dbg.value(metadata ptr %3, metadata !571, metadata !DIExpression(DW_OP_deref)), !dbg !2547
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #41, !dbg !2572
  %9 = icmp eq i64 %8, 2, !dbg !2574
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !571, metadata !DIExpression()), !dbg !2547
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2575
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2547
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !2576
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41, !dbg !2576
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2547
  ret ptr %15, !dbg !2576
}

; Function Attrs: nounwind
declare !dbg !2577 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #11 !dbg !2583 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2588, metadata !DIExpression()), !dbg !2591
  %2 = tail call ptr @__errno_location() #44, !dbg !2592
  %3 = load i32, ptr %2, align 4, !dbg !2592, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %3, metadata !2589, metadata !DIExpression()), !dbg !2591
  %4 = icmp eq ptr %0, null, !dbg !2593
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2593
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #47, !dbg !2594
  call void @llvm.dbg.value(metadata ptr %6, metadata !2590, metadata !DIExpression()), !dbg !2591
  store i32 %3, ptr %2, align 4, !dbg !2595, !tbaa !1011
  ret ptr %6, !dbg !2596
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #25 !dbg !2597 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2603, metadata !DIExpression()), !dbg !2604
  %2 = icmp eq ptr %0, null, !dbg !2605
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2605
  %4 = load i32, ptr %3, align 8, !dbg !2606, !tbaa !2607
  ret i32 %4, !dbg !2609
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2610 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2614, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 %1, metadata !2615, metadata !DIExpression()), !dbg !2616
  %3 = icmp eq ptr %0, null, !dbg !2617
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2617
  store i32 %1, ptr %4, align 8, !dbg !2618, !tbaa !2607
  ret void, !dbg !2619
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #27 !dbg !2620 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2624, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 %1, metadata !2625, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i32 %2, metadata !2626, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 %1, metadata !2627, metadata !DIExpression()), !dbg !2632
  %4 = icmp eq ptr %0, null, !dbg !2633
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2633
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2634
  %7 = lshr i8 %1, 5, !dbg !2635
  %8 = zext i8 %7 to i64, !dbg !2635
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2636
  call void @llvm.dbg.value(metadata ptr %9, metadata !2628, metadata !DIExpression()), !dbg !2632
  %10 = and i8 %1, 31, !dbg !2637
  %11 = zext i8 %10 to i32, !dbg !2637
  call void @llvm.dbg.value(metadata i32 %11, metadata !2630, metadata !DIExpression()), !dbg !2632
  %12 = load i32, ptr %9, align 4, !dbg !2638, !tbaa !1011
  %13 = lshr i32 %12, %11, !dbg !2639
  %14 = and i32 %13, 1, !dbg !2640
  call void @llvm.dbg.value(metadata i32 %14, metadata !2631, metadata !DIExpression()), !dbg !2632
  %15 = xor i32 %13, %2, !dbg !2641
  %16 = and i32 %15, 1, !dbg !2641
  %17 = shl nuw i32 %16, %11, !dbg !2642
  %18 = xor i32 %17, %12, !dbg !2643
  store i32 %18, ptr %9, align 4, !dbg !2643, !tbaa !1011
  ret i32 %14, !dbg !2644
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #27 !dbg !2645 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2649, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i32 %1, metadata !2650, metadata !DIExpression()), !dbg !2652
  %3 = icmp eq ptr %0, null, !dbg !2653
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2655
  call void @llvm.dbg.value(metadata ptr %4, metadata !2649, metadata !DIExpression()), !dbg !2652
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2656
  %6 = load i32, ptr %5, align 4, !dbg !2656, !tbaa !2657
  call void @llvm.dbg.value(metadata i32 %6, metadata !2651, metadata !DIExpression()), !dbg !2652
  store i32 %1, ptr %5, align 4, !dbg !2658, !tbaa !2657
  ret i32 %6, !dbg !2659
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !2660 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2664, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata ptr %1, metadata !2665, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata ptr %2, metadata !2666, metadata !DIExpression()), !dbg !2667
  %4 = icmp eq ptr %0, null, !dbg !2668
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2670
  call void @llvm.dbg.value(metadata ptr %5, metadata !2664, metadata !DIExpression()), !dbg !2667
  store i32 10, ptr %5, align 8, !dbg !2671, !tbaa !2607
  %6 = icmp ne ptr %1, null, !dbg !2672
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2674
  br i1 %8, label %10, label %9, !dbg !2674

9:                                                ; preds = %3
  tail call void @abort() #43, !dbg !2675
  unreachable, !dbg !2675

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2676
  store ptr %1, ptr %11, align 8, !dbg !2677, !tbaa !2678
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2679
  store ptr %2, ptr %12, align 8, !dbg !2680, !tbaa !2681
  ret void, !dbg !2682
}

; Function Attrs: noreturn nounwind
declare !dbg !2683 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #11 !dbg !2684 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2688, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 %1, metadata !2689, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata ptr %2, metadata !2690, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 %3, metadata !2691, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata ptr %4, metadata !2692, metadata !DIExpression()), !dbg !2696
  %6 = icmp eq ptr %4, null, !dbg !2697
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2697
  call void @llvm.dbg.value(metadata ptr %7, metadata !2693, metadata !DIExpression()), !dbg !2696
  %8 = tail call ptr @__errno_location() #44, !dbg !2698
  %9 = load i32, ptr %8, align 4, !dbg !2698, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %9, metadata !2694, metadata !DIExpression()), !dbg !2696
  %10 = load i32, ptr %7, align 8, !dbg !2699, !tbaa !2607
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2700
  %12 = load i32, ptr %11, align 4, !dbg !2700, !tbaa !2657
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2701
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2702
  %15 = load ptr, ptr %14, align 8, !dbg !2702, !tbaa !2678
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2703
  %17 = load ptr, ptr %16, align 8, !dbg !2703, !tbaa !2681
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2704
  call void @llvm.dbg.value(metadata i64 %18, metadata !2695, metadata !DIExpression()), !dbg !2696
  store i32 %9, ptr %8, align 4, !dbg !2705, !tbaa !1011
  ret i64 %18, !dbg !2706
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #11 !dbg !2707 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2713, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %1, metadata !2714, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %2, metadata !2715, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %3, metadata !2716, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i32 %4, metadata !2717, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i32 %5, metadata !2718, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %6, metadata !2719, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %7, metadata !2720, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %8, metadata !2721, metadata !DIExpression()), !dbg !2775
  %16 = tail call i64 @__ctype_get_mb_cur_max() #41, !dbg !2776
  %17 = icmp eq i64 %16, 1, !dbg !2777
  call void @llvm.dbg.value(metadata i1 %17, metadata !2722, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2775
  call void @llvm.dbg.value(metadata i64 0, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 0, metadata !2724, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr null, metadata !2725, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 0, metadata !2726, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 0, metadata !2727, metadata !DIExpression()), !dbg !2775
  %18 = trunc i32 %5 to i8, !dbg !2778
  %19 = lshr i8 %18, 1, !dbg !2778
  %20 = and i8 %19, 1, !dbg !2778
  call void @llvm.dbg.value(metadata i8 %20, metadata !2728, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 0, metadata !2729, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 1, metadata !2730, metadata !DIExpression()), !dbg !2775
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2779

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2780
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2781
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2782
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2783
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2775
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2784
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2785
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2714, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %39, metadata !2730, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %38, metadata !2729, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %37, metadata !2728, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %36, metadata !2727, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %35, metadata !2726, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %34, metadata !2725, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %33, metadata !2724, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 0, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %32, metadata !2716, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %31, metadata !2721, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %30, metadata !2720, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i32 %29, metadata !2717, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.label(metadata !2768), !dbg !2786
  call void @llvm.dbg.value(metadata i8 0, metadata !2731, metadata !DIExpression()), !dbg !2775
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
  ], !dbg !2787

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2728, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i32 5, metadata !2717, metadata !DIExpression()), !dbg !2775
  br label %115, !dbg !2788

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2728, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i32 5, metadata !2717, metadata !DIExpression()), !dbg !2775
  %43 = and i8 %37, 1, !dbg !2789
  %44 = icmp eq i8 %43, 0, !dbg !2789
  br i1 %44, label %45, label %115, !dbg !2788

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2791
  br i1 %46, label %115, label %47, !dbg !2794

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2791, !tbaa !1020
  br label %115, !dbg !2791

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.94, metadata !660, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i32 %29, metadata !661, metadata !DIExpression()), !dbg !2795
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.95, ptr noundef nonnull @.str.11.94, i32 noundef 5) #41, !dbg !2799
  call void @llvm.dbg.value(metadata ptr %49, metadata !662, metadata !DIExpression()), !dbg !2795
  %50 = icmp eq ptr %49, @.str.11.94, !dbg !2800
  br i1 %50, label %51, label %60, !dbg !2802

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #41, !dbg !2803
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #41, !dbg !2804
  call void @llvm.dbg.declare(metadata ptr %13, metadata !664, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata ptr %13, metadata !2806, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata ptr %13, metadata !2814, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i32 0, metadata !2817, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i64 8, metadata !2818, metadata !DIExpression()), !dbg !2819
  store i64 0, ptr %13, align 8, !dbg !2821
  call void @llvm.dbg.value(metadata ptr %12, metadata !663, metadata !DIExpression(DW_OP_deref)), !dbg !2795
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #41, !dbg !2822
  %53 = icmp eq i64 %52, 3, !dbg !2824
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !663, metadata !DIExpression()), !dbg !2795
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2825
  %57 = icmp eq i32 %29, 9, !dbg !2825
  %58 = select i1 %57, ptr @.str.10.96, ptr @.str.12.97, !dbg !2825
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2825
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #41, !dbg !2826
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #41, !dbg !2826
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2795
  call void @llvm.dbg.value(metadata ptr %61, metadata !2720, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr @.str.12.97, metadata !660, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i32 %29, metadata !661, metadata !DIExpression()), !dbg !2827
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.95, ptr noundef nonnull @.str.12.97, i32 noundef 5) #41, !dbg !2829
  call void @llvm.dbg.value(metadata ptr %62, metadata !662, metadata !DIExpression()), !dbg !2827
  %63 = icmp eq ptr %62, @.str.12.97, !dbg !2830
  br i1 %63, label %64, label %73, !dbg !2831

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #41, !dbg !2832
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #41, !dbg !2833
  call void @llvm.dbg.declare(metadata ptr %11, metadata !664, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata ptr %11, metadata !2806, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata ptr %11, metadata !2814, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i32 0, metadata !2817, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i64 8, metadata !2818, metadata !DIExpression()), !dbg !2837
  store i64 0, ptr %11, align 8, !dbg !2839
  call void @llvm.dbg.value(metadata ptr %10, metadata !663, metadata !DIExpression(DW_OP_deref)), !dbg !2827
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #41, !dbg !2840
  %66 = icmp eq i64 %65, 3, !dbg !2841
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !663, metadata !DIExpression()), !dbg !2827
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2842
  %70 = icmp eq i32 %29, 9, !dbg !2842
  %71 = select i1 %70, ptr @.str.10.96, ptr @.str.12.97, !dbg !2842
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2842
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #41, !dbg !2843
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #41, !dbg !2843
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2721, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %74, metadata !2720, metadata !DIExpression()), !dbg !2775
  %76 = and i8 %37, 1, !dbg !2844
  %77 = icmp eq i8 %76, 0, !dbg !2844
  br i1 %77, label %78, label %93, !dbg !2845

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2732, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 0, metadata !2723, metadata !DIExpression()), !dbg !2775
  %79 = load i8, ptr %74, align 1, !dbg !2847, !tbaa !1020
  %80 = icmp eq i8 %79, 0, !dbg !2849
  br i1 %80, label %93, label %81, !dbg !2849

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2732, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %84, metadata !2723, metadata !DIExpression()), !dbg !2775
  %85 = icmp ult i64 %84, %40, !dbg !2850
  br i1 %85, label %86, label %88, !dbg !2853

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2850
  store i8 %82, ptr %87, align 1, !dbg !2850, !tbaa !1020
  br label %88, !dbg !2850

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %89, metadata !2723, metadata !DIExpression()), !dbg !2775
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2854
  call void @llvm.dbg.value(metadata ptr %90, metadata !2732, metadata !DIExpression()), !dbg !2846
  %91 = load i8, ptr %90, align 1, !dbg !2847, !tbaa !1020
  %92 = icmp eq i8 %91, 0, !dbg !2849
  br i1 %92, label %93, label %81, !dbg !2849, !llvm.loop !2855

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2857
  call void @llvm.dbg.value(metadata i64 %94, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 1, metadata !2727, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %75, metadata !2725, metadata !DIExpression()), !dbg !2775
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #42, !dbg !2858
  call void @llvm.dbg.value(metadata i64 %95, metadata !2726, metadata !DIExpression()), !dbg !2775
  br label %115, !dbg !2859

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2727, metadata !DIExpression()), !dbg !2775
  br label %97, !dbg !2860

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2775
  call void @llvm.dbg.value(metadata i8 %98, metadata !2727, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 1, metadata !2728, metadata !DIExpression()), !dbg !2775
  br label %99, !dbg !2861

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2783
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2775
  call void @llvm.dbg.value(metadata i8 %101, metadata !2728, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %100, metadata !2727, metadata !DIExpression()), !dbg !2775
  %102 = and i8 %101, 1, !dbg !2862
  %103 = icmp eq i8 %102, 0, !dbg !2862
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2864
  br label %105, !dbg !2864

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2775
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2778
  call void @llvm.dbg.value(metadata i8 %107, metadata !2728, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %106, metadata !2727, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i32 2, metadata !2717, metadata !DIExpression()), !dbg !2775
  %108 = and i8 %107, 1, !dbg !2865
  %109 = icmp eq i8 %108, 0, !dbg !2865
  br i1 %109, label %110, label %115, !dbg !2867

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2868
  br i1 %111, label %115, label %112, !dbg !2871

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2868, !tbaa !1020
  br label %115, !dbg !2868

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2728, metadata !DIExpression()), !dbg !2775
  br label %115, !dbg !2872

114:                                              ; preds = %28
  call void @abort() #43, !dbg !2873
  unreachable, !dbg !2873

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2857
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.96, %45 ], [ @.str.10.96, %47 ], [ @.str.10.96, %42 ], [ %34, %28 ], [ @.str.12.97, %110 ], [ @.str.12.97, %112 ], [ @.str.12.97, %105 ], [ @.str.10.96, %41 ], !dbg !2775
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2775
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2775
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2775
  call void @llvm.dbg.value(metadata i8 %123, metadata !2728, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %122, metadata !2727, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %121, metadata !2726, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %120, metadata !2725, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %119, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %118, metadata !2721, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %117, metadata !2720, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i32 %116, metadata !2717, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 0, metadata !2737, metadata !DIExpression()), !dbg !2874
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
  br label %138, !dbg !2875

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2857
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2780
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2784
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2785
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2876
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2877
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2714, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %145, metadata !2737, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i8 %144, metadata !2731, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %143, metadata !2730, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %142, metadata !2729, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %141, metadata !2724, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %140, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %139, metadata !2716, metadata !DIExpression()), !dbg !2775
  %147 = icmp eq i64 %139, -1, !dbg !2878
  br i1 %147, label %148, label %152, !dbg !2879

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2880
  %150 = load i8, ptr %149, align 1, !dbg !2880, !tbaa !1020
  %151 = icmp eq i8 %150, 0, !dbg !2881
  br i1 %151, label %627, label %154, !dbg !2882

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2883
  br i1 %153, label %627, label %154, !dbg !2882

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2739, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 0, metadata !2742, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 0, metadata !2743, metadata !DIExpression()), !dbg !2884
  br i1 %129, label %155, label %170, !dbg !2885

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2887
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2888
  br i1 %157, label %158, label %160, !dbg !2888

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2889
  call void @llvm.dbg.value(metadata i64 %159, metadata !2716, metadata !DIExpression()), !dbg !2775
  br label %160, !dbg !2890

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2890
  call void @llvm.dbg.value(metadata i64 %161, metadata !2716, metadata !DIExpression()), !dbg !2775
  %162 = icmp ugt i64 %156, %161, !dbg !2891
  br i1 %162, label %170, label %163, !dbg !2892

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2893
  call void @llvm.dbg.value(metadata ptr %164, metadata !2894, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata ptr %120, metadata !2897, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 %121, metadata !2898, metadata !DIExpression()), !dbg !2899
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2901
  %166 = icmp ne i32 %165, 0, !dbg !2902
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2903
  %168 = xor i1 %166, true, !dbg !2903
  %169 = zext i1 %168 to i8, !dbg !2903
  br i1 %167, label %170, label %688, !dbg !2903

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2884
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2884
  call void @llvm.dbg.value(metadata i8 %173, metadata !2739, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 %171, metadata !2716, metadata !DIExpression()), !dbg !2775
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2904
  %175 = load i8, ptr %174, align 1, !dbg !2904, !tbaa !1020
  call void @llvm.dbg.value(metadata i8 %175, metadata !2744, metadata !DIExpression()), !dbg !2884
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
  ], !dbg !2905

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2906

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2907

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2742, metadata !DIExpression()), !dbg !2884
  %179 = and i8 %144, 1, !dbg !2911
  %180 = icmp eq i8 %179, 0, !dbg !2911
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2911
  br i1 %181, label %182, label %198, !dbg !2911

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2913
  br i1 %183, label %184, label %186, !dbg !2917

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2913
  store i8 39, ptr %185, align 1, !dbg !2913, !tbaa !1020
  br label %186, !dbg !2913

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %187, metadata !2723, metadata !DIExpression()), !dbg !2775
  %188 = icmp ult i64 %187, %146, !dbg !2918
  br i1 %188, label %189, label %191, !dbg !2921

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2918
  store i8 36, ptr %190, align 1, !dbg !2918, !tbaa !1020
  br label %191, !dbg !2918

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2921
  call void @llvm.dbg.value(metadata i64 %192, metadata !2723, metadata !DIExpression()), !dbg !2775
  %193 = icmp ult i64 %192, %146, !dbg !2922
  br i1 %193, label %194, label %196, !dbg !2925

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2922
  store i8 39, ptr %195, align 1, !dbg !2922, !tbaa !1020
  br label %196, !dbg !2922

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2925
  call void @llvm.dbg.value(metadata i64 %197, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 1, metadata !2731, metadata !DIExpression()), !dbg !2775
  br label %198, !dbg !2926

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2775
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2775
  call void @llvm.dbg.value(metadata i8 %200, metadata !2731, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %199, metadata !2723, metadata !DIExpression()), !dbg !2775
  %201 = icmp ult i64 %199, %146, !dbg !2927
  br i1 %201, label %202, label %204, !dbg !2930

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2927
  store i8 92, ptr %203, align 1, !dbg !2927, !tbaa !1020
  br label %204, !dbg !2927

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2930
  call void @llvm.dbg.value(metadata i64 %205, metadata !2723, metadata !DIExpression()), !dbg !2775
  br i1 %126, label %206, label %491, !dbg !2931

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2933
  %208 = icmp ult i64 %207, %171, !dbg !2934
  br i1 %208, label %209, label %480, !dbg !2935

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2936
  %211 = load i8, ptr %210, align 1, !dbg !2936, !tbaa !1020
  %212 = add i8 %211, -48, !dbg !2937
  %213 = icmp ult i8 %212, 10, !dbg !2937
  br i1 %213, label %214, label %480, !dbg !2937

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2938
  br i1 %215, label %216, label %218, !dbg !2942

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2938
  store i8 48, ptr %217, align 1, !dbg !2938, !tbaa !1020
  br label %218, !dbg !2938

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2942
  call void @llvm.dbg.value(metadata i64 %219, metadata !2723, metadata !DIExpression()), !dbg !2775
  %220 = icmp ult i64 %219, %146, !dbg !2943
  br i1 %220, label %221, label %223, !dbg !2946

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2943
  store i8 48, ptr %222, align 1, !dbg !2943, !tbaa !1020
  br label %223, !dbg !2943

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2946
  call void @llvm.dbg.value(metadata i64 %224, metadata !2723, metadata !DIExpression()), !dbg !2775
  br label %480, !dbg !2947

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2948

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2949

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2950

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2952

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2954
  %231 = icmp ult i64 %230, %171, !dbg !2955
  br i1 %231, label %232, label %480, !dbg !2956

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2957
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2958
  %235 = load i8, ptr %234, align 1, !dbg !2958, !tbaa !1020
  %236 = icmp eq i8 %235, 63, !dbg !2959
  br i1 %236, label %237, label %480, !dbg !2960

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2961
  %239 = load i8, ptr %238, align 1, !dbg !2961, !tbaa !1020
  %240 = sext i8 %239 to i32, !dbg !2961
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
  ], !dbg !2962

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2963

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2744, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 %230, metadata !2737, metadata !DIExpression()), !dbg !2874
  %243 = icmp ult i64 %140, %146, !dbg !2965
  br i1 %243, label %244, label %246, !dbg !2968

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2965
  store i8 63, ptr %245, align 1, !dbg !2965, !tbaa !1020
  br label %246, !dbg !2965

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2968
  call void @llvm.dbg.value(metadata i64 %247, metadata !2723, metadata !DIExpression()), !dbg !2775
  %248 = icmp ult i64 %247, %146, !dbg !2969
  br i1 %248, label %249, label %251, !dbg !2972

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2969
  store i8 34, ptr %250, align 1, !dbg !2969, !tbaa !1020
  br label %251, !dbg !2969

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2972
  call void @llvm.dbg.value(metadata i64 %252, metadata !2723, metadata !DIExpression()), !dbg !2775
  %253 = icmp ult i64 %252, %146, !dbg !2973
  br i1 %253, label %254, label %256, !dbg !2976

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2973
  store i8 34, ptr %255, align 1, !dbg !2973, !tbaa !1020
  br label %256, !dbg !2973

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2976
  call void @llvm.dbg.value(metadata i64 %257, metadata !2723, metadata !DIExpression()), !dbg !2775
  %258 = icmp ult i64 %257, %146, !dbg !2977
  br i1 %258, label %259, label %261, !dbg !2980

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2977
  store i8 63, ptr %260, align 1, !dbg !2977, !tbaa !1020
  br label %261, !dbg !2977

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2980
  call void @llvm.dbg.value(metadata i64 %262, metadata !2723, metadata !DIExpression()), !dbg !2775
  br label %480, !dbg !2981

263:                                              ; preds = %170
  br label %274, !dbg !2982

264:                                              ; preds = %170
  br label %274, !dbg !2983

265:                                              ; preds = %170
  br label %272, !dbg !2984

266:                                              ; preds = %170
  br label %272, !dbg !2985

267:                                              ; preds = %170
  br label %274, !dbg !2986

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2987

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2988

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2991

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2993

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2994
  call void @llvm.dbg.label(metadata !2769), !dbg !2995
  br i1 %134, label %274, label %670, !dbg !2996

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2994
  call void @llvm.dbg.label(metadata !2771), !dbg !2998
  br i1 %125, label %535, label %491, !dbg !2999

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !3000

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !3001, !tbaa !1020
  %279 = icmp eq i8 %278, 0, !dbg !3003
  br i1 %279, label %280, label %480, !dbg !3004

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !3005
  br i1 %281, label %282, label %480, !dbg !3007

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2743, metadata !DIExpression()), !dbg !2884
  br label %283, !dbg !3008

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2884
  call void @llvm.dbg.value(metadata i8 %284, metadata !2743, metadata !DIExpression()), !dbg !2884
  br i1 %134, label %480, label %670, !dbg !3009

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2729, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 1, metadata !2743, metadata !DIExpression()), !dbg !2884
  br i1 %133, label %286, label %480, !dbg !3011

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !3012

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !3015
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !3017
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !3017
  %292 = select i1 %290, i64 %146, i64 0, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %292, metadata !2714, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %291, metadata !2724, metadata !DIExpression()), !dbg !2775
  %293 = icmp ult i64 %140, %292, !dbg !3018
  br i1 %293, label %294, label %296, !dbg !3021

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3018
  store i8 39, ptr %295, align 1, !dbg !3018, !tbaa !1020
  br label %296, !dbg !3018

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !3021
  call void @llvm.dbg.value(metadata i64 %297, metadata !2723, metadata !DIExpression()), !dbg !2775
  %298 = icmp ult i64 %297, %292, !dbg !3022
  br i1 %298, label %299, label %301, !dbg !3025

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !3022
  store i8 92, ptr %300, align 1, !dbg !3022, !tbaa !1020
  br label %301, !dbg !3022

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !3025
  call void @llvm.dbg.value(metadata i64 %302, metadata !2723, metadata !DIExpression()), !dbg !2775
  %303 = icmp ult i64 %302, %292, !dbg !3026
  br i1 %303, label %304, label %306, !dbg !3029

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !3026
  store i8 39, ptr %305, align 1, !dbg !3026, !tbaa !1020
  br label %306, !dbg !3026

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !3029
  call void @llvm.dbg.value(metadata i64 %307, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 0, metadata !2731, metadata !DIExpression()), !dbg !2775
  br label %480, !dbg !3030

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !3031

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2745, metadata !DIExpression()), !dbg !3032
  %310 = tail call ptr @__ctype_b_loc() #44, !dbg !3033
  %311 = load ptr, ptr %310, align 8, !dbg !3033, !tbaa !938
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !3033
  %314 = load i16, ptr %313, align 2, !dbg !3033, !tbaa !1052
  %315 = lshr i16 %314, 14, !dbg !3035
  %316 = trunc i16 %315 to i8, !dbg !3035
  %317 = and i8 %316, 1, !dbg !3035
  call void @llvm.dbg.value(metadata i8 %317, metadata !2748, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %171, metadata !2716, metadata !DIExpression()), !dbg !2775
  %318 = icmp eq i8 %317, 0, !dbg !3036
  call void @llvm.dbg.value(metadata i1 %318, metadata !2743, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2884
  br label %368, !dbg !3037

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #41, !dbg !3038
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2749, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata ptr %14, metadata !2806, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata ptr %14, metadata !2814, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 0, metadata !2817, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64 8, metadata !2818, metadata !DIExpression()), !dbg !3042
  store i64 0, ptr %14, align 8, !dbg !3044
  call void @llvm.dbg.value(metadata i64 0, metadata !2745, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 1, metadata !2748, metadata !DIExpression()), !dbg !3032
  %320 = icmp eq i64 %171, -1, !dbg !3045
  br i1 %320, label %321, label %323, !dbg !3047

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %322, metadata !2716, metadata !DIExpression()), !dbg !2775
  br label %323, !dbg !3049

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2884
  call void @llvm.dbg.value(metadata i64 %324, metadata !2716, metadata !DIExpression()), !dbg !2775
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #41, !dbg !3050
  %325 = sub i64 %324, %145, !dbg !3051
  call void @llvm.dbg.value(metadata ptr %15, metadata !2752, metadata !DIExpression(DW_OP_deref)), !dbg !3052
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #41, !dbg !3053
  call void @llvm.dbg.value(metadata i64 %326, metadata !2756, metadata !DIExpression()), !dbg !3052
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !3054

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2745, metadata !DIExpression()), !dbg !3032
  %328 = icmp ugt i64 %324, %145, !dbg !3055
  br i1 %328, label %331, label %329, !dbg !3057

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2748, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 0, metadata !2745, metadata !DIExpression()), !dbg !3032
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3058
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %324, metadata !2716, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i1 true, metadata !2743, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2884
  br label %368, !dbg !3037

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2748, metadata !DIExpression()), !dbg !3032
  br label %360, !dbg !3060

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2745, metadata !DIExpression()), !dbg !3032
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !3062
  %335 = load i8, ptr %334, align 1, !dbg !3062, !tbaa !1020
  %336 = icmp eq i8 %335, 0, !dbg !3057
  br i1 %336, label %363, label %337, !dbg !3063

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !3064
  call void @llvm.dbg.value(metadata i64 %338, metadata !2745, metadata !DIExpression()), !dbg !3032
  %339 = add i64 %338, %145, !dbg !3065
  %340 = icmp eq i64 %338, %325, !dbg !3055
  br i1 %340, label %363, label %331, !dbg !3057, !llvm.loop !3066

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !3067
  %344 = and i1 %343, %133, !dbg !3067
  call void @llvm.dbg.value(metadata i64 1, metadata !2757, metadata !DIExpression()), !dbg !3068
  br i1 %344, label %345, label %354, !dbg !3067

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2757, metadata !DIExpression()), !dbg !3068
  %347 = add i64 %346, %145, !dbg !3069
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !3071
  %349 = load i8, ptr %348, align 1, !dbg !3071, !tbaa !1020
  %350 = sext i8 %349 to i32, !dbg !3071
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !3072

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !3073
  call void @llvm.dbg.value(metadata i64 %352, metadata !2757, metadata !DIExpression()), !dbg !3068
  %353 = icmp eq i64 %352, %326, !dbg !3074
  br i1 %353, label %354, label %345, !dbg !3075, !llvm.loop !3076

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !3078, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %355, metadata !2752, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i32 %355, metadata !3080, metadata !DIExpression()), !dbg !3088
  %356 = call i32 @iswprint(i32 noundef %355) #41, !dbg !3090
  %357 = icmp ne i32 %356, 0, !dbg !3091
  %358 = zext i1 %357 to i8, !dbg !3092
  call void @llvm.dbg.value(metadata i8 %358, metadata !2748, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %326, metadata !2745, metadata !DIExpression()), !dbg !3032
  br label %363, !dbg !3093

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2748, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 0, metadata !2745, metadata !DIExpression()), !dbg !3032
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3058
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3059
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2748, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 0, metadata !2745, metadata !DIExpression()), !dbg !3032
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3058
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %324, metadata !2716, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i1 %361, metadata !2743, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2884
  br label %368, !dbg !3037

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2748, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %364, metadata !2745, metadata !DIExpression()), !dbg !3032
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !3058
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %324, metadata !2716, metadata !DIExpression()), !dbg !2775
  %366 = icmp eq i8 %365, 0, !dbg !3036
  call void @llvm.dbg.value(metadata i1 %366, metadata !2743, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2884
  %367 = icmp ugt i64 %364, 1, !dbg !3094
  br i1 %367, label %374, label %368, !dbg !3037

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !3095
  br i1 %373, label %374, label %480, !dbg !3095

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !3096
  call void @llvm.dbg.value(metadata i64 %379, metadata !2765, metadata !DIExpression()), !dbg !3097
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !3098

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2775
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2876
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2874
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2884
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !3099
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2884
  call void @llvm.dbg.value(metadata i8 %387, metadata !2744, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %386, metadata !2742, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %385, metadata !2739, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 %384, metadata !2737, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i8 %383, metadata !2731, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %382, metadata !2723, metadata !DIExpression()), !dbg !2775
  br i1 %380, label %388, label %434, !dbg !3100

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !3105

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2742, metadata !DIExpression()), !dbg !2884
  %390 = and i8 %383, 1, !dbg !3108
  %391 = icmp eq i8 %390, 0, !dbg !3108
  %392 = select i1 %133, i1 %391, i1 false, !dbg !3108
  br i1 %392, label %393, label %409, !dbg !3108

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !3110
  br i1 %394, label %395, label %397, !dbg !3114

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3110
  store i8 39, ptr %396, align 1, !dbg !3110, !tbaa !1020
  br label %397, !dbg !3110

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !3114
  call void @llvm.dbg.value(metadata i64 %398, metadata !2723, metadata !DIExpression()), !dbg !2775
  %399 = icmp ult i64 %398, %146, !dbg !3115
  br i1 %399, label %400, label %402, !dbg !3118

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !3115
  store i8 36, ptr %401, align 1, !dbg !3115, !tbaa !1020
  br label %402, !dbg !3115

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !3118
  call void @llvm.dbg.value(metadata i64 %403, metadata !2723, metadata !DIExpression()), !dbg !2775
  %404 = icmp ult i64 %403, %146, !dbg !3119
  br i1 %404, label %405, label %407, !dbg !3122

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !3119
  store i8 39, ptr %406, align 1, !dbg !3119, !tbaa !1020
  br label %407, !dbg !3119

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !3122
  call void @llvm.dbg.value(metadata i64 %408, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 1, metadata !2731, metadata !DIExpression()), !dbg !2775
  br label %409, !dbg !3123

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2775
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2775
  call void @llvm.dbg.value(metadata i8 %411, metadata !2731, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %410, metadata !2723, metadata !DIExpression()), !dbg !2775
  %412 = icmp ult i64 %410, %146, !dbg !3124
  br i1 %412, label %413, label %415, !dbg !3127

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !3124
  store i8 92, ptr %414, align 1, !dbg !3124, !tbaa !1020
  br label %415, !dbg !3124

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !3127
  call void @llvm.dbg.value(metadata i64 %416, metadata !2723, metadata !DIExpression()), !dbg !2775
  %417 = icmp ult i64 %416, %146, !dbg !3128
  br i1 %417, label %418, label %422, !dbg !3131

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !3128
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !3128
  store i8 %420, ptr %421, align 1, !dbg !3128, !tbaa !1020
  br label %422, !dbg !3128

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %423, metadata !2723, metadata !DIExpression()), !dbg !2775
  %424 = icmp ult i64 %423, %146, !dbg !3132
  br i1 %424, label %425, label %430, !dbg !3135

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !3132
  %428 = or i8 %427, 48, !dbg !3132
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !3132
  store i8 %428, ptr %429, align 1, !dbg !3132, !tbaa !1020
  br label %430, !dbg !3132

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !3135
  call void @llvm.dbg.value(metadata i64 %431, metadata !2723, metadata !DIExpression()), !dbg !2775
  %432 = and i8 %387, 7, !dbg !3136
  %433 = or i8 %432, 48, !dbg !3137
  call void @llvm.dbg.value(metadata i8 %433, metadata !2744, metadata !DIExpression()), !dbg !2884
  br label %443, !dbg !3138

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !3139
  %436 = icmp eq i8 %435, 0, !dbg !3139
  br i1 %436, label %443, label %437, !dbg !3141

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !3142
  br i1 %438, label %439, label %441, !dbg !3146

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3142
  store i8 92, ptr %440, align 1, !dbg !3142, !tbaa !1020
  br label %441, !dbg !3142

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %442, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 0, metadata !2739, metadata !DIExpression()), !dbg !2884
  br label %443, !dbg !3147

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2775
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2876
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2884
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2884
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2884
  call void @llvm.dbg.value(metadata i8 %448, metadata !2744, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %447, metadata !2742, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %446, metadata !2739, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %445, metadata !2731, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %444, metadata !2723, metadata !DIExpression()), !dbg !2775
  %449 = add i64 %384, 1, !dbg !3148
  %450 = icmp ugt i64 %379, %449, !dbg !3150
  br i1 %450, label %451, label %478, !dbg !3151

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !3152
  %453 = icmp ne i8 %452, 0, !dbg !3152
  %454 = and i8 %447, 1, !dbg !3152
  %455 = icmp eq i8 %454, 0, !dbg !3152
  %456 = select i1 %453, i1 %455, i1 false, !dbg !3152
  br i1 %456, label %457, label %468, !dbg !3152

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !3155
  br i1 %458, label %459, label %461, !dbg !3159

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !3155
  store i8 39, ptr %460, align 1, !dbg !3155, !tbaa !1020
  br label %461, !dbg !3155

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %462, metadata !2723, metadata !DIExpression()), !dbg !2775
  %463 = icmp ult i64 %462, %146, !dbg !3160
  br i1 %463, label %464, label %466, !dbg !3163

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !3160
  store i8 39, ptr %465, align 1, !dbg !3160, !tbaa !1020
  br label %466, !dbg !3160

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !3163
  call void @llvm.dbg.value(metadata i64 %467, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 0, metadata !2731, metadata !DIExpression()), !dbg !2775
  br label %468, !dbg !3164

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !3165
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2775
  call void @llvm.dbg.value(metadata i8 %470, metadata !2731, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %469, metadata !2723, metadata !DIExpression()), !dbg !2775
  %471 = icmp ult i64 %469, %146, !dbg !3166
  br i1 %471, label %472, label %474, !dbg !3169

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !3166
  store i8 %448, ptr %473, align 1, !dbg !3166, !tbaa !1020
  br label %474, !dbg !3166

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %475, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %449, metadata !2737, metadata !DIExpression()), !dbg !2874
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !3170
  %477 = load i8, ptr %476, align 1, !dbg !3170, !tbaa !1020
  call void @llvm.dbg.value(metadata i8 %477, metadata !2744, metadata !DIExpression()), !dbg !2884
  br label %381, !dbg !3171, !llvm.loop !3172

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2884
  call void @llvm.dbg.value(metadata i8 %448, metadata !2744, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %479, metadata !2743, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %447, metadata !2742, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %446, metadata !2739, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 %384, metadata !2737, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i8 %445, metadata !2731, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %444, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %378, metadata !2716, metadata !DIExpression()), !dbg !2775
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !3175
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2775
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2780
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2775
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2775
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2874
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2884
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2884
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2884
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2714, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %489, metadata !2744, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %488, metadata !2743, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %487, metadata !2742, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %173, metadata !2739, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 %486, metadata !2737, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i8 %485, metadata !2731, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %484, metadata !2729, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %483, metadata !2724, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %482, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %481, metadata !2716, metadata !DIExpression()), !dbg !2775
  br i1 %127, label %502, label %491, !dbg !3176

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
  br i1 %137, label %503, label %524, !dbg !3178

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !3179

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
  %514 = lshr i8 %505, 5, !dbg !3180
  %515 = zext i8 %514 to i64, !dbg !3180
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !3181
  %517 = load i32, ptr %516, align 4, !dbg !3181, !tbaa !1011
  %518 = and i8 %505, 31, !dbg !3182
  %519 = zext i8 %518 to i32, !dbg !3182
  %520 = shl nuw i32 1, %519, !dbg !3183
  %521 = and i32 %517, %520, !dbg !3183
  %522 = icmp eq i32 %521, 0, !dbg !3183
  %523 = and i1 %172, %522, !dbg !3184
  br i1 %523, label %573, label %535, !dbg !3184

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
  br i1 %172, label %573, label %535, !dbg !3185

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !3175
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2775
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2780
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2784
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2876
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !3186
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2884
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2884
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2714, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %543, metadata !2744, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %542, metadata !2743, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 %541, metadata !2737, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i8 %540, metadata !2731, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %539, metadata !2729, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %538, metadata !2724, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %537, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %536, metadata !2716, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.label(metadata !2772), !dbg !3187
  br i1 %132, label %545, label %674, !dbg !3188

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2742, metadata !DIExpression()), !dbg !2884
  %546 = and i8 %540, 1, !dbg !3190
  %547 = icmp eq i8 %546, 0, !dbg !3190
  %548 = select i1 %133, i1 %547, i1 false, !dbg !3190
  br i1 %548, label %549, label %565, !dbg !3190

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !3192
  br i1 %550, label %551, label %553, !dbg !3196

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !3192
  store i8 39, ptr %552, align 1, !dbg !3192, !tbaa !1020
  br label %553, !dbg !3192

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !3196
  call void @llvm.dbg.value(metadata i64 %554, metadata !2723, metadata !DIExpression()), !dbg !2775
  %555 = icmp ult i64 %554, %544, !dbg !3197
  br i1 %555, label %556, label %558, !dbg !3200

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !3197
  store i8 36, ptr %557, align 1, !dbg !3197, !tbaa !1020
  br label %558, !dbg !3197

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !3200
  call void @llvm.dbg.value(metadata i64 %559, metadata !2723, metadata !DIExpression()), !dbg !2775
  %560 = icmp ult i64 %559, %544, !dbg !3201
  br i1 %560, label %561, label %563, !dbg !3204

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !3201
  store i8 39, ptr %562, align 1, !dbg !3201, !tbaa !1020
  br label %563, !dbg !3201

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3204
  call void @llvm.dbg.value(metadata i64 %564, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 1, metadata !2731, metadata !DIExpression()), !dbg !2775
  br label %565, !dbg !3205

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2884
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2775
  call void @llvm.dbg.value(metadata i8 %567, metadata !2731, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %566, metadata !2723, metadata !DIExpression()), !dbg !2775
  %568 = icmp ult i64 %566, %544, !dbg !3206
  br i1 %568, label %569, label %571, !dbg !3209

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3206
  store i8 92, ptr %570, align 1, !dbg !3206, !tbaa !1020
  br label %571, !dbg !3206

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3209
  call void @llvm.dbg.value(metadata i64 %544, metadata !2714, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %543, metadata !2744, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %542, metadata !2743, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 1, metadata !2742, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 %541, metadata !2737, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i8 %567, metadata !2731, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %539, metadata !2729, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %538, metadata !2724, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %572, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %536, metadata !2716, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.label(metadata !2773), !dbg !3210
  br label %600, !dbg !3211

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !3175
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2775
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2780
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2784
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2876
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !3186
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2884
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2884
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3214
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2714, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %582, metadata !2744, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %581, metadata !2743, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %580, metadata !2742, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 %579, metadata !2737, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i8 %578, metadata !2731, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %577, metadata !2729, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %576, metadata !2724, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %575, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %574, metadata !2716, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.label(metadata !2773), !dbg !3210
  %584 = and i8 %578, 1, !dbg !3211
  %585 = icmp ne i8 %584, 0, !dbg !3211
  %586 = and i8 %580, 1, !dbg !3211
  %587 = icmp eq i8 %586, 0, !dbg !3211
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3211
  br i1 %588, label %589, label %600, !dbg !3211

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3215
  br i1 %590, label %591, label %593, !dbg !3219

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3215
  store i8 39, ptr %592, align 1, !dbg !3215, !tbaa !1020
  br label %593, !dbg !3215

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3219
  call void @llvm.dbg.value(metadata i64 %594, metadata !2723, metadata !DIExpression()), !dbg !2775
  %595 = icmp ult i64 %594, %583, !dbg !3220
  br i1 %595, label %596, label %598, !dbg !3223

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3220
  store i8 39, ptr %597, align 1, !dbg !3220, !tbaa !1020
  br label %598, !dbg !3220

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3223
  call void @llvm.dbg.value(metadata i64 %599, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 0, metadata !2731, metadata !DIExpression()), !dbg !2775
  br label %600, !dbg !3224

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2884
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2775
  call void @llvm.dbg.value(metadata i8 %609, metadata !2731, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %608, metadata !2723, metadata !DIExpression()), !dbg !2775
  %610 = icmp ult i64 %608, %601, !dbg !3225
  br i1 %610, label %611, label %613, !dbg !3228

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3225
  store i8 %602, ptr %612, align 1, !dbg !3225, !tbaa !1020
  br label %613, !dbg !3225

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3228
  call void @llvm.dbg.value(metadata i64 %614, metadata !2723, metadata !DIExpression()), !dbg !2775
  %615 = icmp eq i8 %603, 0, !dbg !3229
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3231
  call void @llvm.dbg.value(metadata i8 %616, metadata !2730, metadata !DIExpression()), !dbg !2775
  br label %617, !dbg !3232

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !3175
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2775
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2780
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2784
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2785
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2876
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !3186
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2714, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %624, metadata !2737, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i8 %623, metadata !2731, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %622, metadata !2730, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %621, metadata !2729, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %620, metadata !2724, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %619, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %618, metadata !2716, metadata !DIExpression()), !dbg !2775
  %626 = add i64 %624, 1, !dbg !3233
  call void @llvm.dbg.value(metadata i64 %626, metadata !2737, metadata !DIExpression()), !dbg !2874
  br label %138, !dbg !3234, !llvm.loop !3235

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2714, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %143, metadata !2730, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8 %142, metadata !2729, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %141, metadata !2724, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %140, metadata !2723, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %139, metadata !2716, metadata !DIExpression()), !dbg !2775
  %628 = icmp eq i64 %140, 0, !dbg !3237
  %629 = and i1 %133, %628, !dbg !3239
  %630 = xor i1 %629, true, !dbg !3239
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3239
  br i1 %631, label %632, label %670, !dbg !3239

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3240
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3240
  br i1 %636, label %637, label %646, !dbg !3240

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3242
  %639 = icmp eq i8 %638, 0, !dbg !3242
  br i1 %639, label %642, label %640, !dbg !3245

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3246
  br label %694, !dbg !3247

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3248
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3250
  br i1 %645, label %28, label %646, !dbg !3250

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3251
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3253
  br i1 %649, label %650, label %665, !dbg !3253

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2725, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %140, metadata !2723, metadata !DIExpression()), !dbg !2775
  %651 = load i8, ptr %120, align 1, !dbg !3254, !tbaa !1020
  %652 = icmp eq i8 %651, 0, !dbg !3257
  br i1 %652, label %665, label %653, !dbg !3257

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2725, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %656, metadata !2723, metadata !DIExpression()), !dbg !2775
  %657 = icmp ult i64 %656, %146, !dbg !3258
  br i1 %657, label %658, label %660, !dbg !3261

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3258
  store i8 %654, ptr %659, align 1, !dbg !3258, !tbaa !1020
  br label %660, !dbg !3258

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3261
  call void @llvm.dbg.value(metadata i64 %661, metadata !2723, metadata !DIExpression()), !dbg !2775
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3262
  call void @llvm.dbg.value(metadata ptr %662, metadata !2725, metadata !DIExpression()), !dbg !2775
  %663 = load i8, ptr %662, align 1, !dbg !3254, !tbaa !1020
  %664 = icmp eq i8 %663, 0, !dbg !3257
  br i1 %664, label %665, label %653, !dbg !3257, !llvm.loop !3263

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2857
  call void @llvm.dbg.value(metadata i64 %666, metadata !2723, metadata !DIExpression()), !dbg !2775
  %667 = icmp ult i64 %666, %146, !dbg !3265
  br i1 %667, label %668, label %694, !dbg !3267

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3268
  store i8 0, ptr %669, align 1, !dbg !3269, !tbaa !1020
  br label %694, !dbg !3268

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2774), !dbg !3270
  %672 = icmp eq i8 %124, 0, !dbg !3271
  %673 = select i1 %672, i32 2, i32 4, !dbg !3271
  br label %684, !dbg !3271

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3271
  %678 = select i1 %677, i32 2, i32 4, !dbg !3271
  br label %679, !dbg !3273

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2774), !dbg !3270
  %683 = icmp eq i32 %116, 2, !dbg !3273
  br i1 %683, label %684, label %688, !dbg !3271

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3271

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2717, metadata !DIExpression()), !dbg !2775
  %692 = and i32 %5, -3, !dbg !3274
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3275
  br label %694, !dbg !3276

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3277
}

; Function Attrs: nounwind
declare !dbg !3278 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3281 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !3283 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3287, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %1, metadata !3288, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata ptr %2, metadata !3289, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata ptr %0, metadata !3291, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %1, metadata !3296, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata ptr null, metadata !3297, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata ptr %2, metadata !3298, metadata !DIExpression()), !dbg !3304
  %4 = icmp eq ptr %2, null, !dbg !3306
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3306
  call void @llvm.dbg.value(metadata ptr %5, metadata !3299, metadata !DIExpression()), !dbg !3304
  %6 = tail call ptr @__errno_location() #44, !dbg !3307
  %7 = load i32, ptr %6, align 4, !dbg !3307, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %7, metadata !3300, metadata !DIExpression()), !dbg !3304
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3308
  %9 = load i32, ptr %8, align 4, !dbg !3308, !tbaa !2657
  %10 = or i32 %9, 1, !dbg !3309
  call void @llvm.dbg.value(metadata i32 %10, metadata !3301, metadata !DIExpression()), !dbg !3304
  %11 = load i32, ptr %5, align 8, !dbg !3310, !tbaa !2607
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3311
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3312
  %14 = load ptr, ptr %13, align 8, !dbg !3312, !tbaa !2678
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3313
  %16 = load ptr, ptr %15, align 8, !dbg !3313, !tbaa !2681
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3314
  %18 = add i64 %17, 1, !dbg !3315
  call void @llvm.dbg.value(metadata i64 %18, metadata !3302, metadata !DIExpression()), !dbg !3304
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #48, !dbg !3316
  call void @llvm.dbg.value(metadata ptr %19, metadata !3303, metadata !DIExpression()), !dbg !3304
  %20 = load i32, ptr %5, align 8, !dbg !3317, !tbaa !2607
  %21 = load ptr, ptr %13, align 8, !dbg !3318, !tbaa !2678
  %22 = load ptr, ptr %15, align 8, !dbg !3319, !tbaa !2681
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3320
  store i32 %7, ptr %6, align 4, !dbg !3321, !tbaa !1011
  ret ptr %19, !dbg !3322
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #11 !dbg !3292 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3291, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %1, metadata !3296, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata ptr %2, metadata !3297, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata ptr %3, metadata !3298, metadata !DIExpression()), !dbg !3323
  %5 = icmp eq ptr %3, null, !dbg !3324
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3324
  call void @llvm.dbg.value(metadata ptr %6, metadata !3299, metadata !DIExpression()), !dbg !3323
  %7 = tail call ptr @__errno_location() #44, !dbg !3325
  %8 = load i32, ptr %7, align 4, !dbg !3325, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %8, metadata !3300, metadata !DIExpression()), !dbg !3323
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3326
  %10 = load i32, ptr %9, align 4, !dbg !3326, !tbaa !2657
  %11 = icmp eq ptr %2, null, !dbg !3327
  %12 = zext i1 %11 to i32, !dbg !3327
  %13 = or i32 %10, %12, !dbg !3328
  call void @llvm.dbg.value(metadata i32 %13, metadata !3301, metadata !DIExpression()), !dbg !3323
  %14 = load i32, ptr %6, align 8, !dbg !3329, !tbaa !2607
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3330
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3331
  %17 = load ptr, ptr %16, align 8, !dbg !3331, !tbaa !2678
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3332
  %19 = load ptr, ptr %18, align 8, !dbg !3332, !tbaa !2681
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3333
  %21 = add i64 %20, 1, !dbg !3334
  call void @llvm.dbg.value(metadata i64 %21, metadata !3302, metadata !DIExpression()), !dbg !3323
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #48, !dbg !3335
  call void @llvm.dbg.value(metadata ptr %22, metadata !3303, metadata !DIExpression()), !dbg !3323
  %23 = load i32, ptr %6, align 8, !dbg !3336, !tbaa !2607
  %24 = load ptr, ptr %16, align 8, !dbg !3337, !tbaa !2678
  %25 = load ptr, ptr %18, align 8, !dbg !3338, !tbaa !2681
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3339
  store i32 %8, ptr %7, align 4, !dbg !3340, !tbaa !1011
  br i1 %11, label %28, label %27, !dbg !3341

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3342, !tbaa !1198
  br label %28, !dbg !3344

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3345
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #11 !dbg !3346 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3351, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %1, metadata !3348, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i32 1, metadata !3349, metadata !DIExpression()), !dbg !3353
  %2 = load i32, ptr @nslots, align 4, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 1, metadata !3349, metadata !DIExpression()), !dbg !3353
  %3 = icmp sgt i32 %2, 1, !dbg !3354
  br i1 %3, label %4, label %6, !dbg !3356

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3354
  br label %10, !dbg !3356

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3357
  %8 = load ptr, ptr %7, align 8, !dbg !3357, !tbaa !3359
  %9 = icmp eq ptr %8, @slot0, !dbg !3361
  br i1 %9, label %17, label %16, !dbg !3362

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3349, metadata !DIExpression()), !dbg !3353
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3363
  %13 = load ptr, ptr %12, align 8, !dbg !3363, !tbaa !3359
  tail call void @free(ptr noundef %13) #41, !dbg !3364
  %14 = add nuw nsw i64 %11, 1, !dbg !3365
  call void @llvm.dbg.value(metadata i64 %14, metadata !3349, metadata !DIExpression()), !dbg !3353
  %15 = icmp eq i64 %14, %5, !dbg !3354
  br i1 %15, label %6, label %10, !dbg !3356, !llvm.loop !3366

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #41, !dbg !3368
  store i64 256, ptr @slotvec0, align 8, !dbg !3370, !tbaa !3371
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3372, !tbaa !3359
  br label %17, !dbg !3373

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3374
  br i1 %18, label %20, label %19, !dbg !3376

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #41, !dbg !3377
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3379, !tbaa !938
  br label %20, !dbg !3380

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3381, !tbaa !1011
  ret void, !dbg !3382
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !3383 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3385, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata ptr %1, metadata !3386, metadata !DIExpression()), !dbg !3387
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3388
  ret ptr %3, !dbg !3389
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #11 !dbg !3390 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3394, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata ptr %1, metadata !3395, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 %2, metadata !3396, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata ptr %3, metadata !3397, metadata !DIExpression()), !dbg !3410
  %6 = tail call ptr @__errno_location() #44, !dbg !3411
  %7 = load i32, ptr %6, align 4, !dbg !3411, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %7, metadata !3398, metadata !DIExpression()), !dbg !3410
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3412, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %8, metadata !3399, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3400, metadata !DIExpression()), !dbg !3410
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3413
  br i1 %9, label %10, label %11, !dbg !3413

10:                                               ; preds = %4
  tail call void @abort() #43, !dbg !3415
  unreachable, !dbg !3415

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3416, !tbaa !1011
  %13 = icmp sgt i32 %12, %0, !dbg !3417
  br i1 %13, label %32, label %14, !dbg !3418

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3419
  call void @llvm.dbg.value(metadata i1 %15, metadata !3401, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3420
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #41, !dbg !3421
  %16 = sext i32 %12 to i64, !dbg !3422
  call void @llvm.dbg.value(metadata i64 %16, metadata !3404, metadata !DIExpression()), !dbg !3420
  store i64 %16, ptr %5, align 8, !dbg !3423, !tbaa !1198
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3424
  %18 = add nuw nsw i32 %0, 1, !dbg !3425
  %19 = sub i32 %18, %12, !dbg !3426
  %20 = sext i32 %19 to i64, !dbg !3427
  call void @llvm.dbg.value(metadata ptr %5, metadata !3404, metadata !DIExpression(DW_OP_deref)), !dbg !3420
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !3428
  call void @llvm.dbg.value(metadata ptr %21, metadata !3399, metadata !DIExpression()), !dbg !3410
  store ptr %21, ptr @slotvec, align 8, !dbg !3429, !tbaa !938
  br i1 %15, label %22, label %23, !dbg !3430

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3431, !tbaa.struct !3433
  br label %23, !dbg !3434

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3435, !tbaa !1011
  %25 = sext i32 %24 to i64, !dbg !3436
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3436
  %27 = load i64, ptr %5, align 8, !dbg !3437, !tbaa !1198
  call void @llvm.dbg.value(metadata i64 %27, metadata !3404, metadata !DIExpression()), !dbg !3420
  %28 = sub nsw i64 %27, %25, !dbg !3438
  %29 = shl i64 %28, 4, !dbg !3439
  call void @llvm.dbg.value(metadata ptr %26, metadata !2814, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i32 0, metadata !2817, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %29, metadata !2818, metadata !DIExpression()), !dbg !3440
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #41, !dbg !3442
  %30 = load i64, ptr %5, align 8, !dbg !3443, !tbaa !1198
  call void @llvm.dbg.value(metadata i64 %30, metadata !3404, metadata !DIExpression()), !dbg !3420
  %31 = trunc i64 %30 to i32, !dbg !3443
  store i32 %31, ptr @nslots, align 4, !dbg !3444, !tbaa !1011
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !3445
  br label %32, !dbg !3446

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3410
  call void @llvm.dbg.value(metadata ptr %33, metadata !3399, metadata !DIExpression()), !dbg !3410
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3447
  %36 = load i64, ptr %35, align 8, !dbg !3448, !tbaa !3371
  call void @llvm.dbg.value(metadata i64 %36, metadata !3405, metadata !DIExpression()), !dbg !3449
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3450
  %38 = load ptr, ptr %37, align 8, !dbg !3450, !tbaa !3359
  call void @llvm.dbg.value(metadata ptr %38, metadata !3407, metadata !DIExpression()), !dbg !3449
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3451
  %40 = load i32, ptr %39, align 4, !dbg !3451, !tbaa !2657
  %41 = or i32 %40, 1, !dbg !3452
  call void @llvm.dbg.value(metadata i32 %41, metadata !3408, metadata !DIExpression()), !dbg !3449
  %42 = load i32, ptr %3, align 8, !dbg !3453, !tbaa !2607
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3454
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3455
  %45 = load ptr, ptr %44, align 8, !dbg !3455, !tbaa !2678
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3456
  %47 = load ptr, ptr %46, align 8, !dbg !3456, !tbaa !2681
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %48, metadata !3409, metadata !DIExpression()), !dbg !3449
  %49 = icmp ugt i64 %36, %48, !dbg !3458
  br i1 %49, label %60, label %50, !dbg !3460

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3461
  call void @llvm.dbg.value(metadata i64 %51, metadata !3405, metadata !DIExpression()), !dbg !3449
  store i64 %51, ptr %35, align 8, !dbg !3463, !tbaa !3371
  %52 = icmp eq ptr %38, @slot0, !dbg !3464
  br i1 %52, label %54, label %53, !dbg !3466

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #41, !dbg !3467
  br label %54, !dbg !3467

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #48, !dbg !3468
  call void @llvm.dbg.value(metadata ptr %55, metadata !3407, metadata !DIExpression()), !dbg !3449
  store ptr %55, ptr %37, align 8, !dbg !3469, !tbaa !3359
  %56 = load i32, ptr %3, align 8, !dbg !3470, !tbaa !2607
  %57 = load ptr, ptr %44, align 8, !dbg !3471, !tbaa !2678
  %58 = load ptr, ptr %46, align 8, !dbg !3472, !tbaa !2681
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3473
  br label %60, !dbg !3474

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3449
  call void @llvm.dbg.value(metadata ptr %61, metadata !3407, metadata !DIExpression()), !dbg !3449
  store i32 %7, ptr %6, align 4, !dbg !3475, !tbaa !1011
  ret ptr %61, !dbg !3476
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3477 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3481, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata ptr %1, metadata !3482, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %2, metadata !3483, metadata !DIExpression()), !dbg !3484
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3485
  ret ptr %4, !dbg !3486
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #11 !dbg !3487 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3489, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 0, metadata !3385, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata ptr %0, metadata !3386, metadata !DIExpression()), !dbg !3491
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3493
  ret ptr %2, !dbg !3494
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !3495 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3499, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %1, metadata !3500, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i32 0, metadata !3481, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata ptr %0, metadata !3482, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i64 %1, metadata !3483, metadata !DIExpression()), !dbg !3502
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3504
  ret ptr %3, !dbg !3505
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !3506 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3510, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i32 %1, metadata !3511, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata ptr %2, metadata !3512, metadata !DIExpression()), !dbg !3514
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3515
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3513, metadata !DIExpression()), !dbg !3516
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3517), !dbg !3520
  call void @llvm.dbg.value(metadata i32 %1, metadata !3521, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3526, metadata !DIExpression()), !dbg !3529
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3529, !alias.scope !3517
  %5 = icmp eq i32 %1, 10, !dbg !3530
  br i1 %5, label %6, label %7, !dbg !3532

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3533, !noalias !3517
  unreachable, !dbg !3533

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3534, !tbaa !2607, !alias.scope !3517
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3535
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3536
  ret ptr %8, !dbg !3537
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !3538 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3542, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i32 %1, metadata !3543, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata ptr %2, metadata !3544, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i64 %3, metadata !3545, metadata !DIExpression()), !dbg !3547
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3548
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3546, metadata !DIExpression()), !dbg !3549
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3550), !dbg !3553
  call void @llvm.dbg.value(metadata i32 %1, metadata !3521, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3526, metadata !DIExpression()), !dbg !3556
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3556, !alias.scope !3550
  %6 = icmp eq i32 %1, 10, !dbg !3557
  br i1 %6, label %7, label %8, !dbg !3558

7:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3559, !noalias !3550
  unreachable, !dbg !3559

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3560, !tbaa !2607, !alias.scope !3550
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3561
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3562
  ret ptr %9, !dbg !3563
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !3564 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3568, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata ptr %1, metadata !3569, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i32 0, metadata !3510, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 %0, metadata !3511, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr %1, metadata !3512, metadata !DIExpression()), !dbg !3571
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3573
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3513, metadata !DIExpression()), !dbg !3574
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3575), !dbg !3578
  call void @llvm.dbg.value(metadata i32 %0, metadata !3521, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3526, metadata !DIExpression()), !dbg !3581
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3581, !alias.scope !3575
  %4 = icmp eq i32 %0, 10, !dbg !3582
  br i1 %4, label %5, label %6, !dbg !3583

5:                                                ; preds = %2
  tail call void @abort() #43, !dbg !3584, !noalias !3575
  unreachable, !dbg !3584

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3585, !tbaa !2607, !alias.scope !3575
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3586
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3587
  ret ptr %7, !dbg !3588
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3589 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3593, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %1, metadata !3594, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 %2, metadata !3595, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i32 0, metadata !3542, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 %0, metadata !3543, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata ptr %1, metadata !3544, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 %2, metadata !3545, metadata !DIExpression()), !dbg !3597
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3599
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3546, metadata !DIExpression()), !dbg !3600
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3601), !dbg !3604
  call void @llvm.dbg.value(metadata i32 %0, metadata !3521, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3526, metadata !DIExpression()), !dbg !3607
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3607, !alias.scope !3601
  %5 = icmp eq i32 %0, 10, !dbg !3608
  br i1 %5, label %6, label %7, !dbg !3609

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3610, !noalias !3601
  unreachable, !dbg !3610

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3611, !tbaa !2607, !alias.scope !3601
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3612
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3613
  ret ptr %8, !dbg !3614
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #11 !dbg !3615 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3619, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64 %1, metadata !3620, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i8 %2, metadata !3621, metadata !DIExpression()), !dbg !3623
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3624
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3622, metadata !DIExpression()), !dbg !3625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3626, !tbaa.struct !3627
  call void @llvm.dbg.value(metadata ptr %4, metadata !2624, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i8 %2, metadata !2625, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 1, metadata !2626, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i8 %2, metadata !2627, metadata !DIExpression()), !dbg !3628
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3630
  %6 = lshr i8 %2, 5, !dbg !3631
  %7 = zext i8 %6 to i64, !dbg !3631
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3632
  call void @llvm.dbg.value(metadata ptr %8, metadata !2628, metadata !DIExpression()), !dbg !3628
  %9 = and i8 %2, 31, !dbg !3633
  %10 = zext i8 %9 to i32, !dbg !3633
  call void @llvm.dbg.value(metadata i32 %10, metadata !2630, metadata !DIExpression()), !dbg !3628
  %11 = load i32, ptr %8, align 4, !dbg !3634, !tbaa !1011
  %12 = lshr i32 %11, %10, !dbg !3635
  call void @llvm.dbg.value(metadata i32 %12, metadata !2631, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3628
  %13 = and i32 %12, 1, !dbg !3636
  %14 = xor i32 %13, 1, !dbg !3636
  %15 = shl nuw i32 %14, %10, !dbg !3637
  %16 = xor i32 %15, %11, !dbg !3638
  store i32 %16, ptr %8, align 4, !dbg !3638, !tbaa !1011
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3639
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3640
  ret ptr %17, !dbg !3641
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #11 !dbg !3642 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3646, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i8 %1, metadata !3647, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata ptr %0, metadata !3619, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i64 -1, metadata !3620, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i8 %1, metadata !3621, metadata !DIExpression()), !dbg !3649
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3651
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3622, metadata !DIExpression()), !dbg !3652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3653, !tbaa.struct !3627
  call void @llvm.dbg.value(metadata ptr %3, metadata !2624, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i8 %1, metadata !2625, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i32 1, metadata !2626, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i8 %1, metadata !2627, metadata !DIExpression()), !dbg !3654
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3656
  %5 = lshr i8 %1, 5, !dbg !3657
  %6 = zext i8 %5 to i64, !dbg !3657
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3658
  call void @llvm.dbg.value(metadata ptr %7, metadata !2628, metadata !DIExpression()), !dbg !3654
  %8 = and i8 %1, 31, !dbg !3659
  %9 = zext i8 %8 to i32, !dbg !3659
  call void @llvm.dbg.value(metadata i32 %9, metadata !2630, metadata !DIExpression()), !dbg !3654
  %10 = load i32, ptr %7, align 4, !dbg !3660, !tbaa !1011
  %11 = lshr i32 %10, %9, !dbg !3661
  call void @llvm.dbg.value(metadata i32 %11, metadata !2631, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3654
  %12 = and i32 %11, 1, !dbg !3662
  %13 = xor i32 %12, 1, !dbg !3662
  %14 = shl nuw i32 %13, %9, !dbg !3663
  %15 = xor i32 %14, %10, !dbg !3664
  store i32 %15, ptr %7, align 4, !dbg !3664, !tbaa !1011
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3665
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3666
  ret ptr %16, !dbg !3667
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #11 !dbg !3668 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3670, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata ptr %0, metadata !3646, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i8 58, metadata !3647, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata ptr %0, metadata !3619, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 -1, metadata !3620, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i8 58, metadata !3621, metadata !DIExpression()), !dbg !3674
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #41, !dbg !3676
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3622, metadata !DIExpression()), !dbg !3677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3678, !tbaa.struct !3627
  call void @llvm.dbg.value(metadata ptr %2, metadata !2624, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i8 58, metadata !2625, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i32 1, metadata !2626, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i8 58, metadata !2627, metadata !DIExpression()), !dbg !3679
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3681
  call void @llvm.dbg.value(metadata ptr %3, metadata !2628, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i32 26, metadata !2630, metadata !DIExpression()), !dbg !3679
  %4 = load i32, ptr %3, align 4, !dbg !3682, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %4, metadata !2631, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3679
  %5 = or i32 %4, 67108864, !dbg !3683
  store i32 %5, ptr %3, align 4, !dbg !3683, !tbaa !1011
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3684
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #41, !dbg !3685
  ret ptr %6, !dbg !3686
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !3687 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3689, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i64 %1, metadata !3690, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata ptr %0, metadata !3619, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %1, metadata !3620, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8 58, metadata !3621, metadata !DIExpression()), !dbg !3692
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3694
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3622, metadata !DIExpression()), !dbg !3695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3696, !tbaa.struct !3627
  call void @llvm.dbg.value(metadata ptr %3, metadata !2624, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i8 58, metadata !2625, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i32 1, metadata !2626, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i8 58, metadata !2627, metadata !DIExpression()), !dbg !3697
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3699
  call void @llvm.dbg.value(metadata ptr %4, metadata !2628, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i32 26, metadata !2630, metadata !DIExpression()), !dbg !3697
  %5 = load i32, ptr %4, align 4, !dbg !3700, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %5, metadata !2631, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3697
  %6 = or i32 %5, 67108864, !dbg !3701
  store i32 %6, ptr %4, align 4, !dbg !3701, !tbaa !1011
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3702
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3703
  ret ptr %7, !dbg !3704
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !3705 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3526, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3711
  call void @llvm.dbg.value(metadata i32 %0, metadata !3707, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i32 %1, metadata !3708, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata ptr %2, metadata !3709, metadata !DIExpression()), !dbg !3713
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3714
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3710, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 %1, metadata !3521, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i32 0, metadata !3526, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3716
  %5 = icmp eq i32 %1, 10, !dbg !3717
  br i1 %5, label %6, label %7, !dbg !3718

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3719, !noalias !3720
  unreachable, !dbg !3719

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3526, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3716
  store i32 %1, ptr %4, align 8, !dbg !3723, !tbaa.struct !3627
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3723
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3723
  call void @llvm.dbg.value(metadata ptr %4, metadata !2624, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i8 58, metadata !2625, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i32 1, metadata !2626, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i8 58, metadata !2627, metadata !DIExpression()), !dbg !3724
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3726
  call void @llvm.dbg.value(metadata ptr %9, metadata !2628, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i32 26, metadata !2630, metadata !DIExpression()), !dbg !3724
  %10 = load i32, ptr %9, align 4, !dbg !3727, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %10, metadata !2631, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3724
  %11 = or i32 %10, 67108864, !dbg !3728
  store i32 %11, ptr %9, align 4, !dbg !3728, !tbaa !1011
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3729
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3730
  ret ptr %12, !dbg !3731
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 !dbg !3732 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3736, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata ptr %1, metadata !3737, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata ptr %2, metadata !3738, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata ptr %3, metadata !3739, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 %0, metadata !3741, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr %1, metadata !3746, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr %2, metadata !3747, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr %3, metadata !3748, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i64 -1, metadata !3749, metadata !DIExpression()), !dbg !3751
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3753
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3750, metadata !DIExpression()), !dbg !3754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3755, !tbaa.struct !3627
  call void @llvm.dbg.value(metadata ptr %5, metadata !2664, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata ptr %1, metadata !2665, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata ptr %2, metadata !2666, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata ptr %5, metadata !2664, metadata !DIExpression()), !dbg !3756
  store i32 10, ptr %5, align 8, !dbg !3758, !tbaa !2607
  %6 = icmp ne ptr %1, null, !dbg !3759
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3760
  br i1 %8, label %10, label %9, !dbg !3760

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3761
  unreachable, !dbg !3761

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3762
  store ptr %1, ptr %11, align 8, !dbg !3763, !tbaa !2678
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3764
  store ptr %2, ptr %12, align 8, !dbg !3765, !tbaa !2681
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3766
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3767
  ret ptr %13, !dbg !3768
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #11 !dbg !3742 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3741, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata ptr %1, metadata !3746, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata ptr %2, metadata !3747, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata ptr %3, metadata !3748, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i64 %4, metadata !3749, metadata !DIExpression()), !dbg !3769
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #41, !dbg !3770
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3750, metadata !DIExpression()), !dbg !3771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3772, !tbaa.struct !3627
  call void @llvm.dbg.value(metadata ptr %6, metadata !2664, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata ptr %1, metadata !2665, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata ptr %2, metadata !2666, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata ptr %6, metadata !2664, metadata !DIExpression()), !dbg !3773
  store i32 10, ptr %6, align 8, !dbg !3775, !tbaa !2607
  %7 = icmp ne ptr %1, null, !dbg !3776
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3777
  br i1 %9, label %11, label %10, !dbg !3777

10:                                               ; preds = %5
  tail call void @abort() #43, !dbg !3778
  unreachable, !dbg !3778

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3779
  store ptr %1, ptr %12, align 8, !dbg !3780, !tbaa !2678
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3781
  store ptr %2, ptr %13, align 8, !dbg !3782, !tbaa !2681
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3783
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #41, !dbg !3784
  ret ptr %14, !dbg !3785
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !dbg !3786 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3790, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata ptr %1, metadata !3791, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata ptr %2, metadata !3792, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i32 0, metadata !3736, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata ptr %0, metadata !3737, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata ptr %1, metadata !3738, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata ptr %2, metadata !3739, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i32 0, metadata !3741, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata ptr %0, metadata !3746, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata ptr %1, metadata !3747, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata ptr %2, metadata !3748, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i64 -1, metadata !3749, metadata !DIExpression()), !dbg !3796
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3798
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3750, metadata !DIExpression()), !dbg !3799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3800, !tbaa.struct !3627
  call void @llvm.dbg.value(metadata ptr %4, metadata !2664, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata ptr %0, metadata !2665, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata ptr %1, metadata !2666, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata ptr %4, metadata !2664, metadata !DIExpression()), !dbg !3801
  store i32 10, ptr %4, align 8, !dbg !3803, !tbaa !2607
  %5 = icmp ne ptr %0, null, !dbg !3804
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3805
  br i1 %7, label %9, label %8, !dbg !3805

8:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3806
  unreachable, !dbg !3806

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3807
  store ptr %0, ptr %10, align 8, !dbg !3808, !tbaa !2678
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3809
  store ptr %1, ptr %11, align 8, !dbg !3810, !tbaa !2681
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3811
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3812
  ret ptr %12, !dbg !3813
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !3814 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3818, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata ptr %1, metadata !3819, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata ptr %2, metadata !3820, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i64 %3, metadata !3821, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i32 0, metadata !3741, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata ptr %0, metadata !3746, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata ptr %1, metadata !3747, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata ptr %2, metadata !3748, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i64 %3, metadata !3749, metadata !DIExpression()), !dbg !3823
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3825
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3750, metadata !DIExpression()), !dbg !3826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3827, !tbaa.struct !3627
  call void @llvm.dbg.value(metadata ptr %5, metadata !2664, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata ptr %0, metadata !2665, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata ptr %1, metadata !2666, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata ptr %5, metadata !2664, metadata !DIExpression()), !dbg !3828
  store i32 10, ptr %5, align 8, !dbg !3830, !tbaa !2607
  %6 = icmp ne ptr %0, null, !dbg !3831
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3832
  br i1 %8, label %10, label %9, !dbg !3832

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3833
  unreachable, !dbg !3833

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3834
  store ptr %0, ptr %11, align 8, !dbg !3835, !tbaa !2678
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3836
  store ptr %1, ptr %12, align 8, !dbg !3837, !tbaa !2681
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3838
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3839
  ret ptr %13, !dbg !3840
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3841 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3845, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata ptr %1, metadata !3846, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i64 %2, metadata !3847, metadata !DIExpression()), !dbg !3848
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3849
  ret ptr %4, !dbg !3850
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !dbg !3851 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3855, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i64 %1, metadata !3856, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata ptr %0, metadata !3846, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i64 %1, metadata !3847, metadata !DIExpression()), !dbg !3858
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3860
  ret ptr %3, !dbg !3861
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !dbg !3862 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3866, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata ptr %1, metadata !3867, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i32 %0, metadata !3845, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata ptr %1, metadata !3846, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i64 -1, metadata !3847, metadata !DIExpression()), !dbg !3869
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3871
  ret ptr %3, !dbg !3872
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #11 !dbg !3873 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3877, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i32 0, metadata !3866, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata ptr %0, metadata !3867, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i32 0, metadata !3845, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata ptr %0, metadata !3846, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i64 -1, metadata !3847, metadata !DIExpression()), !dbg !3881
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3883
  ret ptr %2, !dbg !3884
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3885 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3889, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata ptr %1, metadata !3890, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i64 %2, metadata !3891, metadata !DIExpression()), !dbg !3892
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #41, !dbg !3893
  ret i32 %4, !dbg !3894
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #11 !dbg !3895 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3899, metadata !DIExpression()), !dbg !3900
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #41, !dbg !3901
  ret ptr %2, !dbg !3902
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #11 !dbg !3903 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3905, metadata !DIExpression()), !dbg !3907
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !3908
  call void @llvm.dbg.value(metadata ptr %2, metadata !3906, metadata !DIExpression()), !dbg !3907
  ret ptr %2, !dbg !3909
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #11 !dbg !3910 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3912, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata ptr %1, metadata !3913, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i64 %2, metadata !3914, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i32 %0, metadata !3905, metadata !DIExpression()), !dbg !3920
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !3922
  call void @llvm.dbg.value(metadata ptr %4, metadata !3906, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata ptr %4, metadata !3915, metadata !DIExpression()), !dbg !3919
  %5 = icmp eq ptr %4, null, !dbg !3923
  br i1 %5, label %6, label %9, !dbg !3924

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3925
  br i1 %7, label %19, label %8, !dbg !3928

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3929, !tbaa !1020
  br label %19, !dbg !3930

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #42, !dbg !3931
  call void @llvm.dbg.value(metadata i64 %10, metadata !3916, metadata !DIExpression()), !dbg !3932
  %11 = icmp ult i64 %10, %2, !dbg !3933
  br i1 %11, label %12, label %14, !dbg !3935

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3936
  call void @llvm.dbg.value(metadata ptr %1, metadata !3938, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata ptr %4, metadata !3944, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i64 %13, metadata !3945, metadata !DIExpression()), !dbg !3946
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #41, !dbg !3948
  br label %19, !dbg !3949

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3950
  br i1 %15, label %19, label %16, !dbg !3953

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3954
  call void @llvm.dbg.value(metadata ptr %1, metadata !3938, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata ptr %4, metadata !3944, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i64 %17, metadata !3945, metadata !DIExpression()), !dbg !3956
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #41, !dbg !3958
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3959
  store i8 0, ptr %18, align 1, !dbg !3960, !tbaa !1020
  br label %19, !dbg !3961

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3962
  ret i32 %20, !dbg !3963
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #11 !dbg !3964 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3966, metadata !DIExpression()), !dbg !3967
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #41, !dbg !3968
  ret i32 %2, !dbg !3969
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #11 !dbg !3970 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4009, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata ptr %1, metadata !4010, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata ptr %2, metadata !4011, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata ptr %3, metadata !4012, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata ptr %4, metadata !4013, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i64 %5, metadata !4014, metadata !DIExpression()), !dbg !4015
  %7 = icmp eq ptr %1, null, !dbg !4016
  br i1 %7, label %10, label %8, !dbg !4018

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.112, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #41, !dbg !4019
  br label %12, !dbg !4019

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.113, ptr noundef %2, ptr noundef %3) #41, !dbg !4020
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.3.115, i32 noundef 5) #41, !dbg !4021
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #41, !dbg !4021
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.116, ptr noundef %0), !dbg !4022
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.5.117, i32 noundef 5) #41, !dbg !4023
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.118) #41, !dbg !4023
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.116, ptr noundef %0), !dbg !4024
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
  ], !dbg !4025

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.7.119, i32 noundef 5) #41, !dbg !4026
  %21 = load ptr, ptr %4, align 8, !dbg !4026, !tbaa !938
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #41, !dbg !4026
  br label %147, !dbg !4028

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.8.120, i32 noundef 5) #41, !dbg !4029
  %25 = load ptr, ptr %4, align 8, !dbg !4029, !tbaa !938
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4029
  %27 = load ptr, ptr %26, align 8, !dbg !4029, !tbaa !938
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #41, !dbg !4029
  br label %147, !dbg !4030

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.9.121, i32 noundef 5) #41, !dbg !4031
  %31 = load ptr, ptr %4, align 8, !dbg !4031, !tbaa !938
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4031
  %33 = load ptr, ptr %32, align 8, !dbg !4031, !tbaa !938
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4031
  %35 = load ptr, ptr %34, align 8, !dbg !4031, !tbaa !938
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #41, !dbg !4031
  br label %147, !dbg !4032

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.10.122, i32 noundef 5) #41, !dbg !4033
  %39 = load ptr, ptr %4, align 8, !dbg !4033, !tbaa !938
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4033
  %41 = load ptr, ptr %40, align 8, !dbg !4033, !tbaa !938
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4033
  %43 = load ptr, ptr %42, align 8, !dbg !4033, !tbaa !938
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4033
  %45 = load ptr, ptr %44, align 8, !dbg !4033, !tbaa !938
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #41, !dbg !4033
  br label %147, !dbg !4034

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.11.123, i32 noundef 5) #41, !dbg !4035
  %49 = load ptr, ptr %4, align 8, !dbg !4035, !tbaa !938
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4035
  %51 = load ptr, ptr %50, align 8, !dbg !4035, !tbaa !938
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4035
  %53 = load ptr, ptr %52, align 8, !dbg !4035, !tbaa !938
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4035
  %55 = load ptr, ptr %54, align 8, !dbg !4035, !tbaa !938
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4035
  %57 = load ptr, ptr %56, align 8, !dbg !4035, !tbaa !938
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #41, !dbg !4035
  br label %147, !dbg !4036

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.12.124, i32 noundef 5) #41, !dbg !4037
  %61 = load ptr, ptr %4, align 8, !dbg !4037, !tbaa !938
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4037
  %63 = load ptr, ptr %62, align 8, !dbg !4037, !tbaa !938
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4037
  %65 = load ptr, ptr %64, align 8, !dbg !4037, !tbaa !938
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4037
  %67 = load ptr, ptr %66, align 8, !dbg !4037, !tbaa !938
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4037
  %69 = load ptr, ptr %68, align 8, !dbg !4037, !tbaa !938
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4037
  %71 = load ptr, ptr %70, align 8, !dbg !4037, !tbaa !938
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #41, !dbg !4037
  br label %147, !dbg !4038

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.13.125, i32 noundef 5) #41, !dbg !4039
  %75 = load ptr, ptr %4, align 8, !dbg !4039, !tbaa !938
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4039
  %77 = load ptr, ptr %76, align 8, !dbg !4039, !tbaa !938
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4039
  %79 = load ptr, ptr %78, align 8, !dbg !4039, !tbaa !938
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4039
  %81 = load ptr, ptr %80, align 8, !dbg !4039, !tbaa !938
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4039
  %83 = load ptr, ptr %82, align 8, !dbg !4039, !tbaa !938
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4039
  %85 = load ptr, ptr %84, align 8, !dbg !4039, !tbaa !938
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4039
  %87 = load ptr, ptr %86, align 8, !dbg !4039, !tbaa !938
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #41, !dbg !4039
  br label %147, !dbg !4040

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.14.126, i32 noundef 5) #41, !dbg !4041
  %91 = load ptr, ptr %4, align 8, !dbg !4041, !tbaa !938
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4041
  %93 = load ptr, ptr %92, align 8, !dbg !4041, !tbaa !938
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4041
  %95 = load ptr, ptr %94, align 8, !dbg !4041, !tbaa !938
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4041
  %97 = load ptr, ptr %96, align 8, !dbg !4041, !tbaa !938
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4041
  %99 = load ptr, ptr %98, align 8, !dbg !4041, !tbaa !938
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4041
  %101 = load ptr, ptr %100, align 8, !dbg !4041, !tbaa !938
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4041
  %103 = load ptr, ptr %102, align 8, !dbg !4041, !tbaa !938
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4041
  %105 = load ptr, ptr %104, align 8, !dbg !4041, !tbaa !938
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #41, !dbg !4041
  br label %147, !dbg !4042

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.15.127, i32 noundef 5) #41, !dbg !4043
  %109 = load ptr, ptr %4, align 8, !dbg !4043, !tbaa !938
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4043
  %111 = load ptr, ptr %110, align 8, !dbg !4043, !tbaa !938
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4043
  %113 = load ptr, ptr %112, align 8, !dbg !4043, !tbaa !938
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4043
  %115 = load ptr, ptr %114, align 8, !dbg !4043, !tbaa !938
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4043
  %117 = load ptr, ptr %116, align 8, !dbg !4043, !tbaa !938
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4043
  %119 = load ptr, ptr %118, align 8, !dbg !4043, !tbaa !938
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4043
  %121 = load ptr, ptr %120, align 8, !dbg !4043, !tbaa !938
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4043
  %123 = load ptr, ptr %122, align 8, !dbg !4043, !tbaa !938
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4043
  %125 = load ptr, ptr %124, align 8, !dbg !4043, !tbaa !938
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #41, !dbg !4043
  br label %147, !dbg !4044

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.16.128, i32 noundef 5) #41, !dbg !4045
  %129 = load ptr, ptr %4, align 8, !dbg !4045, !tbaa !938
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4045
  %131 = load ptr, ptr %130, align 8, !dbg !4045, !tbaa !938
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4045
  %133 = load ptr, ptr %132, align 8, !dbg !4045, !tbaa !938
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4045
  %135 = load ptr, ptr %134, align 8, !dbg !4045, !tbaa !938
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4045
  %137 = load ptr, ptr %136, align 8, !dbg !4045, !tbaa !938
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4045
  %139 = load ptr, ptr %138, align 8, !dbg !4045, !tbaa !938
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4045
  %141 = load ptr, ptr %140, align 8, !dbg !4045, !tbaa !938
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4045
  %143 = load ptr, ptr %142, align 8, !dbg !4045, !tbaa !938
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4045
  %145 = load ptr, ptr %144, align 8, !dbg !4045, !tbaa !938
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #41, !dbg !4045
  br label %147, !dbg !4046

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4047
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #11 !dbg !4048 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4052, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr %1, metadata !4053, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr %2, metadata !4054, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr %3, metadata !4055, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr %4, metadata !4056, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i64 0, metadata !4057, metadata !DIExpression()), !dbg !4058
  br label %6, !dbg !4059

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4061
  call void @llvm.dbg.value(metadata i64 %7, metadata !4057, metadata !DIExpression()), !dbg !4058
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4062
  %9 = load ptr, ptr %8, align 8, !dbg !4062, !tbaa !938
  %10 = icmp eq ptr %9, null, !dbg !4064
  %11 = add i64 %7, 1, !dbg !4065
  call void @llvm.dbg.value(metadata i64 %11, metadata !4057, metadata !DIExpression()), !dbg !4058
  br i1 %10, label %12, label %6, !dbg !4064, !llvm.loop !4066

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4068
  ret void, !dbg !4069
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #11 !dbg !4070 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4082, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata ptr %1, metadata !4083, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata ptr %2, metadata !4084, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata ptr %3, metadata !4085, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata ptr %4, metadata !4086, metadata !DIExpression()), !dbg !4090
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #41, !dbg !4091
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4088, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64 0, metadata !4087, metadata !DIExpression()), !dbg !4090
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4087, metadata !DIExpression()), !dbg !4090
  %10 = icmp ult i32 %9, 41, !dbg !4093
  br i1 %10, label %11, label %16, !dbg !4093

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4093
  %13 = zext i32 %9 to i64, !dbg !4093
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4093
  %15 = add nuw nsw i32 %9, 8, !dbg !4093
  store i32 %15, ptr %4, align 8, !dbg !4093
  br label %19, !dbg !4093

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4093
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4093
  store ptr %18, ptr %7, align 8, !dbg !4093
  br label %19, !dbg !4093

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4093
  %22 = load ptr, ptr %21, align 8, !dbg !4093
  store ptr %22, ptr %6, align 16, !dbg !4096, !tbaa !938
  %23 = icmp eq ptr %22, null, !dbg !4097
  br i1 %23, label %128, label %24, !dbg !4098

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !4087, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 1, metadata !4087, metadata !DIExpression()), !dbg !4090
  %25 = icmp ult i32 %20, 41, !dbg !4093
  br i1 %25, label %29, label %26, !dbg !4093

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4093
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4093
  store ptr %28, ptr %7, align 8, !dbg !4093
  br label %34, !dbg !4093

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4093
  %31 = zext i32 %20 to i64, !dbg !4093
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4093
  %33 = add nuw nsw i32 %20, 8, !dbg !4093
  store i32 %33, ptr %4, align 8, !dbg !4093
  br label %34, !dbg !4093

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4093
  %37 = load ptr, ptr %36, align 8, !dbg !4093
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4099
  store ptr %37, ptr %38, align 8, !dbg !4096, !tbaa !938
  %39 = icmp eq ptr %37, null, !dbg !4097
  br i1 %39, label %128, label %40, !dbg !4098

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !4087, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 2, metadata !4087, metadata !DIExpression()), !dbg !4090
  %41 = icmp ult i32 %35, 41, !dbg !4093
  br i1 %41, label %45, label %42, !dbg !4093

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4093
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4093
  store ptr %44, ptr %7, align 8, !dbg !4093
  br label %50, !dbg !4093

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4093
  %47 = zext i32 %35 to i64, !dbg !4093
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4093
  %49 = add nuw nsw i32 %35, 8, !dbg !4093
  store i32 %49, ptr %4, align 8, !dbg !4093
  br label %50, !dbg !4093

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4093
  %53 = load ptr, ptr %52, align 8, !dbg !4093
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4099
  store ptr %53, ptr %54, align 16, !dbg !4096, !tbaa !938
  %55 = icmp eq ptr %53, null, !dbg !4097
  br i1 %55, label %128, label %56, !dbg !4098

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !4087, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 3, metadata !4087, metadata !DIExpression()), !dbg !4090
  %57 = icmp ult i32 %51, 41, !dbg !4093
  br i1 %57, label %61, label %58, !dbg !4093

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4093
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4093
  store ptr %60, ptr %7, align 8, !dbg !4093
  br label %66, !dbg !4093

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4093
  %63 = zext i32 %51 to i64, !dbg !4093
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4093
  %65 = add nuw nsw i32 %51, 8, !dbg !4093
  store i32 %65, ptr %4, align 8, !dbg !4093
  br label %66, !dbg !4093

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4093
  %69 = load ptr, ptr %68, align 8, !dbg !4093
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4099
  store ptr %69, ptr %70, align 8, !dbg !4096, !tbaa !938
  %71 = icmp eq ptr %69, null, !dbg !4097
  br i1 %71, label %128, label %72, !dbg !4098

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !4087, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 4, metadata !4087, metadata !DIExpression()), !dbg !4090
  %73 = icmp ult i32 %67, 41, !dbg !4093
  br i1 %73, label %77, label %74, !dbg !4093

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4093
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4093
  store ptr %76, ptr %7, align 8, !dbg !4093
  br label %82, !dbg !4093

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4093
  %79 = zext i32 %67 to i64, !dbg !4093
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4093
  %81 = add nuw nsw i32 %67, 8, !dbg !4093
  store i32 %81, ptr %4, align 8, !dbg !4093
  br label %82, !dbg !4093

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4093
  %85 = load ptr, ptr %84, align 8, !dbg !4093
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4099
  store ptr %85, ptr %86, align 16, !dbg !4096, !tbaa !938
  %87 = icmp eq ptr %85, null, !dbg !4097
  br i1 %87, label %128, label %88, !dbg !4098

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !4087, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 5, metadata !4087, metadata !DIExpression()), !dbg !4090
  %89 = icmp ult i32 %83, 41, !dbg !4093
  br i1 %89, label %93, label %90, !dbg !4093

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4093
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4093
  store ptr %92, ptr %7, align 8, !dbg !4093
  br label %98, !dbg !4093

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4093
  %95 = zext i32 %83 to i64, !dbg !4093
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4093
  %97 = add nuw nsw i32 %83, 8, !dbg !4093
  store i32 %97, ptr %4, align 8, !dbg !4093
  br label %98, !dbg !4093

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4093
  %100 = load ptr, ptr %99, align 8, !dbg !4093
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4099
  store ptr %100, ptr %101, align 8, !dbg !4096, !tbaa !938
  %102 = icmp eq ptr %100, null, !dbg !4097
  br i1 %102, label %128, label %103, !dbg !4098

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !4087, metadata !DIExpression()), !dbg !4090
  %104 = load ptr, ptr %7, align 8, !dbg !4093
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4093
  store ptr %105, ptr %7, align 8, !dbg !4093
  %106 = load ptr, ptr %104, align 8, !dbg !4093
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4099
  store ptr %106, ptr %107, align 16, !dbg !4096, !tbaa !938
  %108 = icmp eq ptr %106, null, !dbg !4097
  br i1 %108, label %128, label %109, !dbg !4098

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !4087, metadata !DIExpression()), !dbg !4090
  %110 = load ptr, ptr %7, align 8, !dbg !4093
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4093
  store ptr %111, ptr %7, align 8, !dbg !4093
  %112 = load ptr, ptr %110, align 8, !dbg !4093
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4099
  store ptr %112, ptr %113, align 8, !dbg !4096, !tbaa !938
  %114 = icmp eq ptr %112, null, !dbg !4097
  br i1 %114, label %128, label %115, !dbg !4098

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !4087, metadata !DIExpression()), !dbg !4090
  %116 = load ptr, ptr %7, align 8, !dbg !4093
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4093
  store ptr %117, ptr %7, align 8, !dbg !4093
  %118 = load ptr, ptr %116, align 8, !dbg !4093
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4099
  store ptr %118, ptr %119, align 16, !dbg !4096, !tbaa !938
  %120 = icmp eq ptr %118, null, !dbg !4097
  br i1 %120, label %128, label %121, !dbg !4098

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !4087, metadata !DIExpression()), !dbg !4090
  %122 = load ptr, ptr %7, align 8, !dbg !4093
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4093
  store ptr %123, ptr %7, align 8, !dbg !4093
  %124 = load ptr, ptr %122, align 8, !dbg !4093
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4099
  store ptr %124, ptr %125, align 8, !dbg !4096, !tbaa !938
  %126 = icmp eq ptr %124, null, !dbg !4097
  %127 = select i1 %126, i64 9, i64 10, !dbg !4098
  br label %128, !dbg !4098

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4100
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4101
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #41, !dbg !4102
  ret void, !dbg !4102
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #11 !dbg !4103 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4107, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata ptr %1, metadata !4108, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata ptr %2, metadata !4109, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata ptr %3, metadata !4110, metadata !DIExpression()), !dbg !4116
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #41, !dbg !4117
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4111, metadata !DIExpression()), !dbg !4118
  call void @llvm.va_start(ptr nonnull %5), !dbg !4119
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4120
  call void @llvm.va_end(ptr nonnull %5), !dbg !4121
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #41, !dbg !4122
  ret void, !dbg !4122
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #11 !dbg !4123 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4124, !tbaa !938
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.116, ptr noundef %1), !dbg !4124
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.17.133, i32 noundef 5) #41, !dbg !4125
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.134) #41, !dbg !4125
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.19.135, i32 noundef 5) #41, !dbg !4126
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.136, ptr noundef nonnull @.str.21.137) #41, !dbg !4126
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.114, ptr noundef nonnull @.str.22.138, i32 noundef 5) #41, !dbg !4127
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.139) #41, !dbg !4127
  ret void, !dbg !4128
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4129 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i64 %1, metadata !4135, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i64 %2, metadata !4136, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata ptr %0, metadata !4138, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i64 %1, metadata !4141, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i64 %2, metadata !4142, metadata !DIExpression()), !dbg !4143
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4145
  call void @llvm.dbg.value(metadata ptr %4, metadata !4146, metadata !DIExpression()), !dbg !4151
  %5 = icmp eq ptr %4, null, !dbg !4153
  br i1 %5, label %6, label %7, !dbg !4155

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4156
  unreachable, !dbg !4156

7:                                                ; preds = %3
  ret ptr %4, !dbg !4157
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4139 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4138, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 %1, metadata !4141, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 %2, metadata !4142, metadata !DIExpression()), !dbg !4158
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4159
  call void @llvm.dbg.value(metadata ptr %4, metadata !4146, metadata !DIExpression()), !dbg !4160
  %5 = icmp eq ptr %4, null, !dbg !4162
  br i1 %5, label %6, label %7, !dbg !4163

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4164
  unreachable, !dbg !4164

7:                                                ; preds = %3
  ret ptr %4, !dbg !4165
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4166 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4170, metadata !DIExpression()), !dbg !4171
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4172
  call void @llvm.dbg.value(metadata ptr %2, metadata !4146, metadata !DIExpression()), !dbg !4173
  %3 = icmp eq ptr %2, null, !dbg !4175
  br i1 %3, label %4, label %5, !dbg !4176

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4177
  unreachable, !dbg !4177

5:                                                ; preds = %1
  ret ptr %2, !dbg !4178
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4179 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4180 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4184, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i64 %0, metadata !4186, metadata !DIExpression()), !dbg !4190
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4192
  call void @llvm.dbg.value(metadata ptr %2, metadata !4146, metadata !DIExpression()), !dbg !4193
  %3 = icmp eq ptr %2, null, !dbg !4195
  br i1 %3, label %4, label %5, !dbg !4196

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4197
  unreachable, !dbg !4197

5:                                                ; preds = %1
  ret ptr %2, !dbg !4198
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4199 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4203, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i64 %0, metadata !4170, metadata !DIExpression()), !dbg !4205
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4207
  call void @llvm.dbg.value(metadata ptr %2, metadata !4146, metadata !DIExpression()), !dbg !4208
  %3 = icmp eq ptr %2, null, !dbg !4210
  br i1 %3, label %4, label %5, !dbg !4211

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4212
  unreachable, !dbg !4212

5:                                                ; preds = %1
  ret ptr %2, !dbg !4213
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4214 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4218, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i64 %1, metadata !4219, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata ptr %0, metadata !4221, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i64 %1, metadata !4225, metadata !DIExpression()), !dbg !4226
  %3 = icmp eq i64 %1, 0, !dbg !4228
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4228
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #47, !dbg !4229
  call void @llvm.dbg.value(metadata ptr %5, metadata !4146, metadata !DIExpression()), !dbg !4230
  %6 = icmp eq ptr %5, null, !dbg !4232
  br i1 %6, label %7, label %8, !dbg !4233

7:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4234
  unreachable, !dbg !4234

8:                                                ; preds = %2
  ret ptr %5, !dbg !4235
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4236 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4237 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4241, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i64 %1, metadata !4242, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata ptr %0, metadata !4244, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 %1, metadata !4247, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata ptr %0, metadata !4221, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata i64 %1, metadata !4225, metadata !DIExpression()), !dbg !4250
  %3 = icmp eq i64 %1, 0, !dbg !4252
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4252
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #47, !dbg !4253
  call void @llvm.dbg.value(metadata ptr %5, metadata !4146, metadata !DIExpression()), !dbg !4254
  %6 = icmp eq ptr %5, null, !dbg !4256
  br i1 %6, label %7, label %8, !dbg !4257

7:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4258
  unreachable, !dbg !4258

8:                                                ; preds = %2
  ret ptr %5, !dbg !4259
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4260 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4264, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata i64 %1, metadata !4265, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata i64 %2, metadata !4266, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata ptr %0, metadata !4268, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 %1, metadata !4271, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 %2, metadata !4272, metadata !DIExpression()), !dbg !4273
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4275
  call void @llvm.dbg.value(metadata ptr %4, metadata !4146, metadata !DIExpression()), !dbg !4276
  %5 = icmp eq ptr %4, null, !dbg !4278
  br i1 %5, label %6, label %7, !dbg !4279

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4280
  unreachable, !dbg !4280

7:                                                ; preds = %3
  ret ptr %4, !dbg !4281
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4282 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4286, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i64 %1, metadata !4287, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata ptr null, metadata !4138, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i64 %0, metadata !4141, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i64 %1, metadata !4142, metadata !DIExpression()), !dbg !4289
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4291
  call void @llvm.dbg.value(metadata ptr %3, metadata !4146, metadata !DIExpression()), !dbg !4292
  %4 = icmp eq ptr %3, null, !dbg !4294
  br i1 %4, label %5, label %6, !dbg !4295

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4296
  unreachable, !dbg !4296

6:                                                ; preds = %2
  ret ptr %3, !dbg !4297
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4298 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4302, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata i64 %1, metadata !4303, metadata !DIExpression()), !dbg !4304
  call void @llvm.dbg.value(metadata ptr null, metadata !4264, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata i64 %0, metadata !4265, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata i64 %1, metadata !4266, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata ptr null, metadata !4268, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i64 %0, metadata !4271, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i64 %1, metadata !4272, metadata !DIExpression()), !dbg !4307
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4309
  call void @llvm.dbg.value(metadata ptr %3, metadata !4146, metadata !DIExpression()), !dbg !4310
  %4 = icmp eq ptr %3, null, !dbg !4312
  br i1 %4, label %5, label %6, !dbg !4313

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4314
  unreachable, !dbg !4314

6:                                                ; preds = %2
  ret ptr %3, !dbg !4315
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #11 !dbg !4316 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4320, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata ptr %1, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata ptr %0, metadata !881, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata ptr %1, metadata !882, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i64 1, metadata !883, metadata !DIExpression()), !dbg !4323
  %3 = load i64, ptr %1, align 8, !dbg !4325, !tbaa !1198
  call void @llvm.dbg.value(metadata i64 %3, metadata !884, metadata !DIExpression()), !dbg !4323
  %4 = icmp eq ptr %0, null, !dbg !4326
  br i1 %4, label %5, label %8, !dbg !4328

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4329
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4332
  br label %15, !dbg !4332

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4333
  %10 = add nuw i64 %9, 1, !dbg !4333
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4333
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4333
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4333
  call void @llvm.dbg.value(metadata i64 %13, metadata !884, metadata !DIExpression()), !dbg !4323
  br i1 %12, label %14, label %15, !dbg !4336

14:                                               ; preds = %8
  tail call void @xalloc_die() #43, !dbg !4337
  unreachable, !dbg !4337

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4323
  call void @llvm.dbg.value(metadata i64 %16, metadata !884, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata ptr %0, metadata !4138, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64 %16, metadata !4141, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64 1, metadata !4142, metadata !DIExpression()), !dbg !4338
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #41, !dbg !4340
  call void @llvm.dbg.value(metadata ptr %17, metadata !4146, metadata !DIExpression()), !dbg !4341
  %18 = icmp eq ptr %17, null, !dbg !4343
  br i1 %18, label %19, label %20, !dbg !4344

19:                                               ; preds = %15
  tail call void @xalloc_die() #43, !dbg !4345
  unreachable, !dbg !4345

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !881, metadata !DIExpression()), !dbg !4323
  store i64 %16, ptr %1, align 8, !dbg !4346, !tbaa !1198
  ret ptr %17, !dbg !4347
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #11 !dbg !876 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !881, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata ptr %1, metadata !882, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %2, metadata !883, metadata !DIExpression()), !dbg !4348
  %4 = load i64, ptr %1, align 8, !dbg !4349, !tbaa !1198
  call void @llvm.dbg.value(metadata i64 %4, metadata !884, metadata !DIExpression()), !dbg !4348
  %5 = icmp eq ptr %0, null, !dbg !4350
  br i1 %5, label %6, label %13, !dbg !4351

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4352
  br i1 %7, label %8, label %20, !dbg !4353

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4354
  call void @llvm.dbg.value(metadata i64 %9, metadata !884, metadata !DIExpression()), !dbg !4348
  %10 = icmp ugt i64 %2, 128, !dbg !4356
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4357
  call void @llvm.dbg.value(metadata i64 %12, metadata !884, metadata !DIExpression()), !dbg !4348
  br label %20, !dbg !4358

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4359
  %15 = add nuw i64 %14, 1, !dbg !4359
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4359
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4359
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4359
  call void @llvm.dbg.value(metadata i64 %18, metadata !884, metadata !DIExpression()), !dbg !4348
  br i1 %17, label %19, label %20, !dbg !4360

19:                                               ; preds = %13
  tail call void @xalloc_die() #43, !dbg !4361
  unreachable, !dbg !4361

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4348
  call void @llvm.dbg.value(metadata i64 %21, metadata !884, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata ptr %0, metadata !4138, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 %21, metadata !4141, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 %2, metadata !4142, metadata !DIExpression()), !dbg !4362
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #41, !dbg !4364
  call void @llvm.dbg.value(metadata ptr %22, metadata !4146, metadata !DIExpression()), !dbg !4365
  %23 = icmp eq ptr %22, null, !dbg !4367
  br i1 %23, label %24, label %25, !dbg !4368

24:                                               ; preds = %20
  tail call void @xalloc_die() #43, !dbg !4369
  unreachable, !dbg !4369

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !881, metadata !DIExpression()), !dbg !4348
  store i64 %21, ptr %1, align 8, !dbg !4370, !tbaa !1198
  ret ptr %22, !dbg !4371
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #11 !dbg !888 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !896, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata ptr %1, metadata !897, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i64 %2, metadata !898, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i64 %3, metadata !899, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i64 %4, metadata !900, metadata !DIExpression()), !dbg !4372
  %6 = load i64, ptr %1, align 8, !dbg !4373, !tbaa !1198
  call void @llvm.dbg.value(metadata i64 %6, metadata !901, metadata !DIExpression()), !dbg !4372
  %7 = ashr i64 %6, 1, !dbg !4374
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4374
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4374
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4374
  call void @llvm.dbg.value(metadata i64 %10, metadata !902, metadata !DIExpression()), !dbg !4372
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4376
  call void @llvm.dbg.value(metadata i64 %11, metadata !902, metadata !DIExpression()), !dbg !4372
  %12 = icmp sgt i64 %3, -1, !dbg !4377
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4379
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4379
  call void @llvm.dbg.value(metadata i64 %15, metadata !902, metadata !DIExpression()), !dbg !4372
  %16 = icmp slt i64 %4, 0, !dbg !4380
  br i1 %16, label %17, label %30, !dbg !4380

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4380
  br i1 %18, label %19, label %24, !dbg !4380

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4380
  %21 = udiv i64 9223372036854775807, %20, !dbg !4380
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4380
  br i1 %23, label %46, label %43, !dbg !4380

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4380
  br i1 %25, label %43, label %26, !dbg !4380

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4380
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4380
  %29 = icmp ult i64 %28, %15, !dbg !4380
  br i1 %29, label %46, label %43, !dbg !4380

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4380
  br i1 %31, label %43, label %32, !dbg !4380

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4380
  br i1 %33, label %34, label %40, !dbg !4380

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4380
  br i1 %35, label %43, label %36, !dbg !4380

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4380
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4380
  %39 = icmp ult i64 %38, %4, !dbg !4380
  br i1 %39, label %46, label %43, !dbg !4380

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4380
  br i1 %42, label %46, label %43, !dbg !4380

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !903, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4372
  %44 = mul i64 %15, %4, !dbg !4380
  call void @llvm.dbg.value(metadata i64 %44, metadata !903, metadata !DIExpression()), !dbg !4372
  %45 = icmp slt i64 %44, 128, !dbg !4380
  br i1 %45, label %46, label %51, !dbg !4380

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !904, metadata !DIExpression()), !dbg !4372
  %48 = sdiv i64 %47, %4, !dbg !4381
  call void @llvm.dbg.value(metadata i64 %48, metadata !902, metadata !DIExpression()), !dbg !4372
  %49 = srem i64 %47, %4, !dbg !4384
  %50 = sub nsw i64 %47, %49, !dbg !4385
  call void @llvm.dbg.value(metadata i64 %50, metadata !903, metadata !DIExpression()), !dbg !4372
  br label %51, !dbg !4386

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4372
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4372
  call void @llvm.dbg.value(metadata i64 %53, metadata !903, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i64 %52, metadata !902, metadata !DIExpression()), !dbg !4372
  %54 = icmp eq ptr %0, null, !dbg !4387
  br i1 %54, label %55, label %56, !dbg !4389

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4390, !tbaa !1198
  br label %56, !dbg !4391

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4392
  %58 = icmp slt i64 %57, %2, !dbg !4394
  br i1 %58, label %59, label %96, !dbg !4395

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4396
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4396
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4396
  call void @llvm.dbg.value(metadata i64 %62, metadata !902, metadata !DIExpression()), !dbg !4372
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4397
  br i1 %65, label %95, label %66, !dbg !4397

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4398

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4398
  br i1 %68, label %69, label %74, !dbg !4398

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4398
  %71 = udiv i64 9223372036854775807, %70, !dbg !4398
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4398
  br i1 %73, label %95, label %93, !dbg !4398

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4398
  br i1 %75, label %93, label %76, !dbg !4398

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4398
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4398
  %79 = icmp ult i64 %78, %62, !dbg !4398
  br i1 %79, label %95, label %93, !dbg !4398

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4398
  br i1 %81, label %93, label %82, !dbg !4398

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4398
  br i1 %83, label %84, label %90, !dbg !4398

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4398
  br i1 %85, label %93, label %86, !dbg !4398

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4398
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4398
  %89 = icmp ult i64 %88, %4, !dbg !4398
  br i1 %89, label %95, label %93, !dbg !4398

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4398
  br i1 %92, label %95, label %93, !dbg !4398

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !903, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4372
  %94 = mul i64 %62, %4, !dbg !4398
  call void @llvm.dbg.value(metadata i64 %94, metadata !903, metadata !DIExpression()), !dbg !4372
  br label %96, !dbg !4399

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #43, !dbg !4400
  unreachable, !dbg !4400

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4372
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4372
  call void @llvm.dbg.value(metadata i64 %98, metadata !903, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i64 %97, metadata !902, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata ptr %0, metadata !4218, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata i64 %98, metadata !4219, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata ptr %0, metadata !4221, metadata !DIExpression()), !dbg !4403
  call void @llvm.dbg.value(metadata i64 %98, metadata !4225, metadata !DIExpression()), !dbg !4403
  %99 = icmp eq i64 %98, 0, !dbg !4405
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4405
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #47, !dbg !4406
  call void @llvm.dbg.value(metadata ptr %101, metadata !4146, metadata !DIExpression()), !dbg !4407
  %102 = icmp eq ptr %101, null, !dbg !4409
  br i1 %102, label %103, label %104, !dbg !4410

103:                                              ; preds = %96
  tail call void @xalloc_die() #43, !dbg !4411
  unreachable, !dbg !4411

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !896, metadata !DIExpression()), !dbg !4372
  store i64 %97, ptr %1, align 8, !dbg !4412, !tbaa !1198
  ret ptr %101, !dbg !4413
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4414 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4416, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.value(metadata i64 %0, metadata !4418, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64 1, metadata !4421, metadata !DIExpression()), !dbg !4422
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4424
  call void @llvm.dbg.value(metadata ptr %2, metadata !4146, metadata !DIExpression()), !dbg !4425
  %3 = icmp eq ptr %2, null, !dbg !4427
  br i1 %3, label %4, label %5, !dbg !4428

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4429
  unreachable, !dbg !4429

5:                                                ; preds = %1
  ret ptr %2, !dbg !4430
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4431 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4419 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4418, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i64 %1, metadata !4421, metadata !DIExpression()), !dbg !4432
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4433
  call void @llvm.dbg.value(metadata ptr %3, metadata !4146, metadata !DIExpression()), !dbg !4434
  %4 = icmp eq ptr %3, null, !dbg !4436
  br i1 %4, label %5, label %6, !dbg !4437

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4438
  unreachable, !dbg !4438

6:                                                ; preds = %2
  ret ptr %3, !dbg !4439
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4440 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4442, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata i64 %0, metadata !4444, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata i64 1, metadata !4447, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata i64 %0, metadata !4450, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 1, metadata !4453, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 %0, metadata !4450, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 1, metadata !4453, metadata !DIExpression()), !dbg !4454
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4456
  call void @llvm.dbg.value(metadata ptr %2, metadata !4146, metadata !DIExpression()), !dbg !4457
  %3 = icmp eq ptr %2, null, !dbg !4459
  br i1 %3, label %4, label %5, !dbg !4460

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4461
  unreachable, !dbg !4461

5:                                                ; preds = %1
  ret ptr %2, !dbg !4462
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4445 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4444, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.value(metadata i64 %1, metadata !4447, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.value(metadata i64 %0, metadata !4450, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.value(metadata i64 %1, metadata !4453, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.value(metadata i64 %0, metadata !4450, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.value(metadata i64 %1, metadata !4453, metadata !DIExpression()), !dbg !4464
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4466
  call void @llvm.dbg.value(metadata ptr %3, metadata !4146, metadata !DIExpression()), !dbg !4467
  %4 = icmp eq ptr %3, null, !dbg !4469
  br i1 %4, label %5, label %6, !dbg !4470

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4471
  unreachable, !dbg !4471

6:                                                ; preds = %2
  ret ptr %3, !dbg !4472
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4473 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4477, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i64 %1, metadata !4478, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i64 %1, metadata !4170, metadata !DIExpression()), !dbg !4480
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4482
  call void @llvm.dbg.value(metadata ptr %3, metadata !4146, metadata !DIExpression()), !dbg !4483
  %4 = icmp eq ptr %3, null, !dbg !4485
  br i1 %4, label %5, label %6, !dbg !4486

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4487
  unreachable, !dbg !4487

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4488, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata ptr %0, metadata !4491, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i64 %1, metadata !4492, metadata !DIExpression()), !dbg !4493
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4495
  ret ptr %3, !dbg !4496
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4497 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4501, metadata !DIExpression()), !dbg !4503
  call void @llvm.dbg.value(metadata i64 %1, metadata !4502, metadata !DIExpression()), !dbg !4503
  call void @llvm.dbg.value(metadata i64 %1, metadata !4184, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i64 %1, metadata !4186, metadata !DIExpression()), !dbg !4506
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4508
  call void @llvm.dbg.value(metadata ptr %3, metadata !4146, metadata !DIExpression()), !dbg !4509
  %4 = icmp eq ptr %3, null, !dbg !4511
  br i1 %4, label %5, label %6, !dbg !4512

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4513
  unreachable, !dbg !4513

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4488, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata ptr %0, metadata !4491, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i64 %1, metadata !4492, metadata !DIExpression()), !dbg !4514
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4516
  ret ptr %3, !dbg !4517
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #11 !dbg !4518 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i64 %1, metadata !4523, metadata !DIExpression()), !dbg !4525
  %3 = add nsw i64 %1, 1, !dbg !4526
  call void @llvm.dbg.value(metadata i64 %3, metadata !4184, metadata !DIExpression()), !dbg !4527
  call void @llvm.dbg.value(metadata i64 %3, metadata !4186, metadata !DIExpression()), !dbg !4529
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4531
  call void @llvm.dbg.value(metadata ptr %4, metadata !4146, metadata !DIExpression()), !dbg !4532
  %5 = icmp eq ptr %4, null, !dbg !4534
  br i1 %5, label %6, label %7, !dbg !4535

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4536
  unreachable, !dbg !4536

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4524, metadata !DIExpression()), !dbg !4525
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4537
  store i8 0, ptr %8, align 1, !dbg !4538, !tbaa !1020
  call void @llvm.dbg.value(metadata ptr %4, metadata !4488, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata ptr %0, metadata !4491, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i64 %1, metadata !4492, metadata !DIExpression()), !dbg !4539
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4541
  ret ptr %4, !dbg !4542
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !dbg !4543 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4545, metadata !DIExpression()), !dbg !4546
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !4547
  %3 = add i64 %2, 1, !dbg !4548
  call void @llvm.dbg.value(metadata ptr %0, metadata !4477, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i64 %3, metadata !4478, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i64 %3, metadata !4170, metadata !DIExpression()), !dbg !4551
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4553
  call void @llvm.dbg.value(metadata ptr %4, metadata !4146, metadata !DIExpression()), !dbg !4554
  %5 = icmp eq ptr %4, null, !dbg !4556
  br i1 %5, label %6, label %7, !dbg !4557

6:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4558
  unreachable, !dbg !4558

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4488, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata ptr %0, metadata !4491, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 %3, metadata !4492, metadata !DIExpression()), !dbg !4559
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #41, !dbg !4561
  ret ptr %4, !dbg !4562
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4563 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4567, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %1, metadata !4565, metadata !DIExpression()), !dbg !4568
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.150, ptr noundef nonnull @.str.2.151, i32 noundef 5) #41, !dbg !4567
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.152, ptr noundef %2) #41, !dbg !4567
  %3 = icmp eq i32 %1, 0, !dbg !4567
  tail call void @llvm.assume(i1 %3), !dbg !4567
  tail call void @abort() #43, !dbg !4569
  unreachable, !dbg !4569
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xmemcoll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !4570 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4574, metadata !DIExpression()), !dbg !4580
  call void @llvm.dbg.value(metadata i64 %1, metadata !4575, metadata !DIExpression()), !dbg !4580
  call void @llvm.dbg.value(metadata ptr %2, metadata !4576, metadata !DIExpression()), !dbg !4580
  call void @llvm.dbg.value(metadata i64 %3, metadata !4577, metadata !DIExpression()), !dbg !4580
  %5 = tail call i32 @memcoll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #41, !dbg !4581
  call void @llvm.dbg.value(metadata i32 %5, metadata !4578, metadata !DIExpression()), !dbg !4580
  %6 = tail call ptr @__errno_location() #44, !dbg !4582
  %7 = load i32, ptr %6, align 4, !dbg !4582, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %7, metadata !4579, metadata !DIExpression()), !dbg !4580
  %8 = icmp eq i32 %7, 0, !dbg !4583
  br i1 %8, label %17, label %9, !dbg !4585

9:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 %7, metadata !4586, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata ptr %0, metadata !4591, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata i64 %1, metadata !4592, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata ptr %2, metadata !4593, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata i64 %3, metadata !4594, metadata !DIExpression()), !dbg !4597
  %10 = tail call ptr @dcgettext(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.1.156, i32 noundef 5) #41, !dbg !4599
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %7, ptr noundef %10) #41, !dbg !4599
  %11 = tail call ptr @dcgettext(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.2.157, i32 noundef 5) #41, !dbg !4600
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %11) #41, !dbg !4600
  %12 = load volatile i32, ptr @exit_failure, align 4, !dbg !4601, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %12, metadata !4595, metadata !DIExpression()), !dbg !4602
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.3.158, i32 noundef 5) #41, !dbg !4601
  %14 = tail call ptr @quotearg_n_style_mem(i32 noundef 0, i32 noundef 8, ptr noundef %0, i64 noundef %1) #41, !dbg !4601
  %15 = tail call ptr @quotearg_n_style_mem(i32 noundef 1, i32 noundef 8, ptr noundef %2, i64 noundef %3) #41, !dbg !4601
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %12, i32 noundef 0, ptr noundef %13, ptr noundef %14, ptr noundef %15) #41, !dbg !4601
  %16 = icmp eq i32 %12, 0, !dbg !4601
  tail call void @llvm.assume(i1 %16), !dbg !4601
  br label %17, !dbg !4603

17:                                               ; preds = %9, %4
  ret i32 %5, !dbg !4604
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xmemcoll0(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 !dbg !4605 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4607, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata i64 %1, metadata !4608, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata ptr %2, metadata !4609, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata i64 %3, metadata !4610, metadata !DIExpression()), !dbg !4613
  %5 = tail call i32 @memcoll0(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #41, !dbg !4614
  call void @llvm.dbg.value(metadata i32 %5, metadata !4611, metadata !DIExpression()), !dbg !4613
  %6 = tail call ptr @__errno_location() #44, !dbg !4615
  %7 = load i32, ptr %6, align 4, !dbg !4615, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %7, metadata !4612, metadata !DIExpression()), !dbg !4613
  %8 = icmp eq i32 %7, 0, !dbg !4616
  br i1 %8, label %19, label %9, !dbg !4618

9:                                                ; preds = %4
  %10 = add i64 %1, -1, !dbg !4619
  %11 = add i64 %3, -1, !dbg !4620
  call void @llvm.dbg.value(metadata i32 %7, metadata !4586, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata ptr %0, metadata !4591, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i64 %10, metadata !4592, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata ptr %2, metadata !4593, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i64 %11, metadata !4594, metadata !DIExpression()), !dbg !4621
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.1.156, i32 noundef 5) #41, !dbg !4623
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %7, ptr noundef %12) #41, !dbg !4623
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.2.157, i32 noundef 5) #41, !dbg !4624
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13) #41, !dbg !4624
  %14 = load volatile i32, ptr @exit_failure, align 4, !dbg !4625, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %14, metadata !4595, metadata !DIExpression()), !dbg !4626
  %15 = tail call ptr @dcgettext(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.3.158, i32 noundef 5) #41, !dbg !4625
  %16 = tail call ptr @quotearg_n_style_mem(i32 noundef 0, i32 noundef 8, ptr noundef %0, i64 noundef %10) #41, !dbg !4625
  %17 = tail call ptr @quotearg_n_style_mem(i32 noundef 1, i32 noundef 8, ptr noundef %2, i64 noundef %11) #41, !dbg !4625
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %14, i32 noundef 0, ptr noundef %15, ptr noundef %16, ptr noundef %17) #41, !dbg !4625
  %18 = icmp eq i32 %14, 0, !dbg !4625
  tail call void @llvm.assume(i1 %18), !dbg !4625
  br label %19, !dbg !4627

19:                                               ; preds = %9, %4
  ret i32 %5, !dbg !4628
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #11 !dbg !4629 {
  %3 = alloca [81 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4667, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata ptr %1, metadata !4668, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i32 0, metadata !4669, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i32 0, metadata !4670, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i8 0, metadata !4671, metadata !DIExpression()), !dbg !4691
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #41, !dbg !4692
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4672, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.value(metadata ptr %1, metadata !4676, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata ptr %3, metadata !4678, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata i32 0, metadata !4669, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i32 0, metadata !4670, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i8 0, metadata !4671, metadata !DIExpression()), !dbg !4691
  %4 = load i8, ptr %1, align 1, !dbg !4695, !tbaa !1020
  %5 = icmp eq i8 %4, 0, !dbg !4696
  br i1 %5, label %6, label %7, !dbg !4697

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4678, metadata !DIExpression()), !dbg !4694
  store i8 0, ptr %3, align 16, !dbg !4698, !tbaa !1020
  br label %74, !dbg !4699

7:                                                ; preds = %2, %47
  %8 = phi i8 [ %54, %47 ], [ %4, %2 ]
  %9 = phi ptr [ %53, %47 ], [ %3, %2 ]
  %10 = phi i32 [ %51, %47 ], [ 0, %2 ]
  %11 = phi i32 [ %50, %47 ], [ 0, %2 ]
  %12 = phi i64 [ %49, %47 ], [ 0, %2 ]
  %13 = phi ptr [ %52, %47 ], [ %1, %2 ]
  %14 = phi i8 [ %48, %47 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !4669, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i32 %11, metadata !4670, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata ptr %13, metadata !4676, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata i8 %14, metadata !4671, metadata !DIExpression()), !dbg !4691
  %15 = sext i8 %8 to i32, !dbg !4695
  switch i32 %15, label %42 [
    i32 114, label %16
    i32 119, label %20
    i32 97, label %25
    i32 98, label %30
    i32 43, label %34
    i32 120, label %38
    i32 101, label %40
  ], !dbg !4700

16:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !4669, metadata !DIExpression()), !dbg !4691
  %17 = icmp slt i64 %12, 80, !dbg !4701
  br i1 %17, label %18, label %47, !dbg !4704

18:                                               ; preds = %16
  %19 = add nsw i64 %12, 1, !dbg !4705
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %19), metadata !4678, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4694
  store i8 %8, ptr %9, align 1, !dbg !4706, !tbaa !1020
  br label %47, !dbg !4707

20:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !4669, metadata !DIExpression()), !dbg !4691
  %21 = or i32 %11, 576, !dbg !4708
  call void @llvm.dbg.value(metadata i32 %21, metadata !4670, metadata !DIExpression()), !dbg !4691
  %22 = icmp slt i64 %12, 80, !dbg !4709
  br i1 %22, label %23, label %47, !dbg !4711

23:                                               ; preds = %20
  %24 = add nsw i64 %12, 1, !dbg !4712
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %24), metadata !4678, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4694
  store i8 %8, ptr %9, align 1, !dbg !4713, !tbaa !1020
  br label %47, !dbg !4714

25:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !4669, metadata !DIExpression()), !dbg !4691
  %26 = or i32 %11, 1088, !dbg !4715
  call void @llvm.dbg.value(metadata i32 %26, metadata !4670, metadata !DIExpression()), !dbg !4691
  %27 = icmp slt i64 %12, 80, !dbg !4716
  br i1 %27, label %28, label %47, !dbg !4718

28:                                               ; preds = %25
  %29 = add nsw i64 %12, 1, !dbg !4719
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4678, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4694
  store i8 %8, ptr %9, align 1, !dbg !4720, !tbaa !1020
  br label %47, !dbg !4721

30:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 %11, metadata !4670, metadata !DIExpression()), !dbg !4691
  %31 = icmp slt i64 %12, 80, !dbg !4722
  br i1 %31, label %32, label %47, !dbg !4724

32:                                               ; preds = %30
  %33 = add nsw i64 %12, 1, !dbg !4725
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4678, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4694
  store i8 %8, ptr %9, align 1, !dbg !4726, !tbaa !1020
  br label %47, !dbg !4727

34:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 2, metadata !4669, metadata !DIExpression()), !dbg !4691
  %35 = icmp slt i64 %12, 80, !dbg !4728
  br i1 %35, label %36, label %47, !dbg !4730

36:                                               ; preds = %34
  %37 = add nsw i64 %12, 1, !dbg !4731
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %37), metadata !4678, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4694
  store i8 %8, ptr %9, align 1, !dbg !4732, !tbaa !1020
  br label %47, !dbg !4733

38:                                               ; preds = %7
  %39 = or i32 %11, 128, !dbg !4734
  call void @llvm.dbg.value(metadata i32 %39, metadata !4670, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i8 1, metadata !4671, metadata !DIExpression()), !dbg !4691
  br label %47, !dbg !4735

40:                                               ; preds = %7
  %41 = or i32 %11, 524288, !dbg !4736
  call void @llvm.dbg.value(metadata i32 %41, metadata !4670, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i8 1, metadata !4671, metadata !DIExpression()), !dbg !4691
  br label %47, !dbg !4737

42:                                               ; preds = %7
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #42, !dbg !4738
  call void @llvm.dbg.value(metadata i64 %43, metadata !4679, metadata !DIExpression()), !dbg !4739
  %44 = sub nsw i64 80, %12, !dbg !4740
  %45 = tail call i64 @llvm.umin.i64(i64 %43, i64 %44), !dbg !4742
  call void @llvm.dbg.value(metadata i64 %45, metadata !4679, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata ptr %9, metadata !4743, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata ptr %13, metadata !4746, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata i64 %45, metadata !4747, metadata !DIExpression()), !dbg !4748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %13, i64 noundef %45, i1 noundef false) #41, !dbg !4750
  %46 = getelementptr inbounds i8, ptr %9, i64 %45, !dbg !4751
  call void @llvm.dbg.value(metadata ptr %46, metadata !4678, metadata !DIExpression()), !dbg !4694
  br label %56, !dbg !4752

47:                                               ; preds = %34, %36, %30, %32, %25, %28, %20, %23, %16, %18, %40, %38
  %48 = phi i8 [ 1, %40 ], [ 1, %38 ], [ %14, %36 ], [ %14, %34 ], [ %14, %32 ], [ %14, %30 ], [ %14, %28 ], [ %14, %25 ], [ %14, %23 ], [ %14, %20 ], [ %14, %18 ], [ %14, %16 ], !dbg !4691
  %49 = phi i64 [ %12, %40 ], [ %12, %38 ], [ %37, %36 ], [ %12, %34 ], [ %33, %32 ], [ %12, %30 ], [ %29, %28 ], [ %12, %25 ], [ %24, %23 ], [ %12, %20 ], [ %19, %18 ], [ %12, %16 ]
  %50 = phi i32 [ %41, %40 ], [ %39, %38 ], [ %11, %36 ], [ %11, %34 ], [ %11, %32 ], [ %11, %30 ], [ %26, %28 ], [ %26, %25 ], [ %21, %23 ], [ %21, %20 ], [ %11, %18 ], [ %11, %16 ], !dbg !4691
  %51 = phi i32 [ %10, %40 ], [ %10, %38 ], [ 2, %36 ], [ 2, %34 ], [ %10, %32 ], [ %10, %30 ], [ 1, %28 ], [ 1, %25 ], [ 1, %23 ], [ 1, %20 ], [ 0, %18 ], [ 0, %16 ], !dbg !4691
  call void @llvm.dbg.value(metadata i32 %51, metadata !4669, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i32 %50, metadata !4670, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %49), metadata !4678, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4694
  call void @llvm.dbg.value(metadata i8 %48, metadata !4671, metadata !DIExpression()), !dbg !4691
  %52 = getelementptr inbounds i8, ptr %13, i64 1, !dbg !4753
  call void @llvm.dbg.value(metadata ptr %52, metadata !4676, metadata !DIExpression()), !dbg !4694
  %53 = getelementptr inbounds i8, ptr %3, i64 %49, !dbg !4691
  call void @llvm.dbg.value(metadata ptr %53, metadata !4678, metadata !DIExpression()), !dbg !4694
  %54 = load i8, ptr %52, align 1, !dbg !4695, !tbaa !1020
  %55 = icmp eq i8 %54, 0, !dbg !4696
  br i1 %55, label %56, label %7, !dbg !4697, !llvm.loop !4754

56:                                               ; preds = %47, %42
  %57 = phi i8 [ %14, %42 ], [ %48, %47 ]
  %58 = phi i32 [ %11, %42 ], [ %50, %47 ]
  %59 = phi i32 [ %10, %42 ], [ %51, %47 ]
  %60 = phi ptr [ %46, %42 ], [ %53, %47 ], !dbg !4694
  call void @llvm.dbg.value(metadata ptr %60, metadata !4678, metadata !DIExpression()), !dbg !4694
  store i8 0, ptr %60, align 1, !dbg !4698, !tbaa !1020
  %61 = and i8 %57, 1, !dbg !4756
  %62 = icmp eq i8 %61, 0, !dbg !4756
  br i1 %62, label %74, label %63, !dbg !4699

63:                                               ; preds = %56
  %64 = or i32 %59, %58, !dbg !4757
  %65 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %64, i32 noundef 438) #41, !dbg !4758
  call void @llvm.dbg.value(metadata i32 %65, metadata !4684, metadata !DIExpression()), !dbg !4759
  %66 = icmp slt i32 %65, 0, !dbg !4760
  br i1 %66, label %76, label %67, !dbg !4762

67:                                               ; preds = %63
  %68 = call noalias ptr @fdopen(i32 noundef %65, ptr noundef nonnull %3) #41, !dbg !4763
  call void @llvm.dbg.value(metadata ptr %68, metadata !4687, metadata !DIExpression()), !dbg !4759
  %69 = icmp eq ptr %68, null, !dbg !4764
  br i1 %69, label %70, label %76, !dbg !4765

70:                                               ; preds = %67
  %71 = tail call ptr @__errno_location() #44, !dbg !4766
  %72 = load i32, ptr %71, align 4, !dbg !4766, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %72, metadata !4688, metadata !DIExpression()), !dbg !4767
  %73 = tail call i32 @close(i32 noundef %65) #41, !dbg !4768
  store i32 %72, ptr %71, align 4, !dbg !4769, !tbaa !1011
  br label %76, !dbg !4770

74:                                               ; preds = %6, %56
  call void @llvm.dbg.value(metadata ptr %0, metadata !4771, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata ptr %1, metadata !4774, metadata !DIExpression()), !dbg !4775
  %75 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4777
  br label %76, !dbg !4778

76:                                               ; preds = %63, %70, %67, %74
  %77 = phi ptr [ %75, %74 ], [ null, %63 ], [ null, %70 ], [ %68, %67 ], !dbg !4691
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #41, !dbg !4779
  ret ptr %77, !dbg !4779
}

; Function Attrs: nofree
declare !dbg !4780 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #37

; Function Attrs: nofree nounwind
declare !dbg !4783 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #11 !dbg !4786 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4824, metadata !DIExpression()), !dbg !4829
  %2 = tail call i64 @__fpending(ptr noundef %0) #41, !dbg !4830
  call void @llvm.dbg.value(metadata i1 poison, metadata !4825, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4829
  call void @llvm.dbg.value(metadata ptr %0, metadata !4831, metadata !DIExpression()), !dbg !4834
  %3 = load i32, ptr %0, align 8, !dbg !4836, !tbaa !1348
  %4 = and i32 %3, 32, !dbg !4837
  %5 = icmp eq i32 %4, 0, !dbg !4837
  call void @llvm.dbg.value(metadata i1 %5, metadata !4827, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4829
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #41, !dbg !4838
  %7 = icmp eq i32 %6, 0, !dbg !4839
  call void @llvm.dbg.value(metadata i1 %7, metadata !4828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4829
  br i1 %5, label %8, label %18, !dbg !4840

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4842
  call void @llvm.dbg.value(metadata i1 %9, metadata !4825, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4829
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4843
  %11 = xor i1 %7, true, !dbg !4843
  %12 = sext i1 %11 to i32, !dbg !4843
  br i1 %10, label %21, label %13, !dbg !4843

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #44, !dbg !4844
  %15 = load i32, ptr %14, align 4, !dbg !4844, !tbaa !1011
  %16 = icmp ne i32 %15, 9, !dbg !4845
  %17 = sext i1 %16 to i32, !dbg !4846
  br label %21, !dbg !4846

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4847

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #44, !dbg !4849
  store i32 0, ptr %20, align 4, !dbg !4851, !tbaa !1011
  br label %21, !dbg !4849

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4829
  ret i32 %22, !dbg !4852
}

; Function Attrs: nounwind
declare !dbg !4853 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #11 !dbg !4856 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4858, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i32 %1, metadata !4859, metadata !DIExpression()), !dbg !4883
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #41, !dbg !4884
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4860, metadata !DIExpression()), !dbg !4885
  call void @llvm.va_start(ptr nonnull %3), !dbg !4886
  call void @llvm.dbg.value(metadata i32 -1, metadata !4871, metadata !DIExpression()), !dbg !4883
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
  ], !dbg !4887

4:                                                ; preds = %2
  %5 = load i32, ptr %3, align 16, !dbg !4888
  %6 = icmp ult i32 %5, 41, !dbg !4888
  br i1 %6, label %7, label %13, !dbg !4888

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4888
  %9 = load ptr, ptr %8, align 16, !dbg !4888
  %10 = zext i32 %5 to i64, !dbg !4888
  %11 = getelementptr i8, ptr %9, i64 %10, !dbg !4888
  %12 = add nuw nsw i32 %5, 8, !dbg !4888
  store i32 %12, ptr %3, align 16, !dbg !4888
  br label %17, !dbg !4888

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4888
  %15 = load ptr, ptr %14, align 8, !dbg !4888
  %16 = getelementptr i8, ptr %15, i64 8, !dbg !4888
  store ptr %16, ptr %14, align 8, !dbg !4888
  br label %17, !dbg !4888

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %11, %7 ], [ %15, %13 ], !dbg !4888
  %19 = load i32, ptr %18, align 4, !dbg !4888
  call void @llvm.dbg.value(metadata i32 %19, metadata !4872, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata i32 %0, metadata !4890, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 %19, metadata !4893, metadata !DIExpression()), !dbg !4895
  %20 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %19) #41, !dbg !4897
  call void @llvm.dbg.value(metadata i32 %20, metadata !4894, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 %20, metadata !4871, metadata !DIExpression()), !dbg !4883
  br label %107

21:                                               ; preds = %2
  %22 = load i32, ptr %3, align 16, !dbg !4898
  %23 = icmp ult i32 %22, 41, !dbg !4898
  br i1 %23, label %24, label %30, !dbg !4898

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4898
  %26 = load ptr, ptr %25, align 16, !dbg !4898
  %27 = zext i32 %22 to i64, !dbg !4898
  %28 = getelementptr i8, ptr %26, i64 %27, !dbg !4898
  %29 = add nuw nsw i32 %22, 8, !dbg !4898
  store i32 %29, ptr %3, align 16, !dbg !4898
  br label %34, !dbg !4898

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4898
  %32 = load ptr, ptr %31, align 8, !dbg !4898
  %33 = getelementptr i8, ptr %32, i64 8, !dbg !4898
  store ptr %33, ptr %31, align 8, !dbg !4898
  br label %34, !dbg !4898

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %28, %24 ], [ %32, %30 ], !dbg !4898
  %36 = load i32, ptr %35, align 4, !dbg !4898
  call void @llvm.dbg.value(metadata i32 %36, metadata !4875, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata i32 %0, metadata !807, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i32 %36, metadata !808, metadata !DIExpression()), !dbg !4900
  %37 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4902, !tbaa !1011
  %38 = icmp sgt i32 %37, -1, !dbg !4904
  br i1 %38, label %39, label %51, !dbg !4905

39:                                               ; preds = %34
  %40 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %36) #41, !dbg !4906
  call void @llvm.dbg.value(metadata i32 %40, metadata !809, metadata !DIExpression()), !dbg !4900
  %41 = icmp sgt i32 %40, -1, !dbg !4908
  br i1 %41, label %46, label %42, !dbg !4910

42:                                               ; preds = %39
  %43 = tail call ptr @__errno_location() #44, !dbg !4911
  %44 = load i32, ptr %43, align 4, !dbg !4911, !tbaa !1011
  %45 = icmp eq i32 %44, 22, !dbg !4912
  br i1 %45, label %47, label %46, !dbg !4913

46:                                               ; preds = %42, %39
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4914, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %40, metadata !809, metadata !DIExpression()), !dbg !4900
  br label %107, !dbg !4916

47:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !4890, metadata !DIExpression()), !dbg !4917
  call void @llvm.dbg.value(metadata i32 %36, metadata !4893, metadata !DIExpression()), !dbg !4917
  %48 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #41, !dbg !4920
  call void @llvm.dbg.value(metadata i32 %48, metadata !4894, metadata !DIExpression()), !dbg !4917
  call void @llvm.dbg.value(metadata i32 %48, metadata !809, metadata !DIExpression()), !dbg !4900
  %49 = icmp sgt i32 %48, -1, !dbg !4921
  br i1 %49, label %50, label %107, !dbg !4923

50:                                               ; preds = %47
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4924, !tbaa !1011
  br label %55, !dbg !4925

51:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 %0, metadata !4890, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.value(metadata i32 %36, metadata !4893, metadata !DIExpression()), !dbg !4926
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #41, !dbg !4928
  call void @llvm.dbg.value(metadata i32 %52, metadata !4894, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.value(metadata i32 %52, metadata !809, metadata !DIExpression()), !dbg !4900
  %53 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %54 = icmp eq i32 %53, -1
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i1 [ true, %50 ], [ %54, %51 ]
  %57 = phi i32 [ %48, %50 ], [ %52, %51 ], !dbg !4929
  call void @llvm.dbg.value(metadata i32 %57, metadata !809, metadata !DIExpression()), !dbg !4900
  %58 = icmp sgt i32 %57, -1, !dbg !4930
  %59 = select i1 %58, i1 %56, i1 false, !dbg !4916
  br i1 %59, label %60, label %107, !dbg !4916

60:                                               ; preds = %55
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 1) #41, !dbg !4931
  call void @llvm.dbg.value(metadata i32 %61, metadata !810, metadata !DIExpression()), !dbg !4932
  %62 = icmp slt i32 %61, 0, !dbg !4933
  br i1 %62, label %67, label %63, !dbg !4934

63:                                               ; preds = %60
  %64 = or i32 %61, 1, !dbg !4935
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 2, i32 noundef %64) #41, !dbg !4936
  %66 = icmp eq i32 %65, -1, !dbg !4937
  br i1 %66, label %67, label %107, !dbg !4938

67:                                               ; preds = %63, %60
  %68 = tail call ptr @__errno_location() #44, !dbg !4939
  %69 = load i32, ptr %68, align 4, !dbg !4939, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 %69, metadata !813, metadata !DIExpression()), !dbg !4940
  %70 = call i32 @close(i32 noundef %57) #41, !dbg !4941
  store i32 %69, ptr %68, align 4, !dbg !4942, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 -1, metadata !809, metadata !DIExpression()), !dbg !4900
  br label %107, !dbg !4943

71:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %72 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #41, !dbg !4944
  call void @llvm.dbg.value(metadata i32 %72, metadata !4871, metadata !DIExpression()), !dbg !4883
  br label %107, !dbg !4945

73:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %74 = load i32, ptr %3, align 16, !dbg !4946
  %75 = icmp ult i32 %74, 41, !dbg !4946
  br i1 %75, label %76, label %82, !dbg !4946

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4946
  %78 = load ptr, ptr %77, align 16, !dbg !4946
  %79 = zext i32 %74 to i64, !dbg !4946
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4946
  %81 = add nuw nsw i32 %74, 8, !dbg !4946
  store i32 %81, ptr %3, align 16, !dbg !4946
  br label %86, !dbg !4946

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4946
  %84 = load ptr, ptr %83, align 8, !dbg !4946
  %85 = getelementptr i8, ptr %84, i64 8, !dbg !4946
  store ptr %85, ptr %83, align 8, !dbg !4946
  br label %86, !dbg !4946

86:                                               ; preds = %82, %76
  %87 = phi ptr [ %80, %76 ], [ %84, %82 ], !dbg !4946
  %88 = load i32, ptr %87, align 4, !dbg !4946
  call void @llvm.dbg.value(metadata i32 %88, metadata !4877, metadata !DIExpression()), !dbg !4947
  %89 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %88) #41, !dbg !4948
  call void @llvm.dbg.value(metadata i32 %89, metadata !4871, metadata !DIExpression()), !dbg !4883
  br label %107, !dbg !4949

90:                                               ; preds = %2
  %91 = load i32, ptr %3, align 16, !dbg !4950
  %92 = icmp ult i32 %91, 41, !dbg !4950
  br i1 %92, label %93, label %99, !dbg !4950

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4950
  %95 = load ptr, ptr %94, align 16, !dbg !4950
  %96 = zext i32 %91 to i64, !dbg !4950
  %97 = getelementptr i8, ptr %95, i64 %96, !dbg !4950
  %98 = add nuw nsw i32 %91, 8, !dbg !4950
  store i32 %98, ptr %3, align 16, !dbg !4950
  br label %103, !dbg !4950

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4950
  %101 = load ptr, ptr %100, align 8, !dbg !4950
  %102 = getelementptr i8, ptr %101, i64 8, !dbg !4950
  store ptr %102, ptr %100, align 8, !dbg !4950
  br label %103, !dbg !4950

103:                                              ; preds = %99, %93
  %104 = phi ptr [ %97, %93 ], [ %101, %99 ], !dbg !4950
  %105 = load ptr, ptr %104, align 8, !dbg !4950
  call void @llvm.dbg.value(metadata ptr %105, metadata !4881, metadata !DIExpression()), !dbg !4951
  %106 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %105) #41, !dbg !4952
  call void @llvm.dbg.value(metadata i32 %106, metadata !4871, metadata !DIExpression()), !dbg !4883
  br label %107, !dbg !4953

107:                                              ; preds = %67, %63, %55, %47, %46, %71, %86, %103, %17
  %108 = phi i32 [ %106, %103 ], [ %89, %86 ], [ %72, %71 ], [ %20, %17 ], [ %57, %55 ], [ -1, %67 ], [ %57, %63 ], [ %48, %47 ], [ %40, %46 ], !dbg !4954
  call void @llvm.dbg.value(metadata i32 %108, metadata !4871, metadata !DIExpression()), !dbg !4883
  call void @llvm.va_end(ptr nonnull %3), !dbg !4955
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #41, !dbg !4956
  ret i32 %108, !dbg !4957
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #11 !dbg !4958 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4963, metadata !DIExpression()), !dbg !4968
  call void @llvm.dbg.value(metadata ptr %1, metadata !4964, metadata !DIExpression()), !dbg !4968
  call void @llvm.dbg.value(metadata i64 %2, metadata !4965, metadata !DIExpression()), !dbg !4968
  call void @llvm.dbg.value(metadata ptr %3, metadata !4966, metadata !DIExpression()), !dbg !4968
  %5 = icmp eq ptr %1, null, !dbg !4969
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4971
  %7 = select i1 %5, ptr @.str.167, ptr %1, !dbg !4971
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4971
  call void @llvm.dbg.value(metadata i64 %8, metadata !4965, metadata !DIExpression()), !dbg !4968
  call void @llvm.dbg.value(metadata ptr %7, metadata !4964, metadata !DIExpression()), !dbg !4968
  call void @llvm.dbg.value(metadata ptr %6, metadata !4963, metadata !DIExpression()), !dbg !4968
  %9 = icmp eq ptr %3, null, !dbg !4972
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4974
  call void @llvm.dbg.value(metadata ptr %10, metadata !4966, metadata !DIExpression()), !dbg !4968
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #41, !dbg !4975
  call void @llvm.dbg.value(metadata i64 %11, metadata !4967, metadata !DIExpression()), !dbg !4968
  %12 = icmp ult i64 %11, -3, !dbg !4976
  br i1 %12, label %13, label %17, !dbg !4978

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #42, !dbg !4979
  %15 = icmp eq i32 %14, 0, !dbg !4979
  br i1 %15, label %16, label %29, !dbg !4980

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4981, metadata !DIExpression()), !dbg !4986
  call void @llvm.dbg.value(metadata ptr %10, metadata !4988, metadata !DIExpression()), !dbg !4993
  call void @llvm.dbg.value(metadata i32 0, metadata !4991, metadata !DIExpression()), !dbg !4993
  call void @llvm.dbg.value(metadata i64 8, metadata !4992, metadata !DIExpression()), !dbg !4993
  store i64 0, ptr %10, align 1, !dbg !4995
  br label %29, !dbg !4996

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4997
  br i1 %18, label %19, label %20, !dbg !4999

19:                                               ; preds = %17
  tail call void @abort() #43, !dbg !5000
  unreachable, !dbg !5000

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5001

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #41, !dbg !5003
  br i1 %23, label %29, label %24, !dbg !5004

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5005
  br i1 %25, label %29, label %26, !dbg !5008

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5009, !tbaa !1020
  %28 = zext i8 %27 to i32, !dbg !5010
  store i32 %28, ptr %6, align 4, !dbg !5011, !tbaa !1011
  br label %29, !dbg !5012

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4968
  ret i64 %30, !dbg !5013
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5014 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: read) uwtable
define dso_local i32 @memcoll(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef %2, i64 noundef %3) local_unnamed_addr #39 !dbg !5020 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5022, metadata !DIExpression()), !dbg !5031
  call void @llvm.dbg.value(metadata i64 %1, metadata !5023, metadata !DIExpression()), !dbg !5031
  call void @llvm.dbg.value(metadata ptr %2, metadata !5024, metadata !DIExpression()), !dbg !5031
  call void @llvm.dbg.value(metadata i64 %3, metadata !5025, metadata !DIExpression()), !dbg !5031
  %5 = icmp eq i64 %1, %3, !dbg !5032
  br i1 %5, label %6, label %11, !dbg !5033

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !5034, metadata !DIExpression()), !dbg !5039
  call void @llvm.dbg.value(metadata ptr %2, metadata !5037, metadata !DIExpression()), !dbg !5039
  call void @llvm.dbg.value(metadata i64 %1, metadata !5038, metadata !DIExpression()), !dbg !5039
  %7 = tail call i32 @bcmp(ptr %0, ptr %2, i64 %1), !dbg !5041
  %8 = icmp eq i32 %7, 0, !dbg !5042
  br i1 %8, label %9, label %11, !dbg !5043

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #44, !dbg !5044
  store i32 0, ptr %10, align 4, !dbg !5046, !tbaa !1011
  call void @llvm.dbg.value(metadata i32 0, metadata !5026, metadata !DIExpression()), !dbg !5031
  br label %43, !dbg !5047

11:                                               ; preds = %6, %4
  %12 = getelementptr inbounds i8, ptr %0, i64 %1, !dbg !5048
  %13 = load i8, ptr %12, align 1, !dbg !5048, !tbaa !1020
  call void @llvm.dbg.value(metadata i8 %13, metadata !5027, metadata !DIExpression()), !dbg !5049
  %14 = getelementptr inbounds i8, ptr %2, i64 %3, !dbg !5050
  %15 = load i8, ptr %14, align 1, !dbg !5050, !tbaa !1020
  call void @llvm.dbg.value(metadata i8 %15, metadata !5030, metadata !DIExpression()), !dbg !5049
  store i8 0, ptr %12, align 1, !dbg !5051, !tbaa !1020
  store i8 0, ptr %14, align 1, !dbg !5052, !tbaa !1020
  %16 = add i64 %1, 1, !dbg !5053
  %17 = add i64 %3, 1, !dbg !5054
  call void @llvm.dbg.value(metadata ptr %0, metadata !5055, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i64 %16, metadata !5058, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata ptr %2, metadata !5059, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i64 %17, metadata !5060, metadata !DIExpression()), !dbg !5065
  %18 = tail call ptr @__errno_location() #44, !dbg !5065
  br label %19, !dbg !5067

19:                                               ; preds = %37, %11
  %20 = phi ptr [ %2, %11 ], [ %38, %37 ]
  %21 = phi i64 [ %17, %11 ], [ %32, %37 ]
  %22 = phi i64 [ %16, %11 ], [ %31, %37 ]
  %23 = phi ptr [ %0, %11 ], [ %39, %37 ]
  call void @llvm.dbg.value(metadata ptr %23, metadata !5055, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i64 %22, metadata !5058, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata i64 %21, metadata !5060, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.value(metadata ptr %20, metadata !5059, metadata !DIExpression()), !dbg !5065
  store i32 0, ptr %18, align 4, !dbg !5068, !tbaa !1011
  %24 = tail call i32 @strcoll(ptr noundef %23, ptr noundef %20) #42, !dbg !5069
  call void @llvm.dbg.value(metadata i32 %24, metadata !5061, metadata !DIExpression()), !dbg !5065
  %25 = icmp eq i32 %24, 0, !dbg !5070
  br i1 %25, label %26, label %41, !dbg !5067

26:                                               ; preds = %19
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %23) #42, !dbg !5071
  %28 = add i64 %27, 1, !dbg !5072
  call void @llvm.dbg.value(metadata i64 %28, metadata !5062, metadata !DIExpression()), !dbg !5073
  %29 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #42, !dbg !5074
  %30 = add i64 %29, 1, !dbg !5075
  call void @llvm.dbg.value(metadata i64 %30, metadata !5064, metadata !DIExpression()), !dbg !5073
  call void @llvm.dbg.value(metadata !DIArgList(ptr %23, i64 %28), metadata !5055, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5065
  call void @llvm.dbg.value(metadata !DIArgList(ptr %20, i64 %30), metadata !5059, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5065
  %31 = sub i64 %22, %28, !dbg !5076
  call void @llvm.dbg.value(metadata i64 %31, metadata !5058, metadata !DIExpression()), !dbg !5065
  %32 = sub i64 %21, %30, !dbg !5077
  call void @llvm.dbg.value(metadata i64 %32, metadata !5060, metadata !DIExpression()), !dbg !5065
  %33 = icmp eq i64 %31, 0, !dbg !5078
  br i1 %33, label %34, label %37, !dbg !5080

34:                                               ; preds = %26
  %35 = icmp ne i64 %32, 0, !dbg !5081
  %36 = sext i1 %35 to i32, !dbg !5081
  br label %41

37:                                               ; preds = %26
  %38 = getelementptr inbounds i8, ptr %20, i64 %30, !dbg !5082
  call void @llvm.dbg.value(metadata ptr %38, metadata !5059, metadata !DIExpression()), !dbg !5065
  %39 = getelementptr inbounds i8, ptr %23, i64 %28, !dbg !5083
  call void @llvm.dbg.value(metadata ptr %39, metadata !5055, metadata !DIExpression()), !dbg !5065
  %40 = icmp eq i64 %32, 0, !dbg !5084
  br i1 %40, label %41, label %19, !llvm.loop !5086

41:                                               ; preds = %19, %37, %34
  %42 = phi i32 [ %36, %34 ], [ 1, %37 ], [ %24, %19 ], !dbg !5065
  call void @llvm.dbg.value(metadata i32 %42, metadata !5026, metadata !DIExpression()), !dbg !5031
  store i8 %13, ptr %12, align 1, !dbg !5088, !tbaa !1020
  store i8 %15, ptr %14, align 1, !dbg !5089, !tbaa !1020
  br label %43

43:                                               ; preds = %41, %9
  %44 = phi i32 [ 0, %9 ], [ %42, %41 ], !dbg !5090
  call void @llvm.dbg.value(metadata i32 %44, metadata !5026, metadata !DIExpression()), !dbg !5031
  ret i32 %44, !dbg !5091
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5092 i32 @strcoll(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #38

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: read) uwtable
define dso_local i32 @memcoll0(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #39 !dbg !5093 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5095, metadata !DIExpression()), !dbg !5099
  call void @llvm.dbg.value(metadata i64 %1, metadata !5096, metadata !DIExpression()), !dbg !5099
  call void @llvm.dbg.value(metadata ptr %2, metadata !5097, metadata !DIExpression()), !dbg !5099
  call void @llvm.dbg.value(metadata i64 %3, metadata !5098, metadata !DIExpression()), !dbg !5099
  %5 = icmp eq i64 %1, %3, !dbg !5100
  br i1 %5, label %6, label %11, !dbg !5102

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !5034, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.value(metadata ptr %2, metadata !5037, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.value(metadata i64 %1, metadata !5038, metadata !DIExpression()), !dbg !5103
  %7 = tail call i32 @bcmp(ptr %0, ptr %2, i64 %1), !dbg !5105
  %8 = icmp eq i32 %7, 0, !dbg !5106
  br i1 %8, label %9, label %11, !dbg !5107

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #44, !dbg !5108
  store i32 0, ptr %10, align 4, !dbg !5110, !tbaa !1011
  br label %35, !dbg !5111

11:                                               ; preds = %6, %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !5055, metadata !DIExpression()), !dbg !5112
  call void @llvm.dbg.value(metadata i64 %1, metadata !5058, metadata !DIExpression()), !dbg !5112
  call void @llvm.dbg.value(metadata ptr %2, metadata !5059, metadata !DIExpression()), !dbg !5112
  call void @llvm.dbg.value(metadata i64 %3, metadata !5060, metadata !DIExpression()), !dbg !5112
  %12 = tail call ptr @__errno_location() #44, !dbg !5112
  br label %13, !dbg !5114

13:                                               ; preds = %31, %11
  %14 = phi ptr [ %2, %11 ], [ %32, %31 ]
  %15 = phi i64 [ %3, %11 ], [ %26, %31 ]
  %16 = phi i64 [ %1, %11 ], [ %25, %31 ]
  %17 = phi ptr [ %0, %11 ], [ %33, %31 ]
  call void @llvm.dbg.value(metadata ptr %17, metadata !5055, metadata !DIExpression()), !dbg !5112
  call void @llvm.dbg.value(metadata i64 %16, metadata !5058, metadata !DIExpression()), !dbg !5112
  call void @llvm.dbg.value(metadata i64 %15, metadata !5060, metadata !DIExpression()), !dbg !5112
  call void @llvm.dbg.value(metadata ptr %14, metadata !5059, metadata !DIExpression()), !dbg !5112
  store i32 0, ptr %12, align 4, !dbg !5115, !tbaa !1011
  %18 = tail call i32 @strcoll(ptr noundef %17, ptr noundef %14) #42, !dbg !5116
  call void @llvm.dbg.value(metadata i32 %18, metadata !5061, metadata !DIExpression()), !dbg !5112
  %19 = icmp eq i32 %18, 0, !dbg !5117
  br i1 %19, label %20, label %35, !dbg !5114

20:                                               ; preds = %13
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #42, !dbg !5118
  %22 = add i64 %21, 1, !dbg !5119
  call void @llvm.dbg.value(metadata i64 %22, metadata !5062, metadata !DIExpression()), !dbg !5120
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #42, !dbg !5121
  %24 = add i64 %23, 1, !dbg !5122
  call void @llvm.dbg.value(metadata i64 %24, metadata !5064, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata !DIArgList(ptr %17, i64 %22), metadata !5055, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5112
  call void @llvm.dbg.value(metadata !DIArgList(ptr %14, i64 %24), metadata !5059, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5112
  %25 = sub i64 %16, %22, !dbg !5123
  call void @llvm.dbg.value(metadata i64 %25, metadata !5058, metadata !DIExpression()), !dbg !5112
  %26 = sub i64 %15, %24, !dbg !5124
  call void @llvm.dbg.value(metadata i64 %26, metadata !5060, metadata !DIExpression()), !dbg !5112
  %27 = icmp eq i64 %25, 0, !dbg !5125
  br i1 %27, label %28, label %31, !dbg !5126

28:                                               ; preds = %20
  %29 = icmp ne i64 %26, 0, !dbg !5127
  %30 = sext i1 %29 to i32, !dbg !5127
  br label %35

31:                                               ; preds = %20
  %32 = getelementptr inbounds i8, ptr %14, i64 %24, !dbg !5128
  call void @llvm.dbg.value(metadata ptr %32, metadata !5059, metadata !DIExpression()), !dbg !5112
  %33 = getelementptr inbounds i8, ptr %17, i64 %22, !dbg !5129
  call void @llvm.dbg.value(metadata ptr %33, metadata !5055, metadata !DIExpression()), !dbg !5112
  %34 = icmp eq i64 %26, 0, !dbg !5130
  br i1 %34, label %35, label %13, !llvm.loop !5131

35:                                               ; preds = %31, %13, %28, %9
  %36 = phi i32 [ 0, %9 ], [ %30, %28 ], [ 1, %31 ], [ %18, %13 ], !dbg !5133
  ret i32 %36, !dbg !5134
}

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #40 !dbg !5135 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5137, metadata !DIExpression()), !dbg !5141
  call void @llvm.dbg.value(metadata i64 %1, metadata !5138, metadata !DIExpression()), !dbg !5141
  call void @llvm.dbg.value(metadata i64 %2, metadata !5139, metadata !DIExpression()), !dbg !5141
  %4 = icmp eq i64 %2, 0, !dbg !5142
  br i1 %4, label %8, label %5, !dbg !5142

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5142
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5142
  br i1 %7, label %13, label %8, !dbg !5142

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5140, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5141
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5140, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5141
  %9 = mul i64 %2, %1, !dbg !5142
  call void @llvm.dbg.value(metadata i64 %9, metadata !5140, metadata !DIExpression()), !dbg !5141
  call void @llvm.dbg.value(metadata ptr %0, metadata !5144, metadata !DIExpression()), !dbg !5148
  call void @llvm.dbg.value(metadata i64 %9, metadata !5147, metadata !DIExpression()), !dbg !5148
  %10 = icmp eq i64 %9, 0, !dbg !5150
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5150
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #47, !dbg !5151
  br label %15, !dbg !5152

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5140, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5141
  %14 = tail call ptr @__errno_location() #44, !dbg !5153
  store i32 12, ptr %14, align 4, !dbg !5155, !tbaa !1011
  br label %15, !dbg !5156

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5141
  ret ptr %16, !dbg !5157
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

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
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { nofree nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nofree nounwind memory(readwrite, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nounwind }
attributes #42 = { nounwind willreturn memory(read) }
attributes #43 = { noreturn nounwind }
attributes #44 = { nounwind willreturn memory(none) }
attributes #45 = { noreturn }
attributes #46 = { cold }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { nounwind allocsize(0) }
attributes #49 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!100, !477, !481, !496, !792, !834, !837, !839, !842, !844, !846, !848, !850, !854, !858, !551, !565, !616, !860, !862, !864, !866, !767, !872, !906, !908, !911, !913, !804, !821, !915, !917}
!llvm.ident = !{!920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920, !920}
!llvm.module.flags = !{!921, !922, !923, !924, !925, !926}

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
!100 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !101, retainedTypes: !158, globals: !168, splitDebugInlining: false, nameTableKind: None)
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
!495 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !496, file: !497, line: 66, type: !543, isLocal: false, isDefinition: true)
!496 = distinct !DICompileUnit(language: DW_LANG_C11, file: !497, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !498, globals: !499, splitDebugInlining: false, nameTableKind: None)
!497 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!498 = !{!160, !167}
!499 = !{!500, !502, !522, !524, !526, !528, !494, !530, !532, !534, !536, !541}
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !497, line: 272, type: !29, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(name: "old_file_name", scope: !504, file: !497, line: 304, type: !165, isLocal: true, isDefinition: true)
!504 = distinct !DISubprogram(name: "verror_at_line", scope: !497, file: !497, line: 298, type: !505, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !515)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !116, !116, !165, !103, !165, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !509)
!509 = !{!510, !512, !513, !514}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !508, file: !511, baseType: !103, size: 32)
!511 = !DIFile(filename: "lib/error.c", directory: "/src")
!512 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !508, file: !511, baseType: !103, size: 32, offset: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !508, file: !511, baseType: !160, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !508, file: !511, baseType: !160, size: 64, offset: 128)
!515 = !{!516, !517, !518, !519, !520, !521}
!516 = !DILocalVariable(name: "status", arg: 1, scope: !504, file: !497, line: 298, type: !116)
!517 = !DILocalVariable(name: "errnum", arg: 2, scope: !504, file: !497, line: 298, type: !116)
!518 = !DILocalVariable(name: "file_name", arg: 3, scope: !504, file: !497, line: 298, type: !165)
!519 = !DILocalVariable(name: "line_number", arg: 4, scope: !504, file: !497, line: 298, type: !103)
!520 = !DILocalVariable(name: "message", arg: 5, scope: !504, file: !497, line: 298, type: !165)
!521 = !DILocalVariable(name: "args", arg: 6, scope: !504, file: !497, line: 298, type: !507)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(name: "old_line_number", scope: !504, file: !497, line: 305, type: !103, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !497, line: 338, type: !293, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !497, line: 346, type: !328, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !497, line: 346, type: !303, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "error_message_count", scope: !496, file: !497, line: 69, type: !103, isLocal: false, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !496, file: !497, line: 295, type: !116, isLocal: false, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !497, line: 208, type: !323, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !497, line: 208, type: !538, isLocal: true, isDefinition: true)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 21)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !497, line: 214, type: !29, isLocal: true, isDefinition: true)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{null}
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !548, line: 35, type: !298, isLocal: true, isDefinition: true)
!548 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(name: "program_name", scope: !551, file: !552, line: 31, type: !165, isLocal: false, isDefinition: true)
!551 = distinct !DICompileUnit(language: DW_LANG_C11, file: !552, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !553, globals: !554, splitDebugInlining: false, nameTableKind: None)
!552 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!553 = !{!159}
!554 = !{!549, !555, !557}
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !552, line: 46, type: !328, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !552, line: 49, type: !293, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "utf07FF", scope: !561, file: !562, line: 46, type: !589, isLocal: true, isDefinition: true)
!561 = distinct !DISubprogram(name: "proper_name_lite", scope: !562, file: !562, line: 38, type: !563, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !567)
!562 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!563 = !DISubroutineType(types: !564)
!564 = !{!165, !165, !165}
!565 = distinct !DICompileUnit(language: DW_LANG_C11, file: !562, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !566, splitDebugInlining: false, nameTableKind: None)
!566 = !{!559}
!567 = !{!568, !569, !570, !571, !576}
!568 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !561, file: !562, line: 38, type: !165)
!569 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !561, file: !562, line: 38, type: !165)
!570 = !DILocalVariable(name: "translation", scope: !561, file: !562, line: 40, type: !165)
!571 = !DILocalVariable(name: "w", scope: !561, file: !562, line: 47, type: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !573, line: 37, baseType: !574)
!573 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !259, line: 57, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !259, line: 42, baseType: !103)
!576 = !DILocalVariable(name: "mbs", scope: !561, file: !562, line: 48, type: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !578, line: 6, baseType: !579)
!578 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !580, line: 21, baseType: !581)
!580 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !580, line: 13, size: 64, elements: !582)
!582 = !{!583, !584}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !581, file: !580, line: 15, baseType: !116, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !581, file: !580, line: 20, baseType: !585, size: 32, offset: 32)
!585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !581, file: !580, line: 16, size: 32, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !585, file: !580, line: 18, baseType: !103, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !585, file: !580, line: 19, baseType: !293, size: 32)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 16, elements: !304)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !592, line: 78, type: !328, isLocal: true, isDefinition: true)
!592 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !592, line: 79, type: !298, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !592, line: 80, type: !597, isLocal: true, isDefinition: true)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 13)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !592, line: 81, type: !597, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !592, line: 82, type: !183, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !592, line: 83, type: !303, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !592, line: 84, type: !328, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !592, line: 85, type: !323, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !592, line: 86, type: !323, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !592, line: 87, type: !328, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !616, file: !592, line: 76, type: !688, isLocal: false, isDefinition: true)
!616 = distinct !DICompileUnit(language: DW_LANG_C11, file: !592, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !617, retainedTypes: !623, globals: !624, splitDebugInlining: false, nameTableKind: None)
!617 = !{!135, !618, !120}
!618 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !136, line: 254, baseType: !103, size: 32, elements: !619)
!619 = !{!620, !621, !622}
!620 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!621 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!622 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!623 = !{!116, !161, !162}
!624 = !{!590, !593, !595, !600, !602, !604, !606, !608, !610, !612, !614, !625, !629, !639, !641, !646, !648, !650, !652, !654, !677, !684, !686}
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !616, file: !592, line: 92, type: !627, isLocal: false, isDefinition: true)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 320, elements: !91)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !616, file: !592, line: 1040, type: !631, isLocal: false, isDefinition: true)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !592, line: 56, size: 448, elements: !632)
!632 = !{!633, !634, !635, !637, !638}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !631, file: !592, line: 59, baseType: !135, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !592, line: 62, baseType: !116, size: 32, offset: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !631, file: !592, line: 66, baseType: !636, size: 256, offset: 64)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !329)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !631, file: !592, line: 69, baseType: !165, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !631, file: !592, line: 72, baseType: !165, size: 64, offset: 384)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !616, file: !592, line: 107, type: !631, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(name: "slot0", scope: !616, file: !592, line: 831, type: !643, isLocal: true, isDefinition: true)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 256)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !592, line: 321, type: !303, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !592, line: 357, type: !303, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !592, line: 358, type: !303, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !592, line: 199, type: !323, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(name: "quote", scope: !656, file: !592, line: 228, type: !675, isLocal: true, isDefinition: true)
!656 = distinct !DISubprogram(name: "gettext_quote", scope: !592, file: !592, line: 197, type: !657, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{!165, !165, !135}
!659 = !{!660, !661, !662, !663, !664}
!660 = !DILocalVariable(name: "msgid", arg: 1, scope: !656, file: !592, line: 197, type: !165)
!661 = !DILocalVariable(name: "s", arg: 2, scope: !656, file: !592, line: 197, type: !135)
!662 = !DILocalVariable(name: "translation", scope: !656, file: !592, line: 199, type: !165)
!663 = !DILocalVariable(name: "w", scope: !656, file: !592, line: 229, type: !572)
!664 = !DILocalVariable(name: "mbs", scope: !656, file: !592, line: 230, type: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !578, line: 6, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !580, line: 21, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !580, line: 13, size: 64, elements: !668)
!668 = !{!669, !670}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !667, file: !580, line: 15, baseType: !116, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !667, file: !580, line: 20, baseType: !671, size: 32, offset: 32)
!671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !667, file: !580, line: 16, size: 32, elements: !672)
!672 = !{!673, !674}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !671, file: !580, line: 18, baseType: !103, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !671, file: !580, line: 19, baseType: !293, size: 32)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 64, elements: !676)
!676 = !{!305, !295}
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(name: "slotvec", scope: !616, file: !592, line: 834, type: !679, isLocal: true, isDefinition: true)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !592, line: 823, size: 128, elements: !681)
!681 = !{!682, !683}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !680, file: !592, line: 825, baseType: !162, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !680, file: !592, line: 826, baseType: !159, size: 64, offset: 64)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(name: "nslots", scope: !616, file: !592, line: 832, type: !116, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(name: "slotvec0", scope: !616, file: !592, line: 833, type: !680, isLocal: true, isDefinition: true)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 704, elements: !690)
!689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!690 = !{!691}
!691 = !DISubrange(count: 11)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !694, line: 67, type: !396, isLocal: true, isDefinition: true)
!694 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !694, line: 69, type: !323, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !694, line: 83, type: !323, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !694, line: 83, type: !293, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !694, line: 85, type: !303, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !694, line: 88, type: !705, isLocal: true, isDefinition: true)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !706)
!706 = !{!707}
!707 = !DISubrange(count: 171)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !694, line: 88, type: !710, isLocal: true, isDefinition: true)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !711)
!711 = !{!712}
!712 = !DISubrange(count: 34)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !694, line: 105, type: !188, isLocal: true, isDefinition: true)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !694, line: 109, type: !717, isLocal: true, isDefinition: true)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 23)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !694, line: 113, type: !722, isLocal: true, isDefinition: true)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 28)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !694, line: 120, type: !727, isLocal: true, isDefinition: true)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !728)
!728 = !{!729}
!729 = !DISubrange(count: 32)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !694, line: 127, type: !732, isLocal: true, isDefinition: true)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 36)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !694, line: 134, type: !347, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !694, line: 142, type: !739, isLocal: true, isDefinition: true)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 44)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !694, line: 150, type: !744, isLocal: true, isDefinition: true)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 48)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !694, line: 159, type: !14, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !694, line: 170, type: !19, isLocal: true, isDefinition: true)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !694, line: 248, type: !183, isLocal: true, isDefinition: true)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !694, line: 248, type: !372, isLocal: true, isDefinition: true)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !694, line: 254, type: !183, isLocal: true, isDefinition: true)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !694, line: 254, type: !178, isLocal: true, isDefinition: true)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !694, line: 254, type: !347, isLocal: true, isDefinition: true)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !694, line: 259, type: !3, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !694, line: 259, type: !451, isLocal: true, isDefinition: true)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !767, file: !768, line: 26, type: !770, isLocal: false, isDefinition: true)
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !769, splitDebugInlining: false, nameTableKind: None)
!768 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!769 = !{!765}
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 376, elements: !771)
!771 = !{!772}
!772 = !DISubrange(count: 47)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !775, line: 34, type: !312, isLocal: true, isDefinition: true)
!775 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(scope: null, file: !775, line: 34, type: !323, isLocal: true, isDefinition: true)
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(scope: null, file: !775, line: 34, type: !200, isLocal: true, isDefinition: true)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !782, line: 39, type: !323, isLocal: true, isDefinition: true)
!782 = !DIFile(filename: "lib/xmemcoll.c", directory: "/src", checksumkind: CSK_MD5, checksum: "77ad181911e918137a808414fb759bea")
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(scope: null, file: !782, line: 39, type: !195, isLocal: true, isDefinition: true)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(scope: null, file: !782, line: 40, type: !787, isLocal: true, isDefinition: true)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !788)
!788 = !{!789}
!789 = !DISubrange(count: 43)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(name: "exit_failure", scope: !792, file: !793, line: 24, type: !795, isLocal: false, isDefinition: true)
!792 = distinct !DICompileUnit(language: DW_LANG_C11, file: !793, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !794, splitDebugInlining: false, nameTableKind: None)
!793 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!794 = !{!790}
!795 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !116)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(scope: null, file: !782, line: 41, type: !173, isLocal: true, isDefinition: true)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !800, file: !801, line: 506, type: !116, isLocal: true, isDefinition: true)
!800 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !801, file: !801, line: 485, type: !802, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !806)
!801 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!802 = !DISubroutineType(types: !803)
!803 = !{!116, !116, !116}
!804 = distinct !DICompileUnit(language: DW_LANG_C11, file: !801, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !805, splitDebugInlining: false, nameTableKind: None)
!805 = !{!798}
!806 = !{!807, !808, !809, !810, !813}
!807 = !DILocalVariable(name: "fd", arg: 1, scope: !800, file: !801, line: 485, type: !116)
!808 = !DILocalVariable(name: "target", arg: 2, scope: !800, file: !801, line: 485, type: !116)
!809 = !DILocalVariable(name: "result", scope: !800, file: !801, line: 487, type: !116)
!810 = !DILocalVariable(name: "flags", scope: !811, file: !801, line: 530, type: !116)
!811 = distinct !DILexicalBlock(scope: !812, file: !801, line: 529, column: 5)
!812 = distinct !DILexicalBlock(scope: !800, file: !801, line: 528, column: 7)
!813 = !DILocalVariable(name: "saved_errno", scope: !814, file: !801, line: 533, type: !116)
!814 = distinct !DILexicalBlock(scope: !815, file: !801, line: 532, column: 9)
!815 = distinct !DILexicalBlock(scope: !811, file: !801, line: 531, column: 11)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !818, line: 108, type: !85, isLocal: true, isDefinition: true)
!818 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(name: "internal_state", scope: !821, file: !818, line: 97, type: !824, isLocal: true, isDefinition: true)
!821 = distinct !DICompileUnit(language: DW_LANG_C11, file: !818, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !822, globals: !823, splitDebugInlining: false, nameTableKind: None)
!822 = !{!160, !162, !167}
!823 = !{!816, !819}
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !578, line: 6, baseType: !825)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !580, line: 21, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !580, line: 13, size: 64, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !826, file: !580, line: 15, baseType: !116, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !826, file: !580, line: 20, baseType: !830, size: 32, offset: 32)
!830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !826, file: !580, line: 16, size: 32, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !830, file: !580, line: 18, baseType: !103, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !830, file: !580, line: 19, baseType: !293, size: 32)
!834 = distinct !DICompileUnit(language: DW_LANG_C11, file: !835, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !836, splitDebugInlining: false, nameTableKind: None)
!835 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!836 = !{!149}
!837 = distinct !DICompileUnit(language: DW_LANG_C11, file: !838, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!838 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!839 = distinct !DICompileUnit(language: DW_LANG_C11, file: !840, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !841, splitDebugInlining: false, nameTableKind: None)
!840 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!841 = !{!160}
!842 = distinct !DICompileUnit(language: DW_LANG_C11, file: !843, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!843 = !DIFile(filename: "lib/fopen-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc91097c7b0e7b372b0b37f4c608799b")
!844 = distinct !DICompileUnit(language: DW_LANG_C11, file: !845, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!845 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!846 = distinct !DICompileUnit(language: DW_LANG_C11, file: !847, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !841, splitDebugInlining: false, nameTableKind: None)
!847 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!848 = distinct !DICompileUnit(language: DW_LANG_C11, file: !849, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!849 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!850 = distinct !DICompileUnit(language: DW_LANG_C11, file: !548, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !851, splitDebugInlining: false, nameTableKind: None)
!851 = !{!852, !546}
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(scope: null, file: !548, line: 35, type: !303, isLocal: true, isDefinition: true)
!854 = distinct !DICompileUnit(language: DW_LANG_C11, file: !855, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !856, splitDebugInlining: false, nameTableKind: None)
!855 = !DIFile(filename: "lib/linebuffer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d85d9b8947aefddab7f1bb42f1d43333")
!856 = !{!857}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!858 = distinct !DICompileUnit(language: DW_LANG_C11, file: !859, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!859 = !DIFile(filename: "lib/memcmp2.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e6bcc41ab98d01454beab912275e871e")
!860 = distinct !DICompileUnit(language: DW_LANG_C11, file: !861, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!861 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!862 = distinct !DICompileUnit(language: DW_LANG_C11, file: !863, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !841, splitDebugInlining: false, nameTableKind: None)
!863 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!864 = distinct !DICompileUnit(language: DW_LANG_C11, file: !865, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!865 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!866 = distinct !DICompileUnit(language: DW_LANG_C11, file: !694, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !867, retainedTypes: !841, globals: !871, splitDebugInlining: false, nameTableKind: None)
!867 = !{!868}
!868 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !694, line: 40, baseType: !103, size: 32, elements: !869)
!869 = !{!870}
!870 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!871 = !{!692, !695, !697, !699, !701, !703, !708, !713, !715, !720, !725, !730, !735, !737, !742, !747, !749, !751, !753, !755, !757, !759, !761, !763}
!872 = distinct !DICompileUnit(language: DW_LANG_C11, file: !873, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !874, retainedTypes: !905, splitDebugInlining: false, nameTableKind: None)
!873 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!874 = !{!875, !887}
!875 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !876, file: !873, line: 188, baseType: !103, size: 32, elements: !885)
!876 = distinct !DISubprogram(name: "x2nrealloc", scope: !873, file: !873, line: 176, type: !877, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !880)
!877 = !DISubroutineType(types: !878)
!878 = !{!160, !160, !879, !162}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!880 = !{!881, !882, !883, !884}
!881 = !DILocalVariable(name: "p", arg: 1, scope: !876, file: !873, line: 176, type: !160)
!882 = !DILocalVariable(name: "pn", arg: 2, scope: !876, file: !873, line: 176, type: !879)
!883 = !DILocalVariable(name: "s", arg: 3, scope: !876, file: !873, line: 176, type: !162)
!884 = !DILocalVariable(name: "n", scope: !876, file: !873, line: 178, type: !162)
!885 = !{!886}
!886 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!887 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !888, file: !873, line: 228, baseType: !103, size: 32, elements: !885)
!888 = distinct !DISubprogram(name: "xpalloc", scope: !873, file: !873, line: 223, type: !889, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !895)
!889 = !DISubroutineType(types: !890)
!890 = !{!160, !160, !891, !892, !894, !892}
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !893, line: 130, baseType: !894)
!893 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !163, line: 35, baseType: !260)
!895 = !{!896, !897, !898, !899, !900, !901, !902, !903, !904}
!896 = !DILocalVariable(name: "pa", arg: 1, scope: !888, file: !873, line: 223, type: !160)
!897 = !DILocalVariable(name: "pn", arg: 2, scope: !888, file: !873, line: 223, type: !891)
!898 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !888, file: !873, line: 223, type: !892)
!899 = !DILocalVariable(name: "n_max", arg: 4, scope: !888, file: !873, line: 223, type: !894)
!900 = !DILocalVariable(name: "s", arg: 5, scope: !888, file: !873, line: 223, type: !892)
!901 = !DILocalVariable(name: "n0", scope: !888, file: !873, line: 230, type: !892)
!902 = !DILocalVariable(name: "n", scope: !888, file: !873, line: 237, type: !892)
!903 = !DILocalVariable(name: "nbytes", scope: !888, file: !873, line: 248, type: !892)
!904 = !DILocalVariable(name: "adjusted_nbytes", scope: !888, file: !873, line: 252, type: !892)
!905 = !{!159, !160, !205, !260, !164}
!906 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !907, splitDebugInlining: false, nameTableKind: None)
!907 = !{!773, !776, !778}
!908 = distinct !DICompileUnit(language: DW_LANG_C11, file: !782, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !909, globals: !910, splitDebugInlining: false, nameTableKind: None)
!909 = !{!135}
!910 = !{!780, !783, !785, !796}
!911 = distinct !DICompileUnit(language: DW_LANG_C11, file: !912, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !841, splitDebugInlining: false, nameTableKind: None)
!912 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!913 = distinct !DICompileUnit(language: DW_LANG_C11, file: !914, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!914 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!915 = distinct !DICompileUnit(language: DW_LANG_C11, file: !916, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!916 = !DIFile(filename: "lib/memcoll.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f316fa5066b9311c53750cfc7e26d495")
!917 = distinct !DICompileUnit(language: DW_LANG_C11, file: !918, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !919, splitDebugInlining: false, nameTableKind: None)
!918 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!919 = !{!205, !164, !160}
!920 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!921 = !{i32 7, !"Dwarf Version", i32 5}
!922 = !{i32 2, !"Debug Info Version", i32 3}
!923 = !{i32 1, !"wchar_size", i32 4}
!924 = !{i32 8, !"PIC Level", i32 2}
!925 = !{i32 7, !"PIE Level", i32 2}
!926 = !{i32 7, !"uwtable", i32 2}
!927 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 100, type: !928, scopeLine: 101, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !930)
!928 = !DISubroutineType(types: !929)
!929 = !{null, !116}
!930 = !{!931}
!931 = !DILocalVariable(name: "status", arg: 1, scope: !927, file: !2, line: 100, type: !116)
!932 = !DILocation(line: 0, scope: !927)
!933 = !DILocation(line: 102, column: 14, scope: !934)
!934 = distinct !DILexicalBlock(scope: !927, file: !2, line: 102, column: 7)
!935 = !DILocation(line: 102, column: 7, scope: !927)
!936 = !DILocation(line: 103, column: 5, scope: !937)
!937 = distinct !DILexicalBlock(scope: !934, file: !2, line: 103, column: 5)
!938 = !{!939, !939, i64 0}
!939 = !{!"any pointer", !940, i64 0}
!940 = !{!"omnipotent char", !941, i64 0}
!941 = !{!"Simple C/C++ TBAA"}
!942 = !DILocation(line: 106, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !934, file: !2, line: 105, column: 5)
!944 = !DILocation(line: 110, column: 7, scope: !943)
!945 = !DILocation(line: 113, column: 7, scope: !943)
!946 = !DILocation(line: 117, column: 7, scope: !943)
!947 = !DILocation(line: 123, column: 7, scope: !943)
!948 = !DILocation(line: 126, column: 7, scope: !943)
!949 = !DILocation(line: 129, column: 7, scope: !943)
!950 = !DILocation(line: 132, column: 7, scope: !943)
!951 = !DILocation(line: 137, column: 7, scope: !943)
!952 = !DILocation(line: 141, column: 7, scope: !943)
!953 = !DILocation(line: 145, column: 7, scope: !943)
!954 = !DILocation(line: 149, column: 7, scope: !943)
!955 = !DILocation(line: 153, column: 7, scope: !943)
!956 = !DILocation(line: 154, column: 7, scope: !943)
!957 = !DILocation(line: 155, column: 7, scope: !943)
!958 = !DILocation(line: 159, column: 7, scope: !943)
!959 = !DILocalVariable(name: "program", arg: 1, scope: !960, file: !115, line: 836, type: !165)
!960 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !115, file: !115, line: 836, type: !961, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !963)
!961 = !DISubroutineType(types: !962)
!962 = !{null, !165}
!963 = !{!959, !964, !971, !972, !974, !975}
!964 = !DILocalVariable(name: "infomap", scope: !960, file: !115, line: 838, type: !965)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !966, size: 896, elements: !324)
!966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !967)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !960, file: !115, line: 838, size: 128, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !967, file: !115, line: 838, baseType: !165, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !967, file: !115, line: 838, baseType: !165, size: 64, offset: 64)
!971 = !DILocalVariable(name: "node", scope: !960, file: !115, line: 848, type: !165)
!972 = !DILocalVariable(name: "map_prog", scope: !960, file: !115, line: 849, type: !973)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!974 = !DILocalVariable(name: "lc_messages", scope: !960, file: !115, line: 861, type: !165)
!975 = !DILocalVariable(name: "url_program", scope: !960, file: !115, line: 874, type: !165)
!976 = !DILocation(line: 0, scope: !960, inlinedAt: !977)
!977 = distinct !DILocation(line: 166, column: 7, scope: !943)
!978 = !DILocation(line: 857, column: 3, scope: !960, inlinedAt: !977)
!979 = !DILocation(line: 861, column: 29, scope: !960, inlinedAt: !977)
!980 = !DILocation(line: 862, column: 7, scope: !981, inlinedAt: !977)
!981 = distinct !DILexicalBlock(scope: !960, file: !115, line: 862, column: 7)
!982 = !DILocation(line: 862, column: 19, scope: !981, inlinedAt: !977)
!983 = !DILocation(line: 862, column: 22, scope: !981, inlinedAt: !977)
!984 = !DILocation(line: 862, column: 7, scope: !960, inlinedAt: !977)
!985 = !DILocation(line: 868, column: 7, scope: !986, inlinedAt: !977)
!986 = distinct !DILexicalBlock(scope: !981, file: !115, line: 863, column: 5)
!987 = !DILocation(line: 870, column: 5, scope: !986, inlinedAt: !977)
!988 = !DILocation(line: 875, column: 3, scope: !960, inlinedAt: !977)
!989 = !DILocation(line: 877, column: 3, scope: !960, inlinedAt: !977)
!990 = !DILocation(line: 168, column: 3, scope: !927)
!991 = !DISubprogram(name: "dcgettext", scope: !992, file: !992, line: 51, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!992 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!993 = !DISubroutineType(types: !994)
!994 = !{!159, !165, !165, !116}
!995 = !{}
!996 = !DISubprogram(name: "__fprintf_chk", scope: !997, file: !997, line: 93, type: !998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!997 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!998 = !DISubroutineType(types: !999)
!999 = !{!116, !1000, !116, !1001, null}
!1000 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !232)
!1001 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !165)
!1002 = !DISubprogram(name: "__printf_chk", scope: !997, file: !997, line: 95, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!116, !116, !1001, null}
!1005 = !DISubprogram(name: "fputs_unlocked", scope: !1006, file: !1006, line: 691, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1006 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!116, !1001, !1000}
!1009 = !DILocation(line: 0, scope: !210)
!1010 = !DILocation(line: 581, column: 7, scope: !218)
!1011 = !{!1012, !1012, i64 0}
!1012 = !{!"int", !940, i64 0}
!1013 = !DILocation(line: 581, column: 19, scope: !218)
!1014 = !DILocation(line: 581, column: 7, scope: !210)
!1015 = !DILocation(line: 585, column: 26, scope: !217)
!1016 = !DILocation(line: 0, scope: !217)
!1017 = !DILocation(line: 586, column: 23, scope: !217)
!1018 = !DILocation(line: 586, column: 28, scope: !217)
!1019 = !DILocation(line: 586, column: 32, scope: !217)
!1020 = !{!940, !940, i64 0}
!1021 = !DILocation(line: 586, column: 38, scope: !217)
!1022 = !DILocalVariable(name: "__s1", arg: 1, scope: !1023, file: !1024, line: 1359, type: !165)
!1023 = distinct !DISubprogram(name: "streq", scope: !1024, file: !1024, line: 1359, type: !1025, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1027)
!1024 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!205, !165, !165}
!1027 = !{!1022, !1028}
!1028 = !DILocalVariable(name: "__s2", arg: 2, scope: !1023, file: !1024, line: 1359, type: !165)
!1029 = !DILocation(line: 0, scope: !1023, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 586, column: 41, scope: !217)
!1031 = !DILocation(line: 1361, column: 11, scope: !1023, inlinedAt: !1030)
!1032 = !DILocation(line: 1361, column: 10, scope: !1023, inlinedAt: !1030)
!1033 = !DILocation(line: 586, column: 19, scope: !217)
!1034 = !DILocation(line: 587, column: 5, scope: !217)
!1035 = !DILocation(line: 588, column: 7, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !210, file: !115, line: 588, column: 7)
!1037 = !DILocation(line: 588, column: 7, scope: !210)
!1038 = !DILocation(line: 590, column: 7, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1036, file: !115, line: 589, column: 5)
!1040 = !DILocation(line: 591, column: 7, scope: !1039)
!1041 = !DILocation(line: 595, column: 37, scope: !210)
!1042 = !DILocation(line: 595, column: 35, scope: !210)
!1043 = !DILocation(line: 596, column: 29, scope: !210)
!1044 = !DILocation(line: 597, column: 8, scope: !225)
!1045 = !DILocation(line: 597, column: 7, scope: !210)
!1046 = !DILocation(line: 604, column: 24, scope: !224)
!1047 = !DILocation(line: 604, column: 12, scope: !225)
!1048 = !DILocation(line: 0, scope: !223)
!1049 = !DILocation(line: 610, column: 16, scope: !223)
!1050 = !DILocation(line: 610, column: 7, scope: !223)
!1051 = !DILocation(line: 611, column: 21, scope: !223)
!1052 = !{!1053, !1053, i64 0}
!1053 = !{!"short", !940, i64 0}
!1054 = !DILocation(line: 611, column: 19, scope: !223)
!1055 = !DILocation(line: 611, column: 16, scope: !223)
!1056 = !DILocation(line: 610, column: 30, scope: !223)
!1057 = distinct !{!1057, !1050, !1051, !1058}
!1058 = !{!"llvm.loop.mustprogress"}
!1059 = !DILocation(line: 612, column: 18, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !223, file: !115, line: 612, column: 11)
!1061 = !DILocation(line: 612, column: 11, scope: !223)
!1062 = !DILocation(line: 618, column: 5, scope: !223)
!1063 = !DILocation(line: 620, column: 23, scope: !210)
!1064 = !DILocation(line: 625, column: 39, scope: !210)
!1065 = !DILocation(line: 626, column: 3, scope: !210)
!1066 = !DILocation(line: 626, column: 10, scope: !210)
!1067 = !DILocation(line: 626, column: 21, scope: !210)
!1068 = !DILocation(line: 628, column: 44, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !115, line: 628, column: 11)
!1070 = distinct !DILexicalBlock(scope: !210, file: !115, line: 627, column: 5)
!1071 = !DILocation(line: 628, column: 32, scope: !1069)
!1072 = !DILocation(line: 628, column: 49, scope: !1069)
!1073 = !DILocation(line: 628, column: 11, scope: !1070)
!1074 = !DILocation(line: 630, column: 11, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !115, line: 630, column: 11)
!1076 = !DILocation(line: 630, column: 11, scope: !1070)
!1077 = !DILocation(line: 632, column: 26, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !115, line: 632, column: 15)
!1079 = distinct !DILexicalBlock(scope: !1075, file: !115, line: 631, column: 9)
!1080 = !DILocation(line: 632, column: 34, scope: !1078)
!1081 = !DILocation(line: 632, column: 37, scope: !1078)
!1082 = !DILocation(line: 632, column: 15, scope: !1079)
!1083 = !DILocation(line: 636, column: 16, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !115, line: 636, column: 15)
!1085 = !DILocation(line: 636, column: 29, scope: !1084)
!1086 = !DILocation(line: 640, column: 16, scope: !1070)
!1087 = distinct !{!1087, !1065, !1088, !1058}
!1088 = !DILocation(line: 641, column: 5, scope: !210)
!1089 = !DILocation(line: 644, column: 3, scope: !210)
!1090 = !DILocation(line: 0, scope: !1023, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 648, column: 31, scope: !210)
!1092 = !DILocation(line: 0, scope: !1023, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 649, column: 31, scope: !210)
!1094 = !DILocation(line: 0, scope: !1023, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 650, column: 31, scope: !210)
!1096 = !DILocation(line: 0, scope: !1023, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 651, column: 31, scope: !210)
!1098 = !DILocation(line: 0, scope: !1023, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 652, column: 31, scope: !210)
!1100 = !DILocation(line: 0, scope: !1023, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 653, column: 31, scope: !210)
!1102 = !DILocation(line: 0, scope: !1023, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 654, column: 31, scope: !210)
!1104 = !DILocation(line: 0, scope: !1023, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 655, column: 31, scope: !210)
!1106 = !DILocation(line: 0, scope: !1023, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 656, column: 31, scope: !210)
!1108 = !DILocation(line: 0, scope: !1023, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 657, column: 31, scope: !210)
!1110 = !DILocation(line: 663, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !210, file: !115, line: 663, column: 7)
!1112 = !DILocation(line: 664, column: 7, scope: !1111)
!1113 = !DILocation(line: 664, column: 10, scope: !1111)
!1114 = !DILocation(line: 663, column: 7, scope: !210)
!1115 = !DILocation(line: 669, column: 7, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !115, line: 665, column: 5)
!1117 = !DILocation(line: 671, column: 5, scope: !1116)
!1118 = !DILocation(line: 676, column: 7, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1111, file: !115, line: 673, column: 5)
!1120 = !DILocation(line: 679, column: 3, scope: !210)
!1121 = !DILocation(line: 683, column: 3, scope: !210)
!1122 = !DILocation(line: 686, column: 3, scope: !210)
!1123 = !DILocation(line: 688, column: 3, scope: !210)
!1124 = !DILocation(line: 691, column: 3, scope: !210)
!1125 = !DILocation(line: 695, column: 3, scope: !210)
!1126 = !DILocation(line: 696, column: 1, scope: !210)
!1127 = !DISubprogram(name: "setlocale", scope: !1128, file: !1128, line: 122, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1128 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!159, !116, !165}
!1131 = !DISubprogram(name: "strncmp", scope: !1132, file: !1132, line: 159, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1132 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!116, !165, !165, !162}
!1135 = !DISubprogram(name: "exit", scope: !1136, file: !1136, line: 624, type: !928, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1136 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1137 = !DISubprogram(name: "getenv", scope: !1136, file: !1136, line: 641, type: !1138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!159, !165}
!1140 = !DISubprogram(name: "strcmp", scope: !1132, file: !1132, line: 156, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!116, !165, !165}
!1143 = !DISubprogram(name: "strspn", scope: !1132, file: !1132, line: 297, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!164, !165, !165}
!1146 = !DISubprogram(name: "strchr", scope: !1132, file: !1132, line: 246, type: !1147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!159, !165, !116}
!1149 = !DISubprogram(name: "__ctype_b_loc", scope: !121, file: !121, line: 79, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!1152}
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!1155 = !DISubprogram(name: "strcspn", scope: !1132, file: !1132, line: 293, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1156 = !DISubprogram(name: "fwrite_unlocked", scope: !1006, file: !1006, line: 704, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!162, !1159, !162, !162, !1000}
!1159 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1160)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1162 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 424, type: !1163, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1166)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!116, !116, !1165}
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1166 = !{!1167, !1168, !1169}
!1167 = !DILocalVariable(name: "argc", arg: 1, scope: !1162, file: !2, line: 424, type: !116)
!1168 = !DILocalVariable(name: "argv", arg: 2, scope: !1162, file: !2, line: 424, type: !1165)
!1169 = !DILocalVariable(name: "c", scope: !1162, file: !2, line: 426, type: !116)
!1170 = !DILocation(line: 0, scope: !1162)
!1171 = !DILocation(line: 429, column: 21, scope: !1162)
!1172 = !DILocation(line: 429, column: 3, scope: !1162)
!1173 = !DILocation(line: 430, column: 3, scope: !1162)
!1174 = !DILocation(line: 431, column: 3, scope: !1162)
!1175 = !DILocation(line: 432, column: 3, scope: !1162)
!1176 = !DILocation(line: 433, column: 21, scope: !1162)
!1177 = !DILocation(line: 433, column: 19, scope: !1162)
!1178 = !{!1179, !1179, i64 0}
!1179 = !{!"_Bool", !940, i64 0}
!1180 = !DILocation(line: 435, column: 3, scope: !1162)
!1181 = !DILocation(line: 437, column: 3, scope: !1162)
!1182 = !DILocation(line: 437, column: 15, scope: !1162)
!1183 = !DILocation(line: 441, column: 21, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 439, column: 7)
!1185 = !DILocation(line: 442, column: 9, scope: !1184)
!1186 = !DILocation(line: 445, column: 21, scope: !1184)
!1187 = !DILocation(line: 446, column: 9, scope: !1184)
!1188 = !DILocation(line: 449, column: 14, scope: !1184)
!1189 = !DILocation(line: 450, column: 9, scope: !1184)
!1190 = !DILocation(line: 453, column: 15, scope: !1184)
!1191 = !DILocation(line: 454, column: 9, scope: !1184)
!1192 = !DILocation(line: 457, column: 27, scope: !1184)
!1193 = !DILocation(line: 458, column: 9, scope: !1184)
!1194 = !DILocation(line: 461, column: 27, scope: !1184)
!1195 = !DILocation(line: 462, column: 9, scope: !1184)
!1196 = !DILocation(line: 465, column: 13, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1184, file: !2, line: 465, column: 13)
!1198 = !{!1199, !1199, i64 0}
!1199 = !{!"long", !940, i64 0}
!1200 = !DILocation(line: 465, column: 25, scope: !1197)
!1201 = !DILocation(line: 467, column: 19, scope: !1184)
!1202 = !DILocation(line: 465, column: 36, scope: !1197)
!1203 = !DILocation(line: 465, column: 45, scope: !1197)
!1204 = !DILocation(line: 0, scope: !1023, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 465, column: 29, scope: !1197)
!1206 = !DILocation(line: 1361, column: 11, scope: !1023, inlinedAt: !1205)
!1207 = !DILocation(line: 1361, column: 10, scope: !1023, inlinedAt: !1205)
!1208 = !DILocation(line: 465, column: 13, scope: !1184)
!1209 = !DILocation(line: 466, column: 11, scope: !1197)
!1210 = !DILocation(line: 467, column: 17, scope: !1184)
!1211 = !DILocation(line: 468, column: 23, scope: !1184)
!1212 = !DILocation(line: 468, column: 33, scope: !1184)
!1213 = !DILocation(line: 468, column: 21, scope: !1184)
!1214 = !DILocation(line: 469, column: 9, scope: !1184)
!1215 = !DILocation(line: 472, column: 22, scope: !1184)
!1216 = !DILocation(line: 473, column: 9, scope: !1184)
!1217 = distinct !{!1217, !1181, !1218, !1058}
!1218 = !DILocation(line: 481, column: 7, scope: !1162)
!1219 = !DILocation(line: 475, column: 7, scope: !1184)
!1220 = !DILocation(line: 477, column: 7, scope: !1184)
!1221 = !DILocation(line: 480, column: 9, scope: !1184)
!1222 = !DILocation(line: 483, column: 9, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 483, column: 7)
!1224 = !DILocation(line: 483, column: 7, scope: !1162)
!1225 = !DILocation(line: 484, column: 17, scope: !1223)
!1226 = !DILocation(line: 484, column: 5, scope: !1223)
!1227 = !DILocation(line: 486, column: 14, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 486, column: 7)
!1229 = !DILocation(line: 486, column: 12, scope: !1228)
!1230 = !DILocation(line: 486, column: 21, scope: !1228)
!1231 = !DILocation(line: 486, column: 7, scope: !1162)
!1232 = !DILocation(line: 488, column: 16, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !2, line: 488, column: 11)
!1234 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 487, column: 5)
!1235 = !DILocation(line: 488, column: 11, scope: !1234)
!1236 = !DILocation(line: 489, column: 9, scope: !1233)
!1237 = !DILocation(line: 491, column: 9, scope: !1233)
!1238 = !DILocation(line: 492, column: 7, scope: !1234)
!1239 = !DILocation(line: 495, column: 9, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 495, column: 7)
!1241 = !DILocation(line: 495, column: 7, scope: !1162)
!1242 = !DILocation(line: 497, column: 7, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 496, column: 5)
!1244 = !DILocation(line: 498, column: 7, scope: !1243)
!1245 = !DILocation(line: 501, column: 23, scope: !1162)
!1246 = !DILocation(line: 501, column: 3, scope: !1162)
!1247 = !DISubprogram(name: "bindtextdomain", scope: !992, file: !992, line: 86, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!159, !165, !165}
!1250 = !DISubprogram(name: "textdomain", scope: !992, file: !992, line: 82, type: !1138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1251 = !DISubprogram(name: "atexit", scope: !1136, file: !1136, line: 602, type: !1252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!116, !543}
!1254 = !DISubprogram(name: "getopt_long", scope: !418, file: !418, line: 66, type: !1255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!116, !116, !1257, !165, !1259, !423}
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!1260 = !DISubprogram(name: "strlen", scope: !1132, file: !1132, line: 407, type: !1261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!164, !165}
!1263 = distinct !DISubprogram(name: "compare_files", scope: !2, file: !2, line: 261, type: !1264, scopeLine: 262, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1266)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{null, !1165}
!1266 = !{!1267, !1268, !1276, !1279, !1281, !1284, !1286, !1291, !1293, !1297, !1299, !1300, !1306, !1308}
!1267 = !DILocalVariable(name: "infiles", arg: 1, scope: !1263, file: !2, line: 261, type: !1165)
!1268 = !DILocalVariable(name: "lba", scope: !1263, file: !2, line: 264, type: !1269)
!1269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1270, size: 1536, elements: !676)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !1271, line: 32, size: 192, elements: !1272)
!1271 = !DIFile(filename: "./lib/linebuffer.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a0b4e97fdade8fc6fdf94c5a34c83419")
!1272 = !{!1273, !1274, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1270, file: !1271, line: 34, baseType: !892, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1270, file: !1271, line: 35, baseType: !892, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1270, file: !1271, line: 36, baseType: !159, size: 64, offset: 128)
!1276 = !DILocalVariable(name: "thisline", scope: !1263, file: !2, line: 268, type: !1277)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1278, size: 128, elements: !304)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1279 = !DILocalVariable(name: "all_line", scope: !1263, file: !2, line: 273, type: !1280)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1278, size: 512, elements: !676)
!1281 = !DILocalVariable(name: "alt", scope: !1263, file: !2, line: 276, type: !1282)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 192, elements: !1283)
!1283 = !{!305, !314}
!1284 = !DILocalVariable(name: "streams", scope: !1263, file: !2, line: 279, type: !1285)
!1285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 128, elements: !304)
!1286 = !DILocalVariable(name: "total", scope: !1263, file: !2, line: 282, type: !1287)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1288, size: 192, elements: !313)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1289, line: 102, baseType: !1290)
!1289 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !259, line: 73, baseType: !164)
!1291 = !DILocalVariable(name: "i", scope: !1292, file: !2, line: 285, type: !116)
!1292 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 285, column: 3)
!1293 = !DILocalVariable(name: "j", scope: !1294, file: !2, line: 287, type: !116)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 287, column: 7)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 286, column: 5)
!1296 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 285, column: 3)
!1297 = !DILocalVariable(name: "order", scope: !1298, file: !2, line: 309, type: !116)
!1298 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 308, column: 5)
!1299 = !DILocalVariable(name: "fill_up", scope: !1298, file: !2, line: 310, type: !465)
!1300 = !DILocalVariable(name: "len", scope: !1301, file: !2, line: 325, type: !162)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 324, column: 13)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 320, column: 15)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 319, column: 9)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 316, column: 16)
!1305 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 314, column: 11)
!1306 = !DILocalVariable(name: "i", scope: !1307, file: !2, line: 363, type: !116)
!1307 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 363, column: 7)
!1308 = !DILocalVariable(name: "i", scope: !1309, file: !2, line: 391, type: !116)
!1309 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 391, column: 3)
!1310 = !DILocation(line: 0, scope: !1263)
!1311 = !DILocation(line: 264, column: 3, scope: !1263)
!1312 = !DILocation(line: 264, column: 21, scope: !1263)
!1313 = !DILocation(line: 273, column: 3, scope: !1263)
!1314 = !DILocation(line: 273, column: 22, scope: !1263)
!1315 = !DILocation(line: 0, scope: !1292)
!1316 = !DILocation(line: 0, scope: !1294)
!1317 = !DILocation(line: 289, column: 11, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 288, column: 9)
!1319 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 287, column: 7)
!1320 = !DILocation(line: 290, column: 26, scope: !1318)
!1321 = !DILocation(line: 289, column: 24, scope: !1318)
!1322 = !DILocation(line: 290, column: 11, scope: !1318)
!1323 = !DILocation(line: 295, column: 28, scope: !1295)
!1324 = !DILocation(line: 0, scope: !1023, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 295, column: 21, scope: !1295)
!1326 = !DILocation(line: 1361, column: 11, scope: !1023, inlinedAt: !1325)
!1327 = !DILocation(line: 1361, column: 10, scope: !1023, inlinedAt: !1325)
!1328 = !DILocation(line: 295, column: 21, scope: !1295)
!1329 = !DILocation(line: 295, column: 47, scope: !1295)
!1330 = !DILocation(line: 295, column: 55, scope: !1295)
!1331 = !DILocation(line: 296, column: 12, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 296, column: 11)
!1333 = !DILocation(line: 296, column: 11, scope: !1295)
!1334 = !DILocation(line: 297, column: 9, scope: !1332)
!1335 = !DILocation(line: 299, column: 7, scope: !1295)
!1336 = !DILocation(line: 302, column: 43, scope: !1295)
!1337 = !DILocation(line: 301, column: 21, scope: !1295)
!1338 = !DILocalVariable(name: "__stream", arg: 1, scope: !1339, file: !1340, line: 135, type: !232)
!1339 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1340, file: !1340, line: 135, type: !1341, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1343)
!1340 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!116, !232}
!1343 = !{!1338}
!1344 = !DILocation(line: 0, scope: !1339, inlinedAt: !1345)
!1345 = distinct !DILocation(line: 303, column: 11, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 303, column: 11)
!1347 = !DILocation(line: 137, column: 10, scope: !1339, inlinedAt: !1345)
!1348 = !{!1349, !1012, i64 0}
!1349 = !{!"_IO_FILE", !1012, i64 0, !939, i64 8, !939, i64 16, !939, i64 24, !939, i64 32, !939, i64 40, !939, i64 48, !939, i64 56, !939, i64 64, !939, i64 72, !939, i64 80, !939, i64 88, !939, i64 96, !939, i64 104, !1012, i64 112, !1012, i64 116, !1199, i64 120, !1053, i64 128, !940, i64 130, !940, i64 131, !939, i64 136, !1199, i64 144, !939, i64 152, !939, i64 160, !939, i64 168, !939, i64 176, !1199, i64 184, !1012, i64 192, !940, i64 196}
!1350 = !DILocation(line: 303, column: 11, scope: !1346)
!1351 = !DILocation(line: 303, column: 11, scope: !1295)
!1352 = !DILocation(line: 304, column: 9, scope: !1346)
!1353 = !DILocation(line: 307, column: 10, scope: !1263)
!1354 = !DILocation(line: 307, column: 22, scope: !1263)
!1355 = !DILocation(line: 307, column: 3, scope: !1263)
!1356 = !DILocation(line: 282, column: 13, scope: !1263)
!1357 = !DILocation(line: 0, scope: !1309)
!1358 = !DILocation(line: 392, column: 9, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 392, column: 9)
!1360 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 391, column: 3)
!1361 = !DILocation(line: 392, column: 29, scope: !1359)
!1362 = !DILocation(line: 392, column: 9, scope: !1360)
!1363 = !DILocation(line: 293, column: 17, scope: !1295)
!1364 = !DILocation(line: 292, column: 17, scope: !1295)
!1365 = !DILocation(line: 301, column: 19, scope: !1295)
!1366 = !DILocation(line: 0, scope: !1298)
!1367 = !DILocation(line: 314, column: 12, scope: !1305)
!1368 = !DILocation(line: 314, column: 11, scope: !1298)
!1369 = !DILocation(line: 341, column: 27, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 340, column: 9)
!1371 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 333, column: 11)
!1372 = !DILocation(line: 342, column: 15, scope: !1370)
!1373 = !DILocation(line: 316, column: 17, scope: !1304)
!1374 = !DILocation(line: 316, column: 16, scope: !1305)
!1375 = !DILocation(line: 320, column: 15, scope: !1302)
!1376 = !{i8 0, i8 2}
!1377 = !DILocation(line: 320, column: 15, scope: !1303)
!1378 = !DILocation(line: 321, column: 44, scope: !1302)
!1379 = !{!1380, !939, i64 16}
!1380 = !{!"linebuffer", !1199, i64 0, !1199, i64 8, !939, i64 16}
!1381 = !DILocation(line: 321, column: 65, scope: !1302)
!1382 = !{!1380, !1199, i64 8}
!1383 = !DILocation(line: 321, column: 72, scope: !1302)
!1384 = !DILocation(line: 322, column: 44, scope: !1302)
!1385 = !DILocation(line: 322, column: 65, scope: !1302)
!1386 = !DILocation(line: 322, column: 72, scope: !1302)
!1387 = !DILocation(line: 321, column: 21, scope: !1302)
!1388 = !DILocation(line: 321, column: 13, scope: !1302)
!1389 = !DILocation(line: 325, column: 28, scope: !1301)
!1390 = !DILocation(line: 325, column: 75, scope: !1301)
!1391 = !DILocation(line: 0, scope: !1301)
!1392 = !DILocation(line: 326, column: 44, scope: !1301)
!1393 = !DILocation(line: 326, column: 65, scope: !1301)
!1394 = !DILocation(line: 326, column: 23, scope: !1301)
!1395 = !DILocation(line: 327, column: 25, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 327, column: 19)
!1397 = !DILocation(line: 327, column: 19, scope: !1301)
!1398 = !DILocation(line: 328, column: 25, scope: !1396)
!1399 = !DILocation(line: 328, column: 17, scope: !1396)
!1400 = !DILocation(line: 0, scope: !1305)
!1401 = !DILocation(line: 333, column: 17, scope: !1371)
!1402 = !DILocation(line: 333, column: 11, scope: !1298)
!1403 = !DILocation(line: 336, column: 19, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 334, column: 9)
!1405 = !DILocation(line: 337, column: 11, scope: !1404)
!1406 = !DILocation(line: 360, column: 11, scope: !1298)
!1407 = !DILocation(line: 342, column: 21, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 342, column: 15)
!1409 = !DILocation(line: 345, column: 23, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 343, column: 13)
!1411 = !DILocation(line: 346, column: 15, scope: !1410)
!1412 = !DILocation(line: 351, column: 23, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 349, column: 13)
!1414 = !DILocation(line: 352, column: 15, scope: !1413)
!1415 = !DILocation(line: 0, scope: !1307)
!1416 = !DILocation(line: 364, column: 13, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 363, column: 7)
!1418 = !DILocation(line: 369, column: 36, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !2, line: 365, column: 11)
!1420 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 364, column: 13)
!1421 = !DILocation(line: 369, column: 41, scope: !1419)
!1422 = !DILocation(line: 371, column: 49, scope: !1419)
!1423 = !DILocation(line: 372, column: 61, scope: !1419)
!1424 = !DILocation(line: 371, column: 27, scope: !1419)
!1425 = !DILocation(line: 374, column: 17, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 374, column: 17)
!1427 = !DILocation(line: 374, column: 17, scope: !1419)
!1428 = !DILocation(line: 375, column: 28, scope: !1426)
!1429 = !DILocation(line: 375, column: 15, scope: !1426)
!1430 = !DILocation(line: 380, column: 22, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 380, column: 22)
!1432 = !DILocation(line: 380, column: 46, scope: !1431)
!1433 = !DILocation(line: 380, column: 22, scope: !1426)
!1434 = !DILocation(line: 382, column: 28, scope: !1431)
!1435 = !DILocation(line: 381, column: 15, scope: !1431)
!1436 = !DILocation(line: 0, scope: !1339, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 384, column: 17, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 384, column: 17)
!1439 = !DILocation(line: 137, column: 10, scope: !1339, inlinedAt: !1437)
!1440 = !DILocation(line: 384, column: 17, scope: !1438)
!1441 = !DILocation(line: 384, column: 17, scope: !1419)
!1442 = !DILocation(line: 385, column: 15, scope: !1438)
!1443 = distinct !{!1443, !1355, !1444, !1058}
!1444 = !DILocation(line: 389, column: 5, scope: !1263)
!1445 = !DILocation(line: 393, column: 7, scope: !1359)
!1446 = !DILocation(line: 395, column: 7, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 395, column: 7)
!1448 = !DILocation(line: 395, column: 7, scope: !1263)
!1449 = !DILocation(line: 398, column: 11, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !2, line: 398, column: 11)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !2, line: 396, column: 5)
!1452 = !DILocation(line: 398, column: 23, scope: !1450)
!1453 = !DILocation(line: 0, scope: !1450)
!1454 = !DILocation(line: 398, column: 11, scope: !1451)
!1455 = !DILocation(line: 400, column: 11, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1450, file: !2, line: 399, column: 9)
!1457 = !DILocation(line: 405, column: 9, scope: !1456)
!1458 = !DILocation(line: 408, column: 11, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1450, file: !2, line: 407, column: 9)
!1460 = !DILocation(line: 416, column: 7, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 416, column: 7)
!1462 = !DILocation(line: 416, column: 34, scope: !1461)
!1463 = !DILocation(line: 417, column: 5, scope: !1461)
!1464 = !DILocation(line: 420, column: 3, scope: !1263)
!1465 = !DISubprogram(name: "__errno_location", scope: !1466, file: !1466, line: 37, type: !1467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1466 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!423}
!1469 = !DISubprogram(name: "memcmp", scope: !1132, file: !1132, line: 64, type: !1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!116, !1160, !1160, !162}
!1472 = distinct !DISubprogram(name: "writeline", scope: !2, file: !2, line: 177, type: !1473, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1477)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{null, !1475, !116}
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1270)
!1477 = !{!1478, !1479, !1480, !1484, !1485, !1486, !1489, !1490, !1491, !1494, !1495, !1496, !1498, !1499}
!1478 = !DILocalVariable(name: "line", arg: 1, scope: !1472, file: !2, line: 177, type: !1475)
!1479 = !DILocalVariable(name: "class", arg: 2, scope: !1472, file: !2, line: 177, type: !116)
!1480 = !DILocalVariable(name: "__ptr", scope: !1481, file: !2, line: 190, type: !165)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 190, column: 9)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 189, column: 11)
!1483 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 180, column: 5)
!1484 = !DILocalVariable(name: "__stream", scope: !1481, file: !2, line: 190, type: !232)
!1485 = !DILocalVariable(name: "__cnt", scope: !1481, file: !2, line: 190, type: !162)
!1486 = !DILocalVariable(name: "__ptr", scope: !1487, file: !2, line: 197, type: !165)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 197, column: 9)
!1488 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 196, column: 11)
!1489 = !DILocalVariable(name: "__stream", scope: !1487, file: !2, line: 197, type: !232)
!1490 = !DILocalVariable(name: "__cnt", scope: !1487, file: !2, line: 197, type: !162)
!1491 = !DILocalVariable(name: "__ptr", scope: !1492, file: !2, line: 199, type: !165)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 199, column: 9)
!1493 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 198, column: 11)
!1494 = !DILocalVariable(name: "__stream", scope: !1492, file: !2, line: 199, type: !232)
!1495 = !DILocalVariable(name: "__cnt", scope: !1492, file: !2, line: 199, type: !162)
!1496 = !DILocalVariable(name: "__ptr", scope: !1497, file: !2, line: 203, type: !165)
!1497 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 203, column: 3)
!1498 = !DILocalVariable(name: "__stream", scope: !1497, file: !2, line: 203, type: !232)
!1499 = !DILocalVariable(name: "__cnt", scope: !1497, file: !2, line: 203, type: !162)
!1500 = !DILocation(line: 0, scope: !1472)
!1501 = !DILocation(line: 179, column: 3, scope: !1472)
!1502 = !DILocation(line: 182, column: 12, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 182, column: 11)
!1504 = !DILocation(line: 182, column: 11, scope: !1483)
!1505 = !DILocation(line: 187, column: 12, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 187, column: 11)
!1507 = !DILocation(line: 187, column: 11, scope: !1483)
!1508 = !DILocation(line: 189, column: 11, scope: !1482)
!1509 = !DILocation(line: 189, column: 11, scope: !1483)
!1510 = !DILocation(line: 194, column: 12, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 194, column: 11)
!1512 = !DILocation(line: 194, column: 11, scope: !1483)
!1513 = !DILocation(line: 196, column: 11, scope: !1488)
!1514 = !DILocation(line: 196, column: 11, scope: !1483)
!1515 = !DILocation(line: 197, column: 9, scope: !1488)
!1516 = !DILocation(line: 198, column: 11, scope: !1493)
!1517 = !DILocation(line: 198, column: 11, scope: !1483)
!1518 = !DILocation(line: 0, scope: !1483)
!1519 = !DILocation(line: 203, column: 3, scope: !1472)
!1520 = !DILocation(line: 205, column: 7, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 205, column: 7)
!1522 = !DILocation(line: 0, scope: !1339, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 205, column: 7, scope: !1521)
!1524 = !DILocation(line: 137, column: 10, scope: !1339, inlinedAt: !1523)
!1525 = !DILocation(line: 205, column: 7, scope: !1472)
!1526 = !DILocation(line: 948, column: 21, scope: !1527, inlinedAt: !1530)
!1527 = distinct !DISubprogram(name: "write_error", scope: !115, file: !115, line: 946, type: !544, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1528)
!1528 = !{!1529}
!1529 = !DILocalVariable(name: "saved_errno", scope: !1527, file: !115, line: 948, type: !116)
!1530 = distinct !DILocation(line: 206, column: 5, scope: !1521)
!1531 = !DILocation(line: 0, scope: !1527, inlinedAt: !1530)
!1532 = !DILocation(line: 949, column: 3, scope: !1527, inlinedAt: !1530)
!1533 = !DILocation(line: 950, column: 11, scope: !1527, inlinedAt: !1530)
!1534 = !DILocation(line: 950, column: 3, scope: !1527, inlinedAt: !1530)
!1535 = !DILocation(line: 951, column: 3, scope: !1527, inlinedAt: !1530)
!1536 = !DILocation(line: 952, column: 3, scope: !1527, inlinedAt: !1530)
!1537 = !DILocation(line: 207, column: 1, scope: !1472)
!1538 = distinct !DISubprogram(name: "check_order", scope: !2, file: !2, line: 221, type: !1539, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1541)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !1475, !1475, !116}
!1541 = !{!1542, !1543, !1544, !1545, !1550}
!1542 = !DILocalVariable(name: "prev", arg: 1, scope: !1538, file: !2, line: 221, type: !1475)
!1543 = !DILocalVariable(name: "current", arg: 2, scope: !1538, file: !2, line: 222, type: !1475)
!1544 = !DILocalVariable(name: "whatfile", arg: 3, scope: !1538, file: !2, line: 223, type: !116)
!1545 = !DILocalVariable(name: "order", scope: !1546, file: !2, line: 231, type: !116)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 230, column: 9)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 229, column: 11)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 228, column: 5)
!1549 = distinct !DILexicalBlock(scope: !1538, file: !2, line: 226, column: 7)
!1550 = !DILocalVariable(name: "__errstatus", scope: !1551, file: !2, line: 242, type: !1554)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 242, column: 15)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 241, column: 13)
!1553 = distinct !DILexicalBlock(scope: !1546, file: !2, line: 240, column: 15)
!1554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!1555 = !DILocation(line: 0, scope: !1538)
!1556 = !DILocation(line: 226, column: 7, scope: !1549)
!1557 = !DILocation(line: 227, column: 7, scope: !1549)
!1558 = !DILocation(line: 227, column: 57, scope: !1549)
!1559 = !DILocation(line: 226, column: 7, scope: !1538)
!1560 = !DILocation(line: 229, column: 45, scope: !1547)
!1561 = !DILocation(line: 229, column: 12, scope: !1547)
!1562 = !DILocation(line: 229, column: 11, scope: !1548)
!1563 = !DILocation(line: 233, column: 15, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1546, file: !2, line: 233, column: 15)
!1565 = !DILocation(line: 0, scope: !1564)
!1566 = !DILocation(line: 233, column: 15, scope: !1546)
!1567 = !DILocation(line: 234, column: 21, scope: !1564)
!1568 = !DILocation(line: 0, scope: !1546)
!1569 = !DILocation(line: 234, column: 13, scope: !1564)
!1570 = !DILocation(line: 237, column: 21, scope: !1564)
!1571 = !DILocation(line: 240, column: 17, scope: !1553)
!1572 = !DILocation(line: 240, column: 15, scope: !1546)
!1573 = !DILocation(line: 242, column: 15, scope: !1552)
!1574 = !DILocation(line: 0, scope: !1551)
!1575 = !DILocation(line: 242, column: 15, scope: !1551)
!1576 = !DILocation(line: 248, column: 53, scope: !1552)
!1577 = !DILocation(line: 249, column: 13, scope: !1552)
!1578 = !DILocation(line: 252, column: 1, scope: !1538)
!1579 = !DISubprogram(name: "fflush_unlocked", scope: !1006, file: !1006, line: 239, type: !1341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1580 = !DISubprogram(name: "clearerr_unlocked", scope: !1006, file: !1006, line: 794, type: !1581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{null, !232}
!1583 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !482, file: !482, line: 50, type: !961, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !1584)
!1584 = !{!1585}
!1585 = !DILocalVariable(name: "file", arg: 1, scope: !1583, file: !482, line: 50, type: !165)
!1586 = !DILocation(line: 0, scope: !1583)
!1587 = !DILocation(line: 52, column: 13, scope: !1583)
!1588 = !DILocation(line: 53, column: 1, scope: !1583)
!1589 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !482, file: !482, line: 87, type: !1590, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !1592)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !205}
!1592 = !{!1593}
!1593 = !DILocalVariable(name: "ignore", arg: 1, scope: !1589, file: !482, line: 87, type: !205)
!1594 = !DILocation(line: 0, scope: !1589)
!1595 = !DILocation(line: 89, column: 16, scope: !1589)
!1596 = !DILocation(line: 90, column: 1, scope: !1589)
!1597 = distinct !DISubprogram(name: "close_stdout", scope: !482, file: !482, line: 116, type: !544, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !1598)
!1598 = !{!1599}
!1599 = !DILocalVariable(name: "write_error", scope: !1600, file: !482, line: 121, type: !165)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !482, line: 120, column: 5)
!1601 = distinct !DILexicalBlock(scope: !1597, file: !482, line: 118, column: 7)
!1602 = !DILocation(line: 118, column: 21, scope: !1601)
!1603 = !DILocation(line: 118, column: 7, scope: !1601)
!1604 = !DILocation(line: 118, column: 29, scope: !1601)
!1605 = !DILocation(line: 119, column: 7, scope: !1601)
!1606 = !DILocation(line: 119, column: 12, scope: !1601)
!1607 = !DILocation(line: 119, column: 25, scope: !1601)
!1608 = !DILocation(line: 119, column: 28, scope: !1601)
!1609 = !DILocation(line: 119, column: 34, scope: !1601)
!1610 = !DILocation(line: 118, column: 7, scope: !1597)
!1611 = !DILocation(line: 121, column: 33, scope: !1600)
!1612 = !DILocation(line: 0, scope: !1600)
!1613 = !DILocation(line: 122, column: 11, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1600, file: !482, line: 122, column: 11)
!1615 = !DILocation(line: 0, scope: !1614)
!1616 = !DILocation(line: 122, column: 11, scope: !1600)
!1617 = !DILocation(line: 123, column: 9, scope: !1614)
!1618 = !DILocation(line: 126, column: 9, scope: !1614)
!1619 = !DILocation(line: 128, column: 14, scope: !1600)
!1620 = !DILocation(line: 128, column: 7, scope: !1600)
!1621 = !DILocation(line: 133, column: 42, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1597, file: !482, line: 133, column: 7)
!1623 = !DILocation(line: 133, column: 28, scope: !1622)
!1624 = !DILocation(line: 133, column: 50, scope: !1622)
!1625 = !DILocation(line: 133, column: 7, scope: !1597)
!1626 = !DILocation(line: 134, column: 12, scope: !1622)
!1627 = !DILocation(line: 134, column: 5, scope: !1622)
!1628 = !DILocation(line: 135, column: 1, scope: !1597)
!1629 = !DISubprogram(name: "_exit", scope: !1630, file: !1630, line: 624, type: !928, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1630 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1631 = distinct !DISubprogram(name: "verror", scope: !497, file: !497, line: 251, type: !1632, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1634)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{null, !116, !116, !165, !507}
!1634 = !{!1635, !1636, !1637, !1638}
!1635 = !DILocalVariable(name: "status", arg: 1, scope: !1631, file: !497, line: 251, type: !116)
!1636 = !DILocalVariable(name: "errnum", arg: 2, scope: !1631, file: !497, line: 251, type: !116)
!1637 = !DILocalVariable(name: "message", arg: 3, scope: !1631, file: !497, line: 251, type: !165)
!1638 = !DILocalVariable(name: "args", arg: 4, scope: !1631, file: !497, line: 251, type: !507)
!1639 = !DILocation(line: 0, scope: !1631)
!1640 = !DILocation(line: 261, column: 3, scope: !1631)
!1641 = !DILocation(line: 265, column: 7, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1631, file: !497, line: 265, column: 7)
!1643 = !DILocation(line: 265, column: 7, scope: !1631)
!1644 = !DILocation(line: 266, column: 5, scope: !1642)
!1645 = !DILocation(line: 272, column: 7, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !497, line: 268, column: 5)
!1647 = !DILocation(line: 276, column: 3, scope: !1631)
!1648 = !DILocation(line: 282, column: 1, scope: !1631)
!1649 = distinct !DISubprogram(name: "flush_stdout", scope: !497, file: !497, line: 163, type: !544, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1650)
!1650 = !{!1651}
!1651 = !DILocalVariable(name: "stdout_fd", scope: !1649, file: !497, line: 166, type: !116)
!1652 = !DILocation(line: 0, scope: !1649)
!1653 = !DILocalVariable(name: "fd", arg: 1, scope: !1654, file: !497, line: 145, type: !116)
!1654 = distinct !DISubprogram(name: "is_open", scope: !497, file: !497, line: 145, type: !1655, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1657)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!116, !116}
!1657 = !{!1653}
!1658 = !DILocation(line: 0, scope: !1654, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 182, column: 25, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1649, file: !497, line: 182, column: 7)
!1661 = !DILocation(line: 157, column: 15, scope: !1654, inlinedAt: !1659)
!1662 = !DILocation(line: 157, column: 12, scope: !1654, inlinedAt: !1659)
!1663 = !DILocation(line: 182, column: 7, scope: !1649)
!1664 = !DILocation(line: 184, column: 5, scope: !1660)
!1665 = !DILocation(line: 185, column: 1, scope: !1649)
!1666 = distinct !DISubprogram(name: "error_tail", scope: !497, file: !497, line: 219, type: !1632, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1667)
!1667 = !{!1668, !1669, !1670, !1671}
!1668 = !DILocalVariable(name: "status", arg: 1, scope: !1666, file: !497, line: 219, type: !116)
!1669 = !DILocalVariable(name: "errnum", arg: 2, scope: !1666, file: !497, line: 219, type: !116)
!1670 = !DILocalVariable(name: "message", arg: 3, scope: !1666, file: !497, line: 219, type: !165)
!1671 = !DILocalVariable(name: "args", arg: 4, scope: !1666, file: !497, line: 219, type: !507)
!1672 = !DILocation(line: 0, scope: !1666)
!1673 = !DILocation(line: 229, column: 13, scope: !1666)
!1674 = !DILocalVariable(name: "__stream", arg: 1, scope: !1675, file: !997, line: 132, type: !1678)
!1675 = distinct !DISubprogram(name: "vfprintf", scope: !997, file: !997, line: 132, type: !1676, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1713)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!116, !1678, !1001, !507}
!1678 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1679)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1681)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1682)
!1682 = !{!1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1681, file: !236, line: 51, baseType: !116, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1681, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1681, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1681, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1681, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1681, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1681, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1681, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1681, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1681, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1681, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1681, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1681, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1681, file: !236, line: 70, baseType: !1697, size: 64, offset: 832)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1681, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1681, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1681, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1681, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1681, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1681, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1681, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1681, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1681, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1681, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1681, file: !236, line: 93, baseType: !1697, size: 64, offset: 1344)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1681, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1681, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1681, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1681, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!1713 = !{!1674, !1714, !1715}
!1714 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1675, file: !997, line: 133, type: !1001)
!1715 = !DILocalVariable(name: "__ap", arg: 3, scope: !1675, file: !997, line: 133, type: !507)
!1716 = !DILocation(line: 0, scope: !1675, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 229, column: 3, scope: !1666)
!1718 = !DILocation(line: 135, column: 10, scope: !1675, inlinedAt: !1717)
!1719 = !DILocation(line: 232, column: 3, scope: !1666)
!1720 = !DILocation(line: 233, column: 7, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1666, file: !497, line: 233, column: 7)
!1722 = !DILocation(line: 233, column: 7, scope: !1666)
!1723 = !DILocalVariable(name: "errnum", arg: 1, scope: !1724, file: !497, line: 188, type: !116)
!1724 = distinct !DISubprogram(name: "print_errno_message", scope: !497, file: !497, line: 188, type: !928, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1725)
!1725 = !{!1723, !1726, !1727}
!1726 = !DILocalVariable(name: "s", scope: !1724, file: !497, line: 190, type: !165)
!1727 = !DILocalVariable(name: "errbuf", scope: !1724, file: !497, line: 193, type: !1728)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1729)
!1729 = !{!1730}
!1730 = !DISubrange(count: 1024)
!1731 = !DILocation(line: 0, scope: !1724, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 234, column: 5, scope: !1721)
!1733 = !DILocation(line: 193, column: 3, scope: !1724, inlinedAt: !1732)
!1734 = !DILocation(line: 193, column: 8, scope: !1724, inlinedAt: !1732)
!1735 = !DILocation(line: 195, column: 7, scope: !1724, inlinedAt: !1732)
!1736 = !DILocation(line: 207, column: 9, scope: !1737, inlinedAt: !1732)
!1737 = distinct !DILexicalBlock(scope: !1724, file: !497, line: 207, column: 7)
!1738 = !DILocation(line: 207, column: 7, scope: !1724, inlinedAt: !1732)
!1739 = !DILocation(line: 208, column: 9, scope: !1737, inlinedAt: !1732)
!1740 = !DILocation(line: 208, column: 5, scope: !1737, inlinedAt: !1732)
!1741 = !DILocation(line: 214, column: 3, scope: !1724, inlinedAt: !1732)
!1742 = !DILocation(line: 216, column: 1, scope: !1724, inlinedAt: !1732)
!1743 = !DILocation(line: 234, column: 5, scope: !1721)
!1744 = !DILocation(line: 238, column: 3, scope: !1666)
!1745 = !DILocalVariable(name: "__c", arg: 1, scope: !1746, file: !1340, line: 101, type: !116)
!1746 = distinct !DISubprogram(name: "putc_unlocked", scope: !1340, file: !1340, line: 101, type: !1747, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1749)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!116, !116, !1679}
!1749 = !{!1745, !1750}
!1750 = !DILocalVariable(name: "__stream", arg: 2, scope: !1746, file: !1340, line: 101, type: !1679)
!1751 = !DILocation(line: 0, scope: !1746, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 238, column: 3, scope: !1666)
!1753 = !DILocation(line: 103, column: 10, scope: !1746, inlinedAt: !1752)
!1754 = !{!1349, !939, i64 40}
!1755 = !{!1349, !939, i64 48}
!1756 = !{!"branch_weights", i32 2000, i32 1}
!1757 = !DILocation(line: 240, column: 3, scope: !1666)
!1758 = !DILocation(line: 241, column: 7, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1666, file: !497, line: 241, column: 7)
!1760 = !DILocation(line: 241, column: 7, scope: !1666)
!1761 = !DILocation(line: 242, column: 5, scope: !1759)
!1762 = !DILocation(line: 243, column: 1, scope: !1666)
!1763 = !DISubprogram(name: "__vfprintf_chk", scope: !997, file: !997, line: 96, type: !1764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!116, !1678, !116, !1001, !507}
!1766 = !DISubprogram(name: "strerror_r", scope: !1132, file: !1132, line: 444, type: !1767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!159, !116, !159, !162}
!1769 = !DISubprogram(name: "__overflow", scope: !1006, file: !1006, line: 886, type: !1770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!116, !1679, !116}
!1772 = !DISubprogram(name: "fcntl", scope: !1773, file: !1773, line: 149, type: !1774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1773 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!116, !116, !116, null}
!1776 = distinct !DISubprogram(name: "error", scope: !497, file: !497, line: 285, type: !1777, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1779)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{null, !116, !116, !165, null}
!1779 = !{!1780, !1781, !1782, !1783}
!1780 = !DILocalVariable(name: "status", arg: 1, scope: !1776, file: !497, line: 285, type: !116)
!1781 = !DILocalVariable(name: "errnum", arg: 2, scope: !1776, file: !497, line: 285, type: !116)
!1782 = !DILocalVariable(name: "message", arg: 3, scope: !1776, file: !497, line: 285, type: !165)
!1783 = !DILocalVariable(name: "ap", scope: !1776, file: !497, line: 287, type: !1784)
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1006, line: 52, baseType: !1785)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1786, line: 14, baseType: !1787)
!1786 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !511, baseType: !1788)
!1788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 192, elements: !86)
!1789 = !DILocation(line: 0, scope: !1776)
!1790 = !DILocation(line: 287, column: 3, scope: !1776)
!1791 = !DILocation(line: 287, column: 11, scope: !1776)
!1792 = !DILocation(line: 288, column: 3, scope: !1776)
!1793 = !DILocation(line: 289, column: 3, scope: !1776)
!1794 = !DILocation(line: 290, column: 3, scope: !1776)
!1795 = !DILocation(line: 291, column: 1, scope: !1776)
!1796 = !DILocation(line: 0, scope: !504)
!1797 = !DILocation(line: 302, column: 7, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !504, file: !497, line: 302, column: 7)
!1799 = !DILocation(line: 302, column: 7, scope: !504)
!1800 = !DILocation(line: 307, column: 11, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !497, line: 307, column: 11)
!1802 = distinct !DILexicalBlock(scope: !1798, file: !497, line: 303, column: 5)
!1803 = !DILocation(line: 307, column: 27, scope: !1801)
!1804 = !DILocation(line: 308, column: 11, scope: !1801)
!1805 = !DILocation(line: 308, column: 28, scope: !1801)
!1806 = !DILocation(line: 308, column: 25, scope: !1801)
!1807 = !DILocation(line: 309, column: 15, scope: !1801)
!1808 = !DILocation(line: 309, column: 33, scope: !1801)
!1809 = !DILocation(line: 310, column: 19, scope: !1801)
!1810 = !DILocation(line: 311, column: 22, scope: !1801)
!1811 = !DILocation(line: 311, column: 56, scope: !1801)
!1812 = !DILocation(line: 307, column: 11, scope: !1802)
!1813 = !DILocation(line: 316, column: 21, scope: !1802)
!1814 = !DILocation(line: 317, column: 23, scope: !1802)
!1815 = !DILocation(line: 318, column: 5, scope: !1802)
!1816 = !DILocation(line: 327, column: 3, scope: !504)
!1817 = !DILocation(line: 331, column: 7, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !504, file: !497, line: 331, column: 7)
!1819 = !DILocation(line: 331, column: 7, scope: !504)
!1820 = !DILocation(line: 332, column: 5, scope: !1818)
!1821 = !DILocation(line: 338, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1818, file: !497, line: 334, column: 5)
!1823 = !DILocation(line: 346, column: 3, scope: !504)
!1824 = !DILocation(line: 350, column: 3, scope: !504)
!1825 = !DILocation(line: 356, column: 1, scope: !504)
!1826 = distinct !DISubprogram(name: "error_at_line", scope: !497, file: !497, line: 359, type: !1827, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !1829)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{null, !116, !116, !165, !103, !165, null}
!1829 = !{!1830, !1831, !1832, !1833, !1834, !1835}
!1830 = !DILocalVariable(name: "status", arg: 1, scope: !1826, file: !497, line: 359, type: !116)
!1831 = !DILocalVariable(name: "errnum", arg: 2, scope: !1826, file: !497, line: 359, type: !116)
!1832 = !DILocalVariable(name: "file_name", arg: 3, scope: !1826, file: !497, line: 359, type: !165)
!1833 = !DILocalVariable(name: "line_number", arg: 4, scope: !1826, file: !497, line: 360, type: !103)
!1834 = !DILocalVariable(name: "message", arg: 5, scope: !1826, file: !497, line: 360, type: !165)
!1835 = !DILocalVariable(name: "ap", scope: !1826, file: !497, line: 362, type: !1784)
!1836 = !DILocation(line: 0, scope: !1826)
!1837 = !DILocation(line: 362, column: 3, scope: !1826)
!1838 = !DILocation(line: 362, column: 11, scope: !1826)
!1839 = !DILocation(line: 363, column: 3, scope: !1826)
!1840 = !DILocation(line: 364, column: 3, scope: !1826)
!1841 = !DILocation(line: 366, column: 3, scope: !1826)
!1842 = !DILocation(line: 367, column: 1, scope: !1826)
!1843 = distinct !DISubprogram(name: "fdadvise", scope: !835, file: !835, line: 25, type: !1844, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !1848)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{null, !116, !1846, !1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1006, line: 63, baseType: !258)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !150, line: 51, baseType: !149)
!1848 = !{!1849, !1850, !1851, !1852}
!1849 = !DILocalVariable(name: "fd", arg: 1, scope: !1843, file: !835, line: 25, type: !116)
!1850 = !DILocalVariable(name: "offset", arg: 2, scope: !1843, file: !835, line: 25, type: !1846)
!1851 = !DILocalVariable(name: "len", arg: 3, scope: !1843, file: !835, line: 25, type: !1846)
!1852 = !DILocalVariable(name: "advice", arg: 4, scope: !1843, file: !835, line: 25, type: !1847)
!1853 = !DILocation(line: 0, scope: !1843)
!1854 = !DILocation(line: 28, column: 3, scope: !1843)
!1855 = !DILocation(line: 30, column: 1, scope: !1843)
!1856 = !DISubprogram(name: "posix_fadvise", scope: !1773, file: !1773, line: 273, type: !1857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!116, !116, !1846, !1846, !116}
!1859 = distinct !DISubprogram(name: "fadvise", scope: !835, file: !835, line: 33, type: !1860, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !1896)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{null, !1862, !1847}
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1864)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1865)
!1865 = !{!1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1864, file: !236, line: 51, baseType: !116, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1864, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1864, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1864, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1864, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1864, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1864, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1864, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1864, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1864, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1864, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1864, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1864, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1864, file: !236, line: 70, baseType: !1880, size: 64, offset: 832)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1864, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1864, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1864, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1864, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1864, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1864, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1864, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1864, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1864, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1864, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1864, file: !236, line: 93, baseType: !1880, size: 64, offset: 1344)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1864, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1864, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1864, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1864, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!1896 = !{!1897, !1898}
!1897 = !DILocalVariable(name: "fp", arg: 1, scope: !1859, file: !835, line: 33, type: !1862)
!1898 = !DILocalVariable(name: "advice", arg: 2, scope: !1859, file: !835, line: 33, type: !1847)
!1899 = !DILocation(line: 0, scope: !1859)
!1900 = !DILocation(line: 35, column: 7, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1859, file: !835, line: 35, column: 7)
!1902 = !DILocation(line: 35, column: 7, scope: !1859)
!1903 = !DILocation(line: 36, column: 15, scope: !1901)
!1904 = !DILocation(line: 0, scope: !1843, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 36, column: 5, scope: !1901)
!1906 = !DILocation(line: 28, column: 3, scope: !1843, inlinedAt: !1905)
!1907 = !DILocation(line: 36, column: 5, scope: !1901)
!1908 = !DILocation(line: 37, column: 1, scope: !1859)
!1909 = !DISubprogram(name: "fileno", scope: !1006, file: !1006, line: 809, type: !1910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!116, !1862}
!1912 = distinct !DISubprogram(name: "rpl_fclose", scope: !838, file: !838, line: 58, type: !1913, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !1949)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!116, !1915}
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1917)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1918)
!1918 = !{!1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1917, file: !236, line: 51, baseType: !116, size: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1917, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1917, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1917, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1917, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1917, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1917, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1917, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1917, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1917, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1917, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1917, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1917, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1917, file: !236, line: 70, baseType: !1933, size: 64, offset: 832)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1917, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1917, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1917, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1917, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1917, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1917, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1917, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1917, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1917, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1917, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1917, file: !236, line: 93, baseType: !1933, size: 64, offset: 1344)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1917, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1917, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1917, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1917, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!1949 = !{!1950, !1951, !1952, !1953}
!1950 = !DILocalVariable(name: "fp", arg: 1, scope: !1912, file: !838, line: 58, type: !1915)
!1951 = !DILocalVariable(name: "saved_errno", scope: !1912, file: !838, line: 60, type: !116)
!1952 = !DILocalVariable(name: "fd", scope: !1912, file: !838, line: 63, type: !116)
!1953 = !DILocalVariable(name: "result", scope: !1912, file: !838, line: 74, type: !116)
!1954 = !DILocation(line: 0, scope: !1912)
!1955 = !DILocation(line: 63, column: 12, scope: !1912)
!1956 = !DILocation(line: 64, column: 10, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1912, file: !838, line: 64, column: 7)
!1958 = !DILocation(line: 64, column: 7, scope: !1912)
!1959 = !DILocation(line: 65, column: 12, scope: !1957)
!1960 = !DILocation(line: 65, column: 5, scope: !1957)
!1961 = !DILocation(line: 70, column: 9, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1912, file: !838, line: 70, column: 7)
!1963 = !DILocation(line: 70, column: 23, scope: !1962)
!1964 = !DILocation(line: 70, column: 33, scope: !1962)
!1965 = !DILocation(line: 70, column: 26, scope: !1962)
!1966 = !DILocation(line: 70, column: 59, scope: !1962)
!1967 = !DILocation(line: 71, column: 7, scope: !1962)
!1968 = !DILocation(line: 71, column: 10, scope: !1962)
!1969 = !DILocation(line: 70, column: 7, scope: !1912)
!1970 = !DILocation(line: 100, column: 12, scope: !1912)
!1971 = !DILocation(line: 105, column: 7, scope: !1912)
!1972 = !DILocation(line: 72, column: 19, scope: !1962)
!1973 = !DILocation(line: 105, column: 19, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1912, file: !838, line: 105, column: 7)
!1975 = !DILocation(line: 107, column: 13, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1974, file: !838, line: 106, column: 5)
!1977 = !DILocation(line: 109, column: 5, scope: !1976)
!1978 = !DILocation(line: 112, column: 1, scope: !1912)
!1979 = !DISubprogram(name: "fclose", scope: !1006, file: !1006, line: 178, type: !1913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1980 = !DISubprogram(name: "__freading", scope: !1981, file: !1981, line: 51, type: !1913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1981 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!1982 = !DISubprogram(name: "lseek", scope: !1630, file: !1630, line: 339, type: !1983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!258, !116, !258, !116}
!1985 = distinct !DISubprogram(name: "rpl_fflush", scope: !840, file: !840, line: 130, type: !1986, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !2022)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!116, !1988}
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1990)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1991)
!1991 = !{!1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1990, file: !236, line: 51, baseType: !116, size: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1990, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1990, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1990, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1990, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1990, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1990, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1990, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1990, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1990, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1990, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1990, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1990, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1990, file: !236, line: 70, baseType: !2006, size: 64, offset: 832)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1990, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1990, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1990, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1990, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1990, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1990, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1990, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1990, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1990, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1990, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1990, file: !236, line: 93, baseType: !2006, size: 64, offset: 1344)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1990, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1990, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1990, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1990, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2022 = !{!2023}
!2023 = !DILocalVariable(name: "stream", arg: 1, scope: !1985, file: !840, line: 130, type: !1988)
!2024 = !DILocation(line: 0, scope: !1985)
!2025 = !DILocation(line: 151, column: 14, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1985, file: !840, line: 151, column: 7)
!2027 = !DILocation(line: 151, column: 22, scope: !2026)
!2028 = !DILocation(line: 151, column: 27, scope: !2026)
!2029 = !DILocation(line: 151, column: 7, scope: !1985)
!2030 = !DILocation(line: 152, column: 12, scope: !2026)
!2031 = !DILocation(line: 152, column: 5, scope: !2026)
!2032 = !DILocalVariable(name: "fp", arg: 1, scope: !2033, file: !840, line: 42, type: !1988)
!2033 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !840, file: !840, line: 42, type: !2034, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !2036)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !1988}
!2036 = !{!2032}
!2037 = !DILocation(line: 0, scope: !2033, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 157, column: 3, scope: !1985)
!2039 = !DILocation(line: 44, column: 12, scope: !2040, inlinedAt: !2038)
!2040 = distinct !DILexicalBlock(scope: !2033, file: !840, line: 44, column: 7)
!2041 = !DILocation(line: 44, column: 19, scope: !2040, inlinedAt: !2038)
!2042 = !DILocation(line: 44, column: 7, scope: !2033, inlinedAt: !2038)
!2043 = !DILocation(line: 46, column: 5, scope: !2040, inlinedAt: !2038)
!2044 = !DILocation(line: 159, column: 10, scope: !1985)
!2045 = !DILocation(line: 159, column: 3, scope: !1985)
!2046 = !DILocation(line: 236, column: 1, scope: !1985)
!2047 = !DISubprogram(name: "fflush", scope: !1006, file: !1006, line: 230, type: !1986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!2048 = distinct !DISubprogram(name: "fopen_safer", scope: !843, file: !843, line: 31, type: !2049, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !2085)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!2051, !165, !165}
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !2053)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !2054)
!2054 = !{!2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2053, file: !236, line: 51, baseType: !116, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2053, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2053, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2053, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2053, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2053, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2053, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2053, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2053, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2053, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2053, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2053, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2053, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2053, file: !236, line: 70, baseType: !2069, size: 64, offset: 832)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2053, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2053, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2053, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2053, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2053, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2053, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2053, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2053, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2053, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2053, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2053, file: !236, line: 93, baseType: !2069, size: 64, offset: 1344)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2053, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2053, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2053, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2053, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2085 = !{!2086, !2087, !2088, !2089, !2092, !2095, !2098}
!2086 = !DILocalVariable(name: "file", arg: 1, scope: !2048, file: !843, line: 31, type: !165)
!2087 = !DILocalVariable(name: "mode", arg: 2, scope: !2048, file: !843, line: 31, type: !165)
!2088 = !DILocalVariable(name: "fp", scope: !2048, file: !843, line: 33, type: !2051)
!2089 = !DILocalVariable(name: "fd", scope: !2090, file: !843, line: 37, type: !116)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !843, line: 36, column: 5)
!2091 = distinct !DILexicalBlock(scope: !2048, file: !843, line: 35, column: 7)
!2092 = !DILocalVariable(name: "f", scope: !2093, file: !843, line: 41, type: !116)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !843, line: 40, column: 9)
!2094 = distinct !DILexicalBlock(scope: !2090, file: !843, line: 39, column: 11)
!2095 = !DILocalVariable(name: "saved_errno", scope: !2096, file: !843, line: 45, type: !116)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !843, line: 44, column: 13)
!2097 = distinct !DILexicalBlock(scope: !2093, file: !843, line: 43, column: 15)
!2098 = !DILocalVariable(name: "saved_errno", scope: !2099, file: !843, line: 54, type: !116)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !843, line: 53, column: 13)
!2100 = distinct !DILexicalBlock(scope: !2093, file: !843, line: 51, column: 15)
!2101 = !DILocation(line: 0, scope: !2048)
!2102 = !DILocation(line: 33, column: 14, scope: !2048)
!2103 = !DILocation(line: 35, column: 7, scope: !2091)
!2104 = !DILocation(line: 35, column: 7, scope: !2048)
!2105 = !DILocation(line: 37, column: 16, scope: !2090)
!2106 = !DILocation(line: 0, scope: !2090)
!2107 = !DILocation(line: 39, column: 19, scope: !2094)
!2108 = !DILocation(line: 41, column: 19, scope: !2093)
!2109 = !DILocation(line: 0, scope: !2093)
!2110 = !DILocation(line: 43, column: 17, scope: !2097)
!2111 = !DILocation(line: 43, column: 15, scope: !2093)
!2112 = !DILocation(line: 45, column: 33, scope: !2096)
!2113 = !DILocation(line: 0, scope: !2096)
!2114 = !DILocation(line: 46, column: 15, scope: !2096)
!2115 = !DILocation(line: 47, column: 21, scope: !2096)
!2116 = !DILocation(line: 51, column: 15, scope: !2100)
!2117 = !DILocation(line: 51, column: 27, scope: !2100)
!2118 = !DILocation(line: 52, column: 15, scope: !2100)
!2119 = !DILocation(line: 52, column: 26, scope: !2100)
!2120 = !DILocation(line: 52, column: 24, scope: !2100)
!2121 = !DILocation(line: 51, column: 15, scope: !2093)
!2122 = !DILocation(line: 54, column: 33, scope: !2099)
!2123 = !DILocation(line: 0, scope: !2099)
!2124 = !DILocation(line: 55, column: 15, scope: !2099)
!2125 = !DILocation(line: 56, column: 21, scope: !2099)
!2126 = !DILocation(line: 63, column: 1, scope: !2048)
!2127 = !DISubprogram(name: "fdopen", scope: !1006, file: !1006, line: 293, type: !2128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!2051, !116, !165}
!2130 = !DISubprogram(name: "close", scope: !1630, file: !1630, line: 358, type: !1655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!2131 = distinct !DISubprogram(name: "fpurge", scope: !845, file: !845, line: 32, type: !2132, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !844, retainedNodes: !2168)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!116, !2134}
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !2136)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !2137)
!2137 = !{!2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2136, file: !236, line: 51, baseType: !116, size: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2136, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2136, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2136, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2136, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2136, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2136, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2136, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2136, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2136, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2136, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2136, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2136, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2136, file: !236, line: 70, baseType: !2152, size: 64, offset: 832)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2136, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2136, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2136, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2136, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2136, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2136, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2136, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2136, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2136, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2136, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2136, file: !236, line: 93, baseType: !2152, size: 64, offset: 1344)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2136, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2136, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2136, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2136, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2168 = !{!2169}
!2169 = !DILocalVariable(name: "fp", arg: 1, scope: !2131, file: !845, line: 32, type: !2134)
!2170 = !DILocation(line: 0, scope: !2131)
!2171 = !DILocation(line: 36, column: 3, scope: !2131)
!2172 = !DILocation(line: 38, column: 3, scope: !2131)
!2173 = !DISubprogram(name: "__fpurge", scope: !1981, file: !1981, line: 72, type: !2174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{null, !2134}
!2176 = distinct !DISubprogram(name: "rpl_fseeko", scope: !847, file: !847, line: 28, type: !2177, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !2213)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!116, !2179, !1846, !116}
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !2181)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !2182)
!2182 = !{!2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2181, file: !236, line: 51, baseType: !116, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2181, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2181, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2181, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2181, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2181, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2181, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2181, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2181, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2181, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2181, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2181, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2181, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2181, file: !236, line: 70, baseType: !2197, size: 64, offset: 832)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2181, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2181, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2181, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2181, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2181, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2181, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2181, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2181, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2181, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2181, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2181, file: !236, line: 93, baseType: !2197, size: 64, offset: 1344)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2181, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2181, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2181, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2181, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2213 = !{!2214, !2215, !2216, !2217}
!2214 = !DILocalVariable(name: "fp", arg: 1, scope: !2176, file: !847, line: 28, type: !2179)
!2215 = !DILocalVariable(name: "offset", arg: 2, scope: !2176, file: !847, line: 28, type: !1846)
!2216 = !DILocalVariable(name: "whence", arg: 3, scope: !2176, file: !847, line: 28, type: !116)
!2217 = !DILocalVariable(name: "pos", scope: !2218, file: !847, line: 123, type: !1846)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !847, line: 119, column: 5)
!2219 = distinct !DILexicalBlock(scope: !2176, file: !847, line: 55, column: 7)
!2220 = !DILocation(line: 0, scope: !2176)
!2221 = !DILocation(line: 55, column: 12, scope: !2219)
!2222 = !{!1349, !939, i64 16}
!2223 = !DILocation(line: 55, column: 33, scope: !2219)
!2224 = !{!1349, !939, i64 8}
!2225 = !DILocation(line: 55, column: 25, scope: !2219)
!2226 = !DILocation(line: 56, column: 7, scope: !2219)
!2227 = !DILocation(line: 56, column: 15, scope: !2219)
!2228 = !DILocation(line: 56, column: 37, scope: !2219)
!2229 = !{!1349, !939, i64 32}
!2230 = !DILocation(line: 56, column: 29, scope: !2219)
!2231 = !DILocation(line: 57, column: 7, scope: !2219)
!2232 = !DILocation(line: 57, column: 15, scope: !2219)
!2233 = !{!1349, !939, i64 72}
!2234 = !DILocation(line: 57, column: 29, scope: !2219)
!2235 = !DILocation(line: 55, column: 7, scope: !2176)
!2236 = !DILocation(line: 123, column: 26, scope: !2218)
!2237 = !DILocation(line: 123, column: 19, scope: !2218)
!2238 = !DILocation(line: 0, scope: !2218)
!2239 = !DILocation(line: 124, column: 15, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2218, file: !847, line: 124, column: 11)
!2241 = !DILocation(line: 124, column: 11, scope: !2218)
!2242 = !DILocation(line: 135, column: 19, scope: !2218)
!2243 = !DILocation(line: 136, column: 12, scope: !2218)
!2244 = !DILocation(line: 136, column: 20, scope: !2218)
!2245 = !{!1349, !1199, i64 144}
!2246 = !DILocation(line: 167, column: 7, scope: !2218)
!2247 = !DILocation(line: 169, column: 10, scope: !2176)
!2248 = !DILocation(line: 169, column: 3, scope: !2176)
!2249 = !DILocation(line: 170, column: 1, scope: !2176)
!2250 = !DISubprogram(name: "fseeko", scope: !1006, file: !1006, line: 736, type: !2251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!116, !2179, !258, !116}
!2253 = distinct !DISubprogram(name: "getprogname", scope: !849, file: !849, line: 54, type: !2254, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !848, retainedNodes: !995)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!165}
!2256 = !DILocation(line: 58, column: 10, scope: !2253)
!2257 = !DILocation(line: 58, column: 3, scope: !2253)
!2258 = distinct !DISubprogram(name: "hard_locale", scope: !548, file: !548, line: 28, type: !2259, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !850, retainedNodes: !2261)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!205, !116}
!2261 = !{!2262, !2263}
!2262 = !DILocalVariable(name: "category", arg: 1, scope: !2258, file: !548, line: 28, type: !116)
!2263 = !DILocalVariable(name: "locale", scope: !2258, file: !548, line: 30, type: !2264)
!2264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !2265)
!2265 = !{!2266}
!2266 = !DISubrange(count: 257)
!2267 = !DILocation(line: 0, scope: !2258)
!2268 = !DILocation(line: 30, column: 3, scope: !2258)
!2269 = !DILocation(line: 30, column: 8, scope: !2258)
!2270 = !DILocation(line: 32, column: 7, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2258, file: !548, line: 32, column: 7)
!2272 = !DILocation(line: 32, column: 7, scope: !2258)
!2273 = !DILocalVariable(name: "__s1", arg: 1, scope: !2274, file: !1024, line: 1359, type: !165)
!2274 = distinct !DISubprogram(name: "streq", scope: !1024, file: !1024, line: 1359, type: !1025, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !850, retainedNodes: !2275)
!2275 = !{!2273, !2276}
!2276 = !DILocalVariable(name: "__s2", arg: 2, scope: !2274, file: !1024, line: 1359, type: !165)
!2277 = !DILocation(line: 0, scope: !2274, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 35, column: 9, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2258, file: !548, line: 35, column: 7)
!2280 = !DILocation(line: 1361, column: 11, scope: !2274, inlinedAt: !2278)
!2281 = !DILocation(line: 35, column: 29, scope: !2279)
!2282 = !DILocation(line: 0, scope: !2274, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 35, column: 32, scope: !2279)
!2284 = !DILocation(line: 1361, column: 11, scope: !2274, inlinedAt: !2283)
!2285 = !DILocation(line: 1361, column: 10, scope: !2274, inlinedAt: !2283)
!2286 = !DILocation(line: 35, column: 7, scope: !2258)
!2287 = !DILocation(line: 46, column: 3, scope: !2258)
!2288 = !DILocation(line: 47, column: 1, scope: !2258)
!2289 = distinct !DISubprogram(name: "initbuffer", scope: !855, file: !855, line: 37, type: !2290, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !854, retainedNodes: !2298)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{null, !2292}
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !1271, line: 32, size: 192, elements: !2294)
!2294 = !{!2295, !2296, !2297}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2293, file: !1271, line: 34, baseType: !892, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2293, file: !1271, line: 35, baseType: !892, size: 64, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2293, file: !1271, line: 36, baseType: !159, size: 64, offset: 128)
!2298 = !{!2299}
!2299 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2289, file: !855, line: 37, type: !2292)
!2300 = !DILocation(line: 0, scope: !2289)
!2301 = !DILocalVariable(name: "__dest", arg: 1, scope: !2302, file: !2303, line: 57, type: !160)
!2302 = distinct !DISubprogram(name: "memset", scope: !2303, file: !2303, line: 57, type: !2304, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !854, retainedNodes: !2306)
!2303 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!160, !160, !116, !162}
!2306 = !{!2301, !2307, !2308}
!2307 = !DILocalVariable(name: "__ch", arg: 2, scope: !2302, file: !2303, line: 57, type: !116)
!2308 = !DILocalVariable(name: "__len", arg: 3, scope: !2302, file: !2303, line: 57, type: !162)
!2309 = !DILocation(line: 0, scope: !2302, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 39, column: 3, scope: !2289)
!2311 = !DILocation(line: 59, column: 10, scope: !2302, inlinedAt: !2310)
!2312 = !DILocation(line: 40, column: 1, scope: !2289)
!2313 = distinct !DISubprogram(name: "readlinebuffer", scope: !855, file: !855, line: 43, type: !2314, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !854, retainedNodes: !2350)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!2292, !2292, !2316}
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !2318)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !2319)
!2319 = !{!2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2318, file: !236, line: 51, baseType: !116, size: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2318, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2318, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2318, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2318, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2318, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2318, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2318, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2318, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2318, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2318, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2318, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2318, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2318, file: !236, line: 70, baseType: !2334, size: 64, offset: 832)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2318, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2318, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2318, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2318, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2318, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2318, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2318, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2318, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2318, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2318, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2318, file: !236, line: 93, baseType: !2334, size: 64, offset: 1344)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2318, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2318, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2318, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2318, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!2350 = !{!2351, !2352}
!2351 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2313, file: !855, line: 43, type: !2292)
!2352 = !DILocalVariable(name: "stream", arg: 2, scope: !2313, file: !855, line: 43, type: !2316)
!2353 = !DILocation(line: 0, scope: !2313)
!2354 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2355, file: !855, line: 59, type: !2292)
!2355 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !855, file: !855, line: 59, type: !2356, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !854, retainedNodes: !2358)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!2292, !2292, !2316, !4}
!2358 = !{!2354, !2359, !2360, !2361, !2362, !2363, !2364, !2365}
!2359 = !DILocalVariable(name: "stream", arg: 2, scope: !2355, file: !855, line: 59, type: !2316)
!2360 = !DILocalVariable(name: "delimiter", arg: 3, scope: !2355, file: !855, line: 60, type: !4)
!2361 = !DILocalVariable(name: "buffer", scope: !2355, file: !855, line: 65, type: !159)
!2362 = !DILocalVariable(name: "p", scope: !2355, file: !855, line: 66, type: !159)
!2363 = !DILocalVariable(name: "end", scope: !2355, file: !855, line: 67, type: !159)
!2364 = !DILocalVariable(name: "c", scope: !2355, file: !855, line: 68, type: !116)
!2365 = !DILocalVariable(name: "oldsize", scope: !2366, file: !855, line: 83, type: !892)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !855, line: 82, column: 9)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !855, line: 81, column: 11)
!2368 = distinct !DILexicalBlock(scope: !2355, file: !855, line: 71, column: 5)
!2369 = !DILocation(line: 0, scope: !2355, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 45, column: 10, scope: !2313)
!2371 = !DILocalVariable(name: "__stream", arg: 1, scope: !2372, file: !1340, line: 128, type: !2316)
!2372 = distinct !DISubprogram(name: "feof_unlocked", scope: !1340, file: !1340, line: 128, type: !2373, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !854, retainedNodes: !2375)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!116, !2316}
!2375 = !{!2371}
!2376 = !DILocation(line: 0, scope: !2372, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 62, column: 7, scope: !2378, inlinedAt: !2370)
!2378 = distinct !DILexicalBlock(scope: !2355, file: !855, line: 62, column: 7)
!2379 = !DILocation(line: 130, column: 10, scope: !2372, inlinedAt: !2377)
!2380 = !DILocation(line: 62, column: 7, scope: !2378, inlinedAt: !2370)
!2381 = !DILocation(line: 62, column: 7, scope: !2355, inlinedAt: !2370)
!2382 = !DILocation(line: 65, column: 30, scope: !2355, inlinedAt: !2370)
!2383 = !DILocation(line: 67, column: 36, scope: !2355, inlinedAt: !2370)
!2384 = !{!1380, !1199, i64 0}
!2385 = !DILocation(line: 67, column: 22, scope: !2355, inlinedAt: !2370)
!2386 = !DILocation(line: 70, column: 3, scope: !2355, inlinedAt: !2370)
!2387 = !DILocalVariable(name: "__fp", arg: 1, scope: !2388, file: !1340, line: 66, type: !2316)
!2388 = distinct !DISubprogram(name: "getc_unlocked", scope: !1340, file: !1340, line: 66, type: !2373, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !854, retainedNodes: !2389)
!2389 = !{!2387}
!2390 = !DILocation(line: 0, scope: !2388, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 72, column: 11, scope: !2368, inlinedAt: !2370)
!2392 = !DILocation(line: 68, column: 10, scope: !2388, inlinedAt: !2391)
!2393 = !DILocation(line: 73, column: 11, scope: !2368, inlinedAt: !2370)
!2394 = !DILocation(line: 73, column: 13, scope: !2395, inlinedAt: !2370)
!2395 = distinct !DILexicalBlock(scope: !2368, file: !855, line: 73, column: 11)
!2396 = !DILocation(line: 75, column: 17, scope: !2397, inlinedAt: !2370)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !855, line: 75, column: 15)
!2398 = distinct !DILexicalBlock(scope: !2395, file: !855, line: 74, column: 9)
!2399 = !DILocation(line: 75, column: 27, scope: !2397, inlinedAt: !2370)
!2400 = !DILocalVariable(name: "__stream", arg: 1, scope: !2401, file: !1340, line: 135, type: !2316)
!2401 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1340, file: !1340, line: 135, type: !2373, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !854, retainedNodes: !2402)
!2402 = !{!2400}
!2403 = !DILocation(line: 0, scope: !2401, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 75, column: 30, scope: !2397, inlinedAt: !2370)
!2405 = !DILocation(line: 137, column: 10, scope: !2401, inlinedAt: !2404)
!2406 = !DILocation(line: 75, column: 30, scope: !2397, inlinedAt: !2370)
!2407 = !DILocation(line: 75, column: 15, scope: !2398, inlinedAt: !2370)
!2408 = !DILocation(line: 77, column: 15, scope: !2409, inlinedAt: !2370)
!2409 = distinct !DILexicalBlock(scope: !2398, file: !855, line: 77, column: 15)
!2410 = !DILocation(line: 77, column: 21, scope: !2409, inlinedAt: !2370)
!2411 = !DILocation(line: 77, column: 15, scope: !2398, inlinedAt: !2370)
!2412 = !DILocation(line: 0, scope: !2368, inlinedAt: !2370)
!2413 = !DILocation(line: 81, column: 13, scope: !2367, inlinedAt: !2370)
!2414 = !DILocation(line: 81, column: 11, scope: !2368, inlinedAt: !2370)
!2415 = !DILocation(line: 83, column: 39, scope: !2366, inlinedAt: !2370)
!2416 = !DILocation(line: 0, scope: !2366, inlinedAt: !2370)
!2417 = !DILocation(line: 84, column: 20, scope: !2366, inlinedAt: !2370)
!2418 = !DILocation(line: 85, column: 22, scope: !2366, inlinedAt: !2370)
!2419 = !DILocation(line: 86, column: 30, scope: !2366, inlinedAt: !2370)
!2420 = !DILocation(line: 87, column: 38, scope: !2366, inlinedAt: !2370)
!2421 = !DILocation(line: 87, column: 24, scope: !2366, inlinedAt: !2370)
!2422 = !DILocation(line: 88, column: 9, scope: !2366, inlinedAt: !2370)
!2423 = !DILocation(line: 89, column: 14, scope: !2368, inlinedAt: !2370)
!2424 = !DILocation(line: 89, column: 9, scope: !2368, inlinedAt: !2370)
!2425 = !DILocation(line: 89, column: 12, scope: !2368, inlinedAt: !2370)
!2426 = !DILocation(line: 91, column: 12, scope: !2355, inlinedAt: !2370)
!2427 = !DILocation(line: 90, column: 5, scope: !2368, inlinedAt: !2370)
!2428 = distinct !{!2428, !2386, !2429, !1058}
!2429 = !DILocation(line: 91, column: 24, scope: !2355, inlinedAt: !2370)
!2430 = !DILocation(line: 93, column: 26, scope: !2355, inlinedAt: !2370)
!2431 = !DILocation(line: 93, column: 15, scope: !2355, inlinedAt: !2370)
!2432 = !DILocation(line: 93, column: 22, scope: !2355, inlinedAt: !2370)
!2433 = !DILocation(line: 94, column: 3, scope: !2355, inlinedAt: !2370)
!2434 = !DILocation(line: 45, column: 3, scope: !2313)
!2435 = !DISubprogram(name: "__uflow", scope: !1006, file: !1006, line: 885, type: !2373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!2436 = !DILocation(line: 0, scope: !2355)
!2437 = !DILocation(line: 0, scope: !2372, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 62, column: 7, scope: !2378)
!2439 = !DILocation(line: 130, column: 10, scope: !2372, inlinedAt: !2438)
!2440 = !DILocation(line: 62, column: 7, scope: !2378)
!2441 = !DILocation(line: 62, column: 7, scope: !2355)
!2442 = !DILocation(line: 65, column: 30, scope: !2355)
!2443 = !DILocation(line: 67, column: 36, scope: !2355)
!2444 = !DILocation(line: 67, column: 22, scope: !2355)
!2445 = !DILocation(line: 70, column: 3, scope: !2355)
!2446 = !DILocation(line: 0, scope: !2388, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 72, column: 11, scope: !2368)
!2448 = !DILocation(line: 68, column: 10, scope: !2388, inlinedAt: !2447)
!2449 = !DILocation(line: 73, column: 11, scope: !2368)
!2450 = !DILocation(line: 73, column: 13, scope: !2395)
!2451 = !DILocation(line: 75, column: 17, scope: !2397)
!2452 = !DILocation(line: 75, column: 27, scope: !2397)
!2453 = !DILocation(line: 0, scope: !2401, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 75, column: 30, scope: !2397)
!2455 = !DILocation(line: 137, column: 10, scope: !2401, inlinedAt: !2454)
!2456 = !DILocation(line: 75, column: 30, scope: !2397)
!2457 = !DILocation(line: 75, column: 15, scope: !2398)
!2458 = !DILocation(line: 77, column: 15, scope: !2409)
!2459 = !DILocation(line: 77, column: 21, scope: !2409)
!2460 = !DILocation(line: 77, column: 15, scope: !2398)
!2461 = !DILocation(line: 0, scope: !2368)
!2462 = !DILocation(line: 81, column: 13, scope: !2367)
!2463 = !DILocation(line: 81, column: 11, scope: !2368)
!2464 = !DILocation(line: 83, column: 39, scope: !2366)
!2465 = !DILocation(line: 0, scope: !2366)
!2466 = !DILocation(line: 84, column: 20, scope: !2366)
!2467 = !DILocation(line: 85, column: 22, scope: !2366)
!2468 = !DILocation(line: 86, column: 30, scope: !2366)
!2469 = !DILocation(line: 87, column: 38, scope: !2366)
!2470 = !DILocation(line: 87, column: 24, scope: !2366)
!2471 = !DILocation(line: 88, column: 9, scope: !2366)
!2472 = !DILocation(line: 89, column: 14, scope: !2368)
!2473 = !DILocation(line: 89, column: 9, scope: !2368)
!2474 = !DILocation(line: 89, column: 12, scope: !2368)
!2475 = !DILocation(line: 91, column: 12, scope: !2355)
!2476 = !DILocation(line: 90, column: 5, scope: !2368)
!2477 = distinct !{!2477, !2445, !2478, !1058}
!2478 = !DILocation(line: 91, column: 24, scope: !2355)
!2479 = !DILocation(line: 93, column: 26, scope: !2355)
!2480 = !DILocation(line: 93, column: 15, scope: !2355)
!2481 = !DILocation(line: 93, column: 22, scope: !2355)
!2482 = !DILocation(line: 94, column: 3, scope: !2355)
!2483 = !DILocation(line: 95, column: 1, scope: !2355)
!2484 = distinct !DISubprogram(name: "freebuffer", scope: !855, file: !855, line: 100, type: !2290, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !854, retainedNodes: !2485)
!2485 = !{!2486}
!2486 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2484, file: !855, line: 100, type: !2292)
!2487 = !DILocation(line: 0, scope: !2484)
!2488 = !DILocation(line: 102, column: 21, scope: !2484)
!2489 = !DILocation(line: 102, column: 3, scope: !2484)
!2490 = !DILocation(line: 103, column: 1, scope: !2484)
!2491 = !DISubprogram(name: "free", scope: !1024, file: !1024, line: 752, type: !2492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{null, !160}
!2494 = distinct !DISubprogram(name: "memcmp2", scope: !859, file: !859, line: 25, type: !2495, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !2497)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!116, !165, !162, !165, !162}
!2497 = !{!2498, !2499, !2500, !2501, !2502}
!2498 = !DILocalVariable(name: "s1", arg: 1, scope: !2494, file: !859, line: 25, type: !165)
!2499 = !DILocalVariable(name: "n1", arg: 2, scope: !2494, file: !859, line: 25, type: !162)
!2500 = !DILocalVariable(name: "s2", arg: 3, scope: !2494, file: !859, line: 25, type: !165)
!2501 = !DILocalVariable(name: "n2", arg: 4, scope: !2494, file: !859, line: 25, type: !162)
!2502 = !DILocalVariable(name: "cmp", scope: !2494, file: !859, line: 27, type: !116)
!2503 = !DILocation(line: 0, scope: !2494)
!2504 = !DILocation(line: 27, column: 29, scope: !2494)
!2505 = !DILocation(line: 27, column: 13, scope: !2494)
!2506 = !DILocation(line: 28, column: 11, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2494, file: !859, line: 28, column: 7)
!2508 = !DILocation(line: 28, column: 7, scope: !2494)
!2509 = !DILocation(line: 29, column: 11, scope: !2507)
!2510 = !DILocation(line: 29, column: 5, scope: !2507)
!2511 = !DILocation(line: 30, column: 3, scope: !2494)
!2512 = distinct !DISubprogram(name: "set_program_name", scope: !552, file: !552, line: 37, type: !961, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !2513)
!2513 = !{!2514, !2515, !2516}
!2514 = !DILocalVariable(name: "argv0", arg: 1, scope: !2512, file: !552, line: 37, type: !165)
!2515 = !DILocalVariable(name: "slash", scope: !2512, file: !552, line: 44, type: !165)
!2516 = !DILocalVariable(name: "base", scope: !2512, file: !552, line: 45, type: !165)
!2517 = !DILocation(line: 0, scope: !2512)
!2518 = !DILocation(line: 44, column: 23, scope: !2512)
!2519 = !DILocation(line: 45, column: 22, scope: !2512)
!2520 = !DILocation(line: 46, column: 17, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2512, file: !552, line: 46, column: 7)
!2522 = !DILocation(line: 46, column: 9, scope: !2521)
!2523 = !DILocation(line: 46, column: 25, scope: !2521)
!2524 = !DILocation(line: 46, column: 40, scope: !2521)
!2525 = !DILocalVariable(name: "__s1", arg: 1, scope: !2526, file: !1024, line: 974, type: !1160)
!2526 = distinct !DISubprogram(name: "memeq", scope: !1024, file: !1024, line: 974, type: !2527, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !2529)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!205, !1160, !1160, !162}
!2529 = !{!2525, !2530, !2531}
!2530 = !DILocalVariable(name: "__s2", arg: 2, scope: !2526, file: !1024, line: 974, type: !1160)
!2531 = !DILocalVariable(name: "__n", arg: 3, scope: !2526, file: !1024, line: 974, type: !162)
!2532 = !DILocation(line: 0, scope: !2526, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 46, column: 28, scope: !2521)
!2534 = !DILocation(line: 976, column: 11, scope: !2526, inlinedAt: !2533)
!2535 = !DILocation(line: 976, column: 10, scope: !2526, inlinedAt: !2533)
!2536 = !DILocation(line: 46, column: 7, scope: !2512)
!2537 = !DILocation(line: 49, column: 11, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !552, line: 49, column: 11)
!2539 = distinct !DILexicalBlock(scope: !2521, file: !552, line: 47, column: 5)
!2540 = !DILocation(line: 49, column: 36, scope: !2538)
!2541 = !DILocation(line: 49, column: 11, scope: !2539)
!2542 = !DILocation(line: 65, column: 16, scope: !2512)
!2543 = !DILocation(line: 71, column: 27, scope: !2512)
!2544 = !DILocation(line: 74, column: 33, scope: !2512)
!2545 = !DILocation(line: 76, column: 1, scope: !2512)
!2546 = !DISubprogram(name: "strrchr", scope: !1132, file: !1132, line: 273, type: !1147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!2547 = !DILocation(line: 0, scope: !561)
!2548 = !DILocation(line: 40, column: 29, scope: !561)
!2549 = !DILocation(line: 41, column: 19, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !561, file: !562, line: 41, column: 7)
!2551 = !DILocation(line: 41, column: 7, scope: !561)
!2552 = !DILocation(line: 47, column: 3, scope: !561)
!2553 = !DILocation(line: 48, column: 3, scope: !561)
!2554 = !DILocation(line: 48, column: 13, scope: !561)
!2555 = !DILocalVariable(name: "ps", arg: 1, scope: !2556, file: !2557, line: 1135, type: !2560)
!2556 = distinct !DISubprogram(name: "mbszero", scope: !2557, file: !2557, line: 1135, type: !2558, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2561)
!2557 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2558 = !DISubroutineType(types: !2559)
!2559 = !{null, !2560}
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!2561 = !{!2555}
!2562 = !DILocation(line: 0, scope: !2556, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 48, column: 18, scope: !561)
!2564 = !DILocalVariable(name: "__dest", arg: 1, scope: !2565, file: !2303, line: 57, type: !160)
!2565 = distinct !DISubprogram(name: "memset", scope: !2303, file: !2303, line: 57, type: !2304, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2566)
!2566 = !{!2564, !2567, !2568}
!2567 = !DILocalVariable(name: "__ch", arg: 2, scope: !2565, file: !2303, line: 57, type: !116)
!2568 = !DILocalVariable(name: "__len", arg: 3, scope: !2565, file: !2303, line: 57, type: !162)
!2569 = !DILocation(line: 0, scope: !2565, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 1137, column: 3, scope: !2556, inlinedAt: !2563)
!2571 = !DILocation(line: 59, column: 10, scope: !2565, inlinedAt: !2570)
!2572 = !DILocation(line: 49, column: 7, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !561, file: !562, line: 49, column: 7)
!2574 = !DILocation(line: 49, column: 39, scope: !2573)
!2575 = !DILocation(line: 49, column: 44, scope: !2573)
!2576 = !DILocation(line: 54, column: 1, scope: !561)
!2577 = !DISubprogram(name: "mbrtoc32", scope: !573, file: !573, line: 57, type: !2578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!162, !2580, !1001, !162, !2582}
!2580 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2581)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2560)
!2583 = distinct !DISubprogram(name: "clone_quoting_options", scope: !592, file: !592, line: 113, type: !2584, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2587)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!2586, !2586}
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!2587 = !{!2588, !2589, !2590}
!2588 = !DILocalVariable(name: "o", arg: 1, scope: !2583, file: !592, line: 113, type: !2586)
!2589 = !DILocalVariable(name: "saved_errno", scope: !2583, file: !592, line: 115, type: !116)
!2590 = !DILocalVariable(name: "p", scope: !2583, file: !592, line: 116, type: !2586)
!2591 = !DILocation(line: 0, scope: !2583)
!2592 = !DILocation(line: 115, column: 21, scope: !2583)
!2593 = !DILocation(line: 116, column: 40, scope: !2583)
!2594 = !DILocation(line: 116, column: 31, scope: !2583)
!2595 = !DILocation(line: 118, column: 9, scope: !2583)
!2596 = !DILocation(line: 119, column: 3, scope: !2583)
!2597 = distinct !DISubprogram(name: "get_quoting_style", scope: !592, file: !592, line: 124, type: !2598, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2602)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!135, !2600}
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!2602 = !{!2603}
!2603 = !DILocalVariable(name: "o", arg: 1, scope: !2597, file: !592, line: 124, type: !2600)
!2604 = !DILocation(line: 0, scope: !2597)
!2605 = !DILocation(line: 126, column: 11, scope: !2597)
!2606 = !DILocation(line: 126, column: 46, scope: !2597)
!2607 = !{!2608, !940, i64 0}
!2608 = !{!"quoting_options", !940, i64 0, !1012, i64 4, !940, i64 8, !939, i64 40, !939, i64 48}
!2609 = !DILocation(line: 126, column: 3, scope: !2597)
!2610 = distinct !DISubprogram(name: "set_quoting_style", scope: !592, file: !592, line: 132, type: !2611, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2613)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{null, !2586, !135}
!2613 = !{!2614, !2615}
!2614 = !DILocalVariable(name: "o", arg: 1, scope: !2610, file: !592, line: 132, type: !2586)
!2615 = !DILocalVariable(name: "s", arg: 2, scope: !2610, file: !592, line: 132, type: !135)
!2616 = !DILocation(line: 0, scope: !2610)
!2617 = !DILocation(line: 134, column: 4, scope: !2610)
!2618 = !DILocation(line: 134, column: 45, scope: !2610)
!2619 = !DILocation(line: 135, column: 1, scope: !2610)
!2620 = distinct !DISubprogram(name: "set_char_quoting", scope: !592, file: !592, line: 143, type: !2621, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2623)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!116, !2586, !4, !116}
!2623 = !{!2624, !2625, !2626, !2627, !2628, !2630, !2631}
!2624 = !DILocalVariable(name: "o", arg: 1, scope: !2620, file: !592, line: 143, type: !2586)
!2625 = !DILocalVariable(name: "c", arg: 2, scope: !2620, file: !592, line: 143, type: !4)
!2626 = !DILocalVariable(name: "i", arg: 3, scope: !2620, file: !592, line: 143, type: !116)
!2627 = !DILocalVariable(name: "uc", scope: !2620, file: !592, line: 145, type: !167)
!2628 = !DILocalVariable(name: "p", scope: !2620, file: !592, line: 146, type: !2629)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!2630 = !DILocalVariable(name: "shift", scope: !2620, file: !592, line: 148, type: !116)
!2631 = !DILocalVariable(name: "r", scope: !2620, file: !592, line: 149, type: !103)
!2632 = !DILocation(line: 0, scope: !2620)
!2633 = !DILocation(line: 147, column: 6, scope: !2620)
!2634 = !DILocation(line: 147, column: 41, scope: !2620)
!2635 = !DILocation(line: 147, column: 62, scope: !2620)
!2636 = !DILocation(line: 147, column: 57, scope: !2620)
!2637 = !DILocation(line: 148, column: 15, scope: !2620)
!2638 = !DILocation(line: 149, column: 21, scope: !2620)
!2639 = !DILocation(line: 149, column: 24, scope: !2620)
!2640 = !DILocation(line: 149, column: 34, scope: !2620)
!2641 = !DILocation(line: 150, column: 19, scope: !2620)
!2642 = !DILocation(line: 150, column: 24, scope: !2620)
!2643 = !DILocation(line: 150, column: 6, scope: !2620)
!2644 = !DILocation(line: 151, column: 3, scope: !2620)
!2645 = distinct !DISubprogram(name: "set_quoting_flags", scope: !592, file: !592, line: 159, type: !2646, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2648)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!116, !2586, !116}
!2648 = !{!2649, !2650, !2651}
!2649 = !DILocalVariable(name: "o", arg: 1, scope: !2645, file: !592, line: 159, type: !2586)
!2650 = !DILocalVariable(name: "i", arg: 2, scope: !2645, file: !592, line: 159, type: !116)
!2651 = !DILocalVariable(name: "r", scope: !2645, file: !592, line: 163, type: !116)
!2652 = !DILocation(line: 0, scope: !2645)
!2653 = !DILocation(line: 161, column: 8, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2645, file: !592, line: 161, column: 7)
!2655 = !DILocation(line: 161, column: 7, scope: !2645)
!2656 = !DILocation(line: 163, column: 14, scope: !2645)
!2657 = !{!2608, !1012, i64 4}
!2658 = !DILocation(line: 164, column: 12, scope: !2645)
!2659 = !DILocation(line: 165, column: 3, scope: !2645)
!2660 = distinct !DISubprogram(name: "set_custom_quoting", scope: !592, file: !592, line: 169, type: !2661, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2663)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{null, !2586, !165, !165}
!2663 = !{!2664, !2665, !2666}
!2664 = !DILocalVariable(name: "o", arg: 1, scope: !2660, file: !592, line: 169, type: !2586)
!2665 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2660, file: !592, line: 170, type: !165)
!2666 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2660, file: !592, line: 170, type: !165)
!2667 = !DILocation(line: 0, scope: !2660)
!2668 = !DILocation(line: 172, column: 8, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2660, file: !592, line: 172, column: 7)
!2670 = !DILocation(line: 172, column: 7, scope: !2660)
!2671 = !DILocation(line: 174, column: 12, scope: !2660)
!2672 = !DILocation(line: 175, column: 8, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2660, file: !592, line: 175, column: 7)
!2674 = !DILocation(line: 175, column: 19, scope: !2673)
!2675 = !DILocation(line: 176, column: 5, scope: !2673)
!2676 = !DILocation(line: 177, column: 6, scope: !2660)
!2677 = !DILocation(line: 177, column: 17, scope: !2660)
!2678 = !{!2608, !939, i64 40}
!2679 = !DILocation(line: 178, column: 6, scope: !2660)
!2680 = !DILocation(line: 178, column: 18, scope: !2660)
!2681 = !{!2608, !939, i64 48}
!2682 = !DILocation(line: 179, column: 1, scope: !2660)
!2683 = !DISubprogram(name: "abort", scope: !1136, file: !1136, line: 598, type: !544, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !995)
!2684 = distinct !DISubprogram(name: "quotearg_buffer", scope: !592, file: !592, line: 774, type: !2685, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2687)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!162, !159, !162, !165, !162, !2600}
!2687 = !{!2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695}
!2688 = !DILocalVariable(name: "buffer", arg: 1, scope: !2684, file: !592, line: 774, type: !159)
!2689 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2684, file: !592, line: 774, type: !162)
!2690 = !DILocalVariable(name: "arg", arg: 3, scope: !2684, file: !592, line: 775, type: !165)
!2691 = !DILocalVariable(name: "argsize", arg: 4, scope: !2684, file: !592, line: 775, type: !162)
!2692 = !DILocalVariable(name: "o", arg: 5, scope: !2684, file: !592, line: 776, type: !2600)
!2693 = !DILocalVariable(name: "p", scope: !2684, file: !592, line: 778, type: !2600)
!2694 = !DILocalVariable(name: "saved_errno", scope: !2684, file: !592, line: 779, type: !116)
!2695 = !DILocalVariable(name: "r", scope: !2684, file: !592, line: 780, type: !162)
!2696 = !DILocation(line: 0, scope: !2684)
!2697 = !DILocation(line: 778, column: 37, scope: !2684)
!2698 = !DILocation(line: 779, column: 21, scope: !2684)
!2699 = !DILocation(line: 781, column: 43, scope: !2684)
!2700 = !DILocation(line: 781, column: 53, scope: !2684)
!2701 = !DILocation(line: 781, column: 63, scope: !2684)
!2702 = !DILocation(line: 782, column: 43, scope: !2684)
!2703 = !DILocation(line: 782, column: 58, scope: !2684)
!2704 = !DILocation(line: 780, column: 14, scope: !2684)
!2705 = !DILocation(line: 783, column: 9, scope: !2684)
!2706 = !DILocation(line: 784, column: 3, scope: !2684)
!2707 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !592, file: !592, line: 251, type: !2708, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2712)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!162, !159, !162, !165, !162, !135, !116, !2710, !165, !165}
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!2712 = !{!2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2737, !2739, !2742, !2743, !2744, !2745, !2748, !2749, !2752, !2756, !2757, !2765, !2768, !2769, !2771, !2772, !2773, !2774}
!2713 = !DILocalVariable(name: "buffer", arg: 1, scope: !2707, file: !592, line: 251, type: !159)
!2714 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2707, file: !592, line: 251, type: !162)
!2715 = !DILocalVariable(name: "arg", arg: 3, scope: !2707, file: !592, line: 252, type: !165)
!2716 = !DILocalVariable(name: "argsize", arg: 4, scope: !2707, file: !592, line: 252, type: !162)
!2717 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2707, file: !592, line: 253, type: !135)
!2718 = !DILocalVariable(name: "flags", arg: 6, scope: !2707, file: !592, line: 253, type: !116)
!2719 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2707, file: !592, line: 254, type: !2710)
!2720 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2707, file: !592, line: 255, type: !165)
!2721 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2707, file: !592, line: 256, type: !165)
!2722 = !DILocalVariable(name: "unibyte_locale", scope: !2707, file: !592, line: 258, type: !205)
!2723 = !DILocalVariable(name: "len", scope: !2707, file: !592, line: 260, type: !162)
!2724 = !DILocalVariable(name: "orig_buffersize", scope: !2707, file: !592, line: 261, type: !162)
!2725 = !DILocalVariable(name: "quote_string", scope: !2707, file: !592, line: 262, type: !165)
!2726 = !DILocalVariable(name: "quote_string_len", scope: !2707, file: !592, line: 263, type: !162)
!2727 = !DILocalVariable(name: "backslash_escapes", scope: !2707, file: !592, line: 264, type: !205)
!2728 = !DILocalVariable(name: "elide_outer_quotes", scope: !2707, file: !592, line: 265, type: !205)
!2729 = !DILocalVariable(name: "encountered_single_quote", scope: !2707, file: !592, line: 266, type: !205)
!2730 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2707, file: !592, line: 267, type: !205)
!2731 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2707, file: !592, line: 309, type: !205)
!2732 = !DILocalVariable(name: "lq", scope: !2733, file: !592, line: 361, type: !165)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !592, line: 361, column: 11)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !592, line: 360, column: 13)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !592, line: 333, column: 7)
!2736 = distinct !DILexicalBlock(scope: !2707, file: !592, line: 312, column: 5)
!2737 = !DILocalVariable(name: "i", scope: !2738, file: !592, line: 395, type: !162)
!2738 = distinct !DILexicalBlock(scope: !2707, file: !592, line: 395, column: 3)
!2739 = !DILocalVariable(name: "is_right_quote", scope: !2740, file: !592, line: 397, type: !205)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !592, line: 396, column: 5)
!2741 = distinct !DILexicalBlock(scope: !2738, file: !592, line: 395, column: 3)
!2742 = !DILocalVariable(name: "escaping", scope: !2740, file: !592, line: 398, type: !205)
!2743 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2740, file: !592, line: 399, type: !205)
!2744 = !DILocalVariable(name: "c", scope: !2740, file: !592, line: 417, type: !167)
!2745 = !DILocalVariable(name: "m", scope: !2746, file: !592, line: 598, type: !162)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !592, line: 596, column: 11)
!2747 = distinct !DILexicalBlock(scope: !2740, file: !592, line: 419, column: 9)
!2748 = !DILocalVariable(name: "printable", scope: !2746, file: !592, line: 600, type: !205)
!2749 = !DILocalVariable(name: "mbs", scope: !2750, file: !592, line: 609, type: !665)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !592, line: 608, column: 15)
!2751 = distinct !DILexicalBlock(scope: !2746, file: !592, line: 602, column: 17)
!2752 = !DILocalVariable(name: "w", scope: !2753, file: !592, line: 618, type: !572)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !592, line: 617, column: 19)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !592, line: 616, column: 17)
!2755 = distinct !DILexicalBlock(scope: !2750, file: !592, line: 616, column: 17)
!2756 = !DILocalVariable(name: "bytes", scope: !2753, file: !592, line: 619, type: !162)
!2757 = !DILocalVariable(name: "j", scope: !2758, file: !592, line: 648, type: !162)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !592, line: 648, column: 29)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !592, line: 647, column: 27)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !592, line: 645, column: 29)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !592, line: 636, column: 23)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !592, line: 628, column: 30)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !592, line: 623, column: 30)
!2764 = distinct !DILexicalBlock(scope: !2753, file: !592, line: 621, column: 25)
!2765 = !DILocalVariable(name: "ilim", scope: !2766, file: !592, line: 674, type: !162)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !592, line: 671, column: 15)
!2767 = distinct !DILexicalBlock(scope: !2746, file: !592, line: 670, column: 17)
!2768 = !DILabel(scope: !2707, name: "process_input", file: !592, line: 308)
!2769 = !DILabel(scope: !2770, name: "c_and_shell_escape", file: !592, line: 502)
!2770 = distinct !DILexicalBlock(scope: !2747, file: !592, line: 478, column: 9)
!2771 = !DILabel(scope: !2770, name: "c_escape", file: !592, line: 507)
!2772 = !DILabel(scope: !2740, name: "store_escape", file: !592, line: 709)
!2773 = !DILabel(scope: !2740, name: "store_c", file: !592, line: 712)
!2774 = !DILabel(scope: !2707, name: "force_outer_quoting_style", file: !592, line: 753)
!2775 = !DILocation(line: 0, scope: !2707)
!2776 = !DILocation(line: 258, column: 25, scope: !2707)
!2777 = !DILocation(line: 258, column: 36, scope: !2707)
!2778 = !DILocation(line: 265, column: 8, scope: !2707)
!2779 = !DILocation(line: 267, column: 3, scope: !2707)
!2780 = !DILocation(line: 261, column: 10, scope: !2707)
!2781 = !DILocation(line: 262, column: 15, scope: !2707)
!2782 = !DILocation(line: 263, column: 10, scope: !2707)
!2783 = !DILocation(line: 264, column: 8, scope: !2707)
!2784 = !DILocation(line: 266, column: 8, scope: !2707)
!2785 = !DILocation(line: 267, column: 8, scope: !2707)
!2786 = !DILocation(line: 308, column: 2, scope: !2707)
!2787 = !DILocation(line: 311, column: 3, scope: !2707)
!2788 = !DILocation(line: 318, column: 11, scope: !2736)
!2789 = !DILocation(line: 318, column: 12, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2736, file: !592, line: 318, column: 11)
!2791 = !DILocation(line: 319, column: 9, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !592, line: 319, column: 9)
!2793 = distinct !DILexicalBlock(scope: !2790, file: !592, line: 319, column: 9)
!2794 = !DILocation(line: 319, column: 9, scope: !2793)
!2795 = !DILocation(line: 0, scope: !656, inlinedAt: !2796)
!2796 = distinct !DILocation(line: 357, column: 26, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !592, line: 335, column: 11)
!2798 = distinct !DILexicalBlock(scope: !2735, file: !592, line: 334, column: 13)
!2799 = !DILocation(line: 199, column: 29, scope: !656, inlinedAt: !2796)
!2800 = !DILocation(line: 201, column: 19, scope: !2801, inlinedAt: !2796)
!2801 = distinct !DILexicalBlock(scope: !656, file: !592, line: 201, column: 7)
!2802 = !DILocation(line: 201, column: 7, scope: !656, inlinedAt: !2796)
!2803 = !DILocation(line: 229, column: 3, scope: !656, inlinedAt: !2796)
!2804 = !DILocation(line: 230, column: 3, scope: !656, inlinedAt: !2796)
!2805 = !DILocation(line: 230, column: 13, scope: !656, inlinedAt: !2796)
!2806 = !DILocalVariable(name: "ps", arg: 1, scope: !2807, file: !2557, line: 1135, type: !2810)
!2807 = distinct !DISubprogram(name: "mbszero", scope: !2557, file: !2557, line: 1135, type: !2808, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2811)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{null, !2810}
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!2811 = !{!2806}
!2812 = !DILocation(line: 0, scope: !2807, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 230, column: 18, scope: !656, inlinedAt: !2796)
!2814 = !DILocalVariable(name: "__dest", arg: 1, scope: !2815, file: !2303, line: 57, type: !160)
!2815 = distinct !DISubprogram(name: "memset", scope: !2303, file: !2303, line: 57, type: !2304, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2816)
!2816 = !{!2814, !2817, !2818}
!2817 = !DILocalVariable(name: "__ch", arg: 2, scope: !2815, file: !2303, line: 57, type: !116)
!2818 = !DILocalVariable(name: "__len", arg: 3, scope: !2815, file: !2303, line: 57, type: !162)
!2819 = !DILocation(line: 0, scope: !2815, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 1137, column: 3, scope: !2807, inlinedAt: !2813)
!2821 = !DILocation(line: 59, column: 10, scope: !2815, inlinedAt: !2820)
!2822 = !DILocation(line: 231, column: 7, scope: !2823, inlinedAt: !2796)
!2823 = distinct !DILexicalBlock(scope: !656, file: !592, line: 231, column: 7)
!2824 = !DILocation(line: 231, column: 40, scope: !2823, inlinedAt: !2796)
!2825 = !DILocation(line: 231, column: 45, scope: !2823, inlinedAt: !2796)
!2826 = !DILocation(line: 235, column: 1, scope: !656, inlinedAt: !2796)
!2827 = !DILocation(line: 0, scope: !656, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 358, column: 27, scope: !2797)
!2829 = !DILocation(line: 199, column: 29, scope: !656, inlinedAt: !2828)
!2830 = !DILocation(line: 201, column: 19, scope: !2801, inlinedAt: !2828)
!2831 = !DILocation(line: 201, column: 7, scope: !656, inlinedAt: !2828)
!2832 = !DILocation(line: 229, column: 3, scope: !656, inlinedAt: !2828)
!2833 = !DILocation(line: 230, column: 3, scope: !656, inlinedAt: !2828)
!2834 = !DILocation(line: 230, column: 13, scope: !656, inlinedAt: !2828)
!2835 = !DILocation(line: 0, scope: !2807, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 230, column: 18, scope: !656, inlinedAt: !2828)
!2837 = !DILocation(line: 0, scope: !2815, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 1137, column: 3, scope: !2807, inlinedAt: !2836)
!2839 = !DILocation(line: 59, column: 10, scope: !2815, inlinedAt: !2838)
!2840 = !DILocation(line: 231, column: 7, scope: !2823, inlinedAt: !2828)
!2841 = !DILocation(line: 231, column: 40, scope: !2823, inlinedAt: !2828)
!2842 = !DILocation(line: 231, column: 45, scope: !2823, inlinedAt: !2828)
!2843 = !DILocation(line: 235, column: 1, scope: !656, inlinedAt: !2828)
!2844 = !DILocation(line: 360, column: 14, scope: !2734)
!2845 = !DILocation(line: 360, column: 13, scope: !2735)
!2846 = !DILocation(line: 0, scope: !2733)
!2847 = !DILocation(line: 361, column: 45, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2733, file: !592, line: 361, column: 11)
!2849 = !DILocation(line: 361, column: 11, scope: !2733)
!2850 = !DILocation(line: 362, column: 13, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !592, line: 362, column: 13)
!2852 = distinct !DILexicalBlock(scope: !2848, file: !592, line: 362, column: 13)
!2853 = !DILocation(line: 362, column: 13, scope: !2852)
!2854 = !DILocation(line: 361, column: 52, scope: !2848)
!2855 = distinct !{!2855, !2849, !2856, !1058}
!2856 = !DILocation(line: 362, column: 13, scope: !2733)
!2857 = !DILocation(line: 260, column: 10, scope: !2707)
!2858 = !DILocation(line: 365, column: 28, scope: !2735)
!2859 = !DILocation(line: 367, column: 7, scope: !2736)
!2860 = !DILocation(line: 370, column: 7, scope: !2736)
!2861 = !DILocation(line: 373, column: 7, scope: !2736)
!2862 = !DILocation(line: 376, column: 12, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2736, file: !592, line: 376, column: 11)
!2864 = !DILocation(line: 376, column: 11, scope: !2736)
!2865 = !DILocation(line: 381, column: 12, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2736, file: !592, line: 381, column: 11)
!2867 = !DILocation(line: 381, column: 11, scope: !2736)
!2868 = !DILocation(line: 382, column: 9, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !592, line: 382, column: 9)
!2870 = distinct !DILexicalBlock(scope: !2866, file: !592, line: 382, column: 9)
!2871 = !DILocation(line: 382, column: 9, scope: !2870)
!2872 = !DILocation(line: 389, column: 7, scope: !2736)
!2873 = !DILocation(line: 392, column: 7, scope: !2736)
!2874 = !DILocation(line: 0, scope: !2738)
!2875 = !DILocation(line: 395, column: 8, scope: !2738)
!2876 = !DILocation(line: 309, column: 8, scope: !2707)
!2877 = !DILocation(line: 395, scope: !2738)
!2878 = !DILocation(line: 395, column: 34, scope: !2741)
!2879 = !DILocation(line: 395, column: 26, scope: !2741)
!2880 = !DILocation(line: 395, column: 48, scope: !2741)
!2881 = !DILocation(line: 395, column: 55, scope: !2741)
!2882 = !DILocation(line: 395, column: 3, scope: !2738)
!2883 = !DILocation(line: 395, column: 67, scope: !2741)
!2884 = !DILocation(line: 0, scope: !2740)
!2885 = !DILocation(line: 402, column: 11, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2740, file: !592, line: 401, column: 11)
!2887 = !DILocation(line: 404, column: 17, scope: !2886)
!2888 = !DILocation(line: 405, column: 39, scope: !2886)
!2889 = !DILocation(line: 409, column: 32, scope: !2886)
!2890 = !DILocation(line: 405, column: 19, scope: !2886)
!2891 = !DILocation(line: 405, column: 15, scope: !2886)
!2892 = !DILocation(line: 410, column: 11, scope: !2886)
!2893 = !DILocation(line: 410, column: 25, scope: !2886)
!2894 = !DILocalVariable(name: "__s1", arg: 1, scope: !2895, file: !1024, line: 974, type: !1160)
!2895 = distinct !DISubprogram(name: "memeq", scope: !1024, file: !1024, line: 974, type: !2527, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !2896)
!2896 = !{!2894, !2897, !2898}
!2897 = !DILocalVariable(name: "__s2", arg: 2, scope: !2895, file: !1024, line: 974, type: !1160)
!2898 = !DILocalVariable(name: "__n", arg: 3, scope: !2895, file: !1024, line: 974, type: !162)
!2899 = !DILocation(line: 0, scope: !2895, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 410, column: 14, scope: !2886)
!2901 = !DILocation(line: 976, column: 11, scope: !2895, inlinedAt: !2900)
!2902 = !DILocation(line: 976, column: 10, scope: !2895, inlinedAt: !2900)
!2903 = !DILocation(line: 401, column: 11, scope: !2740)
!2904 = !DILocation(line: 417, column: 25, scope: !2740)
!2905 = !DILocation(line: 418, column: 7, scope: !2740)
!2906 = !DILocation(line: 421, column: 15, scope: !2747)
!2907 = !DILocation(line: 423, column: 15, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !592, line: 423, column: 15)
!2909 = distinct !DILexicalBlock(scope: !2910, file: !592, line: 422, column: 13)
!2910 = distinct !DILexicalBlock(scope: !2747, file: !592, line: 421, column: 15)
!2911 = !DILocation(line: 423, column: 15, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2908, file: !592, line: 423, column: 15)
!2913 = !DILocation(line: 423, column: 15, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !592, line: 423, column: 15)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !592, line: 423, column: 15)
!2916 = distinct !DILexicalBlock(scope: !2912, file: !592, line: 423, column: 15)
!2917 = !DILocation(line: 423, column: 15, scope: !2915)
!2918 = !DILocation(line: 423, column: 15, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !592, line: 423, column: 15)
!2920 = distinct !DILexicalBlock(scope: !2916, file: !592, line: 423, column: 15)
!2921 = !DILocation(line: 423, column: 15, scope: !2920)
!2922 = !DILocation(line: 423, column: 15, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !592, line: 423, column: 15)
!2924 = distinct !DILexicalBlock(scope: !2916, file: !592, line: 423, column: 15)
!2925 = !DILocation(line: 423, column: 15, scope: !2924)
!2926 = !DILocation(line: 423, column: 15, scope: !2916)
!2927 = !DILocation(line: 423, column: 15, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !592, line: 423, column: 15)
!2929 = distinct !DILexicalBlock(scope: !2908, file: !592, line: 423, column: 15)
!2930 = !DILocation(line: 423, column: 15, scope: !2929)
!2931 = !DILocation(line: 431, column: 19, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2909, file: !592, line: 430, column: 19)
!2933 = !DILocation(line: 431, column: 24, scope: !2932)
!2934 = !DILocation(line: 431, column: 28, scope: !2932)
!2935 = !DILocation(line: 431, column: 38, scope: !2932)
!2936 = !DILocation(line: 431, column: 48, scope: !2932)
!2937 = !DILocation(line: 431, column: 59, scope: !2932)
!2938 = !DILocation(line: 433, column: 19, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !592, line: 433, column: 19)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !592, line: 433, column: 19)
!2941 = distinct !DILexicalBlock(scope: !2932, file: !592, line: 432, column: 17)
!2942 = !DILocation(line: 433, column: 19, scope: !2940)
!2943 = !DILocation(line: 434, column: 19, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !592, line: 434, column: 19)
!2945 = distinct !DILexicalBlock(scope: !2941, file: !592, line: 434, column: 19)
!2946 = !DILocation(line: 434, column: 19, scope: !2945)
!2947 = !DILocation(line: 435, column: 17, scope: !2941)
!2948 = !DILocation(line: 442, column: 20, scope: !2910)
!2949 = !DILocation(line: 447, column: 11, scope: !2747)
!2950 = !DILocation(line: 450, column: 19, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2747, file: !592, line: 448, column: 13)
!2952 = !DILocation(line: 456, column: 19, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2951, file: !592, line: 455, column: 19)
!2954 = !DILocation(line: 456, column: 24, scope: !2953)
!2955 = !DILocation(line: 456, column: 28, scope: !2953)
!2956 = !DILocation(line: 456, column: 38, scope: !2953)
!2957 = !DILocation(line: 456, column: 47, scope: !2953)
!2958 = !DILocation(line: 456, column: 41, scope: !2953)
!2959 = !DILocation(line: 456, column: 52, scope: !2953)
!2960 = !DILocation(line: 455, column: 19, scope: !2951)
!2961 = !DILocation(line: 457, column: 25, scope: !2953)
!2962 = !DILocation(line: 457, column: 17, scope: !2953)
!2963 = !DILocation(line: 464, column: 25, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2953, file: !592, line: 458, column: 19)
!2965 = !DILocation(line: 468, column: 21, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !592, line: 468, column: 21)
!2967 = distinct !DILexicalBlock(scope: !2964, file: !592, line: 468, column: 21)
!2968 = !DILocation(line: 468, column: 21, scope: !2967)
!2969 = !DILocation(line: 469, column: 21, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !592, line: 469, column: 21)
!2971 = distinct !DILexicalBlock(scope: !2964, file: !592, line: 469, column: 21)
!2972 = !DILocation(line: 469, column: 21, scope: !2971)
!2973 = !DILocation(line: 470, column: 21, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !592, line: 470, column: 21)
!2975 = distinct !DILexicalBlock(scope: !2964, file: !592, line: 470, column: 21)
!2976 = !DILocation(line: 470, column: 21, scope: !2975)
!2977 = !DILocation(line: 471, column: 21, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !592, line: 471, column: 21)
!2979 = distinct !DILexicalBlock(scope: !2964, file: !592, line: 471, column: 21)
!2980 = !DILocation(line: 471, column: 21, scope: !2979)
!2981 = !DILocation(line: 472, column: 21, scope: !2964)
!2982 = !DILocation(line: 482, column: 33, scope: !2770)
!2983 = !DILocation(line: 483, column: 33, scope: !2770)
!2984 = !DILocation(line: 485, column: 33, scope: !2770)
!2985 = !DILocation(line: 486, column: 33, scope: !2770)
!2986 = !DILocation(line: 487, column: 33, scope: !2770)
!2987 = !DILocation(line: 490, column: 17, scope: !2770)
!2988 = !DILocation(line: 492, column: 21, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !592, line: 491, column: 15)
!2990 = distinct !DILexicalBlock(scope: !2770, file: !592, line: 490, column: 17)
!2991 = !DILocation(line: 499, column: 35, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2770, file: !592, line: 499, column: 17)
!2993 = !DILocation(line: 499, column: 57, scope: !2992)
!2994 = !DILocation(line: 0, scope: !2770)
!2995 = !DILocation(line: 502, column: 11, scope: !2770)
!2996 = !DILocation(line: 504, column: 17, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2770, file: !592, line: 503, column: 17)
!2998 = !DILocation(line: 507, column: 11, scope: !2770)
!2999 = !DILocation(line: 508, column: 17, scope: !2770)
!3000 = !DILocation(line: 517, column: 15, scope: !2747)
!3001 = !DILocation(line: 517, column: 40, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2747, file: !592, line: 517, column: 15)
!3003 = !DILocation(line: 517, column: 47, scope: !3002)
!3004 = !DILocation(line: 517, column: 18, scope: !3002)
!3005 = !DILocation(line: 521, column: 17, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2747, file: !592, line: 521, column: 15)
!3007 = !DILocation(line: 521, column: 15, scope: !2747)
!3008 = !DILocation(line: 525, column: 11, scope: !2747)
!3009 = !DILocation(line: 537, column: 15, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2747, file: !592, line: 536, column: 15)
!3011 = !DILocation(line: 544, column: 15, scope: !2747)
!3012 = !DILocation(line: 546, column: 19, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !592, line: 545, column: 13)
!3014 = distinct !DILexicalBlock(scope: !2747, file: !592, line: 544, column: 15)
!3015 = !DILocation(line: 549, column: 19, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3013, file: !592, line: 549, column: 19)
!3017 = !DILocation(line: 549, column: 30, scope: !3016)
!3018 = !DILocation(line: 558, column: 15, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !592, line: 558, column: 15)
!3020 = distinct !DILexicalBlock(scope: !3013, file: !592, line: 558, column: 15)
!3021 = !DILocation(line: 558, column: 15, scope: !3020)
!3022 = !DILocation(line: 559, column: 15, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !592, line: 559, column: 15)
!3024 = distinct !DILexicalBlock(scope: !3013, file: !592, line: 559, column: 15)
!3025 = !DILocation(line: 559, column: 15, scope: !3024)
!3026 = !DILocation(line: 560, column: 15, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !592, line: 560, column: 15)
!3028 = distinct !DILexicalBlock(scope: !3013, file: !592, line: 560, column: 15)
!3029 = !DILocation(line: 560, column: 15, scope: !3028)
!3030 = !DILocation(line: 562, column: 13, scope: !3013)
!3031 = !DILocation(line: 602, column: 17, scope: !2746)
!3032 = !DILocation(line: 0, scope: !2746)
!3033 = !DILocation(line: 605, column: 29, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !2751, file: !592, line: 603, column: 15)
!3035 = !DILocation(line: 605, column: 27, scope: !3034)
!3036 = !DILocation(line: 668, column: 40, scope: !2746)
!3037 = !DILocation(line: 670, column: 23, scope: !2767)
!3038 = !DILocation(line: 609, column: 17, scope: !2750)
!3039 = !DILocation(line: 609, column: 27, scope: !2750)
!3040 = !DILocation(line: 0, scope: !2807, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 609, column: 32, scope: !2750)
!3042 = !DILocation(line: 0, scope: !2815, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 1137, column: 3, scope: !2807, inlinedAt: !3041)
!3044 = !DILocation(line: 59, column: 10, scope: !2815, inlinedAt: !3043)
!3045 = !DILocation(line: 613, column: 29, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !2750, file: !592, line: 613, column: 21)
!3047 = !DILocation(line: 613, column: 21, scope: !2750)
!3048 = !DILocation(line: 614, column: 29, scope: !3046)
!3049 = !DILocation(line: 614, column: 19, scope: !3046)
!3050 = !DILocation(line: 618, column: 21, scope: !2753)
!3051 = !DILocation(line: 620, column: 54, scope: !2753)
!3052 = !DILocation(line: 0, scope: !2753)
!3053 = !DILocation(line: 619, column: 36, scope: !2753)
!3054 = !DILocation(line: 621, column: 25, scope: !2753)
!3055 = !DILocation(line: 631, column: 38, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !2762, file: !592, line: 629, column: 23)
!3057 = !DILocation(line: 631, column: 48, scope: !3056)
!3058 = !DILocation(line: 665, column: 19, scope: !2754)
!3059 = !DILocation(line: 666, column: 15, scope: !2751)
!3060 = !DILocation(line: 626, column: 25, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !2763, file: !592, line: 624, column: 23)
!3062 = !DILocation(line: 631, column: 51, scope: !3056)
!3063 = !DILocation(line: 631, column: 25, scope: !3056)
!3064 = !DILocation(line: 632, column: 28, scope: !3056)
!3065 = !DILocation(line: 631, column: 34, scope: !3056)
!3066 = distinct !{!3066, !3063, !3064, !1058}
!3067 = !DILocation(line: 646, column: 29, scope: !2760)
!3068 = !DILocation(line: 0, scope: !2758)
!3069 = !DILocation(line: 649, column: 49, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !2758, file: !592, line: 648, column: 29)
!3071 = !DILocation(line: 649, column: 39, scope: !3070)
!3072 = !DILocation(line: 649, column: 31, scope: !3070)
!3073 = !DILocation(line: 648, column: 60, scope: !3070)
!3074 = !DILocation(line: 648, column: 50, scope: !3070)
!3075 = !DILocation(line: 648, column: 29, scope: !2758)
!3076 = distinct !{!3076, !3075, !3077, !1058}
!3077 = !DILocation(line: 654, column: 33, scope: !2758)
!3078 = !DILocation(line: 657, column: 43, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !2761, file: !592, line: 657, column: 29)
!3080 = !DILocalVariable(name: "wc", arg: 1, scope: !3081, file: !3082, line: 865, type: !3085)
!3081 = distinct !DISubprogram(name: "c32isprint", scope: !3082, file: !3082, line: 865, type: !3083, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3087)
!3082 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!116, !3085}
!3085 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3086, line: 20, baseType: !103)
!3086 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3087 = !{!3080}
!3088 = !DILocation(line: 0, scope: !3081, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 657, column: 31, scope: !3079)
!3090 = !DILocation(line: 871, column: 10, scope: !3081, inlinedAt: !3089)
!3091 = !DILocation(line: 657, column: 31, scope: !3079)
!3092 = !DILocation(line: 657, column: 29, scope: !2761)
!3093 = !DILocation(line: 664, column: 23, scope: !2753)
!3094 = !DILocation(line: 670, column: 19, scope: !2767)
!3095 = !DILocation(line: 670, column: 45, scope: !2767)
!3096 = !DILocation(line: 674, column: 33, scope: !2766)
!3097 = !DILocation(line: 0, scope: !2766)
!3098 = !DILocation(line: 676, column: 17, scope: !2766)
!3099 = !DILocation(line: 398, column: 12, scope: !2740)
!3100 = !DILocation(line: 678, column: 43, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !592, line: 678, column: 25)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !592, line: 677, column: 19)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !592, line: 676, column: 17)
!3104 = distinct !DILexicalBlock(scope: !2766, file: !592, line: 676, column: 17)
!3105 = !DILocation(line: 680, column: 25, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !592, line: 680, column: 25)
!3107 = distinct !DILexicalBlock(scope: !3101, file: !592, line: 679, column: 23)
!3108 = !DILocation(line: 680, column: 25, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3106, file: !592, line: 680, column: 25)
!3110 = !DILocation(line: 680, column: 25, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !592, line: 680, column: 25)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !592, line: 680, column: 25)
!3113 = distinct !DILexicalBlock(scope: !3109, file: !592, line: 680, column: 25)
!3114 = !DILocation(line: 680, column: 25, scope: !3112)
!3115 = !DILocation(line: 680, column: 25, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !592, line: 680, column: 25)
!3117 = distinct !DILexicalBlock(scope: !3113, file: !592, line: 680, column: 25)
!3118 = !DILocation(line: 680, column: 25, scope: !3117)
!3119 = !DILocation(line: 680, column: 25, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !592, line: 680, column: 25)
!3121 = distinct !DILexicalBlock(scope: !3113, file: !592, line: 680, column: 25)
!3122 = !DILocation(line: 680, column: 25, scope: !3121)
!3123 = !DILocation(line: 680, column: 25, scope: !3113)
!3124 = !DILocation(line: 680, column: 25, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !592, line: 680, column: 25)
!3126 = distinct !DILexicalBlock(scope: !3106, file: !592, line: 680, column: 25)
!3127 = !DILocation(line: 680, column: 25, scope: !3126)
!3128 = !DILocation(line: 681, column: 25, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !592, line: 681, column: 25)
!3130 = distinct !DILexicalBlock(scope: !3107, file: !592, line: 681, column: 25)
!3131 = !DILocation(line: 681, column: 25, scope: !3130)
!3132 = !DILocation(line: 682, column: 25, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !592, line: 682, column: 25)
!3134 = distinct !DILexicalBlock(scope: !3107, file: !592, line: 682, column: 25)
!3135 = !DILocation(line: 682, column: 25, scope: !3134)
!3136 = !DILocation(line: 683, column: 38, scope: !3107)
!3137 = !DILocation(line: 683, column: 33, scope: !3107)
!3138 = !DILocation(line: 684, column: 23, scope: !3107)
!3139 = !DILocation(line: 685, column: 30, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3101, file: !592, line: 685, column: 30)
!3141 = !DILocation(line: 685, column: 30, scope: !3101)
!3142 = !DILocation(line: 687, column: 25, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !592, line: 687, column: 25)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !592, line: 687, column: 25)
!3145 = distinct !DILexicalBlock(scope: !3140, file: !592, line: 686, column: 23)
!3146 = !DILocation(line: 687, column: 25, scope: !3144)
!3147 = !DILocation(line: 689, column: 23, scope: !3145)
!3148 = !DILocation(line: 690, column: 35, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3102, file: !592, line: 690, column: 25)
!3150 = !DILocation(line: 690, column: 30, scope: !3149)
!3151 = !DILocation(line: 690, column: 25, scope: !3102)
!3152 = !DILocation(line: 692, column: 21, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !592, line: 692, column: 21)
!3154 = distinct !DILexicalBlock(scope: !3102, file: !592, line: 692, column: 21)
!3155 = !DILocation(line: 692, column: 21, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !592, line: 692, column: 21)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !592, line: 692, column: 21)
!3158 = distinct !DILexicalBlock(scope: !3153, file: !592, line: 692, column: 21)
!3159 = !DILocation(line: 692, column: 21, scope: !3157)
!3160 = !DILocation(line: 692, column: 21, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !592, line: 692, column: 21)
!3162 = distinct !DILexicalBlock(scope: !3158, file: !592, line: 692, column: 21)
!3163 = !DILocation(line: 692, column: 21, scope: !3162)
!3164 = !DILocation(line: 692, column: 21, scope: !3158)
!3165 = !DILocation(line: 0, scope: !3102)
!3166 = !DILocation(line: 693, column: 21, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !592, line: 693, column: 21)
!3168 = distinct !DILexicalBlock(scope: !3102, file: !592, line: 693, column: 21)
!3169 = !DILocation(line: 693, column: 21, scope: !3168)
!3170 = !DILocation(line: 694, column: 25, scope: !3102)
!3171 = !DILocation(line: 676, column: 17, scope: !3103)
!3172 = distinct !{!3172, !3173, !3174}
!3173 = !DILocation(line: 676, column: 17, scope: !3104)
!3174 = !DILocation(line: 695, column: 19, scope: !3104)
!3175 = !DILocation(line: 409, column: 30, scope: !2886)
!3176 = !DILocation(line: 702, column: 34, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !2740, file: !592, line: 702, column: 11)
!3178 = !DILocation(line: 704, column: 14, scope: !3177)
!3179 = !DILocation(line: 705, column: 14, scope: !3177)
!3180 = !DILocation(line: 705, column: 35, scope: !3177)
!3181 = !DILocation(line: 705, column: 17, scope: !3177)
!3182 = !DILocation(line: 705, column: 47, scope: !3177)
!3183 = !DILocation(line: 705, column: 65, scope: !3177)
!3184 = !DILocation(line: 706, column: 11, scope: !3177)
!3185 = !DILocation(line: 702, column: 11, scope: !2740)
!3186 = !DILocation(line: 395, column: 15, scope: !2738)
!3187 = !DILocation(line: 709, column: 5, scope: !2740)
!3188 = !DILocation(line: 710, column: 7, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !2740, file: !592, line: 710, column: 7)
!3190 = !DILocation(line: 710, column: 7, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3189, file: !592, line: 710, column: 7)
!3192 = !DILocation(line: 710, column: 7, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !592, line: 710, column: 7)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !592, line: 710, column: 7)
!3195 = distinct !DILexicalBlock(scope: !3191, file: !592, line: 710, column: 7)
!3196 = !DILocation(line: 710, column: 7, scope: !3194)
!3197 = !DILocation(line: 710, column: 7, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !592, line: 710, column: 7)
!3199 = distinct !DILexicalBlock(scope: !3195, file: !592, line: 710, column: 7)
!3200 = !DILocation(line: 710, column: 7, scope: !3199)
!3201 = !DILocation(line: 710, column: 7, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !592, line: 710, column: 7)
!3203 = distinct !DILexicalBlock(scope: !3195, file: !592, line: 710, column: 7)
!3204 = !DILocation(line: 710, column: 7, scope: !3203)
!3205 = !DILocation(line: 710, column: 7, scope: !3195)
!3206 = !DILocation(line: 710, column: 7, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !592, line: 710, column: 7)
!3208 = distinct !DILexicalBlock(scope: !3189, file: !592, line: 710, column: 7)
!3209 = !DILocation(line: 710, column: 7, scope: !3208)
!3210 = !DILocation(line: 712, column: 5, scope: !2740)
!3211 = !DILocation(line: 713, column: 7, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !592, line: 713, column: 7)
!3213 = distinct !DILexicalBlock(scope: !2740, file: !592, line: 713, column: 7)
!3214 = !DILocation(line: 417, column: 21, scope: !2740)
!3215 = !DILocation(line: 713, column: 7, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !592, line: 713, column: 7)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !592, line: 713, column: 7)
!3218 = distinct !DILexicalBlock(scope: !3212, file: !592, line: 713, column: 7)
!3219 = !DILocation(line: 713, column: 7, scope: !3217)
!3220 = !DILocation(line: 713, column: 7, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !592, line: 713, column: 7)
!3222 = distinct !DILexicalBlock(scope: !3218, file: !592, line: 713, column: 7)
!3223 = !DILocation(line: 713, column: 7, scope: !3222)
!3224 = !DILocation(line: 713, column: 7, scope: !3218)
!3225 = !DILocation(line: 714, column: 7, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !592, line: 714, column: 7)
!3227 = distinct !DILexicalBlock(scope: !2740, file: !592, line: 714, column: 7)
!3228 = !DILocation(line: 714, column: 7, scope: !3227)
!3229 = !DILocation(line: 716, column: 13, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !2740, file: !592, line: 716, column: 11)
!3231 = !DILocation(line: 716, column: 11, scope: !2740)
!3232 = !DILocation(line: 718, column: 5, scope: !2741)
!3233 = !DILocation(line: 395, column: 82, scope: !2741)
!3234 = !DILocation(line: 395, column: 3, scope: !2741)
!3235 = distinct !{!3235, !2882, !3236, !1058}
!3236 = !DILocation(line: 718, column: 5, scope: !2738)
!3237 = !DILocation(line: 720, column: 11, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !2707, file: !592, line: 720, column: 7)
!3239 = !DILocation(line: 720, column: 16, scope: !3238)
!3240 = !DILocation(line: 728, column: 51, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !2707, file: !592, line: 728, column: 7)
!3242 = !DILocation(line: 731, column: 11, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !592, line: 731, column: 11)
!3244 = distinct !DILexicalBlock(scope: !3241, file: !592, line: 730, column: 5)
!3245 = !DILocation(line: 731, column: 11, scope: !3244)
!3246 = !DILocation(line: 732, column: 16, scope: !3243)
!3247 = !DILocation(line: 732, column: 9, scope: !3243)
!3248 = !DILocation(line: 736, column: 18, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3243, file: !592, line: 736, column: 16)
!3250 = !DILocation(line: 736, column: 29, scope: !3249)
!3251 = !DILocation(line: 745, column: 7, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !2707, file: !592, line: 745, column: 7)
!3253 = !DILocation(line: 745, column: 20, scope: !3252)
!3254 = !DILocation(line: 746, column: 12, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !592, line: 746, column: 5)
!3256 = distinct !DILexicalBlock(scope: !3252, file: !592, line: 746, column: 5)
!3257 = !DILocation(line: 746, column: 5, scope: !3256)
!3258 = !DILocation(line: 747, column: 7, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !592, line: 747, column: 7)
!3260 = distinct !DILexicalBlock(scope: !3255, file: !592, line: 747, column: 7)
!3261 = !DILocation(line: 747, column: 7, scope: !3260)
!3262 = !DILocation(line: 746, column: 39, scope: !3255)
!3263 = distinct !{!3263, !3257, !3264, !1058}
!3264 = !DILocation(line: 747, column: 7, scope: !3256)
!3265 = !DILocation(line: 749, column: 11, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !2707, file: !592, line: 749, column: 7)
!3267 = !DILocation(line: 749, column: 7, scope: !2707)
!3268 = !DILocation(line: 750, column: 5, scope: !3266)
!3269 = !DILocation(line: 750, column: 17, scope: !3266)
!3270 = !DILocation(line: 753, column: 2, scope: !2707)
!3271 = !DILocation(line: 756, column: 51, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !2707, file: !592, line: 756, column: 7)
!3273 = !DILocation(line: 756, column: 21, scope: !3272)
!3274 = !DILocation(line: 760, column: 42, scope: !2707)
!3275 = !DILocation(line: 758, column: 10, scope: !2707)
!3276 = !DILocation(line: 758, column: 3, scope: !2707)
!3277 = !DILocation(line: 762, column: 1, scope: !2707)
!3278 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1136, file: !1136, line: 98, type: !3279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!162}
!3281 = !DISubprogram(name: "iswprint", scope: !3282, file: !3282, line: 120, type: !3083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!3282 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3283 = distinct !DISubprogram(name: "quotearg_alloc", scope: !592, file: !592, line: 788, type: !3284, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!159, !165, !162, !2600}
!3286 = !{!3287, !3288, !3289}
!3287 = !DILocalVariable(name: "arg", arg: 1, scope: !3283, file: !592, line: 788, type: !165)
!3288 = !DILocalVariable(name: "argsize", arg: 2, scope: !3283, file: !592, line: 788, type: !162)
!3289 = !DILocalVariable(name: "o", arg: 3, scope: !3283, file: !592, line: 789, type: !2600)
!3290 = !DILocation(line: 0, scope: !3283)
!3291 = !DILocalVariable(name: "arg", arg: 1, scope: !3292, file: !592, line: 801, type: !165)
!3292 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !592, file: !592, line: 801, type: !3293, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3295)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!159, !165, !162, !879, !2600}
!3295 = !{!3291, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303}
!3296 = !DILocalVariable(name: "argsize", arg: 2, scope: !3292, file: !592, line: 801, type: !162)
!3297 = !DILocalVariable(name: "size", arg: 3, scope: !3292, file: !592, line: 801, type: !879)
!3298 = !DILocalVariable(name: "o", arg: 4, scope: !3292, file: !592, line: 802, type: !2600)
!3299 = !DILocalVariable(name: "p", scope: !3292, file: !592, line: 804, type: !2600)
!3300 = !DILocalVariable(name: "saved_errno", scope: !3292, file: !592, line: 805, type: !116)
!3301 = !DILocalVariable(name: "flags", scope: !3292, file: !592, line: 807, type: !116)
!3302 = !DILocalVariable(name: "bufsize", scope: !3292, file: !592, line: 808, type: !162)
!3303 = !DILocalVariable(name: "buf", scope: !3292, file: !592, line: 812, type: !159)
!3304 = !DILocation(line: 0, scope: !3292, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 791, column: 10, scope: !3283)
!3306 = !DILocation(line: 804, column: 37, scope: !3292, inlinedAt: !3305)
!3307 = !DILocation(line: 805, column: 21, scope: !3292, inlinedAt: !3305)
!3308 = !DILocation(line: 807, column: 18, scope: !3292, inlinedAt: !3305)
!3309 = !DILocation(line: 807, column: 24, scope: !3292, inlinedAt: !3305)
!3310 = !DILocation(line: 808, column: 72, scope: !3292, inlinedAt: !3305)
!3311 = !DILocation(line: 809, column: 56, scope: !3292, inlinedAt: !3305)
!3312 = !DILocation(line: 810, column: 49, scope: !3292, inlinedAt: !3305)
!3313 = !DILocation(line: 811, column: 49, scope: !3292, inlinedAt: !3305)
!3314 = !DILocation(line: 808, column: 20, scope: !3292, inlinedAt: !3305)
!3315 = !DILocation(line: 811, column: 62, scope: !3292, inlinedAt: !3305)
!3316 = !DILocation(line: 812, column: 15, scope: !3292, inlinedAt: !3305)
!3317 = !DILocation(line: 813, column: 60, scope: !3292, inlinedAt: !3305)
!3318 = !DILocation(line: 815, column: 32, scope: !3292, inlinedAt: !3305)
!3319 = !DILocation(line: 815, column: 47, scope: !3292, inlinedAt: !3305)
!3320 = !DILocation(line: 813, column: 3, scope: !3292, inlinedAt: !3305)
!3321 = !DILocation(line: 816, column: 9, scope: !3292, inlinedAt: !3305)
!3322 = !DILocation(line: 791, column: 3, scope: !3283)
!3323 = !DILocation(line: 0, scope: !3292)
!3324 = !DILocation(line: 804, column: 37, scope: !3292)
!3325 = !DILocation(line: 805, column: 21, scope: !3292)
!3326 = !DILocation(line: 807, column: 18, scope: !3292)
!3327 = !DILocation(line: 807, column: 27, scope: !3292)
!3328 = !DILocation(line: 807, column: 24, scope: !3292)
!3329 = !DILocation(line: 808, column: 72, scope: !3292)
!3330 = !DILocation(line: 809, column: 56, scope: !3292)
!3331 = !DILocation(line: 810, column: 49, scope: !3292)
!3332 = !DILocation(line: 811, column: 49, scope: !3292)
!3333 = !DILocation(line: 808, column: 20, scope: !3292)
!3334 = !DILocation(line: 811, column: 62, scope: !3292)
!3335 = !DILocation(line: 812, column: 15, scope: !3292)
!3336 = !DILocation(line: 813, column: 60, scope: !3292)
!3337 = !DILocation(line: 815, column: 32, scope: !3292)
!3338 = !DILocation(line: 815, column: 47, scope: !3292)
!3339 = !DILocation(line: 813, column: 3, scope: !3292)
!3340 = !DILocation(line: 816, column: 9, scope: !3292)
!3341 = !DILocation(line: 817, column: 7, scope: !3292)
!3342 = !DILocation(line: 818, column: 11, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3292, file: !592, line: 817, column: 7)
!3344 = !DILocation(line: 818, column: 5, scope: !3343)
!3345 = !DILocation(line: 819, column: 3, scope: !3292)
!3346 = distinct !DISubprogram(name: "quotearg_free", scope: !592, file: !592, line: 837, type: !544, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3347)
!3347 = !{!3348, !3349}
!3348 = !DILocalVariable(name: "sv", scope: !3346, file: !592, line: 839, type: !679)
!3349 = !DILocalVariable(name: "i", scope: !3350, file: !592, line: 840, type: !116)
!3350 = distinct !DILexicalBlock(scope: !3346, file: !592, line: 840, column: 3)
!3351 = !DILocation(line: 839, column: 24, scope: !3346)
!3352 = !DILocation(line: 0, scope: !3346)
!3353 = !DILocation(line: 0, scope: !3350)
!3354 = !DILocation(line: 840, column: 21, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3350, file: !592, line: 840, column: 3)
!3356 = !DILocation(line: 840, column: 3, scope: !3350)
!3357 = !DILocation(line: 842, column: 13, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3346, file: !592, line: 842, column: 7)
!3359 = !{!3360, !939, i64 8}
!3360 = !{!"slotvec", !1199, i64 0, !939, i64 8}
!3361 = !DILocation(line: 842, column: 17, scope: !3358)
!3362 = !DILocation(line: 842, column: 7, scope: !3346)
!3363 = !DILocation(line: 841, column: 17, scope: !3355)
!3364 = !DILocation(line: 841, column: 5, scope: !3355)
!3365 = !DILocation(line: 840, column: 32, scope: !3355)
!3366 = distinct !{!3366, !3356, !3367, !1058}
!3367 = !DILocation(line: 841, column: 20, scope: !3350)
!3368 = !DILocation(line: 844, column: 7, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3358, file: !592, line: 843, column: 5)
!3370 = !DILocation(line: 845, column: 21, scope: !3369)
!3371 = !{!3360, !1199, i64 0}
!3372 = !DILocation(line: 846, column: 20, scope: !3369)
!3373 = !DILocation(line: 847, column: 5, scope: !3369)
!3374 = !DILocation(line: 848, column: 10, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3346, file: !592, line: 848, column: 7)
!3376 = !DILocation(line: 848, column: 7, scope: !3346)
!3377 = !DILocation(line: 850, column: 7, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3375, file: !592, line: 849, column: 5)
!3379 = !DILocation(line: 851, column: 15, scope: !3378)
!3380 = !DILocation(line: 852, column: 5, scope: !3378)
!3381 = !DILocation(line: 853, column: 10, scope: !3346)
!3382 = !DILocation(line: 854, column: 1, scope: !3346)
!3383 = distinct !DISubprogram(name: "quotearg_n", scope: !592, file: !592, line: 919, type: !1129, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3384)
!3384 = !{!3385, !3386}
!3385 = !DILocalVariable(name: "n", arg: 1, scope: !3383, file: !592, line: 919, type: !116)
!3386 = !DILocalVariable(name: "arg", arg: 2, scope: !3383, file: !592, line: 919, type: !165)
!3387 = !DILocation(line: 0, scope: !3383)
!3388 = !DILocation(line: 921, column: 10, scope: !3383)
!3389 = !DILocation(line: 921, column: 3, scope: !3383)
!3390 = distinct !DISubprogram(name: "quotearg_n_options", scope: !592, file: !592, line: 866, type: !3391, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3393)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!159, !116, !165, !162, !2600}
!3393 = !{!3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3404, !3405, !3407, !3408, !3409}
!3394 = !DILocalVariable(name: "n", arg: 1, scope: !3390, file: !592, line: 866, type: !116)
!3395 = !DILocalVariable(name: "arg", arg: 2, scope: !3390, file: !592, line: 866, type: !165)
!3396 = !DILocalVariable(name: "argsize", arg: 3, scope: !3390, file: !592, line: 866, type: !162)
!3397 = !DILocalVariable(name: "options", arg: 4, scope: !3390, file: !592, line: 867, type: !2600)
!3398 = !DILocalVariable(name: "saved_errno", scope: !3390, file: !592, line: 869, type: !116)
!3399 = !DILocalVariable(name: "sv", scope: !3390, file: !592, line: 871, type: !679)
!3400 = !DILocalVariable(name: "nslots_max", scope: !3390, file: !592, line: 873, type: !116)
!3401 = !DILocalVariable(name: "preallocated", scope: !3402, file: !592, line: 879, type: !205)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !592, line: 878, column: 5)
!3403 = distinct !DILexicalBlock(scope: !3390, file: !592, line: 877, column: 7)
!3404 = !DILocalVariable(name: "new_nslots", scope: !3402, file: !592, line: 880, type: !892)
!3405 = !DILocalVariable(name: "size", scope: !3406, file: !592, line: 891, type: !162)
!3406 = distinct !DILexicalBlock(scope: !3390, file: !592, line: 890, column: 3)
!3407 = !DILocalVariable(name: "val", scope: !3406, file: !592, line: 892, type: !159)
!3408 = !DILocalVariable(name: "flags", scope: !3406, file: !592, line: 894, type: !116)
!3409 = !DILocalVariable(name: "qsize", scope: !3406, file: !592, line: 895, type: !162)
!3410 = !DILocation(line: 0, scope: !3390)
!3411 = !DILocation(line: 869, column: 21, scope: !3390)
!3412 = !DILocation(line: 871, column: 24, scope: !3390)
!3413 = !DILocation(line: 874, column: 17, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3390, file: !592, line: 874, column: 7)
!3415 = !DILocation(line: 875, column: 5, scope: !3414)
!3416 = !DILocation(line: 877, column: 7, scope: !3403)
!3417 = !DILocation(line: 877, column: 14, scope: !3403)
!3418 = !DILocation(line: 877, column: 7, scope: !3390)
!3419 = !DILocation(line: 879, column: 31, scope: !3402)
!3420 = !DILocation(line: 0, scope: !3402)
!3421 = !DILocation(line: 880, column: 7, scope: !3402)
!3422 = !DILocation(line: 880, column: 26, scope: !3402)
!3423 = !DILocation(line: 880, column: 13, scope: !3402)
!3424 = !DILocation(line: 882, column: 31, scope: !3402)
!3425 = !DILocation(line: 883, column: 33, scope: !3402)
!3426 = !DILocation(line: 883, column: 42, scope: !3402)
!3427 = !DILocation(line: 883, column: 31, scope: !3402)
!3428 = !DILocation(line: 882, column: 22, scope: !3402)
!3429 = !DILocation(line: 882, column: 15, scope: !3402)
!3430 = !DILocation(line: 884, column: 11, scope: !3402)
!3431 = !DILocation(line: 885, column: 15, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3402, file: !592, line: 884, column: 11)
!3433 = !{i64 0, i64 8, !1198, i64 8, i64 8, !938}
!3434 = !DILocation(line: 885, column: 9, scope: !3432)
!3435 = !DILocation(line: 886, column: 20, scope: !3402)
!3436 = !DILocation(line: 886, column: 18, scope: !3402)
!3437 = !DILocation(line: 886, column: 32, scope: !3402)
!3438 = !DILocation(line: 886, column: 43, scope: !3402)
!3439 = !DILocation(line: 886, column: 53, scope: !3402)
!3440 = !DILocation(line: 0, scope: !2815, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 886, column: 7, scope: !3402)
!3442 = !DILocation(line: 59, column: 10, scope: !2815, inlinedAt: !3441)
!3443 = !DILocation(line: 887, column: 16, scope: !3402)
!3444 = !DILocation(line: 887, column: 14, scope: !3402)
!3445 = !DILocation(line: 888, column: 5, scope: !3403)
!3446 = !DILocation(line: 888, column: 5, scope: !3402)
!3447 = !DILocation(line: 891, column: 19, scope: !3406)
!3448 = !DILocation(line: 891, column: 25, scope: !3406)
!3449 = !DILocation(line: 0, scope: !3406)
!3450 = !DILocation(line: 892, column: 23, scope: !3406)
!3451 = !DILocation(line: 894, column: 26, scope: !3406)
!3452 = !DILocation(line: 894, column: 32, scope: !3406)
!3453 = !DILocation(line: 896, column: 55, scope: !3406)
!3454 = !DILocation(line: 897, column: 55, scope: !3406)
!3455 = !DILocation(line: 898, column: 55, scope: !3406)
!3456 = !DILocation(line: 899, column: 55, scope: !3406)
!3457 = !DILocation(line: 895, column: 20, scope: !3406)
!3458 = !DILocation(line: 901, column: 14, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3406, file: !592, line: 901, column: 9)
!3460 = !DILocation(line: 901, column: 9, scope: !3406)
!3461 = !DILocation(line: 903, column: 35, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3459, file: !592, line: 902, column: 7)
!3463 = !DILocation(line: 903, column: 20, scope: !3462)
!3464 = !DILocation(line: 904, column: 17, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3462, file: !592, line: 904, column: 13)
!3466 = !DILocation(line: 904, column: 13, scope: !3462)
!3467 = !DILocation(line: 905, column: 11, scope: !3465)
!3468 = !DILocation(line: 906, column: 27, scope: !3462)
!3469 = !DILocation(line: 906, column: 19, scope: !3462)
!3470 = !DILocation(line: 907, column: 69, scope: !3462)
!3471 = !DILocation(line: 909, column: 44, scope: !3462)
!3472 = !DILocation(line: 910, column: 44, scope: !3462)
!3473 = !DILocation(line: 907, column: 9, scope: !3462)
!3474 = !DILocation(line: 911, column: 7, scope: !3462)
!3475 = !DILocation(line: 913, column: 11, scope: !3406)
!3476 = !DILocation(line: 914, column: 5, scope: !3406)
!3477 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !592, file: !592, line: 925, type: !3478, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3480)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!159, !116, !165, !162}
!3480 = !{!3481, !3482, !3483}
!3481 = !DILocalVariable(name: "n", arg: 1, scope: !3477, file: !592, line: 925, type: !116)
!3482 = !DILocalVariable(name: "arg", arg: 2, scope: !3477, file: !592, line: 925, type: !165)
!3483 = !DILocalVariable(name: "argsize", arg: 3, scope: !3477, file: !592, line: 925, type: !162)
!3484 = !DILocation(line: 0, scope: !3477)
!3485 = !DILocation(line: 927, column: 10, scope: !3477)
!3486 = !DILocation(line: 927, column: 3, scope: !3477)
!3487 = distinct !DISubprogram(name: "quotearg", scope: !592, file: !592, line: 931, type: !1138, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3488)
!3488 = !{!3489}
!3489 = !DILocalVariable(name: "arg", arg: 1, scope: !3487, file: !592, line: 931, type: !165)
!3490 = !DILocation(line: 0, scope: !3487)
!3491 = !DILocation(line: 0, scope: !3383, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 933, column: 10, scope: !3487)
!3493 = !DILocation(line: 921, column: 10, scope: !3383, inlinedAt: !3492)
!3494 = !DILocation(line: 933, column: 3, scope: !3487)
!3495 = distinct !DISubprogram(name: "quotearg_mem", scope: !592, file: !592, line: 937, type: !3496, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3498)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!159, !165, !162}
!3498 = !{!3499, !3500}
!3499 = !DILocalVariable(name: "arg", arg: 1, scope: !3495, file: !592, line: 937, type: !165)
!3500 = !DILocalVariable(name: "argsize", arg: 2, scope: !3495, file: !592, line: 937, type: !162)
!3501 = !DILocation(line: 0, scope: !3495)
!3502 = !DILocation(line: 0, scope: !3477, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 939, column: 10, scope: !3495)
!3504 = !DILocation(line: 927, column: 10, scope: !3477, inlinedAt: !3503)
!3505 = !DILocation(line: 939, column: 3, scope: !3495)
!3506 = distinct !DISubprogram(name: "quotearg_n_style", scope: !592, file: !592, line: 943, type: !3507, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3509)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!159, !116, !135, !165}
!3509 = !{!3510, !3511, !3512, !3513}
!3510 = !DILocalVariable(name: "n", arg: 1, scope: !3506, file: !592, line: 943, type: !116)
!3511 = !DILocalVariable(name: "s", arg: 2, scope: !3506, file: !592, line: 943, type: !135)
!3512 = !DILocalVariable(name: "arg", arg: 3, scope: !3506, file: !592, line: 943, type: !165)
!3513 = !DILocalVariable(name: "o", scope: !3506, file: !592, line: 945, type: !2601)
!3514 = !DILocation(line: 0, scope: !3506)
!3515 = !DILocation(line: 945, column: 3, scope: !3506)
!3516 = !DILocation(line: 945, column: 32, scope: !3506)
!3517 = !{!3518}
!3518 = distinct !{!3518, !3519, !"quoting_options_from_style: argument 0"}
!3519 = distinct !{!3519, !"quoting_options_from_style"}
!3520 = !DILocation(line: 945, column: 36, scope: !3506)
!3521 = !DILocalVariable(name: "style", arg: 1, scope: !3522, file: !592, line: 183, type: !135)
!3522 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !592, file: !592, line: 183, type: !3523, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3525)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!631, !135}
!3525 = !{!3521, !3526}
!3526 = !DILocalVariable(name: "o", scope: !3522, file: !592, line: 185, type: !631)
!3527 = !DILocation(line: 0, scope: !3522, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 945, column: 36, scope: !3506)
!3529 = !DILocation(line: 185, column: 26, scope: !3522, inlinedAt: !3528)
!3530 = !DILocation(line: 186, column: 13, scope: !3531, inlinedAt: !3528)
!3531 = distinct !DILexicalBlock(scope: !3522, file: !592, line: 186, column: 7)
!3532 = !DILocation(line: 186, column: 7, scope: !3522, inlinedAt: !3528)
!3533 = !DILocation(line: 187, column: 5, scope: !3531, inlinedAt: !3528)
!3534 = !DILocation(line: 188, column: 11, scope: !3522, inlinedAt: !3528)
!3535 = !DILocation(line: 946, column: 10, scope: !3506)
!3536 = !DILocation(line: 947, column: 1, scope: !3506)
!3537 = !DILocation(line: 946, column: 3, scope: !3506)
!3538 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !592, file: !592, line: 950, type: !3539, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3541)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!159, !116, !135, !165, !162}
!3541 = !{!3542, !3543, !3544, !3545, !3546}
!3542 = !DILocalVariable(name: "n", arg: 1, scope: !3538, file: !592, line: 950, type: !116)
!3543 = !DILocalVariable(name: "s", arg: 2, scope: !3538, file: !592, line: 950, type: !135)
!3544 = !DILocalVariable(name: "arg", arg: 3, scope: !3538, file: !592, line: 951, type: !165)
!3545 = !DILocalVariable(name: "argsize", arg: 4, scope: !3538, file: !592, line: 951, type: !162)
!3546 = !DILocalVariable(name: "o", scope: !3538, file: !592, line: 953, type: !2601)
!3547 = !DILocation(line: 0, scope: !3538)
!3548 = !DILocation(line: 953, column: 3, scope: !3538)
!3549 = !DILocation(line: 953, column: 32, scope: !3538)
!3550 = !{!3551}
!3551 = distinct !{!3551, !3552, !"quoting_options_from_style: argument 0"}
!3552 = distinct !{!3552, !"quoting_options_from_style"}
!3553 = !DILocation(line: 953, column: 36, scope: !3538)
!3554 = !DILocation(line: 0, scope: !3522, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 953, column: 36, scope: !3538)
!3556 = !DILocation(line: 185, column: 26, scope: !3522, inlinedAt: !3555)
!3557 = !DILocation(line: 186, column: 13, scope: !3531, inlinedAt: !3555)
!3558 = !DILocation(line: 186, column: 7, scope: !3522, inlinedAt: !3555)
!3559 = !DILocation(line: 187, column: 5, scope: !3531, inlinedAt: !3555)
!3560 = !DILocation(line: 188, column: 11, scope: !3522, inlinedAt: !3555)
!3561 = !DILocation(line: 954, column: 10, scope: !3538)
!3562 = !DILocation(line: 955, column: 1, scope: !3538)
!3563 = !DILocation(line: 954, column: 3, scope: !3538)
!3564 = distinct !DISubprogram(name: "quotearg_style", scope: !592, file: !592, line: 958, type: !3565, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3567)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!159, !135, !165}
!3567 = !{!3568, !3569}
!3568 = !DILocalVariable(name: "s", arg: 1, scope: !3564, file: !592, line: 958, type: !135)
!3569 = !DILocalVariable(name: "arg", arg: 2, scope: !3564, file: !592, line: 958, type: !165)
!3570 = !DILocation(line: 0, scope: !3564)
!3571 = !DILocation(line: 0, scope: !3506, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 960, column: 10, scope: !3564)
!3573 = !DILocation(line: 945, column: 3, scope: !3506, inlinedAt: !3572)
!3574 = !DILocation(line: 945, column: 32, scope: !3506, inlinedAt: !3572)
!3575 = !{!3576}
!3576 = distinct !{!3576, !3577, !"quoting_options_from_style: argument 0"}
!3577 = distinct !{!3577, !"quoting_options_from_style"}
!3578 = !DILocation(line: 945, column: 36, scope: !3506, inlinedAt: !3572)
!3579 = !DILocation(line: 0, scope: !3522, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 945, column: 36, scope: !3506, inlinedAt: !3572)
!3581 = !DILocation(line: 185, column: 26, scope: !3522, inlinedAt: !3580)
!3582 = !DILocation(line: 186, column: 13, scope: !3531, inlinedAt: !3580)
!3583 = !DILocation(line: 186, column: 7, scope: !3522, inlinedAt: !3580)
!3584 = !DILocation(line: 187, column: 5, scope: !3531, inlinedAt: !3580)
!3585 = !DILocation(line: 188, column: 11, scope: !3522, inlinedAt: !3580)
!3586 = !DILocation(line: 946, column: 10, scope: !3506, inlinedAt: !3572)
!3587 = !DILocation(line: 947, column: 1, scope: !3506, inlinedAt: !3572)
!3588 = !DILocation(line: 960, column: 3, scope: !3564)
!3589 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !592, file: !592, line: 964, type: !3590, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3592)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!159, !135, !165, !162}
!3592 = !{!3593, !3594, !3595}
!3593 = !DILocalVariable(name: "s", arg: 1, scope: !3589, file: !592, line: 964, type: !135)
!3594 = !DILocalVariable(name: "arg", arg: 2, scope: !3589, file: !592, line: 964, type: !165)
!3595 = !DILocalVariable(name: "argsize", arg: 3, scope: !3589, file: !592, line: 964, type: !162)
!3596 = !DILocation(line: 0, scope: !3589)
!3597 = !DILocation(line: 0, scope: !3538, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 966, column: 10, scope: !3589)
!3599 = !DILocation(line: 953, column: 3, scope: !3538, inlinedAt: !3598)
!3600 = !DILocation(line: 953, column: 32, scope: !3538, inlinedAt: !3598)
!3601 = !{!3602}
!3602 = distinct !{!3602, !3603, !"quoting_options_from_style: argument 0"}
!3603 = distinct !{!3603, !"quoting_options_from_style"}
!3604 = !DILocation(line: 953, column: 36, scope: !3538, inlinedAt: !3598)
!3605 = !DILocation(line: 0, scope: !3522, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 953, column: 36, scope: !3538, inlinedAt: !3598)
!3607 = !DILocation(line: 185, column: 26, scope: !3522, inlinedAt: !3606)
!3608 = !DILocation(line: 186, column: 13, scope: !3531, inlinedAt: !3606)
!3609 = !DILocation(line: 186, column: 7, scope: !3522, inlinedAt: !3606)
!3610 = !DILocation(line: 187, column: 5, scope: !3531, inlinedAt: !3606)
!3611 = !DILocation(line: 188, column: 11, scope: !3522, inlinedAt: !3606)
!3612 = !DILocation(line: 954, column: 10, scope: !3538, inlinedAt: !3598)
!3613 = !DILocation(line: 955, column: 1, scope: !3538, inlinedAt: !3598)
!3614 = !DILocation(line: 966, column: 3, scope: !3589)
!3615 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !592, file: !592, line: 970, type: !3616, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3618)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!159, !165, !162, !4}
!3618 = !{!3619, !3620, !3621, !3622}
!3619 = !DILocalVariable(name: "arg", arg: 1, scope: !3615, file: !592, line: 970, type: !165)
!3620 = !DILocalVariable(name: "argsize", arg: 2, scope: !3615, file: !592, line: 970, type: !162)
!3621 = !DILocalVariable(name: "ch", arg: 3, scope: !3615, file: !592, line: 970, type: !4)
!3622 = !DILocalVariable(name: "options", scope: !3615, file: !592, line: 972, type: !631)
!3623 = !DILocation(line: 0, scope: !3615)
!3624 = !DILocation(line: 972, column: 3, scope: !3615)
!3625 = !DILocation(line: 972, column: 26, scope: !3615)
!3626 = !DILocation(line: 973, column: 13, scope: !3615)
!3627 = !{i64 0, i64 4, !1020, i64 4, i64 4, !1011, i64 8, i64 32, !1020, i64 40, i64 8, !938, i64 48, i64 8, !938}
!3628 = !DILocation(line: 0, scope: !2620, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 974, column: 3, scope: !3615)
!3630 = !DILocation(line: 147, column: 41, scope: !2620, inlinedAt: !3629)
!3631 = !DILocation(line: 147, column: 62, scope: !2620, inlinedAt: !3629)
!3632 = !DILocation(line: 147, column: 57, scope: !2620, inlinedAt: !3629)
!3633 = !DILocation(line: 148, column: 15, scope: !2620, inlinedAt: !3629)
!3634 = !DILocation(line: 149, column: 21, scope: !2620, inlinedAt: !3629)
!3635 = !DILocation(line: 149, column: 24, scope: !2620, inlinedAt: !3629)
!3636 = !DILocation(line: 150, column: 19, scope: !2620, inlinedAt: !3629)
!3637 = !DILocation(line: 150, column: 24, scope: !2620, inlinedAt: !3629)
!3638 = !DILocation(line: 150, column: 6, scope: !2620, inlinedAt: !3629)
!3639 = !DILocation(line: 975, column: 10, scope: !3615)
!3640 = !DILocation(line: 976, column: 1, scope: !3615)
!3641 = !DILocation(line: 975, column: 3, scope: !3615)
!3642 = distinct !DISubprogram(name: "quotearg_char", scope: !592, file: !592, line: 979, type: !3643, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3645)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!159, !165, !4}
!3645 = !{!3646, !3647}
!3646 = !DILocalVariable(name: "arg", arg: 1, scope: !3642, file: !592, line: 979, type: !165)
!3647 = !DILocalVariable(name: "ch", arg: 2, scope: !3642, file: !592, line: 979, type: !4)
!3648 = !DILocation(line: 0, scope: !3642)
!3649 = !DILocation(line: 0, scope: !3615, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 981, column: 10, scope: !3642)
!3651 = !DILocation(line: 972, column: 3, scope: !3615, inlinedAt: !3650)
!3652 = !DILocation(line: 972, column: 26, scope: !3615, inlinedAt: !3650)
!3653 = !DILocation(line: 973, column: 13, scope: !3615, inlinedAt: !3650)
!3654 = !DILocation(line: 0, scope: !2620, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 974, column: 3, scope: !3615, inlinedAt: !3650)
!3656 = !DILocation(line: 147, column: 41, scope: !2620, inlinedAt: !3655)
!3657 = !DILocation(line: 147, column: 62, scope: !2620, inlinedAt: !3655)
!3658 = !DILocation(line: 147, column: 57, scope: !2620, inlinedAt: !3655)
!3659 = !DILocation(line: 148, column: 15, scope: !2620, inlinedAt: !3655)
!3660 = !DILocation(line: 149, column: 21, scope: !2620, inlinedAt: !3655)
!3661 = !DILocation(line: 149, column: 24, scope: !2620, inlinedAt: !3655)
!3662 = !DILocation(line: 150, column: 19, scope: !2620, inlinedAt: !3655)
!3663 = !DILocation(line: 150, column: 24, scope: !2620, inlinedAt: !3655)
!3664 = !DILocation(line: 150, column: 6, scope: !2620, inlinedAt: !3655)
!3665 = !DILocation(line: 975, column: 10, scope: !3615, inlinedAt: !3650)
!3666 = !DILocation(line: 976, column: 1, scope: !3615, inlinedAt: !3650)
!3667 = !DILocation(line: 981, column: 3, scope: !3642)
!3668 = distinct !DISubprogram(name: "quotearg_colon", scope: !592, file: !592, line: 985, type: !1138, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3669)
!3669 = !{!3670}
!3670 = !DILocalVariable(name: "arg", arg: 1, scope: !3668, file: !592, line: 985, type: !165)
!3671 = !DILocation(line: 0, scope: !3668)
!3672 = !DILocation(line: 0, scope: !3642, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 987, column: 10, scope: !3668)
!3674 = !DILocation(line: 0, scope: !3615, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 981, column: 10, scope: !3642, inlinedAt: !3673)
!3676 = !DILocation(line: 972, column: 3, scope: !3615, inlinedAt: !3675)
!3677 = !DILocation(line: 972, column: 26, scope: !3615, inlinedAt: !3675)
!3678 = !DILocation(line: 973, column: 13, scope: !3615, inlinedAt: !3675)
!3679 = !DILocation(line: 0, scope: !2620, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 974, column: 3, scope: !3615, inlinedAt: !3675)
!3681 = !DILocation(line: 147, column: 57, scope: !2620, inlinedAt: !3680)
!3682 = !DILocation(line: 149, column: 21, scope: !2620, inlinedAt: !3680)
!3683 = !DILocation(line: 150, column: 6, scope: !2620, inlinedAt: !3680)
!3684 = !DILocation(line: 975, column: 10, scope: !3615, inlinedAt: !3675)
!3685 = !DILocation(line: 976, column: 1, scope: !3615, inlinedAt: !3675)
!3686 = !DILocation(line: 987, column: 3, scope: !3668)
!3687 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !592, file: !592, line: 991, type: !3496, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3688)
!3688 = !{!3689, !3690}
!3689 = !DILocalVariable(name: "arg", arg: 1, scope: !3687, file: !592, line: 991, type: !165)
!3690 = !DILocalVariable(name: "argsize", arg: 2, scope: !3687, file: !592, line: 991, type: !162)
!3691 = !DILocation(line: 0, scope: !3687)
!3692 = !DILocation(line: 0, scope: !3615, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 993, column: 10, scope: !3687)
!3694 = !DILocation(line: 972, column: 3, scope: !3615, inlinedAt: !3693)
!3695 = !DILocation(line: 972, column: 26, scope: !3615, inlinedAt: !3693)
!3696 = !DILocation(line: 973, column: 13, scope: !3615, inlinedAt: !3693)
!3697 = !DILocation(line: 0, scope: !2620, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 974, column: 3, scope: !3615, inlinedAt: !3693)
!3699 = !DILocation(line: 147, column: 57, scope: !2620, inlinedAt: !3698)
!3700 = !DILocation(line: 149, column: 21, scope: !2620, inlinedAt: !3698)
!3701 = !DILocation(line: 150, column: 6, scope: !2620, inlinedAt: !3698)
!3702 = !DILocation(line: 975, column: 10, scope: !3615, inlinedAt: !3693)
!3703 = !DILocation(line: 976, column: 1, scope: !3615, inlinedAt: !3693)
!3704 = !DILocation(line: 993, column: 3, scope: !3687)
!3705 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !592, file: !592, line: 997, type: !3507, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3706)
!3706 = !{!3707, !3708, !3709, !3710}
!3707 = !DILocalVariable(name: "n", arg: 1, scope: !3705, file: !592, line: 997, type: !116)
!3708 = !DILocalVariable(name: "s", arg: 2, scope: !3705, file: !592, line: 997, type: !135)
!3709 = !DILocalVariable(name: "arg", arg: 3, scope: !3705, file: !592, line: 997, type: !165)
!3710 = !DILocalVariable(name: "options", scope: !3705, file: !592, line: 999, type: !631)
!3711 = !DILocation(line: 185, column: 26, scope: !3522, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 1000, column: 13, scope: !3705)
!3713 = !DILocation(line: 0, scope: !3705)
!3714 = !DILocation(line: 999, column: 3, scope: !3705)
!3715 = !DILocation(line: 999, column: 26, scope: !3705)
!3716 = !DILocation(line: 0, scope: !3522, inlinedAt: !3712)
!3717 = !DILocation(line: 186, column: 13, scope: !3531, inlinedAt: !3712)
!3718 = !DILocation(line: 186, column: 7, scope: !3522, inlinedAt: !3712)
!3719 = !DILocation(line: 187, column: 5, scope: !3531, inlinedAt: !3712)
!3720 = !{!3721}
!3721 = distinct !{!3721, !3722, !"quoting_options_from_style: argument 0"}
!3722 = distinct !{!3722, !"quoting_options_from_style"}
!3723 = !DILocation(line: 1000, column: 13, scope: !3705)
!3724 = !DILocation(line: 0, scope: !2620, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 1001, column: 3, scope: !3705)
!3726 = !DILocation(line: 147, column: 57, scope: !2620, inlinedAt: !3725)
!3727 = !DILocation(line: 149, column: 21, scope: !2620, inlinedAt: !3725)
!3728 = !DILocation(line: 150, column: 6, scope: !2620, inlinedAt: !3725)
!3729 = !DILocation(line: 1002, column: 10, scope: !3705)
!3730 = !DILocation(line: 1003, column: 1, scope: !3705)
!3731 = !DILocation(line: 1002, column: 3, scope: !3705)
!3732 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !592, file: !592, line: 1006, type: !3733, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3735)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!159, !116, !165, !165, !165}
!3735 = !{!3736, !3737, !3738, !3739}
!3736 = !DILocalVariable(name: "n", arg: 1, scope: !3732, file: !592, line: 1006, type: !116)
!3737 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3732, file: !592, line: 1006, type: !165)
!3738 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3732, file: !592, line: 1007, type: !165)
!3739 = !DILocalVariable(name: "arg", arg: 4, scope: !3732, file: !592, line: 1007, type: !165)
!3740 = !DILocation(line: 0, scope: !3732)
!3741 = !DILocalVariable(name: "n", arg: 1, scope: !3742, file: !592, line: 1014, type: !116)
!3742 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !592, file: !592, line: 1014, type: !3743, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3745)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!159, !116, !165, !165, !165, !162}
!3745 = !{!3741, !3746, !3747, !3748, !3749, !3750}
!3746 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3742, file: !592, line: 1014, type: !165)
!3747 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3742, file: !592, line: 1015, type: !165)
!3748 = !DILocalVariable(name: "arg", arg: 4, scope: !3742, file: !592, line: 1016, type: !165)
!3749 = !DILocalVariable(name: "argsize", arg: 5, scope: !3742, file: !592, line: 1016, type: !162)
!3750 = !DILocalVariable(name: "o", scope: !3742, file: !592, line: 1018, type: !631)
!3751 = !DILocation(line: 0, scope: !3742, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 1009, column: 10, scope: !3732)
!3753 = !DILocation(line: 1018, column: 3, scope: !3742, inlinedAt: !3752)
!3754 = !DILocation(line: 1018, column: 26, scope: !3742, inlinedAt: !3752)
!3755 = !DILocation(line: 1018, column: 30, scope: !3742, inlinedAt: !3752)
!3756 = !DILocation(line: 0, scope: !2660, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 1019, column: 3, scope: !3742, inlinedAt: !3752)
!3758 = !DILocation(line: 174, column: 12, scope: !2660, inlinedAt: !3757)
!3759 = !DILocation(line: 175, column: 8, scope: !2673, inlinedAt: !3757)
!3760 = !DILocation(line: 175, column: 19, scope: !2673, inlinedAt: !3757)
!3761 = !DILocation(line: 176, column: 5, scope: !2673, inlinedAt: !3757)
!3762 = !DILocation(line: 177, column: 6, scope: !2660, inlinedAt: !3757)
!3763 = !DILocation(line: 177, column: 17, scope: !2660, inlinedAt: !3757)
!3764 = !DILocation(line: 178, column: 6, scope: !2660, inlinedAt: !3757)
!3765 = !DILocation(line: 178, column: 18, scope: !2660, inlinedAt: !3757)
!3766 = !DILocation(line: 1020, column: 10, scope: !3742, inlinedAt: !3752)
!3767 = !DILocation(line: 1021, column: 1, scope: !3742, inlinedAt: !3752)
!3768 = !DILocation(line: 1009, column: 3, scope: !3732)
!3769 = !DILocation(line: 0, scope: !3742)
!3770 = !DILocation(line: 1018, column: 3, scope: !3742)
!3771 = !DILocation(line: 1018, column: 26, scope: !3742)
!3772 = !DILocation(line: 1018, column: 30, scope: !3742)
!3773 = !DILocation(line: 0, scope: !2660, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 1019, column: 3, scope: !3742)
!3775 = !DILocation(line: 174, column: 12, scope: !2660, inlinedAt: !3774)
!3776 = !DILocation(line: 175, column: 8, scope: !2673, inlinedAt: !3774)
!3777 = !DILocation(line: 175, column: 19, scope: !2673, inlinedAt: !3774)
!3778 = !DILocation(line: 176, column: 5, scope: !2673, inlinedAt: !3774)
!3779 = !DILocation(line: 177, column: 6, scope: !2660, inlinedAt: !3774)
!3780 = !DILocation(line: 177, column: 17, scope: !2660, inlinedAt: !3774)
!3781 = !DILocation(line: 178, column: 6, scope: !2660, inlinedAt: !3774)
!3782 = !DILocation(line: 178, column: 18, scope: !2660, inlinedAt: !3774)
!3783 = !DILocation(line: 1020, column: 10, scope: !3742)
!3784 = !DILocation(line: 1021, column: 1, scope: !3742)
!3785 = !DILocation(line: 1020, column: 3, scope: !3742)
!3786 = distinct !DISubprogram(name: "quotearg_custom", scope: !592, file: !592, line: 1024, type: !3787, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3789)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!159, !165, !165, !165}
!3789 = !{!3790, !3791, !3792}
!3790 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3786, file: !592, line: 1024, type: !165)
!3791 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3786, file: !592, line: 1024, type: !165)
!3792 = !DILocalVariable(name: "arg", arg: 3, scope: !3786, file: !592, line: 1025, type: !165)
!3793 = !DILocation(line: 0, scope: !3786)
!3794 = !DILocation(line: 0, scope: !3732, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 1027, column: 10, scope: !3786)
!3796 = !DILocation(line: 0, scope: !3742, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 1009, column: 10, scope: !3732, inlinedAt: !3795)
!3798 = !DILocation(line: 1018, column: 3, scope: !3742, inlinedAt: !3797)
!3799 = !DILocation(line: 1018, column: 26, scope: !3742, inlinedAt: !3797)
!3800 = !DILocation(line: 1018, column: 30, scope: !3742, inlinedAt: !3797)
!3801 = !DILocation(line: 0, scope: !2660, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 1019, column: 3, scope: !3742, inlinedAt: !3797)
!3803 = !DILocation(line: 174, column: 12, scope: !2660, inlinedAt: !3802)
!3804 = !DILocation(line: 175, column: 8, scope: !2673, inlinedAt: !3802)
!3805 = !DILocation(line: 175, column: 19, scope: !2673, inlinedAt: !3802)
!3806 = !DILocation(line: 176, column: 5, scope: !2673, inlinedAt: !3802)
!3807 = !DILocation(line: 177, column: 6, scope: !2660, inlinedAt: !3802)
!3808 = !DILocation(line: 177, column: 17, scope: !2660, inlinedAt: !3802)
!3809 = !DILocation(line: 178, column: 6, scope: !2660, inlinedAt: !3802)
!3810 = !DILocation(line: 178, column: 18, scope: !2660, inlinedAt: !3802)
!3811 = !DILocation(line: 1020, column: 10, scope: !3742, inlinedAt: !3797)
!3812 = !DILocation(line: 1021, column: 1, scope: !3742, inlinedAt: !3797)
!3813 = !DILocation(line: 1027, column: 3, scope: !3786)
!3814 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !592, file: !592, line: 1031, type: !3815, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3817)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!159, !165, !165, !165, !162}
!3817 = !{!3818, !3819, !3820, !3821}
!3818 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3814, file: !592, line: 1031, type: !165)
!3819 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3814, file: !592, line: 1031, type: !165)
!3820 = !DILocalVariable(name: "arg", arg: 3, scope: !3814, file: !592, line: 1032, type: !165)
!3821 = !DILocalVariable(name: "argsize", arg: 4, scope: !3814, file: !592, line: 1032, type: !162)
!3822 = !DILocation(line: 0, scope: !3814)
!3823 = !DILocation(line: 0, scope: !3742, inlinedAt: !3824)
!3824 = distinct !DILocation(line: 1034, column: 10, scope: !3814)
!3825 = !DILocation(line: 1018, column: 3, scope: !3742, inlinedAt: !3824)
!3826 = !DILocation(line: 1018, column: 26, scope: !3742, inlinedAt: !3824)
!3827 = !DILocation(line: 1018, column: 30, scope: !3742, inlinedAt: !3824)
!3828 = !DILocation(line: 0, scope: !2660, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 1019, column: 3, scope: !3742, inlinedAt: !3824)
!3830 = !DILocation(line: 174, column: 12, scope: !2660, inlinedAt: !3829)
!3831 = !DILocation(line: 175, column: 8, scope: !2673, inlinedAt: !3829)
!3832 = !DILocation(line: 175, column: 19, scope: !2673, inlinedAt: !3829)
!3833 = !DILocation(line: 176, column: 5, scope: !2673, inlinedAt: !3829)
!3834 = !DILocation(line: 177, column: 6, scope: !2660, inlinedAt: !3829)
!3835 = !DILocation(line: 177, column: 17, scope: !2660, inlinedAt: !3829)
!3836 = !DILocation(line: 178, column: 6, scope: !2660, inlinedAt: !3829)
!3837 = !DILocation(line: 178, column: 18, scope: !2660, inlinedAt: !3829)
!3838 = !DILocation(line: 1020, column: 10, scope: !3742, inlinedAt: !3824)
!3839 = !DILocation(line: 1021, column: 1, scope: !3742, inlinedAt: !3824)
!3840 = !DILocation(line: 1034, column: 3, scope: !3814)
!3841 = distinct !DISubprogram(name: "quote_n_mem", scope: !592, file: !592, line: 1049, type: !3842, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3844)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!165, !116, !165, !162}
!3844 = !{!3845, !3846, !3847}
!3845 = !DILocalVariable(name: "n", arg: 1, scope: !3841, file: !592, line: 1049, type: !116)
!3846 = !DILocalVariable(name: "arg", arg: 2, scope: !3841, file: !592, line: 1049, type: !165)
!3847 = !DILocalVariable(name: "argsize", arg: 3, scope: !3841, file: !592, line: 1049, type: !162)
!3848 = !DILocation(line: 0, scope: !3841)
!3849 = !DILocation(line: 1051, column: 10, scope: !3841)
!3850 = !DILocation(line: 1051, column: 3, scope: !3841)
!3851 = distinct !DISubprogram(name: "quote_mem", scope: !592, file: !592, line: 1055, type: !3852, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3854)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!165, !165, !162}
!3854 = !{!3855, !3856}
!3855 = !DILocalVariable(name: "arg", arg: 1, scope: !3851, file: !592, line: 1055, type: !165)
!3856 = !DILocalVariable(name: "argsize", arg: 2, scope: !3851, file: !592, line: 1055, type: !162)
!3857 = !DILocation(line: 0, scope: !3851)
!3858 = !DILocation(line: 0, scope: !3841, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 1057, column: 10, scope: !3851)
!3860 = !DILocation(line: 1051, column: 10, scope: !3841, inlinedAt: !3859)
!3861 = !DILocation(line: 1057, column: 3, scope: !3851)
!3862 = distinct !DISubprogram(name: "quote_n", scope: !592, file: !592, line: 1061, type: !3863, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3865)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!165, !116, !165}
!3865 = !{!3866, !3867}
!3866 = !DILocalVariable(name: "n", arg: 1, scope: !3862, file: !592, line: 1061, type: !116)
!3867 = !DILocalVariable(name: "arg", arg: 2, scope: !3862, file: !592, line: 1061, type: !165)
!3868 = !DILocation(line: 0, scope: !3862)
!3869 = !DILocation(line: 0, scope: !3841, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 1063, column: 10, scope: !3862)
!3871 = !DILocation(line: 1051, column: 10, scope: !3841, inlinedAt: !3870)
!3872 = !DILocation(line: 1063, column: 3, scope: !3862)
!3873 = distinct !DISubprogram(name: "quote", scope: !592, file: !592, line: 1067, type: !3874, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !3876)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!165, !165}
!3876 = !{!3877}
!3877 = !DILocalVariable(name: "arg", arg: 1, scope: !3873, file: !592, line: 1067, type: !165)
!3878 = !DILocation(line: 0, scope: !3873)
!3879 = !DILocation(line: 0, scope: !3862, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 1069, column: 10, scope: !3873)
!3881 = !DILocation(line: 0, scope: !3841, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 1063, column: 10, scope: !3862, inlinedAt: !3880)
!3883 = !DILocation(line: 1051, column: 10, scope: !3841, inlinedAt: !3882)
!3884 = !DILocation(line: 1069, column: 3, scope: !3873)
!3885 = distinct !DISubprogram(name: "setlocale_null_r", scope: !861, file: !861, line: 154, type: !3886, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !860, retainedNodes: !3888)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!116, !116, !159, !162}
!3888 = !{!3889, !3890, !3891}
!3889 = !DILocalVariable(name: "category", arg: 1, scope: !3885, file: !861, line: 154, type: !116)
!3890 = !DILocalVariable(name: "buf", arg: 2, scope: !3885, file: !861, line: 154, type: !159)
!3891 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3885, file: !861, line: 154, type: !162)
!3892 = !DILocation(line: 0, scope: !3885)
!3893 = !DILocation(line: 159, column: 10, scope: !3885)
!3894 = !DILocation(line: 159, column: 3, scope: !3885)
!3895 = distinct !DISubprogram(name: "setlocale_null", scope: !861, file: !861, line: 186, type: !3896, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !860, retainedNodes: !3898)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!165, !116}
!3898 = !{!3899}
!3899 = !DILocalVariable(name: "category", arg: 1, scope: !3895, file: !861, line: 186, type: !116)
!3900 = !DILocation(line: 0, scope: !3895)
!3901 = !DILocation(line: 189, column: 10, scope: !3895)
!3902 = !DILocation(line: 189, column: 3, scope: !3895)
!3903 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !863, file: !863, line: 35, type: !3896, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !3904)
!3904 = !{!3905, !3906}
!3905 = !DILocalVariable(name: "category", arg: 1, scope: !3903, file: !863, line: 35, type: !116)
!3906 = !DILocalVariable(name: "result", scope: !3903, file: !863, line: 37, type: !165)
!3907 = !DILocation(line: 0, scope: !3903)
!3908 = !DILocation(line: 37, column: 24, scope: !3903)
!3909 = !DILocation(line: 62, column: 3, scope: !3903)
!3910 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !863, file: !863, line: 66, type: !3886, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !3911)
!3911 = !{!3912, !3913, !3914, !3915, !3916}
!3912 = !DILocalVariable(name: "category", arg: 1, scope: !3910, file: !863, line: 66, type: !116)
!3913 = !DILocalVariable(name: "buf", arg: 2, scope: !3910, file: !863, line: 66, type: !159)
!3914 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3910, file: !863, line: 66, type: !162)
!3915 = !DILocalVariable(name: "result", scope: !3910, file: !863, line: 111, type: !165)
!3916 = !DILocalVariable(name: "length", scope: !3917, file: !863, line: 125, type: !162)
!3917 = distinct !DILexicalBlock(scope: !3918, file: !863, line: 124, column: 5)
!3918 = distinct !DILexicalBlock(scope: !3910, file: !863, line: 113, column: 7)
!3919 = !DILocation(line: 0, scope: !3910)
!3920 = !DILocation(line: 0, scope: !3903, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 111, column: 24, scope: !3910)
!3922 = !DILocation(line: 37, column: 24, scope: !3903, inlinedAt: !3921)
!3923 = !DILocation(line: 113, column: 14, scope: !3918)
!3924 = !DILocation(line: 113, column: 7, scope: !3910)
!3925 = !DILocation(line: 116, column: 19, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3927, file: !863, line: 116, column: 11)
!3927 = distinct !DILexicalBlock(scope: !3918, file: !863, line: 114, column: 5)
!3928 = !DILocation(line: 116, column: 11, scope: !3927)
!3929 = !DILocation(line: 120, column: 16, scope: !3926)
!3930 = !DILocation(line: 120, column: 9, scope: !3926)
!3931 = !DILocation(line: 125, column: 23, scope: !3917)
!3932 = !DILocation(line: 0, scope: !3917)
!3933 = !DILocation(line: 126, column: 18, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3917, file: !863, line: 126, column: 11)
!3935 = !DILocation(line: 126, column: 11, scope: !3917)
!3936 = !DILocation(line: 128, column: 39, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3934, file: !863, line: 127, column: 9)
!3938 = !DILocalVariable(name: "__dest", arg: 1, scope: !3939, file: !2303, line: 26, type: !3942)
!3939 = distinct !DISubprogram(name: "memcpy", scope: !2303, file: !2303, line: 26, type: !3940, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !3943)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!160, !3942, !1159, !162}
!3942 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !160)
!3943 = !{!3938, !3944, !3945}
!3944 = !DILocalVariable(name: "__src", arg: 2, scope: !3939, file: !2303, line: 26, type: !1159)
!3945 = !DILocalVariable(name: "__len", arg: 3, scope: !3939, file: !2303, line: 26, type: !162)
!3946 = !DILocation(line: 0, scope: !3939, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 128, column: 11, scope: !3937)
!3948 = !DILocation(line: 29, column: 10, scope: !3939, inlinedAt: !3947)
!3949 = !DILocation(line: 129, column: 11, scope: !3937)
!3950 = !DILocation(line: 133, column: 23, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3952, file: !863, line: 133, column: 15)
!3952 = distinct !DILexicalBlock(scope: !3934, file: !863, line: 132, column: 9)
!3953 = !DILocation(line: 133, column: 15, scope: !3952)
!3954 = !DILocation(line: 138, column: 44, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3951, file: !863, line: 134, column: 13)
!3956 = !DILocation(line: 0, scope: !3939, inlinedAt: !3957)
!3957 = distinct !DILocation(line: 138, column: 15, scope: !3955)
!3958 = !DILocation(line: 29, column: 10, scope: !3939, inlinedAt: !3957)
!3959 = !DILocation(line: 139, column: 15, scope: !3955)
!3960 = !DILocation(line: 139, column: 32, scope: !3955)
!3961 = !DILocation(line: 140, column: 13, scope: !3955)
!3962 = !DILocation(line: 0, scope: !3918)
!3963 = !DILocation(line: 145, column: 1, scope: !3910)
!3964 = distinct !DISubprogram(name: "dup_safer", scope: !865, file: !865, line: 31, type: !1655, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !3965)
!3965 = !{!3966}
!3966 = !DILocalVariable(name: "fd", arg: 1, scope: !3964, file: !865, line: 31, type: !116)
!3967 = !DILocation(line: 0, scope: !3964)
!3968 = !DILocation(line: 33, column: 10, scope: !3964)
!3969 = !DILocation(line: 33, column: 3, scope: !3964)
!3970 = distinct !DISubprogram(name: "version_etc_arn", scope: !694, file: !694, line: 61, type: !3971, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !4008)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{null, !3973, !165, !165, !165, !4007, !162}
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !3975)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !3976)
!3976 = !{!3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3975, file: !236, line: 51, baseType: !116, size: 32)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3975, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3975, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3975, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3975, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3975, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3975, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3975, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3975, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3975, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3975, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3975, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3975, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3975, file: !236, line: 70, baseType: !3991, size: 64, offset: 832)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3975, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3975, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3975, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3975, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3975, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3975, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3975, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3975, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3975, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3975, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3975, file: !236, line: 93, baseType: !3991, size: 64, offset: 1344)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3975, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3975, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3975, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3975, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!4008 = !{!4009, !4010, !4011, !4012, !4013, !4014}
!4009 = !DILocalVariable(name: "stream", arg: 1, scope: !3970, file: !694, line: 61, type: !3973)
!4010 = !DILocalVariable(name: "command_name", arg: 2, scope: !3970, file: !694, line: 62, type: !165)
!4011 = !DILocalVariable(name: "package", arg: 3, scope: !3970, file: !694, line: 62, type: !165)
!4012 = !DILocalVariable(name: "version", arg: 4, scope: !3970, file: !694, line: 63, type: !165)
!4013 = !DILocalVariable(name: "authors", arg: 5, scope: !3970, file: !694, line: 64, type: !4007)
!4014 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3970, file: !694, line: 64, type: !162)
!4015 = !DILocation(line: 0, scope: !3970)
!4016 = !DILocation(line: 66, column: 7, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !3970, file: !694, line: 66, column: 7)
!4018 = !DILocation(line: 66, column: 7, scope: !3970)
!4019 = !DILocation(line: 67, column: 5, scope: !4017)
!4020 = !DILocation(line: 69, column: 5, scope: !4017)
!4021 = !DILocation(line: 83, column: 3, scope: !3970)
!4022 = !DILocation(line: 85, column: 3, scope: !3970)
!4023 = !DILocation(line: 88, column: 3, scope: !3970)
!4024 = !DILocation(line: 95, column: 3, scope: !3970)
!4025 = !DILocation(line: 97, column: 3, scope: !3970)
!4026 = !DILocation(line: 105, column: 7, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !3970, file: !694, line: 98, column: 5)
!4028 = !DILocation(line: 106, column: 7, scope: !4027)
!4029 = !DILocation(line: 109, column: 7, scope: !4027)
!4030 = !DILocation(line: 110, column: 7, scope: !4027)
!4031 = !DILocation(line: 113, column: 7, scope: !4027)
!4032 = !DILocation(line: 115, column: 7, scope: !4027)
!4033 = !DILocation(line: 120, column: 7, scope: !4027)
!4034 = !DILocation(line: 122, column: 7, scope: !4027)
!4035 = !DILocation(line: 127, column: 7, scope: !4027)
!4036 = !DILocation(line: 129, column: 7, scope: !4027)
!4037 = !DILocation(line: 134, column: 7, scope: !4027)
!4038 = !DILocation(line: 137, column: 7, scope: !4027)
!4039 = !DILocation(line: 142, column: 7, scope: !4027)
!4040 = !DILocation(line: 145, column: 7, scope: !4027)
!4041 = !DILocation(line: 150, column: 7, scope: !4027)
!4042 = !DILocation(line: 154, column: 7, scope: !4027)
!4043 = !DILocation(line: 159, column: 7, scope: !4027)
!4044 = !DILocation(line: 163, column: 7, scope: !4027)
!4045 = !DILocation(line: 170, column: 7, scope: !4027)
!4046 = !DILocation(line: 174, column: 7, scope: !4027)
!4047 = !DILocation(line: 176, column: 1, scope: !3970)
!4048 = distinct !DISubprogram(name: "version_etc_ar", scope: !694, file: !694, line: 183, type: !4049, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !4051)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{null, !3973, !165, !165, !165, !4007}
!4051 = !{!4052, !4053, !4054, !4055, !4056, !4057}
!4052 = !DILocalVariable(name: "stream", arg: 1, scope: !4048, file: !694, line: 183, type: !3973)
!4053 = !DILocalVariable(name: "command_name", arg: 2, scope: !4048, file: !694, line: 184, type: !165)
!4054 = !DILocalVariable(name: "package", arg: 3, scope: !4048, file: !694, line: 184, type: !165)
!4055 = !DILocalVariable(name: "version", arg: 4, scope: !4048, file: !694, line: 185, type: !165)
!4056 = !DILocalVariable(name: "authors", arg: 5, scope: !4048, file: !694, line: 185, type: !4007)
!4057 = !DILocalVariable(name: "n_authors", scope: !4048, file: !694, line: 187, type: !162)
!4058 = !DILocation(line: 0, scope: !4048)
!4059 = !DILocation(line: 189, column: 8, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4048, file: !694, line: 189, column: 3)
!4061 = !DILocation(line: 189, scope: !4060)
!4062 = !DILocation(line: 189, column: 23, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4060, file: !694, line: 189, column: 3)
!4064 = !DILocation(line: 189, column: 3, scope: !4060)
!4065 = !DILocation(line: 189, column: 52, scope: !4063)
!4066 = distinct !{!4066, !4064, !4067, !1058}
!4067 = !DILocation(line: 190, column: 5, scope: !4060)
!4068 = !DILocation(line: 191, column: 3, scope: !4048)
!4069 = !DILocation(line: 192, column: 1, scope: !4048)
!4070 = distinct !DISubprogram(name: "version_etc_va", scope: !694, file: !694, line: 199, type: !4071, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !4081)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{null, !3973, !165, !165, !165, !4073}
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4075)
!4075 = !{!4076, !4078, !4079, !4080}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4074, file: !4077, line: 192, baseType: !103, size: 32)
!4077 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4074, file: !4077, line: 192, baseType: !103, size: 32, offset: 32)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4074, file: !4077, line: 192, baseType: !160, size: 64, offset: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4074, file: !4077, line: 192, baseType: !160, size: 64, offset: 128)
!4081 = !{!4082, !4083, !4084, !4085, !4086, !4087, !4088}
!4082 = !DILocalVariable(name: "stream", arg: 1, scope: !4070, file: !694, line: 199, type: !3973)
!4083 = !DILocalVariable(name: "command_name", arg: 2, scope: !4070, file: !694, line: 200, type: !165)
!4084 = !DILocalVariable(name: "package", arg: 3, scope: !4070, file: !694, line: 200, type: !165)
!4085 = !DILocalVariable(name: "version", arg: 4, scope: !4070, file: !694, line: 201, type: !165)
!4086 = !DILocalVariable(name: "authors", arg: 5, scope: !4070, file: !694, line: 201, type: !4073)
!4087 = !DILocalVariable(name: "n_authors", scope: !4070, file: !694, line: 203, type: !162)
!4088 = !DILocalVariable(name: "authtab", scope: !4070, file: !694, line: 204, type: !4089)
!4089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 640, elements: !91)
!4090 = !DILocation(line: 0, scope: !4070)
!4091 = !DILocation(line: 204, column: 3, scope: !4070)
!4092 = !DILocation(line: 204, column: 15, scope: !4070)
!4093 = !DILocation(line: 208, column: 35, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4095, file: !694, line: 206, column: 3)
!4095 = distinct !DILexicalBlock(scope: !4070, file: !694, line: 206, column: 3)
!4096 = !DILocation(line: 208, column: 33, scope: !4094)
!4097 = !DILocation(line: 208, column: 67, scope: !4094)
!4098 = !DILocation(line: 206, column: 3, scope: !4095)
!4099 = !DILocation(line: 208, column: 14, scope: !4094)
!4100 = !DILocation(line: 0, scope: !4095)
!4101 = !DILocation(line: 211, column: 3, scope: !4070)
!4102 = !DILocation(line: 213, column: 1, scope: !4070)
!4103 = distinct !DISubprogram(name: "version_etc", scope: !694, file: !694, line: 230, type: !4104, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !4106)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{null, !3973, !165, !165, !165, null}
!4106 = !{!4107, !4108, !4109, !4110, !4111}
!4107 = !DILocalVariable(name: "stream", arg: 1, scope: !4103, file: !694, line: 230, type: !3973)
!4108 = !DILocalVariable(name: "command_name", arg: 2, scope: !4103, file: !694, line: 231, type: !165)
!4109 = !DILocalVariable(name: "package", arg: 3, scope: !4103, file: !694, line: 231, type: !165)
!4110 = !DILocalVariable(name: "version", arg: 4, scope: !4103, file: !694, line: 232, type: !165)
!4111 = !DILocalVariable(name: "authors", scope: !4103, file: !694, line: 234, type: !4112)
!4112 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1006, line: 52, baseType: !4113)
!4113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1786, line: 14, baseType: !4114)
!4114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4077, baseType: !4115)
!4115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4074, size: 192, elements: !86)
!4116 = !DILocation(line: 0, scope: !4103)
!4117 = !DILocation(line: 234, column: 3, scope: !4103)
!4118 = !DILocation(line: 234, column: 11, scope: !4103)
!4119 = !DILocation(line: 235, column: 3, scope: !4103)
!4120 = !DILocation(line: 236, column: 3, scope: !4103)
!4121 = !DILocation(line: 237, column: 3, scope: !4103)
!4122 = !DILocation(line: 238, column: 1, scope: !4103)
!4123 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !694, file: !694, line: 241, type: !544, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !995)
!4124 = !DILocation(line: 243, column: 3, scope: !4123)
!4125 = !DILocation(line: 248, column: 3, scope: !4123)
!4126 = !DILocation(line: 254, column: 3, scope: !4123)
!4127 = !DILocation(line: 259, column: 3, scope: !4123)
!4128 = !DILocation(line: 261, column: 1, scope: !4123)
!4129 = distinct !DISubprogram(name: "xnrealloc", scope: !4130, file: !4130, line: 147, type: !4131, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4133)
!4130 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!160, !160, !162, !162}
!4133 = !{!4134, !4135, !4136}
!4134 = !DILocalVariable(name: "p", arg: 1, scope: !4129, file: !4130, line: 147, type: !160)
!4135 = !DILocalVariable(name: "n", arg: 2, scope: !4129, file: !4130, line: 147, type: !162)
!4136 = !DILocalVariable(name: "s", arg: 3, scope: !4129, file: !4130, line: 147, type: !162)
!4137 = !DILocation(line: 0, scope: !4129)
!4138 = !DILocalVariable(name: "p", arg: 1, scope: !4139, file: !873, line: 83, type: !160)
!4139 = distinct !DISubprogram(name: "xreallocarray", scope: !873, file: !873, line: 83, type: !4131, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4140)
!4140 = !{!4138, !4141, !4142}
!4141 = !DILocalVariable(name: "n", arg: 2, scope: !4139, file: !873, line: 83, type: !162)
!4142 = !DILocalVariable(name: "s", arg: 3, scope: !4139, file: !873, line: 83, type: !162)
!4143 = !DILocation(line: 0, scope: !4139, inlinedAt: !4144)
!4144 = distinct !DILocation(line: 149, column: 10, scope: !4129)
!4145 = !DILocation(line: 85, column: 25, scope: !4139, inlinedAt: !4144)
!4146 = !DILocalVariable(name: "p", arg: 1, scope: !4147, file: !873, line: 37, type: !160)
!4147 = distinct !DISubprogram(name: "check_nonnull", scope: !873, file: !873, line: 37, type: !4148, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4150)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!160, !160}
!4150 = !{!4146}
!4151 = !DILocation(line: 0, scope: !4147, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 85, column: 10, scope: !4139, inlinedAt: !4144)
!4153 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4152)
!4154 = distinct !DILexicalBlock(scope: !4147, file: !873, line: 39, column: 7)
!4155 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4152)
!4156 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4152)
!4157 = !DILocation(line: 149, column: 3, scope: !4129)
!4158 = !DILocation(line: 0, scope: !4139)
!4159 = !DILocation(line: 85, column: 25, scope: !4139)
!4160 = !DILocation(line: 0, scope: !4147, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 85, column: 10, scope: !4139)
!4162 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4161)
!4163 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4161)
!4164 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4161)
!4165 = !DILocation(line: 85, column: 3, scope: !4139)
!4166 = distinct !DISubprogram(name: "xmalloc", scope: !873, file: !873, line: 47, type: !4167, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4169)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!160, !162}
!4169 = !{!4170}
!4170 = !DILocalVariable(name: "s", arg: 1, scope: !4166, file: !873, line: 47, type: !162)
!4171 = !DILocation(line: 0, scope: !4166)
!4172 = !DILocation(line: 49, column: 25, scope: !4166)
!4173 = !DILocation(line: 0, scope: !4147, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 49, column: 10, scope: !4166)
!4175 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4174)
!4176 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4174)
!4177 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4174)
!4178 = !DILocation(line: 49, column: 3, scope: !4166)
!4179 = !DISubprogram(name: "malloc", scope: !1136, file: !1136, line: 540, type: !4167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!4180 = distinct !DISubprogram(name: "ximalloc", scope: !873, file: !873, line: 53, type: !4181, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4183)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!160, !892}
!4183 = !{!4184}
!4184 = !DILocalVariable(name: "s", arg: 1, scope: !4180, file: !873, line: 53, type: !892)
!4185 = !DILocation(line: 0, scope: !4180)
!4186 = !DILocalVariable(name: "s", arg: 1, scope: !4187, file: !4188, line: 55, type: !892)
!4187 = distinct !DISubprogram(name: "imalloc", scope: !4188, file: !4188, line: 55, type: !4181, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4189)
!4188 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4189 = !{!4186}
!4190 = !DILocation(line: 0, scope: !4187, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 55, column: 25, scope: !4180)
!4192 = !DILocation(line: 57, column: 26, scope: !4187, inlinedAt: !4191)
!4193 = !DILocation(line: 0, scope: !4147, inlinedAt: !4194)
!4194 = distinct !DILocation(line: 55, column: 10, scope: !4180)
!4195 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4194)
!4196 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4194)
!4197 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4194)
!4198 = !DILocation(line: 55, column: 3, scope: !4180)
!4199 = distinct !DISubprogram(name: "xcharalloc", scope: !873, file: !873, line: 59, type: !4200, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4202)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!159, !162}
!4202 = !{!4203}
!4203 = !DILocalVariable(name: "n", arg: 1, scope: !4199, file: !873, line: 59, type: !162)
!4204 = !DILocation(line: 0, scope: !4199)
!4205 = !DILocation(line: 0, scope: !4166, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 61, column: 10, scope: !4199)
!4207 = !DILocation(line: 49, column: 25, scope: !4166, inlinedAt: !4206)
!4208 = !DILocation(line: 0, scope: !4147, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 49, column: 10, scope: !4166, inlinedAt: !4206)
!4210 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4209)
!4211 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4209)
!4212 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4209)
!4213 = !DILocation(line: 61, column: 3, scope: !4199)
!4214 = distinct !DISubprogram(name: "xrealloc", scope: !873, file: !873, line: 68, type: !4215, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!160, !160, !162}
!4217 = !{!4218, !4219}
!4218 = !DILocalVariable(name: "p", arg: 1, scope: !4214, file: !873, line: 68, type: !160)
!4219 = !DILocalVariable(name: "s", arg: 2, scope: !4214, file: !873, line: 68, type: !162)
!4220 = !DILocation(line: 0, scope: !4214)
!4221 = !DILocalVariable(name: "ptr", arg: 1, scope: !4222, file: !4223, line: 2057, type: !160)
!4222 = distinct !DISubprogram(name: "rpl_realloc", scope: !4223, file: !4223, line: 2057, type: !4215, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4224)
!4223 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4224 = !{!4221, !4225}
!4225 = !DILocalVariable(name: "size", arg: 2, scope: !4222, file: !4223, line: 2057, type: !162)
!4226 = !DILocation(line: 0, scope: !4222, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 70, column: 25, scope: !4214)
!4228 = !DILocation(line: 2059, column: 24, scope: !4222, inlinedAt: !4227)
!4229 = !DILocation(line: 2059, column: 10, scope: !4222, inlinedAt: !4227)
!4230 = !DILocation(line: 0, scope: !4147, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 70, column: 10, scope: !4214)
!4232 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4231)
!4233 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4231)
!4234 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4231)
!4235 = !DILocation(line: 70, column: 3, scope: !4214)
!4236 = !DISubprogram(name: "realloc", scope: !1136, file: !1136, line: 551, type: !4215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!4237 = distinct !DISubprogram(name: "xirealloc", scope: !873, file: !873, line: 74, type: !4238, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4240)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!160, !160, !892}
!4240 = !{!4241, !4242}
!4241 = !DILocalVariable(name: "p", arg: 1, scope: !4237, file: !873, line: 74, type: !160)
!4242 = !DILocalVariable(name: "s", arg: 2, scope: !4237, file: !873, line: 74, type: !892)
!4243 = !DILocation(line: 0, scope: !4237)
!4244 = !DILocalVariable(name: "p", arg: 1, scope: !4245, file: !4188, line: 66, type: !160)
!4245 = distinct !DISubprogram(name: "irealloc", scope: !4188, file: !4188, line: 66, type: !4238, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4246)
!4246 = !{!4244, !4247}
!4247 = !DILocalVariable(name: "s", arg: 2, scope: !4245, file: !4188, line: 66, type: !892)
!4248 = !DILocation(line: 0, scope: !4245, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 76, column: 25, scope: !4237)
!4250 = !DILocation(line: 0, scope: !4222, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 68, column: 26, scope: !4245, inlinedAt: !4249)
!4252 = !DILocation(line: 2059, column: 24, scope: !4222, inlinedAt: !4251)
!4253 = !DILocation(line: 2059, column: 10, scope: !4222, inlinedAt: !4251)
!4254 = !DILocation(line: 0, scope: !4147, inlinedAt: !4255)
!4255 = distinct !DILocation(line: 76, column: 10, scope: !4237)
!4256 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4255)
!4257 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4255)
!4258 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4255)
!4259 = !DILocation(line: 76, column: 3, scope: !4237)
!4260 = distinct !DISubprogram(name: "xireallocarray", scope: !873, file: !873, line: 89, type: !4261, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4263)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!160, !160, !892, !892}
!4263 = !{!4264, !4265, !4266}
!4264 = !DILocalVariable(name: "p", arg: 1, scope: !4260, file: !873, line: 89, type: !160)
!4265 = !DILocalVariable(name: "n", arg: 2, scope: !4260, file: !873, line: 89, type: !892)
!4266 = !DILocalVariable(name: "s", arg: 3, scope: !4260, file: !873, line: 89, type: !892)
!4267 = !DILocation(line: 0, scope: !4260)
!4268 = !DILocalVariable(name: "p", arg: 1, scope: !4269, file: !4188, line: 98, type: !160)
!4269 = distinct !DISubprogram(name: "ireallocarray", scope: !4188, file: !4188, line: 98, type: !4261, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4270)
!4270 = !{!4268, !4271, !4272}
!4271 = !DILocalVariable(name: "n", arg: 2, scope: !4269, file: !4188, line: 98, type: !892)
!4272 = !DILocalVariable(name: "s", arg: 3, scope: !4269, file: !4188, line: 98, type: !892)
!4273 = !DILocation(line: 0, scope: !4269, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 91, column: 25, scope: !4260)
!4275 = !DILocation(line: 101, column: 13, scope: !4269, inlinedAt: !4274)
!4276 = !DILocation(line: 0, scope: !4147, inlinedAt: !4277)
!4277 = distinct !DILocation(line: 91, column: 10, scope: !4260)
!4278 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4277)
!4279 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4277)
!4280 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4277)
!4281 = !DILocation(line: 91, column: 3, scope: !4260)
!4282 = distinct !DISubprogram(name: "xnmalloc", scope: !873, file: !873, line: 98, type: !4283, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4285)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!160, !162, !162}
!4285 = !{!4286, !4287}
!4286 = !DILocalVariable(name: "n", arg: 1, scope: !4282, file: !873, line: 98, type: !162)
!4287 = !DILocalVariable(name: "s", arg: 2, scope: !4282, file: !873, line: 98, type: !162)
!4288 = !DILocation(line: 0, scope: !4282)
!4289 = !DILocation(line: 0, scope: !4139, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 100, column: 10, scope: !4282)
!4291 = !DILocation(line: 85, column: 25, scope: !4139, inlinedAt: !4290)
!4292 = !DILocation(line: 0, scope: !4147, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 85, column: 10, scope: !4139, inlinedAt: !4290)
!4294 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4293)
!4295 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4293)
!4296 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4293)
!4297 = !DILocation(line: 100, column: 3, scope: !4282)
!4298 = distinct !DISubprogram(name: "xinmalloc", scope: !873, file: !873, line: 104, type: !4299, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4301)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!160, !892, !892}
!4301 = !{!4302, !4303}
!4302 = !DILocalVariable(name: "n", arg: 1, scope: !4298, file: !873, line: 104, type: !892)
!4303 = !DILocalVariable(name: "s", arg: 2, scope: !4298, file: !873, line: 104, type: !892)
!4304 = !DILocation(line: 0, scope: !4298)
!4305 = !DILocation(line: 0, scope: !4260, inlinedAt: !4306)
!4306 = distinct !DILocation(line: 106, column: 10, scope: !4298)
!4307 = !DILocation(line: 0, scope: !4269, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 91, column: 25, scope: !4260, inlinedAt: !4306)
!4309 = !DILocation(line: 101, column: 13, scope: !4269, inlinedAt: !4308)
!4310 = !DILocation(line: 0, scope: !4147, inlinedAt: !4311)
!4311 = distinct !DILocation(line: 91, column: 10, scope: !4260, inlinedAt: !4306)
!4312 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4311)
!4313 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4311)
!4314 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4311)
!4315 = !DILocation(line: 106, column: 3, scope: !4298)
!4316 = distinct !DISubprogram(name: "x2realloc", scope: !873, file: !873, line: 116, type: !4317, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4319)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!160, !160, !879}
!4319 = !{!4320, !4321}
!4320 = !DILocalVariable(name: "p", arg: 1, scope: !4316, file: !873, line: 116, type: !160)
!4321 = !DILocalVariable(name: "ps", arg: 2, scope: !4316, file: !873, line: 116, type: !879)
!4322 = !DILocation(line: 0, scope: !4316)
!4323 = !DILocation(line: 0, scope: !876, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 118, column: 10, scope: !4316)
!4325 = !DILocation(line: 178, column: 14, scope: !876, inlinedAt: !4324)
!4326 = !DILocation(line: 180, column: 9, scope: !4327, inlinedAt: !4324)
!4327 = distinct !DILexicalBlock(scope: !876, file: !873, line: 180, column: 7)
!4328 = !DILocation(line: 180, column: 7, scope: !876, inlinedAt: !4324)
!4329 = !DILocation(line: 182, column: 13, scope: !4330, inlinedAt: !4324)
!4330 = distinct !DILexicalBlock(scope: !4331, file: !873, line: 182, column: 11)
!4331 = distinct !DILexicalBlock(scope: !4327, file: !873, line: 181, column: 5)
!4332 = !DILocation(line: 182, column: 11, scope: !4331, inlinedAt: !4324)
!4333 = !DILocation(line: 197, column: 11, scope: !4334, inlinedAt: !4324)
!4334 = distinct !DILexicalBlock(scope: !4335, file: !873, line: 197, column: 11)
!4335 = distinct !DILexicalBlock(scope: !4327, file: !873, line: 195, column: 5)
!4336 = !DILocation(line: 197, column: 11, scope: !4335, inlinedAt: !4324)
!4337 = !DILocation(line: 198, column: 9, scope: !4334, inlinedAt: !4324)
!4338 = !DILocation(line: 0, scope: !4139, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 201, column: 7, scope: !876, inlinedAt: !4324)
!4340 = !DILocation(line: 85, column: 25, scope: !4139, inlinedAt: !4339)
!4341 = !DILocation(line: 0, scope: !4147, inlinedAt: !4342)
!4342 = distinct !DILocation(line: 85, column: 10, scope: !4139, inlinedAt: !4339)
!4343 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4342)
!4344 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4342)
!4345 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4342)
!4346 = !DILocation(line: 202, column: 7, scope: !876, inlinedAt: !4324)
!4347 = !DILocation(line: 118, column: 3, scope: !4316)
!4348 = !DILocation(line: 0, scope: !876)
!4349 = !DILocation(line: 178, column: 14, scope: !876)
!4350 = !DILocation(line: 180, column: 9, scope: !4327)
!4351 = !DILocation(line: 180, column: 7, scope: !876)
!4352 = !DILocation(line: 182, column: 13, scope: !4330)
!4353 = !DILocation(line: 182, column: 11, scope: !4331)
!4354 = !DILocation(line: 190, column: 30, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4330, file: !873, line: 183, column: 9)
!4356 = !DILocation(line: 191, column: 16, scope: !4355)
!4357 = !DILocation(line: 191, column: 13, scope: !4355)
!4358 = !DILocation(line: 192, column: 9, scope: !4355)
!4359 = !DILocation(line: 197, column: 11, scope: !4334)
!4360 = !DILocation(line: 197, column: 11, scope: !4335)
!4361 = !DILocation(line: 198, column: 9, scope: !4334)
!4362 = !DILocation(line: 0, scope: !4139, inlinedAt: !4363)
!4363 = distinct !DILocation(line: 201, column: 7, scope: !876)
!4364 = !DILocation(line: 85, column: 25, scope: !4139, inlinedAt: !4363)
!4365 = !DILocation(line: 0, scope: !4147, inlinedAt: !4366)
!4366 = distinct !DILocation(line: 85, column: 10, scope: !4139, inlinedAt: !4363)
!4367 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4366)
!4368 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4366)
!4369 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4366)
!4370 = !DILocation(line: 202, column: 7, scope: !876)
!4371 = !DILocation(line: 203, column: 3, scope: !876)
!4372 = !DILocation(line: 0, scope: !888)
!4373 = !DILocation(line: 230, column: 14, scope: !888)
!4374 = !DILocation(line: 238, column: 7, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !888, file: !873, line: 238, column: 7)
!4376 = !DILocation(line: 238, column: 7, scope: !888)
!4377 = !DILocation(line: 240, column: 9, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !888, file: !873, line: 240, column: 7)
!4379 = !DILocation(line: 240, column: 18, scope: !4378)
!4380 = !DILocation(line: 253, column: 8, scope: !888)
!4381 = !DILocation(line: 258, column: 27, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4383, file: !873, line: 257, column: 5)
!4383 = distinct !DILexicalBlock(scope: !888, file: !873, line: 256, column: 7)
!4384 = !DILocation(line: 259, column: 50, scope: !4382)
!4385 = !DILocation(line: 259, column: 32, scope: !4382)
!4386 = !DILocation(line: 260, column: 5, scope: !4382)
!4387 = !DILocation(line: 262, column: 9, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !888, file: !873, line: 262, column: 7)
!4389 = !DILocation(line: 262, column: 7, scope: !888)
!4390 = !DILocation(line: 263, column: 9, scope: !4388)
!4391 = !DILocation(line: 263, column: 5, scope: !4388)
!4392 = !DILocation(line: 264, column: 9, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !888, file: !873, line: 264, column: 7)
!4394 = !DILocation(line: 264, column: 14, scope: !4393)
!4395 = !DILocation(line: 265, column: 7, scope: !4393)
!4396 = !DILocation(line: 265, column: 11, scope: !4393)
!4397 = !DILocation(line: 266, column: 11, scope: !4393)
!4398 = !DILocation(line: 267, column: 14, scope: !4393)
!4399 = !DILocation(line: 264, column: 7, scope: !888)
!4400 = !DILocation(line: 268, column: 5, scope: !4393)
!4401 = !DILocation(line: 0, scope: !4214, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 269, column: 8, scope: !888)
!4403 = !DILocation(line: 0, scope: !4222, inlinedAt: !4404)
!4404 = distinct !DILocation(line: 70, column: 25, scope: !4214, inlinedAt: !4402)
!4405 = !DILocation(line: 2059, column: 24, scope: !4222, inlinedAt: !4404)
!4406 = !DILocation(line: 2059, column: 10, scope: !4222, inlinedAt: !4404)
!4407 = !DILocation(line: 0, scope: !4147, inlinedAt: !4408)
!4408 = distinct !DILocation(line: 70, column: 10, scope: !4214, inlinedAt: !4402)
!4409 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4408)
!4410 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4408)
!4411 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4408)
!4412 = !DILocation(line: 270, column: 7, scope: !888)
!4413 = !DILocation(line: 271, column: 3, scope: !888)
!4414 = distinct !DISubprogram(name: "xzalloc", scope: !873, file: !873, line: 279, type: !4167, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4415)
!4415 = !{!4416}
!4416 = !DILocalVariable(name: "s", arg: 1, scope: !4414, file: !873, line: 279, type: !162)
!4417 = !DILocation(line: 0, scope: !4414)
!4418 = !DILocalVariable(name: "n", arg: 1, scope: !4419, file: !873, line: 294, type: !162)
!4419 = distinct !DISubprogram(name: "xcalloc", scope: !873, file: !873, line: 294, type: !4283, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4420)
!4420 = !{!4418, !4421}
!4421 = !DILocalVariable(name: "s", arg: 2, scope: !4419, file: !873, line: 294, type: !162)
!4422 = !DILocation(line: 0, scope: !4419, inlinedAt: !4423)
!4423 = distinct !DILocation(line: 281, column: 10, scope: !4414)
!4424 = !DILocation(line: 296, column: 25, scope: !4419, inlinedAt: !4423)
!4425 = !DILocation(line: 0, scope: !4147, inlinedAt: !4426)
!4426 = distinct !DILocation(line: 296, column: 10, scope: !4419, inlinedAt: !4423)
!4427 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4426)
!4428 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4426)
!4429 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4426)
!4430 = !DILocation(line: 281, column: 3, scope: !4414)
!4431 = !DISubprogram(name: "calloc", scope: !1136, file: !1136, line: 543, type: !4283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!4432 = !DILocation(line: 0, scope: !4419)
!4433 = !DILocation(line: 296, column: 25, scope: !4419)
!4434 = !DILocation(line: 0, scope: !4147, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 296, column: 10, scope: !4419)
!4436 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4435)
!4437 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4435)
!4438 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4435)
!4439 = !DILocation(line: 296, column: 3, scope: !4419)
!4440 = distinct !DISubprogram(name: "xizalloc", scope: !873, file: !873, line: 285, type: !4181, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4441)
!4441 = !{!4442}
!4442 = !DILocalVariable(name: "s", arg: 1, scope: !4440, file: !873, line: 285, type: !892)
!4443 = !DILocation(line: 0, scope: !4440)
!4444 = !DILocalVariable(name: "n", arg: 1, scope: !4445, file: !873, line: 300, type: !892)
!4445 = distinct !DISubprogram(name: "xicalloc", scope: !873, file: !873, line: 300, type: !4299, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4446)
!4446 = !{!4444, !4447}
!4447 = !DILocalVariable(name: "s", arg: 2, scope: !4445, file: !873, line: 300, type: !892)
!4448 = !DILocation(line: 0, scope: !4445, inlinedAt: !4449)
!4449 = distinct !DILocation(line: 287, column: 10, scope: !4440)
!4450 = !DILocalVariable(name: "n", arg: 1, scope: !4451, file: !4188, line: 77, type: !892)
!4451 = distinct !DISubprogram(name: "icalloc", scope: !4188, file: !4188, line: 77, type: !4299, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4452)
!4452 = !{!4450, !4453}
!4453 = !DILocalVariable(name: "s", arg: 2, scope: !4451, file: !4188, line: 77, type: !892)
!4454 = !DILocation(line: 0, scope: !4451, inlinedAt: !4455)
!4455 = distinct !DILocation(line: 302, column: 25, scope: !4445, inlinedAt: !4449)
!4456 = !DILocation(line: 91, column: 10, scope: !4451, inlinedAt: !4455)
!4457 = !DILocation(line: 0, scope: !4147, inlinedAt: !4458)
!4458 = distinct !DILocation(line: 302, column: 10, scope: !4445, inlinedAt: !4449)
!4459 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4458)
!4460 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4458)
!4461 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4458)
!4462 = !DILocation(line: 287, column: 3, scope: !4440)
!4463 = !DILocation(line: 0, scope: !4445)
!4464 = !DILocation(line: 0, scope: !4451, inlinedAt: !4465)
!4465 = distinct !DILocation(line: 302, column: 25, scope: !4445)
!4466 = !DILocation(line: 91, column: 10, scope: !4451, inlinedAt: !4465)
!4467 = !DILocation(line: 0, scope: !4147, inlinedAt: !4468)
!4468 = distinct !DILocation(line: 302, column: 10, scope: !4445)
!4469 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4468)
!4470 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4468)
!4471 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4468)
!4472 = !DILocation(line: 302, column: 3, scope: !4445)
!4473 = distinct !DISubprogram(name: "xmemdup", scope: !873, file: !873, line: 310, type: !4474, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4476)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!160, !1160, !162}
!4476 = !{!4477, !4478}
!4477 = !DILocalVariable(name: "p", arg: 1, scope: !4473, file: !873, line: 310, type: !1160)
!4478 = !DILocalVariable(name: "s", arg: 2, scope: !4473, file: !873, line: 310, type: !162)
!4479 = !DILocation(line: 0, scope: !4473)
!4480 = !DILocation(line: 0, scope: !4166, inlinedAt: !4481)
!4481 = distinct !DILocation(line: 312, column: 18, scope: !4473)
!4482 = !DILocation(line: 49, column: 25, scope: !4166, inlinedAt: !4481)
!4483 = !DILocation(line: 0, scope: !4147, inlinedAt: !4484)
!4484 = distinct !DILocation(line: 49, column: 10, scope: !4166, inlinedAt: !4481)
!4485 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4484)
!4486 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4484)
!4487 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4484)
!4488 = !DILocalVariable(name: "__dest", arg: 1, scope: !4489, file: !2303, line: 26, type: !3942)
!4489 = distinct !DISubprogram(name: "memcpy", scope: !2303, file: !2303, line: 26, type: !3940, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4490)
!4490 = !{!4488, !4491, !4492}
!4491 = !DILocalVariable(name: "__src", arg: 2, scope: !4489, file: !2303, line: 26, type: !1159)
!4492 = !DILocalVariable(name: "__len", arg: 3, scope: !4489, file: !2303, line: 26, type: !162)
!4493 = !DILocation(line: 0, scope: !4489, inlinedAt: !4494)
!4494 = distinct !DILocation(line: 312, column: 10, scope: !4473)
!4495 = !DILocation(line: 29, column: 10, scope: !4489, inlinedAt: !4494)
!4496 = !DILocation(line: 312, column: 3, scope: !4473)
!4497 = distinct !DISubprogram(name: "ximemdup", scope: !873, file: !873, line: 316, type: !4498, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4500)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!160, !1160, !892}
!4500 = !{!4501, !4502}
!4501 = !DILocalVariable(name: "p", arg: 1, scope: !4497, file: !873, line: 316, type: !1160)
!4502 = !DILocalVariable(name: "s", arg: 2, scope: !4497, file: !873, line: 316, type: !892)
!4503 = !DILocation(line: 0, scope: !4497)
!4504 = !DILocation(line: 0, scope: !4180, inlinedAt: !4505)
!4505 = distinct !DILocation(line: 318, column: 18, scope: !4497)
!4506 = !DILocation(line: 0, scope: !4187, inlinedAt: !4507)
!4507 = distinct !DILocation(line: 55, column: 25, scope: !4180, inlinedAt: !4505)
!4508 = !DILocation(line: 57, column: 26, scope: !4187, inlinedAt: !4507)
!4509 = !DILocation(line: 0, scope: !4147, inlinedAt: !4510)
!4510 = distinct !DILocation(line: 55, column: 10, scope: !4180, inlinedAt: !4505)
!4511 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4510)
!4512 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4510)
!4513 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4510)
!4514 = !DILocation(line: 0, scope: !4489, inlinedAt: !4515)
!4515 = distinct !DILocation(line: 318, column: 10, scope: !4497)
!4516 = !DILocation(line: 29, column: 10, scope: !4489, inlinedAt: !4515)
!4517 = !DILocation(line: 318, column: 3, scope: !4497)
!4518 = distinct !DISubprogram(name: "ximemdup0", scope: !873, file: !873, line: 325, type: !4519, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4521)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!159, !1160, !892}
!4521 = !{!4522, !4523, !4524}
!4522 = !DILocalVariable(name: "p", arg: 1, scope: !4518, file: !873, line: 325, type: !1160)
!4523 = !DILocalVariable(name: "s", arg: 2, scope: !4518, file: !873, line: 325, type: !892)
!4524 = !DILocalVariable(name: "result", scope: !4518, file: !873, line: 327, type: !159)
!4525 = !DILocation(line: 0, scope: !4518)
!4526 = !DILocation(line: 327, column: 30, scope: !4518)
!4527 = !DILocation(line: 0, scope: !4180, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 327, column: 18, scope: !4518)
!4529 = !DILocation(line: 0, scope: !4187, inlinedAt: !4530)
!4530 = distinct !DILocation(line: 55, column: 25, scope: !4180, inlinedAt: !4528)
!4531 = !DILocation(line: 57, column: 26, scope: !4187, inlinedAt: !4530)
!4532 = !DILocation(line: 0, scope: !4147, inlinedAt: !4533)
!4533 = distinct !DILocation(line: 55, column: 10, scope: !4180, inlinedAt: !4528)
!4534 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4533)
!4535 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4533)
!4536 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4533)
!4537 = !DILocation(line: 328, column: 3, scope: !4518)
!4538 = !DILocation(line: 328, column: 13, scope: !4518)
!4539 = !DILocation(line: 0, scope: !4489, inlinedAt: !4540)
!4540 = distinct !DILocation(line: 329, column: 10, scope: !4518)
!4541 = !DILocation(line: 29, column: 10, scope: !4489, inlinedAt: !4540)
!4542 = !DILocation(line: 329, column: 3, scope: !4518)
!4543 = distinct !DISubprogram(name: "xstrdup", scope: !873, file: !873, line: 335, type: !1138, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4544)
!4544 = !{!4545}
!4545 = !DILocalVariable(name: "string", arg: 1, scope: !4543, file: !873, line: 335, type: !165)
!4546 = !DILocation(line: 0, scope: !4543)
!4547 = !DILocation(line: 337, column: 27, scope: !4543)
!4548 = !DILocation(line: 337, column: 43, scope: !4543)
!4549 = !DILocation(line: 0, scope: !4473, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 337, column: 10, scope: !4543)
!4551 = !DILocation(line: 0, scope: !4166, inlinedAt: !4552)
!4552 = distinct !DILocation(line: 312, column: 18, scope: !4473, inlinedAt: !4550)
!4553 = !DILocation(line: 49, column: 25, scope: !4166, inlinedAt: !4552)
!4554 = !DILocation(line: 0, scope: !4147, inlinedAt: !4555)
!4555 = distinct !DILocation(line: 49, column: 10, scope: !4166, inlinedAt: !4552)
!4556 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4555)
!4557 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4555)
!4558 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4555)
!4559 = !DILocation(line: 0, scope: !4489, inlinedAt: !4560)
!4560 = distinct !DILocation(line: 312, column: 10, scope: !4473, inlinedAt: !4550)
!4561 = !DILocation(line: 29, column: 10, scope: !4489, inlinedAt: !4560)
!4562 = !DILocation(line: 337, column: 3, scope: !4543)
!4563 = distinct !DISubprogram(name: "xalloc_die", scope: !775, file: !775, line: 32, type: !544, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !906, retainedNodes: !4564)
!4564 = !{!4565}
!4565 = !DILocalVariable(name: "__errstatus", scope: !4566, file: !775, line: 34, type: !1554)
!4566 = distinct !DILexicalBlock(scope: !4563, file: !775, line: 34, column: 3)
!4567 = !DILocation(line: 34, column: 3, scope: !4566)
!4568 = !DILocation(line: 0, scope: !4566)
!4569 = !DILocation(line: 40, column: 3, scope: !4563)
!4570 = distinct !DISubprogram(name: "xmemcoll", scope: !782, file: !782, line: 54, type: !4571, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !908, retainedNodes: !4573)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!116, !159, !162, !159, !162}
!4573 = !{!4574, !4575, !4576, !4577, !4578, !4579}
!4574 = !DILocalVariable(name: "s1", arg: 1, scope: !4570, file: !782, line: 54, type: !159)
!4575 = !DILocalVariable(name: "s1len", arg: 2, scope: !4570, file: !782, line: 54, type: !162)
!4576 = !DILocalVariable(name: "s2", arg: 3, scope: !4570, file: !782, line: 54, type: !159)
!4577 = !DILocalVariable(name: "s2len", arg: 4, scope: !4570, file: !782, line: 54, type: !162)
!4578 = !DILocalVariable(name: "diff", scope: !4570, file: !782, line: 56, type: !116)
!4579 = !DILocalVariable(name: "collation_errno", scope: !4570, file: !782, line: 57, type: !116)
!4580 = !DILocation(line: 0, scope: !4570)
!4581 = !DILocation(line: 56, column: 14, scope: !4570)
!4582 = !DILocation(line: 57, column: 25, scope: !4570)
!4583 = !DILocation(line: 58, column: 7, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4570, file: !782, line: 58, column: 7)
!4585 = !DILocation(line: 58, column: 7, scope: !4570)
!4586 = !DILocalVariable(name: "collation_errno", arg: 1, scope: !4587, file: !782, line: 35, type: !116)
!4587 = distinct !DISubprogram(name: "collate_error", scope: !782, file: !782, line: 35, type: !4588, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !908, retainedNodes: !4590)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{null, !116, !165, !162, !165, !162}
!4590 = !{!4586, !4591, !4592, !4593, !4594, !4595}
!4591 = !DILocalVariable(name: "s1", arg: 2, scope: !4587, file: !782, line: 36, type: !165)
!4592 = !DILocalVariable(name: "s1len", arg: 3, scope: !4587, file: !782, line: 36, type: !162)
!4593 = !DILocalVariable(name: "s2", arg: 4, scope: !4587, file: !782, line: 37, type: !165)
!4594 = !DILocalVariable(name: "s2len", arg: 5, scope: !4587, file: !782, line: 37, type: !162)
!4595 = !DILocalVariable(name: "__errstatus", scope: !4596, file: !782, line: 41, type: !1554)
!4596 = distinct !DILexicalBlock(scope: !4587, file: !782, line: 41, column: 3)
!4597 = !DILocation(line: 0, scope: !4587, inlinedAt: !4598)
!4598 = distinct !DILocation(line: 59, column: 5, scope: !4584)
!4599 = !DILocation(line: 39, column: 3, scope: !4587, inlinedAt: !4598)
!4600 = !DILocation(line: 40, column: 3, scope: !4587, inlinedAt: !4598)
!4601 = !DILocation(line: 41, column: 3, scope: !4596, inlinedAt: !4598)
!4602 = !DILocation(line: 0, scope: !4596, inlinedAt: !4598)
!4603 = !DILocation(line: 59, column: 5, scope: !4584)
!4604 = !DILocation(line: 60, column: 3, scope: !4570)
!4605 = distinct !DISubprogram(name: "xmemcoll0", scope: !782, file: !782, line: 69, type: !2495, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !908, retainedNodes: !4606)
!4606 = !{!4607, !4608, !4609, !4610, !4611, !4612}
!4607 = !DILocalVariable(name: "s1", arg: 1, scope: !4605, file: !782, line: 69, type: !165)
!4608 = !DILocalVariable(name: "s1size", arg: 2, scope: !4605, file: !782, line: 69, type: !162)
!4609 = !DILocalVariable(name: "s2", arg: 3, scope: !4605, file: !782, line: 69, type: !165)
!4610 = !DILocalVariable(name: "s2size", arg: 4, scope: !4605, file: !782, line: 69, type: !162)
!4611 = !DILocalVariable(name: "diff", scope: !4605, file: !782, line: 71, type: !116)
!4612 = !DILocalVariable(name: "collation_errno", scope: !4605, file: !782, line: 72, type: !116)
!4613 = !DILocation(line: 0, scope: !4605)
!4614 = !DILocation(line: 71, column: 14, scope: !4605)
!4615 = !DILocation(line: 72, column: 25, scope: !4605)
!4616 = !DILocation(line: 73, column: 7, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4605, file: !782, line: 73, column: 7)
!4618 = !DILocation(line: 73, column: 7, scope: !4605)
!4619 = !DILocation(line: 74, column: 48, scope: !4617)
!4620 = !DILocation(line: 74, column: 64, scope: !4617)
!4621 = !DILocation(line: 0, scope: !4587, inlinedAt: !4622)
!4622 = distinct !DILocation(line: 74, column: 5, scope: !4617)
!4623 = !DILocation(line: 39, column: 3, scope: !4587, inlinedAt: !4622)
!4624 = !DILocation(line: 40, column: 3, scope: !4587, inlinedAt: !4622)
!4625 = !DILocation(line: 41, column: 3, scope: !4596, inlinedAt: !4622)
!4626 = !DILocation(line: 0, scope: !4596, inlinedAt: !4622)
!4627 = !DILocation(line: 74, column: 5, scope: !4617)
!4628 = !DILocation(line: 75, column: 3, scope: !4605)
!4629 = distinct !DISubprogram(name: "rpl_fopen", scope: !912, file: !912, line: 46, type: !4630, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !4666)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!4632, !165, !165}
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4634)
!4634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4635)
!4635 = !{!4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4634, file: !236, line: 51, baseType: !116, size: 32)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4634, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4634, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4634, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4634, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4634, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4634, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4634, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4634, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4634, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4634, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4634, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4634, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4634, file: !236, line: 70, baseType: !4650, size: 64, offset: 832)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4634, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4634, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4634, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4634, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4634, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4634, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4634, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4634, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4634, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4634, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4634, file: !236, line: 93, baseType: !4650, size: 64, offset: 1344)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4634, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4634, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4634, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4634, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!4666 = !{!4667, !4668, !4669, !4670, !4671, !4672, !4676, !4678, !4679, !4684, !4687, !4688}
!4667 = !DILocalVariable(name: "filename", arg: 1, scope: !4629, file: !912, line: 46, type: !165)
!4668 = !DILocalVariable(name: "mode", arg: 2, scope: !4629, file: !912, line: 46, type: !165)
!4669 = !DILocalVariable(name: "open_direction", scope: !4629, file: !912, line: 54, type: !116)
!4670 = !DILocalVariable(name: "open_flags", scope: !4629, file: !912, line: 55, type: !116)
!4671 = !DILocalVariable(name: "open_flags_gnu", scope: !4629, file: !912, line: 57, type: !205)
!4672 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4629, file: !912, line: 59, type: !4673)
!4673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4674)
!4674 = !{!4675}
!4675 = !DISubrange(count: 81)
!4676 = !DILocalVariable(name: "p", scope: !4677, file: !912, line: 62, type: !165)
!4677 = distinct !DILexicalBlock(scope: !4629, file: !912, line: 61, column: 3)
!4678 = !DILocalVariable(name: "q", scope: !4677, file: !912, line: 64, type: !159)
!4679 = !DILocalVariable(name: "len", scope: !4680, file: !912, line: 128, type: !162)
!4680 = distinct !DILexicalBlock(scope: !4681, file: !912, line: 127, column: 9)
!4681 = distinct !DILexicalBlock(scope: !4682, file: !912, line: 68, column: 7)
!4682 = distinct !DILexicalBlock(scope: !4683, file: !912, line: 67, column: 5)
!4683 = distinct !DILexicalBlock(scope: !4677, file: !912, line: 67, column: 5)
!4684 = !DILocalVariable(name: "fd", scope: !4685, file: !912, line: 199, type: !116)
!4685 = distinct !DILexicalBlock(scope: !4686, file: !912, line: 198, column: 5)
!4686 = distinct !DILexicalBlock(scope: !4629, file: !912, line: 197, column: 7)
!4687 = !DILocalVariable(name: "fp", scope: !4685, file: !912, line: 204, type: !4632)
!4688 = !DILocalVariable(name: "saved_errno", scope: !4689, file: !912, line: 207, type: !116)
!4689 = distinct !DILexicalBlock(scope: !4690, file: !912, line: 206, column: 9)
!4690 = distinct !DILexicalBlock(scope: !4685, file: !912, line: 205, column: 11)
!4691 = !DILocation(line: 0, scope: !4629)
!4692 = !DILocation(line: 59, column: 3, scope: !4629)
!4693 = !DILocation(line: 59, column: 8, scope: !4629)
!4694 = !DILocation(line: 0, scope: !4677)
!4695 = !DILocation(line: 67, column: 12, scope: !4682)
!4696 = !DILocation(line: 67, column: 15, scope: !4682)
!4697 = !DILocation(line: 67, column: 5, scope: !4683)
!4698 = !DILocation(line: 138, column: 8, scope: !4677)
!4699 = !DILocation(line: 197, column: 7, scope: !4629)
!4700 = !DILocation(line: 69, column: 9, scope: !4681)
!4701 = !DILocation(line: 74, column: 19, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4703, file: !912, line: 74, column: 17)
!4703 = distinct !DILexicalBlock(scope: !4681, file: !912, line: 70, column: 11)
!4704 = !DILocation(line: 74, column: 17, scope: !4703)
!4705 = !DILocation(line: 75, column: 17, scope: !4702)
!4706 = !DILocation(line: 75, column: 20, scope: !4702)
!4707 = !DILocation(line: 75, column: 15, scope: !4702)
!4708 = !DILocation(line: 80, column: 24, scope: !4703)
!4709 = !DILocation(line: 82, column: 19, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4703, file: !912, line: 82, column: 17)
!4711 = !DILocation(line: 82, column: 17, scope: !4703)
!4712 = !DILocation(line: 83, column: 17, scope: !4710)
!4713 = !DILocation(line: 83, column: 20, scope: !4710)
!4714 = !DILocation(line: 83, column: 15, scope: !4710)
!4715 = !DILocation(line: 88, column: 24, scope: !4703)
!4716 = !DILocation(line: 90, column: 19, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4703, file: !912, line: 90, column: 17)
!4718 = !DILocation(line: 90, column: 17, scope: !4703)
!4719 = !DILocation(line: 91, column: 17, scope: !4717)
!4720 = !DILocation(line: 91, column: 20, scope: !4717)
!4721 = !DILocation(line: 91, column: 15, scope: !4717)
!4722 = !DILocation(line: 100, column: 19, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4703, file: !912, line: 100, column: 17)
!4724 = !DILocation(line: 100, column: 17, scope: !4703)
!4725 = !DILocation(line: 101, column: 17, scope: !4723)
!4726 = !DILocation(line: 101, column: 20, scope: !4723)
!4727 = !DILocation(line: 101, column: 15, scope: !4723)
!4728 = !DILocation(line: 107, column: 19, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4703, file: !912, line: 107, column: 17)
!4730 = !DILocation(line: 107, column: 17, scope: !4703)
!4731 = !DILocation(line: 108, column: 17, scope: !4729)
!4732 = !DILocation(line: 108, column: 20, scope: !4729)
!4733 = !DILocation(line: 108, column: 15, scope: !4729)
!4734 = !DILocation(line: 113, column: 24, scope: !4703)
!4735 = !DILocation(line: 115, column: 13, scope: !4703)
!4736 = !DILocation(line: 117, column: 24, scope: !4703)
!4737 = !DILocation(line: 119, column: 13, scope: !4703)
!4738 = !DILocation(line: 128, column: 24, scope: !4680)
!4739 = !DILocation(line: 0, scope: !4680)
!4740 = !DILocation(line: 129, column: 48, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4680, file: !912, line: 129, column: 15)
!4742 = !DILocation(line: 129, column: 15, scope: !4680)
!4743 = !DILocalVariable(name: "__dest", arg: 1, scope: !4744, file: !2303, line: 26, type: !3942)
!4744 = distinct !DISubprogram(name: "memcpy", scope: !2303, file: !2303, line: 26, type: !3940, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !4745)
!4745 = !{!4743, !4746, !4747}
!4746 = !DILocalVariable(name: "__src", arg: 2, scope: !4744, file: !2303, line: 26, type: !1159)
!4747 = !DILocalVariable(name: "__len", arg: 3, scope: !4744, file: !2303, line: 26, type: !162)
!4748 = !DILocation(line: 0, scope: !4744, inlinedAt: !4749)
!4749 = distinct !DILocation(line: 131, column: 11, scope: !4680)
!4750 = !DILocation(line: 29, column: 10, scope: !4744, inlinedAt: !4749)
!4751 = !DILocation(line: 132, column: 13, scope: !4680)
!4752 = !DILocation(line: 135, column: 9, scope: !4681)
!4753 = !DILocation(line: 67, column: 25, scope: !4682)
!4754 = distinct !{!4754, !4697, !4755, !1058}
!4755 = !DILocation(line: 136, column: 7, scope: !4683)
!4756 = !DILocation(line: 197, column: 7, scope: !4686)
!4757 = !DILocation(line: 199, column: 47, scope: !4685)
!4758 = !DILocation(line: 199, column: 16, scope: !4685)
!4759 = !DILocation(line: 0, scope: !4685)
!4760 = !DILocation(line: 201, column: 14, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4685, file: !912, line: 201, column: 11)
!4762 = !DILocation(line: 201, column: 11, scope: !4685)
!4763 = !DILocation(line: 204, column: 18, scope: !4685)
!4764 = !DILocation(line: 205, column: 14, scope: !4690)
!4765 = !DILocation(line: 205, column: 11, scope: !4685)
!4766 = !DILocation(line: 207, column: 29, scope: !4689)
!4767 = !DILocation(line: 0, scope: !4689)
!4768 = !DILocation(line: 208, column: 11, scope: !4689)
!4769 = !DILocation(line: 209, column: 17, scope: !4689)
!4770 = !DILocation(line: 210, column: 9, scope: !4689)
!4771 = !DILocalVariable(name: "filename", arg: 1, scope: !4772, file: !912, line: 30, type: !165)
!4772 = distinct !DISubprogram(name: "orig_fopen", scope: !912, file: !912, line: 30, type: !4630, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !4773)
!4773 = !{!4771, !4774}
!4774 = !DILocalVariable(name: "mode", arg: 2, scope: !4772, file: !912, line: 30, type: !165)
!4775 = !DILocation(line: 0, scope: !4772, inlinedAt: !4776)
!4776 = distinct !DILocation(line: 219, column: 10, scope: !4629)
!4777 = !DILocation(line: 32, column: 10, scope: !4772, inlinedAt: !4776)
!4778 = !DILocation(line: 219, column: 3, scope: !4629)
!4779 = !DILocation(line: 220, column: 1, scope: !4629)
!4780 = !DISubprogram(name: "open", scope: !1773, file: !1773, line: 181, type: !4781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!116, !165, !116, null}
!4783 = !DISubprogram(name: "fopen", scope: !1006, file: !1006, line: 258, type: !4784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{!4632, !1001, !1001}
!4786 = distinct !DISubprogram(name: "close_stream", scope: !914, file: !914, line: 55, type: !4787, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4823)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!116, !4789}
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4791)
!4791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4792)
!4792 = !{!4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4791, file: !236, line: 51, baseType: !116, size: 32)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4791, file: !236, line: 54, baseType: !159, size: 64, offset: 64)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4791, file: !236, line: 55, baseType: !159, size: 64, offset: 128)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4791, file: !236, line: 56, baseType: !159, size: 64, offset: 192)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4791, file: !236, line: 57, baseType: !159, size: 64, offset: 256)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4791, file: !236, line: 58, baseType: !159, size: 64, offset: 320)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4791, file: !236, line: 59, baseType: !159, size: 64, offset: 384)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4791, file: !236, line: 60, baseType: !159, size: 64, offset: 448)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4791, file: !236, line: 61, baseType: !159, size: 64, offset: 512)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4791, file: !236, line: 64, baseType: !159, size: 64, offset: 576)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4791, file: !236, line: 65, baseType: !159, size: 64, offset: 640)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4791, file: !236, line: 66, baseType: !159, size: 64, offset: 704)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4791, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4791, file: !236, line: 70, baseType: !4807, size: 64, offset: 832)
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4791, file: !236, line: 72, baseType: !116, size: 32, offset: 896)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4791, file: !236, line: 73, baseType: !116, size: 32, offset: 928)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4791, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4791, file: !236, line: 77, baseType: !161, size: 16, offset: 1024)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4791, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4791, file: !236, line: 79, baseType: !85, size: 8, offset: 1048)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4791, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4791, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4791, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4791, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4791, file: !236, line: 93, baseType: !4807, size: 64, offset: 1344)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4791, file: !236, line: 94, baseType: !160, size: 64, offset: 1408)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4791, file: !236, line: 95, baseType: !162, size: 64, offset: 1472)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4791, file: !236, line: 96, baseType: !116, size: 32, offset: 1536)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4791, file: !236, line: 98, baseType: !183, size: 160, offset: 1568)
!4823 = !{!4824, !4825, !4827, !4828}
!4824 = !DILocalVariable(name: "stream", arg: 1, scope: !4786, file: !914, line: 55, type: !4789)
!4825 = !DILocalVariable(name: "some_pending", scope: !4786, file: !914, line: 57, type: !4826)
!4826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!4827 = !DILocalVariable(name: "prev_fail", scope: !4786, file: !914, line: 58, type: !4826)
!4828 = !DILocalVariable(name: "fclose_fail", scope: !4786, file: !914, line: 59, type: !4826)
!4829 = !DILocation(line: 0, scope: !4786)
!4830 = !DILocation(line: 57, column: 30, scope: !4786)
!4831 = !DILocalVariable(name: "__stream", arg: 1, scope: !4832, file: !1340, line: 135, type: !4789)
!4832 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1340, file: !1340, line: 135, type: !4787, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4833)
!4833 = !{!4831}
!4834 = !DILocation(line: 0, scope: !4832, inlinedAt: !4835)
!4835 = distinct !DILocation(line: 58, column: 27, scope: !4786)
!4836 = !DILocation(line: 137, column: 10, scope: !4832, inlinedAt: !4835)
!4837 = !DILocation(line: 58, column: 43, scope: !4786)
!4838 = !DILocation(line: 59, column: 29, scope: !4786)
!4839 = !DILocation(line: 59, column: 45, scope: !4786)
!4840 = !DILocation(line: 69, column: 17, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4786, file: !914, line: 69, column: 7)
!4842 = !DILocation(line: 57, column: 50, scope: !4786)
!4843 = !DILocation(line: 69, column: 33, scope: !4841)
!4844 = !DILocation(line: 69, column: 53, scope: !4841)
!4845 = !DILocation(line: 69, column: 59, scope: !4841)
!4846 = !DILocation(line: 69, column: 7, scope: !4786)
!4847 = !DILocation(line: 71, column: 11, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4841, file: !914, line: 70, column: 5)
!4849 = !DILocation(line: 72, column: 9, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4848, file: !914, line: 71, column: 11)
!4851 = !DILocation(line: 72, column: 15, scope: !4850)
!4852 = !DILocation(line: 77, column: 1, scope: !4786)
!4853 = !DISubprogram(name: "__fpending", scope: !1981, file: !1981, line: 75, type: !4854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!162, !4789}
!4856 = distinct !DISubprogram(name: "rpl_fcntl", scope: !801, file: !801, line: 202, type: !1774, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !4857)
!4857 = !{!4858, !4859, !4860, !4871, !4872, !4875, !4877, !4881}
!4858 = !DILocalVariable(name: "fd", arg: 1, scope: !4856, file: !801, line: 202, type: !116)
!4859 = !DILocalVariable(name: "action", arg: 2, scope: !4856, file: !801, line: 202, type: !116)
!4860 = !DILocalVariable(name: "arg", scope: !4856, file: !801, line: 208, type: !4861)
!4861 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1786, line: 22, baseType: !4862)
!4862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4863, baseType: !4864)
!4863 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!4864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4865, size: 192, elements: !86)
!4865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4866)
!4866 = !{!4867, !4868, !4869, !4870}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4865, file: !4863, line: 208, baseType: !103, size: 32)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4865, file: !4863, line: 208, baseType: !103, size: 32, offset: 32)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4865, file: !4863, line: 208, baseType: !160, size: 64, offset: 64)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4865, file: !4863, line: 208, baseType: !160, size: 64, offset: 128)
!4871 = !DILocalVariable(name: "result", scope: !4856, file: !801, line: 211, type: !116)
!4872 = !DILocalVariable(name: "target", scope: !4873, file: !801, line: 216, type: !116)
!4873 = distinct !DILexicalBlock(scope: !4874, file: !801, line: 215, column: 7)
!4874 = distinct !DILexicalBlock(scope: !4856, file: !801, line: 213, column: 5)
!4875 = !DILocalVariable(name: "target", scope: !4876, file: !801, line: 223, type: !116)
!4876 = distinct !DILexicalBlock(scope: !4874, file: !801, line: 222, column: 7)
!4877 = !DILocalVariable(name: "x", scope: !4878, file: !801, line: 418, type: !116)
!4878 = distinct !DILexicalBlock(scope: !4879, file: !801, line: 417, column: 13)
!4879 = distinct !DILexicalBlock(scope: !4880, file: !801, line: 261, column: 11)
!4880 = distinct !DILexicalBlock(scope: !4874, file: !801, line: 258, column: 7)
!4881 = !DILocalVariable(name: "p", scope: !4882, file: !801, line: 426, type: !160)
!4882 = distinct !DILexicalBlock(scope: !4879, file: !801, line: 425, column: 13)
!4883 = !DILocation(line: 0, scope: !4856)
!4884 = !DILocation(line: 208, column: 3, scope: !4856)
!4885 = !DILocation(line: 208, column: 11, scope: !4856)
!4886 = !DILocation(line: 209, column: 3, scope: !4856)
!4887 = !DILocation(line: 212, column: 3, scope: !4856)
!4888 = !DILocation(line: 216, column: 22, scope: !4873)
!4889 = !DILocation(line: 0, scope: !4873)
!4890 = !DILocalVariable(name: "fd", arg: 1, scope: !4891, file: !801, line: 444, type: !116)
!4891 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !801, file: !801, line: 444, type: !802, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !4892)
!4892 = !{!4890, !4893, !4894}
!4893 = !DILocalVariable(name: "target", arg: 2, scope: !4891, file: !801, line: 444, type: !116)
!4894 = !DILocalVariable(name: "result", scope: !4891, file: !801, line: 446, type: !116)
!4895 = !DILocation(line: 0, scope: !4891, inlinedAt: !4896)
!4896 = distinct !DILocation(line: 217, column: 18, scope: !4873)
!4897 = !DILocation(line: 479, column: 12, scope: !4891, inlinedAt: !4896)
!4898 = !DILocation(line: 223, column: 22, scope: !4876)
!4899 = !DILocation(line: 0, scope: !4876)
!4900 = !DILocation(line: 0, scope: !800, inlinedAt: !4901)
!4901 = distinct !DILocation(line: 224, column: 18, scope: !4876)
!4902 = !DILocation(line: 507, column: 12, scope: !4903, inlinedAt: !4901)
!4903 = distinct !DILexicalBlock(scope: !800, file: !801, line: 507, column: 7)
!4904 = !DILocation(line: 507, column: 9, scope: !4903, inlinedAt: !4901)
!4905 = !DILocation(line: 507, column: 7, scope: !800, inlinedAt: !4901)
!4906 = !DILocation(line: 509, column: 16, scope: !4907, inlinedAt: !4901)
!4907 = distinct !DILexicalBlock(scope: !4903, file: !801, line: 508, column: 5)
!4908 = !DILocation(line: 510, column: 13, scope: !4909, inlinedAt: !4901)
!4909 = distinct !DILexicalBlock(scope: !4907, file: !801, line: 510, column: 11)
!4910 = !DILocation(line: 510, column: 23, scope: !4909, inlinedAt: !4901)
!4911 = !DILocation(line: 510, column: 26, scope: !4909, inlinedAt: !4901)
!4912 = !DILocation(line: 510, column: 32, scope: !4909, inlinedAt: !4901)
!4913 = !DILocation(line: 510, column: 11, scope: !4907, inlinedAt: !4901)
!4914 = !DILocation(line: 512, column: 30, scope: !4915, inlinedAt: !4901)
!4915 = distinct !DILexicalBlock(scope: !4909, file: !801, line: 511, column: 9)
!4916 = !DILocation(line: 528, column: 19, scope: !812, inlinedAt: !4901)
!4917 = !DILocation(line: 0, scope: !4891, inlinedAt: !4918)
!4918 = distinct !DILocation(line: 520, column: 20, scope: !4919, inlinedAt: !4901)
!4919 = distinct !DILexicalBlock(scope: !4909, file: !801, line: 519, column: 9)
!4920 = !DILocation(line: 479, column: 12, scope: !4891, inlinedAt: !4918)
!4921 = !DILocation(line: 521, column: 22, scope: !4922, inlinedAt: !4901)
!4922 = distinct !DILexicalBlock(scope: !4919, file: !801, line: 521, column: 15)
!4923 = !DILocation(line: 521, column: 15, scope: !4919, inlinedAt: !4901)
!4924 = !DILocation(line: 522, column: 32, scope: !4922, inlinedAt: !4901)
!4925 = !DILocation(line: 522, column: 13, scope: !4922, inlinedAt: !4901)
!4926 = !DILocation(line: 0, scope: !4891, inlinedAt: !4927)
!4927 = distinct !DILocation(line: 527, column: 14, scope: !4903, inlinedAt: !4901)
!4928 = !DILocation(line: 479, column: 12, scope: !4891, inlinedAt: !4927)
!4929 = !DILocation(line: 0, scope: !4903, inlinedAt: !4901)
!4930 = !DILocation(line: 528, column: 9, scope: !812, inlinedAt: !4901)
!4931 = !DILocation(line: 530, column: 19, scope: !811, inlinedAt: !4901)
!4932 = !DILocation(line: 0, scope: !811, inlinedAt: !4901)
!4933 = !DILocation(line: 531, column: 17, scope: !815, inlinedAt: !4901)
!4934 = !DILocation(line: 531, column: 21, scope: !815, inlinedAt: !4901)
!4935 = !DILocation(line: 531, column: 54, scope: !815, inlinedAt: !4901)
!4936 = !DILocation(line: 531, column: 24, scope: !815, inlinedAt: !4901)
!4937 = !DILocation(line: 531, column: 68, scope: !815, inlinedAt: !4901)
!4938 = !DILocation(line: 531, column: 11, scope: !811, inlinedAt: !4901)
!4939 = !DILocation(line: 533, column: 29, scope: !814, inlinedAt: !4901)
!4940 = !DILocation(line: 0, scope: !814, inlinedAt: !4901)
!4941 = !DILocation(line: 534, column: 11, scope: !814, inlinedAt: !4901)
!4942 = !DILocation(line: 535, column: 17, scope: !814, inlinedAt: !4901)
!4943 = !DILocation(line: 537, column: 9, scope: !814, inlinedAt: !4901)
!4944 = !DILocation(line: 329, column: 22, scope: !4879)
!4945 = !DILocation(line: 330, column: 13, scope: !4879)
!4946 = !DILocation(line: 418, column: 23, scope: !4878)
!4947 = !DILocation(line: 0, scope: !4878)
!4948 = !DILocation(line: 419, column: 24, scope: !4878)
!4949 = !DILocation(line: 421, column: 13, scope: !4879)
!4950 = !DILocation(line: 426, column: 25, scope: !4882)
!4951 = !DILocation(line: 0, scope: !4882)
!4952 = !DILocation(line: 427, column: 24, scope: !4882)
!4953 = !DILocation(line: 429, column: 13, scope: !4879)
!4954 = !DILocation(line: 0, scope: !4874)
!4955 = !DILocation(line: 438, column: 3, scope: !4856)
!4956 = !DILocation(line: 441, column: 1, scope: !4856)
!4957 = !DILocation(line: 440, column: 3, scope: !4856)
!4958 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !818, file: !818, line: 100, type: !4959, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4962)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!162, !2581, !165, !162, !4961}
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!4962 = !{!4963, !4964, !4965, !4966, !4967}
!4963 = !DILocalVariable(name: "pwc", arg: 1, scope: !4958, file: !818, line: 100, type: !2581)
!4964 = !DILocalVariable(name: "s", arg: 2, scope: !4958, file: !818, line: 100, type: !165)
!4965 = !DILocalVariable(name: "n", arg: 3, scope: !4958, file: !818, line: 100, type: !162)
!4966 = !DILocalVariable(name: "ps", arg: 4, scope: !4958, file: !818, line: 100, type: !4961)
!4967 = !DILocalVariable(name: "ret", scope: !4958, file: !818, line: 130, type: !162)
!4968 = !DILocation(line: 0, scope: !4958)
!4969 = !DILocation(line: 105, column: 9, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4958, file: !818, line: 105, column: 7)
!4971 = !DILocation(line: 105, column: 7, scope: !4958)
!4972 = !DILocation(line: 117, column: 10, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4958, file: !818, line: 117, column: 7)
!4974 = !DILocation(line: 117, column: 7, scope: !4958)
!4975 = !DILocation(line: 130, column: 16, scope: !4958)
!4976 = !DILocation(line: 135, column: 11, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4958, file: !818, line: 135, column: 7)
!4978 = !DILocation(line: 135, column: 25, scope: !4977)
!4979 = !DILocation(line: 135, column: 30, scope: !4977)
!4980 = !DILocation(line: 135, column: 7, scope: !4958)
!4981 = !DILocalVariable(name: "ps", arg: 1, scope: !4982, file: !2557, line: 1135, type: !4961)
!4982 = distinct !DISubprogram(name: "mbszero", scope: !2557, file: !2557, line: 1135, type: !4983, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4985)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{null, !4961}
!4985 = !{!4981}
!4986 = !DILocation(line: 0, scope: !4982, inlinedAt: !4987)
!4987 = distinct !DILocation(line: 137, column: 5, scope: !4977)
!4988 = !DILocalVariable(name: "__dest", arg: 1, scope: !4989, file: !2303, line: 57, type: !160)
!4989 = distinct !DISubprogram(name: "memset", scope: !2303, file: !2303, line: 57, type: !2304, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4990)
!4990 = !{!4988, !4991, !4992}
!4991 = !DILocalVariable(name: "__ch", arg: 2, scope: !4989, file: !2303, line: 57, type: !116)
!4992 = !DILocalVariable(name: "__len", arg: 3, scope: !4989, file: !2303, line: 57, type: !162)
!4993 = !DILocation(line: 0, scope: !4989, inlinedAt: !4994)
!4994 = distinct !DILocation(line: 1137, column: 3, scope: !4982, inlinedAt: !4987)
!4995 = !DILocation(line: 59, column: 10, scope: !4989, inlinedAt: !4994)
!4996 = !DILocation(line: 137, column: 5, scope: !4977)
!4997 = !DILocation(line: 138, column: 11, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4958, file: !818, line: 138, column: 7)
!4999 = !DILocation(line: 138, column: 7, scope: !4958)
!5000 = !DILocation(line: 139, column: 5, scope: !4998)
!5001 = !DILocation(line: 143, column: 26, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4958, file: !818, line: 143, column: 7)
!5003 = !DILocation(line: 143, column: 41, scope: !5002)
!5004 = !DILocation(line: 143, column: 7, scope: !4958)
!5005 = !DILocation(line: 145, column: 15, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !5007, file: !818, line: 145, column: 11)
!5007 = distinct !DILexicalBlock(scope: !5002, file: !818, line: 144, column: 5)
!5008 = !DILocation(line: 145, column: 11, scope: !5007)
!5009 = !DILocation(line: 146, column: 32, scope: !5006)
!5010 = !DILocation(line: 146, column: 16, scope: !5006)
!5011 = !DILocation(line: 146, column: 14, scope: !5006)
!5012 = !DILocation(line: 146, column: 9, scope: !5006)
!5013 = !DILocation(line: 286, column: 1, scope: !4958)
!5014 = !DISubprogram(name: "mbsinit", scope: !5015, file: !5015, line: 293, type: !5016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!5015 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5016 = !DISubroutineType(types: !5017)
!5017 = !{!116, !5018}
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!5020 = distinct !DISubprogram(name: "memcoll", scope: !916, file: !916, line: 66, type: !4571, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !5021)
!5021 = !{!5022, !5023, !5024, !5025, !5026, !5027, !5030}
!5022 = !DILocalVariable(name: "s1", arg: 1, scope: !5020, file: !916, line: 66, type: !159)
!5023 = !DILocalVariable(name: "s1len", arg: 2, scope: !5020, file: !916, line: 66, type: !162)
!5024 = !DILocalVariable(name: "s2", arg: 3, scope: !5020, file: !916, line: 66, type: !159)
!5025 = !DILocalVariable(name: "s2len", arg: 4, scope: !5020, file: !916, line: 66, type: !162)
!5026 = !DILocalVariable(name: "diff", scope: !5020, file: !916, line: 68, type: !116)
!5027 = !DILocalVariable(name: "n1", scope: !5028, file: !916, line: 81, type: !4)
!5028 = distinct !DILexicalBlock(scope: !5029, file: !916, line: 80, column: 5)
!5029 = distinct !DILexicalBlock(scope: !5020, file: !916, line: 74, column: 7)
!5030 = !DILocalVariable(name: "n2", scope: !5028, file: !916, line: 82, type: !4)
!5031 = !DILocation(line: 0, scope: !5020)
!5032 = !DILocation(line: 74, column: 13, scope: !5029)
!5033 = !DILocation(line: 74, column: 22, scope: !5029)
!5034 = !DILocalVariable(name: "__s1", arg: 1, scope: !5035, file: !1024, line: 974, type: !1160)
!5035 = distinct !DISubprogram(name: "memeq", scope: !1024, file: !1024, line: 974, type: !2527, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !5036)
!5036 = !{!5034, !5037, !5038}
!5037 = !DILocalVariable(name: "__s2", arg: 2, scope: !5035, file: !1024, line: 974, type: !1160)
!5038 = !DILocalVariable(name: "__n", arg: 3, scope: !5035, file: !1024, line: 974, type: !162)
!5039 = !DILocation(line: 0, scope: !5035, inlinedAt: !5040)
!5040 = distinct !DILocation(line: 74, column: 25, scope: !5029)
!5041 = !DILocation(line: 976, column: 11, scope: !5035, inlinedAt: !5040)
!5042 = !DILocation(line: 976, column: 10, scope: !5035, inlinedAt: !5040)
!5043 = !DILocation(line: 74, column: 7, scope: !5020)
!5044 = !DILocation(line: 76, column: 7, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5029, file: !916, line: 75, column: 5)
!5046 = !DILocation(line: 76, column: 13, scope: !5045)
!5047 = !DILocation(line: 78, column: 5, scope: !5045)
!5048 = !DILocation(line: 81, column: 17, scope: !5028)
!5049 = !DILocation(line: 0, scope: !5028)
!5050 = !DILocation(line: 82, column: 17, scope: !5028)
!5051 = !DILocation(line: 84, column: 17, scope: !5028)
!5052 = !DILocation(line: 85, column: 17, scope: !5028)
!5053 = !DILocation(line: 87, column: 38, scope: !5028)
!5054 = !DILocation(line: 87, column: 53, scope: !5028)
!5055 = !DILocalVariable(name: "s1", arg: 1, scope: !5056, file: !916, line: 35, type: !165)
!5056 = distinct !DISubprogram(name: "strcoll_loop", scope: !916, file: !916, line: 35, type: !2495, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !5057)
!5057 = !{!5055, !5058, !5059, !5060, !5061, !5062, !5064}
!5058 = !DILocalVariable(name: "s1size", arg: 2, scope: !5056, file: !916, line: 35, type: !162)
!5059 = !DILocalVariable(name: "s2", arg: 3, scope: !5056, file: !916, line: 35, type: !165)
!5060 = !DILocalVariable(name: "s2size", arg: 4, scope: !5056, file: !916, line: 35, type: !162)
!5061 = !DILocalVariable(name: "diff", scope: !5056, file: !916, line: 37, type: !116)
!5062 = !DILocalVariable(name: "size1", scope: !5063, file: !916, line: 44, type: !162)
!5063 = distinct !DILexicalBlock(scope: !5056, file: !916, line: 40, column: 5)
!5064 = !DILocalVariable(name: "size2", scope: !5063, file: !916, line: 45, type: !162)
!5065 = !DILocation(line: 0, scope: !5056, inlinedAt: !5066)
!5066 = distinct !DILocation(line: 87, column: 14, scope: !5028)
!5067 = !DILocation(line: 39, column: 3, scope: !5056, inlinedAt: !5066)
!5068 = !DILocation(line: 39, column: 19, scope: !5056, inlinedAt: !5066)
!5069 = !DILocation(line: 39, column: 32, scope: !5056, inlinedAt: !5066)
!5070 = !DILocation(line: 39, column: 30, scope: !5056, inlinedAt: !5066)
!5071 = !DILocation(line: 44, column: 22, scope: !5063, inlinedAt: !5066)
!5072 = !DILocation(line: 44, column: 34, scope: !5063, inlinedAt: !5066)
!5073 = !DILocation(line: 0, scope: !5063, inlinedAt: !5066)
!5074 = !DILocation(line: 45, column: 22, scope: !5063, inlinedAt: !5066)
!5075 = !DILocation(line: 45, column: 34, scope: !5063, inlinedAt: !5066)
!5076 = !DILocation(line: 48, column: 14, scope: !5063, inlinedAt: !5066)
!5077 = !DILocation(line: 49, column: 14, scope: !5063, inlinedAt: !5066)
!5078 = !DILocation(line: 51, column: 18, scope: !5079, inlinedAt: !5066)
!5079 = distinct !DILexicalBlock(scope: !5063, file: !916, line: 51, column: 11)
!5080 = !DILocation(line: 51, column: 11, scope: !5063, inlinedAt: !5066)
!5081 = !DILocation(line: 52, column: 26, scope: !5079, inlinedAt: !5066)
!5082 = !DILocation(line: 47, column: 10, scope: !5063, inlinedAt: !5066)
!5083 = !DILocation(line: 46, column: 10, scope: !5063, inlinedAt: !5066)
!5084 = !DILocation(line: 53, column: 18, scope: !5085, inlinedAt: !5066)
!5085 = distinct !DILexicalBlock(scope: !5063, file: !916, line: 53, column: 11)
!5086 = distinct !{!5086, !5067, !5087, !1058}
!5087 = !DILocation(line: 55, column: 5, scope: !5056, inlinedAt: !5066)
!5088 = !DILocation(line: 89, column: 17, scope: !5028)
!5089 = !DILocation(line: 90, column: 17, scope: !5028)
!5090 = !DILocation(line: 0, scope: !5029)
!5091 = !DILocation(line: 93, column: 3, scope: !5020)
!5092 = !DISubprogram(name: "strcoll", scope: !1132, file: !1132, line: 163, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !995)
!5093 = distinct !DISubprogram(name: "memcoll0", scope: !916, file: !916, line: 102, type: !2495, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !5094)
!5094 = !{!5095, !5096, !5097, !5098}
!5095 = !DILocalVariable(name: "s1", arg: 1, scope: !5093, file: !916, line: 102, type: !165)
!5096 = !DILocalVariable(name: "s1size", arg: 2, scope: !5093, file: !916, line: 102, type: !162)
!5097 = !DILocalVariable(name: "s2", arg: 3, scope: !5093, file: !916, line: 102, type: !165)
!5098 = !DILocalVariable(name: "s2size", arg: 4, scope: !5093, file: !916, line: 102, type: !162)
!5099 = !DILocation(line: 0, scope: !5093)
!5100 = !DILocation(line: 104, column: 14, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5093, file: !916, line: 104, column: 7)
!5102 = !DILocation(line: 104, column: 24, scope: !5101)
!5103 = !DILocation(line: 0, scope: !5035, inlinedAt: !5104)
!5104 = distinct !DILocation(line: 104, column: 27, scope: !5101)
!5105 = !DILocation(line: 976, column: 11, scope: !5035, inlinedAt: !5104)
!5106 = !DILocation(line: 976, column: 10, scope: !5035, inlinedAt: !5104)
!5107 = !DILocation(line: 104, column: 7, scope: !5093)
!5108 = !DILocation(line: 106, column: 7, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5101, file: !916, line: 105, column: 5)
!5110 = !DILocation(line: 106, column: 13, scope: !5109)
!5111 = !DILocation(line: 107, column: 7, scope: !5109)
!5112 = !DILocation(line: 0, scope: !5056, inlinedAt: !5113)
!5113 = distinct !DILocation(line: 110, column: 12, scope: !5101)
!5114 = !DILocation(line: 39, column: 3, scope: !5056, inlinedAt: !5113)
!5115 = !DILocation(line: 39, column: 19, scope: !5056, inlinedAt: !5113)
!5116 = !DILocation(line: 39, column: 32, scope: !5056, inlinedAt: !5113)
!5117 = !DILocation(line: 39, column: 30, scope: !5056, inlinedAt: !5113)
!5118 = !DILocation(line: 44, column: 22, scope: !5063, inlinedAt: !5113)
!5119 = !DILocation(line: 44, column: 34, scope: !5063, inlinedAt: !5113)
!5120 = !DILocation(line: 0, scope: !5063, inlinedAt: !5113)
!5121 = !DILocation(line: 45, column: 22, scope: !5063, inlinedAt: !5113)
!5122 = !DILocation(line: 45, column: 34, scope: !5063, inlinedAt: !5113)
!5123 = !DILocation(line: 48, column: 14, scope: !5063, inlinedAt: !5113)
!5124 = !DILocation(line: 49, column: 14, scope: !5063, inlinedAt: !5113)
!5125 = !DILocation(line: 51, column: 18, scope: !5079, inlinedAt: !5113)
!5126 = !DILocation(line: 51, column: 11, scope: !5063, inlinedAt: !5113)
!5127 = !DILocation(line: 52, column: 26, scope: !5079, inlinedAt: !5113)
!5128 = !DILocation(line: 47, column: 10, scope: !5063, inlinedAt: !5113)
!5129 = !DILocation(line: 46, column: 10, scope: !5063, inlinedAt: !5113)
!5130 = !DILocation(line: 53, column: 18, scope: !5085, inlinedAt: !5113)
!5131 = distinct !{!5131, !5114, !5132, !1058}
!5132 = !DILocation(line: 55, column: 5, scope: !5056, inlinedAt: !5113)
!5133 = !DILocation(line: 0, scope: !5101)
!5134 = !DILocation(line: 111, column: 1, scope: !5093)
!5135 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !918, file: !918, line: 27, type: !4131, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !5136)
!5136 = !{!5137, !5138, !5139, !5140}
!5137 = !DILocalVariable(name: "ptr", arg: 1, scope: !5135, file: !918, line: 27, type: !160)
!5138 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5135, file: !918, line: 27, type: !162)
!5139 = !DILocalVariable(name: "size", arg: 3, scope: !5135, file: !918, line: 27, type: !162)
!5140 = !DILocalVariable(name: "nbytes", scope: !5135, file: !918, line: 29, type: !162)
!5141 = !DILocation(line: 0, scope: !5135)
!5142 = !DILocation(line: 30, column: 7, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5135, file: !918, line: 30, column: 7)
!5144 = !DILocalVariable(name: "ptr", arg: 1, scope: !5145, file: !4223, line: 2057, type: !160)
!5145 = distinct !DISubprogram(name: "rpl_realloc", scope: !4223, file: !4223, line: 2057, type: !4215, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !5146)
!5146 = !{!5144, !5147}
!5147 = !DILocalVariable(name: "size", arg: 2, scope: !5145, file: !4223, line: 2057, type: !162)
!5148 = !DILocation(line: 0, scope: !5145, inlinedAt: !5149)
!5149 = distinct !DILocation(line: 37, column: 10, scope: !5135)
!5150 = !DILocation(line: 2059, column: 24, scope: !5145, inlinedAt: !5149)
!5151 = !DILocation(line: 2059, column: 10, scope: !5145, inlinedAt: !5149)
!5152 = !DILocation(line: 37, column: 3, scope: !5135)
!5153 = !DILocation(line: 32, column: 7, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5143, file: !918, line: 31, column: 5)
!5155 = !DILocation(line: 32, column: 13, scope: !5154)
!5156 = !DILocation(line: 33, column: 7, scope: !5154)
!5157 = !DILocation(line: 38, column: 1, scope: !5135)
