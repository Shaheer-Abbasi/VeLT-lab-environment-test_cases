; ModuleID = 'src/tac.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.re_pattern_buffer = type { ptr, i64, i64, i64, ptr, ptr, i64, i8 }
%struct.re_registers = type { i32, ptr, ptr }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [54 x i8] c"Write each FILE to standard output, last line first.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [4 x i8] c"tac\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [73 x i8] c"  -b, --before             attach the separator before instead of after\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [76 x i8] c"  -r, --regex              interpret the separator as a regular expression\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [75 x i8] c"  -s, --separator=STRING   use STRING as the separator instead of newline\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [65 x i8] c"\0ANon-seekable input is buffered to $TMPDIR, defaulting to /tmp.\0A\00", align 1, !dbg !47
@main.default_file_list = internal unnamed_addr constant [2 x ptr] [ptr @.str.10, ptr null], align 8, !dbg !52
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !109
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !114
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !119
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !124
@.str.14 = private unnamed_addr constant [5 x i8] c"brs:\00", align 1, !dbg !129
@longopts = internal constant [6 x %struct.option] [%struct.option { ptr @.str.57, i32 0, ptr null, i32 98 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 114 }, %struct.option { ptr @.str.59, i32 1, ptr null, i32 115 }, %struct.option { ptr @.str.60, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.61, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !399
@separator_ends_record = internal unnamed_addr global i1 false, align 1, !dbg !486
@sentinel_length = internal unnamed_addr global i64 1, align 8, !dbg !413
@optarg = external local_unnamed_addr global ptr, align 8
@separator = internal unnamed_addr global ptr @.str.62, align 8, !dbg !417
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !134
@.str.16 = private unnamed_addr constant [12 x i8] c"Jay Lepreau\00", align 1, !dbg !139
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !144
@.str.18 = private unnamed_addr constant [26 x i8] c"separator cannot be empty\00", align 1, !dbg !149
@compiled_separator = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !167
@compiled_separator_fastmap = internal global [256 x i8] zeroinitializer, align 1, !dbg !191
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !154
@match_length = internal unnamed_addr global i64 0, align 8, !dbg !159
@read_size = internal unnamed_addr global i64 0, align 8, !dbg !163
@G_buffer_size = internal unnamed_addr global i64 0, align 8, !dbg !165
@G_buffer = internal unnamed_addr global ptr null, align 8, !dbg !161
@optind = external local_unnamed_addr global i32, align 4
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !487
@.str.20 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !196
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !201
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !203
@.str.22 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !286
@.str.23 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !288
@.str.24 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !290
@.str.25 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !292
@.str.39 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !329
@.str.40 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !331
@.str.41 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !333
@.str.42 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !338
@.str.43 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !343
@.str.44 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !348
@.str.45 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !353
@.str.46 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !355
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !357
@.str.48 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !359
@.str.52 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !370
@.str.53 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !372
@.str.54 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !377
@.str.55 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !382
@.str.56 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !387
@.str.57 = private unnamed_addr constant [7 x i8] c"before\00", align 1, !dbg !389
@.str.58 = private unnamed_addr constant [6 x i8] c"regex\00", align 1, !dbg !391
@.str.59 = private unnamed_addr constant [10 x i8] c"separator\00", align 1, !dbg !393
@.str.60 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !395
@.str.61 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !397
@.str.62 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !415
@.str.63 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1, !dbg !419
@.str.64 = private unnamed_addr constant [30 x i8] c"failed to open %s for reading\00", align 1, !dbg !421
@.str.65 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1, !dbg !426
@.str.66 = private unnamed_addr constant [16 x i8] c"%s: write error\00", align 1, !dbg !428
@.str.67 = private unnamed_addr constant [16 x i8] c"%s: seek failed\00", align 1, !dbg !430
@.str.68 = private unnamed_addr constant [17 x i8] c"record too large\00", align 1, !dbg !432
@regs = internal global %struct.re_registers zeroinitializer, align 8, !dbg !439
@.str.69 = private unnamed_addr constant [35 x i8] c"error in regular expression search\00", align 1, !dbg !434
@output.buffer = internal global [8192 x i8] zeroinitializer, align 1, !dbg !449
@output.bytes_in_buffer = internal unnamed_addr global i64 0, align 8, !dbg !468
@.str.70 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !470
@temp_stream.tempfile = internal unnamed_addr global ptr null, align 8, !dbg !488
@temp_stream.tmp_fp = internal unnamed_addr global ptr null, align 8, !dbg !533
@.str.26 = private unnamed_addr constant [35 x i8] c"failed to make temporary file name\00", align 1, !dbg !535
@.str.1.3 = private unnamed_addr constant [6 x i8] c"cutmp\00", align 1, !dbg !537
@.str.2.27 = private unnamed_addr constant [35 x i8] c"failed to create temporary file %s\00", align 1, !dbg !539
@.str.3.28 = private unnamed_addr constant [3 x i8] c"w+\00", align 1, !dbg !541
@.str.4.29 = private unnamed_addr constant [30 x i8] c"failed to open %s for writing\00", align 1, !dbg !543
@.str.5.30 = private unnamed_addr constant [31 x i8] c"failed to rewind stream for %s\00", align 1, !dbg !545
@.str.33 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !561
@Version = dso_local local_unnamed_addr global ptr @.str.33, align 8, !dbg !564
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !568
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !581
@.str.36 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !573
@.str.1.37 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !575
@.str.2.38 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !577
@.str.3.39 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !579
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !583
@stderr = external local_unnamed_addr global ptr, align 8
@.str.49 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !589
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !626
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !591
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !616
@.str.1.55 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !618
@.str.2.57 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !620
@.str.3.56 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !622
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !624
@.str.4.50 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !628
@.str.5.51 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !630
@.str.6.52 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !635
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !640
@.str.72 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !646
@.str.1.73 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !648
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !650
@.str.76 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !681
@.str.1.77 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !684
@.str.2.78 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !686
@.str.3.79 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !691
@.str.4.80 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !693
@.str.5.81 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !695
@.str.6.82 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !697
@.str.7.83 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !699
@.str.8.84 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !701
@.str.9.85 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !703
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.76, ptr @.str.1.77, ptr @.str.2.78, ptr @.str.3.79, ptr @.str.4.80, ptr @.str.5.81, ptr @.str.6.82, ptr @.str.7.83, ptr @.str.8.84, ptr @.str.9.85, ptr null], align 8, !dbg !705
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !716
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !730
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !765
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !772
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !732
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !774
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !720
@.str.10.88 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !734
@.str.11.86 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !736
@.str.12.89 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !738
@.str.13.87 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !740
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !742
@.str.102 = private unnamed_addr constant [5 x i8] c"file\00", align 1, !dbg !779
@.str.1.103 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1, !dbg !782
@.str.2.104 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1, !dbg !784
@.str.3.105 = private unnamed_addr constant [12 x i8] c"/%.*sXXXXXX\00", align 1, !dbg !786
@.str.108 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !788
@.str.1.109 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !791
@.str.2.110 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !793
@.str.3.111 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !795
@.str.4.112 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !797
@.str.5.113 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !799
@.str.6.114 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !804
@.str.7.115 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !809
@.str.8.116 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !811
@.str.9.117 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !816
@.str.10.118 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !821
@.str.11.119 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !826
@.str.12.120 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !831
@.str.13.121 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !833
@.str.14.122 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !838
@.str.15.123 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !843
@.str.16.124 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !848
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.129 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !853
@.str.18.130 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !855
@.str.19.131 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !857
@.str.20.132 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !859
@.str.21.133 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !861
@.str.22.134 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !863
@.str.23.135 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !865
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !870
@exit_failure = dso_local global i32 1, align 4, !dbg !878
@.str.152 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !884
@.str.1.150 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !887
@.str.2.151 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !889
@.str.165 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !891
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !894
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !909
@.str.174 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !927
@.str.1.175 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !930

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1026 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1030, metadata !DIExpression()), !dbg !1031
  %2 = icmp eq i32 %0, 0, !dbg !1032
  br i1 %2, label %8, label %3, !dbg !1034

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1035, !tbaa !1037
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !1035
  %6 = load ptr, ptr @program_name, align 8, !dbg !1035, !tbaa !1037
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !1035
  br label %43, !dbg !1035

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !1041
  %10 = load ptr, ptr @program_name, align 8, !dbg !1041, !tbaa !1037
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !1041
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !1043
  %13 = load ptr, ptr @stdout, align 8, !dbg !1043, !tbaa !1037
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1043
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #38, !dbg !1044
  %16 = load ptr, ptr @stdout, align 8, !dbg !1044, !tbaa !1037
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1044
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #38, !dbg !1048
  %19 = load ptr, ptr @stdout, align 8, !dbg !1048, !tbaa !1037
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !1048
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !1051
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1051
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !1052
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1052
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !1053
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1053
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !1054
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1054
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !1055
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1055
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #38, !dbg !1056
  %27 = load ptr, ptr @stdout, align 8, !dbg !1056, !tbaa !1037
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !1056
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1057, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1069, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata ptr poison, metadata !1069, metadata !DIExpression()), !dbg !1074
  tail call void @emit_bug_reporting_address() #38, !dbg !1076
  %29 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !1077
  call void @llvm.dbg.value(metadata ptr %29, metadata !1072, metadata !DIExpression()), !dbg !1074
  %30 = icmp eq ptr %29, null, !dbg !1078
  br i1 %30, label %38, label %31, !dbg !1080

31:                                               ; preds = %8
  %32 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(4) @.str.52, i64 noundef 3) #39, !dbg !1081
  %33 = icmp eq i32 %32, 0, !dbg !1081
  br i1 %33, label %38, label %34, !dbg !1082

34:                                               ; preds = %31
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #38, !dbg !1083
  %36 = load ptr, ptr @stdout, align 8, !dbg !1083, !tbaa !1037
  %37 = tail call i32 @fputs_unlocked(ptr noundef %35, ptr noundef %36), !dbg !1083
  br label %38, !dbg !1085

38:                                               ; preds = %8, %31, %34
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1069, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1073, metadata !DIExpression()), !dbg !1074
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #38, !dbg !1086
  %40 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %39, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3) #38, !dbg !1086
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #38, !dbg !1087
  %42 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %41, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.56) #38, !dbg !1087
  br label %43

43:                                               ; preds = %38, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !1088
  unreachable, !dbg !1088
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1089 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1093 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1099 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1102 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !205 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !209, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata ptr %0, metadata !210, metadata !DIExpression()), !dbg !1105
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1106, !tbaa !1107
  %3 = icmp eq i32 %2, -1, !dbg !1109
  br i1 %3, label %4, label %16, !dbg !1110

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.22) #38, !dbg !1111
  call void @llvm.dbg.value(metadata ptr %5, metadata !211, metadata !DIExpression()), !dbg !1112
  %6 = icmp eq ptr %5, null, !dbg !1113
  br i1 %6, label %14, label %7, !dbg !1114

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1115, !tbaa !1116
  %9 = icmp eq i8 %8, 0, !dbg !1115
  br i1 %9, label %14, label %10, !dbg !1117

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1118, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !1124, metadata !DIExpression()), !dbg !1125
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.23) #39, !dbg !1127
  %12 = icmp eq i32 %11, 0, !dbg !1128
  %13 = zext i1 %12 to i32, !dbg !1117
  br label %14, !dbg !1117

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1129, !tbaa !1107
  br label %16, !dbg !1130

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1131
  %18 = icmp eq i32 %17, 0, !dbg !1131
  br i1 %18, label %22, label %19, !dbg !1133

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1134, !tbaa !1037
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1134
  br label %122, !dbg !1136

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !214, metadata !DIExpression()), !dbg !1105
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.24) #39, !dbg !1137
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1138
  call void @llvm.dbg.value(metadata ptr %24, metadata !216, metadata !DIExpression()), !dbg !1105
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !1139
  call void @llvm.dbg.value(metadata ptr %25, metadata !217, metadata !DIExpression()), !dbg !1105
  %26 = icmp eq ptr %25, null, !dbg !1140
  br i1 %26, label %54, label %27, !dbg !1141

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1142
  br i1 %28, label %54, label %29, !dbg !1143

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !218, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 0, metadata !222, metadata !DIExpression()), !dbg !1144
  %30 = icmp ult ptr %24, %25, !dbg !1145
  br i1 %30, label %31, label %52, !dbg !1146

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !1105
  %33 = load ptr, ptr %32, align 8, !tbaa !1037
  br label %34, !dbg !1146

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !218, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %36, metadata !222, metadata !DIExpression()), !dbg !1144
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1147
  call void @llvm.dbg.value(metadata ptr %37, metadata !218, metadata !DIExpression()), !dbg !1144
  %38 = load i8, ptr %35, align 1, !dbg !1147, !tbaa !1116
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1147
  %41 = load i16, ptr %40, align 2, !dbg !1147, !tbaa !1148
  %42 = freeze i16 %41, !dbg !1150
  %43 = lshr i16 %42, 13, !dbg !1150
  %44 = and i16 %43, 1, !dbg !1150
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1151
  call void @llvm.dbg.value(metadata i64 %46, metadata !222, metadata !DIExpression()), !dbg !1144
  %47 = icmp ult ptr %37, %25, !dbg !1145
  %48 = icmp ult i64 %46, 2, !dbg !1152
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1152
  br i1 %49, label %34, label %50, !dbg !1146, !llvm.loop !1153

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1155
  br i1 %51, label %52, label %54, !dbg !1157

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1157

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !1105
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !214, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata ptr %55, metadata !217, metadata !DIExpression()), !dbg !1105
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.25) #39, !dbg !1158
  call void @llvm.dbg.value(metadata i64 %57, metadata !223, metadata !DIExpression()), !dbg !1105
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1159
  call void @llvm.dbg.value(metadata ptr %58, metadata !224, metadata !DIExpression()), !dbg !1105
  br label %59, !dbg !1160

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !1105
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !214, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata ptr %60, metadata !224, metadata !DIExpression()), !dbg !1105
  %62 = load i8, ptr %60, align 1, !dbg !1161, !tbaa !1116
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !1162

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1163
  %65 = load i8, ptr %64, align 1, !dbg !1166, !tbaa !1116
  %66 = icmp ne i8 %65, 45, !dbg !1167
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1168
  br label %68, !dbg !1168

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !214, metadata !DIExpression()), !dbg !1105
  %70 = tail call ptr @__ctype_b_loc() #41, !dbg !1169
  %71 = load ptr, ptr %70, align 8, !dbg !1169, !tbaa !1037
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1169
  %74 = load i16, ptr %73, align 2, !dbg !1169, !tbaa !1148
  %75 = and i16 %74, 8192, !dbg !1169
  %76 = icmp eq i16 %75, 0, !dbg !1169
  br i1 %76, label %90, label %77, !dbg !1171

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1172
  br i1 %78, label %92, label %79, !dbg !1175

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1176
  %81 = load i8, ptr %80, align 1, !dbg !1176, !tbaa !1116
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1176
  %84 = load i16, ptr %83, align 2, !dbg !1176, !tbaa !1148
  %85 = and i16 %84, 8192, !dbg !1176
  %86 = icmp eq i16 %85, 0, !dbg !1176
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1177
  br i1 %89, label %90, label %92, !dbg !1177

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1178
  call void @llvm.dbg.value(metadata ptr %91, metadata !224, metadata !DIExpression()), !dbg !1105
  br label %59, !dbg !1160, !llvm.loop !1179

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1181
  %94 = load ptr, ptr @stdout, align 8, !dbg !1181, !tbaa !1037
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1181
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1118, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1118, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1118, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1118, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1118, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1118, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1118, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1118, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1118, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1118, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !281, metadata !DIExpression()), !dbg !1105
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.39, i64 noundef 6) #39, !dbg !1202
  %97 = icmp eq i32 %96, 0, !dbg !1202
  br i1 %97, label %101, label %98, !dbg !1204

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.40, i64 noundef 9) #39, !dbg !1205
  %100 = icmp eq i32 %99, 0, !dbg !1205
  br i1 %100, label %101, label %104, !dbg !1206

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1207
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #38, !dbg !1207
  br label %107, !dbg !1209

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1210
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #38, !dbg !1210
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1212, !tbaa !1037
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %108), !dbg !1212
  %110 = load ptr, ptr @stdout, align 8, !dbg !1213, !tbaa !1037
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %110), !dbg !1213
  %112 = ptrtoint ptr %60 to i64, !dbg !1214
  %113 = sub i64 %112, %93, !dbg !1214
  %114 = load ptr, ptr @stdout, align 8, !dbg !1214, !tbaa !1037
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1214
  %116 = load ptr, ptr @stdout, align 8, !dbg !1215, !tbaa !1037
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %116), !dbg !1215
  %118 = load ptr, ptr @stdout, align 8, !dbg !1216, !tbaa !1037
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %118), !dbg !1216
  %120 = load ptr, ptr @stdout, align 8, !dbg !1217, !tbaa !1037
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1217
  br label %122, !dbg !1218

122:                                              ; preds = %107, %19
  ret void, !dbg !1218
}

; Function Attrs: nounwind
declare !dbg !1219 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1223 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1227 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1229 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1232 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1235 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1238 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1241 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1247 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1248 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !54 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !475, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata ptr %1, metadata !476, metadata !DIExpression()), !dbg !1254
  %5 = load ptr, ptr %1, align 8, !dbg !1255, !tbaa !1037
  tail call void @set_program_name(ptr noundef %5) #38, !dbg !1256
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #38, !dbg !1257
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #38, !dbg !1258
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #38, !dbg !1259
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1260
  br label %10, !dbg !1261

10:                                               ; preds = %16, %2
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1262
  call void @llvm.dbg.value(metadata i32 %11, metadata !478, metadata !DIExpression()), !dbg !1254
  switch i32 %11, label %23 [
    i32 -1, label %24
    i32 98, label %12
    i32 114, label %13
    i32 115, label %14
    i32 -2, label %17
    i32 -3, label %18
  ], !dbg !1261

12:                                               ; preds = %10
  store i1 true, ptr @separator_ends_record, align 1, !dbg !1263
  br label %16, !dbg !1266

13:                                               ; preds = %10
  store i64 0, ptr @sentinel_length, align 8, !dbg !1267, !tbaa !1268
  br label %16, !dbg !1270

14:                                               ; preds = %10
  %15 = load ptr, ptr @optarg, align 8, !dbg !1271, !tbaa !1037
  store ptr %15, ptr @separator, align 8, !dbg !1272, !tbaa !1037
  br label %16, !dbg !1273

16:                                               ; preds = %14, %13, %12
  br label %10, !dbg !1262, !llvm.loop !1274

17:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #42, !dbg !1276
  unreachable, !dbg !1276

18:                                               ; preds = %10
  %19 = load ptr, ptr @stdout, align 8, !dbg !1277, !tbaa !1037
  %20 = load ptr, ptr @Version, align 8, !dbg !1277, !tbaa !1037
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #38, !dbg !1277
  %22 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #38, !dbg !1277
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef null) #38, !dbg !1277
  tail call void @exit(i32 noundef 0) #40, !dbg !1277
  unreachable, !dbg !1277

23:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #42, !dbg !1278
  unreachable, !dbg !1278

24:                                               ; preds = %10
  %25 = load i64, ptr @sentinel_length, align 8, !dbg !1279, !tbaa !1268
  %26 = icmp eq i64 %25, 0, !dbg !1281
  %27 = load ptr, ptr @separator, align 8, !dbg !1282, !tbaa !1037
  %28 = load i8, ptr %27, align 1, !dbg !1282, !tbaa !1116
  %29 = icmp eq i8 %28, 0, !dbg !1282
  br i1 %26, label %30, label %40, !dbg !1283

30:                                               ; preds = %24
  br i1 %29, label %31, label %33, !dbg !1284

31:                                               ; preds = %30
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #38, !dbg !1286
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %32) #38, !dbg !1286
  unreachable, !dbg !1286

33:                                               ; preds = %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @compiled_separator, i8 0, i64 16, i1 false), !dbg !1288
  store ptr @compiled_separator_fastmap, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @compiled_separator, i64 0, i32 4), align 8, !dbg !1289, !tbaa !1290
  store ptr null, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @compiled_separator, i64 0, i32 5), align 8, !dbg !1292, !tbaa !1293
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #39, !dbg !1294
  %35 = tail call ptr @re_compile_pattern(ptr noundef nonnull %27, i64 noundef %34, ptr noundef nonnull @compiled_separator) #38, !dbg !1295
  call void @llvm.dbg.value(metadata ptr %35, metadata !477, metadata !DIExpression()), !dbg !1254
  %36 = icmp eq ptr %35, null, !dbg !1296
  br i1 %36, label %37, label %39, !dbg !1298

37:                                               ; preds = %33
  %38 = load i64, ptr @sentinel_length, align 8, !tbaa !1268
  br label %45, !dbg !1298

39:                                               ; preds = %33
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull %35) #38, !dbg !1299
  unreachable, !dbg !1299

40:                                               ; preds = %24
  br i1 %29, label %43, label %41, !dbg !1300

41:                                               ; preds = %40
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #39, !dbg !1301
  br label %43, !dbg !1300

43:                                               ; preds = %40, %41
  %44 = phi i64 [ %42, %41 ], [ 1, %40 ], !dbg !1300
  store i64 %44, ptr @sentinel_length, align 8, !dbg !1302, !tbaa !1268
  store i64 %44, ptr @match_length, align 8, !dbg !1303, !tbaa !1268
  br label %45

45:                                               ; preds = %37, %43
  %46 = phi i64 [ %38, %37 ], [ %44, %43 ]
  %47 = icmp ult i64 %46, 4096, !dbg !1304
  br i1 %47, label %55, label %48, !dbg !1305

48:                                               ; preds = %45, %52
  %49 = phi i64 [ %53, %52 ], [ 8192, %45 ]
  %50 = icmp slt i64 %49, 0, !dbg !1306
  br i1 %50, label %51, label %52, !dbg !1309

51:                                               ; preds = %48
  store i64 %49, ptr @read_size, align 8, !dbg !1254, !tbaa !1268
  tail call void @xalloc_die() #40, !dbg !1310
  unreachable, !dbg !1310

52:                                               ; preds = %48
  %53 = shl nuw i64 %49, 1, !dbg !1311
  %54 = icmp ult i64 %46, %49, !dbg !1304
  br i1 %54, label %55, label %48, !dbg !1305, !llvm.loop !1312

55:                                               ; preds = %52, %45
  %56 = phi i64 [ 8192, %45 ], [ %53, %52 ]
  store i64 %56, ptr @read_size, align 8, !dbg !1254, !tbaa !1268
  %57 = add i64 %46, %56, !dbg !1314
  %58 = add i64 %57, 1, !dbg !1315
  call void @llvm.dbg.value(metadata i64 %58, metadata !480, metadata !DIExpression()), !dbg !1254
  %59 = shl i64 %58, 1, !dbg !1316
  store i64 %59, ptr @G_buffer_size, align 8, !dbg !1317, !tbaa !1268
  %60 = icmp ult i64 %56, %58, !dbg !1318
  %61 = icmp ult i64 %57, 9223372036854775807
  %62 = and i1 %61, %60, !dbg !1320
  br i1 %62, label %64, label %63, !dbg !1320

63:                                               ; preds = %55
  tail call void @xalloc_die() #40, !dbg !1321
  unreachable, !dbg !1321

64:                                               ; preds = %55
  %65 = tail call noalias nonnull ptr @xmalloc(i64 noundef %59) #43, !dbg !1322
  %66 = load i64, ptr @sentinel_length, align 8, !dbg !1323, !tbaa !1268
  %67 = icmp eq i64 %66, 0, !dbg !1323
  br i1 %67, label %74, label %68, !dbg !1325

68:                                               ; preds = %64
  %69 = load ptr, ptr @separator, align 8, !dbg !1326, !tbaa !1037
  %70 = load i8, ptr %69, align 1, !dbg !1328, !tbaa !1116
  %71 = icmp ne i8 %70, 0, !dbg !1329
  %72 = zext i1 %71 to i64
  %73 = add i64 %66, %72, !dbg !1330
  call void @llvm.dbg.value(metadata ptr %65, metadata !1331, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata ptr %69, metadata !1338, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i64 %73, metadata !1339, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %65, ptr noundef nonnull align 1 %69, i64 noundef %73, i1 noundef false) #38, !dbg !1342
  br label %74, !dbg !1343

74:                                               ; preds = %64, %68
  %75 = phi i64 [ %66, %68 ], [ 1, %64 ]
  %76 = getelementptr inbounds i8, ptr %65, i64 %75, !dbg !1344
  store ptr %76, ptr @G_buffer, align 8, !dbg !1344, !tbaa !1037
  %77 = load i32, ptr @optind, align 4, !dbg !1345, !tbaa !1107
  %78 = icmp slt i32 %77, %0, !dbg !1346
  %79 = sext i32 %77 to i64, !dbg !1345
  %80 = getelementptr inbounds ptr, ptr %1, i64 %79, !dbg !1345
  %81 = select i1 %78, ptr %80, ptr @main.default_file_list, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %81, metadata !481, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i64 0, metadata !482, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8 poison, metadata !479, metadata !DIExpression()), !dbg !1254
  %82 = load ptr, ptr %81, align 8, !dbg !1348, !tbaa !1037
  %83 = icmp eq ptr %82, null, !dbg !1350
  br i1 %83, label %84, label %87, !dbg !1350

84:                                               ; preds = %175, %74
  %85 = phi i1 [ true, %74 ], [ %177, %175 ]
  call fastcc void @output(ptr noundef null, ptr noundef null), !dbg !1351
  %86 = load i1, ptr @have_read_stdin, align 1, !dbg !1352
  br i1 %86, label %182, label %188, !dbg !1354

87:                                               ; preds = %74, %175
  %88 = phi ptr [ %180, %175 ], [ %82, %74 ]
  %89 = phi i64 [ %178, %175 ], [ 0, %74 ]
  %90 = phi i1 [ %177, %175 ], [ true, %74 ]
  call void @llvm.dbg.value(metadata i64 %89, metadata !482, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata ptr %88, metadata !1355, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata ptr %88, metadata !1118, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !1124, metadata !DIExpression()), !dbg !1367
  %91 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %88, ptr noundef nonnull dereferenceable(2) @.str.10) #39, !dbg !1369
  %92 = icmp eq i32 %91, 0, !dbg !1370
  call void @llvm.dbg.value(metadata i1 %92, metadata !1364, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1365
  br i1 %92, label %93, label %95, !dbg !1371

93:                                               ; preds = %87
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1372
  call void @llvm.dbg.value(metadata i32 0, metadata !1363, metadata !DIExpression()), !dbg !1365
  %94 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #38, !dbg !1375
  call void @llvm.dbg.value(metadata ptr %94, metadata !1355, metadata !DIExpression()), !dbg !1365
  br label %103, !dbg !1376

95:                                               ; preds = %87
  %96 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %88, i32 noundef 0) #38, !dbg !1377
  call void @llvm.dbg.value(metadata i32 %96, metadata !1363, metadata !DIExpression()), !dbg !1365
  %97 = icmp slt i32 %96, 0, !dbg !1379
  br i1 %97, label %98, label %103, !dbg !1381

98:                                               ; preds = %95
  %99 = tail call ptr @__errno_location() #41, !dbg !1382
  %100 = load i32, ptr %99, align 4, !dbg !1382, !tbaa !1107
  %101 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1382
  %102 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %88) #38, !dbg !1382
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %100, ptr noundef %101, ptr noundef %102) #38, !dbg !1382
  br label %175, !dbg !1384

103:                                              ; preds = %95, %93
  %104 = phi ptr [ %94, %93 ], [ %88, %95 ]
  %105 = phi i32 [ 0, %93 ], [ %96, %95 ], !dbg !1385
  call void @llvm.dbg.value(metadata i32 %105, metadata !1363, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata ptr %104, metadata !1355, metadata !DIExpression()), !dbg !1365
  %106 = call i64 @lseek(i32 noundef %105, i64 noundef 0, i32 noundef 2) #38, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %106, metadata !1361, metadata !DIExpression()), !dbg !1365
  %107 = icmp slt i64 %106, 0, !dbg !1387
  br i1 %107, label %111, label %108, !dbg !1388

108:                                              ; preds = %103
  %109 = call i32 @isatty(i32 noundef %105) #38, !dbg !1389
  %110 = icmp eq i32 %109, 0, !dbg !1389
  br i1 %110, label %163, label %111, !dbg !1390

111:                                              ; preds = %108, %103
  call void @llvm.dbg.value(metadata i32 %105, metadata !1391, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata ptr %104, metadata !1396, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata ptr undef, metadata !1403, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata ptr undef, metadata !1409, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i32 %105, metadata !1410, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata ptr %104, metadata !1411, metadata !DIExpression()), !dbg !1427
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1429
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1430
  call void @llvm.dbg.value(metadata i64 0, metadata !1414, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata ptr %3, metadata !1412, metadata !DIExpression(DW_OP_deref)), !dbg !1427
  call void @llvm.dbg.value(metadata ptr %4, metadata !1413, metadata !DIExpression(DW_OP_deref)), !dbg !1427
  %112 = call i1 @temp_stream(ptr noundef nonnull %3, ptr noundef nonnull %4) #38, !dbg !1431
  br i1 %112, label %113, label %155, !dbg !1433

113:                                              ; preds = %111
  call void @llvm.dbg.value(metadata i64 0, metadata !1414, metadata !DIExpression()), !dbg !1427
  %114 = load ptr, ptr @G_buffer, align 8, !dbg !1434, !tbaa !1037
  %115 = load i64, ptr @read_size, align 8, !dbg !1435, !tbaa !1268
  %116 = call i64 @read(i32 noundef %105, ptr noundef %114, i64 noundef %115) #38, !dbg !1436
  call void @llvm.dbg.value(metadata i64 %116, metadata !1418, metadata !DIExpression()), !dbg !1437
  %117 = icmp eq i64 %116, 0, !dbg !1438
  br i1 %117, label %144, label %124, !dbg !1440

118:                                              ; preds = %133
  %119 = add i64 %126, %125, !dbg !1441
  call void @llvm.dbg.value(metadata !DIArgList(i64 %125, i64 %126), metadata !1414, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1427
  %120 = load ptr, ptr @G_buffer, align 8, !dbg !1434, !tbaa !1037
  %121 = load i64, ptr @read_size, align 8, !dbg !1435, !tbaa !1268
  %122 = call i64 @read(i32 noundef %105, ptr noundef %120, i64 noundef %121) #38, !dbg !1436
  call void @llvm.dbg.value(metadata i64 %122, metadata !1418, metadata !DIExpression()), !dbg !1437
  %123 = icmp eq i64 %122, 0, !dbg !1438
  br i1 %123, label %144, label %124, !dbg !1440

124:                                              ; preds = %113, %118
  %125 = phi i64 [ %122, %118 ], [ %116, %113 ]
  %126 = phi i64 [ %119, %118 ], [ 0, %113 ]
  call void @llvm.dbg.value(metadata i64 %126, metadata !1414, metadata !DIExpression()), !dbg !1427
  %127 = icmp slt i64 %125, 0, !dbg !1442
  br i1 %127, label %128, label %133, !dbg !1444

128:                                              ; preds = %124
  %129 = tail call ptr @__errno_location() #41, !dbg !1445
  %130 = load i32, ptr %129, align 4, !dbg !1445, !tbaa !1107
  %131 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #38, !dbg !1445
  %132 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %104) #38, !dbg !1445
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %130, ptr noundef %131, ptr noundef %132) #38, !dbg !1445
  br label %155, !dbg !1447

133:                                              ; preds = %124
  call void @llvm.dbg.value(metadata ptr poison, metadata !1412, metadata !DIExpression()), !dbg !1427
  %134 = load ptr, ptr %3, align 8, !dbg !1448, !tbaa !1037
  call void @llvm.dbg.value(metadata ptr %134, metadata !1412, metadata !DIExpression()), !dbg !1427
  %135 = load ptr, ptr @G_buffer, align 8, !dbg !1448, !tbaa !1037
  %136 = call i64 @fwrite_unlocked(ptr noundef %135, i64 noundef 1, i64 noundef %125, ptr noundef %134), !dbg !1448
  %137 = icmp eq i64 %136, %125, !dbg !1449
  call void @llvm.dbg.value(metadata !DIArgList(i64 %125, i64 %126), metadata !1414, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1427
  br i1 %137, label %118, label %138, !dbg !1450

138:                                              ; preds = %133
  %139 = tail call ptr @__errno_location() #41, !dbg !1451
  %140 = load i32, ptr %139, align 4, !dbg !1451, !tbaa !1107
  %141 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #38, !dbg !1451
  %142 = load ptr, ptr %4, align 8, !dbg !1451, !tbaa !1037
  call void @llvm.dbg.value(metadata ptr %142, metadata !1413, metadata !DIExpression()), !dbg !1427
  %143 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %142) #38, !dbg !1451
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %140, ptr noundef %141, ptr noundef %143) #38, !dbg !1451
  br label %155, !dbg !1453

144:                                              ; preds = %118, %113
  %145 = phi i64 [ 0, %113 ], [ %119, %118 ], !dbg !1454
  call void @llvm.dbg.value(metadata i64 %145, metadata !1414, metadata !DIExpression()), !dbg !1427
  %146 = load ptr, ptr %3, align 8, !dbg !1455, !tbaa !1037
  call void @llvm.dbg.value(metadata ptr %146, metadata !1412, metadata !DIExpression()), !dbg !1427
  %147 = call i32 @fflush_unlocked(ptr noundef %146) #38, !dbg !1455
  %148 = icmp eq i32 %147, 0, !dbg !1457
  br i1 %148, label %156, label %149, !dbg !1458

149:                                              ; preds = %144
  %150 = tail call ptr @__errno_location() #41, !dbg !1459
  %151 = load i32, ptr %150, align 4, !dbg !1459, !tbaa !1107
  %152 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #38, !dbg !1459
  %153 = load ptr, ptr %4, align 8, !dbg !1459, !tbaa !1037
  call void @llvm.dbg.value(metadata ptr %153, metadata !1413, metadata !DIExpression()), !dbg !1427
  %154 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %153) #38, !dbg !1459
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %151, ptr noundef %152, ptr noundef %154) #38, !dbg !1459
  br label %155, !dbg !1461

155:                                              ; preds = %149, %138, %128, %111
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1462
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1462
  call void @llvm.dbg.value(metadata i64 -1, metadata !1399, metadata !DIExpression()), !dbg !1401
  br label %165, !dbg !1463

156:                                              ; preds = %144
  %157 = load ptr, ptr %3, align 8, !dbg !1464, !tbaa !1037
  call void @llvm.dbg.value(metadata ptr %157, metadata !1412, metadata !DIExpression()), !dbg !1427
  %158 = load ptr, ptr %4, align 8, !dbg !1465, !tbaa !1037
  call void @llvm.dbg.value(metadata ptr %158, metadata !1413, metadata !DIExpression()), !dbg !1427
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1462
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1462
  call void @llvm.dbg.value(metadata i64 %145, metadata !1399, metadata !DIExpression()), !dbg !1401
  %159 = icmp slt i64 %145, 0, !dbg !1466
  br i1 %159, label %165, label %160, !dbg !1463

160:                                              ; preds = %156
  call void @llvm.dbg.value(metadata ptr %157, metadata !1397, metadata !DIExpression()), !dbg !1401
  %161 = call i32 @fileno_unlocked(ptr noundef %157) #38, !dbg !1468
  call void @llvm.dbg.value(metadata ptr %158, metadata !1398, metadata !DIExpression()), !dbg !1401
  %162 = call fastcc i1 @tac_seekable(i32 noundef %161, ptr noundef %158, i64 noundef %145), !dbg !1469
  call void @llvm.dbg.value(metadata i1 %162, metadata !1400, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1401
  br label %165

163:                                              ; preds = %108
  %164 = call fastcc i1 @tac_seekable(i32 noundef %105, ptr noundef %104, i64 noundef %106), !dbg !1470
  br label %165, !dbg !1390

165:                                              ; preds = %163, %160, %156, %155
  %166 = phi i1 [ %164, %163 ], [ %162, %160 ], [ false, %156 ], [ false, %155 ]
  call void @llvm.dbg.value(metadata i1 %166, metadata !1360, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1365
  br i1 %92, label %175, label %167, !dbg !1471

167:                                              ; preds = %165
  %168 = call i32 @close(i32 noundef %105) #38, !dbg !1473
  %169 = icmp eq i32 %168, 0, !dbg !1474
  br i1 %169, label %175, label %170, !dbg !1475

170:                                              ; preds = %167
  %171 = tail call ptr @__errno_location() #41, !dbg !1476
  %172 = load i32, ptr %171, align 4, !dbg !1476, !tbaa !1107
  %173 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #38, !dbg !1476
  %174 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %104) #38, !dbg !1476
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %172, ptr noundef %173, ptr noundef %174) #38, !dbg !1476
  call void @llvm.dbg.value(metadata i8 0, metadata !1360, metadata !DIExpression()), !dbg !1365
  br label %175, !dbg !1478

175:                                              ; preds = %98, %165, %167, %170
  %176 = phi i1 [ false, %98 ], [ %166, %165 ], [ false, %170 ], [ %166, %167 ], !dbg !1365
  %177 = and i1 %90, %176, !dbg !1479
  call void @llvm.dbg.value(metadata i1 %177, metadata !479, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1254
  %178 = add i64 %89, 1, !dbg !1480
  call void @llvm.dbg.value(metadata i64 %178, metadata !482, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8 poison, metadata !479, metadata !DIExpression()), !dbg !1254
  %179 = getelementptr inbounds ptr, ptr %81, i64 %178, !dbg !1348
  %180 = load ptr, ptr %179, align 8, !dbg !1348, !tbaa !1037
  %181 = icmp eq ptr %180, null, !dbg !1350
  br i1 %181, label %84, label %87, !dbg !1350, !llvm.loop !1481

182:                                              ; preds = %84
  %183 = call i32 @close(i32 noundef 0) #38, !dbg !1483
  %184 = icmp slt i32 %183, 0, !dbg !1484
  br i1 %184, label %185, label %188, !dbg !1485

185:                                              ; preds = %182
  %186 = tail call ptr @__errno_location() #41, !dbg !1486
  %187 = load i32, ptr %186, align 4, !dbg !1486, !tbaa !1107
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %187, ptr noundef nonnull @.str.10) #38, !dbg !1486
  call void @llvm.dbg.value(metadata i8 0, metadata !479, metadata !DIExpression()), !dbg !1254
  br label %188, !dbg !1488

188:                                              ; preds = %185, %182, %84
  %189 = phi i1 [ false, %185 ], [ %85, %182 ], [ %85, %84 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !479, metadata !DIExpression()), !dbg !1254
  %190 = xor i1 %189, true, !dbg !1489
  %191 = zext i1 %190 to i32, !dbg !1489
  ret i32 %191, !dbg !1489
}

; Function Attrs: nounwind
declare !dbg !1490 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1493 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1494 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1497 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1503 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare !dbg !1506 ptr @re_compile_pattern(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define internal fastcc void @output(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !dbg !451 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !454, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata ptr %1, metadata !455, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, ptr %0), metadata !456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1510
  %3 = load i64, ptr @output.bytes_in_buffer, align 8, !dbg !1511, !tbaa !1268
  call void @llvm.dbg.value(metadata !DIArgList(i64 8192, i64 %3), metadata !457, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1510
  %4 = icmp eq ptr %0, null, !dbg !1512
  br i1 %4, label %20, label %5, !dbg !1513

5:                                                ; preds = %2
  %6 = sub i64 8192, %3, !dbg !1514
  call void @llvm.dbg.value(metadata i64 %6, metadata !457, metadata !DIExpression()), !dbg !1510
  %7 = ptrtoint ptr %1 to i64, !dbg !1515
  call void @llvm.dbg.value(metadata !DIArgList(i64 %7, ptr %0), metadata !456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1510
  %8 = ptrtoint ptr %0 to i64, !dbg !1515
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, i64 %8), metadata !456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1510
  %9 = sub i64 %7, %8, !dbg !1515
  call void @llvm.dbg.value(metadata i64 %9, metadata !456, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata ptr %0, metadata !454, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1, ptr %0), metadata !456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1510
  call void @llvm.dbg.value(metadata !DIArgList(i64 8192, i64 %3), metadata !457, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1510
  %10 = icmp ult i64 %9, %6, !dbg !1516
  br i1 %10, label %53, label %11, !dbg !1517

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %0, metadata !454, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i64 %9, metadata !456, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i64 %6, metadata !457, metadata !DIExpression()), !dbg !1510
  %12 = getelementptr inbounds i8, ptr @output.buffer, i64 %3, !dbg !1518
  call void @llvm.dbg.value(metadata ptr %12, metadata !1331, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %0, metadata !1338, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %6, metadata !1339, metadata !DIExpression()), !dbg !1520
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %12, ptr noundef nonnull align 1 %0, i64 noundef %6, i1 noundef false) #38, !dbg !1522
  call void @llvm.dbg.value(metadata !DIArgList(i64 %9, i64 %6), metadata !456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1510
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %6), metadata !454, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1510
  %13 = load ptr, ptr @stdout, align 8, !dbg !1523, !tbaa !1037
  %14 = tail call i64 @fwrite_unlocked(ptr noundef nonnull @output.buffer, i64 noundef 1, i64 noundef 8192, ptr noundef %13), !dbg !1523
  %15 = icmp eq i64 %14, 8192, !dbg !1525
  br i1 %15, label %16, label %40, !dbg !1526

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %0, i64 %6, !dbg !1527
  call void @llvm.dbg.value(metadata ptr %17, metadata !454, metadata !DIExpression()), !dbg !1510
  %18 = sub i64 %9, %6, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %18, metadata !456, metadata !DIExpression()), !dbg !1510
  store i64 0, ptr @output.bytes_in_buffer, align 8, !dbg !1529, !tbaa !1268
  call void @llvm.dbg.value(metadata i64 8192, metadata !457, metadata !DIExpression()), !dbg !1510
  %19 = icmp ult i64 %18, 8192, !dbg !1516
  br i1 %19, label %53, label %34, !dbg !1517

20:                                               ; preds = %2
  %21 = load ptr, ptr @stdout, align 8, !dbg !1530, !tbaa !1037
  %22 = tail call i64 @fwrite_unlocked(ptr noundef nonnull @output.buffer, i64 noundef 1, i64 noundef %3, ptr noundef %21), !dbg !1530
  %23 = load i64, ptr @output.bytes_in_buffer, align 8, !dbg !1531, !tbaa !1268
  %24 = icmp eq i64 %22, %23, !dbg !1532
  br i1 %24, label %59, label %25, !dbg !1533

25:                                               ; preds = %20
  %26 = tail call ptr @__errno_location() #41, !dbg !1534
  %27 = load i32, ptr %26, align 4, !dbg !1534, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %27, metadata !1537, metadata !DIExpression()), !dbg !1539
  %28 = load ptr, ptr @stdout, align 8, !dbg !1540, !tbaa !1037
  %29 = tail call i32 @fflush_unlocked(ptr noundef %28) #38, !dbg !1540
  %30 = load ptr, ptr @stdout, align 8, !dbg !1541, !tbaa !1037
  %31 = tail call i32 @fpurge(ptr noundef %30) #38, !dbg !1542
  %32 = load ptr, ptr @stdout, align 8, !dbg !1543, !tbaa !1037
  tail call void @clearerr_unlocked(ptr noundef %32) #38, !dbg !1543
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.70, i32 noundef 5) #38, !dbg !1544
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %27, ptr noundef %33) #38, !dbg !1544
  unreachable, !dbg !1544

34:                                               ; preds = %16, %49
  %35 = phi ptr [ %50, %49 ], [ %17, %16 ]
  %36 = phi i64 [ %51, %49 ], [ %18, %16 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !454, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i64 %36, metadata !456, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i64 8192, metadata !457, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata ptr @output.buffer, metadata !1331, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %35, metadata !1338, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 8192, metadata !1339, metadata !DIExpression()), !dbg !1520
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) @output.buffer, ptr noundef nonnull align 1 dereferenceable(8192) %35, i64 noundef 8192, i1 noundef false) #38, !dbg !1522
  call void @llvm.dbg.value(metadata !DIArgList(i64 %36, i64 8192), metadata !456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1510
  call void @llvm.dbg.value(metadata !DIArgList(ptr %35, i64 8192), metadata !454, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1510
  %37 = load ptr, ptr @stdout, align 8, !dbg !1523, !tbaa !1037
  %38 = tail call i64 @fwrite_unlocked(ptr noundef nonnull @output.buffer, i64 noundef 1, i64 noundef 8192, ptr noundef %37), !dbg !1523
  %39 = icmp eq i64 %38, 8192, !dbg !1525
  br i1 %39, label %49, label %40, !dbg !1526

40:                                               ; preds = %34, %11
  %41 = tail call ptr @__errno_location() #41, !dbg !1545
  %42 = load i32, ptr %41, align 4, !dbg !1545, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %42, metadata !1537, metadata !DIExpression()), !dbg !1547
  %43 = load ptr, ptr @stdout, align 8, !dbg !1548, !tbaa !1037
  %44 = tail call i32 @fflush_unlocked(ptr noundef %43) #38, !dbg !1548
  %45 = load ptr, ptr @stdout, align 8, !dbg !1549, !tbaa !1037
  %46 = tail call i32 @fpurge(ptr noundef %45) #38, !dbg !1550
  %47 = load ptr, ptr @stdout, align 8, !dbg !1551, !tbaa !1037
  tail call void @clearerr_unlocked(ptr noundef %47) #38, !dbg !1551
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.70, i32 noundef 5) #38, !dbg !1552
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %42, ptr noundef %48) #38, !dbg !1552
  unreachable, !dbg !1552

49:                                               ; preds = %34
  %50 = getelementptr inbounds i8, ptr %35, i64 8192, !dbg !1527
  call void @llvm.dbg.value(metadata ptr %50, metadata !454, metadata !DIExpression()), !dbg !1510
  %51 = add i64 %36, -8192, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %51, metadata !456, metadata !DIExpression()), !dbg !1510
  store i64 0, ptr @output.bytes_in_buffer, align 8, !dbg !1529, !tbaa !1268
  call void @llvm.dbg.value(metadata i64 8192, metadata !457, metadata !DIExpression()), !dbg !1510
  %52 = icmp ult i64 %51, 8192, !dbg !1516
  br i1 %52, label %53, label %34, !dbg !1517, !llvm.loop !1553

53:                                               ; preds = %49, %16, %5
  %54 = phi i64 [ %3, %5 ], [ 0, %16 ], [ 0, %49 ], !dbg !1556
  %55 = phi i64 [ %9, %5 ], [ %18, %16 ], [ %51, %49 ], !dbg !1510
  %56 = phi ptr [ %0, %5 ], [ %17, %16 ], [ %50, %49 ]
  %57 = getelementptr inbounds i8, ptr @output.buffer, i64 %54, !dbg !1557
  call void @llvm.dbg.value(metadata ptr %57, metadata !1331, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata ptr %56, metadata !1338, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i64 %55, metadata !1339, metadata !DIExpression()), !dbg !1558
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %57, ptr noundef nonnull align 1 %56, i64 noundef %55, i1 noundef false) #38, !dbg !1560
  %58 = add i64 %54, %55, !dbg !1561
  br label %59, !dbg !1562

59:                                               ; preds = %20, %53
  %60 = phi i64 [ %58, %53 ], [ 0, %20 ], !dbg !1510
  store i64 %60, ptr @output.bytes_in_buffer, align 8, !dbg !1510, !tbaa !1268
  ret void, !dbg !1562
}

; Function Attrs: nofree
declare !dbg !1563 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1567 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1571 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1575 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

declare !dbg !1578 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nounwind
declare !dbg !1581 i32 @fileno_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i1 @tac_seekable(i32 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #10 !dbg !1582 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1586, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata ptr %1, metadata !1587, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %2, metadata !1588, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 1, metadata !1592, metadata !DIExpression()), !dbg !1619
  %4 = load ptr, ptr @separator, align 8, !dbg !1620, !tbaa !1037
  %5 = load i8, ptr %4, align 1, !dbg !1621, !tbaa !1116
  call void @llvm.dbg.value(metadata i8 %5, metadata !1593, metadata !DIExpression()), !dbg !1619
  %6 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1622
  call void @llvm.dbg.value(metadata ptr %6, metadata !1594, metadata !DIExpression()), !dbg !1619
  %7 = load i64, ptr @match_length, align 8, !dbg !1623, !tbaa !1268
  %8 = add i64 %7, -1, !dbg !1624
  call void @llvm.dbg.value(metadata i64 %8, metadata !1595, metadata !DIExpression()), !dbg !1619
  %9 = load i64, ptr @read_size, align 8, !dbg !1625, !tbaa !1268
  %10 = urem i64 %2, %9, !dbg !1626
  call void @llvm.dbg.value(metadata i64 %10, metadata !1596, metadata !DIExpression()), !dbg !1619
  %11 = icmp eq i64 %10, 0, !dbg !1627
  br i1 %11, label %21, label %12, !dbg !1629

12:                                               ; preds = %3
  %13 = sub nuw i64 %2, %10, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %13, metadata !1588, metadata !DIExpression()), !dbg !1619
  %14 = tail call i64 @lseek(i32 noundef %0, i64 noundef %13, i32 noundef 0) #38, !dbg !1632
  %15 = icmp slt i64 %14, 0, !dbg !1634
  br i1 %15, label %16, label %21, !dbg !1635

16:                                               ; preds = %12
  %17 = tail call ptr @__errno_location() #41, !dbg !1636
  %18 = load i32, ptr %17, align 4, !dbg !1636, !tbaa !1107
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #38, !dbg !1636
  %20 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #38, !dbg !1636
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %18, ptr noundef %19, ptr noundef %20) #38, !dbg !1636
  br label %21, !dbg !1636

21:                                               ; preds = %12, %16, %3
  %22 = phi i64 [ %13, %16 ], [ %13, %12 ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !1588, metadata !DIExpression()), !dbg !1619
  %23 = load ptr, ptr @G_buffer, align 8, !dbg !1637, !tbaa !1037
  %24 = load i64, ptr @read_size, align 8, !dbg !1638, !tbaa !1268
  %25 = tail call i64 @read(i32 noundef %0, ptr noundef %23, i64 noundef %24) #38, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %25, metadata !1591, metadata !DIExpression()), !dbg !1619
  %26 = icmp eq i64 %25, 0, !dbg !1640
  %27 = icmp ne i64 %22, 0, !dbg !1641
  %28 = and i1 %26, %27, !dbg !1641
  br i1 %28, label %29, label %48, !dbg !1642

29:                                               ; preds = %21, %40
  %30 = phi i64 [ %42, %40 ], [ %22, %21 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !1588, metadata !DIExpression()), !dbg !1619
  %31 = load i64, ptr @read_size, align 8, !dbg !1643, !tbaa !1268
  call void @llvm.dbg.value(metadata i64 %31, metadata !1597, metadata !DIExpression()), !dbg !1644
  %32 = sub nsw i64 0, %31, !dbg !1645
  %33 = tail call i64 @lseek(i32 noundef %0, i64 noundef %32, i32 noundef 1) #38, !dbg !1647
  %34 = icmp slt i64 %33, 0, !dbg !1648
  br i1 %34, label %35, label %40, !dbg !1649

35:                                               ; preds = %29
  %36 = tail call ptr @__errno_location() #41, !dbg !1650
  %37 = load i32, ptr %36, align 4, !dbg !1650, !tbaa !1107
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #38, !dbg !1650
  %39 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #38, !dbg !1650
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %37, ptr noundef %38, ptr noundef %39) #38, !dbg !1650
  br label %40, !dbg !1650

40:                                               ; preds = %35, %29
  %41 = load i64, ptr @read_size, align 8, !dbg !1651, !tbaa !1268
  %42 = sub i64 %30, %41, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %42, metadata !1588, metadata !DIExpression()), !dbg !1619
  %43 = load ptr, ptr @G_buffer, align 8, !dbg !1637, !tbaa !1037
  %44 = tail call i64 @read(i32 noundef %0, ptr noundef %43, i64 noundef %41) #38, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %44, metadata !1591, metadata !DIExpression()), !dbg !1619
  %45 = icmp eq i64 %44, 0, !dbg !1640
  %46 = icmp ne i64 %42, 0, !dbg !1641
  %47 = select i1 %45, i1 %46, i1 false, !dbg !1641
  br i1 %47, label %29, label %48, !dbg !1642, !llvm.loop !1653

48:                                               ; preds = %40, %21
  %49 = phi i64 [ %25, %21 ], [ %44, %40 ]
  %50 = phi i64 [ %22, %21 ], [ %42, %40 ]
  br label %51, !dbg !1655

51:                                               ; preds = %48, %56
  %52 = phi i64 [ %62, %56 ], [ %49, %48 ], !dbg !1656
  %53 = phi i64 [ %63, %56 ], [ %50, %48 ], !dbg !1630
  call void @llvm.dbg.value(metadata i64 %53, metadata !1588, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %52, metadata !1591, metadata !DIExpression()), !dbg !1619
  %54 = load i64, ptr @read_size, align 8, !dbg !1657, !tbaa !1268
  %55 = icmp eq i64 %52, %54, !dbg !1658
  br i1 %55, label %56, label %64, !dbg !1655

56:                                               ; preds = %51
  %57 = load ptr, ptr @G_buffer, align 8, !dbg !1659, !tbaa !1037
  %58 = tail call i64 @read(i32 noundef %0, ptr noundef %57, i64 noundef %52) #38, !dbg !1660
  call void @llvm.dbg.value(metadata i64 %58, metadata !1599, metadata !DIExpression()), !dbg !1661
  %59 = icmp eq i64 %58, 0, !dbg !1662
  %60 = tail call i64 @llvm.smax.i64(i64 %58, i64 0), !dbg !1664
  %61 = icmp sgt i64 %58, 0, !dbg !1664
  %62 = select i1 %59, i64 %52, i64 %58, !dbg !1664
  %63 = add nsw i64 %60, %53, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %63, metadata !1588, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %62, metadata !1591, metadata !DIExpression()), !dbg !1619
  br i1 %61, label %51, label %64

64:                                               ; preds = %56, %51
  %65 = phi i64 [ %62, %56 ], [ %52, %51 ], !dbg !1656
  %66 = phi i64 [ %63, %56 ], [ %53, %51 ], !dbg !1630
  call void @llvm.dbg.value(metadata i64 %66, metadata !1588, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %65, metadata !1591, metadata !DIExpression()), !dbg !1619
  %67 = icmp slt i64 %65, 0, !dbg !1665
  br i1 %67, label %68, label %73, !dbg !1667

68:                                               ; preds = %64
  %69 = tail call ptr @__errno_location() #41, !dbg !1668
  %70 = load i32, ptr %69, align 4, !dbg !1668, !tbaa !1107
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #38, !dbg !1668
  %72 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #38, !dbg !1668
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %70, ptr noundef %71, ptr noundef %72) #38, !dbg !1668
  br label %220, !dbg !1670

73:                                               ; preds = %64
  %74 = load ptr, ptr @G_buffer, align 8, !dbg !1671, !tbaa !1037
  %75 = getelementptr inbounds i8, ptr %74, i64 %65, !dbg !1672
  call void @llvm.dbg.value(metadata ptr %75, metadata !1590, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata ptr %75, metadata !1589, metadata !DIExpression()), !dbg !1619
  %76 = load i64, ptr @sentinel_length, align 8, !dbg !1673, !tbaa !1268
  %77 = icmp eq i64 %76, 0, !dbg !1673
  %78 = sub i64 1, %7, !dbg !1675
  %79 = select i1 %77, i64 0, i64 %78, !dbg !1675
  %80 = getelementptr i8, ptr %75, i64 %79, !dbg !1675
  call void @llvm.dbg.value(metadata ptr %80, metadata !1589, metadata !DIExpression()), !dbg !1619
  %81 = icmp eq i64 %8, 0
  br label %82, !dbg !1676

82:                                               ; preds = %210, %73
  %83 = phi i64 [ %76, %73 ], [ %218, %210 ]
  %84 = phi i1 [ true, %73 ], [ %211, %210 ]
  %85 = phi ptr [ %75, %73 ], [ %212, %210 ]
  %86 = phi ptr [ %80, %73 ], [ %219, %210 ]
  %87 = phi i64 [ %66, %73 ], [ %92, %210 ]
  br label %88, !dbg !1676

88:                                               ; preds = %82, %189
  %89 = phi i64 [ %194, %189 ], [ %83, %82 ], !dbg !1677
  %90 = phi ptr [ %192, %189 ], [ %85, %82 ], !dbg !1619
  %91 = phi ptr [ %193, %189 ], [ %86, %82 ], !dbg !1619
  %92 = phi i64 [ %173, %189 ], [ %87, %82 ], !dbg !1619
  call void @llvm.dbg.value(metadata i64 %92, metadata !1588, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata ptr %91, metadata !1589, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata ptr %90, metadata !1590, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1619
  %93 = icmp eq i64 %89, 0, !dbg !1678
  br i1 %93, label %94, label %123, !dbg !1679

94:                                               ; preds = %88
  %95 = load ptr, ptr @G_buffer, align 8, !dbg !1680, !tbaa !1037
  %96 = ptrtoint ptr %91 to i64, !dbg !1681
  %97 = ptrtoint ptr %95 to i64, !dbg !1681
  %98 = sub i64 %96, %97, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %98, metadata !1601, metadata !DIExpression()), !dbg !1682
  %99 = trunc i64 %98 to i32, !dbg !1683
  call void @llvm.dbg.value(metadata i32 %99, metadata !1605, metadata !DIExpression()), !dbg !1682
  %100 = sub nsw i32 1, %99, !dbg !1684
  call void @llvm.dbg.value(metadata i32 %100, metadata !1606, metadata !DIExpression()), !dbg !1682
  %101 = icmp slt i32 %99, 0, !dbg !1685
  br i1 %101, label %102, label %104, !dbg !1687

102:                                              ; preds = %94
  %103 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #38, !dbg !1688
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %103) #38, !dbg !1688
  unreachable, !dbg !1688

104:                                              ; preds = %94
  %105 = icmp eq i32 %99, 0, !dbg !1689
  br i1 %105, label %139, label %106, !dbg !1691

106:                                              ; preds = %104
  %107 = add nsw i32 %99, -1, !dbg !1692
  %108 = tail call i32 @re_search(ptr noundef nonnull @compiled_separator, ptr noundef %95, i32 noundef %99, i32 noundef %107, i32 noundef %100, ptr noundef nonnull @regs) #38, !dbg !1693
  call void @llvm.dbg.value(metadata i32 %108, metadata !1607, metadata !DIExpression()), !dbg !1682
  switch i32 %108, label %113 [
    i32 -1, label %109
    i32 -2, label %111
  ], !dbg !1694

109:                                              ; preds = %106
  %110 = load ptr, ptr @G_buffer, align 8, !dbg !1695, !tbaa !1037
  br label %139, !dbg !1694

111:                                              ; preds = %106
  %112 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.69, i32 noundef 5) #38, !dbg !1696
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %112) #38, !dbg !1696
  unreachable, !dbg !1696

113:                                              ; preds = %106
  %114 = load ptr, ptr @G_buffer, align 8, !dbg !1698, !tbaa !1037
  %115 = load ptr, ptr getelementptr inbounds (%struct.re_registers, ptr @regs, i64 0, i32 1), align 8, !dbg !1700, !tbaa !1701
  %116 = load i32, ptr %115, align 4, !dbg !1703, !tbaa !1107
  %117 = sext i32 %116 to i64, !dbg !1704
  %118 = getelementptr inbounds i8, ptr %114, i64 %117, !dbg !1704
  call void @llvm.dbg.value(metadata ptr %118, metadata !1589, metadata !DIExpression()), !dbg !1619
  %119 = load ptr, ptr getelementptr inbounds (%struct.re_registers, ptr @regs, i64 0, i32 2), align 8, !dbg !1705, !tbaa !1706
  %120 = load i32, ptr %119, align 4, !dbg !1707, !tbaa !1107
  %121 = sub nsw i32 %120, %116, !dbg !1708
  %122 = sext i32 %121 to i64, !dbg !1707
  store i64 %122, ptr @match_length, align 8, !dbg !1709, !tbaa !1268
  br label %135

123:                                              ; preds = %88, %128
  %124 = phi ptr [ %125, %128 ], [ %91, %88 ], !dbg !1619
  call void @llvm.dbg.value(metadata ptr %124, metadata !1589, metadata !DIExpression()), !dbg !1619
  %125 = getelementptr inbounds i8, ptr %124, i64 -1, !dbg !1710
  call void @llvm.dbg.value(metadata ptr %125, metadata !1589, metadata !DIExpression()), !dbg !1619
  %126 = load i8, ptr %125, align 1, !dbg !1712, !tbaa !1116
  %127 = icmp eq i8 %126, %5, !dbg !1713
  br i1 %127, label %129, label %128, !dbg !1714

128:                                              ; preds = %123, %130
  br label %123, !dbg !1619, !llvm.loop !1715

129:                                              ; preds = %123
  br i1 %81, label %133, label %130, !dbg !1718

130:                                              ; preds = %129
  %131 = tail call i32 @strncmp(ptr noundef nonnull %124, ptr noundef nonnull %6, i64 noundef %8) #39, !dbg !1719
  %132 = icmp eq i32 %131, 0, !dbg !1719
  br i1 %132, label %133, label %128, !dbg !1716

133:                                              ; preds = %129, %130
  %134 = load ptr, ptr @G_buffer, align 8, !dbg !1720, !tbaa !1037
  br label %135, !dbg !1720

135:                                              ; preds = %133, %113
  %136 = phi ptr [ %114, %113 ], [ %134, %133 ], !dbg !1720
  %137 = phi ptr [ %118, %113 ], [ %125, %133 ], !dbg !1721
  call void @llvm.dbg.value(metadata ptr %137, metadata !1589, metadata !DIExpression()), !dbg !1619
  %138 = icmp ult ptr %137, %136, !dbg !1722
  br i1 %138, label %139, label %200, !dbg !1723

139:                                              ; preds = %109, %104, %135
  %140 = phi ptr [ %136, %135 ], [ %110, %109 ], [ %95, %104 ]
  %141 = icmp eq i64 %92, 0, !dbg !1724
  br i1 %141, label %142, label %143, !dbg !1726

142:                                              ; preds = %139
  tail call fastcc void @output(ptr noundef nonnull %140, ptr noundef %90), !dbg !1727
  br label %220, !dbg !1729

143:                                              ; preds = %139
  %144 = ptrtoint ptr %90 to i64, !dbg !1730
  %145 = ptrtoint ptr %140 to i64, !dbg !1730
  %146 = sub i64 %144, %145, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %146, metadata !1591, metadata !DIExpression()), !dbg !1619
  %147 = load i64, ptr @read_size, align 8, !dbg !1731, !tbaa !1268
  %148 = icmp ugt i64 %146, %147, !dbg !1732
  br i1 %148, label %149, label %166, !dbg !1733

149:                                              ; preds = %143
  %150 = load i64, ptr @sentinel_length, align 8, !dbg !1734, !tbaa !1268
  call void @llvm.dbg.value(metadata i64 poison, metadata !1613, metadata !DIExpression()), !dbg !1735
  %151 = load i64, ptr @G_buffer_size, align 8, !dbg !1736, !tbaa !1268
  call void @llvm.dbg.value(metadata i64 %151, metadata !1614, metadata !DIExpression()), !dbg !1735
  %152 = shl i64 %147, 1, !dbg !1737
  store i64 %152, ptr @read_size, align 8, !dbg !1737, !tbaa !1268
  %153 = shl i64 %147, 2, !dbg !1738
  %154 = or i64 %153, 2, !dbg !1739
  %155 = add i64 %154, %150, !dbg !1740
  store i64 %155, ptr @G_buffer_size, align 8, !dbg !1741, !tbaa !1268
  %156 = icmp ult i64 %155, %151, !dbg !1742
  br i1 %156, label %157, label %158, !dbg !1744

157:                                              ; preds = %149
  tail call void @xalloc_die() #40, !dbg !1745
  unreachable, !dbg !1745

158:                                              ; preds = %149
  %159 = icmp eq i64 %150, 0, !dbg !1734
  %160 = select i1 %159, i64 1, i64 %150, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %160, metadata !1613, metadata !DIExpression()), !dbg !1735
  %161 = sub i64 0, %160, !dbg !1746
  %162 = getelementptr inbounds i8, ptr %140, i64 %161, !dbg !1746
  %163 = tail call ptr @xrealloc(ptr noundef nonnull %162, i64 noundef %155) #44, !dbg !1747
  call void @llvm.dbg.value(metadata ptr %163, metadata !1608, metadata !DIExpression()), !dbg !1735
  %164 = getelementptr inbounds i8, ptr %163, i64 %160, !dbg !1748
  call void @llvm.dbg.value(metadata ptr %164, metadata !1608, metadata !DIExpression()), !dbg !1735
  store ptr %164, ptr @G_buffer, align 8, !dbg !1749, !tbaa !1037
  %165 = load i64, ptr @read_size, align 8, !dbg !1750, !tbaa !1268
  br label %166, !dbg !1752

166:                                              ; preds = %158, %143
  %167 = phi i64 [ %165, %158 ], [ %147, %143 ], !dbg !1750
  %168 = icmp ult i64 %92, %167, !dbg !1753
  br i1 %168, label %171, label %169, !dbg !1754

169:                                              ; preds = %166
  %170 = sub i64 %92, %167, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %170, metadata !1588, metadata !DIExpression()), !dbg !1619
  br label %172, !dbg !1756

171:                                              ; preds = %166
  store i64 %92, ptr @read_size, align 8, !dbg !1757, !tbaa !1268
  call void @llvm.dbg.value(metadata i64 0, metadata !1588, metadata !DIExpression()), !dbg !1619
  br label %172

172:                                              ; preds = %171, %169
  %173 = phi i64 [ %170, %169 ], [ 0, %171 ], !dbg !1759
  call void @llvm.dbg.value(metadata i64 %173, metadata !1588, metadata !DIExpression()), !dbg !1619
  %174 = tail call i64 @lseek(i32 noundef %0, i64 noundef %173, i32 noundef 0) #38, !dbg !1760
  %175 = icmp slt i64 %174, 0, !dbg !1762
  br i1 %175, label %176, label %181, !dbg !1763

176:                                              ; preds = %172
  %177 = tail call ptr @__errno_location() #41, !dbg !1764
  %178 = load i32, ptr %177, align 4, !dbg !1764, !tbaa !1107
  %179 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #38, !dbg !1764
  %180 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #38, !dbg !1764
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %178, ptr noundef %179, ptr noundef %180) #38, !dbg !1764
  br label %181, !dbg !1764

181:                                              ; preds = %176, %172
  %182 = load ptr, ptr @G_buffer, align 8, !dbg !1765, !tbaa !1037
  %183 = load i64, ptr @read_size, align 8, !dbg !1766, !tbaa !1268
  %184 = getelementptr inbounds i8, ptr %182, i64 %183, !dbg !1767
  call void @llvm.dbg.value(metadata ptr %184, metadata !1768, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata ptr %182, metadata !1773, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i64 %146, metadata !1774, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %184, ptr noundef nonnull align 1 %182, i64 noundef %146, i1 noundef false) #38, !dbg !1777
  call void @llvm.dbg.value(metadata !DIArgList(ptr %182, i64 %146, i64 %183), metadata !1590, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1619
  %185 = load i64, ptr @sentinel_length, align 8, !dbg !1778, !tbaa !1268
  call void @llvm.dbg.value(metadata ptr poison, metadata !1589, metadata !DIExpression()), !dbg !1619
  %186 = tail call i64 @full_read(i32 noundef %0, ptr noundef %182, i64 noundef %183) #38, !dbg !1780
  %187 = load i64, ptr @read_size, align 8, !dbg !1782, !tbaa !1268
  %188 = icmp eq i64 %186, %187, !dbg !1783
  br i1 %188, label %189, label %195, !dbg !1784

189:                                              ; preds = %181
  %190 = icmp eq i64 %185, 0, !dbg !1778
  %191 = getelementptr inbounds i8, ptr %182, i64 %183, !dbg !1785
  call void @llvm.dbg.value(metadata !DIArgList(ptr %191, i64 %146), metadata !1590, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1619
  %192 = getelementptr inbounds i8, ptr %191, i64 %146, !dbg !1786
  call void @llvm.dbg.value(metadata ptr %192, metadata !1590, metadata !DIExpression()), !dbg !1619
  %193 = select i1 %190, ptr %192, ptr %191
  call void @llvm.dbg.value(metadata ptr %193, metadata !1589, metadata !DIExpression()), !dbg !1619
  %194 = load i64, ptr @sentinel_length, align 8, !dbg !1677, !tbaa !1268
  br label %88, !dbg !1784, !llvm.loop !1787

195:                                              ; preds = %181
  %196 = tail call ptr @__errno_location() #41, !dbg !1789
  %197 = load i32, ptr %196, align 4, !dbg !1789, !tbaa !1107
  %198 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #38, !dbg !1789
  %199 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #38, !dbg !1789
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %197, ptr noundef %198, ptr noundef %199) #38, !dbg !1789
  br label %220, !dbg !1791

200:                                              ; preds = %135
  %201 = load i1, ptr @separator_ends_record, align 1, !dbg !1792
  br i1 %201, label %207, label %202, !dbg !1793

202:                                              ; preds = %200
  %203 = load i64, ptr @match_length, align 8, !dbg !1794, !tbaa !1268
  %204 = getelementptr inbounds i8, ptr %137, i64 %203, !dbg !1795
  call void @llvm.dbg.value(metadata ptr %204, metadata !1615, metadata !DIExpression()), !dbg !1796
  %205 = icmp eq ptr %204, %90
  %206 = select i1 %84, i1 %205, i1 false, !dbg !1797
  br i1 %206, label %210, label %207, !dbg !1797

207:                                              ; preds = %200, %202
  %208 = phi ptr [ %204, %202 ], [ %137, %200 ]
  %209 = phi i1 [ false, %202 ], [ %84, %200 ]
  tail call fastcc void @output(ptr noundef %208, ptr noundef %90), !dbg !1799
  br label %210, !dbg !1800

210:                                              ; preds = %207, %202
  %211 = phi i1 [ false, %202 ], [ %209, %207 ]
  %212 = phi ptr [ %90, %202 ], [ %208, %207 ], !dbg !1799
  call void @llvm.dbg.value(metadata ptr %212, metadata !1590, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1619
  %213 = load i64, ptr @sentinel_length, align 8, !dbg !1800, !tbaa !1268
  %214 = icmp eq i64 %213, 0, !dbg !1802
  %215 = load i64, ptr @match_length, align 8, !dbg !1803
  %216 = sub i64 1, %215, !dbg !1803
  %217 = getelementptr inbounds i8, ptr %137, i64 %216, !dbg !1803
  %218 = select i1 %214, i64 0, i64 1, !dbg !1803
  %219 = select i1 %214, ptr %137, ptr %217, !dbg !1803
  br label %82, !dbg !1676, !llvm.loop !1787

220:                                              ; preds = %195, %142, %68
  %221 = phi i1 [ false, %68 ], [ true, %142 ], [ false, %195 ], !dbg !1619
  ret i1 %221, !dbg !1804
}

declare !dbg !1805 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

declare !dbg !1806 i32 @re_search(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nounwind
declare !dbg !1810 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i1 @temp_stream(ptr nocapture noundef writeonly %0, ptr noundef writeonly %1) local_unnamed_addr #10 !dbg !490 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !551, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata ptr %1, metadata !552, metadata !DIExpression()), !dbg !1813
  %3 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1814, !tbaa !1037
  %4 = icmp eq ptr %3, null, !dbg !1815
  br i1 %4, label %5, label %102, !dbg !1816

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 128, metadata !556, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata ptr null, metadata !553, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata ptr null, metadata !1818, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i64 128, metadata !1824, metadata !DIExpression()), !dbg !1825
  %6 = tail call dereferenceable_or_null(128) ptr @malloc(i64 128), !dbg !1829
  call void @llvm.dbg.value(metadata ptr %6, metadata !553, metadata !DIExpression()), !dbg !1817
  %7 = icmp eq ptr %6, null, !dbg !1830
  br i1 %7, label %8, label %63, !dbg !1831

8:                                                ; preds = %5
  %9 = tail call ptr @__errno_location() #41, !dbg !1832
  br label %59, !dbg !1831

10:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 256, metadata !556, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i64 128, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1817
  call void @llvm.dbg.value(metadata ptr %6, metadata !553, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata ptr %6, metadata !1818, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i64 128, metadata !1824, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1825
  %11 = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %6, i64 noundef 256) #44, !dbg !1829
  call void @llvm.dbg.value(metadata ptr %11, metadata !553, metadata !DIExpression()), !dbg !1817
  %12 = icmp eq ptr %11, null, !dbg !1830
  br i1 %12, label %59, label %13, !dbg !1831, !llvm.loop !1834

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 256, metadata !556, metadata !DIExpression()), !dbg !1817
  %14 = tail call i32 @path_search(ptr noundef nonnull %11, i64 noundef 256, ptr noundef null, ptr noundef nonnull @.str.1.3, i1 noundef true) #38, !dbg !1837
  %15 = icmp eq i32 %14, 0, !dbg !1839
  br i1 %15, label %75, label %16, !dbg !1840

16:                                               ; preds = %13
  %17 = tail call ptr @__errno_location() #41, !dbg !1841
  %18 = load i32, ptr %17, align 4, !dbg !1841, !tbaa !1107
  %19 = icmp eq i32 %18, 22, !dbg !1843
  call void @llvm.dbg.value(metadata i64 256, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1817
  br i1 %19, label %20, label %70, !dbg !1844

20:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i64 512, metadata !556, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i64 256, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1817
  call void @llvm.dbg.value(metadata ptr %11, metadata !553, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata ptr %11, metadata !1818, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i64 256, metadata !1824, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1825
  %21 = tail call dereferenceable_or_null(512) ptr @realloc(ptr noundef nonnull %11, i64 noundef 512) #44, !dbg !1829
  call void @llvm.dbg.value(metadata ptr %21, metadata !553, metadata !DIExpression()), !dbg !1817
  %22 = icmp eq ptr %21, null, !dbg !1830
  br i1 %22, label %59, label %23, !dbg !1831, !llvm.loop !1834

23:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 512, metadata !556, metadata !DIExpression()), !dbg !1817
  %24 = tail call i32 @path_search(ptr noundef nonnull %21, i64 noundef 512, ptr noundef null, ptr noundef nonnull @.str.1.3, i1 noundef true) #38, !dbg !1837
  %25 = icmp eq i32 %24, 0, !dbg !1839
  br i1 %25, label %75, label %26, !dbg !1840

26:                                               ; preds = %23
  %27 = tail call ptr @__errno_location() #41, !dbg !1841
  %28 = load i32, ptr %27, align 4, !dbg !1841, !tbaa !1107
  %29 = icmp eq i32 %28, 22, !dbg !1843
  call void @llvm.dbg.value(metadata i64 512, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1817
  br i1 %29, label %30, label %70, !dbg !1844

30:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 1024, metadata !556, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i64 512, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1817
  call void @llvm.dbg.value(metadata ptr %21, metadata !553, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata ptr %21, metadata !1818, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i64 512, metadata !1824, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1825
  %31 = tail call dereferenceable_or_null(1024) ptr @realloc(ptr noundef nonnull %21, i64 noundef 1024) #44, !dbg !1829
  call void @llvm.dbg.value(metadata ptr %31, metadata !553, metadata !DIExpression()), !dbg !1817
  %32 = icmp eq ptr %31, null, !dbg !1830
  br i1 %32, label %59, label %33, !dbg !1831, !llvm.loop !1834

33:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i64 1024, metadata !556, metadata !DIExpression()), !dbg !1817
  %34 = tail call i32 @path_search(ptr noundef nonnull %31, i64 noundef 1024, ptr noundef null, ptr noundef nonnull @.str.1.3, i1 noundef true) #38, !dbg !1837
  %35 = icmp eq i32 %34, 0, !dbg !1839
  br i1 %35, label %75, label %36, !dbg !1840

36:                                               ; preds = %33
  %37 = tail call ptr @__errno_location() #41, !dbg !1841
  %38 = load i32, ptr %37, align 4, !dbg !1841, !tbaa !1107
  %39 = icmp eq i32 %38, 22, !dbg !1843
  call void @llvm.dbg.value(metadata i64 1024, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1817
  br i1 %39, label %40, label %70, !dbg !1844

40:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i64 2048, metadata !556, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i64 1024, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1817
  call void @llvm.dbg.value(metadata ptr %31, metadata !553, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata ptr %31, metadata !1818, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i64 1024, metadata !1824, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1825
  %41 = tail call dereferenceable_or_null(2048) ptr @realloc(ptr noundef nonnull %31, i64 noundef 2048) #44, !dbg !1829
  call void @llvm.dbg.value(metadata ptr %41, metadata !553, metadata !DIExpression()), !dbg !1817
  %42 = icmp eq ptr %41, null, !dbg !1830
  br i1 %42, label %59, label %43, !dbg !1831, !llvm.loop !1834

43:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2048, metadata !556, metadata !DIExpression()), !dbg !1817
  %44 = tail call i32 @path_search(ptr noundef nonnull %41, i64 noundef 2048, ptr noundef null, ptr noundef nonnull @.str.1.3, i1 noundef true) #38, !dbg !1837
  %45 = icmp eq i32 %44, 0, !dbg !1839
  br i1 %45, label %75, label %46, !dbg !1840

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #41, !dbg !1841
  %48 = load i32, ptr %47, align 4, !dbg !1841, !tbaa !1107
  %49 = icmp eq i32 %48, 22, !dbg !1843
  call void @llvm.dbg.value(metadata i64 2048, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1817
  br i1 %49, label %50, label %70, !dbg !1844

50:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i64 4096, metadata !556, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i64 2048, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1817
  call void @llvm.dbg.value(metadata ptr %41, metadata !553, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata ptr %41, metadata !1818, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i64 2048, metadata !1824, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1825
  %51 = tail call dereferenceable_or_null(4096) ptr @realloc(ptr noundef nonnull %41, i64 noundef 4096) #44, !dbg !1829
  call void @llvm.dbg.value(metadata ptr %51, metadata !553, metadata !DIExpression()), !dbg !1817
  %52 = icmp eq ptr %51, null, !dbg !1830
  br i1 %52, label %59, label %53, !dbg !1831, !llvm.loop !1834

53:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 4096, metadata !556, metadata !DIExpression()), !dbg !1817
  %54 = tail call i32 @path_search(ptr noundef nonnull %51, i64 noundef 4096, ptr noundef null, ptr noundef nonnull @.str.1.3, i1 noundef true) #38, !dbg !1837
  %55 = icmp eq i32 %54, 0, !dbg !1839
  br i1 %55, label %75, label %56, !dbg !1840

56:                                               ; preds = %53
  %57 = tail call ptr @__errno_location() #41, !dbg !1841
  %58 = load i32, ptr %57, align 4, !dbg !1841, !tbaa !1107
  call void @llvm.dbg.value(metadata i64 4096, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1817
  br label %70, !dbg !1844

59:                                               ; preds = %10, %20, %30, %40, %50, %8
  %60 = phi ptr [ %9, %8 ], [ %67, %10 ], [ %17, %20 ], [ %27, %30 ], [ %37, %40 ], [ %47, %50 ], !dbg !1832
  %61 = load i32, ptr %60, align 4, !dbg !1832, !tbaa !1107
  %62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #38, !dbg !1832
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %61, ptr noundef %62) #38, !dbg !1832
  br label %123, !dbg !1845

63:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64 128, metadata !556, metadata !DIExpression()), !dbg !1817
  %64 = tail call i32 @path_search(ptr noundef nonnull %6, i64 noundef 128, ptr noundef null, ptr noundef nonnull @.str.1.3, i1 noundef true) #38, !dbg !1837
  %65 = icmp eq i32 %64, 0, !dbg !1839
  br i1 %65, label %75, label %66, !dbg !1840

66:                                               ; preds = %63
  %67 = tail call ptr @__errno_location() #41, !dbg !1841
  %68 = load i32, ptr %67, align 4, !dbg !1841, !tbaa !1107
  %69 = icmp eq i32 %68, 22, !dbg !1843
  call void @llvm.dbg.value(metadata i64 128, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1817
  br i1 %69, label %10, label %70, !dbg !1844

70:                                               ; preds = %56, %46, %36, %26, %16, %66
  %71 = phi i32 [ %68, %66 ], [ %18, %16 ], [ %28, %26 ], [ %38, %36 ], [ %48, %46 ], [ %58, %56 ], !dbg !1841
  %72 = icmp eq i32 %71, 22, !dbg !1846
  %73 = select i1 %72, i32 36, i32 %71, !dbg !1846
  %74 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #38, !dbg !1846
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %73, ptr noundef %74) #38, !dbg !1846
  br label %123, !dbg !1848

75:                                               ; preds = %53, %43, %33, %23, %13, %63
  %76 = phi ptr [ %6, %63 ], [ %11, %13 ], [ %21, %23 ], [ %31, %33 ], [ %41, %43 ], [ %51, %53 ]
  store ptr %76, ptr @temp_stream.tempfile, align 8, !dbg !1849, !tbaa !1037
  %77 = tail call i32 @mkstemp_safer(ptr noundef nonnull %76) #38, !dbg !1850
  call void @llvm.dbg.value(metadata i32 %77, metadata !557, metadata !DIExpression()), !dbg !1817
  %78 = icmp slt i32 %77, 0, !dbg !1851
  br i1 %78, label %79, label %85, !dbg !1853

79:                                               ; preds = %75
  %80 = tail call ptr @__errno_location() #41, !dbg !1854
  %81 = load i32, ptr %80, align 4, !dbg !1854, !tbaa !1107
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.27, i32 noundef 5) #38, !dbg !1854
  %83 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1854, !tbaa !1037
  %84 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %83) #38, !dbg !1854
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %81, ptr noundef %82, ptr noundef %84) #38, !dbg !1854
  br label %97, !dbg !1856

85:                                               ; preds = %75
  %86 = tail call noalias ptr @fdopen(i32 noundef %77, ptr noundef nonnull @.str.3.28) #38, !dbg !1857
  store ptr %86, ptr @temp_stream.tmp_fp, align 8, !dbg !1858, !tbaa !1037
  %87 = icmp eq ptr %86, null, !dbg !1859
  br i1 %87, label %88, label %99, !dbg !1860

88:                                               ; preds = %85
  %89 = tail call ptr @__errno_location() #41, !dbg !1861
  %90 = load i32, ptr %89, align 4, !dbg !1861, !tbaa !1107
  %91 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4.29, i32 noundef 5) #38, !dbg !1861
  %92 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1861, !tbaa !1037
  %93 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %92) #38, !dbg !1861
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %90, ptr noundef %91, ptr noundef %93) #38, !dbg !1861
  %94 = tail call i32 @close(i32 noundef %77) #38, !dbg !1862
  %95 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1863, !tbaa !1037
  %96 = tail call i32 @unlink(ptr noundef %95) #38, !dbg !1864
  br label %97, !dbg !1864

97:                                               ; preds = %88, %79
  call void @llvm.dbg.label(metadata !558), !dbg !1865
  %98 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1866, !tbaa !1037
  tail call void @free(ptr noundef %98) #38, !dbg !1867
  store ptr null, ptr @temp_stream.tempfile, align 8, !dbg !1868, !tbaa !1037
  br label %123, !dbg !1869

99:                                               ; preds = %85
  %100 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1870, !tbaa !1037
  call void @llvm.dbg.value(metadata ptr %100, metadata !1871, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata ptr %86, metadata !1876, metadata !DIExpression()), !dbg !1877
  %101 = tail call i32 @unlink(ptr noundef %100) #38, !dbg !1879
  br label %118

102:                                              ; preds = %2
  %103 = load ptr, ptr @temp_stream.tmp_fp, align 8, !dbg !1880, !tbaa !1037
  tail call void @clearerr_unlocked(ptr noundef %103) #38, !dbg !1880
  %104 = load ptr, ptr @temp_stream.tmp_fp, align 8, !dbg !1882, !tbaa !1037
  %105 = tail call i32 @rpl_fseeko(ptr noundef %104, i64 noundef 0, i32 noundef 0) #38, !dbg !1884
  %106 = icmp slt i32 %105, 0, !dbg !1885
  br i1 %106, label %112, label %107, !dbg !1886

107:                                              ; preds = %102
  %108 = load ptr, ptr @temp_stream.tmp_fp, align 8, !dbg !1887, !tbaa !1037
  %109 = tail call i32 @fileno_unlocked(ptr noundef %108) #38, !dbg !1887
  %110 = tail call i32 @ftruncate(i32 noundef %109, i64 noundef 0) #38, !dbg !1888
  %111 = icmp slt i32 %110, 0, !dbg !1889
  br i1 %111, label %112, label %118, !dbg !1890

112:                                              ; preds = %107, %102
  %113 = tail call ptr @__errno_location() #41, !dbg !1891
  %114 = load i32, ptr %113, align 4, !dbg !1891, !tbaa !1107
  %115 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5.30, i32 noundef 5) #38, !dbg !1891
  %116 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1891, !tbaa !1037
  %117 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %116) #38, !dbg !1891
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %114, ptr noundef %115, ptr noundef %117) #38, !dbg !1891
  br label %123, !dbg !1893

118:                                              ; preds = %99, %107
  %119 = load ptr, ptr @temp_stream.tmp_fp, align 8, !dbg !1894, !tbaa !1037
  store ptr %119, ptr %0, align 8, !dbg !1895, !tbaa !1037
  %120 = icmp eq ptr %1, null, !dbg !1896
  br i1 %120, label %123, label %121, !dbg !1898

121:                                              ; preds = %118
  %122 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1899, !tbaa !1037
  store ptr %122, ptr %1, align 8, !dbg !1900, !tbaa !1037
  br label %123, !dbg !1901

123:                                              ; preds = %97, %59, %70, %118, %121, %112
  %124 = phi i1 [ false, %112 ], [ true, %121 ], [ true, %118 ], [ false, %70 ], [ false, %59 ], [ false, %97 ], !dbg !1813
  ret i1 %124, !dbg !1902
}

; Function Attrs: nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1903 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare !dbg !1904 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1907 noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1910 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare !dbg !1914 i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #18 !dbg !1917 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1919, metadata !DIExpression()), !dbg !1920
  store ptr %0, ptr @file_name, align 8, !dbg !1921, !tbaa !1037
  ret void, !dbg !1922
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #18 !dbg !1923 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1927, metadata !DIExpression()), !dbg !1928
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1929, !tbaa !1930
  ret void, !dbg !1932
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1933 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1938, !tbaa !1037
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1939
  %3 = icmp eq i32 %2, 0, !dbg !1940
  br i1 %3, label %22, label %4, !dbg !1941

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1942, !tbaa !1930, !range !1943, !noundef !1046
  %6 = icmp eq i8 %5, 0, !dbg !1942
  br i1 %6, label %11, label %7, !dbg !1944

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1945
  %9 = load i32, ptr %8, align 4, !dbg !1945, !tbaa !1107
  %10 = icmp eq i32 %9, 32, !dbg !1946
  br i1 %10, label %22, label %11, !dbg !1947

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1.37, i32 noundef 5) #38, !dbg !1948
  call void @llvm.dbg.value(metadata ptr %12, metadata !1935, metadata !DIExpression()), !dbg !1949
  %13 = load ptr, ptr @file_name, align 8, !dbg !1950, !tbaa !1037
  %14 = icmp eq ptr %13, null, !dbg !1950
  %15 = tail call ptr @__errno_location() #41, !dbg !1952
  %16 = load i32, ptr %15, align 4, !dbg !1952, !tbaa !1107
  br i1 %14, label %19, label %17, !dbg !1953

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1954
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.38, ptr noundef %18, ptr noundef %12) #38, !dbg !1954
  br label %20, !dbg !1954

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.39, ptr noundef %12) #38, !dbg !1955
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1956, !tbaa !1107
  tail call void @_exit(i32 noundef %21) #40, !dbg !1957
  unreachable, !dbg !1957

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1958, !tbaa !1037
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1960
  %25 = icmp eq i32 %24, 0, !dbg !1961
  br i1 %25, label %28, label %26, !dbg !1962

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1963, !tbaa !1107
  tail call void @_exit(i32 noundef %27) #40, !dbg !1964
  unreachable, !dbg !1964

28:                                               ; preds = %22
  ret void, !dbg !1965
}

; Function Attrs: noreturn
declare !dbg !1966 void @_exit(i32 noundef) local_unnamed_addr #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #20 !dbg !1967 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1971, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i32 %1, metadata !1972, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata ptr %2, metadata !1973, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1974, metadata !DIExpression()), !dbg !1976
  tail call fastcc void @flush_stdout(), !dbg !1977
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1978, !tbaa !1037
  %7 = icmp eq ptr %6, null, !dbg !1978
  br i1 %7, label %9, label %8, !dbg !1980

8:                                                ; preds = %4
  tail call void %6() #38, !dbg !1981
  br label %13, !dbg !1981

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1982, !tbaa !1037
  %11 = tail call ptr @getprogname() #39, !dbg !1982
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef %11) #38, !dbg !1982
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1984, !tbaa.struct !1985
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1984
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1984
  ret void, !dbg !1986
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1987 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1989, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i32 1, metadata !1991, metadata !DIExpression()), !dbg !1994
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1997
  %2 = icmp slt i32 %1, 0, !dbg !1998
  br i1 %2, label %6, label %3, !dbg !1999

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2000, !tbaa !1037
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !2000
  br label %6, !dbg !2000

6:                                                ; preds = %3, %0
  ret void, !dbg !2001
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2002 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2004, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i32 %1, metadata !2005, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata ptr %2, metadata !2006, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2007, metadata !DIExpression()), !dbg !2009
  %7 = load ptr, ptr @stderr, align 8, !dbg !2010, !tbaa !1037
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !2011, !noalias !2055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2059
  call void @llvm.dbg.value(metadata ptr %7, metadata !2051, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata ptr %2, metadata !2052, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2053, metadata !DIExpression()), !dbg !2061
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #38, !dbg !2011
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !2011, !noalias !2055
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2062, !tbaa !1107
  %10 = add i32 %9, 1, !dbg !2062
  store i32 %10, ptr @error_message_count, align 4, !dbg !2062, !tbaa !1107
  %11 = icmp eq i32 %1, 0, !dbg !2063
  br i1 %11, label %21, label %12, !dbg !2065

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2066, metadata !DIExpression()), !dbg !2074
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !2076
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2070, metadata !DIExpression()), !dbg !2077
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !2078
  call void @llvm.dbg.value(metadata ptr %13, metadata !2069, metadata !DIExpression()), !dbg !2074
  %14 = icmp eq ptr %13, null, !dbg !2079
  br i1 %14, label %15, label %17, !dbg !2081

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.50, ptr noundef nonnull @.str.5.51, i32 noundef 5) #38, !dbg !2082
  call void @llvm.dbg.value(metadata ptr %16, metadata !2069, metadata !DIExpression()), !dbg !2074
  br label %17, !dbg !2083

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2074
  call void @llvm.dbg.value(metadata ptr %18, metadata !2069, metadata !DIExpression()), !dbg !2074
  %19 = load ptr, ptr @stderr, align 8, !dbg !2084, !tbaa !1037
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.52, ptr noundef %18) #38, !dbg !2084
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !2085
  br label %21, !dbg !2086

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2087, !tbaa !1037
  call void @llvm.dbg.value(metadata i32 10, metadata !2088, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata ptr %22, metadata !2094, metadata !DIExpression()), !dbg !2095
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2097
  %24 = load ptr, ptr %23, align 8, !dbg !2097, !tbaa !2098
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2097
  %26 = load ptr, ptr %25, align 8, !dbg !2097, !tbaa !2100
  %27 = icmp ult ptr %24, %26, !dbg !2097
  br i1 %27, label %30, label %28, !dbg !2097, !prof !2101

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #38, !dbg !2097
  br label %32, !dbg !2097

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2097
  store ptr %31, ptr %23, align 8, !dbg !2097, !tbaa !2098
  store i8 10, ptr %24, align 1, !dbg !2097, !tbaa !1116
  br label %32, !dbg !2097

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2102, !tbaa !1037
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #38, !dbg !2102
  %35 = icmp eq i32 %0, 0, !dbg !2103
  br i1 %35, label %37, label %36, !dbg !2105

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #40, !dbg !2106
  unreachable, !dbg !2106

37:                                               ; preds = %32
  ret void, !dbg !2107
}

declare !dbg !2108 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2111 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2114 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2117 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2120 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2124, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i32 %1, metadata !2125, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata ptr %2, metadata !2126, metadata !DIExpression()), !dbg !2128
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #38, !dbg !2129
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2127, metadata !DIExpression()), !dbg !2130
  call void @llvm.va_start(ptr nonnull %4), !dbg !2131
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !2132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2132, !tbaa.struct !1985
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #45, !dbg !2132
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !2132
  call void @llvm.va_end(ptr nonnull %4), !dbg !2133
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #38, !dbg !2134
  ret void, !dbg !2134
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #21

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #20 !dbg !593 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !610, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i32 %1, metadata !611, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata ptr %2, metadata !612, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i32 %3, metadata !613, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata ptr %4, metadata !614, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.declare(metadata ptr %5, metadata !615, metadata !DIExpression()), !dbg !2136
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2137, !tbaa !1107
  %9 = icmp eq i32 %8, 0, !dbg !2137
  br i1 %9, label %24, label %10, !dbg !2139

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2140, !tbaa !1107
  %12 = icmp eq i32 %11, %3, !dbg !2143
  br i1 %12, label %13, label %23, !dbg !2144

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2145, !tbaa !1037
  %15 = icmp eq ptr %14, %2, !dbg !2146
  br i1 %15, label %37, label %16, !dbg !2147

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2148
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2149
  br i1 %19, label %20, label %23, !dbg !2149

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2150
  %22 = icmp eq i32 %21, 0, !dbg !2151
  br i1 %22, label %37, label %23, !dbg !2152

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2153, !tbaa !1037
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2154, !tbaa !1107
  br label %24, !dbg !2155

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2156
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2157, !tbaa !1037
  %26 = icmp eq ptr %25, null, !dbg !2157
  br i1 %26, label %28, label %27, !dbg !2159

27:                                               ; preds = %24
  tail call void %25() #38, !dbg !2160
  br label %32, !dbg !2160

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2161, !tbaa !1037
  %30 = tail call ptr @getprogname() #39, !dbg !2161
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.55, ptr noundef %30) #38, !dbg !2161
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2163, !tbaa !1037
  %34 = icmp eq ptr %2, null, !dbg !2163
  %35 = select i1 %34, ptr @.str.3.56, ptr @.str.2.57, !dbg !2163
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #38, !dbg !2163
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !2164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2164, !tbaa.struct !1985
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2164
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !2164
  br label %37, !dbg !2165

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2165
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2166 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2170, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 %1, metadata !2171, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata ptr %2, metadata !2172, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 %3, metadata !2173, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata ptr %4, metadata !2174, metadata !DIExpression()), !dbg !2176
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !2177
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2175, metadata !DIExpression()), !dbg !2178
  call void @llvm.va_start(ptr nonnull %6), !dbg !2179
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !2180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2180, !tbaa.struct !1985
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #45, !dbg !2180
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !2180
  call void @llvm.va_end(ptr nonnull %6), !dbg !2181
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !2182
  ret void, !dbg !2182
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2183 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2221, metadata !DIExpression()), !dbg !2222
  tail call void @__fpurge(ptr noundef nonnull %0) #38, !dbg !2223
  ret i32 0, !dbg !2224
}

; Function Attrs: nounwind
declare !dbg !2225 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2229 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2267, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %1, metadata !2268, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i32 %2, metadata !2269, metadata !DIExpression()), !dbg !2273
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2274
  %5 = load ptr, ptr %4, align 8, !dbg !2274, !tbaa !2275
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2276
  %7 = load ptr, ptr %6, align 8, !dbg !2276, !tbaa !2277
  %8 = icmp eq ptr %5, %7, !dbg !2278
  br i1 %8, label %9, label %27, !dbg !2279

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2280
  %11 = load ptr, ptr %10, align 8, !dbg !2280, !tbaa !2098
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2281
  %13 = load ptr, ptr %12, align 8, !dbg !2281, !tbaa !2282
  %14 = icmp eq ptr %11, %13, !dbg !2283
  br i1 %14, label %15, label %27, !dbg !2284

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2285
  %17 = load ptr, ptr %16, align 8, !dbg !2285, !tbaa !2286
  %18 = icmp eq ptr %17, null, !dbg !2287
  br i1 %18, label %19, label %27, !dbg !2288

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2289
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !2290
  call void @llvm.dbg.value(metadata i64 %21, metadata !2270, metadata !DIExpression()), !dbg !2291
  %22 = icmp eq i64 %21, -1, !dbg !2292
  br i1 %22, label %29, label %23, !dbg !2294

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2295, !tbaa !2296
  %25 = and i32 %24, -17, !dbg !2295
  store i32 %25, ptr %0, align 8, !dbg !2295, !tbaa !2296
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2297
  store i64 %21, ptr %26, align 8, !dbg !2298, !tbaa !2299
  br label %29, !dbg !2300

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2301
  br label %29, !dbg !2302

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2273
  ret i32 %30, !dbg !2303
}

; Function Attrs: nofree nounwind
declare !dbg !2304 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !2307 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @full_read(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2310 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2315, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata ptr %1, metadata !2316, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i64 %2, metadata !2317, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i64 0, metadata !2318, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata ptr %1, metadata !2319, metadata !DIExpression()), !dbg !2322
  %4 = icmp sgt i64 %2, 0, !dbg !2323
  br i1 %4, label %5, label %20, !dbg !2324

5:                                                ; preds = %3, %15
  %6 = phi i64 [ %18, %15 ], [ %2, %3 ]
  %7 = phi ptr [ %17, %15 ], [ %1, %3 ]
  %8 = phi i64 [ %16, %15 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !2317, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata ptr %7, metadata !2319, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i64 %8, metadata !2318, metadata !DIExpression()), !dbg !2322
  %9 = tail call i64 @safe_read(i32 noundef %0, ptr noundef %7, i64 noundef %6) #38, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %9, metadata !2320, metadata !DIExpression()), !dbg !2326
  %10 = icmp slt i64 %9, 0, !dbg !2327
  br i1 %10, label %20, label %11, !dbg !2329

11:                                               ; preds = %5
  %12 = icmp eq i64 %9, 0, !dbg !2330
  br i1 %12, label %13, label %15, !dbg !2332

13:                                               ; preds = %11
  %14 = tail call ptr @__errno_location() #41, !dbg !2333
  store i32 0, ptr %14, align 4, !dbg !2335, !tbaa !1107
  br label %20, !dbg !2336

15:                                               ; preds = %11
  %16 = add nsw i64 %9, %8, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %16, metadata !2318, metadata !DIExpression()), !dbg !2322
  %17 = getelementptr inbounds i8, ptr %7, i64 %9, !dbg !2338
  call void @llvm.dbg.value(metadata ptr %17, metadata !2319, metadata !DIExpression()), !dbg !2322
  %18 = sub nsw i64 %6, %9, !dbg !2339
  call void @llvm.dbg.value(metadata i64 %18, metadata !2317, metadata !DIExpression()), !dbg !2322
  %19 = icmp sgt i64 %18, 0, !dbg !2323
  br i1 %19, label %5, label %20, !dbg !2324

20:                                               ; preds = %15, %5, %3, %13
  %21 = phi i64 [ %8, %13 ], [ 0, %3 ], [ %16, %15 ], [ %8, %5 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !2318, metadata !DIExpression()), !dbg !2322
  ret i64 %21, !dbg !2340
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #22 !dbg !2341 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2344, !tbaa !1037
  ret ptr %1, !dbg !2345
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #23 !dbg !2346 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2348, metadata !DIExpression()), !dbg !2351
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !2352
  call void @llvm.dbg.value(metadata ptr %2, metadata !2349, metadata !DIExpression()), !dbg !2351
  %3 = icmp eq ptr %2, null, !dbg !2353
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2353
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2353
  call void @llvm.dbg.value(metadata ptr %5, metadata !2350, metadata !DIExpression()), !dbg !2351
  %6 = ptrtoint ptr %5 to i64, !dbg !2354
  %7 = ptrtoint ptr %0 to i64, !dbg !2354
  %8 = sub i64 %6, %7, !dbg !2354
  %9 = icmp sgt i64 %8, 6, !dbg !2356
  br i1 %9, label %10, label %19, !dbg !2357

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2358
  call void @llvm.dbg.value(metadata ptr %11, metadata !2359, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata ptr @.str.72, metadata !2364, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i64 7, metadata !2365, metadata !DIExpression()), !dbg !2366
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.72, i64 7), !dbg !2368
  %13 = icmp eq i32 %12, 0, !dbg !2369
  br i1 %13, label %14, label %19, !dbg !2370

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2348, metadata !DIExpression()), !dbg !2351
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.73, i64 noundef 3) #39, !dbg !2371
  %16 = icmp eq i32 %15, 0, !dbg !2374
  %17 = select i1 %16, i64 3, i64 0, !dbg !2375
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2375
  br label %19, !dbg !2375

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2351
  call void @llvm.dbg.value(metadata ptr %21, metadata !2350, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata ptr %20, metadata !2348, metadata !DIExpression()), !dbg !2351
  store ptr %20, ptr @program_name, align 8, !dbg !2376, !tbaa !1037
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2377, !tbaa !1037
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2378, !tbaa !1037
  ret void, !dbg !2379
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2380 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !652 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !659, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata ptr %1, metadata !660, metadata !DIExpression()), !dbg !2381
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !2382
  call void @llvm.dbg.value(metadata ptr %5, metadata !661, metadata !DIExpression()), !dbg !2381
  %6 = icmp eq ptr %5, %0, !dbg !2383
  br i1 %6, label %7, label %14, !dbg !2385

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !2386
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !2387
  call void @llvm.dbg.declare(metadata ptr %4, metadata !667, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata ptr %4, metadata !2389, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata ptr %4, metadata !2397, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 0, metadata !2402, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i64 8, metadata !2403, metadata !DIExpression()), !dbg !2404
  store i64 0, ptr %4, align 8, !dbg !2406
  call void @llvm.dbg.value(metadata ptr %3, metadata !662, metadata !DIExpression(DW_OP_deref)), !dbg !2381
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !2407
  %9 = icmp eq i64 %8, 2, !dbg !2409
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !662, metadata !DIExpression()), !dbg !2381
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2410
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2381
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !2411
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !2411
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2381
  ret ptr %15, !dbg !2411
}

; Function Attrs: nounwind
declare !dbg !2412 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2418 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2423, metadata !DIExpression()), !dbg !2426
  %2 = tail call ptr @__errno_location() #41, !dbg !2427
  %3 = load i32, ptr %2, align 4, !dbg !2427, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %3, metadata !2424, metadata !DIExpression()), !dbg !2426
  %4 = icmp eq ptr %0, null, !dbg !2428
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2428
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !2429
  call void @llvm.dbg.value(metadata ptr %6, metadata !2425, metadata !DIExpression()), !dbg !2426
  store i32 %3, ptr %2, align 4, !dbg !2430, !tbaa !1107
  ret ptr %6, !dbg !2431
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #25 !dbg !2432 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2438, metadata !DIExpression()), !dbg !2439
  %2 = icmp eq ptr %0, null, !dbg !2440
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2440
  %4 = load i32, ptr %3, align 8, !dbg !2441, !tbaa !2442
  ret i32 %4, !dbg !2444
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2445 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %1, metadata !2450, metadata !DIExpression()), !dbg !2451
  %3 = icmp eq ptr %0, null, !dbg !2452
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2452
  store i32 %1, ptr %4, align 8, !dbg !2453, !tbaa !2442
  ret void, !dbg !2454
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #27 !dbg !2455 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2459, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 %1, metadata !2460, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 %2, metadata !2461, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 %1, metadata !2462, metadata !DIExpression()), !dbg !2467
  %4 = icmp eq ptr %0, null, !dbg !2468
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2468
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2469
  %7 = lshr i8 %1, 5, !dbg !2470
  %8 = zext i8 %7 to i64, !dbg !2470
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2471
  call void @llvm.dbg.value(metadata ptr %9, metadata !2463, metadata !DIExpression()), !dbg !2467
  %10 = and i8 %1, 31, !dbg !2472
  %11 = zext i8 %10 to i32, !dbg !2472
  call void @llvm.dbg.value(metadata i32 %11, metadata !2465, metadata !DIExpression()), !dbg !2467
  %12 = load i32, ptr %9, align 4, !dbg !2473, !tbaa !1107
  %13 = lshr i32 %12, %11, !dbg !2474
  %14 = and i32 %13, 1, !dbg !2475
  call void @llvm.dbg.value(metadata i32 %14, metadata !2466, metadata !DIExpression()), !dbg !2467
  %15 = xor i32 %13, %2, !dbg !2476
  %16 = and i32 %15, 1, !dbg !2476
  %17 = shl nuw i32 %16, %11, !dbg !2477
  %18 = xor i32 %17, %12, !dbg !2478
  store i32 %18, ptr %9, align 4, !dbg !2478, !tbaa !1107
  ret i32 %14, !dbg !2479
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #27 !dbg !2480 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2484, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i32 %1, metadata !2485, metadata !DIExpression()), !dbg !2487
  %3 = icmp eq ptr %0, null, !dbg !2488
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2490
  call void @llvm.dbg.value(metadata ptr %4, metadata !2484, metadata !DIExpression()), !dbg !2487
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2491
  %6 = load i32, ptr %5, align 4, !dbg !2491, !tbaa !2492
  call void @llvm.dbg.value(metadata i32 %6, metadata !2486, metadata !DIExpression()), !dbg !2487
  store i32 %1, ptr %5, align 4, !dbg !2493, !tbaa !2492
  ret i32 %6, !dbg !2494
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2495 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2499, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata ptr %1, metadata !2500, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata ptr %2, metadata !2501, metadata !DIExpression()), !dbg !2502
  %4 = icmp eq ptr %0, null, !dbg !2503
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2505
  call void @llvm.dbg.value(metadata ptr %5, metadata !2499, metadata !DIExpression()), !dbg !2502
  store i32 10, ptr %5, align 8, !dbg !2506, !tbaa !2442
  %6 = icmp ne ptr %1, null, !dbg !2507
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2509
  br i1 %8, label %10, label %9, !dbg !2509

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2510
  unreachable, !dbg !2510

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2511
  store ptr %1, ptr %11, align 8, !dbg !2512, !tbaa !2513
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2514
  store ptr %2, ptr %12, align 8, !dbg !2515, !tbaa !2516
  ret void, !dbg !2517
}

; Function Attrs: noreturn nounwind
declare !dbg !2518 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2519 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2523, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i64 %1, metadata !2524, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata ptr %2, metadata !2525, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i64 %3, metadata !2526, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata ptr %4, metadata !2527, metadata !DIExpression()), !dbg !2531
  %6 = icmp eq ptr %4, null, !dbg !2532
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2532
  call void @llvm.dbg.value(metadata ptr %7, metadata !2528, metadata !DIExpression()), !dbg !2531
  %8 = tail call ptr @__errno_location() #41, !dbg !2533
  %9 = load i32, ptr %8, align 4, !dbg !2533, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %9, metadata !2529, metadata !DIExpression()), !dbg !2531
  %10 = load i32, ptr %7, align 8, !dbg !2534, !tbaa !2442
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2535
  %12 = load i32, ptr %11, align 4, !dbg !2535, !tbaa !2492
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2536
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2537
  %15 = load ptr, ptr %14, align 8, !dbg !2537, !tbaa !2513
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2538
  %17 = load ptr, ptr %16, align 8, !dbg !2538, !tbaa !2516
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2539
  call void @llvm.dbg.value(metadata i64 %18, metadata !2530, metadata !DIExpression()), !dbg !2531
  store i32 %9, ptr %8, align 4, !dbg !2540, !tbaa !1107
  ret i64 %18, !dbg !2541
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2542 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2548, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %1, metadata !2549, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %2, metadata !2550, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %3, metadata !2551, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 %4, metadata !2552, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 %5, metadata !2553, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %6, metadata !2554, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %7, metadata !2555, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %8, metadata !2556, metadata !DIExpression()), !dbg !2610
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !2611
  %17 = icmp eq i64 %16, 1, !dbg !2612
  call void @llvm.dbg.value(metadata i1 %17, metadata !2557, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2610
  call void @llvm.dbg.value(metadata i64 0, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 0, metadata !2559, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr null, metadata !2560, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 0, metadata !2561, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2562, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 %5, metadata !2563, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2564, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 1, metadata !2565, metadata !DIExpression()), !dbg !2610
  %18 = and i32 %5, 2, !dbg !2613
  %19 = icmp ne i32 %18, 0, !dbg !2613
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2613

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2614
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2615
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2616
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2549, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 poison, metadata !2565, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 poison, metadata !2564, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 poison, metadata !2563, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 poison, metadata !2562, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %34, metadata !2561, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %33, metadata !2560, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %32, metadata !2559, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 0, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %31, metadata !2551, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %30, metadata !2556, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %29, metadata !2555, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 %28, metadata !2552, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.label(metadata !2603), !dbg !2617
  call void @llvm.dbg.value(metadata i8 0, metadata !2566, metadata !DIExpression()), !dbg !2610
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
  ], !dbg !2618

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2563, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 5, metadata !2552, metadata !DIExpression()), !dbg !2610
  br label %102, !dbg !2619

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2563, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 5, metadata !2552, metadata !DIExpression()), !dbg !2610
  br i1 %36, label %102, label %42, !dbg !2619

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2620
  br i1 %43, label %102, label %44, !dbg !2624

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2620, !tbaa !1116
  br label %102, !dbg !2620

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.86, metadata !748, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i32 %28, metadata !749, metadata !DIExpression()), !dbg !2625
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.87, ptr noundef nonnull @.str.11.86, i32 noundef 5) #38, !dbg !2629
  call void @llvm.dbg.value(metadata ptr %46, metadata !750, metadata !DIExpression()), !dbg !2625
  %47 = icmp eq ptr %46, @.str.11.86, !dbg !2630
  br i1 %47, label %48, label %57, !dbg !2632

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !2633
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !2634
  call void @llvm.dbg.declare(metadata ptr %13, metadata !752, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata ptr %13, metadata !2636, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata ptr %13, metadata !2644, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i32 0, metadata !2647, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i64 8, metadata !2648, metadata !DIExpression()), !dbg !2649
  store i64 0, ptr %13, align 8, !dbg !2651
  call void @llvm.dbg.value(metadata ptr %12, metadata !751, metadata !DIExpression(DW_OP_deref)), !dbg !2625
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !2652
  %50 = icmp eq i64 %49, 3, !dbg !2654
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !751, metadata !DIExpression()), !dbg !2625
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2655
  %54 = icmp eq i32 %28, 9, !dbg !2655
  %55 = select i1 %54, ptr @.str.10.88, ptr @.str.12.89, !dbg !2655
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2655
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !2656
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !2656
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2625
  call void @llvm.dbg.value(metadata ptr %58, metadata !2555, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr @.str.12.89, metadata !748, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i32 %28, metadata !749, metadata !DIExpression()), !dbg !2657
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.87, ptr noundef nonnull @.str.12.89, i32 noundef 5) #38, !dbg !2659
  call void @llvm.dbg.value(metadata ptr %59, metadata !750, metadata !DIExpression()), !dbg !2657
  %60 = icmp eq ptr %59, @.str.12.89, !dbg !2660
  br i1 %60, label %61, label %70, !dbg !2661

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !2662
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !2663
  call void @llvm.dbg.declare(metadata ptr %11, metadata !752, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %11, metadata !2636, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata ptr %11, metadata !2644, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 0, metadata !2647, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i64 8, metadata !2648, metadata !DIExpression()), !dbg !2667
  store i64 0, ptr %11, align 8, !dbg !2669
  call void @llvm.dbg.value(metadata ptr %10, metadata !751, metadata !DIExpression(DW_OP_deref)), !dbg !2657
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !2670
  %63 = icmp eq i64 %62, 3, !dbg !2671
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !751, metadata !DIExpression()), !dbg !2657
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2672
  %67 = icmp eq i32 %28, 9, !dbg !2672
  %68 = select i1 %67, ptr @.str.10.88, ptr @.str.12.89, !dbg !2672
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2672
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !2673
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !2673
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2556, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %71, metadata !2555, metadata !DIExpression()), !dbg !2610
  br i1 %36, label %88, label %73, !dbg !2674

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2567, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 0, metadata !2558, metadata !DIExpression()), !dbg !2610
  %74 = load i8, ptr %71, align 1, !dbg !2676, !tbaa !1116
  %75 = icmp eq i8 %74, 0, !dbg !2678
  br i1 %75, label %88, label %76, !dbg !2678

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2567, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %79, metadata !2558, metadata !DIExpression()), !dbg !2610
  %80 = icmp ult i64 %79, %39, !dbg !2679
  br i1 %80, label %81, label %83, !dbg !2682

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2679
  store i8 %77, ptr %82, align 1, !dbg !2679, !tbaa !1116
  br label %83, !dbg !2679

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2682
  call void @llvm.dbg.value(metadata i64 %84, metadata !2558, metadata !DIExpression()), !dbg !2610
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2683
  call void @llvm.dbg.value(metadata ptr %85, metadata !2567, metadata !DIExpression()), !dbg !2675
  %86 = load i8, ptr %85, align 1, !dbg !2676, !tbaa !1116
  %87 = icmp eq i8 %86, 0, !dbg !2678
  br i1 %87, label %88, label %76, !dbg !2678, !llvm.loop !2684

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2686
  call void @llvm.dbg.value(metadata i64 %89, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 1, metadata !2562, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %72, metadata !2560, metadata !DIExpression()), !dbg !2610
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #39, !dbg !2687
  call void @llvm.dbg.value(metadata i64 %90, metadata !2561, metadata !DIExpression()), !dbg !2610
  br label %102, !dbg !2688

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2562, metadata !DIExpression()), !dbg !2610
  br label %93, !dbg !2689

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2563, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 poison, metadata !2562, metadata !DIExpression()), !dbg !2610
  br i1 %36, label %102, label %96, !dbg !2690

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2563, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 poison, metadata !2562, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 2, metadata !2552, metadata !DIExpression()), !dbg !2610
  br label %102, !dbg !2691

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2563, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 poison, metadata !2562, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 2, metadata !2552, metadata !DIExpression()), !dbg !2610
  br i1 %36, label %102, label %96, !dbg !2691

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2692
  br i1 %98, label %102, label %99, !dbg !2696

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2692, !tbaa !1116
  br label %102, !dbg !2692

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2563, metadata !DIExpression()), !dbg !2610
  br label %102, !dbg !2697

101:                                              ; preds = %27
  call void @abort() #40, !dbg !2698
  unreachable, !dbg !2698

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2686
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.88, %42 ], [ @.str.10.88, %44 ], [ @.str.10.88, %41 ], [ %33, %27 ], [ @.str.12.89, %96 ], [ @.str.12.89, %99 ], [ @.str.12.89, %95 ], [ @.str.10.88, %40 ], [ @.str.12.89, %93 ], [ @.str.12.89, %92 ], !dbg !2610
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2610
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2563, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 poison, metadata !2562, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %108, metadata !2561, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %107, metadata !2560, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %106, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %105, metadata !2556, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %104, metadata !2555, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 %103, metadata !2552, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 0, metadata !2572, metadata !DIExpression()), !dbg !2699
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
  br label %122, !dbg !2700

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2686
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2614
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2701
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2549, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %129, metadata !2572, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 poison, metadata !2565, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 poison, metadata !2564, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %125, metadata !2559, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %124, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %123, metadata !2551, metadata !DIExpression()), !dbg !2610
  %131 = icmp eq i64 %123, -1, !dbg !2702
  br i1 %131, label %132, label %136, !dbg !2703

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2704
  %134 = load i8, ptr %133, align 1, !dbg !2704, !tbaa !1116
  %135 = icmp eq i8 %134, 0, !dbg !2705
  br i1 %135, label %579, label %138, !dbg !2706

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2707
  br i1 %137, label %579, label %138, !dbg !2706

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2574, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 0, metadata !2577, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 0, metadata !2578, metadata !DIExpression()), !dbg !2708
  br i1 %114, label %139, label %152, !dbg !2709

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2711
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2712
  br i1 %141, label %142, label %144, !dbg !2712

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %143, metadata !2551, metadata !DIExpression()), !dbg !2610
  br label %144, !dbg !2714

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2714
  call void @llvm.dbg.value(metadata i64 %145, metadata !2551, metadata !DIExpression()), !dbg !2610
  %146 = icmp ugt i64 %140, %145, !dbg !2715
  br i1 %146, label %152, label %147, !dbg !2716

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2717
  call void @llvm.dbg.value(metadata ptr %148, metadata !2718, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata ptr %107, metadata !2721, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i64 %108, metadata !2722, metadata !DIExpression()), !dbg !2723
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2725
  %150 = icmp eq i32 %149, 0, !dbg !2726
  %151 = and i1 %150, %110, !dbg !2727
  br i1 %151, label %630, label %152, !dbg !2727

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2574, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i64 %153, metadata !2551, metadata !DIExpression()), !dbg !2610
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2728
  %156 = load i8, ptr %155, align 1, !dbg !2728, !tbaa !1116
  call void @llvm.dbg.value(metadata i8 %156, metadata !2579, metadata !DIExpression()), !dbg !2708
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
  ], !dbg !2729

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2730

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2731

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2577, metadata !DIExpression()), !dbg !2708
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2735
  br i1 %160, label %177, label %161, !dbg !2735

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2737
  br i1 %162, label %163, label %165, !dbg !2741

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2737
  store i8 39, ptr %164, align 1, !dbg !2737, !tbaa !1116
  br label %165, !dbg !2737

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2741
  call void @llvm.dbg.value(metadata i64 %166, metadata !2558, metadata !DIExpression()), !dbg !2610
  %167 = icmp ult i64 %166, %130, !dbg !2742
  br i1 %167, label %168, label %170, !dbg !2745

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2742
  store i8 36, ptr %169, align 1, !dbg !2742, !tbaa !1116
  br label %170, !dbg !2742

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2745
  call void @llvm.dbg.value(metadata i64 %171, metadata !2558, metadata !DIExpression()), !dbg !2610
  %172 = icmp ult i64 %171, %130, !dbg !2746
  br i1 %172, label %173, label %175, !dbg !2749

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2746
  store i8 39, ptr %174, align 1, !dbg !2746, !tbaa !1116
  br label %175, !dbg !2746

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2749
  call void @llvm.dbg.value(metadata i64 %176, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 1, metadata !2566, metadata !DIExpression()), !dbg !2610
  br label %177, !dbg !2750

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2610
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %178, metadata !2558, metadata !DIExpression()), !dbg !2610
  %180 = icmp ult i64 %178, %130, !dbg !2751
  br i1 %180, label %181, label %183, !dbg !2754

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2751
  store i8 92, ptr %182, align 1, !dbg !2751, !tbaa !1116
  br label %183, !dbg !2751

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2754
  call void @llvm.dbg.value(metadata i64 %184, metadata !2558, metadata !DIExpression()), !dbg !2610
  br i1 %111, label %185, label %482, !dbg !2755

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2757
  %187 = icmp ult i64 %186, %153, !dbg !2758
  br i1 %187, label %188, label %439, !dbg !2759

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2760
  %190 = load i8, ptr %189, align 1, !dbg !2760, !tbaa !1116
  %191 = add i8 %190, -48, !dbg !2761
  %192 = icmp ult i8 %191, 10, !dbg !2761
  br i1 %192, label %193, label %439, !dbg !2761

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2762
  br i1 %194, label %195, label %197, !dbg !2766

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2762
  store i8 48, ptr %196, align 1, !dbg !2762, !tbaa !1116
  br label %197, !dbg !2762

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2766
  call void @llvm.dbg.value(metadata i64 %198, metadata !2558, metadata !DIExpression()), !dbg !2610
  %199 = icmp ult i64 %198, %130, !dbg !2767
  br i1 %199, label %200, label %202, !dbg !2770

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2767
  store i8 48, ptr %201, align 1, !dbg !2767, !tbaa !1116
  br label %202, !dbg !2767

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2770
  call void @llvm.dbg.value(metadata i64 %203, metadata !2558, metadata !DIExpression()), !dbg !2610
  br label %439, !dbg !2771

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2772

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2773

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2774

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2776

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2778
  %210 = icmp ult i64 %209, %153, !dbg !2779
  br i1 %210, label %211, label %439, !dbg !2780

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2781
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2782
  %214 = load i8, ptr %213, align 1, !dbg !2782, !tbaa !1116
  %215 = icmp eq i8 %214, 63, !dbg !2783
  br i1 %215, label %216, label %439, !dbg !2784

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2785
  %218 = load i8, ptr %217, align 1, !dbg !2785, !tbaa !1116
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
  ], !dbg !2786

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2787

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2579, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i64 %209, metadata !2572, metadata !DIExpression()), !dbg !2699
  %221 = icmp ult i64 %124, %130, !dbg !2789
  br i1 %221, label %222, label %224, !dbg !2792

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2789
  store i8 63, ptr %223, align 1, !dbg !2789, !tbaa !1116
  br label %224, !dbg !2789

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2792
  call void @llvm.dbg.value(metadata i64 %225, metadata !2558, metadata !DIExpression()), !dbg !2610
  %226 = icmp ult i64 %225, %130, !dbg !2793
  br i1 %226, label %227, label %229, !dbg !2796

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2793
  store i8 34, ptr %228, align 1, !dbg !2793, !tbaa !1116
  br label %229, !dbg !2793

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %230, metadata !2558, metadata !DIExpression()), !dbg !2610
  %231 = icmp ult i64 %230, %130, !dbg !2797
  br i1 %231, label %232, label %234, !dbg !2800

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2797
  store i8 34, ptr %233, align 1, !dbg !2797, !tbaa !1116
  br label %234, !dbg !2797

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2800
  call void @llvm.dbg.value(metadata i64 %235, metadata !2558, metadata !DIExpression()), !dbg !2610
  %236 = icmp ult i64 %235, %130, !dbg !2801
  br i1 %236, label %237, label %239, !dbg !2804

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2801
  store i8 63, ptr %238, align 1, !dbg !2801, !tbaa !1116
  br label %239, !dbg !2801

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2804
  call void @llvm.dbg.value(metadata i64 %240, metadata !2558, metadata !DIExpression()), !dbg !2610
  br label %439, !dbg !2805

241:                                              ; preds = %152
  br label %251, !dbg !2806

242:                                              ; preds = %152
  br label %251, !dbg !2807

243:                                              ; preds = %152
  br label %249, !dbg !2808

244:                                              ; preds = %152
  br label %249, !dbg !2809

245:                                              ; preds = %152
  br label %251, !dbg !2810

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2811

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2812

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2815

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2817
  call void @llvm.dbg.label(metadata !2604), !dbg !2818
  br i1 %119, label %621, label %251, !dbg !2819

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2817
  call void @llvm.dbg.label(metadata !2606), !dbg !2821
  br i1 %109, label %493, label %450, !dbg !2822

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2823

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2824, !tbaa !1116
  %256 = icmp eq i8 %255, 0, !dbg !2826
  br i1 %256, label %257, label %439, !dbg !2827

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2828
  br i1 %258, label %259, label %439, !dbg !2830

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2578, metadata !DIExpression()), !dbg !2708
  br label %260, !dbg !2831

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2578, metadata !DIExpression()), !dbg !2708
  br i1 %116, label %262, label %439, !dbg !2832

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2834

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2564, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 1, metadata !2578, metadata !DIExpression()), !dbg !2708
  br i1 %116, label %264, label %439, !dbg !2835

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2836

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2839
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2841
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2841
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2841
  call void @llvm.dbg.value(metadata i64 %270, metadata !2549, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %269, metadata !2559, metadata !DIExpression()), !dbg !2610
  %271 = icmp ult i64 %124, %270, !dbg !2842
  br i1 %271, label %272, label %274, !dbg !2845

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2842
  store i8 39, ptr %273, align 1, !dbg !2842, !tbaa !1116
  br label %274, !dbg !2842

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2845
  call void @llvm.dbg.value(metadata i64 %275, metadata !2558, metadata !DIExpression()), !dbg !2610
  %276 = icmp ult i64 %275, %270, !dbg !2846
  br i1 %276, label %277, label %279, !dbg !2849

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2846
  store i8 92, ptr %278, align 1, !dbg !2846, !tbaa !1116
  br label %279, !dbg !2846

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %280, metadata !2558, metadata !DIExpression()), !dbg !2610
  %281 = icmp ult i64 %280, %270, !dbg !2850
  br i1 %281, label %282, label %284, !dbg !2853

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2850
  store i8 39, ptr %283, align 1, !dbg !2850, !tbaa !1116
  br label %284, !dbg !2850

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %285, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2566, metadata !DIExpression()), !dbg !2610
  br label %439, !dbg !2854

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2855

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2580, metadata !DIExpression()), !dbg !2856
  %288 = tail call ptr @__ctype_b_loc() #41, !dbg !2857
  %289 = load ptr, ptr %288, align 8, !dbg !2857, !tbaa !1037
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2857
  %292 = load i16, ptr %291, align 2, !dbg !2857, !tbaa !1148
  %293 = and i16 %292, 16384, !dbg !2857
  %294 = icmp ne i16 %293, 0, !dbg !2859
  call void @llvm.dbg.value(metadata i1 %294, metadata !2583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2856
  br label %337, !dbg !2860

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2861
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2584, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata ptr %14, metadata !2636, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata ptr %14, metadata !2644, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i32 0, metadata !2647, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i64 8, metadata !2648, metadata !DIExpression()), !dbg !2865
  store i64 0, ptr %14, align 8, !dbg !2867
  call void @llvm.dbg.value(metadata i64 0, metadata !2580, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i8 1, metadata !2583, metadata !DIExpression()), !dbg !2856
  %296 = icmp eq i64 %153, -1, !dbg !2868
  br i1 %296, label %297, label %299, !dbg !2870

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2871
  call void @llvm.dbg.value(metadata i64 %298, metadata !2551, metadata !DIExpression()), !dbg !2610
  br label %299, !dbg !2872

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2708
  call void @llvm.dbg.value(metadata i64 %300, metadata !2551, metadata !DIExpression()), !dbg !2610
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2873
  %301 = sub i64 %300, %129, !dbg !2874
  call void @llvm.dbg.value(metadata ptr %15, metadata !2587, metadata !DIExpression(DW_OP_deref)), !dbg !2875
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #38, !dbg !2876
  call void @llvm.dbg.value(metadata i64 %302, metadata !2591, metadata !DIExpression()), !dbg !2875
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2877

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2580, metadata !DIExpression()), !dbg !2856
  %304 = icmp ugt i64 %300, %129, !dbg !2878
  br i1 %304, label %306, label %332, !dbg !2880

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2583, metadata !DIExpression()), !dbg !2856
  br label %332, !dbg !2881

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2580, metadata !DIExpression()), !dbg !2856
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2883
  %310 = load i8, ptr %309, align 1, !dbg !2883, !tbaa !1116
  %311 = icmp eq i8 %310, 0, !dbg !2880
  br i1 %311, label %332, label %312, !dbg !2884

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %313, metadata !2580, metadata !DIExpression()), !dbg !2856
  %314 = add i64 %313, %129, !dbg !2886
  %315 = icmp eq i64 %313, %301, !dbg !2878
  br i1 %315, label %332, label %306, !dbg !2880, !llvm.loop !2887

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2888
  %319 = and i1 %318, %110, !dbg !2888
  call void @llvm.dbg.value(metadata i64 1, metadata !2592, metadata !DIExpression()), !dbg !2889
  br i1 %319, label %320, label %328, !dbg !2888

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2592, metadata !DIExpression()), !dbg !2889
  %322 = add i64 %321, %129, !dbg !2890
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2892
  %324 = load i8, ptr %323, align 1, !dbg !2892, !tbaa !1116
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2893

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2894
  call void @llvm.dbg.value(metadata i64 %326, metadata !2592, metadata !DIExpression()), !dbg !2889
  %327 = icmp eq i64 %326, %302, !dbg !2895
  br i1 %327, label %328, label %320, !dbg !2896, !llvm.loop !2897

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2899, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %329, metadata !2587, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i32 %329, metadata !2901, metadata !DIExpression()), !dbg !2909
  %330 = call i32 @iswprint(i32 noundef %329) #38, !dbg !2911
  %331 = icmp ne i32 %330, 0, !dbg !2912
  call void @llvm.dbg.value(metadata i8 poison, metadata !2583, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i64 %302, metadata !2580, metadata !DIExpression()), !dbg !2856
  br label %332, !dbg !2913

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2583, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i64 %333, metadata !2580, metadata !DIExpression()), !dbg !2856
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2914
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2915
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2583, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i64 0, metadata !2580, metadata !DIExpression()), !dbg !2856
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2914
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2915
  call void @llvm.dbg.label(metadata !2609), !dbg !2916
  %336 = select i1 %109, i32 4, i32 2, !dbg !2917
  br label %626, !dbg !2917

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2708
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2919
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2583, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i64 %339, metadata !2580, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i64 %338, metadata !2551, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i1 %340, metadata !2578, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2708
  %341 = icmp ult i64 %339, 2, !dbg !2920
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2921
  br i1 %343, label %439, label %344, !dbg !2921

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2922
  call void @llvm.dbg.value(metadata i64 %345, metadata !2600, metadata !DIExpression()), !dbg !2923
  br label %346, !dbg !2924

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2610
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2699
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2925
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2708
  call void @llvm.dbg.value(metadata i8 %352, metadata !2579, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 %351, metadata !2577, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 poison, metadata !2574, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i64 %349, metadata !2572, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %347, metadata !2558, metadata !DIExpression()), !dbg !2610
  br i1 %342, label %397, label %353, !dbg !2926

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2931

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2577, metadata !DIExpression()), !dbg !2708
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2934
  br i1 %355, label %372, label %356, !dbg !2934

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2936
  br i1 %357, label %358, label %360, !dbg !2940

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2936
  store i8 39, ptr %359, align 1, !dbg !2936, !tbaa !1116
  br label %360, !dbg !2936

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2940
  call void @llvm.dbg.value(metadata i64 %361, metadata !2558, metadata !DIExpression()), !dbg !2610
  %362 = icmp ult i64 %361, %130, !dbg !2941
  br i1 %362, label %363, label %365, !dbg !2944

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2941
  store i8 36, ptr %364, align 1, !dbg !2941, !tbaa !1116
  br label %365, !dbg !2941

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2944
  call void @llvm.dbg.value(metadata i64 %366, metadata !2558, metadata !DIExpression()), !dbg !2610
  %367 = icmp ult i64 %366, %130, !dbg !2945
  br i1 %367, label %368, label %370, !dbg !2948

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2945
  store i8 39, ptr %369, align 1, !dbg !2945, !tbaa !1116
  br label %370, !dbg !2945

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %371, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 1, metadata !2566, metadata !DIExpression()), !dbg !2610
  br label %372, !dbg !2949

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2610
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %373, metadata !2558, metadata !DIExpression()), !dbg !2610
  %375 = icmp ult i64 %373, %130, !dbg !2950
  br i1 %375, label %376, label %378, !dbg !2953

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2950
  store i8 92, ptr %377, align 1, !dbg !2950, !tbaa !1116
  br label %378, !dbg !2950

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2953
  call void @llvm.dbg.value(metadata i64 %379, metadata !2558, metadata !DIExpression()), !dbg !2610
  %380 = icmp ult i64 %379, %130, !dbg !2954
  br i1 %380, label %381, label %385, !dbg !2957

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2954
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2954
  store i8 %383, ptr %384, align 1, !dbg !2954, !tbaa !1116
  br label %385, !dbg !2954

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2957
  call void @llvm.dbg.value(metadata i64 %386, metadata !2558, metadata !DIExpression()), !dbg !2610
  %387 = icmp ult i64 %386, %130, !dbg !2958
  br i1 %387, label %388, label %393, !dbg !2961

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2958
  %391 = or i8 %390, 48, !dbg !2958
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2958
  store i8 %391, ptr %392, align 1, !dbg !2958, !tbaa !1116
  br label %393, !dbg !2958

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2961
  call void @llvm.dbg.value(metadata i64 %394, metadata !2558, metadata !DIExpression()), !dbg !2610
  %395 = and i8 %352, 7, !dbg !2962
  %396 = or i8 %395, 48, !dbg !2963
  call void @llvm.dbg.value(metadata i8 %396, metadata !2579, metadata !DIExpression()), !dbg !2708
  br label %404, !dbg !2964

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2965

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2966
  br i1 %399, label %400, label %402, !dbg !2971

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2966
  store i8 92, ptr %401, align 1, !dbg !2966, !tbaa !1116
  br label %402, !dbg !2966

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %403, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2574, metadata !DIExpression()), !dbg !2708
  br label %404, !dbg !2972

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2610
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2708
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2708
  call void @llvm.dbg.value(metadata i8 %409, metadata !2579, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 %408, metadata !2577, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 poison, metadata !2574, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %405, metadata !2558, metadata !DIExpression()), !dbg !2610
  %410 = add i64 %349, 1, !dbg !2973
  %411 = icmp ugt i64 %345, %410, !dbg !2975
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2976

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2977
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2977
  br i1 %415, label %416, label %427, !dbg !2977

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2980
  br i1 %417, label %418, label %420, !dbg !2984

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2980
  store i8 39, ptr %419, align 1, !dbg !2980, !tbaa !1116
  br label %420, !dbg !2980

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2984
  call void @llvm.dbg.value(metadata i64 %421, metadata !2558, metadata !DIExpression()), !dbg !2610
  %422 = icmp ult i64 %421, %130, !dbg !2985
  br i1 %422, label %423, label %425, !dbg !2988

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2985
  store i8 39, ptr %424, align 1, !dbg !2985, !tbaa !1116
  br label %425, !dbg !2985

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2988
  call void @llvm.dbg.value(metadata i64 %426, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2566, metadata !DIExpression()), !dbg !2610
  br label %427, !dbg !2989

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2990
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %428, metadata !2558, metadata !DIExpression()), !dbg !2610
  %430 = icmp ult i64 %428, %130, !dbg !2991
  br i1 %430, label %431, label %433, !dbg !2994

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2991
  store i8 %409, ptr %432, align 1, !dbg !2991, !tbaa !1116
  br label %433, !dbg !2991

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2994
  call void @llvm.dbg.value(metadata i64 %434, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %410, metadata !2572, metadata !DIExpression()), !dbg !2699
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2995
  %436 = load i8, ptr %435, align 1, !dbg !2995, !tbaa !1116
  call void @llvm.dbg.value(metadata i8 %436, metadata !2579, metadata !DIExpression()), !dbg !2708
  br label %346, !dbg !2996, !llvm.loop !2997

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2579, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i1 %340, metadata !2578, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2708
  call void @llvm.dbg.value(metadata i8 %408, metadata !2577, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 poison, metadata !2574, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i64 %349, metadata !2572, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %405, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %338, metadata !2551, metadata !DIExpression()), !dbg !2610
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !3000
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2610
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2614
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2699
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2708
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2549, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 %448, metadata !2579, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 poison, metadata !2578, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 poison, metadata !2577, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 poison, metadata !2574, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i64 %445, metadata !2572, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 poison, metadata !2564, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %442, metadata !2559, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %441, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %440, metadata !2551, metadata !DIExpression()), !dbg !2610
  br i1 %112, label %461, label %450, !dbg !3001

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
  br i1 %121, label %462, label %482, !dbg !3003

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !3004

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
  %473 = lshr i8 %464, 5, !dbg !3005
  %474 = zext i8 %473 to i64, !dbg !3005
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !3006
  %476 = load i32, ptr %475, align 4, !dbg !3006, !tbaa !1107
  %477 = and i8 %464, 31, !dbg !3007
  %478 = zext i8 %477 to i32, !dbg !3007
  %479 = shl nuw i32 1, %478, !dbg !3008
  %480 = and i32 %476, %479, !dbg !3008
  %481 = icmp eq i32 %480, 0, !dbg !3008
  br i1 %481, label %482, label %493, !dbg !3009

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
  br i1 %154, label %493, label %529, !dbg !3010

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !3000
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2610
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2614
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !3011
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2708
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2549, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 %501, metadata !2579, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 poison, metadata !2578, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i64 %499, metadata !2572, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 poison, metadata !2564, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %496, metadata !2559, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %495, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %494, metadata !2551, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.label(metadata !2607), !dbg !3012
  br i1 %110, label %621, label %503, !dbg !3013

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2577, metadata !DIExpression()), !dbg !2708
  %504 = select i1 %111, i1 true, i1 %498, !dbg !3015
  br i1 %504, label %521, label %505, !dbg !3015

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !3017
  br i1 %506, label %507, label %509, !dbg !3021

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !3017
  store i8 39, ptr %508, align 1, !dbg !3017, !tbaa !1116
  br label %509, !dbg !3017

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !3021
  call void @llvm.dbg.value(metadata i64 %510, metadata !2558, metadata !DIExpression()), !dbg !2610
  %511 = icmp ult i64 %510, %502, !dbg !3022
  br i1 %511, label %512, label %514, !dbg !3025

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !3022
  store i8 36, ptr %513, align 1, !dbg !3022, !tbaa !1116
  br label %514, !dbg !3022

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !3025
  call void @llvm.dbg.value(metadata i64 %515, metadata !2558, metadata !DIExpression()), !dbg !2610
  %516 = icmp ult i64 %515, %502, !dbg !3026
  br i1 %516, label %517, label %519, !dbg !3029

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !3026
  store i8 39, ptr %518, align 1, !dbg !3026, !tbaa !1116
  br label %519, !dbg !3026

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !3029
  call void @llvm.dbg.value(metadata i64 %520, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 1, metadata !2566, metadata !DIExpression()), !dbg !2610
  br label %521, !dbg !3030

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2708
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %522, metadata !2558, metadata !DIExpression()), !dbg !2610
  %524 = icmp ult i64 %522, %502, !dbg !3031
  br i1 %524, label %525, label %527, !dbg !3034

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3031
  store i8 92, ptr %526, align 1, !dbg !3031, !tbaa !1116
  br label %527, !dbg !3031

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !3034
  call void @llvm.dbg.value(metadata i64 %502, metadata !2549, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 %501, metadata !2579, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 poison, metadata !2578, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 poison, metadata !2577, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i64 %499, metadata !2572, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 poison, metadata !2564, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %496, metadata !2559, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %528, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %494, metadata !2551, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.label(metadata !2608), !dbg !3035
  br label %553, !dbg !3036

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !3000
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2610
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2614
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !3011
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3039
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2549, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 %538, metadata !2579, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 poison, metadata !2578, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 poison, metadata !2577, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i64 %535, metadata !2572, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 poison, metadata !2564, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %532, metadata !2559, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %531, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %530, metadata !2551, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.label(metadata !2608), !dbg !3035
  %540 = xor i1 %534, true, !dbg !3036
  %541 = select i1 %540, i1 true, i1 %536, !dbg !3036
  br i1 %541, label %553, label %542, !dbg !3036

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3040
  br i1 %543, label %544, label %546, !dbg !3044

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3040
  store i8 39, ptr %545, align 1, !dbg !3040, !tbaa !1116
  br label %546, !dbg !3040

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3044
  call void @llvm.dbg.value(metadata i64 %547, metadata !2558, metadata !DIExpression()), !dbg !2610
  %548 = icmp ult i64 %547, %539, !dbg !3045
  br i1 %548, label %549, label %551, !dbg !3048

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3045
  store i8 39, ptr %550, align 1, !dbg !3045, !tbaa !1116
  br label %551, !dbg !3045

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %552, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 0, metadata !2566, metadata !DIExpression()), !dbg !2610
  br label %553, !dbg !3049

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2708
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %561, metadata !2558, metadata !DIExpression()), !dbg !2610
  %563 = icmp ult i64 %561, %554, !dbg !3050
  br i1 %563, label %564, label %566, !dbg !3053

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3050
  store i8 %555, ptr %565, align 1, !dbg !3050, !tbaa !1116
  br label %566, !dbg !3050

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3053
  call void @llvm.dbg.value(metadata i64 %567, metadata !2558, metadata !DIExpression()), !dbg !2610
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3054
  call void @llvm.dbg.value(metadata i8 poison, metadata !2565, metadata !DIExpression()), !dbg !2610
  br label %569, !dbg !3055

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !3000
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2610
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2614
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !3011
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2549, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %576, metadata !2572, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 poison, metadata !2565, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 poison, metadata !2564, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %572, metadata !2559, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %571, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %570, metadata !2551, metadata !DIExpression()), !dbg !2610
  %578 = add i64 %576, 1, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %578, metadata !2572, metadata !DIExpression()), !dbg !2699
  br label %122, !dbg !3057, !llvm.loop !3058

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2549, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 poison, metadata !2565, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 poison, metadata !2564, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %125, metadata !2559, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %124, metadata !2558, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %123, metadata !2551, metadata !DIExpression()), !dbg !2610
  %580 = icmp ne i64 %124, 0, !dbg !3060
  %581 = xor i1 %110, true, !dbg !3062
  %582 = or i1 %580, %581, !dbg !3062
  %583 = or i1 %582, %111, !dbg !3062
  br i1 %583, label %584, label %621, !dbg !3062

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3063
  %586 = xor i1 %126, true, !dbg !3063
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3063
  br i1 %587, label %595, label %588, !dbg !3063

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3065

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3067
  br label %636, !dbg !3069

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3070
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3072
  br i1 %594, label %27, label %595, !dbg !3072

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3073
  %598 = or i1 %597, %596, !dbg !3075
  br i1 %598, label %614, label %599, !dbg !3075

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2560, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %124, metadata !2558, metadata !DIExpression()), !dbg !2610
  %600 = load i8, ptr %107, align 1, !dbg !3076, !tbaa !1116
  %601 = icmp eq i8 %600, 0, !dbg !3079
  br i1 %601, label %614, label %602, !dbg !3079

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2560, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i64 %605, metadata !2558, metadata !DIExpression()), !dbg !2610
  %606 = icmp ult i64 %605, %130, !dbg !3080
  br i1 %606, label %607, label %609, !dbg !3083

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3080
  store i8 %603, ptr %608, align 1, !dbg !3080, !tbaa !1116
  br label %609, !dbg !3080

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3083
  call void @llvm.dbg.value(metadata i64 %610, metadata !2558, metadata !DIExpression()), !dbg !2610
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3084
  call void @llvm.dbg.value(metadata ptr %611, metadata !2560, metadata !DIExpression()), !dbg !2610
  %612 = load i8, ptr %611, align 1, !dbg !3076, !tbaa !1116
  %613 = icmp eq i8 %612, 0, !dbg !3079
  br i1 %613, label %614, label %602, !dbg !3079, !llvm.loop !3085

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2686
  call void @llvm.dbg.value(metadata i64 %615, metadata !2558, metadata !DIExpression()), !dbg !2610
  %616 = icmp ult i64 %615, %130, !dbg !3087
  br i1 %616, label %617, label %636, !dbg !3089

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3090
  store i8 0, ptr %618, align 1, !dbg !3091, !tbaa !1116
  br label %636, !dbg !3090

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2609), !dbg !2916
  %620 = icmp eq i32 %103, 2, !dbg !3092
  br i1 %620, label %626, label %630, !dbg !2917

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2609), !dbg !2916
  %624 = icmp eq i32 %103, 2, !dbg !3092
  %625 = select i1 %109, i32 4, i32 2, !dbg !2917
  br i1 %624, label %626, label %630, !dbg !2917

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2917

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2552, metadata !DIExpression()), !dbg !2610
  %634 = and i32 %5, -3, !dbg !3093
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3094
  br label %636, !dbg !3095

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3096
}

; Function Attrs: nounwind
declare !dbg !3097 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3099 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3101 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3105, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %1, metadata !3106, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr %2, metadata !3107, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr %0, metadata !3109, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %1, metadata !3114, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr null, metadata !3115, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %2, metadata !3116, metadata !DIExpression()), !dbg !3122
  %4 = icmp eq ptr %2, null, !dbg !3124
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3124
  call void @llvm.dbg.value(metadata ptr %5, metadata !3117, metadata !DIExpression()), !dbg !3122
  %6 = tail call ptr @__errno_location() #41, !dbg !3125
  %7 = load i32, ptr %6, align 4, !dbg !3125, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %7, metadata !3118, metadata !DIExpression()), !dbg !3122
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3126
  %9 = load i32, ptr %8, align 4, !dbg !3126, !tbaa !2492
  %10 = or i32 %9, 1, !dbg !3127
  call void @llvm.dbg.value(metadata i32 %10, metadata !3119, metadata !DIExpression()), !dbg !3122
  %11 = load i32, ptr %5, align 8, !dbg !3128, !tbaa !2442
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3129
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3130
  %14 = load ptr, ptr %13, align 8, !dbg !3130, !tbaa !2513
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3131
  %16 = load ptr, ptr %15, align 8, !dbg !3131, !tbaa !2516
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3132
  %18 = add i64 %17, 1, !dbg !3133
  call void @llvm.dbg.value(metadata i64 %18, metadata !3120, metadata !DIExpression()), !dbg !3122
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !3134
  call void @llvm.dbg.value(metadata ptr %19, metadata !3121, metadata !DIExpression()), !dbg !3122
  %20 = load i32, ptr %5, align 8, !dbg !3135, !tbaa !2442
  %21 = load ptr, ptr %13, align 8, !dbg !3136, !tbaa !2513
  %22 = load ptr, ptr %15, align 8, !dbg !3137, !tbaa !2516
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3138
  store i32 %7, ptr %6, align 4, !dbg !3139, !tbaa !1107
  ret ptr %19, !dbg !3140
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3110 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3109, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 %1, metadata !3114, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata ptr %2, metadata !3115, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata ptr %3, metadata !3116, metadata !DIExpression()), !dbg !3141
  %5 = icmp eq ptr %3, null, !dbg !3142
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3142
  call void @llvm.dbg.value(metadata ptr %6, metadata !3117, metadata !DIExpression()), !dbg !3141
  %7 = tail call ptr @__errno_location() #41, !dbg !3143
  %8 = load i32, ptr %7, align 4, !dbg !3143, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %8, metadata !3118, metadata !DIExpression()), !dbg !3141
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3144
  %10 = load i32, ptr %9, align 4, !dbg !3144, !tbaa !2492
  %11 = icmp eq ptr %2, null, !dbg !3145
  %12 = zext i1 %11 to i32, !dbg !3145
  %13 = or i32 %10, %12, !dbg !3146
  call void @llvm.dbg.value(metadata i32 %13, metadata !3119, metadata !DIExpression()), !dbg !3141
  %14 = load i32, ptr %6, align 8, !dbg !3147, !tbaa !2442
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3148
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3149
  %17 = load ptr, ptr %16, align 8, !dbg !3149, !tbaa !2513
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3150
  %19 = load ptr, ptr %18, align 8, !dbg !3150, !tbaa !2516
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3151
  %21 = add i64 %20, 1, !dbg !3152
  call void @llvm.dbg.value(metadata i64 %21, metadata !3120, metadata !DIExpression()), !dbg !3141
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !3153
  call void @llvm.dbg.value(metadata ptr %22, metadata !3121, metadata !DIExpression()), !dbg !3141
  %23 = load i32, ptr %6, align 8, !dbg !3154, !tbaa !2442
  %24 = load ptr, ptr %16, align 8, !dbg !3155, !tbaa !2513
  %25 = load ptr, ptr %18, align 8, !dbg !3156, !tbaa !2516
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3157
  store i32 %8, ptr %7, align 4, !dbg !3158, !tbaa !1107
  br i1 %11, label %28, label %27, !dbg !3159

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3160, !tbaa !1268
  br label %28, !dbg !3162

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3163
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3164 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3169, !tbaa !1037
  call void @llvm.dbg.value(metadata ptr %1, metadata !3166, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i32 1, metadata !3167, metadata !DIExpression()), !dbg !3171
  %2 = load i32, ptr @nslots, align 4, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 1, metadata !3167, metadata !DIExpression()), !dbg !3171
  %3 = icmp sgt i32 %2, 1, !dbg !3172
  br i1 %3, label %4, label %6, !dbg !3174

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3172
  br label %10, !dbg !3174

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3175
  %8 = load ptr, ptr %7, align 8, !dbg !3175, !tbaa !3177
  %9 = icmp eq ptr %8, @slot0, !dbg !3179
  br i1 %9, label %17, label %16, !dbg !3180

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3167, metadata !DIExpression()), !dbg !3171
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3181
  %13 = load ptr, ptr %12, align 8, !dbg !3181, !tbaa !3177
  tail call void @free(ptr noundef %13) #38, !dbg !3182
  %14 = add nuw nsw i64 %11, 1, !dbg !3183
  call void @llvm.dbg.value(metadata i64 %14, metadata !3167, metadata !DIExpression()), !dbg !3171
  %15 = icmp eq i64 %14, %5, !dbg !3172
  br i1 %15, label %6, label %10, !dbg !3174, !llvm.loop !3184

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !3186
  store i64 256, ptr @slotvec0, align 8, !dbg !3188, !tbaa !3189
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3190, !tbaa !3177
  br label %17, !dbg !3191

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3192
  br i1 %18, label %20, label %19, !dbg !3194

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !3195
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3197, !tbaa !1037
  br label %20, !dbg !3198

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3199, !tbaa !1107
  ret void, !dbg !3200
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3201 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3203, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata ptr %1, metadata !3204, metadata !DIExpression()), !dbg !3205
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3206
  ret ptr %3, !dbg !3207
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3208 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3212, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata ptr %1, metadata !3213, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 %2, metadata !3214, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata ptr %3, metadata !3215, metadata !DIExpression()), !dbg !3228
  %6 = tail call ptr @__errno_location() #41, !dbg !3229
  %7 = load i32, ptr %6, align 4, !dbg !3229, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %7, metadata !3216, metadata !DIExpression()), !dbg !3228
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3230, !tbaa !1037
  call void @llvm.dbg.value(metadata ptr %8, metadata !3217, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3218, metadata !DIExpression()), !dbg !3228
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3231
  br i1 %9, label %10, label %11, !dbg !3231

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !3233
  unreachable, !dbg !3233

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3234, !tbaa !1107
  %13 = icmp sgt i32 %12, %0, !dbg !3235
  br i1 %13, label %32, label %14, !dbg !3236

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3237
  call void @llvm.dbg.value(metadata i1 %15, metadata !3219, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3238
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !3239
  %16 = sext i32 %12 to i64, !dbg !3240
  call void @llvm.dbg.value(metadata i64 %16, metadata !3222, metadata !DIExpression()), !dbg !3238
  store i64 %16, ptr %5, align 8, !dbg !3241, !tbaa !1268
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3242
  %18 = add nuw nsw i32 %0, 1, !dbg !3243
  %19 = sub i32 %18, %12, !dbg !3244
  %20 = sext i32 %19 to i64, !dbg !3245
  call void @llvm.dbg.value(metadata ptr %5, metadata !3222, metadata !DIExpression(DW_OP_deref)), !dbg !3238
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !3246
  call void @llvm.dbg.value(metadata ptr %21, metadata !3217, metadata !DIExpression()), !dbg !3228
  store ptr %21, ptr @slotvec, align 8, !dbg !3247, !tbaa !1037
  br i1 %15, label %22, label %23, !dbg !3248

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3249, !tbaa.struct !3251
  br label %23, !dbg !3252

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3253, !tbaa !1107
  %25 = sext i32 %24 to i64, !dbg !3254
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3254
  %27 = load i64, ptr %5, align 8, !dbg !3255, !tbaa !1268
  call void @llvm.dbg.value(metadata i64 %27, metadata !3222, metadata !DIExpression()), !dbg !3238
  %28 = sub nsw i64 %27, %25, !dbg !3256
  %29 = shl i64 %28, 4, !dbg !3257
  call void @llvm.dbg.value(metadata ptr %26, metadata !2644, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 0, metadata !2647, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %29, metadata !2648, metadata !DIExpression()), !dbg !3258
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !3260
  %30 = load i64, ptr %5, align 8, !dbg !3261, !tbaa !1268
  call void @llvm.dbg.value(metadata i64 %30, metadata !3222, metadata !DIExpression()), !dbg !3238
  %31 = trunc i64 %30 to i32, !dbg !3261
  store i32 %31, ptr @nslots, align 4, !dbg !3262, !tbaa !1107
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !3263
  br label %32, !dbg !3264

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3228
  call void @llvm.dbg.value(metadata ptr %33, metadata !3217, metadata !DIExpression()), !dbg !3228
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3265
  %36 = load i64, ptr %35, align 8, !dbg !3266, !tbaa !3189
  call void @llvm.dbg.value(metadata i64 %36, metadata !3223, metadata !DIExpression()), !dbg !3267
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3268
  %38 = load ptr, ptr %37, align 8, !dbg !3268, !tbaa !3177
  call void @llvm.dbg.value(metadata ptr %38, metadata !3225, metadata !DIExpression()), !dbg !3267
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3269
  %40 = load i32, ptr %39, align 4, !dbg !3269, !tbaa !2492
  %41 = or i32 %40, 1, !dbg !3270
  call void @llvm.dbg.value(metadata i32 %41, metadata !3226, metadata !DIExpression()), !dbg !3267
  %42 = load i32, ptr %3, align 8, !dbg !3271, !tbaa !2442
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3272
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3273
  %45 = load ptr, ptr %44, align 8, !dbg !3273, !tbaa !2513
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3274
  %47 = load ptr, ptr %46, align 8, !dbg !3274, !tbaa !2516
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3275
  call void @llvm.dbg.value(metadata i64 %48, metadata !3227, metadata !DIExpression()), !dbg !3267
  %49 = icmp ugt i64 %36, %48, !dbg !3276
  br i1 %49, label %60, label %50, !dbg !3278

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3279
  call void @llvm.dbg.value(metadata i64 %51, metadata !3223, metadata !DIExpression()), !dbg !3267
  store i64 %51, ptr %35, align 8, !dbg !3281, !tbaa !3189
  %52 = icmp eq ptr %38, @slot0, !dbg !3282
  br i1 %52, label %54, label %53, !dbg !3284

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !3285
  br label %54, !dbg !3285

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !3286
  call void @llvm.dbg.value(metadata ptr %55, metadata !3225, metadata !DIExpression()), !dbg !3267
  store ptr %55, ptr %37, align 8, !dbg !3287, !tbaa !3177
  %56 = load i32, ptr %3, align 8, !dbg !3288, !tbaa !2442
  %57 = load ptr, ptr %44, align 8, !dbg !3289, !tbaa !2513
  %58 = load ptr, ptr %46, align 8, !dbg !3290, !tbaa !2516
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3291
  br label %60, !dbg !3292

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3267
  call void @llvm.dbg.value(metadata ptr %61, metadata !3225, metadata !DIExpression()), !dbg !3267
  store i32 %7, ptr %6, align 4, !dbg !3293, !tbaa !1107
  ret ptr %61, !dbg !3294
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3295 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3299, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata ptr %1, metadata !3300, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %2, metadata !3301, metadata !DIExpression()), !dbg !3302
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3303
  ret ptr %4, !dbg !3304
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3305 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3307, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i32 0, metadata !3203, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata ptr %0, metadata !3204, metadata !DIExpression()), !dbg !3309
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3311
  ret ptr %2, !dbg !3312
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3313 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3317, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i64 %1, metadata !3318, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i32 0, metadata !3299, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata ptr %0, metadata !3300, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64 %1, metadata !3301, metadata !DIExpression()), !dbg !3320
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3322
  ret ptr %3, !dbg !3323
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3324 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3328, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i32 %1, metadata !3329, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata ptr %2, metadata !3330, metadata !DIExpression()), !dbg !3332
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3333
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3331, metadata !DIExpression()), !dbg !3334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3335), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %1, metadata !3339, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3344, metadata !DIExpression()), !dbg !3347
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3347, !alias.scope !3335
  %5 = icmp eq i32 %1, 10, !dbg !3348
  br i1 %5, label %6, label %7, !dbg !3350

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3351, !noalias !3335
  unreachable, !dbg !3351

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3352, !tbaa !2442, !alias.scope !3335
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3353
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3354
  ret ptr %8, !dbg !3355
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3356 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3360, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i32 %1, metadata !3361, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata ptr %2, metadata !3362, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i64 %3, metadata !3363, metadata !DIExpression()), !dbg !3365
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3366
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3364, metadata !DIExpression()), !dbg !3367
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3368), !dbg !3371
  call void @llvm.dbg.value(metadata i32 %1, metadata !3339, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3344, metadata !DIExpression()), !dbg !3374
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3374, !alias.scope !3368
  %6 = icmp eq i32 %1, 10, !dbg !3375
  br i1 %6, label %7, label %8, !dbg !3376

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3377, !noalias !3368
  unreachable, !dbg !3377

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3378, !tbaa !2442, !alias.scope !3368
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3379
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3380
  ret ptr %9, !dbg !3381
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3382 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3386, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata ptr %1, metadata !3387, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i32 0, metadata !3328, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i32 %0, metadata !3329, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata ptr %1, metadata !3330, metadata !DIExpression()), !dbg !3389
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3391
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3331, metadata !DIExpression()), !dbg !3392
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3393), !dbg !3396
  call void @llvm.dbg.value(metadata i32 %0, metadata !3339, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3344, metadata !DIExpression()), !dbg !3399
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3399, !alias.scope !3393
  %4 = icmp eq i32 %0, 10, !dbg !3400
  br i1 %4, label %5, label %6, !dbg !3401

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !3402, !noalias !3393
  unreachable, !dbg !3402

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3403, !tbaa !2442, !alias.scope !3393
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3404
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3405
  ret ptr %7, !dbg !3406
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3407 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3411, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata ptr %1, metadata !3412, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %2, metadata !3413, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 0, metadata !3360, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i32 %0, metadata !3361, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata ptr %1, metadata !3362, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 %2, metadata !3363, metadata !DIExpression()), !dbg !3415
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3417
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3364, metadata !DIExpression()), !dbg !3418
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3419), !dbg !3422
  call void @llvm.dbg.value(metadata i32 %0, metadata !3339, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3344, metadata !DIExpression()), !dbg !3425
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3425, !alias.scope !3419
  %5 = icmp eq i32 %0, 10, !dbg !3426
  br i1 %5, label %6, label %7, !dbg !3427

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3428, !noalias !3419
  unreachable, !dbg !3428

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3429, !tbaa !2442, !alias.scope !3419
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3430
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3431
  ret ptr %8, !dbg !3432
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3433 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3437, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %1, metadata !3438, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i8 %2, metadata !3439, metadata !DIExpression()), !dbg !3441
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3442
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3440, metadata !DIExpression()), !dbg !3443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3444, !tbaa.struct !3445
  call void @llvm.dbg.value(metadata ptr %4, metadata !2459, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i8 %2, metadata !2460, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i32 1, metadata !2461, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i8 %2, metadata !2462, metadata !DIExpression()), !dbg !3446
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3448
  %6 = lshr i8 %2, 5, !dbg !3449
  %7 = zext i8 %6 to i64, !dbg !3449
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3450
  call void @llvm.dbg.value(metadata ptr %8, metadata !2463, metadata !DIExpression()), !dbg !3446
  %9 = and i8 %2, 31, !dbg !3451
  %10 = zext i8 %9 to i32, !dbg !3451
  call void @llvm.dbg.value(metadata i32 %10, metadata !2465, metadata !DIExpression()), !dbg !3446
  %11 = load i32, ptr %8, align 4, !dbg !3452, !tbaa !1107
  %12 = lshr i32 %11, %10, !dbg !3453
  call void @llvm.dbg.value(metadata i32 %12, metadata !2466, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3446
  %13 = and i32 %12, 1, !dbg !3454
  %14 = xor i32 %13, 1, !dbg !3454
  %15 = shl nuw i32 %14, %10, !dbg !3455
  %16 = xor i32 %15, %11, !dbg !3456
  store i32 %16, ptr %8, align 4, !dbg !3456, !tbaa !1107
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3457
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3458
  ret ptr %17, !dbg !3459
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3460 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3464, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8 %1, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata ptr %0, metadata !3437, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 -1, metadata !3438, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i8 %1, metadata !3439, metadata !DIExpression()), !dbg !3467
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3469
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3440, metadata !DIExpression()), !dbg !3470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3471, !tbaa.struct !3445
  call void @llvm.dbg.value(metadata ptr %3, metadata !2459, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i8 %1, metadata !2460, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i32 1, metadata !2461, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i8 %1, metadata !2462, metadata !DIExpression()), !dbg !3472
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3474
  %5 = lshr i8 %1, 5, !dbg !3475
  %6 = zext i8 %5 to i64, !dbg !3475
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3476
  call void @llvm.dbg.value(metadata ptr %7, metadata !2463, metadata !DIExpression()), !dbg !3472
  %8 = and i8 %1, 31, !dbg !3477
  %9 = zext i8 %8 to i32, !dbg !3477
  call void @llvm.dbg.value(metadata i32 %9, metadata !2465, metadata !DIExpression()), !dbg !3472
  %10 = load i32, ptr %7, align 4, !dbg !3478, !tbaa !1107
  %11 = lshr i32 %10, %9, !dbg !3479
  call void @llvm.dbg.value(metadata i32 %11, metadata !2466, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3472
  %12 = and i32 %11, 1, !dbg !3480
  %13 = xor i32 %12, 1, !dbg !3480
  %14 = shl nuw i32 %13, %9, !dbg !3481
  %15 = xor i32 %14, %10, !dbg !3482
  store i32 %15, ptr %7, align 4, !dbg !3482, !tbaa !1107
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3483
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3484
  ret ptr %16, !dbg !3485
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3486 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3488, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata ptr %0, metadata !3464, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i8 58, metadata !3465, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata ptr %0, metadata !3437, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 -1, metadata !3438, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 58, metadata !3439, metadata !DIExpression()), !dbg !3492
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !3494
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3440, metadata !DIExpression()), !dbg !3495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3496, !tbaa.struct !3445
  call void @llvm.dbg.value(metadata ptr %2, metadata !2459, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i8 58, metadata !2460, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32 1, metadata !2461, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i8 58, metadata !2462, metadata !DIExpression()), !dbg !3497
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3499
  call void @llvm.dbg.value(metadata ptr %3, metadata !2463, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32 26, metadata !2465, metadata !DIExpression()), !dbg !3497
  %4 = load i32, ptr %3, align 4, !dbg !3500, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %4, metadata !2466, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3497
  %5 = or i32 %4, 67108864, !dbg !3501
  store i32 %5, ptr %3, align 4, !dbg !3501, !tbaa !1107
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3502
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !3503
  ret ptr %6, !dbg !3504
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3505 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3507, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i64 %1, metadata !3508, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata ptr %0, metadata !3437, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i64 %1, metadata !3438, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i8 58, metadata !3439, metadata !DIExpression()), !dbg !3510
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3512
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3440, metadata !DIExpression()), !dbg !3513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3514, !tbaa.struct !3445
  call void @llvm.dbg.value(metadata ptr %3, metadata !2459, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i8 58, metadata !2460, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i32 1, metadata !2461, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i8 58, metadata !2462, metadata !DIExpression()), !dbg !3515
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3517
  call void @llvm.dbg.value(metadata ptr %4, metadata !2463, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i32 26, metadata !2465, metadata !DIExpression()), !dbg !3515
  %5 = load i32, ptr %4, align 4, !dbg !3518, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %5, metadata !2466, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3515
  %6 = or i32 %5, 67108864, !dbg !3519
  store i32 %6, ptr %4, align 4, !dbg !3519, !tbaa !1107
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3520
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3521
  ret ptr %7, !dbg !3522
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3523 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3344, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3529
  call void @llvm.dbg.value(metadata i32 %0, metadata !3525, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i32 %1, metadata !3526, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata ptr %2, metadata !3527, metadata !DIExpression()), !dbg !3531
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3532
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3528, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i32 %1, metadata !3339, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i32 0, metadata !3344, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3534
  %5 = icmp eq i32 %1, 10, !dbg !3535
  br i1 %5, label %6, label %7, !dbg !3536

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3537, !noalias !3538
  unreachable, !dbg !3537

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3344, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3534
  store i32 %1, ptr %4, align 8, !dbg !3541, !tbaa.struct !3445
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3541
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3541
  call void @llvm.dbg.value(metadata ptr %4, metadata !2459, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8 58, metadata !2460, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i32 1, metadata !2461, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8 58, metadata !2462, metadata !DIExpression()), !dbg !3542
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3544
  call void @llvm.dbg.value(metadata ptr %9, metadata !2463, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i32 26, metadata !2465, metadata !DIExpression()), !dbg !3542
  %10 = load i32, ptr %9, align 4, !dbg !3545, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %10, metadata !2466, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3542
  %11 = or i32 %10, 67108864, !dbg !3546
  store i32 %11, ptr %9, align 4, !dbg !3546, !tbaa !1107
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3547
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3548
  ret ptr %12, !dbg !3549
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3550 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3554, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata ptr %1, metadata !3555, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata ptr %2, metadata !3556, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata ptr %3, metadata !3557, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i32 %0, metadata !3559, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata ptr %1, metadata !3564, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata ptr %2, metadata !3565, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata ptr %3, metadata !3566, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i64 -1, metadata !3567, metadata !DIExpression()), !dbg !3569
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3571
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3568, metadata !DIExpression()), !dbg !3572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3573, !tbaa.struct !3445
  call void @llvm.dbg.value(metadata ptr %5, metadata !2499, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata ptr %1, metadata !2500, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata ptr %2, metadata !2501, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata ptr %5, metadata !2499, metadata !DIExpression()), !dbg !3574
  store i32 10, ptr %5, align 8, !dbg !3576, !tbaa !2442
  %6 = icmp ne ptr %1, null, !dbg !3577
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3578
  br i1 %8, label %10, label %9, !dbg !3578

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3579
  unreachable, !dbg !3579

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3580
  store ptr %1, ptr %11, align 8, !dbg !3581, !tbaa !2513
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3582
  store ptr %2, ptr %12, align 8, !dbg !3583, !tbaa !2516
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3584
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3585
  ret ptr %13, !dbg !3586
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3560 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3559, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr %1, metadata !3564, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr %2, metadata !3565, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr %3, metadata !3566, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i64 %4, metadata !3567, metadata !DIExpression()), !dbg !3587
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !3588
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3568, metadata !DIExpression()), !dbg !3589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3590, !tbaa.struct !3445
  call void @llvm.dbg.value(metadata ptr %6, metadata !2499, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata ptr %1, metadata !2500, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata ptr %2, metadata !2501, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata ptr %6, metadata !2499, metadata !DIExpression()), !dbg !3591
  store i32 10, ptr %6, align 8, !dbg !3593, !tbaa !2442
  %7 = icmp ne ptr %1, null, !dbg !3594
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3595
  br i1 %9, label %11, label %10, !dbg !3595

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !3596
  unreachable, !dbg !3596

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3597
  store ptr %1, ptr %12, align 8, !dbg !3598, !tbaa !2513
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3599
  store ptr %2, ptr %13, align 8, !dbg !3600, !tbaa !2516
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3601
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !3602
  ret ptr %14, !dbg !3603
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3604 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3608, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata ptr %1, metadata !3609, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata ptr %2, metadata !3610, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i32 0, metadata !3554, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata ptr %0, metadata !3555, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata ptr %1, metadata !3556, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata ptr %2, metadata !3557, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i32 0, metadata !3559, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata ptr %0, metadata !3564, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata ptr %1, metadata !3565, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata ptr %2, metadata !3566, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i64 -1, metadata !3567, metadata !DIExpression()), !dbg !3614
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3616
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3568, metadata !DIExpression()), !dbg !3617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3618, !tbaa.struct !3445
  call void @llvm.dbg.value(metadata ptr %4, metadata !2499, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata ptr %0, metadata !2500, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata ptr %1, metadata !2501, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata ptr %4, metadata !2499, metadata !DIExpression()), !dbg !3619
  store i32 10, ptr %4, align 8, !dbg !3621, !tbaa !2442
  %5 = icmp ne ptr %0, null, !dbg !3622
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3623
  br i1 %7, label %9, label %8, !dbg !3623

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3624
  unreachable, !dbg !3624

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3625
  store ptr %0, ptr %10, align 8, !dbg !3626, !tbaa !2513
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3627
  store ptr %1, ptr %11, align 8, !dbg !3628, !tbaa !2516
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3629
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3630
  ret ptr %12, !dbg !3631
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3632 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3636, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata ptr %1, metadata !3637, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata ptr %2, metadata !3638, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 %3, metadata !3639, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i32 0, metadata !3559, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata ptr %0, metadata !3564, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata ptr %1, metadata !3565, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata ptr %2, metadata !3566, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i64 %3, metadata !3567, metadata !DIExpression()), !dbg !3641
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3643
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3568, metadata !DIExpression()), !dbg !3644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3645, !tbaa.struct !3445
  call void @llvm.dbg.value(metadata ptr %5, metadata !2499, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata ptr %0, metadata !2500, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata ptr %1, metadata !2501, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata ptr %5, metadata !2499, metadata !DIExpression()), !dbg !3646
  store i32 10, ptr %5, align 8, !dbg !3648, !tbaa !2442
  %6 = icmp ne ptr %0, null, !dbg !3649
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3650
  br i1 %8, label %10, label %9, !dbg !3650

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3651
  unreachable, !dbg !3651

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3652
  store ptr %0, ptr %11, align 8, !dbg !3653, !tbaa !2513
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3654
  store ptr %1, ptr %12, align 8, !dbg !3655, !tbaa !2516
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3656
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3657
  ret ptr %13, !dbg !3658
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3659 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3663, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata ptr %1, metadata !3664, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i64 %2, metadata !3665, metadata !DIExpression()), !dbg !3666
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3667
  ret ptr %4, !dbg !3668
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3669 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3673, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i64 %1, metadata !3674, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i32 0, metadata !3663, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata ptr %0, metadata !3664, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i64 %1, metadata !3665, metadata !DIExpression()), !dbg !3676
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3678
  ret ptr %3, !dbg !3679
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3680 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3684, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata ptr %1, metadata !3685, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32 %0, metadata !3663, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata ptr %1, metadata !3664, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 -1, metadata !3665, metadata !DIExpression()), !dbg !3687
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3689
  ret ptr %3, !dbg !3690
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3691 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3695, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 0, metadata !3684, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata ptr %0, metadata !3685, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i32 0, metadata !3663, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata ptr %0, metadata !3664, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i64 -1, metadata !3665, metadata !DIExpression()), !dbg !3699
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3701
  ret ptr %2, !dbg !3702
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @safe_read(i32 noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3703 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3708, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata ptr %1, metadata !3709, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %2, metadata !3710, metadata !DIExpression()), !dbg !3717
  br label %4, !dbg !3718

4:                                                ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3719

6:                                                ; preds = %9, %4
  call void @llvm.dbg.value(metadata i64 %5, metadata !3710, metadata !DIExpression()), !dbg !3717
  %7 = tail call i64 @read(i32 noundef %0, ptr noundef %1, i64 noundef %5) #38, !dbg !3720
  call void @llvm.dbg.value(metadata i64 %7, metadata !3711, metadata !DIExpression()), !dbg !3721
  %8 = icmp sgt i64 %7, -1, !dbg !3722
  br i1 %8, label %17, label %9, !dbg !3719

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #41, !dbg !3724
  %11 = load i32, ptr %10, align 4, !dbg !3724, !tbaa !1107
  %12 = icmp eq i32 %11, 4, !dbg !3724
  br i1 %12, label %6, label %13, !dbg !3726, !llvm.loop !3727

13:                                               ; preds = %9
  %14 = icmp ne i32 %11, 22, !dbg !3730
  %15 = icmp slt i64 %5, 2146435073
  %16 = or i1 %15, %14, !dbg !3732
  call void @llvm.dbg.value(metadata i64 %5, metadata !3710, metadata !DIExpression()), !dbg !3717
  br i1 %16, label %17, label %4

17:                                               ; preds = %13, %6
  ret i64 %7, !dbg !3733
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mkstemp_safer(ptr noundef %0) local_unnamed_addr #10 !dbg !3734 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3738, metadata !DIExpression()), !dbg !3739
  %2 = tail call i32 @mkstemp(ptr noundef %0) #38, !dbg !3740
  %3 = tail call i32 @fd_safer(i32 noundef %2) #38, !dbg !3741
  ret i32 %3, !dbg !3742
}

declare !dbg !3743 i32 @mkstemp(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @mkostemp_safer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !3744 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3748, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i32 %1, metadata !3749, metadata !DIExpression()), !dbg !3750
  %3 = tail call i32 @mkostemp(ptr noundef %0, i32 noundef %1) #38, !dbg !3751
  %4 = tail call i32 @fd_safer_flag(i32 noundef %3, i32 noundef %1) #38, !dbg !3752
  ret i32 %4, !dbg !3753
}

declare !dbg !3754 i32 @mkostemp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @path_search(ptr noundef %0, i64 noundef %1, ptr noundef readonly %2, ptr noundef %3, i1 noundef %4) local_unnamed_addr #10 !dbg !3755 {
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3759, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i64 %1, metadata !3760, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata ptr %2, metadata !3761, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata ptr %3, metadata !3762, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i1 %4, metadata !3763, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3770
  %9 = icmp eq ptr %3, null, !dbg !3771
  br i1 %9, label %16, label %10, !dbg !3773

10:                                               ; preds = %5
  %11 = load i8, ptr %3, align 1, !dbg !3774, !tbaa !1116
  %12 = icmp eq i8 %11, 0, !dbg !3774
  br i1 %12, label %16, label %13, !dbg !3775

13:                                               ; preds = %10
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #39, !dbg !3776
  call void @llvm.dbg.value(metadata i64 %14, metadata !3764, metadata !DIExpression()), !dbg !3770
  %15 = tail call i64 @llvm.umin.i64(i64 %14, i64 5), !dbg !3778
  call void @llvm.dbg.value(metadata i64 %15, metadata !3764, metadata !DIExpression()), !dbg !3770
  br label %16

16:                                               ; preds = %5, %10, %13
  %17 = phi i64 [ %15, %13 ], [ 4, %10 ], [ 4, %5 ], !dbg !3779
  %18 = phi ptr [ %3, %13 ], [ @.str.102, %10 ], [ @.str.102, %5 ]
  call void @llvm.dbg.value(metadata ptr %18, metadata !3762, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i64 %17, metadata !3764, metadata !DIExpression()), !dbg !3770
  br i1 %4, label %19, label %40, !dbg !3780

19:                                               ; preds = %16
  %20 = tail call ptr @secure_getenv(ptr noundef nonnull @.str.1.103) #38, !dbg !3781
  call void @llvm.dbg.value(metadata ptr %20, metadata !3765, metadata !DIExpression()), !dbg !3782
  %21 = icmp eq ptr %20, null, !dbg !3783
  br i1 %21, label %30, label %22, !dbg !3785

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %20, metadata !3786, metadata !DIExpression()), !dbg !3825
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #38, !dbg !3827
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3789, metadata !DIExpression()), !dbg !3828
  %23 = call i32 @stat(ptr noundef nonnull %20, ptr noundef nonnull %8) #38, !dbg !3829
  %24 = icmp eq i32 %23, 0, !dbg !3830
  %25 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 2, !dbg !3831
  %26 = load i32, ptr %25, align 8, !dbg !3831
  %27 = and i32 %26, 61440, !dbg !3831
  %28 = icmp eq i32 %27, 16384, !dbg !3831
  %29 = select i1 %24, i1 %28, i1 false, !dbg !3831
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #38, !dbg !3832
  br i1 %29, label %52, label %30, !dbg !3833

30:                                               ; preds = %22, %19
  %31 = icmp eq ptr %2, null, !dbg !3834
  br i1 %31, label %42, label %32, !dbg !3836

32:                                               ; preds = %30
  call void @llvm.dbg.value(metadata ptr %2, metadata !3786, metadata !DIExpression()), !dbg !3837
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #38, !dbg !3839
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3789, metadata !DIExpression()), !dbg !3840
  %33 = call i32 @stat(ptr noundef nonnull %2, ptr noundef nonnull %7) #38, !dbg !3841
  %34 = icmp eq i32 %33, 0, !dbg !3842
  %35 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 2, !dbg !3843
  %36 = load i32, ptr %35, align 8, !dbg !3843
  %37 = and i32 %36, 61440, !dbg !3843
  %38 = icmp eq i32 %37, 16384, !dbg !3843
  %39 = select i1 %34, i1 %38, i1 false, !dbg !3843
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #38, !dbg !3844
  br i1 %39, label %52, label %42, !dbg !3845

40:                                               ; preds = %16
  call void @llvm.dbg.value(metadata ptr %2, metadata !3761, metadata !DIExpression()), !dbg !3770
  %41 = icmp eq ptr %2, null, !dbg !3846
  br i1 %41, label %42, label %52, !dbg !3848

42:                                               ; preds = %32, %30, %40
  call void @llvm.dbg.value(metadata ptr @.str.2.104, metadata !3786, metadata !DIExpression()), !dbg !3849
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #38, !dbg !3853
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3789, metadata !DIExpression()), !dbg !3854
  %43 = call i32 @stat(ptr noundef nonnull @.str.2.104, ptr noundef nonnull %6) #38, !dbg !3855
  %44 = icmp eq i32 %43, 0, !dbg !3856
  %45 = getelementptr inbounds %struct.stat, ptr %6, i64 0, i32 2, !dbg !3857
  %46 = load i32, ptr %45, align 8, !dbg !3857
  %47 = and i32 %46, 61440, !dbg !3857
  %48 = icmp eq i32 %47, 16384, !dbg !3857
  %49 = select i1 %44, i1 %48, i1 false, !dbg !3857
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #38, !dbg !3858
  br i1 %49, label %52, label %50, !dbg !3859

50:                                               ; preds = %42
  %51 = tail call ptr @__errno_location() #41, !dbg !3860
  store i32 2, ptr %51, align 4, !dbg !3860, !tbaa !1107
  br label %77, !dbg !3863

52:                                               ; preds = %22, %32, %42, %40
  %53 = phi ptr [ %2, %40 ], [ @.str.2.104, %42 ], [ %20, %22 ], [ %2, %32 ], !dbg !3770
  call void @llvm.dbg.value(metadata ptr %53, metadata !3761, metadata !DIExpression()), !dbg !3770
  %54 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %53) #39, !dbg !3864
  call void @llvm.dbg.value(metadata i64 %54, metadata !3768, metadata !DIExpression()), !dbg !3770
  %55 = icmp eq i64 %54, 0, !dbg !3865
  br i1 %55, label %61, label %56, !dbg !3866

56:                                               ; preds = %52
  %57 = add i64 %54, -1, !dbg !3867
  %58 = getelementptr inbounds i8, ptr %53, i64 %57, !dbg !3867
  %59 = load i8, ptr %58, align 1, !dbg !3867, !tbaa !1116
  %60 = icmp ne i8 %59, 47, !dbg !3867
  br label %61

61:                                               ; preds = %56, %52
  %62 = phi i1 [ false, %52 ], [ %60, %56 ], !dbg !3770
  call void @llvm.dbg.value(metadata i1 %62, metadata !3769, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3770
  %63 = zext i1 %62 to i64, !dbg !3868
  %64 = add nuw nsw i64 %17, 7, !dbg !3870
  %65 = add i64 %64, %54, !dbg !3871
  %66 = add i64 %65, %63, !dbg !3872
  %67 = icmp ugt i64 %66, %1, !dbg !3873
  br i1 %67, label %68, label %70, !dbg !3874

68:                                               ; preds = %61
  %69 = tail call ptr @__errno_location() #41, !dbg !3875
  store i32 22, ptr %69, align 4, !dbg !3875, !tbaa !1107
  br label %77, !dbg !3877

70:                                               ; preds = %61
  call void @llvm.dbg.value(metadata ptr %0, metadata !3878, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata ptr %53, metadata !3881, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i64 %54, metadata !3882, metadata !DIExpression()), !dbg !3883
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %53, i64 noundef %54, i1 noundef false) #38, !dbg !3885
  %71 = getelementptr inbounds i8, ptr %0, i64 %54, !dbg !3886
  %72 = xor i1 %62, true, !dbg !3886
  %73 = zext i1 %72 to i64
  %74 = getelementptr inbounds [12 x i8], ptr @.str.3.105, i64 0, i64 %73, !dbg !3886
  %75 = trunc i64 %17 to i32, !dbg !3886
  %76 = tail call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %71, i32 noundef 1, i64 noundef -1, ptr noundef nonnull %74, i32 noundef %75, ptr noundef nonnull %18) #38, !dbg !3886
  br label %77, !dbg !3887

77:                                               ; preds = %68, %70, %50
  %78 = phi i32 [ -1, %50 ], [ -1, %68 ], [ 0, %70 ], !dbg !3770
  ret i32 %78, !dbg !3888
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nounwind
declare !dbg !3889 ptr @secure_getenv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !3890 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare !dbg !3896 i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !3899 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3901, metadata !DIExpression()), !dbg !3906
  %2 = icmp ult i32 %0, 3, !dbg !3907
  br i1 %2, label %3, label %8, !dbg !3907

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 noundef %0) #38, !dbg !3908
  call void @llvm.dbg.value(metadata i32 %4, metadata !3902, metadata !DIExpression()), !dbg !3909
  %5 = tail call ptr @__errno_location() #41, !dbg !3910
  %6 = load i32, ptr %5, align 4, !dbg !3910, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %6, metadata !3905, metadata !DIExpression()), !dbg !3909
  %7 = tail call i32 @close(i32 noundef %0) #38, !dbg !3911
  store i32 %6, ptr %5, align 4, !dbg !3912, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %4, metadata !3901, metadata !DIExpression()), !dbg !3906
  br label %8, !dbg !3913

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3901, metadata !DIExpression()), !dbg !3906
  ret i32 %9, !dbg !3914
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3915 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3953, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata ptr %1, metadata !3954, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata ptr %2, metadata !3955, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata ptr %3, metadata !3956, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata ptr %4, metadata !3957, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i64 %5, metadata !3958, metadata !DIExpression()), !dbg !3959
  %7 = icmp eq ptr %1, null, !dbg !3960
  br i1 %7, label %10, label %8, !dbg !3962

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.108, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !3963
  br label %12, !dbg !3963

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.109, ptr noundef %2, ptr noundef %3) #38, !dbg !3964
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.3.111, i32 noundef 5) #38, !dbg !3965
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !3965
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.112, ptr noundef %0), !dbg !3966
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.5.113, i32 noundef 5) #38, !dbg !3967
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.114) #38, !dbg !3967
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.112, ptr noundef %0), !dbg !3968
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
  ], !dbg !3969

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.7.115, i32 noundef 5) #38, !dbg !3970
  %21 = load ptr, ptr %4, align 8, !dbg !3970, !tbaa !1037
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !3970
  br label %147, !dbg !3972

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.8.116, i32 noundef 5) #38, !dbg !3973
  %25 = load ptr, ptr %4, align 8, !dbg !3973, !tbaa !1037
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3973
  %27 = load ptr, ptr %26, align 8, !dbg !3973, !tbaa !1037
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !3973
  br label %147, !dbg !3974

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.9.117, i32 noundef 5) #38, !dbg !3975
  %31 = load ptr, ptr %4, align 8, !dbg !3975, !tbaa !1037
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3975
  %33 = load ptr, ptr %32, align 8, !dbg !3975, !tbaa !1037
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3975
  %35 = load ptr, ptr %34, align 8, !dbg !3975, !tbaa !1037
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !3975
  br label %147, !dbg !3976

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.10.118, i32 noundef 5) #38, !dbg !3977
  %39 = load ptr, ptr %4, align 8, !dbg !3977, !tbaa !1037
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3977
  %41 = load ptr, ptr %40, align 8, !dbg !3977, !tbaa !1037
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3977
  %43 = load ptr, ptr %42, align 8, !dbg !3977, !tbaa !1037
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3977
  %45 = load ptr, ptr %44, align 8, !dbg !3977, !tbaa !1037
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !3977
  br label %147, !dbg !3978

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.11.119, i32 noundef 5) #38, !dbg !3979
  %49 = load ptr, ptr %4, align 8, !dbg !3979, !tbaa !1037
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3979
  %51 = load ptr, ptr %50, align 8, !dbg !3979, !tbaa !1037
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3979
  %53 = load ptr, ptr %52, align 8, !dbg !3979, !tbaa !1037
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3979
  %55 = load ptr, ptr %54, align 8, !dbg !3979, !tbaa !1037
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3979
  %57 = load ptr, ptr %56, align 8, !dbg !3979, !tbaa !1037
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !3979
  br label %147, !dbg !3980

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.12.120, i32 noundef 5) #38, !dbg !3981
  %61 = load ptr, ptr %4, align 8, !dbg !3981, !tbaa !1037
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3981
  %63 = load ptr, ptr %62, align 8, !dbg !3981, !tbaa !1037
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3981
  %65 = load ptr, ptr %64, align 8, !dbg !3981, !tbaa !1037
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3981
  %67 = load ptr, ptr %66, align 8, !dbg !3981, !tbaa !1037
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3981
  %69 = load ptr, ptr %68, align 8, !dbg !3981, !tbaa !1037
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3981
  %71 = load ptr, ptr %70, align 8, !dbg !3981, !tbaa !1037
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !3981
  br label %147, !dbg !3982

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.13.121, i32 noundef 5) #38, !dbg !3983
  %75 = load ptr, ptr %4, align 8, !dbg !3983, !tbaa !1037
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3983
  %77 = load ptr, ptr %76, align 8, !dbg !3983, !tbaa !1037
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3983
  %79 = load ptr, ptr %78, align 8, !dbg !3983, !tbaa !1037
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3983
  %81 = load ptr, ptr %80, align 8, !dbg !3983, !tbaa !1037
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3983
  %83 = load ptr, ptr %82, align 8, !dbg !3983, !tbaa !1037
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3983
  %85 = load ptr, ptr %84, align 8, !dbg !3983, !tbaa !1037
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3983
  %87 = load ptr, ptr %86, align 8, !dbg !3983, !tbaa !1037
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !3983
  br label %147, !dbg !3984

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.14.122, i32 noundef 5) #38, !dbg !3985
  %91 = load ptr, ptr %4, align 8, !dbg !3985, !tbaa !1037
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3985
  %93 = load ptr, ptr %92, align 8, !dbg !3985, !tbaa !1037
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3985
  %95 = load ptr, ptr %94, align 8, !dbg !3985, !tbaa !1037
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3985
  %97 = load ptr, ptr %96, align 8, !dbg !3985, !tbaa !1037
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3985
  %99 = load ptr, ptr %98, align 8, !dbg !3985, !tbaa !1037
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3985
  %101 = load ptr, ptr %100, align 8, !dbg !3985, !tbaa !1037
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3985
  %103 = load ptr, ptr %102, align 8, !dbg !3985, !tbaa !1037
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3985
  %105 = load ptr, ptr %104, align 8, !dbg !3985, !tbaa !1037
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !3985
  br label %147, !dbg !3986

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.15.123, i32 noundef 5) #38, !dbg !3987
  %109 = load ptr, ptr %4, align 8, !dbg !3987, !tbaa !1037
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3987
  %111 = load ptr, ptr %110, align 8, !dbg !3987, !tbaa !1037
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3987
  %113 = load ptr, ptr %112, align 8, !dbg !3987, !tbaa !1037
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3987
  %115 = load ptr, ptr %114, align 8, !dbg !3987, !tbaa !1037
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3987
  %117 = load ptr, ptr %116, align 8, !dbg !3987, !tbaa !1037
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3987
  %119 = load ptr, ptr %118, align 8, !dbg !3987, !tbaa !1037
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3987
  %121 = load ptr, ptr %120, align 8, !dbg !3987, !tbaa !1037
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3987
  %123 = load ptr, ptr %122, align 8, !dbg !3987, !tbaa !1037
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3987
  %125 = load ptr, ptr %124, align 8, !dbg !3987, !tbaa !1037
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !3987
  br label %147, !dbg !3988

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.16.124, i32 noundef 5) #38, !dbg !3989
  %129 = load ptr, ptr %4, align 8, !dbg !3989, !tbaa !1037
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3989
  %131 = load ptr, ptr %130, align 8, !dbg !3989, !tbaa !1037
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3989
  %133 = load ptr, ptr %132, align 8, !dbg !3989, !tbaa !1037
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3989
  %135 = load ptr, ptr %134, align 8, !dbg !3989, !tbaa !1037
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3989
  %137 = load ptr, ptr %136, align 8, !dbg !3989, !tbaa !1037
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3989
  %139 = load ptr, ptr %138, align 8, !dbg !3989, !tbaa !1037
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3989
  %141 = load ptr, ptr %140, align 8, !dbg !3989, !tbaa !1037
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3989
  %143 = load ptr, ptr %142, align 8, !dbg !3989, !tbaa !1037
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3989
  %145 = load ptr, ptr %144, align 8, !dbg !3989, !tbaa !1037
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !3989
  br label %147, !dbg !3990

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3991
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3992 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3996, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata ptr %1, metadata !3997, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata ptr %2, metadata !3998, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata ptr %3, metadata !3999, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata ptr %4, metadata !4000, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata i64 0, metadata !4001, metadata !DIExpression()), !dbg !4002
  br label %6, !dbg !4003

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4005
  call void @llvm.dbg.value(metadata i64 %7, metadata !4001, metadata !DIExpression()), !dbg !4002
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4006
  %9 = load ptr, ptr %8, align 8, !dbg !4006, !tbaa !1037
  %10 = icmp eq ptr %9, null, !dbg !4008
  %11 = add i64 %7, 1, !dbg !4009
  call void @llvm.dbg.value(metadata i64 %11, metadata !4001, metadata !DIExpression()), !dbg !4002
  br i1 %10, label %12, label %6, !dbg !4008, !llvm.loop !4010

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4012
  ret void, !dbg !4013
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4014 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4029, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata ptr %1, metadata !4030, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata ptr %2, metadata !4031, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata ptr %3, metadata !4032, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4033, metadata !DIExpression()), !dbg !4038
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !4039
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4035, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i64 0, metadata !4034, metadata !DIExpression()), !dbg !4037
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4034, metadata !DIExpression()), !dbg !4037
  %10 = icmp sgt i32 %9, -1, !dbg !4041
  br i1 %10, label %18, label %11, !dbg !4041

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4041
  store i32 %12, ptr %7, align 8, !dbg !4041
  %13 = icmp ult i32 %9, -7, !dbg !4041
  br i1 %13, label %14, label %18, !dbg !4041

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4041
  %16 = sext i32 %9 to i64, !dbg !4041
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4041
  br label %22, !dbg !4041

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4041
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4041
  store ptr %21, ptr %4, align 8, !dbg !4041
  br label %22, !dbg !4041

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4041
  %25 = load ptr, ptr %24, align 8, !dbg !4041
  store ptr %25, ptr %6, align 8, !dbg !4044, !tbaa !1037
  %26 = icmp eq ptr %25, null, !dbg !4045
  br i1 %26, label %197, label %27, !dbg !4046

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !4034, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i64 1, metadata !4034, metadata !DIExpression()), !dbg !4037
  %28 = icmp sgt i32 %23, -1, !dbg !4041
  br i1 %28, label %36, label %29, !dbg !4041

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4041
  store i32 %30, ptr %7, align 8, !dbg !4041
  %31 = icmp ult i32 %23, -7, !dbg !4041
  br i1 %31, label %32, label %36, !dbg !4041

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4041
  %34 = sext i32 %23 to i64, !dbg !4041
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4041
  br label %40, !dbg !4041

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4041
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4041
  store ptr %39, ptr %4, align 8, !dbg !4041
  br label %40, !dbg !4041

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4041
  %43 = load ptr, ptr %42, align 8, !dbg !4041
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4047
  store ptr %43, ptr %44, align 8, !dbg !4044, !tbaa !1037
  %45 = icmp eq ptr %43, null, !dbg !4045
  br i1 %45, label %197, label %46, !dbg !4046

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4034, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i64 2, metadata !4034, metadata !DIExpression()), !dbg !4037
  %47 = icmp sgt i32 %41, -1, !dbg !4041
  br i1 %47, label %55, label %48, !dbg !4041

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4041
  store i32 %49, ptr %7, align 8, !dbg !4041
  %50 = icmp ult i32 %41, -7, !dbg !4041
  br i1 %50, label %51, label %55, !dbg !4041

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4041
  %53 = sext i32 %41 to i64, !dbg !4041
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4041
  br label %59, !dbg !4041

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4041
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4041
  store ptr %58, ptr %4, align 8, !dbg !4041
  br label %59, !dbg !4041

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4041
  %62 = load ptr, ptr %61, align 8, !dbg !4041
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4047
  store ptr %62, ptr %63, align 8, !dbg !4044, !tbaa !1037
  %64 = icmp eq ptr %62, null, !dbg !4045
  br i1 %64, label %197, label %65, !dbg !4046

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !4034, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i64 3, metadata !4034, metadata !DIExpression()), !dbg !4037
  %66 = icmp sgt i32 %60, -1, !dbg !4041
  br i1 %66, label %74, label %67, !dbg !4041

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4041
  store i32 %68, ptr %7, align 8, !dbg !4041
  %69 = icmp ult i32 %60, -7, !dbg !4041
  br i1 %69, label %70, label %74, !dbg !4041

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4041
  %72 = sext i32 %60 to i64, !dbg !4041
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4041
  br label %78, !dbg !4041

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4041
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4041
  store ptr %77, ptr %4, align 8, !dbg !4041
  br label %78, !dbg !4041

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4041
  %81 = load ptr, ptr %80, align 8, !dbg !4041
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4047
  store ptr %81, ptr %82, align 8, !dbg !4044, !tbaa !1037
  %83 = icmp eq ptr %81, null, !dbg !4045
  br i1 %83, label %197, label %84, !dbg !4046

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !4034, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i64 4, metadata !4034, metadata !DIExpression()), !dbg !4037
  %85 = icmp sgt i32 %79, -1, !dbg !4041
  br i1 %85, label %93, label %86, !dbg !4041

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4041
  store i32 %87, ptr %7, align 8, !dbg !4041
  %88 = icmp ult i32 %79, -7, !dbg !4041
  br i1 %88, label %89, label %93, !dbg !4041

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4041
  %91 = sext i32 %79 to i64, !dbg !4041
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4041
  br label %97, !dbg !4041

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4041
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4041
  store ptr %96, ptr %4, align 8, !dbg !4041
  br label %97, !dbg !4041

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4041
  %100 = load ptr, ptr %99, align 8, !dbg !4041
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4047
  store ptr %100, ptr %101, align 8, !dbg !4044, !tbaa !1037
  %102 = icmp eq ptr %100, null, !dbg !4045
  br i1 %102, label %197, label %103, !dbg !4046

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !4034, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i64 5, metadata !4034, metadata !DIExpression()), !dbg !4037
  %104 = icmp sgt i32 %98, -1, !dbg !4041
  br i1 %104, label %112, label %105, !dbg !4041

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4041
  store i32 %106, ptr %7, align 8, !dbg !4041
  %107 = icmp ult i32 %98, -7, !dbg !4041
  br i1 %107, label %108, label %112, !dbg !4041

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4041
  %110 = sext i32 %98 to i64, !dbg !4041
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4041
  br label %116, !dbg !4041

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4041
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4041
  store ptr %115, ptr %4, align 8, !dbg !4041
  br label %116, !dbg !4041

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4041
  %119 = load ptr, ptr %118, align 8, !dbg !4041
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4047
  store ptr %119, ptr %120, align 8, !dbg !4044, !tbaa !1037
  %121 = icmp eq ptr %119, null, !dbg !4045
  br i1 %121, label %197, label %122, !dbg !4046

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !4034, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i64 6, metadata !4034, metadata !DIExpression()), !dbg !4037
  %123 = icmp sgt i32 %117, -1, !dbg !4041
  br i1 %123, label %131, label %124, !dbg !4041

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4041
  store i32 %125, ptr %7, align 8, !dbg !4041
  %126 = icmp ult i32 %117, -7, !dbg !4041
  br i1 %126, label %127, label %131, !dbg !4041

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4041
  %129 = sext i32 %117 to i64, !dbg !4041
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4041
  br label %135, !dbg !4041

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4041
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4041
  store ptr %134, ptr %4, align 8, !dbg !4041
  br label %135, !dbg !4041

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4041
  %138 = load ptr, ptr %137, align 8, !dbg !4041
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4047
  store ptr %138, ptr %139, align 8, !dbg !4044, !tbaa !1037
  %140 = icmp eq ptr %138, null, !dbg !4045
  br i1 %140, label %197, label %141, !dbg !4046

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !4034, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i64 7, metadata !4034, metadata !DIExpression()), !dbg !4037
  %142 = icmp sgt i32 %136, -1, !dbg !4041
  br i1 %142, label %150, label %143, !dbg !4041

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4041
  store i32 %144, ptr %7, align 8, !dbg !4041
  %145 = icmp ult i32 %136, -7, !dbg !4041
  br i1 %145, label %146, label %150, !dbg !4041

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4041
  %148 = sext i32 %136 to i64, !dbg !4041
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4041
  br label %154, !dbg !4041

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4041
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4041
  store ptr %153, ptr %4, align 8, !dbg !4041
  br label %154, !dbg !4041

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4041
  %157 = load ptr, ptr %156, align 8, !dbg !4041
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4047
  store ptr %157, ptr %158, align 8, !dbg !4044, !tbaa !1037
  %159 = icmp eq ptr %157, null, !dbg !4045
  br i1 %159, label %197, label %160, !dbg !4046

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !4034, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i64 8, metadata !4034, metadata !DIExpression()), !dbg !4037
  %161 = icmp sgt i32 %155, -1, !dbg !4041
  br i1 %161, label %169, label %162, !dbg !4041

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4041
  store i32 %163, ptr %7, align 8, !dbg !4041
  %164 = icmp ult i32 %155, -7, !dbg !4041
  br i1 %164, label %165, label %169, !dbg !4041

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4041
  %167 = sext i32 %155 to i64, !dbg !4041
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4041
  br label %173, !dbg !4041

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4041
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4041
  store ptr %172, ptr %4, align 8, !dbg !4041
  br label %173, !dbg !4041

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4041
  %176 = load ptr, ptr %175, align 8, !dbg !4041
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4047
  store ptr %176, ptr %177, align 8, !dbg !4044, !tbaa !1037
  %178 = icmp eq ptr %176, null, !dbg !4045
  br i1 %178, label %197, label %179, !dbg !4046

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !4034, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i64 9, metadata !4034, metadata !DIExpression()), !dbg !4037
  %180 = icmp sgt i32 %174, -1, !dbg !4041
  br i1 %180, label %188, label %181, !dbg !4041

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4041
  store i32 %182, ptr %7, align 8, !dbg !4041
  %183 = icmp ult i32 %174, -7, !dbg !4041
  br i1 %183, label %184, label %188, !dbg !4041

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4041
  %186 = sext i32 %174 to i64, !dbg !4041
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4041
  br label %191, !dbg !4041

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4041
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4041
  store ptr %190, ptr %4, align 8, !dbg !4041
  br label %191, !dbg !4041

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4041
  %193 = load ptr, ptr %192, align 8, !dbg !4041
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4047
  store ptr %193, ptr %194, align 8, !dbg !4044, !tbaa !1037
  %195 = icmp eq ptr %193, null, !dbg !4045
  %196 = select i1 %195, i64 9, i64 10, !dbg !4046
  br label %197, !dbg !4046

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4048
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4049
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !4050
  ret void, !dbg !4050
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4051 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4055, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata ptr %1, metadata !4056, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata ptr %2, metadata !4057, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata ptr %3, metadata !4058, metadata !DIExpression()), !dbg !4060
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !4061
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4059, metadata !DIExpression()), !dbg !4062
  call void @llvm.va_start(ptr nonnull %5), !dbg !4063
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !4064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4064, !tbaa.struct !1985
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4064
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !4064
  call void @llvm.va_end(ptr nonnull %5), !dbg !4065
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !4066
  ret void, !dbg !4066
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4067 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4068, !tbaa !1037
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.112, ptr noundef %1), !dbg !4068
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.17.129, i32 noundef 5) #38, !dbg !4069
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.130) #38, !dbg !4069
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.19.131, i32 noundef 5) #38, !dbg !4070
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.132, ptr noundef nonnull @.str.21.133) #38, !dbg !4070
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.22.134, i32 noundef 5) #38, !dbg !4071
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.135) #38, !dbg !4071
  ret void, !dbg !4072
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4073 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4078, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i64 %1, metadata !4079, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i64 %2, metadata !4080, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata ptr %0, metadata !4082, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 %1, metadata !4085, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64 %2, metadata !4086, metadata !DIExpression()), !dbg !4087
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4089
  call void @llvm.dbg.value(metadata ptr %4, metadata !4090, metadata !DIExpression()), !dbg !4095
  %5 = icmp eq ptr %4, null, !dbg !4097
  br i1 %5, label %6, label %7, !dbg !4099

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4100
  unreachable, !dbg !4100

7:                                                ; preds = %3
  ret ptr %4, !dbg !4101
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4083 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4082, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i64 %1, metadata !4085, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i64 %2, metadata !4086, metadata !DIExpression()), !dbg !4102
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4103
  call void @llvm.dbg.value(metadata ptr %4, metadata !4090, metadata !DIExpression()), !dbg !4104
  %5 = icmp eq ptr %4, null, !dbg !4106
  br i1 %5, label %6, label %7, !dbg !4107

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4108
  unreachable, !dbg !4108

7:                                                ; preds = %3
  ret ptr %4, !dbg !4109
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4110 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4114, metadata !DIExpression()), !dbg !4115
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !4116
  call void @llvm.dbg.value(metadata ptr %2, metadata !4090, metadata !DIExpression()), !dbg !4117
  %3 = icmp eq ptr %2, null, !dbg !4119
  br i1 %3, label %4, label %5, !dbg !4120

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4121
  unreachable, !dbg !4121

5:                                                ; preds = %1
  ret ptr %2, !dbg !4122
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4123 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4127, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i64 %0, metadata !4129, metadata !DIExpression()), !dbg !4133
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !4135
  call void @llvm.dbg.value(metadata ptr %2, metadata !4090, metadata !DIExpression()), !dbg !4136
  %3 = icmp eq ptr %2, null, !dbg !4138
  br i1 %3, label %4, label %5, !dbg !4139

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4140
  unreachable, !dbg !4140

5:                                                ; preds = %1
  ret ptr %2, !dbg !4141
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4142 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4146, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i64 %0, metadata !4114, metadata !DIExpression()), !dbg !4148
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !4150
  call void @llvm.dbg.value(metadata ptr %2, metadata !4090, metadata !DIExpression()), !dbg !4151
  %3 = icmp eq ptr %2, null, !dbg !4153
  br i1 %3, label %4, label %5, !dbg !4154

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4155
  unreachable, !dbg !4155

5:                                                ; preds = %1
  ret ptr %2, !dbg !4156
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4157 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4159, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata i64 %1, metadata !4160, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata ptr %0, metadata !4162, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i64 %1, metadata !4165, metadata !DIExpression()), !dbg !4166
  %3 = icmp eq i64 %1, 0, !dbg !4168
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4168
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !4169
  call void @llvm.dbg.value(metadata ptr %5, metadata !4090, metadata !DIExpression()), !dbg !4170
  %6 = icmp eq ptr %5, null, !dbg !4172
  br i1 %6, label %7, label %8, !dbg !4173

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4174
  unreachable, !dbg !4174

8:                                                ; preds = %2
  ret ptr %5, !dbg !4175
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4176 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4180, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i64 %1, metadata !4181, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata ptr %0, metadata !4183, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %1, metadata !4186, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata ptr %0, metadata !4162, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i64 %1, metadata !4165, metadata !DIExpression()), !dbg !4189
  %3 = icmp eq i64 %1, 0, !dbg !4191
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4191
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !4192
  call void @llvm.dbg.value(metadata ptr %5, metadata !4090, metadata !DIExpression()), !dbg !4193
  %6 = icmp eq ptr %5, null, !dbg !4195
  br i1 %6, label %7, label %8, !dbg !4196

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4197
  unreachable, !dbg !4197

8:                                                ; preds = %2
  ret ptr %5, !dbg !4198
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4199 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4203, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i64 %1, metadata !4204, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i64 %2, metadata !4205, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata ptr %0, metadata !4207, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %1, metadata !4210, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %2, metadata !4211, metadata !DIExpression()), !dbg !4212
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4214
  call void @llvm.dbg.value(metadata ptr %4, metadata !4090, metadata !DIExpression()), !dbg !4215
  %5 = icmp eq ptr %4, null, !dbg !4217
  br i1 %5, label %6, label %7, !dbg !4218

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4219
  unreachable, !dbg !4219

7:                                                ; preds = %3
  ret ptr %4, !dbg !4220
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4221 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4225, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i64 %1, metadata !4226, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata ptr null, metadata !4082, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata i64 %0, metadata !4085, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata i64 %1, metadata !4086, metadata !DIExpression()), !dbg !4228
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4230
  call void @llvm.dbg.value(metadata ptr %3, metadata !4090, metadata !DIExpression()), !dbg !4231
  %4 = icmp eq ptr %3, null, !dbg !4233
  br i1 %4, label %5, label %6, !dbg !4234

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4235
  unreachable, !dbg !4235

6:                                                ; preds = %2
  ret ptr %3, !dbg !4236
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4237 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4241, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i64 %1, metadata !4242, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata ptr null, metadata !4203, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata i64 %0, metadata !4204, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata i64 %1, metadata !4205, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata ptr null, metadata !4207, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %0, metadata !4210, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %1, metadata !4211, metadata !DIExpression()), !dbg !4246
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4248
  call void @llvm.dbg.value(metadata ptr %3, metadata !4090, metadata !DIExpression()), !dbg !4249
  %4 = icmp eq ptr %3, null, !dbg !4251
  br i1 %4, label %5, label %6, !dbg !4252

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4253
  unreachable, !dbg !4253

6:                                                ; preds = %2
  ret ptr %3, !dbg !4254
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4255 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4259, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata ptr %1, metadata !4260, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata ptr %0, metadata !970, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata ptr %1, metadata !971, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i64 1, metadata !972, metadata !DIExpression()), !dbg !4262
  %3 = load i64, ptr %1, align 8, !dbg !4264, !tbaa !1268
  call void @llvm.dbg.value(metadata i64 %3, metadata !973, metadata !DIExpression()), !dbg !4262
  %4 = icmp eq ptr %0, null, !dbg !4265
  br i1 %4, label %5, label %8, !dbg !4267

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4268
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4271
  br label %15, !dbg !4271

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4272
  %10 = add nuw i64 %9, 1, !dbg !4272
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4272
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4272
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4272
  call void @llvm.dbg.value(metadata i64 %13, metadata !973, metadata !DIExpression()), !dbg !4262
  br i1 %12, label %14, label %15, !dbg !4275

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !4276
  unreachable, !dbg !4276

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4262
  call void @llvm.dbg.value(metadata i64 %16, metadata !973, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata ptr %0, metadata !4082, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i64 %16, metadata !4085, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i64 1, metadata !4086, metadata !DIExpression()), !dbg !4277
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !4279
  call void @llvm.dbg.value(metadata ptr %17, metadata !4090, metadata !DIExpression()), !dbg !4280
  %18 = icmp eq ptr %17, null, !dbg !4282
  br i1 %18, label %19, label %20, !dbg !4283

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !4284
  unreachable, !dbg !4284

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !970, metadata !DIExpression()), !dbg !4262
  store i64 %16, ptr %1, align 8, !dbg !4285, !tbaa !1268
  ret ptr %17, !dbg !4286
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !965 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !970, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata ptr %1, metadata !971, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i64 %2, metadata !972, metadata !DIExpression()), !dbg !4287
  %4 = load i64, ptr %1, align 8, !dbg !4288, !tbaa !1268
  call void @llvm.dbg.value(metadata i64 %4, metadata !973, metadata !DIExpression()), !dbg !4287
  %5 = icmp eq ptr %0, null, !dbg !4289
  br i1 %5, label %6, label %13, !dbg !4290

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4291
  br i1 %7, label %8, label %20, !dbg !4292

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4293
  call void @llvm.dbg.value(metadata i64 %9, metadata !973, metadata !DIExpression()), !dbg !4287
  %10 = icmp ugt i64 %2, 128, !dbg !4295
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4296
  call void @llvm.dbg.value(metadata i64 %12, metadata !973, metadata !DIExpression()), !dbg !4287
  br label %20, !dbg !4297

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4298
  %15 = add nuw i64 %14, 1, !dbg !4298
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4298
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4298
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4298
  call void @llvm.dbg.value(metadata i64 %18, metadata !973, metadata !DIExpression()), !dbg !4287
  br i1 %17, label %19, label %20, !dbg !4299

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !4300
  unreachable, !dbg !4300

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4287
  call void @llvm.dbg.value(metadata i64 %21, metadata !973, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata ptr %0, metadata !4082, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i64 %21, metadata !4085, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i64 %2, metadata !4086, metadata !DIExpression()), !dbg !4301
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !4303
  call void @llvm.dbg.value(metadata ptr %22, metadata !4090, metadata !DIExpression()), !dbg !4304
  %23 = icmp eq ptr %22, null, !dbg !4306
  br i1 %23, label %24, label %25, !dbg !4307

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !4308
  unreachable, !dbg !4308

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !970, metadata !DIExpression()), !dbg !4287
  store i64 %21, ptr %1, align 8, !dbg !4309, !tbaa !1268
  ret ptr %22, !dbg !4310
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !977 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !985, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata ptr %1, metadata !986, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %2, metadata !987, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %3, metadata !988, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %4, metadata !989, metadata !DIExpression()), !dbg !4311
  %6 = load i64, ptr %1, align 8, !dbg !4312, !tbaa !1268
  call void @llvm.dbg.value(metadata i64 %6, metadata !990, metadata !DIExpression()), !dbg !4311
  %7 = ashr i64 %6, 1, !dbg !4313
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4313
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4313
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4313
  call void @llvm.dbg.value(metadata i64 %10, metadata !991, metadata !DIExpression()), !dbg !4311
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4315
  call void @llvm.dbg.value(metadata i64 %11, metadata !991, metadata !DIExpression()), !dbg !4311
  %12 = icmp sgt i64 %3, -1, !dbg !4316
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4318
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4318
  call void @llvm.dbg.value(metadata i64 %15, metadata !991, metadata !DIExpression()), !dbg !4311
  %16 = icmp slt i64 %4, 0, !dbg !4319
  br i1 %16, label %17, label %30, !dbg !4319

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4319
  br i1 %18, label %19, label %24, !dbg !4319

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4319
  %21 = udiv i64 9223372036854775807, %20, !dbg !4319
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4319
  br i1 %23, label %46, label %43, !dbg !4319

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4319
  br i1 %25, label %43, label %26, !dbg !4319

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4319
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4319
  %29 = icmp ult i64 %28, %15, !dbg !4319
  br i1 %29, label %46, label %43, !dbg !4319

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4319
  br i1 %31, label %43, label %32, !dbg !4319

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4319
  br i1 %33, label %34, label %40, !dbg !4319

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4319
  br i1 %35, label %43, label %36, !dbg !4319

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4319
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4319
  %39 = icmp ult i64 %38, %4, !dbg !4319
  br i1 %39, label %46, label %43, !dbg !4319

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4319
  br i1 %42, label %46, label %43, !dbg !4319

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !992, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4311
  %44 = mul i64 %15, %4, !dbg !4319
  call void @llvm.dbg.value(metadata i64 %44, metadata !992, metadata !DIExpression()), !dbg !4311
  %45 = icmp slt i64 %44, 128, !dbg !4319
  br i1 %45, label %46, label %52, !dbg !4319

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !993, metadata !DIExpression()), !dbg !4311
  %48 = sdiv i64 %47, %4, !dbg !4320
  call void @llvm.dbg.value(metadata i64 %48, metadata !991, metadata !DIExpression()), !dbg !4311
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4323
  call void @llvm.dbg.value(metadata i64 %51, metadata !992, metadata !DIExpression()), !dbg !4311
  br label %52, !dbg !4324

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4311
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4311
  call void @llvm.dbg.value(metadata i64 %54, metadata !992, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %53, metadata !991, metadata !DIExpression()), !dbg !4311
  %55 = icmp eq ptr %0, null, !dbg !4325
  br i1 %55, label %56, label %57, !dbg !4327

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4328, !tbaa !1268
  br label %57, !dbg !4329

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4330
  %59 = icmp slt i64 %58, %2, !dbg !4332
  br i1 %59, label %60, label %97, !dbg !4333

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4334
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4334
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4334
  call void @llvm.dbg.value(metadata i64 %63, metadata !991, metadata !DIExpression()), !dbg !4311
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4335
  br i1 %66, label %96, label %67, !dbg !4335

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4336

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4336
  br i1 %69, label %70, label %75, !dbg !4336

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4336
  %72 = udiv i64 9223372036854775807, %71, !dbg !4336
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4336
  br i1 %74, label %96, label %94, !dbg !4336

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4336
  br i1 %76, label %94, label %77, !dbg !4336

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4336
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4336
  %80 = icmp ult i64 %79, %63, !dbg !4336
  br i1 %80, label %96, label %94, !dbg !4336

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4336
  br i1 %82, label %94, label %83, !dbg !4336

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4336
  br i1 %84, label %85, label %91, !dbg !4336

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4336
  br i1 %86, label %94, label %87, !dbg !4336

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4336
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4336
  %90 = icmp ult i64 %89, %4, !dbg !4336
  br i1 %90, label %96, label %94, !dbg !4336

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4336
  br i1 %93, label %96, label %94, !dbg !4336

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !992, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4311
  %95 = mul i64 %63, %4, !dbg !4336
  call void @llvm.dbg.value(metadata i64 %95, metadata !992, metadata !DIExpression()), !dbg !4311
  br label %97, !dbg !4337

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #40, !dbg !4338
  unreachable, !dbg !4338

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4311
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4311
  call void @llvm.dbg.value(metadata i64 %99, metadata !992, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %98, metadata !991, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata ptr %0, metadata !4159, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i64 %99, metadata !4160, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata ptr %0, metadata !4162, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i64 %99, metadata !4165, metadata !DIExpression()), !dbg !4341
  %100 = icmp eq i64 %99, 0, !dbg !4343
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4343
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #44, !dbg !4344
  call void @llvm.dbg.value(metadata ptr %102, metadata !4090, metadata !DIExpression()), !dbg !4345
  %103 = icmp eq ptr %102, null, !dbg !4347
  br i1 %103, label %104, label %105, !dbg !4348

104:                                              ; preds = %97
  tail call void @xalloc_die() #40, !dbg !4349
  unreachable, !dbg !4349

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !985, metadata !DIExpression()), !dbg !4311
  store i64 %98, ptr %1, align 8, !dbg !4350, !tbaa !1268
  ret ptr %102, !dbg !4351
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4352 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4354, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 %0, metadata !4356, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i64 1, metadata !4359, metadata !DIExpression()), !dbg !4360
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4362
  call void @llvm.dbg.value(metadata ptr %2, metadata !4090, metadata !DIExpression()), !dbg !4363
  %3 = icmp eq ptr %2, null, !dbg !4365
  br i1 %3, label %4, label %5, !dbg !4366

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4367
  unreachable, !dbg !4367

5:                                                ; preds = %1
  ret ptr %2, !dbg !4368
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4369 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4357 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4356, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.value(metadata i64 %1, metadata !4359, metadata !DIExpression()), !dbg !4370
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4371
  call void @llvm.dbg.value(metadata ptr %3, metadata !4090, metadata !DIExpression()), !dbg !4372
  %4 = icmp eq ptr %3, null, !dbg !4374
  br i1 %4, label %5, label %6, !dbg !4375

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4376
  unreachable, !dbg !4376

6:                                                ; preds = %2
  ret ptr %3, !dbg !4377
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4378 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4380, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata i64 %0, metadata !4382, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i64 1, metadata !4385, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i64 %0, metadata !4388, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i64 1, metadata !4391, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i64 %0, metadata !4388, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i64 1, metadata !4391, metadata !DIExpression()), !dbg !4392
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4394
  call void @llvm.dbg.value(metadata ptr %2, metadata !4090, metadata !DIExpression()), !dbg !4395
  %3 = icmp eq ptr %2, null, !dbg !4397
  br i1 %3, label %4, label %5, !dbg !4398

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4399
  unreachable, !dbg !4399

5:                                                ; preds = %1
  ret ptr %2, !dbg !4400
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4383 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4382, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata i64 %1, metadata !4385, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata i64 %0, metadata !4388, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i64 %1, metadata !4391, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i64 %0, metadata !4388, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i64 %1, metadata !4391, metadata !DIExpression()), !dbg !4402
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4404
  call void @llvm.dbg.value(metadata ptr %3, metadata !4090, metadata !DIExpression()), !dbg !4405
  %4 = icmp eq ptr %3, null, !dbg !4407
  br i1 %4, label %5, label %6, !dbg !4408

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4409
  unreachable, !dbg !4409

6:                                                ; preds = %2
  ret ptr %3, !dbg !4410
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4411 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4415, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.value(metadata i64 %1, metadata !4416, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.value(metadata i64 %1, metadata !4114, metadata !DIExpression()), !dbg !4418
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !4420
  call void @llvm.dbg.value(metadata ptr %3, metadata !4090, metadata !DIExpression()), !dbg !4421
  %4 = icmp eq ptr %3, null, !dbg !4423
  br i1 %4, label %5, label %6, !dbg !4424

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4425
  unreachable, !dbg !4425

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4426, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.value(metadata ptr %0, metadata !4429, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.value(metadata i64 %1, metadata !4430, metadata !DIExpression()), !dbg !4431
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4433
  ret ptr %3, !dbg !4434
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4435 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4439, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata i64 %1, metadata !4440, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata i64 %1, metadata !4127, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64 %1, metadata !4129, metadata !DIExpression()), !dbg !4444
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !4446
  call void @llvm.dbg.value(metadata ptr %3, metadata !4090, metadata !DIExpression()), !dbg !4447
  %4 = icmp eq ptr %3, null, !dbg !4449
  br i1 %4, label %5, label %6, !dbg !4450

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4451
  unreachable, !dbg !4451

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4426, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata ptr %0, metadata !4429, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i64 %1, metadata !4430, metadata !DIExpression()), !dbg !4452
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4454
  ret ptr %3, !dbg !4455
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4456 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4460, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.value(metadata i64 %1, metadata !4461, metadata !DIExpression()), !dbg !4463
  %3 = add nsw i64 %1, 1, !dbg !4464
  call void @llvm.dbg.value(metadata i64 %3, metadata !4127, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata i64 %3, metadata !4129, metadata !DIExpression()), !dbg !4467
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !4469
  call void @llvm.dbg.value(metadata ptr %4, metadata !4090, metadata !DIExpression()), !dbg !4470
  %5 = icmp eq ptr %4, null, !dbg !4472
  br i1 %5, label %6, label %7, !dbg !4473

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4474
  unreachable, !dbg !4474

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4462, metadata !DIExpression()), !dbg !4463
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4475
  store i8 0, ptr %8, align 1, !dbg !4476, !tbaa !1116
  call void @llvm.dbg.value(metadata ptr %4, metadata !4426, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.value(metadata ptr %0, metadata !4429, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.value(metadata i64 %1, metadata !4430, metadata !DIExpression()), !dbg !4477
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4479
  ret ptr %4, !dbg !4480
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4481 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4483, metadata !DIExpression()), !dbg !4484
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !4485
  %3 = add i64 %2, 1, !dbg !4486
  call void @llvm.dbg.value(metadata ptr %0, metadata !4415, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i64 %3, metadata !4416, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i64 %3, metadata !4114, metadata !DIExpression()), !dbg !4489
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !4491
  call void @llvm.dbg.value(metadata ptr %4, metadata !4090, metadata !DIExpression()), !dbg !4492
  %5 = icmp eq ptr %4, null, !dbg !4494
  br i1 %5, label %6, label %7, !dbg !4495

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4496
  unreachable, !dbg !4496

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4426, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata ptr %0, metadata !4429, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i64 %3, metadata !4430, metadata !DIExpression()), !dbg !4497
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !4499
  ret ptr %4, !dbg !4500
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4501 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4506, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %1, metadata !4503, metadata !DIExpression()), !dbg !4507
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.150, ptr noundef nonnull @.str.2.151, i32 noundef 5) #38, !dbg !4506
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.152, ptr noundef %2) #38, !dbg !4506
  %3 = icmp eq i32 %1, 0, !dbg !4506
  tail call void @llvm.assume(i1 %3), !dbg !4506
  tail call void @abort() #40, !dbg !4508
  unreachable, !dbg !4508
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4509 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4547, metadata !DIExpression()), !dbg !4552
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !4553
  call void @llvm.dbg.value(metadata i1 poison, metadata !4548, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4552
  call void @llvm.dbg.value(metadata ptr %0, metadata !4554, metadata !DIExpression()), !dbg !4557
  %3 = load i32, ptr %0, align 8, !dbg !4559, !tbaa !2296
  %4 = and i32 %3, 32, !dbg !4560
  %5 = icmp eq i32 %4, 0, !dbg !4560
  call void @llvm.dbg.value(metadata i1 %5, metadata !4550, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4552
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !4561
  %7 = icmp eq i32 %6, 0, !dbg !4562
  call void @llvm.dbg.value(metadata i1 %7, metadata !4551, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4552
  br i1 %5, label %8, label %18, !dbg !4563

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4565
  call void @llvm.dbg.value(metadata i1 %9, metadata !4548, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4552
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4566
  %11 = xor i1 %7, true, !dbg !4566
  %12 = sext i1 %11 to i32, !dbg !4566
  br i1 %10, label %21, label %13, !dbg !4566

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !4567
  %15 = load i32, ptr %14, align 4, !dbg !4567, !tbaa !1107
  %16 = icmp ne i32 %15, 9, !dbg !4568
  %17 = sext i1 %16 to i32, !dbg !4569
  br label %21, !dbg !4569

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4570

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !4572
  store i32 0, ptr %20, align 4, !dbg !4574, !tbaa !1107
  br label %21, !dbg !4572

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4552
  ret i32 %22, !dbg !4575
}

; Function Attrs: nounwind
declare !dbg !4576 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4579 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4617, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i32 0, metadata !4618, metadata !DIExpression()), !dbg !4621
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4622
  call void @llvm.dbg.value(metadata i32 %2, metadata !4619, metadata !DIExpression()), !dbg !4621
  %3 = icmp slt i32 %2, 0, !dbg !4623
  br i1 %3, label %4, label %6, !dbg !4625

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4626
  br label %24, !dbg !4627

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !4628
  %8 = icmp eq i32 %7, 0, !dbg !4628
  br i1 %8, label %13, label %9, !dbg !4630

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4631
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !4632
  %12 = icmp eq i64 %11, -1, !dbg !4633
  br i1 %12, label %16, label %13, !dbg !4634

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !4635
  %15 = icmp eq i32 %14, 0, !dbg !4635
  br i1 %15, label %16, label %18, !dbg !4636

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4618, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i32 0, metadata !4620, metadata !DIExpression()), !dbg !4621
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4637
  call void @llvm.dbg.value(metadata i32 %17, metadata !4620, metadata !DIExpression()), !dbg !4621
  br label %24, !dbg !4638

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !4639
  %20 = load i32, ptr %19, align 4, !dbg !4639, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %20, metadata !4618, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i32 0, metadata !4620, metadata !DIExpression()), !dbg !4621
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4637
  call void @llvm.dbg.value(metadata i32 %21, metadata !4620, metadata !DIExpression()), !dbg !4621
  %22 = icmp eq i32 %20, 0, !dbg !4640
  br i1 %22, label %24, label %23, !dbg !4638

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4642, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 -1, metadata !4620, metadata !DIExpression()), !dbg !4621
  br label %24, !dbg !4644

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4621
  ret i32 %25, !dbg !4645
}

; Function Attrs: nofree nounwind
declare !dbg !4646 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4647 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !4648 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4650, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i32 %1, metadata !4651, metadata !DIExpression()), !dbg !4656
  %3 = icmp ult i32 %0, 3, !dbg !4657
  br i1 %3, label %4, label %9, !dbg !4657

4:                                                ; preds = %2
  %5 = tail call i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) #38, !dbg !4658
  call void @llvm.dbg.value(metadata i32 %5, metadata !4652, metadata !DIExpression()), !dbg !4659
  %6 = tail call ptr @__errno_location() #41, !dbg !4660
  %7 = load i32, ptr %6, align 4, !dbg !4660, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %7, metadata !4655, metadata !DIExpression()), !dbg !4659
  %8 = tail call i32 @close(i32 noundef %0) #38, !dbg !4661
  store i32 %7, ptr %6, align 4, !dbg !4662, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %5, metadata !4650, metadata !DIExpression()), !dbg !4656
  br label %9, !dbg !4663

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %5, %4 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !4650, metadata !DIExpression()), !dbg !4656
  ret i32 %10, !dbg !4664
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !4665 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4667, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.value(metadata i32 %1, metadata !4668, metadata !DIExpression()), !dbg !4669
  %3 = and i32 %1, 524288, !dbg !4670
  %4 = icmp eq i32 %3, 0, !dbg !4671
  %5 = select i1 %4, i32 0, i32 1030, !dbg !4671
  %6 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef %5, i32 noundef 3) #38, !dbg !4672
  ret i32 %6, !dbg !4673
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4674 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4712, metadata !DIExpression()), !dbg !4713
  %2 = icmp eq ptr %0, null, !dbg !4714
  br i1 %2, label %6, label %3, !dbg !4716

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !4717
  %5 = icmp eq i32 %4, 0, !dbg !4717
  br i1 %5, label %6, label %8, !dbg !4718

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4719
  br label %16, !dbg !4720

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4721, metadata !DIExpression()), !dbg !4726
  %9 = load i32, ptr %0, align 8, !dbg !4728, !tbaa !2296
  %10 = and i32 %9, 256, !dbg !4730
  %11 = icmp eq i32 %10, 0, !dbg !4730
  br i1 %11, label %14, label %12, !dbg !4731

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !4732
  br label %14, !dbg !4732

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4733
  br label %16, !dbg !4734

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4713
  ret i32 %17, !dbg !4735
}

; Function Attrs: nofree nounwind
declare !dbg !4736 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4737 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4742, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata ptr %1, metadata !4743, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i64 %2, metadata !4744, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata ptr %3, metadata !4745, metadata !DIExpression()), !dbg !4747
  %5 = icmp eq ptr %1, null, !dbg !4748
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4750
  %7 = select i1 %5, ptr @.str.165, ptr %1, !dbg !4750
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4750
  call void @llvm.dbg.value(metadata i64 %8, metadata !4744, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata ptr %7, metadata !4743, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata ptr %6, metadata !4742, metadata !DIExpression()), !dbg !4747
  %9 = icmp eq ptr %3, null, !dbg !4751
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4753
  call void @llvm.dbg.value(metadata ptr %10, metadata !4745, metadata !DIExpression()), !dbg !4747
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #38, !dbg !4754
  call void @llvm.dbg.value(metadata i64 %11, metadata !4746, metadata !DIExpression()), !dbg !4747
  %12 = icmp ult i64 %11, -3, !dbg !4755
  br i1 %12, label %13, label %17, !dbg !4757

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #39, !dbg !4758
  %15 = icmp eq i32 %14, 0, !dbg !4758
  br i1 %15, label %16, label %29, !dbg !4759

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4760, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata ptr %10, metadata !4767, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.value(metadata i32 0, metadata !4770, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.value(metadata i64 8, metadata !4771, metadata !DIExpression()), !dbg !4772
  store i64 0, ptr %10, align 1, !dbg !4774
  br label %29, !dbg !4775

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4776
  br i1 %18, label %19, label %20, !dbg !4778

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !4779
  unreachable, !dbg !4779

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4780

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #38, !dbg !4782
  br i1 %23, label %29, label %24, !dbg !4783

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4784
  br i1 %25, label %29, label %26, !dbg !4787

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4788, !tbaa !1116
  %28 = zext i8 %27 to i32, !dbg !4789
  store i32 %28, ptr %6, align 4, !dbg !4790, !tbaa !1107
  br label %29, !dbg !4791

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4747
  ret i64 %30, !dbg !4792
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4793 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !4799 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4801, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata i64 %1, metadata !4802, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata i64 %2, metadata !4803, metadata !DIExpression()), !dbg !4805
  %4 = icmp eq i64 %2, 0, !dbg !4806
  br i1 %4, label %8, label %5, !dbg !4806

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4806
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4806
  br i1 %7, label %13, label %8, !dbg !4806

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4804, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4805
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4804, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4805
  %9 = mul i64 %2, %1, !dbg !4806
  call void @llvm.dbg.value(metadata i64 %9, metadata !4804, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata ptr %0, metadata !4808, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i64 %9, metadata !4811, metadata !DIExpression()), !dbg !4812
  %10 = icmp eq i64 %9, 0, !dbg !4814
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4814
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !4815
  br label %15, !dbg !4816

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4804, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4805
  %14 = tail call ptr @__errno_location() #41, !dbg !4817
  store i32 12, ptr %14, align 4, !dbg !4819, !tbaa !1107
  br label %15, !dbg !4820

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4805
  ret ptr %16, !dbg !4821
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !4822 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4824, metadata !DIExpression()), !dbg !4825
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #38, !dbg !4826
  ret i32 %2, !dbg !4827
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !4828 {
  %3 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4830, metadata !DIExpression()), !dbg !4855
  call void @llvm.dbg.value(metadata i32 %1, metadata !4831, metadata !DIExpression()), !dbg !4855
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #38, !dbg !4856
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4832, metadata !DIExpression()), !dbg !4857
  call void @llvm.va_start(ptr nonnull %3), !dbg !4858
  call void @llvm.dbg.value(metadata i32 -1, metadata !4843, metadata !DIExpression()), !dbg !4855
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
  ], !dbg !4859

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4860
  %6 = load i32, ptr %5, align 8, !dbg !4860
  %7 = icmp sgt i32 %6, -1, !dbg !4860
  br i1 %7, label %16, label %8, !dbg !4860

8:                                                ; preds = %4
  %9 = add nsw i32 %6, 8, !dbg !4860
  store i32 %9, ptr %5, align 8, !dbg !4860
  %10 = icmp ult i32 %6, -7, !dbg !4860
  br i1 %10, label %11, label %16, !dbg !4860

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4860
  %13 = load ptr, ptr %12, align 8, !dbg !4860
  %14 = sext i32 %6 to i64, !dbg !4860
  %15 = getelementptr inbounds i8, ptr %13, i64 %14, !dbg !4860
  br label %19, !dbg !4860

16:                                               ; preds = %8, %4
  %17 = load ptr, ptr %3, align 8, !dbg !4860
  %18 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !4860
  store ptr %18, ptr %3, align 8, !dbg !4860
  br label %19, !dbg !4860

19:                                               ; preds = %16, %11
  %20 = phi ptr [ %15, %11 ], [ %17, %16 ], !dbg !4860
  %21 = load i32, ptr %20, align 8, !dbg !4860
  call void @llvm.dbg.value(metadata i32 %21, metadata !4844, metadata !DIExpression()), !dbg !4861
  call void @llvm.dbg.value(metadata i32 %0, metadata !4862, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i32 %21, metadata !4865, metadata !DIExpression()), !dbg !4867
  %22 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %21) #38, !dbg !4869
  call void @llvm.dbg.value(metadata i32 %22, metadata !4866, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i32 %22, metadata !4843, metadata !DIExpression()), !dbg !4855
  br label %115

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4870
  %25 = load i32, ptr %24, align 8, !dbg !4870
  %26 = icmp sgt i32 %25, -1, !dbg !4870
  br i1 %26, label %35, label %27, !dbg !4870

27:                                               ; preds = %23
  %28 = add nsw i32 %25, 8, !dbg !4870
  store i32 %28, ptr %24, align 8, !dbg !4870
  %29 = icmp ult i32 %25, -7, !dbg !4870
  br i1 %29, label %30, label %35, !dbg !4870

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4870
  %32 = load ptr, ptr %31, align 8, !dbg !4870
  %33 = sext i32 %25 to i64, !dbg !4870
  %34 = getelementptr inbounds i8, ptr %32, i64 %33, !dbg !4870
  br label %38, !dbg !4870

35:                                               ; preds = %27, %23
  %36 = load ptr, ptr %3, align 8, !dbg !4870
  %37 = getelementptr inbounds i8, ptr %36, i64 8, !dbg !4870
  store ptr %37, ptr %3, align 8, !dbg !4870
  br label %38, !dbg !4870

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %34, %30 ], [ %36, %35 ], !dbg !4870
  %40 = load i32, ptr %39, align 8, !dbg !4870
  call void @llvm.dbg.value(metadata i32 %40, metadata !4847, metadata !DIExpression()), !dbg !4871
  call void @llvm.dbg.value(metadata i32 %0, metadata !918, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.value(metadata i32 %40, metadata !919, metadata !DIExpression()), !dbg !4872
  %41 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4874, !tbaa !1107
  %42 = icmp sgt i32 %41, -1, !dbg !4876
  br i1 %42, label %43, label %55, !dbg !4877

43:                                               ; preds = %38
  %44 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %40) #38, !dbg !4878
  call void @llvm.dbg.value(metadata i32 %44, metadata !920, metadata !DIExpression()), !dbg !4872
  %45 = icmp sgt i32 %44, -1, !dbg !4880
  br i1 %45, label %50, label %46, !dbg !4882

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #41, !dbg !4883
  %48 = load i32, ptr %47, align 4, !dbg !4883, !tbaa !1107
  %49 = icmp eq i32 %48, 22, !dbg !4884
  br i1 %49, label %51, label %50, !dbg !4885

50:                                               ; preds = %46, %43
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4886, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %44, metadata !920, metadata !DIExpression()), !dbg !4872
  br label %115, !dbg !4888

51:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %0, metadata !4862, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata i32 %40, metadata !4865, metadata !DIExpression()), !dbg !4889
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #38, !dbg !4892
  call void @llvm.dbg.value(metadata i32 %52, metadata !4866, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata i32 %52, metadata !920, metadata !DIExpression()), !dbg !4872
  %53 = icmp sgt i32 %52, -1, !dbg !4893
  br i1 %53, label %54, label %115, !dbg !4895

54:                                               ; preds = %51
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4896, !tbaa !1107
  br label %59, !dbg !4897

55:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !4862, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i32 %40, metadata !4865, metadata !DIExpression()), !dbg !4898
  %56 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #38, !dbg !4900
  call void @llvm.dbg.value(metadata i32 %56, metadata !4866, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i32 %56, metadata !920, metadata !DIExpression()), !dbg !4872
  %57 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %58 = icmp eq i32 %57, -1
  br label %59

59:                                               ; preds = %55, %54
  %60 = phi i1 [ true, %54 ], [ %58, %55 ]
  %61 = phi i32 [ %52, %54 ], [ %56, %55 ], !dbg !4901
  call void @llvm.dbg.value(metadata i32 %61, metadata !920, metadata !DIExpression()), !dbg !4872
  %62 = icmp sgt i32 %61, -1, !dbg !4902
  %63 = select i1 %62, i1 %60, i1 false, !dbg !4888
  br i1 %63, label %64, label %115, !dbg !4888

64:                                               ; preds = %59
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 1) #38, !dbg !4903
  call void @llvm.dbg.value(metadata i32 %65, metadata !921, metadata !DIExpression()), !dbg !4904
  %66 = icmp slt i32 %65, 0, !dbg !4905
  br i1 %66, label %71, label %67, !dbg !4906

67:                                               ; preds = %64
  %68 = or i32 %65, 1, !dbg !4907
  %69 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 2, i32 noundef %68) #38, !dbg !4908
  %70 = icmp eq i32 %69, -1, !dbg !4909
  br i1 %70, label %71, label %115, !dbg !4910

71:                                               ; preds = %67, %64
  %72 = tail call ptr @__errno_location() #41, !dbg !4911
  %73 = load i32, ptr %72, align 4, !dbg !4911, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %73, metadata !924, metadata !DIExpression()), !dbg !4912
  %74 = call i32 @close(i32 noundef %61) #38, !dbg !4913
  store i32 %73, ptr %72, align 4, !dbg !4914, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 -1, metadata !920, metadata !DIExpression()), !dbg !4872
  br label %115, !dbg !4915

75:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %76 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #38, !dbg !4916
  call void @llvm.dbg.value(metadata i32 %76, metadata !4843, metadata !DIExpression()), !dbg !4855
  br label %115, !dbg !4917

77:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %78 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4918
  %79 = load i32, ptr %78, align 8, !dbg !4918
  %80 = icmp sgt i32 %79, -1, !dbg !4918
  br i1 %80, label %89, label %81, !dbg !4918

81:                                               ; preds = %77
  %82 = add nsw i32 %79, 8, !dbg !4918
  store i32 %82, ptr %78, align 8, !dbg !4918
  %83 = icmp ult i32 %79, -7, !dbg !4918
  br i1 %83, label %84, label %89, !dbg !4918

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4918
  %86 = load ptr, ptr %85, align 8, !dbg !4918
  %87 = sext i32 %79 to i64, !dbg !4918
  %88 = getelementptr inbounds i8, ptr %86, i64 %87, !dbg !4918
  br label %92, !dbg !4918

89:                                               ; preds = %81, %77
  %90 = load ptr, ptr %3, align 8, !dbg !4918
  %91 = getelementptr inbounds i8, ptr %90, i64 8, !dbg !4918
  store ptr %91, ptr %3, align 8, !dbg !4918
  br label %92, !dbg !4918

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %88, %84 ], [ %90, %89 ], !dbg !4918
  %94 = load i32, ptr %93, align 8, !dbg !4918
  call void @llvm.dbg.value(metadata i32 %94, metadata !4849, metadata !DIExpression()), !dbg !4919
  %95 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %94) #38, !dbg !4920
  call void @llvm.dbg.value(metadata i32 %95, metadata !4843, metadata !DIExpression()), !dbg !4855
  br label %115, !dbg !4921

96:                                               ; preds = %2
  %97 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4922
  %98 = load i32, ptr %97, align 8, !dbg !4922
  %99 = icmp sgt i32 %98, -1, !dbg !4922
  br i1 %99, label %108, label %100, !dbg !4922

100:                                              ; preds = %96
  %101 = add nsw i32 %98, 8, !dbg !4922
  store i32 %101, ptr %97, align 8, !dbg !4922
  %102 = icmp ult i32 %98, -7, !dbg !4922
  br i1 %102, label %103, label %108, !dbg !4922

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4922
  %105 = load ptr, ptr %104, align 8, !dbg !4922
  %106 = sext i32 %98 to i64, !dbg !4922
  %107 = getelementptr inbounds i8, ptr %105, i64 %106, !dbg !4922
  br label %111, !dbg !4922

108:                                              ; preds = %100, %96
  %109 = load ptr, ptr %3, align 8, !dbg !4922
  %110 = getelementptr inbounds i8, ptr %109, i64 8, !dbg !4922
  store ptr %110, ptr %3, align 8, !dbg !4922
  br label %111, !dbg !4922

111:                                              ; preds = %108, %103
  %112 = phi ptr [ %107, %103 ], [ %109, %108 ], !dbg !4922
  %113 = load ptr, ptr %112, align 8, !dbg !4922
  call void @llvm.dbg.value(metadata ptr %113, metadata !4853, metadata !DIExpression()), !dbg !4923
  %114 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %113) #38, !dbg !4924
  call void @llvm.dbg.value(metadata i32 %114, metadata !4843, metadata !DIExpression()), !dbg !4855
  br label %115, !dbg !4925

115:                                              ; preds = %71, %67, %59, %51, %50, %75, %92, %111, %19
  %116 = phi i32 [ %114, %111 ], [ %95, %92 ], [ %76, %75 ], [ %22, %19 ], [ %61, %59 ], [ -1, %71 ], [ %61, %67 ], [ %52, %51 ], [ %44, %50 ], !dbg !4926
  call void @llvm.dbg.value(metadata i32 %116, metadata !4843, metadata !DIExpression()), !dbg !4855
  call void @llvm.va_end(ptr nonnull %3), !dbg !4927
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #38, !dbg !4928
  ret i32 %116, !dbg !4929
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4930 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4934, metadata !DIExpression()), !dbg !4939
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !4940
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4935, metadata !DIExpression()), !dbg !4941
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !4942
  %4 = icmp eq i32 %3, 0, !dbg !4942
  br i1 %4, label %5, label %12, !dbg !4944

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4945, metadata !DIExpression()), !dbg !4949
  call void @llvm.dbg.value(metadata ptr @.str.174, metadata !4948, metadata !DIExpression()), !dbg !4949
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.174, i64 2), !dbg !4952
  %7 = icmp eq i32 %6, 0, !dbg !4953
  br i1 %7, label %11, label %8, !dbg !4954

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4945, metadata !DIExpression()), !dbg !4955
  call void @llvm.dbg.value(metadata ptr @.str.1.175, metadata !4948, metadata !DIExpression()), !dbg !4955
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.175, i64 6), !dbg !4957
  %10 = icmp eq i32 %9, 0, !dbg !4958
  br i1 %10, label %11, label %12, !dbg !4959

11:                                               ; preds = %8, %5
  br label %12, !dbg !4960

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4939
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !4961
  ret i1 %13, !dbg !4961
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4962 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4966, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata ptr %1, metadata !4967, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata i64 %2, metadata !4968, metadata !DIExpression()), !dbg !4969
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !4970
  ret i32 %4, !dbg !4971
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4972 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4976, metadata !DIExpression()), !dbg !4977
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !4978
  ret ptr %2, !dbg !4979
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4980 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4982, metadata !DIExpression()), !dbg !4984
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4985
  call void @llvm.dbg.value(metadata ptr %2, metadata !4983, metadata !DIExpression()), !dbg !4984
  ret ptr %2, !dbg !4986
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4987 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4989, metadata !DIExpression()), !dbg !4996
  call void @llvm.dbg.value(metadata ptr %1, metadata !4990, metadata !DIExpression()), !dbg !4996
  call void @llvm.dbg.value(metadata i64 %2, metadata !4991, metadata !DIExpression()), !dbg !4996
  call void @llvm.dbg.value(metadata i32 %0, metadata !4982, metadata !DIExpression()), !dbg !4997
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4999
  call void @llvm.dbg.value(metadata ptr %4, metadata !4983, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata ptr %4, metadata !4992, metadata !DIExpression()), !dbg !4996
  %5 = icmp eq ptr %4, null, !dbg !5000
  br i1 %5, label %6, label %9, !dbg !5001

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5002
  br i1 %7, label %19, label %8, !dbg !5005

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5006, !tbaa !1116
  br label %19, !dbg !5007

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !5008
  call void @llvm.dbg.value(metadata i64 %10, metadata !4993, metadata !DIExpression()), !dbg !5009
  %11 = icmp ult i64 %10, %2, !dbg !5010
  br i1 %11, label %12, label %14, !dbg !5012

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5013
  call void @llvm.dbg.value(metadata ptr %1, metadata !5015, metadata !DIExpression()), !dbg !5020
  call void @llvm.dbg.value(metadata ptr %4, metadata !5018, metadata !DIExpression()), !dbg !5020
  call void @llvm.dbg.value(metadata i64 %13, metadata !5019, metadata !DIExpression()), !dbg !5020
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #38, !dbg !5022
  br label %19, !dbg !5023

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5024
  br i1 %15, label %19, label %16, !dbg !5027

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5028
  call void @llvm.dbg.value(metadata ptr %1, metadata !5015, metadata !DIExpression()), !dbg !5030
  call void @llvm.dbg.value(metadata ptr %4, metadata !5018, metadata !DIExpression()), !dbg !5030
  call void @llvm.dbg.value(metadata i64 %17, metadata !5019, metadata !DIExpression()), !dbg !5030
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !5032
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5033
  store i8 0, ptr %18, align 1, !dbg !5034, !tbaa !1116
  br label %19, !dbg !5035

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5036
  ret i32 %20, !dbg !5037
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
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #16 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { nocallback nofree nosync nounwind willreturn }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { nofree nounwind willreturn memory(argmem: read) }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(1) }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!60, !529, !566, !570, !585, !880, !932, !934, !936, !938, !642, !656, !707, !940, !948, !950, !953, !955, !872, !961, !995, !997, !999, !1001, !1003, !1005, !896, !1007, !1010, !915, !1012, !1014, !1016}
!llvm.ident = !{!1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018, !1018}
!llvm.module.flags = !{!1019, !1020, !1021, !1022, !1023, !1024, !1025}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/tac.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c011dce72bff7945d0c8301de2405c61")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 54)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 4)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 73)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 76)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 135, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 75)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 50)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 139, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 62)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 65)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "default_file_list", scope: !54, file: !2, line: 498, type: !485, isLocal: true, isDefinition: true)
!54 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 489, type: !55, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !474)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !57, !58}
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!60 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !61, retainedTypes: !97, globals: !108, splitDebugInlining: false, nameTableKind: None)
!61 = !{!62, !67, !83}
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !63, line: 337, baseType: !57, size: 32, elements: !64)
!63 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
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
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !84, line: 42, baseType: !69, size: 32, elements: !85)
!84 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!86 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!87 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!88 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!89 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!90 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!91 = !DIEnumerator(name: "c_quoting_style", value: 5)
!92 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!93 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!94 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!95 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!96 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!97 = !{!59, !98, !99, !57, !103, !104, !101, !107}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!103 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 46, baseType: !106)
!105 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!106 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!107 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!108 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !109, !52, !114, !119, !124, !129, !134, !139, !144, !149, !154, !159, !161, !163, !165, !167, !191, !196, !201, !203, !286, !288, !290, !292, !297, !299, !301, !303, !305, !307, !309, !311, !316, !321, !323, !325, !327, !329, !331, !333, !338, !343, !348, !353, !355, !357, !359, !361, !363, !368, !370, !372, !377, !382, !387, !389, !391, !393, !395, !397, !399, !411, !413, !415, !417, !419, !421, !426, !428, !430, !432, !434, !439, !449, !468, !470, !472}
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 498, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 2)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 503, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 1)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 504, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 10)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 504, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 24)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !2, line: 509, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 5)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 14)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 12)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 16)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 532, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 26)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 541, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 3)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "match_length", scope: !60, file: !2, line: 83, type: !104, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "G_buffer", scope: !60, file: !2, line: 86, type: !59, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "read_size", scope: !60, file: !2, line: 89, type: !104, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "G_buffer_size", scope: !60, file: !2, line: 94, type: !104, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "compiled_separator", scope: !60, file: !2, line: 97, type: !169, isLocal: true, isDefinition: true)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !170, line: 413, size: 512, elements: !171)
!170 = !DIFile(filename: "./lib/regex.h", directory: "/src", checksumkind: CSK_MD5, checksum: "fbbb1db427db36bb03cde72fd2b4622e")
!171 = !{!172, !175, !177, !178, !180, !181, !183, !184, !185, !186, !187, !188, !189, !190}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !169, file: !170, line: 417, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !170, line: 417, flags: DIFlagFwdDecl)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !169, file: !170, line: 420, baseType: !176, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !170, line: 56, baseType: !106)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !169, file: !170, line: 423, baseType: !176, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !169, file: !170, line: 426, baseType: !179, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !170, line: 71, baseType: !106)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !169, file: !170, line: 431, baseType: !59, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !169, file: !170, line: 437, baseType: !182, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !169, file: !170, line: 440, baseType: !104, size: 64, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !169, file: !170, line: 446, baseType: !69, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !169, file: !170, line: 457, baseType: !69, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !169, file: !170, line: 461, baseType: !69, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !169, file: !170, line: 465, baseType: !69, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !169, file: !170, line: 469, baseType: !69, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !169, file: !170, line: 472, baseType: !69, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !169, file: !170, line: 475, baseType: !69, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "compiled_separator_fastmap", scope: !60, file: !2, line: 98, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 256)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !63, line: 729, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 56)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !63, line: 736, type: !34, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !205, file: !63, line: 575, type: !57, isLocal: true, isDefinition: true)
!205 = distinct !DISubprogram(name: "oputs_", scope: !63, file: !63, line: 573, type: !206, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !208)
!206 = !DISubroutineType(cc: DW_CC_nocall, types: !207)
!207 = !{null, !101, !101}
!208 = !{!209, !210, !211, !214, !216, !217, !218, !222, !223, !224, !225, !227, !280, !281, !282, !284, !285}
!209 = !DILocalVariable(name: "program", arg: 1, scope: !205, file: !63, line: 573, type: !101)
!210 = !DILocalVariable(name: "option", arg: 2, scope: !205, file: !63, line: 573, type: !101)
!211 = !DILocalVariable(name: "term", scope: !212, file: !63, line: 585, type: !101)
!212 = distinct !DILexicalBlock(scope: !213, file: !63, line: 582, column: 5)
!213 = distinct !DILexicalBlock(scope: !205, file: !63, line: 581, column: 7)
!214 = !DILocalVariable(name: "double_space", scope: !205, file: !63, line: 594, type: !215)
!215 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!216 = !DILocalVariable(name: "first_word", scope: !205, file: !63, line: 595, type: !101)
!217 = !DILocalVariable(name: "option_text", scope: !205, file: !63, line: 596, type: !101)
!218 = !DILocalVariable(name: "s", scope: !219, file: !63, line: 608, type: !101)
!219 = distinct !DILexicalBlock(scope: !220, file: !63, line: 605, column: 5)
!220 = distinct !DILexicalBlock(scope: !221, file: !63, line: 604, column: 12)
!221 = distinct !DILexicalBlock(scope: !205, file: !63, line: 597, column: 7)
!222 = !DILocalVariable(name: "spaces", scope: !219, file: !63, line: 609, type: !104)
!223 = !DILocalVariable(name: "anchor_len", scope: !205, file: !63, line: 620, type: !104)
!224 = !DILocalVariable(name: "desc_text", scope: !205, file: !63, line: 625, type: !101)
!225 = !DILocalVariable(name: "__ptr", scope: !226, file: !63, line: 644, type: !101)
!226 = distinct !DILexicalBlock(scope: !205, file: !63, line: 644, column: 3)
!227 = !DILocalVariable(name: "__stream", scope: !226, file: !63, line: 644, type: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !231)
!230 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !233)
!232 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !249, !251, !252, !253, !257, !258, !260, !261, !264, !266, !269, !272, !273, !274, !275, !276}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !231, file: !232, line: 51, baseType: !57, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !231, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !231, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !231, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !231, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !231, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !231, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !231, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !231, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !231, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !231, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !231, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !231, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !232, line: 36, flags: DIFlagFwdDecl)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !231, file: !232, line: 70, baseType: !250, size: 64, offset: 832)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !231, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !231, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !231, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !255, line: 152, baseType: !256)
!255 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!256 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !231, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !231, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!259 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !231, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !231, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !232, line: 43, baseType: null)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !231, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !255, line: 153, baseType: !256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !231, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !232, line: 37, flags: DIFlagFwdDecl)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !231, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !232, line: 38, flags: DIFlagFwdDecl)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !231, file: !232, line: 93, baseType: !250, size: 64, offset: 1344)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !231, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !231, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !231, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !231, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 20)
!280 = !DILocalVariable(name: "__cnt", scope: !226, file: !63, line: 644, type: !104)
!281 = !DILocalVariable(name: "url_program", scope: !205, file: !63, line: 648, type: !101)
!282 = !DILocalVariable(name: "__ptr", scope: !283, file: !63, line: 686, type: !101)
!283 = distinct !DILexicalBlock(scope: !205, file: !63, line: 686, column: 3)
!284 = !DILocalVariable(name: "__stream", scope: !283, file: !63, line: 686, type: !228)
!285 = !DILocalVariable(name: "__cnt", scope: !283, file: !63, line: 686, type: !104)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !63, line: 585, type: !131, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !63, line: 586, type: !131, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !63, line: 595, type: !19, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !63, line: 620, type: !294, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 6)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !63, line: 648, type: !111, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !63, line: 648, type: !131, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !63, line: 649, type: !19, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !63, line: 649, type: !156, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !63, line: 650, type: !131, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !63, line: 651, type: !294, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !63, line: 651, type: !294, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !63, line: 652, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 7)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !63, line: 653, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 8)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !63, line: 654, type: !121, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !63, line: 655, type: !121, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !63, line: 656, type: !121, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !63, line: 657, type: !121, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !63, line: 663, type: !313, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !63, line: 664, type: !121, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !63, line: 669, type: !335, isLocal: true, isDefinition: true)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 17)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !63, line: 669, type: !340, isLocal: true, isDefinition: true)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 40)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !63, line: 676, type: !345, isLocal: true, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 15)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !63, line: 676, type: !350, isLocal: true, isDefinition: true)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 61)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !63, line: 679, type: !156, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !63, line: 683, type: !131, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !63, line: 688, type: !131, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !63, line: 691, type: !318, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !63, line: 839, type: !146, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !63, line: 840, type: !365, isLocal: true, isDefinition: true)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 22)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !63, line: 841, type: !345, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !63, line: 862, type: !19, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !63, line: 868, type: !374, isLocal: true, isDefinition: true)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 71)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !63, line: 875, type: !379, isLocal: true, isDefinition: true)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 27)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !63, line: 877, type: !384, isLocal: true, isDefinition: true)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 51)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !63, line: 877, type: !141, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !313, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !294, isLocal: true, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !121, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !131, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !318, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "longopts", scope: !60, file: !2, line: 101, type: !401, isLocal: true, isDefinition: true)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 1536, elements: !295)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !404, line: 50, size: 256, elements: !405)
!404 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!405 = !{!406, !407, !408, !410}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !403, file: !404, line: 52, baseType: !101, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !403, file: !404, line: 55, baseType: !57, size: 32, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !403, file: !404, line: 56, baseType: !409, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !403, file: !404, line: 57, baseType: !57, size: 32, offset: 192)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "separator_ends_record", scope: !60, file: !2, line: 73, type: !215, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(name: "sentinel_length", scope: !60, file: !2, line: 78, type: !104, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !111, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(name: "separator", scope: !60, file: !2, line: 66, type: !101, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !2, line: 460, type: !345, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !2, line: 468, type: !423, isLocal: true, isDefinition: true)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 30)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !2, line: 482, type: !345, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !2, line: 407, type: !146, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !146, isLocal: true, isDefinition: true)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !2, line: 271, type: !335, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !436, isLocal: true, isDefinition: true)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 35)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(name: "regs", scope: !60, file: !2, line: 99, type: !441, isLocal: true, isDefinition: true)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_registers", file: !170, line: 497, size: 192, elements: !442)
!442 = !{!443, !445, !448}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "num_regs", scope: !441, file: !170, line: 499, baseType: !444, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_size_t", file: !170, line: 55, baseType: !69)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !441, file: !170, line: 500, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !170, line: 490, baseType: !57)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !441, file: !170, line: 501, baseType: !446, size: 64, offset: 128)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(name: "buffer", scope: !451, file: !2, line: 154, type: !465, isLocal: true, isDefinition: true)
!451 = distinct !DISubprogram(name: "output", scope: !2, file: !2, line: 152, type: !452, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !453)
!452 = !DISubroutineType(types: !207)
!453 = !{!454, !455, !456, !457, !458, !463, !464}
!454 = !DILocalVariable(name: "start", arg: 1, scope: !451, file: !2, line: 152, type: !101)
!455 = !DILocalVariable(name: "past_end", arg: 2, scope: !451, file: !2, line: 152, type: !101)
!456 = !DILocalVariable(name: "bytes_to_add", scope: !451, file: !2, line: 156, type: !104)
!457 = !DILocalVariable(name: "bytes_available", scope: !451, file: !2, line: 157, type: !104)
!458 = !DILocalVariable(name: "__ptr", scope: !459, file: !2, line: 161, type: !101)
!459 = distinct !DILexicalBlock(scope: !460, file: !2, line: 161, column: 11)
!460 = distinct !DILexicalBlock(scope: !461, file: !2, line: 161, column: 11)
!461 = distinct !DILexicalBlock(scope: !462, file: !2, line: 160, column: 5)
!462 = distinct !DILexicalBlock(scope: !451, file: !2, line: 159, column: 7)
!463 = !DILocalVariable(name: "__stream", scope: !459, file: !2, line: 161, type: !228)
!464 = !DILocalVariable(name: "__cnt", scope: !459, file: !2, line: 161, type: !104)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 65536, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 8192)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "bytes_in_buffer", scope: !451, file: !2, line: 155, type: !104, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !63, line: 952, type: !141, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !60, file: !2, line: 69, type: !215, isLocal: true, isDefinition: true)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482}
!475 = !DILocalVariable(name: "argc", arg: 1, scope: !54, file: !2, line: 489, type: !57)
!476 = !DILocalVariable(name: "argv", arg: 2, scope: !54, file: !2, line: 489, type: !58)
!477 = !DILocalVariable(name: "error_message", scope: !54, file: !2, line: 491, type: !101)
!478 = !DILocalVariable(name: "optc", scope: !54, file: !2, line: 492, type: !57)
!479 = !DILocalVariable(name: "ok", scope: !54, file: !2, line: 493, type: !215)
!480 = !DILocalVariable(name: "half_buffer_size", scope: !54, file: !2, line: 494, type: !104)
!481 = !DILocalVariable(name: "file", scope: !54, file: !2, line: 499, type: !99)
!482 = !DILocalVariable(name: "i", scope: !483, file: !2, line: 576, type: !104)
!483 = distinct !DILexicalBlock(scope: !484, file: !2, line: 576, column: 5)
!484 = distinct !DILexicalBlock(scope: !54, file: !2, line: 574, column: 3)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, elements: !112)
!486 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!487 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(name: "tempfile", scope: !490, file: !491, line: 86, type: !59, isLocal: true, isDefinition: true)
!490 = distinct !DISubprogram(name: "temp_stream", scope: !491, file: !491, line: 84, type: !492, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !550)
!491 = !DIFile(filename: "src/temp-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "8878e64e34a1409e8108ead719db2042")
!492 = !DISubroutineType(types: !493)
!493 = !{!215, !494, !58}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !498)
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !497, file: !232, line: 51, baseType: !57, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !497, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !497, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !497, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !497, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !497, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !497, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !497, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !497, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !497, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !497, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !497, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !497, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !497, file: !232, line: 70, baseType: !513, size: 64, offset: 832)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !497, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !497, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !497, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !497, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !497, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !497, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !497, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !497, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !497, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !497, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !497, file: !232, line: 93, baseType: !513, size: 64, offset: 1344)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !497, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !497, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !497, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !497, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!529 = distinct !DICompileUnit(language: DW_LANG_C11, file: !491, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !530, retainedTypes: !531, globals: !532, splitDebugInlining: false, nameTableKind: None)
!530 = !{!83}
!531 = !{!98}
!532 = !{!488, !533, !535, !537, !539, !541, !543, !545}
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(name: "tmp_fp", scope: !490, file: !491, line: 87, type: !495, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !491, line: 97, type: !436, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !491, line: 101, type: !294, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !491, line: 128, type: !436, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !491, line: 133, type: !156, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !491, line: 136, type: !423, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !491, line: 154, type: !547, isLocal: true, isDefinition: true)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 31)
!550 = !{!551, !552, !553, !556, !557, !558}
!551 = !DILocalVariable(name: "fp", arg: 1, scope: !490, file: !491, line: 84, type: !494)
!552 = !DILocalVariable(name: "file_name", arg: 2, scope: !490, file: !491, line: 84, type: !58)
!553 = !DILocalVariable(name: "tempbuf", scope: !554, file: !491, line: 90, type: !59)
!554 = distinct !DILexicalBlock(scope: !555, file: !491, line: 89, column: 5)
!555 = distinct !DILexicalBlock(scope: !490, file: !491, line: 88, column: 7)
!556 = !DILocalVariable(name: "tempbuf_len", scope: !554, file: !491, line: 91, type: !104)
!557 = !DILocalVariable(name: "fd", scope: !554, file: !491, line: 125, type: !57)
!558 = !DILabel(scope: !559, name: "Reset", file: !491, line: 140)
!559 = distinct !DILexicalBlock(scope: !560, file: !491, line: 135, column: 9)
!560 = distinct !DILexicalBlock(scope: !554, file: !491, line: 134, column: 11)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !563, line: 3, type: !345, isLocal: true, isDefinition: true)
!563 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(name: "Version", scope: !566, file: !563, line: 3, type: !101, isLocal: false, isDefinition: true)
!566 = distinct !DICompileUnit(language: DW_LANG_C11, file: !563, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !567, splitDebugInlining: false, nameTableKind: None)
!567 = !{!561, !564}
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(name: "file_name", scope: !570, file: !571, line: 45, type: !101, isLocal: true, isDefinition: true)
!570 = distinct !DICompileUnit(language: DW_LANG_C11, file: !571, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !572, splitDebugInlining: false, nameTableKind: None)
!571 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!572 = !{!573, !575, !577, !579, !568, !581}
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !571, line: 121, type: !313, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !571, line: 121, type: !141, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !571, line: 123, type: !313, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !571, line: 126, type: !156, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !570, file: !571, line: 55, type: !215, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !585, file: !586, line: 66, type: !637, isLocal: false, isDefinition: true)
!585 = distinct !DICompileUnit(language: DW_LANG_C11, file: !586, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !587, globals: !588, splitDebugInlining: false, nameTableKind: None)
!586 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!587 = !{!98, !107}
!588 = !{!589, !591, !616, !618, !620, !622, !583, !624, !626, !628, !630, !635}
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !586, line: 272, type: !131, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(name: "old_file_name", scope: !593, file: !586, line: 304, type: !101, isLocal: true, isDefinition: true)
!593 = distinct !DISubprogram(name: "verror_at_line", scope: !586, file: !586, line: 298, type: !594, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !609)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !57, !57, !101, !69, !101, !596}
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !597, line: 52, baseType: !598)
!597 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !599, line: 14, baseType: !600)
!599 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !601, baseType: !602)
!601 = !DIFile(filename: "lib/error.c", directory: "/src")
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !603)
!603 = !{!604, !605, !606, !607, !608}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !602, file: !601, baseType: !98, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !602, file: !601, baseType: !98, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !602, file: !601, baseType: !98, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !602, file: !601, baseType: !57, size: 32, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !602, file: !601, baseType: !57, size: 32, offset: 224)
!609 = !{!610, !611, !612, !613, !614, !615}
!610 = !DILocalVariable(name: "status", arg: 1, scope: !593, file: !586, line: 298, type: !57)
!611 = !DILocalVariable(name: "errnum", arg: 2, scope: !593, file: !586, line: 298, type: !57)
!612 = !DILocalVariable(name: "file_name", arg: 3, scope: !593, file: !586, line: 298, type: !101)
!613 = !DILocalVariable(name: "line_number", arg: 4, scope: !593, file: !586, line: 298, type: !69)
!614 = !DILocalVariable(name: "message", arg: 5, scope: !593, file: !586, line: 298, type: !101)
!615 = !DILocalVariable(name: "args", arg: 6, scope: !593, file: !586, line: 298, type: !596)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(name: "old_line_number", scope: !593, file: !586, line: 305, type: !69, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !586, line: 338, type: !19, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !586, line: 346, type: !318, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !586, line: 346, type: !111, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(name: "error_message_count", scope: !585, file: !586, line: 69, type: !69, isLocal: false, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !585, file: !586, line: 295, type: !57, isLocal: false, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !586, line: 208, type: !313, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !586, line: 208, type: !632, isLocal: true, isDefinition: true)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !633)
!633 = !{!634}
!634 = !DISubrange(count: 21)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !586, line: 214, type: !131, isLocal: true, isDefinition: true)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{null}
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(name: "program_name", scope: !642, file: !643, line: 31, type: !101, isLocal: false, isDefinition: true)
!642 = distinct !DICompileUnit(language: DW_LANG_C11, file: !643, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !644, globals: !645, splitDebugInlining: false, nameTableKind: None)
!643 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!644 = !{!59}
!645 = !{!640, !646, !648}
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !643, line: 46, type: !318, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !643, line: 49, type: !19, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(name: "utf07FF", scope: !652, file: !653, line: 46, type: !680, isLocal: true, isDefinition: true)
!652 = distinct !DISubprogram(name: "proper_name_lite", scope: !653, file: !653, line: 38, type: !654, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !658)
!653 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!654 = !DISubroutineType(types: !655)
!655 = !{!101, !101, !101}
!656 = distinct !DICompileUnit(language: DW_LANG_C11, file: !653, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !657, splitDebugInlining: false, nameTableKind: None)
!657 = !{!650}
!658 = !{!659, !660, !661, !662, !667}
!659 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !652, file: !653, line: 38, type: !101)
!660 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !652, file: !653, line: 38, type: !101)
!661 = !DILocalVariable(name: "translation", scope: !652, file: !653, line: 40, type: !101)
!662 = !DILocalVariable(name: "w", scope: !652, file: !653, line: 47, type: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !664, line: 37, baseType: !665)
!664 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !255, line: 57, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !255, line: 42, baseType: !69)
!667 = !DILocalVariable(name: "mbs", scope: !652, file: !653, line: 48, type: !668)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !669, line: 6, baseType: !670)
!669 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !671, line: 21, baseType: !672)
!671 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !671, line: 13, size: 64, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !672, file: !671, line: 15, baseType: !57, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !672, file: !671, line: 20, baseType: !676, size: 32, offset: 32)
!676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !672, file: !671, line: 16, size: 32, elements: !677)
!677 = !{!678, !679}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !676, file: !671, line: 18, baseType: !69, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !676, file: !671, line: 19, baseType: !19, size: 32)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 16, elements: !112)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !683, line: 78, type: !318, isLocal: true, isDefinition: true)
!683 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !683, line: 79, type: !294, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !683, line: 80, type: !688, isLocal: true, isDefinition: true)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 13)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !683, line: 81, type: !688, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !683, line: 82, type: !277, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !683, line: 83, type: !111, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !683, line: 84, type: !318, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !683, line: 85, type: !313, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !683, line: 86, type: !313, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !683, line: 87, type: !318, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !707, file: !683, line: 76, type: !776, isLocal: false, isDefinition: true)
!707 = distinct !DICompileUnit(language: DW_LANG_C11, file: !683, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !708, retainedTypes: !714, globals: !715, splitDebugInlining: false, nameTableKind: None)
!708 = !{!83, !709, !67}
!709 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !84, line: 254, baseType: !69, size: 32, elements: !710)
!710 = !{!711, !712, !713}
!711 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!712 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!713 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!714 = !{!57, !103, !104}
!715 = !{!681, !684, !686, !691, !693, !695, !697, !699, !701, !703, !705, !716, !720, !730, !732, !734, !736, !738, !740, !742, !765, !772, !774}
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !707, file: !683, line: 92, type: !718, isLocal: false, isDefinition: true)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 320, elements: !122)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !707, file: !683, line: 1040, type: !722, isLocal: false, isDefinition: true)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !683, line: 56, size: 448, elements: !723)
!723 = !{!724, !725, !726, !728, !729}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !722, file: !683, line: 59, baseType: !83, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !722, file: !683, line: 62, baseType: !57, size: 32, offset: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !722, file: !683, line: 66, baseType: !727, size: 256, offset: 64)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !319)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !722, file: !683, line: 69, baseType: !101, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !722, file: !683, line: 72, baseType: !101, size: 64, offset: 384)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !707, file: !683, line: 107, type: !722, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(name: "slot0", scope: !707, file: !683, line: 831, type: !193, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !683, line: 321, type: !111, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !683, line: 357, type: !111, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !683, line: 358, type: !111, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !683, line: 199, type: !313, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(name: "quote", scope: !744, file: !683, line: 228, type: !763, isLocal: true, isDefinition: true)
!744 = distinct !DISubprogram(name: "gettext_quote", scope: !683, file: !683, line: 197, type: !745, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !747)
!745 = !DISubroutineType(types: !746)
!746 = !{!101, !101, !83}
!747 = !{!748, !749, !750, !751, !752}
!748 = !DILocalVariable(name: "msgid", arg: 1, scope: !744, file: !683, line: 197, type: !101)
!749 = !DILocalVariable(name: "s", arg: 2, scope: !744, file: !683, line: 197, type: !83)
!750 = !DILocalVariable(name: "translation", scope: !744, file: !683, line: 199, type: !101)
!751 = !DILocalVariable(name: "w", scope: !744, file: !683, line: 229, type: !663)
!752 = !DILocalVariable(name: "mbs", scope: !744, file: !683, line: 230, type: !753)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !669, line: 6, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !671, line: 21, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !671, line: 13, size: 64, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !755, file: !671, line: 15, baseType: !57, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !755, file: !671, line: 20, baseType: !759, size: 32, offset: 32)
!759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !671, line: 16, size: 32, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !759, file: !671, line: 18, baseType: !69, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !759, file: !671, line: 19, baseType: !19, size: 32)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !764)
!764 = !{!113, !21}
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(name: "slotvec", scope: !707, file: !683, line: 834, type: !767, isLocal: true, isDefinition: true)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !683, line: 823, size: 128, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !768, file: !683, line: 825, baseType: !104, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !768, file: !683, line: 826, baseType: !59, size: 64, offset: 64)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(name: "nslots", scope: !707, file: !683, line: 832, type: !57, isLocal: true, isDefinition: true)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(name: "slotvec0", scope: !707, file: !683, line: 833, type: !768, isLocal: true, isDefinition: true)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 704, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 11)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !781, line: 98, type: !131, isLocal: true, isDefinition: true)
!781 = !DIFile(filename: "lib/tmpdir.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6bb1205c798131b3318a3c96a85b8877")
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(scope: null, file: !781, line: 110, type: !313, isLocal: true, isDefinition: true)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !781, line: 132, type: !131, isLocal: true, isDefinition: true)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(scope: null, file: !781, line: 160, type: !141, isLocal: true, isDefinition: true)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !790, line: 67, type: !141, isLocal: true, isDefinition: true)
!790 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(scope: null, file: !790, line: 69, type: !313, isLocal: true, isDefinition: true)
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(scope: null, file: !790, line: 83, type: !313, isLocal: true, isDefinition: true)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(scope: null, file: !790, line: 83, type: !19, isLocal: true, isDefinition: true)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(scope: null, file: !790, line: 85, type: !111, isLocal: true, isDefinition: true)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !790, line: 88, type: !801, isLocal: true, isDefinition: true)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !802)
!802 = !{!803}
!803 = !DISubrange(count: 171)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !790, line: 88, type: !806, isLocal: true, isDefinition: true)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !807)
!807 = !{!808}
!808 = !DISubrange(count: 34)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !790, line: 105, type: !146, isLocal: true, isDefinition: true)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(scope: null, file: !790, line: 109, type: !813, isLocal: true, isDefinition: true)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 23)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !790, line: 113, type: !818, isLocal: true, isDefinition: true)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 28)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(scope: null, file: !790, line: 120, type: !823, isLocal: true, isDefinition: true)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !824)
!824 = !{!825}
!825 = !DISubrange(count: 32)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(scope: null, file: !790, line: 127, type: !828, isLocal: true, isDefinition: true)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !829)
!829 = !{!830}
!830 = !DISubrange(count: 36)
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(scope: null, file: !790, line: 134, type: !340, isLocal: true, isDefinition: true)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(scope: null, file: !790, line: 142, type: !835, isLocal: true, isDefinition: true)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !836)
!836 = !{!837}
!837 = !DISubrange(count: 44)
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(scope: null, file: !790, line: 150, type: !840, isLocal: true, isDefinition: true)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !841)
!841 = !{!842}
!842 = !DISubrange(count: 48)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(scope: null, file: !790, line: 159, type: !845, isLocal: true, isDefinition: true)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !846)
!846 = !{!847}
!847 = !DISubrange(count: 52)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(scope: null, file: !790, line: 170, type: !850, isLocal: true, isDefinition: true)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !851)
!851 = !{!852}
!852 = !DISubrange(count: 60)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(scope: null, file: !790, line: 248, type: !277, isLocal: true, isDefinition: true)
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(scope: null, file: !790, line: 248, type: !365, isLocal: true, isDefinition: true)
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression())
!858 = distinct !DIGlobalVariable(scope: null, file: !790, line: 254, type: !277, isLocal: true, isDefinition: true)
!859 = !DIGlobalVariableExpression(var: !860, expr: !DIExpression())
!860 = distinct !DIGlobalVariable(scope: null, file: !790, line: 254, type: !136, isLocal: true, isDefinition: true)
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression())
!862 = distinct !DIGlobalVariable(scope: null, file: !790, line: 254, type: !340, isLocal: true, isDefinition: true)
!863 = !DIGlobalVariableExpression(var: !864, expr: !DIExpression())
!864 = distinct !DIGlobalVariable(scope: null, file: !790, line: 259, type: !3, isLocal: true, isDefinition: true)
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(scope: null, file: !790, line: 259, type: !867, isLocal: true, isDefinition: true)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !868)
!868 = !{!869}
!869 = !DISubrange(count: 29)
!870 = !DIGlobalVariableExpression(var: !871, expr: !DIExpression())
!871 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !872, file: !873, line: 26, type: !875, isLocal: false, isDefinition: true)
!872 = distinct !DICompileUnit(language: DW_LANG_C11, file: !873, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !874, splitDebugInlining: false, nameTableKind: None)
!873 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!874 = !{!870}
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 376, elements: !876)
!876 = !{!877}
!877 = !DISubrange(count: 47)
!878 = !DIGlobalVariableExpression(var: !879, expr: !DIExpression())
!879 = distinct !DIGlobalVariable(name: "exit_failure", scope: !880, file: !881, line: 24, type: !883, isLocal: false, isDefinition: true)
!880 = distinct !DICompileUnit(language: DW_LANG_C11, file: !881, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !882, splitDebugInlining: false, nameTableKind: None)
!881 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!882 = !{!878}
!883 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !57)
!884 = !DIGlobalVariableExpression(var: !885, expr: !DIExpression())
!885 = distinct !DIGlobalVariable(scope: null, file: !886, line: 34, type: !156, isLocal: true, isDefinition: true)
!886 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression())
!888 = distinct !DIGlobalVariable(scope: null, file: !886, line: 34, type: !313, isLocal: true, isDefinition: true)
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression())
!890 = distinct !DIGlobalVariable(scope: null, file: !886, line: 34, type: !335, isLocal: true, isDefinition: true)
!891 = !DIGlobalVariableExpression(var: !892, expr: !DIExpression())
!892 = distinct !DIGlobalVariable(scope: null, file: !893, line: 108, type: !116, isLocal: true, isDefinition: true)
!893 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!894 = !DIGlobalVariableExpression(var: !895, expr: !DIExpression())
!895 = distinct !DIGlobalVariable(name: "internal_state", scope: !896, file: !893, line: 97, type: !899, isLocal: true, isDefinition: true)
!896 = distinct !DICompileUnit(language: DW_LANG_C11, file: !893, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !897, globals: !898, splitDebugInlining: false, nameTableKind: None)
!897 = !{!98, !104, !107}
!898 = !{!891, !894}
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !669, line: 6, baseType: !900)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !671, line: 21, baseType: !901)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !671, line: 13, size: 64, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !901, file: !671, line: 15, baseType: !57, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !901, file: !671, line: 20, baseType: !905, size: 32, offset: 32)
!905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !901, file: !671, line: 16, size: 32, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !905, file: !671, line: 18, baseType: !69, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !905, file: !671, line: 19, baseType: !19, size: 32)
!909 = !DIGlobalVariableExpression(var: !910, expr: !DIExpression())
!910 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !911, file: !912, line: 506, type: !57, isLocal: true, isDefinition: true)
!911 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !912, file: !912, line: 485, type: !913, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !917)
!912 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!913 = !DISubroutineType(types: !914)
!914 = !{!57, !57, !57}
!915 = distinct !DICompileUnit(language: DW_LANG_C11, file: !912, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !916, splitDebugInlining: false, nameTableKind: None)
!916 = !{!909}
!917 = !{!918, !919, !920, !921, !924}
!918 = !DILocalVariable(name: "fd", arg: 1, scope: !911, file: !912, line: 485, type: !57)
!919 = !DILocalVariable(name: "target", arg: 2, scope: !911, file: !912, line: 485, type: !57)
!920 = !DILocalVariable(name: "result", scope: !911, file: !912, line: 487, type: !57)
!921 = !DILocalVariable(name: "flags", scope: !922, file: !912, line: 530, type: !57)
!922 = distinct !DILexicalBlock(scope: !923, file: !912, line: 529, column: 5)
!923 = distinct !DILexicalBlock(scope: !911, file: !912, line: 528, column: 7)
!924 = !DILocalVariable(name: "saved_errno", scope: !925, file: !912, line: 533, type: !57)
!925 = distinct !DILexicalBlock(scope: !926, file: !912, line: 532, column: 9)
!926 = distinct !DILexicalBlock(scope: !922, file: !912, line: 531, column: 11)
!927 = !DIGlobalVariableExpression(var: !928, expr: !DIExpression())
!928 = distinct !DIGlobalVariable(scope: null, file: !929, line: 35, type: !111, isLocal: true, isDefinition: true)
!929 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!930 = !DIGlobalVariableExpression(var: !931, expr: !DIExpression())
!931 = distinct !DIGlobalVariable(scope: null, file: !929, line: 35, type: !294, isLocal: true, isDefinition: true)
!932 = distinct !DICompileUnit(language: DW_LANG_C11, file: !933, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!933 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!934 = distinct !DICompileUnit(language: DW_LANG_C11, file: !935, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !531, splitDebugInlining: false, nameTableKind: None)
!935 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!936 = distinct !DICompileUnit(language: DW_LANG_C11, file: !937, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !644, splitDebugInlining: false, nameTableKind: None)
!937 = !DIFile(filename: "lib/full-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "717d8293e026c44a771a83b22da54cc2")
!938 = distinct !DICompileUnit(language: DW_LANG_C11, file: !939, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!939 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!940 = distinct !DICompileUnit(language: DW_LANG_C11, file: !941, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !942, retainedTypes: !947, splitDebugInlining: false, nameTableKind: None)
!941 = !DIFile(filename: "lib/safe-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "434e548fbeff241cc07e1dbcc7b4611f")
!942 = !{!943}
!943 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !944, line: 36, baseType: !69, size: 32, elements: !945)
!944 = !DIFile(filename: "./lib/sys-limits.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6cbf2bea168df2a7bb951ccec5cf6fff")
!945 = !{!946}
!946 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072)
!947 = !{!104}
!948 = distinct !DICompileUnit(language: DW_LANG_C11, file: !949, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!949 = !DIFile(filename: "lib/mkstemp-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c54cf13a93f038494ed7ea783050e30c")
!950 = distinct !DICompileUnit(language: DW_LANG_C11, file: !781, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !951, globals: !952, splitDebugInlining: false, nameTableKind: None)
!951 = !{!98, !57}
!952 = !{!779, !782, !784, !786}
!953 = distinct !DICompileUnit(language: DW_LANG_C11, file: !954, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!954 = !DIFile(filename: "lib/fd-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12c3310fb811f6ed0e0fb7e99c1b995b")
!955 = distinct !DICompileUnit(language: DW_LANG_C11, file: !790, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !956, retainedTypes: !531, globals: !960, splitDebugInlining: false, nameTableKind: None)
!956 = !{!957}
!957 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !790, line: 40, baseType: !69, size: 32, elements: !958)
!958 = !{!959}
!959 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!960 = !{!788, !791, !793, !795, !797, !799, !804, !809, !811, !816, !821, !826, !831, !833, !838, !843, !848, !853, !855, !857, !859, !861, !863, !865}
!961 = distinct !DICompileUnit(language: DW_LANG_C11, file: !962, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !963, retainedTypes: !994, splitDebugInlining: false, nameTableKind: None)
!962 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!963 = !{!964, !976}
!964 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !965, file: !962, line: 188, baseType: !69, size: 32, elements: !974)
!965 = distinct !DISubprogram(name: "x2nrealloc", scope: !962, file: !962, line: 176, type: !966, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !969)
!966 = !DISubroutineType(types: !967)
!967 = !{!98, !98, !968, !104}
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!969 = !{!970, !971, !972, !973}
!970 = !DILocalVariable(name: "p", arg: 1, scope: !965, file: !962, line: 176, type: !98)
!971 = !DILocalVariable(name: "pn", arg: 2, scope: !965, file: !962, line: 176, type: !968)
!972 = !DILocalVariable(name: "s", arg: 3, scope: !965, file: !962, line: 176, type: !104)
!973 = !DILocalVariable(name: "n", scope: !965, file: !962, line: 178, type: !104)
!974 = !{!975}
!975 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!976 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !977, file: !962, line: 228, baseType: !69, size: 32, elements: !974)
!977 = distinct !DISubprogram(name: "xpalloc", scope: !962, file: !962, line: 223, type: !978, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !984)
!978 = !DISubroutineType(types: !979)
!979 = !{!98, !98, !980, !981, !983, !981}
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !982, line: 130, baseType: !983)
!982 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !105, line: 35, baseType: !256)
!984 = !{!985, !986, !987, !988, !989, !990, !991, !992, !993}
!985 = !DILocalVariable(name: "pa", arg: 1, scope: !977, file: !962, line: 223, type: !98)
!986 = !DILocalVariable(name: "pn", arg: 2, scope: !977, file: !962, line: 223, type: !980)
!987 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !977, file: !962, line: 223, type: !981)
!988 = !DILocalVariable(name: "n_max", arg: 4, scope: !977, file: !962, line: 223, type: !983)
!989 = !DILocalVariable(name: "s", arg: 5, scope: !977, file: !962, line: 223, type: !981)
!990 = !DILocalVariable(name: "n0", scope: !977, file: !962, line: 230, type: !981)
!991 = !DILocalVariable(name: "n", scope: !977, file: !962, line: 237, type: !981)
!992 = !DILocalVariable(name: "nbytes", scope: !977, file: !962, line: 248, type: !981)
!993 = !DILocalVariable(name: "adjusted_nbytes", scope: !977, file: !962, line: 252, type: !981)
!994 = !{!59, !98, !215, !256, !106}
!995 = distinct !DICompileUnit(language: DW_LANG_C11, file: !886, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !996, splitDebugInlining: false, nameTableKind: None)
!996 = !{!884, !887, !889}
!997 = distinct !DICompileUnit(language: DW_LANG_C11, file: !998, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!998 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!999 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1000, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1000 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!1001 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1002, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1002 = !DIFile(filename: "lib/fd-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "63ab878cf4b441e9798f87a8e3963108")
!1003 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1004, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1004 = !DIFile(filename: "lib/dup-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad0f64dd333db5cafacb6809a74d5848")
!1005 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1006, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !531, splitDebugInlining: false, nameTableKind: None)
!1006 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1007 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1008, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1009, splitDebugInlining: false, nameTableKind: None)
!1008 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1009 = !{!215, !106, !98}
!1010 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1011, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1011 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!1012 = distinct !DICompileUnit(language: DW_LANG_C11, file: !929, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1013, splitDebugInlining: false, nameTableKind: None)
!1013 = !{!927, !930}
!1014 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1015, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1015 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1016 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1017, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !531, splitDebugInlining: false, nameTableKind: None)
!1017 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1018 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!1019 = !{i32 7, !"Dwarf Version", i32 5}
!1020 = !{i32 2, !"Debug Info Version", i32 3}
!1021 = !{i32 1, !"wchar_size", i32 4}
!1022 = !{i32 8, !"PIC Level", i32 2}
!1023 = !{i32 7, !"PIE Level", i32 2}
!1024 = !{i32 7, !"uwtable", i32 2}
!1025 = !{i32 7, !"frame-pointer", i32 1}
!1026 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 112, type: !1027, scopeLine: 113, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1029)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !57}
!1029 = !{!1030}
!1030 = !DILocalVariable(name: "status", arg: 1, scope: !1026, file: !2, line: 112, type: !57)
!1031 = !DILocation(line: 0, scope: !1026)
!1032 = !DILocation(line: 114, column: 14, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 114, column: 7)
!1034 = !DILocation(line: 114, column: 7, scope: !1026)
!1035 = !DILocation(line: 115, column: 5, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1033, file: !2, line: 115, column: 5)
!1037 = !{!1038, !1038, i64 0}
!1038 = !{!"any pointer", !1039, i64 0}
!1039 = !{!"omnipotent char", !1040, i64 0}
!1040 = !{!"Simple C/C++ TBAA"}
!1041 = !DILocation(line: 118, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1033, file: !2, line: 117, column: 5)
!1043 = !DILocation(line: 122, column: 7, scope: !1042)
!1044 = !DILocation(line: 729, column: 3, scope: !1045, inlinedAt: !1047)
!1045 = distinct !DISubprogram(name: "emit_stdin_note", scope: !63, file: !63, line: 727, type: !638, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1046)
!1046 = !{}
!1047 = distinct !DILocation(line: 126, column: 7, scope: !1042)
!1048 = !DILocation(line: 736, column: 3, scope: !1049, inlinedAt: !1050)
!1049 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !63, file: !63, line: 734, type: !638, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1046)
!1050 = distinct !DILocation(line: 127, column: 7, scope: !1042)
!1051 = !DILocation(line: 129, column: 7, scope: !1042)
!1052 = !DILocation(line: 132, column: 7, scope: !1042)
!1053 = !DILocation(line: 135, column: 7, scope: !1042)
!1054 = !DILocation(line: 138, column: 7, scope: !1042)
!1055 = !DILocation(line: 139, column: 7, scope: !1042)
!1056 = !DILocation(line: 140, column: 7, scope: !1042)
!1057 = !DILocalVariable(name: "program", arg: 1, scope: !1058, file: !63, line: 836, type: !101)
!1058 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !63, file: !63, line: 836, type: !1059, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1061)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{null, !101}
!1061 = !{!1057, !1062, !1069, !1070, !1072, !1073}
!1062 = !DILocalVariable(name: "infomap", scope: !1058, file: !63, line: 838, type: !1063)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1064, size: 896, elements: !314)
!1064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1065)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1058, file: !63, line: 838, size: 128, elements: !1066)
!1066 = !{!1067, !1068}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1065, file: !63, line: 838, baseType: !101, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1065, file: !63, line: 838, baseType: !101, size: 64, offset: 64)
!1069 = !DILocalVariable(name: "node", scope: !1058, file: !63, line: 848, type: !101)
!1070 = !DILocalVariable(name: "map_prog", scope: !1058, file: !63, line: 849, type: !1071)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1072 = !DILocalVariable(name: "lc_messages", scope: !1058, file: !63, line: 861, type: !101)
!1073 = !DILocalVariable(name: "url_program", scope: !1058, file: !63, line: 874, type: !101)
!1074 = !DILocation(line: 0, scope: !1058, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 143, column: 7, scope: !1042)
!1076 = !DILocation(line: 857, column: 3, scope: !1058, inlinedAt: !1075)
!1077 = !DILocation(line: 861, column: 29, scope: !1058, inlinedAt: !1075)
!1078 = !DILocation(line: 862, column: 7, scope: !1079, inlinedAt: !1075)
!1079 = distinct !DILexicalBlock(scope: !1058, file: !63, line: 862, column: 7)
!1080 = !DILocation(line: 862, column: 19, scope: !1079, inlinedAt: !1075)
!1081 = !DILocation(line: 862, column: 22, scope: !1079, inlinedAt: !1075)
!1082 = !DILocation(line: 862, column: 7, scope: !1058, inlinedAt: !1075)
!1083 = !DILocation(line: 868, column: 7, scope: !1084, inlinedAt: !1075)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !63, line: 863, column: 5)
!1085 = !DILocation(line: 870, column: 5, scope: !1084, inlinedAt: !1075)
!1086 = !DILocation(line: 875, column: 3, scope: !1058, inlinedAt: !1075)
!1087 = !DILocation(line: 877, column: 3, scope: !1058, inlinedAt: !1075)
!1088 = !DILocation(line: 145, column: 3, scope: !1026)
!1089 = !DISubprogram(name: "dcgettext", scope: !1090, file: !1090, line: 51, type: !1091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1090 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!59, !101, !101, !57}
!1093 = !DISubprogram(name: "__fprintf_chk", scope: !1094, file: !1094, line: 93, type: !1095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1094 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!57, !1097, !57, !1098, null}
!1097 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !228)
!1098 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !101)
!1099 = !DISubprogram(name: "__printf_chk", scope: !1094, file: !1094, line: 95, type: !1100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!57, !57, !1098, null}
!1102 = !DISubprogram(name: "fputs_unlocked", scope: !597, file: !597, line: 691, type: !1103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!57, !1098, !1097}
!1105 = !DILocation(line: 0, scope: !205)
!1106 = !DILocation(line: 581, column: 7, scope: !213)
!1107 = !{!1108, !1108, i64 0}
!1108 = !{!"int", !1039, i64 0}
!1109 = !DILocation(line: 581, column: 19, scope: !213)
!1110 = !DILocation(line: 581, column: 7, scope: !205)
!1111 = !DILocation(line: 585, column: 26, scope: !212)
!1112 = !DILocation(line: 0, scope: !212)
!1113 = !DILocation(line: 586, column: 23, scope: !212)
!1114 = !DILocation(line: 586, column: 28, scope: !212)
!1115 = !DILocation(line: 586, column: 32, scope: !212)
!1116 = !{!1039, !1039, i64 0}
!1117 = !DILocation(line: 586, column: 38, scope: !212)
!1118 = !DILocalVariable(name: "__s1", arg: 1, scope: !1119, file: !1120, line: 1359, type: !101)
!1119 = distinct !DISubprogram(name: "streq", scope: !1120, file: !1120, line: 1359, type: !1121, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1123)
!1120 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!215, !101, !101}
!1123 = !{!1118, !1124}
!1124 = !DILocalVariable(name: "__s2", arg: 2, scope: !1119, file: !1120, line: 1359, type: !101)
!1125 = !DILocation(line: 0, scope: !1119, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 586, column: 41, scope: !212)
!1127 = !DILocation(line: 1361, column: 11, scope: !1119, inlinedAt: !1126)
!1128 = !DILocation(line: 1361, column: 10, scope: !1119, inlinedAt: !1126)
!1129 = !DILocation(line: 586, column: 19, scope: !212)
!1130 = !DILocation(line: 587, column: 5, scope: !212)
!1131 = !DILocation(line: 588, column: 7, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !205, file: !63, line: 588, column: 7)
!1133 = !DILocation(line: 588, column: 7, scope: !205)
!1134 = !DILocation(line: 590, column: 7, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1132, file: !63, line: 589, column: 5)
!1136 = !DILocation(line: 591, column: 7, scope: !1135)
!1137 = !DILocation(line: 595, column: 37, scope: !205)
!1138 = !DILocation(line: 595, column: 35, scope: !205)
!1139 = !DILocation(line: 596, column: 29, scope: !205)
!1140 = !DILocation(line: 597, column: 8, scope: !221)
!1141 = !DILocation(line: 597, column: 7, scope: !205)
!1142 = !DILocation(line: 604, column: 24, scope: !220)
!1143 = !DILocation(line: 604, column: 12, scope: !221)
!1144 = !DILocation(line: 0, scope: !219)
!1145 = !DILocation(line: 610, column: 16, scope: !219)
!1146 = !DILocation(line: 610, column: 7, scope: !219)
!1147 = !DILocation(line: 611, column: 21, scope: !219)
!1148 = !{!1149, !1149, i64 0}
!1149 = !{!"short", !1039, i64 0}
!1150 = !DILocation(line: 611, column: 19, scope: !219)
!1151 = !DILocation(line: 611, column: 16, scope: !219)
!1152 = !DILocation(line: 610, column: 30, scope: !219)
!1153 = distinct !{!1153, !1146, !1147, !1154}
!1154 = !{!"llvm.loop.mustprogress"}
!1155 = !DILocation(line: 612, column: 18, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !219, file: !63, line: 612, column: 11)
!1157 = !DILocation(line: 612, column: 11, scope: !219)
!1158 = !DILocation(line: 620, column: 23, scope: !205)
!1159 = !DILocation(line: 625, column: 39, scope: !205)
!1160 = !DILocation(line: 626, column: 3, scope: !205)
!1161 = !DILocation(line: 626, column: 10, scope: !205)
!1162 = !DILocation(line: 626, column: 21, scope: !205)
!1163 = !DILocation(line: 628, column: 44, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !63, line: 628, column: 11)
!1165 = distinct !DILexicalBlock(scope: !205, file: !63, line: 627, column: 5)
!1166 = !DILocation(line: 628, column: 32, scope: !1164)
!1167 = !DILocation(line: 628, column: 49, scope: !1164)
!1168 = !DILocation(line: 628, column: 11, scope: !1165)
!1169 = !DILocation(line: 630, column: 11, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1165, file: !63, line: 630, column: 11)
!1171 = !DILocation(line: 630, column: 11, scope: !1165)
!1172 = !DILocation(line: 632, column: 26, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !63, line: 632, column: 15)
!1174 = distinct !DILexicalBlock(scope: !1170, file: !63, line: 631, column: 9)
!1175 = !DILocation(line: 632, column: 34, scope: !1173)
!1176 = !DILocation(line: 632, column: 37, scope: !1173)
!1177 = !DILocation(line: 632, column: 15, scope: !1174)
!1178 = !DILocation(line: 640, column: 16, scope: !1165)
!1179 = distinct !{!1179, !1160, !1180, !1154}
!1180 = !DILocation(line: 641, column: 5, scope: !205)
!1181 = !DILocation(line: 644, column: 3, scope: !205)
!1182 = !DILocation(line: 0, scope: !1119, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 648, column: 31, scope: !205)
!1184 = !DILocation(line: 0, scope: !1119, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 649, column: 31, scope: !205)
!1186 = !DILocation(line: 0, scope: !1119, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 650, column: 31, scope: !205)
!1188 = !DILocation(line: 0, scope: !1119, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 651, column: 31, scope: !205)
!1190 = !DILocation(line: 0, scope: !1119, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 652, column: 31, scope: !205)
!1192 = !DILocation(line: 0, scope: !1119, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 653, column: 31, scope: !205)
!1194 = !DILocation(line: 0, scope: !1119, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 654, column: 31, scope: !205)
!1196 = !DILocation(line: 0, scope: !1119, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 655, column: 31, scope: !205)
!1198 = !DILocation(line: 0, scope: !1119, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 656, column: 31, scope: !205)
!1200 = !DILocation(line: 0, scope: !1119, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 657, column: 31, scope: !205)
!1202 = !DILocation(line: 663, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !205, file: !63, line: 663, column: 7)
!1204 = !DILocation(line: 664, column: 7, scope: !1203)
!1205 = !DILocation(line: 664, column: 10, scope: !1203)
!1206 = !DILocation(line: 663, column: 7, scope: !205)
!1207 = !DILocation(line: 669, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1203, file: !63, line: 665, column: 5)
!1209 = !DILocation(line: 671, column: 5, scope: !1208)
!1210 = !DILocation(line: 676, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1203, file: !63, line: 673, column: 5)
!1212 = !DILocation(line: 679, column: 3, scope: !205)
!1213 = !DILocation(line: 683, column: 3, scope: !205)
!1214 = !DILocation(line: 686, column: 3, scope: !205)
!1215 = !DILocation(line: 688, column: 3, scope: !205)
!1216 = !DILocation(line: 691, column: 3, scope: !205)
!1217 = !DILocation(line: 695, column: 3, scope: !205)
!1218 = !DILocation(line: 696, column: 1, scope: !205)
!1219 = !DISubprogram(name: "setlocale", scope: !1220, file: !1220, line: 122, type: !1221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1220 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!59, !57, !101}
!1223 = !DISubprogram(name: "strncmp", scope: !1224, file: !1224, line: 159, type: !1225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1224 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!57, !101, !101, !104}
!1227 = !DISubprogram(name: "exit", scope: !1228, file: !1228, line: 624, type: !1027, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1228 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1229 = !DISubprogram(name: "getenv", scope: !1228, file: !1228, line: 641, type: !1230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!59, !101}
!1232 = !DISubprogram(name: "strcmp", scope: !1224, file: !1224, line: 156, type: !1233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!57, !101, !101}
!1235 = !DISubprogram(name: "strspn", scope: !1224, file: !1224, line: 297, type: !1236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!106, !101, !101}
!1238 = !DISubprogram(name: "strchr", scope: !1224, file: !1224, line: 246, type: !1239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!59, !101, !57}
!1241 = !DISubprogram(name: "__ctype_b_loc", scope: !68, file: !68, line: 79, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!1244}
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1247 = !DISubprogram(name: "strcspn", scope: !1224, file: !1224, line: 293, type: !1236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1248 = !DISubprogram(name: "fwrite_unlocked", scope: !597, file: !597, line: 704, type: !1249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!104, !1251, !104, !104, !1097}
!1251 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1254 = !DILocation(line: 0, scope: !54)
!1255 = !DILocation(line: 502, column: 21, scope: !54)
!1256 = !DILocation(line: 502, column: 3, scope: !54)
!1257 = !DILocation(line: 503, column: 3, scope: !54)
!1258 = !DILocation(line: 504, column: 3, scope: !54)
!1259 = !DILocation(line: 505, column: 3, scope: !54)
!1260 = !DILocation(line: 507, column: 3, scope: !54)
!1261 = !DILocation(line: 509, column: 3, scope: !54)
!1262 = !DILocation(line: 509, column: 18, scope: !54)
!1263 = !DILocation(line: 514, column: 33, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 512, column: 9)
!1265 = distinct !DILexicalBlock(scope: !54, file: !2, line: 510, column: 5)
!1266 = !DILocation(line: 515, column: 11, scope: !1264)
!1267 = !DILocation(line: 517, column: 27, scope: !1264)
!1268 = !{!1269, !1269, i64 0}
!1269 = !{!"long", !1039, i64 0}
!1270 = !DILocation(line: 518, column: 11, scope: !1264)
!1271 = !DILocation(line: 520, column: 23, scope: !1264)
!1272 = !DILocation(line: 520, column: 21, scope: !1264)
!1273 = !DILocation(line: 521, column: 11, scope: !1264)
!1274 = distinct !{!1274, !1261, !1275, !1154}
!1275 = !DILocation(line: 527, column: 5, scope: !54)
!1276 = !DILocation(line: 522, column: 9, scope: !1264)
!1277 = !DILocation(line: 523, column: 9, scope: !1264)
!1278 = !DILocation(line: 525, column: 11, scope: !1264)
!1279 = !DILocation(line: 529, column: 7, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !54, file: !2, line: 529, column: 7)
!1281 = !DILocation(line: 529, column: 23, scope: !1280)
!1282 = !DILocation(line: 0, scope: !1280)
!1283 = !DILocation(line: 529, column: 7, scope: !54)
!1284 = !DILocation(line: 531, column: 11, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !2, line: 530, column: 5)
!1286 = !DILocation(line: 532, column: 9, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 531, column: 11)
!1288 = !DILocation(line: 535, column: 36, scope: !1285)
!1289 = !DILocation(line: 536, column: 34, scope: !1285)
!1290 = !{!1291, !1038, i64 32}
!1291 = !{!"re_pattern_buffer", !1038, i64 0, !1269, i64 8, !1269, i64 16, !1269, i64 24, !1038, i64 32, !1038, i64 40, !1269, i64 48, !1108, i64 56, !1108, i64 56, !1108, i64 56, !1108, i64 56, !1108, i64 56, !1108, i64 56, !1108, i64 56}
!1292 = !DILocation(line: 537, column: 36, scope: !1285)
!1293 = !{!1291, !1038, i64 40}
!1294 = !DILocation(line: 538, column: 54, scope: !1285)
!1295 = !DILocation(line: 538, column: 23, scope: !1285)
!1296 = !DILocation(line: 540, column: 11, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 540, column: 11)
!1298 = !DILocation(line: 540, column: 11, scope: !1285)
!1299 = !DILocation(line: 541, column: 9, scope: !1297)
!1300 = !DILocation(line: 544, column: 38, scope: !1280)
!1301 = !DILocation(line: 544, column: 51, scope: !1280)
!1302 = !DILocation(line: 544, column: 36, scope: !1280)
!1303 = !DILocation(line: 544, column: 18, scope: !1280)
!1304 = !DILocation(line: 547, column: 26, scope: !54)
!1305 = !DILocation(line: 547, column: 3, scope: !54)
!1306 = !DILocation(line: 549, column: 24, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 549, column: 11)
!1308 = distinct !DILexicalBlock(scope: !54, file: !2, line: 548, column: 5)
!1309 = !DILocation(line: 549, column: 11, scope: !1308)
!1310 = !DILocation(line: 550, column: 9, scope: !1307)
!1311 = !DILocation(line: 551, column: 17, scope: !1308)
!1312 = distinct !{!1312, !1305, !1313, !1154}
!1313 = !DILocation(line: 552, column: 5, scope: !54)
!1314 = !DILocation(line: 553, column: 32, scope: !54)
!1315 = !DILocation(line: 553, column: 50, scope: !54)
!1316 = !DILocation(line: 554, column: 21, scope: !54)
!1317 = !DILocation(line: 554, column: 17, scope: !54)
!1318 = !DILocation(line: 555, column: 20, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !54, file: !2, line: 555, column: 7)
!1320 = !DILocation(line: 555, column: 39, scope: !1319)
!1321 = !DILocation(line: 556, column: 5, scope: !1319)
!1322 = !DILocation(line: 557, column: 14, scope: !54)
!1323 = !DILocation(line: 558, column: 7, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !54, file: !2, line: 558, column: 7)
!1325 = !DILocation(line: 558, column: 7, scope: !54)
!1326 = !DILocation(line: 560, column: 25, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !2, line: 559, column: 5)
!1328 = !DILocation(line: 560, column: 56, scope: !1327)
!1329 = !DILocation(line: 560, column: 55, scope: !1327)
!1330 = !DILocation(line: 560, column: 52, scope: !1327)
!1331 = !DILocalVariable(name: "__dest", arg: 1, scope: !1332, file: !1333, line: 26, type: !1336)
!1332 = distinct !DISubprogram(name: "memcpy", scope: !1333, file: !1333, line: 26, type: !1334, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1337)
!1333 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!98, !1336, !1251, !104}
!1336 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!1337 = !{!1331, !1338, !1339}
!1338 = !DILocalVariable(name: "__src", arg: 2, scope: !1332, file: !1333, line: 26, type: !1251)
!1339 = !DILocalVariable(name: "__len", arg: 3, scope: !1332, file: !1333, line: 26, type: !104)
!1340 = !DILocation(line: 0, scope: !1332, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 560, column: 7, scope: !1327)
!1342 = !DILocation(line: 29, column: 10, scope: !1332, inlinedAt: !1341)
!1343 = !DILocation(line: 562, column: 5, scope: !1327)
!1344 = !DILocation(line: 0, scope: !1324)
!1345 = !DILocation(line: 568, column: 11, scope: !54)
!1346 = !DILocation(line: 568, column: 18, scope: !54)
!1347 = !DILocation(line: 0, scope: !483)
!1348 = !DILocation(line: 576, column: 24, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !483, file: !2, line: 576, column: 5)
!1350 = !DILocation(line: 576, column: 5, scope: !483)
!1351 = !DILocation(line: 581, column: 3, scope: !54)
!1352 = !DILocation(line: 583, column: 7, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !54, file: !2, line: 583, column: 7)
!1354 = !DILocation(line: 583, column: 23, scope: !1353)
!1355 = !DILocalVariable(name: "filename", arg: 1, scope: !1356, file: !2, line: 449, type: !101)
!1356 = distinct !DISubprogram(name: "tac_file", scope: !2, file: !2, line: 449, type: !1357, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1359)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!215, !101}
!1359 = !{!1355, !1360, !1361, !1363, !1364}
!1360 = !DILocalVariable(name: "ok", scope: !1356, file: !2, line: 451, type: !215)
!1361 = !DILocalVariable(name: "file_size", scope: !1356, file: !2, line: 452, type: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !597, line: 63, baseType: !254)
!1363 = !DILocalVariable(name: "fd", scope: !1356, file: !2, line: 453, type: !57)
!1364 = !DILocalVariable(name: "is_stdin", scope: !1356, file: !2, line: 454, type: !215)
!1365 = !DILocation(line: 0, scope: !1356, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 577, column: 13, scope: !1349)
!1367 = !DILocation(line: 0, scope: !1119, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 454, column: 19, scope: !1356, inlinedAt: !1366)
!1369 = !DILocation(line: 1361, column: 11, scope: !1119, inlinedAt: !1368)
!1370 = !DILocation(line: 1361, column: 10, scope: !1119, inlinedAt: !1368)
!1371 = !DILocation(line: 456, column: 7, scope: !1356, inlinedAt: !1366)
!1372 = !DILocation(line: 458, column: 23, scope: !1373, inlinedAt: !1366)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !2, line: 457, column: 5)
!1374 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 456, column: 7)
!1375 = !DILocation(line: 460, column: 18, scope: !1373, inlinedAt: !1366)
!1376 = !DILocation(line: 462, column: 5, scope: !1373, inlinedAt: !1366)
!1377 = !DILocation(line: 465, column: 12, scope: !1378, inlinedAt: !1366)
!1378 = distinct !DILexicalBlock(scope: !1374, file: !2, line: 464, column: 5)
!1379 = !DILocation(line: 466, column: 14, scope: !1380, inlinedAt: !1366)
!1380 = distinct !DILexicalBlock(scope: !1378, file: !2, line: 466, column: 11)
!1381 = !DILocation(line: 466, column: 11, scope: !1378, inlinedAt: !1366)
!1382 = !DILocation(line: 468, column: 11, scope: !1383, inlinedAt: !1366)
!1383 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 467, column: 9)
!1384 = !DILocation(line: 470, column: 11, scope: !1383, inlinedAt: !1366)
!1385 = !DILocation(line: 0, scope: !1374, inlinedAt: !1366)
!1386 = !DILocation(line: 474, column: 15, scope: !1356, inlinedAt: !1366)
!1387 = !DILocation(line: 476, column: 19, scope: !1356, inlinedAt: !1366)
!1388 = !DILocation(line: 476, column: 23, scope: !1356, inlinedAt: !1366)
!1389 = !DILocation(line: 476, column: 26, scope: !1356, inlinedAt: !1366)
!1390 = !DILocation(line: 476, column: 9, scope: !1356, inlinedAt: !1366)
!1391 = !DILocalVariable(name: "input_fd", arg: 1, scope: !1392, file: !2, line: 432, type: !57)
!1392 = distinct !DISubprogram(name: "tac_nonseekable", scope: !2, file: !2, line: 432, type: !1393, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1395)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!215, !57, !101}
!1395 = !{!1391, !1396, !1397, !1398, !1399, !1400}
!1396 = !DILocalVariable(name: "file", arg: 2, scope: !1392, file: !2, line: 432, type: !101)
!1397 = !DILocalVariable(name: "tmp_stream", scope: !1392, file: !2, line: 434, type: !228)
!1398 = !DILocalVariable(name: "tmp_file", scope: !1392, file: !2, line: 435, type: !59)
!1399 = !DILocalVariable(name: "bytes_copied", scope: !1392, file: !2, line: 436, type: !1362)
!1400 = !DILocalVariable(name: "ok", scope: !1392, file: !2, line: 440, type: !215)
!1401 = !DILocation(line: 0, scope: !1392, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 477, column: 11, scope: !1356, inlinedAt: !1366)
!1403 = !DILocalVariable(name: "g_tmp", arg: 1, scope: !1404, file: !2, line: 386, type: !1407)
!1404 = distinct !DISubprogram(name: "copy_to_temp", scope: !2, file: !2, line: 386, type: !1405, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1408)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!1362, !1407, !58, !57, !101}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!1408 = !{!1403, !1409, !1410, !1411, !1412, !1413, !1414, !1418, !1422, !1425, !1426}
!1409 = !DILocalVariable(name: "g_tempfile", arg: 2, scope: !1404, file: !2, line: 386, type: !58)
!1410 = !DILocalVariable(name: "input_fd", arg: 3, scope: !1404, file: !2, line: 386, type: !57)
!1411 = !DILocalVariable(name: "file", arg: 4, scope: !1404, file: !2, line: 386, type: !101)
!1412 = !DILocalVariable(name: "fp", scope: !1404, file: !2, line: 388, type: !228)
!1413 = !DILocalVariable(name: "file_name", scope: !1404, file: !2, line: 389, type: !59)
!1414 = !DILocalVariable(name: "bytes_copied", scope: !1404, file: !2, line: 390, type: !1415)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1416, line: 102, baseType: !1417)
!1416 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !255, line: 73, baseType: !106)
!1418 = !DILocalVariable(name: "bytes_read", scope: !1419, file: !2, line: 396, type: !1420)
!1419 = distinct !DILexicalBlock(scope: !1404, file: !2, line: 395, column: 5)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !597, line: 77, baseType: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !255, line: 194, baseType: !256)
!1422 = !DILocalVariable(name: "__ptr", scope: !1423, file: !2, line: 405, type: !101)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 405, column: 11)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 405, column: 11)
!1425 = !DILocalVariable(name: "__stream", scope: !1423, file: !2, line: 405, type: !228)
!1426 = !DILocalVariable(name: "__cnt", scope: !1423, file: !2, line: 405, type: !104)
!1427 = !DILocation(line: 0, scope: !1404, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 436, column: 24, scope: !1392, inlinedAt: !1402)
!1429 = !DILocation(line: 388, column: 3, scope: !1404, inlinedAt: !1428)
!1430 = !DILocation(line: 389, column: 3, scope: !1404, inlinedAt: !1428)
!1431 = !DILocation(line: 391, column: 8, scope: !1432, inlinedAt: !1428)
!1432 = distinct !DILexicalBlock(scope: !1404, file: !2, line: 391, column: 7)
!1433 = !DILocation(line: 391, column: 7, scope: !1404, inlinedAt: !1428)
!1434 = !DILocation(line: 396, column: 44, scope: !1419, inlinedAt: !1428)
!1435 = !DILocation(line: 396, column: 54, scope: !1419, inlinedAt: !1428)
!1436 = !DILocation(line: 396, column: 28, scope: !1419, inlinedAt: !1428)
!1437 = !DILocation(line: 0, scope: !1419, inlinedAt: !1428)
!1438 = !DILocation(line: 397, column: 22, scope: !1439, inlinedAt: !1428)
!1439 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 397, column: 11)
!1440 = !DILocation(line: 397, column: 11, scope: !1419, inlinedAt: !1428)
!1441 = !DILocation(line: 414, column: 20, scope: !1419, inlinedAt: !1428)
!1442 = !DILocation(line: 399, column: 22, scope: !1443, inlinedAt: !1428)
!1443 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 399, column: 11)
!1444 = !DILocation(line: 399, column: 11, scope: !1419, inlinedAt: !1428)
!1445 = !DILocation(line: 401, column: 11, scope: !1446, inlinedAt: !1428)
!1446 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 400, column: 9)
!1447 = !DILocation(line: 402, column: 11, scope: !1446, inlinedAt: !1428)
!1448 = !DILocation(line: 405, column: 11, scope: !1424, inlinedAt: !1428)
!1449 = !DILocation(line: 405, column: 48, scope: !1424, inlinedAt: !1428)
!1450 = !DILocation(line: 405, column: 11, scope: !1419, inlinedAt: !1428)
!1451 = !DILocation(line: 407, column: 11, scope: !1452, inlinedAt: !1428)
!1452 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 406, column: 9)
!1453 = !DILocation(line: 408, column: 11, scope: !1452, inlinedAt: !1428)
!1454 = !DILocation(line: 390, column: 13, scope: !1404, inlinedAt: !1428)
!1455 = !DILocation(line: 417, column: 7, scope: !1456, inlinedAt: !1428)
!1456 = distinct !DILexicalBlock(scope: !1404, file: !2, line: 417, column: 7)
!1457 = !DILocation(line: 417, column: 19, scope: !1456, inlinedAt: !1428)
!1458 = !DILocation(line: 417, column: 7, scope: !1404, inlinedAt: !1428)
!1459 = !DILocation(line: 419, column: 7, scope: !1460, inlinedAt: !1428)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 418, column: 5)
!1461 = !DILocation(line: 420, column: 7, scope: !1460, inlinedAt: !1428)
!1462 = !DILocation(line: 426, column: 1, scope: !1404, inlinedAt: !1428)
!1463 = !DILocation(line: 437, column: 7, scope: !1392, inlinedAt: !1402)
!1464 = !DILocation(line: 423, column: 12, scope: !1404, inlinedAt: !1428)
!1465 = !DILocation(line: 424, column: 17, scope: !1404, inlinedAt: !1428)
!1466 = !DILocation(line: 437, column: 20, scope: !1467, inlinedAt: !1402)
!1467 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 437, column: 7)
!1468 = !DILocation(line: 440, column: 27, scope: !1392, inlinedAt: !1402)
!1469 = !DILocation(line: 440, column: 13, scope: !1392, inlinedAt: !1402)
!1470 = !DILocation(line: 478, column: 11, scope: !1356, inlinedAt: !1366)
!1471 = !DILocation(line: 480, column: 17, scope: !1472, inlinedAt: !1366)
!1472 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 480, column: 7)
!1473 = !DILocation(line: 480, column: 20, scope: !1472, inlinedAt: !1366)
!1474 = !DILocation(line: 480, column: 31, scope: !1472, inlinedAt: !1366)
!1475 = !DILocation(line: 480, column: 7, scope: !1356, inlinedAt: !1366)
!1476 = !DILocation(line: 482, column: 7, scope: !1477, inlinedAt: !1366)
!1477 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 481, column: 5)
!1478 = !DILocation(line: 484, column: 5, scope: !1477, inlinedAt: !1366)
!1479 = !DILocation(line: 577, column: 10, scope: !1349)
!1480 = !DILocation(line: 576, column: 33, scope: !1349)
!1481 = distinct !{!1481, !1350, !1482, !1154}
!1482 = !DILocation(line: 577, column: 30, scope: !483)
!1483 = !DILocation(line: 583, column: 26, scope: !1353)
!1484 = !DILocation(line: 583, column: 47, scope: !1353)
!1485 = !DILocation(line: 583, column: 7, scope: !54)
!1486 = !DILocation(line: 585, column: 7, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 584, column: 5)
!1488 = !DILocation(line: 587, column: 5, scope: !1487)
!1489 = !DILocation(line: 589, column: 3, scope: !54)
!1490 = !DISubprogram(name: "bindtextdomain", scope: !1090, file: !1090, line: 86, type: !1491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!59, !101, !101}
!1493 = !DISubprogram(name: "textdomain", scope: !1090, file: !1090, line: 82, type: !1230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1494 = !DISubprogram(name: "atexit", scope: !1228, file: !1228, line: 602, type: !1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!57, !637}
!1497 = !DISubprogram(name: "getopt_long", scope: !404, file: !404, line: 66, type: !1498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!57, !57, !1500, !101, !1502, !409}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!1503 = !DISubprogram(name: "strlen", scope: !1224, file: !1224, line: 407, type: !1504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!106, !101}
!1506 = !DISubprogram(name: "re_compile_pattern", scope: !170, file: !170, line: 548, type: !1507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!101, !101, !104, !1509}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!1510 = !DILocation(line: 0, scope: !451)
!1511 = !DILocation(line: 157, column: 40, scope: !451)
!1512 = !DILocation(line: 159, column: 8, scope: !462)
!1513 = !DILocation(line: 159, column: 7, scope: !451)
!1514 = !DILocation(line: 157, column: 38, scope: !451)
!1515 = !DILocation(line: 156, column: 34, scope: !451)
!1516 = !DILocation(line: 168, column: 23, scope: !451)
!1517 = !DILocation(line: 168, column: 3, scope: !451)
!1518 = !DILocation(line: 170, column: 22, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !451, file: !2, line: 169, column: 5)
!1520 = !DILocation(line: 0, scope: !1332, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 170, column: 7, scope: !1519)
!1522 = !DILocation(line: 29, column: 10, scope: !1332, inlinedAt: !1521)
!1523 = !DILocation(line: 173, column: 11, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 173, column: 11)
!1525 = !DILocation(line: 173, column: 49, scope: !1524)
!1526 = !DILocation(line: 173, column: 11, scope: !1519)
!1527 = !DILocation(line: 172, column: 13, scope: !1519)
!1528 = !DILocation(line: 171, column: 20, scope: !1519)
!1529 = !DILocation(line: 175, column: 23, scope: !1519)
!1530 = !DILocation(line: 161, column: 11, scope: !460)
!1531 = !DILocation(line: 161, column: 58, scope: !460)
!1532 = !DILocation(line: 161, column: 55, scope: !460)
!1533 = !DILocation(line: 161, column: 11, scope: !461)
!1534 = !DILocation(line: 948, column: 21, scope: !1535, inlinedAt: !1538)
!1535 = distinct !DISubprogram(name: "write_error", scope: !63, file: !63, line: 946, type: !638, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1536)
!1536 = !{!1537}
!1537 = !DILocalVariable(name: "saved_errno", scope: !1535, file: !63, line: 948, type: !57)
!1538 = distinct !DILocation(line: 162, column: 9, scope: !460)
!1539 = !DILocation(line: 0, scope: !1535, inlinedAt: !1538)
!1540 = !DILocation(line: 949, column: 3, scope: !1535, inlinedAt: !1538)
!1541 = !DILocation(line: 950, column: 11, scope: !1535, inlinedAt: !1538)
!1542 = !DILocation(line: 950, column: 3, scope: !1535, inlinedAt: !1538)
!1543 = !DILocation(line: 951, column: 3, scope: !1535, inlinedAt: !1538)
!1544 = !DILocation(line: 952, column: 3, scope: !1535, inlinedAt: !1538)
!1545 = !DILocation(line: 948, column: 21, scope: !1535, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 174, column: 9, scope: !1524)
!1547 = !DILocation(line: 0, scope: !1535, inlinedAt: !1546)
!1548 = !DILocation(line: 949, column: 3, scope: !1535, inlinedAt: !1546)
!1549 = !DILocation(line: 950, column: 11, scope: !1535, inlinedAt: !1546)
!1550 = !DILocation(line: 950, column: 3, scope: !1535, inlinedAt: !1546)
!1551 = !DILocation(line: 951, column: 3, scope: !1535, inlinedAt: !1546)
!1552 = !DILocation(line: 952, column: 3, scope: !1535, inlinedAt: !1546)
!1553 = distinct !{!1553, !1517, !1554, !1154, !1555}
!1554 = !DILocation(line: 177, column: 5, scope: !451)
!1555 = !{!"llvm.loop.peeled.count", i32 1}
!1556 = !DILocation(line: 179, column: 20, scope: !451)
!1557 = !DILocation(line: 179, column: 18, scope: !451)
!1558 = !DILocation(line: 0, scope: !1332, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 179, column: 3, scope: !451)
!1560 = !DILocation(line: 29, column: 10, scope: !1332, inlinedAt: !1559)
!1561 = !DILocation(line: 180, column: 19, scope: !451)
!1562 = !DILocation(line: 181, column: 1, scope: !451)
!1563 = !DISubprogram(name: "open", scope: !1564, file: !1564, line: 181, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1564 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!57, !101, !57, null}
!1567 = !DISubprogram(name: "__errno_location", scope: !1568, file: !1568, line: 37, type: !1569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1568 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!409}
!1571 = !DISubprogram(name: "lseek", scope: !1572, file: !1572, line: 339, type: !1573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1572 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!254, !57, !254, !57}
!1575 = !DISubprogram(name: "isatty", scope: !1572, file: !1572, line: 809, type: !1576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!57, !57}
!1578 = !DISubprogram(name: "fflush_unlocked", scope: !597, file: !597, line: 239, type: !1579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!57, !228}
!1581 = !DISubprogram(name: "fileno_unlocked", scope: !597, file: !597, line: 814, type: !1579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1582 = distinct !DISubprogram(name: "tac_seekable", scope: !2, file: !2, line: 188, type: !1583, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1585)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!215, !57, !101, !1362}
!1585 = !{!1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1599, !1601, !1605, !1606, !1607, !1608, !1613, !1614, !1615}
!1586 = !DILocalVariable(name: "input_fd", arg: 1, scope: !1582, file: !2, line: 188, type: !57)
!1587 = !DILocalVariable(name: "file", arg: 2, scope: !1582, file: !2, line: 188, type: !101)
!1588 = !DILocalVariable(name: "file_pos", arg: 3, scope: !1582, file: !2, line: 188, type: !1362)
!1589 = !DILocalVariable(name: "match_start", scope: !1582, file: !2, line: 192, type: !59)
!1590 = !DILocalVariable(name: "past_end", scope: !1582, file: !2, line: 196, type: !59)
!1591 = !DILocalVariable(name: "saved_record_size", scope: !1582, file: !2, line: 199, type: !983)
!1592 = !DILocalVariable(name: "first_time", scope: !1582, file: !2, line: 203, type: !215)
!1593 = !DILocalVariable(name: "first_char", scope: !1582, file: !2, line: 204, type: !4)
!1594 = !DILocalVariable(name: "separator1", scope: !1582, file: !2, line: 205, type: !101)
!1595 = !DILocalVariable(name: "match_length1", scope: !1582, file: !2, line: 206, type: !104)
!1596 = !DILocalVariable(name: "remainder", scope: !1582, file: !2, line: 213, type: !104)
!1597 = !DILocalVariable(name: "rsize", scope: !1598, file: !2, line: 226, type: !1362)
!1598 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 225, column: 5)
!1599 = !DILocalVariable(name: "nread", scope: !1600, file: !2, line: 235, type: !1420)
!1600 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 234, column: 5)
!1601 = !DILocalVariable(name: "i", scope: !1602, file: !2, line: 265, type: !104)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !2, line: 264, column: 9)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !2, line: 263, column: 11)
!1604 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 256, column: 5)
!1605 = !DILocalVariable(name: "ri", scope: !1602, file: !2, line: 266, type: !447)
!1606 = !DILocalVariable(name: "range", scope: !1602, file: !2, line: 267, type: !447)
!1607 = !DILocalVariable(name: "ret", scope: !1602, file: !2, line: 268, type: !447)
!1608 = !DILocalVariable(name: "newbuffer", scope: !1609, file: !2, line: 314, type: !59)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !2, line: 309, column: 13)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 308, column: 15)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 299, column: 9)
!1612 = distinct !DILexicalBlock(scope: !1604, file: !2, line: 298, column: 11)
!1613 = !DILocalVariable(name: "offset", scope: !1609, file: !2, line: 315, type: !104)
!1614 = !DILocalVariable(name: "old_G_buffer_size", scope: !1609, file: !2, line: 316, type: !104)
!1615 = !DILocalVariable(name: "match_end", scope: !1616, file: !2, line: 359, type: !59)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !2, line: 358, column: 13)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !2, line: 357, column: 15)
!1618 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 355, column: 9)
!1619 = !DILocation(line: 0, scope: !1582)
!1620 = !DILocation(line: 204, column: 22, scope: !1582)
!1621 = !DILocation(line: 204, column: 21, scope: !1582)
!1622 = !DILocation(line: 205, column: 38, scope: !1582)
!1623 = !DILocation(line: 206, column: 26, scope: !1582)
!1624 = !DILocation(line: 206, column: 39, scope: !1582)
!1625 = !DILocation(line: 213, column: 33, scope: !1582)
!1626 = !DILocation(line: 213, column: 31, scope: !1582)
!1627 = !DILocation(line: 214, column: 17, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 214, column: 7)
!1629 = !DILocation(line: 214, column: 7, scope: !1582)
!1630 = !DILocation(line: 216, column: 16, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1628, file: !2, line: 215, column: 5)
!1632 = !DILocation(line: 217, column: 11, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1631, file: !2, line: 217, column: 11)
!1634 = !DILocation(line: 217, column: 48, scope: !1633)
!1635 = !DILocation(line: 217, column: 11, scope: !1631)
!1636 = !DILocation(line: 218, column: 9, scope: !1633)
!1637 = !DILocation(line: 223, column: 47, scope: !1582)
!1638 = !DILocation(line: 223, column: 57, scope: !1582)
!1639 = !DILocation(line: 223, column: 31, scope: !1582)
!1640 = !DILocation(line: 223, column: 69, scope: !1582)
!1641 = !DILocation(line: 224, column: 10, scope: !1582)
!1642 = !DILocation(line: 223, column: 3, scope: !1582)
!1643 = !DILocation(line: 226, column: 21, scope: !1598)
!1644 = !DILocation(line: 0, scope: !1598)
!1645 = !DILocation(line: 227, column: 28, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 227, column: 11)
!1647 = !DILocation(line: 227, column: 11, scope: !1646)
!1648 = !DILocation(line: 227, column: 46, scope: !1646)
!1649 = !DILocation(line: 227, column: 11, scope: !1598)
!1650 = !DILocation(line: 228, column: 9, scope: !1646)
!1651 = !DILocation(line: 229, column: 19, scope: !1598)
!1652 = !DILocation(line: 229, column: 16, scope: !1598)
!1653 = distinct !{!1653, !1642, !1654, !1154}
!1654 = !DILocation(line: 230, column: 5, scope: !1582)
!1655 = !DILocation(line: 233, column: 3, scope: !1582)
!1656 = !DILocation(line: 223, column: 29, scope: !1582)
!1657 = !DILocation(line: 233, column: 31, scope: !1582)
!1658 = !DILocation(line: 233, column: 28, scope: !1582)
!1659 = !DILocation(line: 235, column: 39, scope: !1600)
!1660 = !DILocation(line: 235, column: 23, scope: !1600)
!1661 = !DILocation(line: 0, scope: !1600)
!1662 = !DILocation(line: 236, column: 17, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1600, file: !2, line: 236, column: 11)
!1664 = !DILocation(line: 236, column: 11, scope: !1600)
!1665 = !DILocation(line: 244, column: 25, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 244, column: 7)
!1667 = !DILocation(line: 244, column: 7, scope: !1582)
!1668 = !DILocation(line: 246, column: 7, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1666, file: !2, line: 245, column: 5)
!1670 = !DILocation(line: 247, column: 7, scope: !1669)
!1671 = !DILocation(line: 250, column: 28, scope: !1582)
!1672 = !DILocation(line: 250, column: 37, scope: !1582)
!1673 = !DILocation(line: 252, column: 7, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 252, column: 7)
!1675 = !DILocation(line: 252, column: 7, scope: !1582)
!1676 = !DILocation(line: 255, column: 3, scope: !1582)
!1677 = !DILocation(line: 263, column: 11, scope: !1603)
!1678 = !DILocation(line: 263, column: 27, scope: !1603)
!1679 = !DILocation(line: 263, column: 11, scope: !1604)
!1680 = !DILocation(line: 265, column: 36, scope: !1602)
!1681 = !DILocation(line: 265, column: 34, scope: !1602)
!1682 = !DILocation(line: 0, scope: !1602)
!1683 = !DILocation(line: 266, column: 25, scope: !1602)
!1684 = !DILocation(line: 267, column: 30, scope: !1602)
!1685 = !DILocation(line: 270, column: 17, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1602, file: !2, line: 270, column: 15)
!1687 = !DILocation(line: 270, column: 15, scope: !1602)
!1688 = !DILocation(line: 271, column: 13, scope: !1686)
!1689 = !DILocation(line: 273, column: 21, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1602, file: !2, line: 273, column: 15)
!1691 = !DILocation(line: 274, column: 15, scope: !1690)
!1692 = !DILocation(line: 275, column: 40, scope: !1690)
!1693 = !DILocation(line: 274, column: 26, scope: !1690)
!1694 = !DILocation(line: 273, column: 15, scope: !1602)
!1695 = !DILocation(line: 277, column: 27, scope: !1690)
!1696 = !DILocation(line: 279, column: 13, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1690, file: !2, line: 278, column: 20)
!1698 = !DILocation(line: 283, column: 29, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1697, file: !2, line: 282, column: 13)
!1700 = !DILocation(line: 283, column: 45, scope: !1699)
!1701 = !{!1702, !1038, i64 8}
!1702 = !{!"re_registers", !1108, i64 0, !1038, i64 8, !1038, i64 16}
!1703 = !DILocation(line: 283, column: 40, scope: !1699)
!1704 = !DILocation(line: 283, column: 38, scope: !1699)
!1705 = !DILocation(line: 284, column: 35, scope: !1699)
!1706 = !{!1702, !1038, i64 16}
!1707 = !DILocation(line: 284, column: 30, scope: !1699)
!1708 = !DILocation(line: 284, column: 42, scope: !1699)
!1709 = !DILocation(line: 284, column: 28, scope: !1699)
!1710 = !DILocation(line: 290, column: 19, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1603, file: !2, line: 288, column: 9)
!1712 = !DILocation(line: 290, column: 18, scope: !1711)
!1713 = !DILocation(line: 290, column: 33, scope: !1711)
!1714 = !DILocation(line: 291, column: 18, scope: !1711)
!1715 = distinct !{!1715, !1716, !1717, !1154}
!1716 = !DILocation(line: 290, column: 11, scope: !1711)
!1717 = !DILocation(line: 293, column: 31, scope: !1711)
!1718 = !DILocation(line: 291, column: 36, scope: !1711)
!1719 = !DILocation(line: 291, column: 40, scope: !1711)
!1720 = !DILocation(line: 298, column: 25, scope: !1612)
!1721 = !DILocation(line: 0, scope: !1603)
!1722 = !DILocation(line: 298, column: 23, scope: !1612)
!1723 = !DILocation(line: 298, column: 11, scope: !1604)
!1724 = !DILocation(line: 300, column: 24, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 300, column: 15)
!1726 = !DILocation(line: 300, column: 15, scope: !1611)
!1727 = !DILocation(line: 303, column: 15, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1725, file: !2, line: 301, column: 13)
!1729 = !DILocation(line: 304, column: 15, scope: !1728)
!1730 = !DILocation(line: 307, column: 40, scope: !1611)
!1731 = !DILocation(line: 308, column: 35, scope: !1610)
!1732 = !DILocation(line: 308, column: 33, scope: !1610)
!1733 = !DILocation(line: 308, column: 15, scope: !1611)
!1734 = !DILocation(line: 315, column: 31, scope: !1609)
!1735 = !DILocation(line: 0, scope: !1609)
!1736 = !DILocation(line: 316, column: 42, scope: !1609)
!1737 = !DILocation(line: 318, column: 25, scope: !1609)
!1738 = !DILocation(line: 319, column: 41, scope: !1609)
!1739 = !DILocation(line: 319, column: 45, scope: !1609)
!1740 = !DILocation(line: 319, column: 63, scope: !1609)
!1741 = !DILocation(line: 319, column: 29, scope: !1609)
!1742 = !DILocation(line: 320, column: 33, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 320, column: 19)
!1744 = !DILocation(line: 320, column: 19, scope: !1609)
!1745 = !DILocation(line: 321, column: 17, scope: !1743)
!1746 = !DILocation(line: 322, column: 46, scope: !1609)
!1747 = !DILocation(line: 322, column: 27, scope: !1609)
!1748 = !DILocation(line: 323, column: 25, scope: !1609)
!1749 = !DILocation(line: 324, column: 24, scope: !1609)
!1750 = !DILocation(line: 328, column: 27, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 328, column: 15)
!1752 = !DILocation(line: 325, column: 13, scope: !1609)
!1753 = !DILocation(line: 328, column: 24, scope: !1751)
!1754 = !DILocation(line: 328, column: 15, scope: !1611)
!1755 = !DILocation(line: 329, column: 22, scope: !1751)
!1756 = !DILocation(line: 329, column: 13, scope: !1751)
!1757 = !DILocation(line: 332, column: 25, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1751, file: !2, line: 331, column: 13)
!1759 = !DILocation(line: 0, scope: !1751)
!1760 = !DILocation(line: 335, column: 15, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 335, column: 15)
!1762 = !DILocation(line: 335, column: 52, scope: !1761)
!1763 = !DILocation(line: 335, column: 15, scope: !1611)
!1764 = !DILocation(line: 336, column: 13, scope: !1761)
!1765 = !DILocation(line: 340, column: 20, scope: !1611)
!1766 = !DILocation(line: 340, column: 31, scope: !1611)
!1767 = !DILocation(line: 340, column: 29, scope: !1611)
!1768 = !DILocalVariable(name: "__dest", arg: 1, scope: !1769, file: !1333, line: 34, type: !98)
!1769 = distinct !DISubprogram(name: "memmove", scope: !1333, file: !1333, line: 34, type: !1770, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1772)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!98, !98, !1252, !104}
!1772 = !{!1768, !1773, !1774}
!1773 = !DILocalVariable(name: "__src", arg: 2, scope: !1769, file: !1333, line: 34, type: !1252)
!1774 = !DILocalVariable(name: "__len", arg: 3, scope: !1769, file: !1333, line: 34, type: !104)
!1775 = !DILocation(line: 0, scope: !1769, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 340, column: 11, scope: !1611)
!1777 = !DILocation(line: 36, column: 10, scope: !1769, inlinedAt: !1776)
!1778 = !DILocation(line: 343, column: 15, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 343, column: 15)
!1780 = !DILocation(line: 348, column: 15, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 348, column: 15)
!1782 = !DILocation(line: 348, column: 60, scope: !1781)
!1783 = !DILocation(line: 348, column: 57, scope: !1781)
!1784 = !DILocation(line: 348, column: 15, scope: !1611)
!1785 = !DILocation(line: 341, column: 31, scope: !1611)
!1786 = !DILocation(line: 341, column: 43, scope: !1611)
!1787 = distinct !{!1787, !1676, !1788}
!1788 = !DILocation(line: 378, column: 5, scope: !1582)
!1789 = !DILocation(line: 350, column: 15, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1781, file: !2, line: 349, column: 13)
!1791 = !DILocation(line: 351, column: 15, scope: !1790)
!1792 = !DILocation(line: 357, column: 15, scope: !1617)
!1793 = !DILocation(line: 357, column: 15, scope: !1618)
!1794 = !DILocation(line: 359, column: 47, scope: !1616)
!1795 = !DILocation(line: 359, column: 45, scope: !1616)
!1796 = !DILocation(line: 0, scope: !1616)
!1797 = !DILocation(line: 363, column: 31, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 363, column: 19)
!1799 = !DILocation(line: 0, scope: !1617)
!1800 = !DILocation(line: 375, column: 15, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1618, file: !2, line: 375, column: 15)
!1802 = !DILocation(line: 375, column: 31, scope: !1801)
!1803 = !DILocation(line: 375, column: 15, scope: !1618)
!1804 = !DILocation(line: 379, column: 1, scope: !1582)
!1805 = !DISubprogram(name: "close", scope: !1572, file: !1572, line: 358, type: !1576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1806 = !DISubprogram(name: "re_search", scope: !170, file: !170, line: 564, type: !1807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!447, !1509, !101, !447, !447, !447, !1809}
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!1810 = !DISubprogram(name: "clearerr_unlocked", scope: !597, file: !597, line: 794, type: !1811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{null, !228}
!1813 = !DILocation(line: 0, scope: !490)
!1814 = !DILocation(line: 88, column: 7, scope: !555)
!1815 = !DILocation(line: 88, column: 16, scope: !555)
!1816 = !DILocation(line: 88, column: 7, scope: !490)
!1817 = !DILocation(line: 0, scope: !554)
!1818 = !DILocalVariable(name: "ptr", arg: 1, scope: !1819, file: !1820, line: 2057, type: !98)
!1819 = distinct !DISubprogram(name: "rpl_realloc", scope: !1820, file: !1820, line: 2057, type: !1821, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !1823)
!1820 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!98, !98, !104}
!1823 = !{!1818, !1824}
!1824 = !DILocalVariable(name: "size", arg: 2, scope: !1819, file: !1820, line: 2057, type: !104)
!1825 = !DILocation(line: 0, scope: !1819, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 95, column: 28, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !491, line: 95, column: 15)
!1828 = distinct !DILexicalBlock(scope: !554, file: !491, line: 94, column: 9)
!1829 = !DILocation(line: 2059, column: 10, scope: !1819, inlinedAt: !1826)
!1830 = !DILocation(line: 95, column: 26, scope: !1827)
!1831 = !DILocation(line: 95, column: 15, scope: !1828)
!1832 = !DILocation(line: 97, column: 15, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1827, file: !491, line: 96, column: 13)
!1834 = distinct !{!1834, !1835, !1836}
!1835 = !DILocation(line: 93, column: 7, scope: !554)
!1836 = !DILocation(line: 112, column: 9, scope: !554)
!1837 = !DILocation(line: 101, column: 15, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1828, file: !491, line: 101, column: 15)
!1839 = !DILocation(line: 101, column: 71, scope: !1838)
!1840 = !DILocation(line: 101, column: 15, scope: !1828)
!1841 = !DILocation(line: 104, column: 15, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1828, file: !491, line: 104, column: 15)
!1843 = !DILocation(line: 104, column: 21, scope: !1842)
!1844 = !DILocation(line: 104, column: 31, scope: !1842)
!1845 = !DILocation(line: 98, column: 15, scope: !1833)
!1846 = !DILocation(line: 106, column: 15, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1842, file: !491, line: 105, column: 13)
!1848 = !DILocation(line: 108, column: 15, scope: !1847)
!1849 = !DILocation(line: 114, column: 16, scope: !554)
!1850 = !DILocation(line: 125, column: 16, scope: !554)
!1851 = !DILocation(line: 126, column: 14, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !554, file: !491, line: 126, column: 11)
!1853 = !DILocation(line: 126, column: 11, scope: !554)
!1854 = !DILocation(line: 128, column: 11, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1852, file: !491, line: 127, column: 9)
!1856 = !DILocation(line: 130, column: 11, scope: !1855)
!1857 = !DILocation(line: 133, column: 16, scope: !554)
!1858 = !DILocation(line: 133, column: 14, scope: !554)
!1859 = !DILocation(line: 134, column: 13, scope: !560)
!1860 = !DILocation(line: 134, column: 11, scope: !554)
!1861 = !DILocation(line: 136, column: 11, scope: !559)
!1862 = !DILocation(line: 138, column: 11, scope: !559)
!1863 = !DILocation(line: 139, column: 19, scope: !559)
!1864 = !DILocation(line: 139, column: 11, scope: !559)
!1865 = !DILocation(line: 140, column: 9, scope: !559)
!1866 = !DILocation(line: 141, column: 17, scope: !559)
!1867 = !DILocation(line: 141, column: 11, scope: !559)
!1868 = !DILocation(line: 142, column: 20, scope: !559)
!1869 = !DILocation(line: 143, column: 11, scope: !559)
!1870 = !DILocation(line: 146, column: 34, scope: !554)
!1871 = !DILocalVariable(name: "fn", arg: 1, scope: !1872, file: !491, line: 69, type: !101)
!1872 = distinct !DISubprogram(name: "record_or_unlink_tempfile", scope: !491, file: !491, line: 69, type: !1873, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !1875)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{null, !101, !495}
!1875 = !{!1871, !1876}
!1876 = !DILocalVariable(name: "fp", arg: 2, scope: !1872, file: !491, line: 69, type: !495)
!1877 = !DILocation(line: 0, scope: !1872, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 146, column: 7, scope: !554)
!1879 = !DILocation(line: 71, column: 3, scope: !1872, inlinedAt: !1878)
!1880 = !DILocation(line: 150, column: 7, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !555, file: !491, line: 149, column: 5)
!1882 = !DILocation(line: 151, column: 19, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1881, file: !491, line: 151, column: 11)
!1884 = !DILocation(line: 151, column: 11, scope: !1883)
!1885 = !DILocation(line: 151, column: 40, scope: !1883)
!1886 = !DILocation(line: 152, column: 11, scope: !1883)
!1887 = !DILocation(line: 152, column: 25, scope: !1883)
!1888 = !DILocation(line: 152, column: 14, scope: !1883)
!1889 = !DILocation(line: 152, column: 45, scope: !1883)
!1890 = !DILocation(line: 151, column: 11, scope: !1881)
!1891 = !DILocation(line: 154, column: 11, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1883, file: !491, line: 153, column: 9)
!1893 = !DILocation(line: 156, column: 11, scope: !1892)
!1894 = !DILocation(line: 160, column: 9, scope: !490)
!1895 = !DILocation(line: 160, column: 7, scope: !490)
!1896 = !DILocation(line: 161, column: 7, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !490, file: !491, line: 161, column: 7)
!1898 = !DILocation(line: 161, column: 7, scope: !490)
!1899 = !DILocation(line: 162, column: 18, scope: !1897)
!1900 = !DILocation(line: 162, column: 16, scope: !1897)
!1901 = !DILocation(line: 162, column: 5, scope: !1897)
!1902 = !DILocation(line: 164, column: 1, scope: !490)
!1903 = !DISubprogram(name: "realloc", scope: !1228, file: !1228, line: 551, type: !1821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1904 = !DISubprogram(name: "fdopen", scope: !597, file: !597, line: 293, type: !1905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!495, !57, !101}
!1907 = !DISubprogram(name: "unlink", scope: !1572, file: !1572, line: 858, type: !1908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!57, !101}
!1910 = !DISubprogram(name: "free", scope: !1911, file: !1911, line: 786, type: !1912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1911 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1912 = !DISubroutineType(types: !1913)
!1913 = !{null, !98}
!1914 = !DISubprogram(name: "ftruncate", scope: !1572, file: !1572, line: 1049, type: !1915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!57, !57, !254}
!1917 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !571, file: !571, line: 50, type: !1059, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !1918)
!1918 = !{!1919}
!1919 = !DILocalVariable(name: "file", arg: 1, scope: !1917, file: !571, line: 50, type: !101)
!1920 = !DILocation(line: 0, scope: !1917)
!1921 = !DILocation(line: 52, column: 13, scope: !1917)
!1922 = !DILocation(line: 53, column: 1, scope: !1917)
!1923 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !571, file: !571, line: 87, type: !1924, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !1926)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !215}
!1926 = !{!1927}
!1927 = !DILocalVariable(name: "ignore", arg: 1, scope: !1923, file: !571, line: 87, type: !215)
!1928 = !DILocation(line: 0, scope: !1923)
!1929 = !DILocation(line: 89, column: 16, scope: !1923)
!1930 = !{!1931, !1931, i64 0}
!1931 = !{!"_Bool", !1039, i64 0}
!1932 = !DILocation(line: 90, column: 1, scope: !1923)
!1933 = distinct !DISubprogram(name: "close_stdout", scope: !571, file: !571, line: 116, type: !638, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !1934)
!1934 = !{!1935}
!1935 = !DILocalVariable(name: "write_error", scope: !1936, file: !571, line: 121, type: !101)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !571, line: 120, column: 5)
!1937 = distinct !DILexicalBlock(scope: !1933, file: !571, line: 118, column: 7)
!1938 = !DILocation(line: 118, column: 21, scope: !1937)
!1939 = !DILocation(line: 118, column: 7, scope: !1937)
!1940 = !DILocation(line: 118, column: 29, scope: !1937)
!1941 = !DILocation(line: 119, column: 7, scope: !1937)
!1942 = !DILocation(line: 119, column: 12, scope: !1937)
!1943 = !{i8 0, i8 2}
!1944 = !DILocation(line: 119, column: 25, scope: !1937)
!1945 = !DILocation(line: 119, column: 28, scope: !1937)
!1946 = !DILocation(line: 119, column: 34, scope: !1937)
!1947 = !DILocation(line: 118, column: 7, scope: !1933)
!1948 = !DILocation(line: 121, column: 33, scope: !1936)
!1949 = !DILocation(line: 0, scope: !1936)
!1950 = !DILocation(line: 122, column: 11, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1936, file: !571, line: 122, column: 11)
!1952 = !DILocation(line: 0, scope: !1951)
!1953 = !DILocation(line: 122, column: 11, scope: !1936)
!1954 = !DILocation(line: 123, column: 9, scope: !1951)
!1955 = !DILocation(line: 126, column: 9, scope: !1951)
!1956 = !DILocation(line: 128, column: 14, scope: !1936)
!1957 = !DILocation(line: 128, column: 7, scope: !1936)
!1958 = !DILocation(line: 133, column: 42, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1933, file: !571, line: 133, column: 7)
!1960 = !DILocation(line: 133, column: 28, scope: !1959)
!1961 = !DILocation(line: 133, column: 50, scope: !1959)
!1962 = !DILocation(line: 133, column: 7, scope: !1933)
!1963 = !DILocation(line: 134, column: 12, scope: !1959)
!1964 = !DILocation(line: 134, column: 5, scope: !1959)
!1965 = !DILocation(line: 135, column: 1, scope: !1933)
!1966 = !DISubprogram(name: "_exit", scope: !1572, file: !1572, line: 624, type: !1027, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!1967 = distinct !DISubprogram(name: "verror", scope: !586, file: !586, line: 251, type: !1968, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1970)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{null, !57, !57, !101, !596}
!1970 = !{!1971, !1972, !1973, !1974}
!1971 = !DILocalVariable(name: "status", arg: 1, scope: !1967, file: !586, line: 251, type: !57)
!1972 = !DILocalVariable(name: "errnum", arg: 2, scope: !1967, file: !586, line: 251, type: !57)
!1973 = !DILocalVariable(name: "message", arg: 3, scope: !1967, file: !586, line: 251, type: !101)
!1974 = !DILocalVariable(name: "args", arg: 4, scope: !1967, file: !586, line: 251, type: !596)
!1975 = !DILocation(line: 0, scope: !1967)
!1976 = !DILocation(line: 251, column: 1, scope: !1967)
!1977 = !DILocation(line: 261, column: 3, scope: !1967)
!1978 = !DILocation(line: 265, column: 7, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1967, file: !586, line: 265, column: 7)
!1980 = !DILocation(line: 265, column: 7, scope: !1967)
!1981 = !DILocation(line: 266, column: 5, scope: !1979)
!1982 = !DILocation(line: 272, column: 7, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !586, line: 268, column: 5)
!1984 = !DILocation(line: 276, column: 3, scope: !1967)
!1985 = !{i64 0, i64 8, !1037, i64 8, i64 8, !1037, i64 16, i64 8, !1037, i64 24, i64 4, !1107, i64 28, i64 4, !1107}
!1986 = !DILocation(line: 282, column: 1, scope: !1967)
!1987 = distinct !DISubprogram(name: "flush_stdout", scope: !586, file: !586, line: 163, type: !638, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1988)
!1988 = !{!1989}
!1989 = !DILocalVariable(name: "stdout_fd", scope: !1987, file: !586, line: 166, type: !57)
!1990 = !DILocation(line: 0, scope: !1987)
!1991 = !DILocalVariable(name: "fd", arg: 1, scope: !1992, file: !586, line: 145, type: !57)
!1992 = distinct !DISubprogram(name: "is_open", scope: !586, file: !586, line: 145, type: !1576, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1993)
!1993 = !{!1991}
!1994 = !DILocation(line: 0, scope: !1992, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 182, column: 25, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1987, file: !586, line: 182, column: 7)
!1997 = !DILocation(line: 157, column: 15, scope: !1992, inlinedAt: !1995)
!1998 = !DILocation(line: 157, column: 12, scope: !1992, inlinedAt: !1995)
!1999 = !DILocation(line: 182, column: 7, scope: !1987)
!2000 = !DILocation(line: 184, column: 5, scope: !1996)
!2001 = !DILocation(line: 185, column: 1, scope: !1987)
!2002 = distinct !DISubprogram(name: "error_tail", scope: !586, file: !586, line: 219, type: !1968, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2003)
!2003 = !{!2004, !2005, !2006, !2007}
!2004 = !DILocalVariable(name: "status", arg: 1, scope: !2002, file: !586, line: 219, type: !57)
!2005 = !DILocalVariable(name: "errnum", arg: 2, scope: !2002, file: !586, line: 219, type: !57)
!2006 = !DILocalVariable(name: "message", arg: 3, scope: !2002, file: !586, line: 219, type: !101)
!2007 = !DILocalVariable(name: "args", arg: 4, scope: !2002, file: !586, line: 219, type: !596)
!2008 = !DILocation(line: 0, scope: !2002)
!2009 = !DILocation(line: 219, column: 1, scope: !2002)
!2010 = !DILocation(line: 229, column: 13, scope: !2002)
!2011 = !DILocation(line: 135, column: 10, scope: !2012, inlinedAt: !2054)
!2012 = distinct !DISubprogram(name: "vfprintf", scope: !1094, file: !1094, line: 132, type: !2013, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2050)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!57, !2015, !1098, !598}
!2015 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2016)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !2018)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !2019)
!2019 = !{!2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2018, file: !232, line: 51, baseType: !57, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2018, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2018, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2018, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2018, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2018, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2018, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2018, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2018, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2018, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2018, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2018, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2018, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2018, file: !232, line: 70, baseType: !2034, size: 64, offset: 832)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2018, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2018, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2018, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2018, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2018, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2018, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2018, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2018, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2018, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2018, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2018, file: !232, line: 93, baseType: !2034, size: 64, offset: 1344)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2018, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2018, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2018, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2018, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!2050 = !{!2051, !2052, !2053}
!2051 = !DILocalVariable(name: "__stream", arg: 1, scope: !2012, file: !1094, line: 132, type: !2015)
!2052 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2012, file: !1094, line: 133, type: !1098)
!2053 = !DILocalVariable(name: "__ap", arg: 3, scope: !2012, file: !1094, line: 133, type: !598)
!2054 = distinct !DILocation(line: 229, column: 3, scope: !2002)
!2055 = !{!2056, !2058}
!2056 = distinct !{!2056, !2057, !"vfprintf.inline: argument 0"}
!2057 = distinct !{!2057, !"vfprintf.inline"}
!2058 = distinct !{!2058, !2057, !"vfprintf.inline: argument 1"}
!2059 = !DILocation(line: 229, column: 3, scope: !2002)
!2060 = !DILocation(line: 0, scope: !2012, inlinedAt: !2054)
!2061 = !DILocation(line: 133, column: 49, scope: !2012, inlinedAt: !2054)
!2062 = !DILocation(line: 232, column: 3, scope: !2002)
!2063 = !DILocation(line: 233, column: 7, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2002, file: !586, line: 233, column: 7)
!2065 = !DILocation(line: 233, column: 7, scope: !2002)
!2066 = !DILocalVariable(name: "errnum", arg: 1, scope: !2067, file: !586, line: 188, type: !57)
!2067 = distinct !DISubprogram(name: "print_errno_message", scope: !586, file: !586, line: 188, type: !1027, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2068)
!2068 = !{!2066, !2069, !2070}
!2069 = !DILocalVariable(name: "s", scope: !2067, file: !586, line: 190, type: !101)
!2070 = !DILocalVariable(name: "errbuf", scope: !2067, file: !586, line: 193, type: !2071)
!2071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2072)
!2072 = !{!2073}
!2073 = !DISubrange(count: 1024)
!2074 = !DILocation(line: 0, scope: !2067, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 234, column: 5, scope: !2064)
!2076 = !DILocation(line: 193, column: 3, scope: !2067, inlinedAt: !2075)
!2077 = !DILocation(line: 193, column: 8, scope: !2067, inlinedAt: !2075)
!2078 = !DILocation(line: 195, column: 7, scope: !2067, inlinedAt: !2075)
!2079 = !DILocation(line: 207, column: 9, scope: !2080, inlinedAt: !2075)
!2080 = distinct !DILexicalBlock(scope: !2067, file: !586, line: 207, column: 7)
!2081 = !DILocation(line: 207, column: 7, scope: !2067, inlinedAt: !2075)
!2082 = !DILocation(line: 208, column: 9, scope: !2080, inlinedAt: !2075)
!2083 = !DILocation(line: 208, column: 5, scope: !2080, inlinedAt: !2075)
!2084 = !DILocation(line: 214, column: 3, scope: !2067, inlinedAt: !2075)
!2085 = !DILocation(line: 216, column: 1, scope: !2067, inlinedAt: !2075)
!2086 = !DILocation(line: 234, column: 5, scope: !2064)
!2087 = !DILocation(line: 238, column: 3, scope: !2002)
!2088 = !DILocalVariable(name: "__c", arg: 1, scope: !2089, file: !2090, line: 101, type: !57)
!2089 = distinct !DISubprogram(name: "putc_unlocked", scope: !2090, file: !2090, line: 101, type: !2091, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2093)
!2090 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!57, !57, !2016}
!2093 = !{!2088, !2094}
!2094 = !DILocalVariable(name: "__stream", arg: 2, scope: !2089, file: !2090, line: 101, type: !2016)
!2095 = !DILocation(line: 0, scope: !2089, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 238, column: 3, scope: !2002)
!2097 = !DILocation(line: 103, column: 10, scope: !2089, inlinedAt: !2096)
!2098 = !{!2099, !1038, i64 40}
!2099 = !{!"_IO_FILE", !1108, i64 0, !1038, i64 8, !1038, i64 16, !1038, i64 24, !1038, i64 32, !1038, i64 40, !1038, i64 48, !1038, i64 56, !1038, i64 64, !1038, i64 72, !1038, i64 80, !1038, i64 88, !1038, i64 96, !1038, i64 104, !1108, i64 112, !1108, i64 116, !1269, i64 120, !1149, i64 128, !1039, i64 130, !1039, i64 131, !1038, i64 136, !1269, i64 144, !1038, i64 152, !1038, i64 160, !1038, i64 168, !1038, i64 176, !1269, i64 184, !1108, i64 192, !1039, i64 196}
!2100 = !{!2099, !1038, i64 48}
!2101 = !{!"branch_weights", i32 2000, i32 1}
!2102 = !DILocation(line: 240, column: 3, scope: !2002)
!2103 = !DILocation(line: 241, column: 7, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2002, file: !586, line: 241, column: 7)
!2105 = !DILocation(line: 241, column: 7, scope: !2002)
!2106 = !DILocation(line: 242, column: 5, scope: !2104)
!2107 = !DILocation(line: 243, column: 1, scope: !2002)
!2108 = !DISubprogram(name: "__vfprintf_chk", scope: !1094, file: !1094, line: 96, type: !2109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!57, !2015, !57, !1098, !598}
!2111 = !DISubprogram(name: "strerror_r", scope: !1224, file: !1224, line: 444, type: !2112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!59, !57, !59, !104}
!2114 = !DISubprogram(name: "__overflow", scope: !597, file: !597, line: 886, type: !2115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!57, !2016, !57}
!2117 = !DISubprogram(name: "fcntl", scope: !1564, file: !1564, line: 149, type: !2118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!57, !57, !57, null}
!2120 = distinct !DISubprogram(name: "error", scope: !586, file: !586, line: 285, type: !2121, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2123)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{null, !57, !57, !101, null}
!2123 = !{!2124, !2125, !2126, !2127}
!2124 = !DILocalVariable(name: "status", arg: 1, scope: !2120, file: !586, line: 285, type: !57)
!2125 = !DILocalVariable(name: "errnum", arg: 2, scope: !2120, file: !586, line: 285, type: !57)
!2126 = !DILocalVariable(name: "message", arg: 3, scope: !2120, file: !586, line: 285, type: !101)
!2127 = !DILocalVariable(name: "ap", scope: !2120, file: !586, line: 287, type: !596)
!2128 = !DILocation(line: 0, scope: !2120)
!2129 = !DILocation(line: 287, column: 3, scope: !2120)
!2130 = !DILocation(line: 287, column: 11, scope: !2120)
!2131 = !DILocation(line: 288, column: 3, scope: !2120)
!2132 = !DILocation(line: 289, column: 3, scope: !2120)
!2133 = !DILocation(line: 290, column: 3, scope: !2120)
!2134 = !DILocation(line: 291, column: 1, scope: !2120)
!2135 = !DILocation(line: 0, scope: !593)
!2136 = !DILocation(line: 298, column: 1, scope: !593)
!2137 = !DILocation(line: 302, column: 7, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !593, file: !586, line: 302, column: 7)
!2139 = !DILocation(line: 302, column: 7, scope: !593)
!2140 = !DILocation(line: 307, column: 11, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !586, line: 307, column: 11)
!2142 = distinct !DILexicalBlock(scope: !2138, file: !586, line: 303, column: 5)
!2143 = !DILocation(line: 307, column: 27, scope: !2141)
!2144 = !DILocation(line: 308, column: 11, scope: !2141)
!2145 = !DILocation(line: 308, column: 28, scope: !2141)
!2146 = !DILocation(line: 308, column: 25, scope: !2141)
!2147 = !DILocation(line: 309, column: 15, scope: !2141)
!2148 = !DILocation(line: 309, column: 33, scope: !2141)
!2149 = !DILocation(line: 310, column: 19, scope: !2141)
!2150 = !DILocation(line: 311, column: 22, scope: !2141)
!2151 = !DILocation(line: 311, column: 56, scope: !2141)
!2152 = !DILocation(line: 307, column: 11, scope: !2142)
!2153 = !DILocation(line: 316, column: 21, scope: !2142)
!2154 = !DILocation(line: 317, column: 23, scope: !2142)
!2155 = !DILocation(line: 318, column: 5, scope: !2142)
!2156 = !DILocation(line: 327, column: 3, scope: !593)
!2157 = !DILocation(line: 331, column: 7, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !593, file: !586, line: 331, column: 7)
!2159 = !DILocation(line: 331, column: 7, scope: !593)
!2160 = !DILocation(line: 332, column: 5, scope: !2158)
!2161 = !DILocation(line: 338, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2158, file: !586, line: 334, column: 5)
!2163 = !DILocation(line: 346, column: 3, scope: !593)
!2164 = !DILocation(line: 350, column: 3, scope: !593)
!2165 = !DILocation(line: 356, column: 1, scope: !593)
!2166 = distinct !DISubprogram(name: "error_at_line", scope: !586, file: !586, line: 359, type: !2167, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2169)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{null, !57, !57, !101, !69, !101, null}
!2169 = !{!2170, !2171, !2172, !2173, !2174, !2175}
!2170 = !DILocalVariable(name: "status", arg: 1, scope: !2166, file: !586, line: 359, type: !57)
!2171 = !DILocalVariable(name: "errnum", arg: 2, scope: !2166, file: !586, line: 359, type: !57)
!2172 = !DILocalVariable(name: "file_name", arg: 3, scope: !2166, file: !586, line: 359, type: !101)
!2173 = !DILocalVariable(name: "line_number", arg: 4, scope: !2166, file: !586, line: 360, type: !69)
!2174 = !DILocalVariable(name: "message", arg: 5, scope: !2166, file: !586, line: 360, type: !101)
!2175 = !DILocalVariable(name: "ap", scope: !2166, file: !586, line: 362, type: !596)
!2176 = !DILocation(line: 0, scope: !2166)
!2177 = !DILocation(line: 362, column: 3, scope: !2166)
!2178 = !DILocation(line: 362, column: 11, scope: !2166)
!2179 = !DILocation(line: 363, column: 3, scope: !2166)
!2180 = !DILocation(line: 364, column: 3, scope: !2166)
!2181 = !DILocation(line: 366, column: 3, scope: !2166)
!2182 = !DILocation(line: 367, column: 1, scope: !2166)
!2183 = distinct !DISubprogram(name: "fpurge", scope: !933, file: !933, line: 32, type: !2184, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !932, retainedNodes: !2220)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!57, !2186}
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !2188)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !2189)
!2189 = !{!2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2188, file: !232, line: 51, baseType: !57, size: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2188, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2188, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2188, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2188, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2188, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2188, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2188, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2188, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2188, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2188, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2188, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2188, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2188, file: !232, line: 70, baseType: !2204, size: 64, offset: 832)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2188, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2188, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2188, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2188, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2188, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2188, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2188, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2188, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2188, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2188, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2188, file: !232, line: 93, baseType: !2204, size: 64, offset: 1344)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2188, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2188, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2188, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2188, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!2220 = !{!2221}
!2221 = !DILocalVariable(name: "fp", arg: 1, scope: !2183, file: !933, line: 32, type: !2186)
!2222 = !DILocation(line: 0, scope: !2183)
!2223 = !DILocation(line: 36, column: 3, scope: !2183)
!2224 = !DILocation(line: 38, column: 3, scope: !2183)
!2225 = !DISubprogram(name: "__fpurge", scope: !2226, file: !2226, line: 72, type: !2227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!2226 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2227 = !DISubroutineType(types: !2228)
!2228 = !{null, !2186}
!2229 = distinct !DISubprogram(name: "rpl_fseeko", scope: !935, file: !935, line: 28, type: !2230, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !934, retainedNodes: !2266)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!57, !2232, !1362, !57}
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !2234)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !2235)
!2235 = !{!2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2234, file: !232, line: 51, baseType: !57, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2234, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2234, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2234, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2234, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2234, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2234, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2234, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2234, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2234, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2234, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2234, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2234, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2234, file: !232, line: 70, baseType: !2250, size: 64, offset: 832)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2234, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2234, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2234, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2234, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2234, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2234, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2234, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2234, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2234, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2234, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2234, file: !232, line: 93, baseType: !2250, size: 64, offset: 1344)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2234, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2234, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2234, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2234, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!2266 = !{!2267, !2268, !2269, !2270}
!2267 = !DILocalVariable(name: "fp", arg: 1, scope: !2229, file: !935, line: 28, type: !2232)
!2268 = !DILocalVariable(name: "offset", arg: 2, scope: !2229, file: !935, line: 28, type: !1362)
!2269 = !DILocalVariable(name: "whence", arg: 3, scope: !2229, file: !935, line: 28, type: !57)
!2270 = !DILocalVariable(name: "pos", scope: !2271, file: !935, line: 123, type: !1362)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !935, line: 119, column: 5)
!2272 = distinct !DILexicalBlock(scope: !2229, file: !935, line: 55, column: 7)
!2273 = !DILocation(line: 0, scope: !2229)
!2274 = !DILocation(line: 55, column: 12, scope: !2272)
!2275 = !{!2099, !1038, i64 16}
!2276 = !DILocation(line: 55, column: 33, scope: !2272)
!2277 = !{!2099, !1038, i64 8}
!2278 = !DILocation(line: 55, column: 25, scope: !2272)
!2279 = !DILocation(line: 56, column: 7, scope: !2272)
!2280 = !DILocation(line: 56, column: 15, scope: !2272)
!2281 = !DILocation(line: 56, column: 37, scope: !2272)
!2282 = !{!2099, !1038, i64 32}
!2283 = !DILocation(line: 56, column: 29, scope: !2272)
!2284 = !DILocation(line: 57, column: 7, scope: !2272)
!2285 = !DILocation(line: 57, column: 15, scope: !2272)
!2286 = !{!2099, !1038, i64 72}
!2287 = !DILocation(line: 57, column: 29, scope: !2272)
!2288 = !DILocation(line: 55, column: 7, scope: !2229)
!2289 = !DILocation(line: 123, column: 26, scope: !2271)
!2290 = !DILocation(line: 123, column: 19, scope: !2271)
!2291 = !DILocation(line: 0, scope: !2271)
!2292 = !DILocation(line: 124, column: 15, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2271, file: !935, line: 124, column: 11)
!2294 = !DILocation(line: 124, column: 11, scope: !2271)
!2295 = !DILocation(line: 135, column: 19, scope: !2271)
!2296 = !{!2099, !1108, i64 0}
!2297 = !DILocation(line: 136, column: 12, scope: !2271)
!2298 = !DILocation(line: 136, column: 20, scope: !2271)
!2299 = !{!2099, !1269, i64 144}
!2300 = !DILocation(line: 167, column: 7, scope: !2271)
!2301 = !DILocation(line: 169, column: 10, scope: !2229)
!2302 = !DILocation(line: 169, column: 3, scope: !2229)
!2303 = !DILocation(line: 170, column: 1, scope: !2229)
!2304 = !DISubprogram(name: "fileno", scope: !597, file: !597, line: 809, type: !2305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!57, !2232}
!2307 = !DISubprogram(name: "fseeko", scope: !597, file: !597, line: 736, type: !2308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!57, !2232, !254, !57}
!2310 = distinct !DISubprogram(name: "full_read", scope: !2311, file: !2311, line: 58, type: !2312, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !936, retainedNodes: !2314)
!2311 = !DIFile(filename: "./lib/full-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3e4d1fbb34cc594bb17b421b58eed3ca")
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!981, !57, !98, !981}
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2320}
!2315 = !DILocalVariable(name: "fd", arg: 1, scope: !2310, file: !2311, line: 58, type: !57)
!2316 = !DILocalVariable(name: "buf", arg: 2, scope: !2310, file: !2311, line: 58, type: !98)
!2317 = !DILocalVariable(name: "count", arg: 3, scope: !2310, file: !2311, line: 58, type: !981)
!2318 = !DILocalVariable(name: "total", scope: !2310, file: !2311, line: 60, type: !981)
!2319 = !DILocalVariable(name: "ptr", scope: !2310, file: !2311, line: 61, type: !59)
!2320 = !DILocalVariable(name: "n_rw", scope: !2321, file: !2311, line: 65, type: !983)
!2321 = distinct !DILexicalBlock(scope: !2310, file: !2311, line: 64, column: 5)
!2322 = !DILocation(line: 0, scope: !2310)
!2323 = !DILocation(line: 63, column: 16, scope: !2310)
!2324 = !DILocation(line: 63, column: 3, scope: !2310)
!2325 = !DILocation(line: 65, column: 24, scope: !2321)
!2326 = !DILocation(line: 0, scope: !2321)
!2327 = !DILocation(line: 66, column: 16, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2321, file: !2311, line: 66, column: 11)
!2329 = !DILocation(line: 66, column: 11, scope: !2321)
!2330 = !DILocation(line: 68, column: 16, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2321, file: !2311, line: 68, column: 11)
!2332 = !DILocation(line: 68, column: 11, scope: !2321)
!2333 = !DILocation(line: 70, column: 11, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2331, file: !2311, line: 69, column: 9)
!2335 = !DILocation(line: 70, column: 17, scope: !2334)
!2336 = !DILocation(line: 71, column: 11, scope: !2334)
!2337 = !DILocation(line: 73, column: 13, scope: !2321)
!2338 = !DILocation(line: 74, column: 11, scope: !2321)
!2339 = !DILocation(line: 75, column: 13, scope: !2321)
!2340 = !DILocation(line: 78, column: 3, scope: !2310)
!2341 = distinct !DISubprogram(name: "getprogname", scope: !939, file: !939, line: 54, type: !2342, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !1046)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!101}
!2344 = !DILocation(line: 58, column: 10, scope: !2341)
!2345 = !DILocation(line: 58, column: 3, scope: !2341)
!2346 = distinct !DISubprogram(name: "set_program_name", scope: !643, file: !643, line: 37, type: !1059, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !642, retainedNodes: !2347)
!2347 = !{!2348, !2349, !2350}
!2348 = !DILocalVariable(name: "argv0", arg: 1, scope: !2346, file: !643, line: 37, type: !101)
!2349 = !DILocalVariable(name: "slash", scope: !2346, file: !643, line: 44, type: !101)
!2350 = !DILocalVariable(name: "base", scope: !2346, file: !643, line: 45, type: !101)
!2351 = !DILocation(line: 0, scope: !2346)
!2352 = !DILocation(line: 44, column: 23, scope: !2346)
!2353 = !DILocation(line: 45, column: 22, scope: !2346)
!2354 = !DILocation(line: 46, column: 17, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2346, file: !643, line: 46, column: 7)
!2356 = !DILocation(line: 46, column: 9, scope: !2355)
!2357 = !DILocation(line: 46, column: 25, scope: !2355)
!2358 = !DILocation(line: 46, column: 40, scope: !2355)
!2359 = !DILocalVariable(name: "__s1", arg: 1, scope: !2360, file: !1120, line: 974, type: !1252)
!2360 = distinct !DISubprogram(name: "memeq", scope: !1120, file: !1120, line: 974, type: !2361, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !642, retainedNodes: !2363)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!215, !1252, !1252, !104}
!2363 = !{!2359, !2364, !2365}
!2364 = !DILocalVariable(name: "__s2", arg: 2, scope: !2360, file: !1120, line: 974, type: !1252)
!2365 = !DILocalVariable(name: "__n", arg: 3, scope: !2360, file: !1120, line: 974, type: !104)
!2366 = !DILocation(line: 0, scope: !2360, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 46, column: 28, scope: !2355)
!2368 = !DILocation(line: 976, column: 11, scope: !2360, inlinedAt: !2367)
!2369 = !DILocation(line: 976, column: 10, scope: !2360, inlinedAt: !2367)
!2370 = !DILocation(line: 46, column: 7, scope: !2346)
!2371 = !DILocation(line: 49, column: 11, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !643, line: 49, column: 11)
!2373 = distinct !DILexicalBlock(scope: !2355, file: !643, line: 47, column: 5)
!2374 = !DILocation(line: 49, column: 36, scope: !2372)
!2375 = !DILocation(line: 49, column: 11, scope: !2373)
!2376 = !DILocation(line: 65, column: 16, scope: !2346)
!2377 = !DILocation(line: 71, column: 27, scope: !2346)
!2378 = !DILocation(line: 74, column: 33, scope: !2346)
!2379 = !DILocation(line: 76, column: 1, scope: !2346)
!2380 = !DISubprogram(name: "strrchr", scope: !1224, file: !1224, line: 273, type: !1239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!2381 = !DILocation(line: 0, scope: !652)
!2382 = !DILocation(line: 40, column: 29, scope: !652)
!2383 = !DILocation(line: 41, column: 19, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !652, file: !653, line: 41, column: 7)
!2385 = !DILocation(line: 41, column: 7, scope: !652)
!2386 = !DILocation(line: 47, column: 3, scope: !652)
!2387 = !DILocation(line: 48, column: 3, scope: !652)
!2388 = !DILocation(line: 48, column: 13, scope: !652)
!2389 = !DILocalVariable(name: "ps", arg: 1, scope: !2390, file: !1911, line: 1135, type: !2393)
!2390 = distinct !DISubprogram(name: "mbszero", scope: !1911, file: !1911, line: 1135, type: !2391, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2394)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{null, !2393}
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!2394 = !{!2389}
!2395 = !DILocation(line: 0, scope: !2390, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 48, column: 18, scope: !652)
!2397 = !DILocalVariable(name: "__dest", arg: 1, scope: !2398, file: !1333, line: 57, type: !98)
!2398 = distinct !DISubprogram(name: "memset", scope: !1333, file: !1333, line: 57, type: !2399, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !2401)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!98, !98, !57, !104}
!2401 = !{!2397, !2402, !2403}
!2402 = !DILocalVariable(name: "__ch", arg: 2, scope: !2398, file: !1333, line: 57, type: !57)
!2403 = !DILocalVariable(name: "__len", arg: 3, scope: !2398, file: !1333, line: 57, type: !104)
!2404 = !DILocation(line: 0, scope: !2398, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 1137, column: 3, scope: !2390, inlinedAt: !2396)
!2406 = !DILocation(line: 59, column: 10, scope: !2398, inlinedAt: !2405)
!2407 = !DILocation(line: 49, column: 7, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !652, file: !653, line: 49, column: 7)
!2409 = !DILocation(line: 49, column: 39, scope: !2408)
!2410 = !DILocation(line: 49, column: 44, scope: !2408)
!2411 = !DILocation(line: 54, column: 1, scope: !652)
!2412 = !DISubprogram(name: "mbrtoc32", scope: !664, file: !664, line: 57, type: !2413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!104, !2415, !1098, !104, !2417}
!2415 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2416)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2393)
!2418 = distinct !DISubprogram(name: "clone_quoting_options", scope: !683, file: !683, line: 113, type: !2419, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !2422)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!2421, !2421}
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!2422 = !{!2423, !2424, !2425}
!2423 = !DILocalVariable(name: "o", arg: 1, scope: !2418, file: !683, line: 113, type: !2421)
!2424 = !DILocalVariable(name: "saved_errno", scope: !2418, file: !683, line: 115, type: !57)
!2425 = !DILocalVariable(name: "p", scope: !2418, file: !683, line: 116, type: !2421)
!2426 = !DILocation(line: 0, scope: !2418)
!2427 = !DILocation(line: 115, column: 21, scope: !2418)
!2428 = !DILocation(line: 116, column: 40, scope: !2418)
!2429 = !DILocation(line: 116, column: 31, scope: !2418)
!2430 = !DILocation(line: 118, column: 9, scope: !2418)
!2431 = !DILocation(line: 119, column: 3, scope: !2418)
!2432 = distinct !DISubprogram(name: "get_quoting_style", scope: !683, file: !683, line: 124, type: !2433, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !2437)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!83, !2435}
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!2437 = !{!2438}
!2438 = !DILocalVariable(name: "o", arg: 1, scope: !2432, file: !683, line: 124, type: !2435)
!2439 = !DILocation(line: 0, scope: !2432)
!2440 = !DILocation(line: 126, column: 11, scope: !2432)
!2441 = !DILocation(line: 126, column: 46, scope: !2432)
!2442 = !{!2443, !1039, i64 0}
!2443 = !{!"quoting_options", !1039, i64 0, !1108, i64 4, !1039, i64 8, !1038, i64 40, !1038, i64 48}
!2444 = !DILocation(line: 126, column: 3, scope: !2432)
!2445 = distinct !DISubprogram(name: "set_quoting_style", scope: !683, file: !683, line: 132, type: !2446, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{null, !2421, !83}
!2448 = !{!2449, !2450}
!2449 = !DILocalVariable(name: "o", arg: 1, scope: !2445, file: !683, line: 132, type: !2421)
!2450 = !DILocalVariable(name: "s", arg: 2, scope: !2445, file: !683, line: 132, type: !83)
!2451 = !DILocation(line: 0, scope: !2445)
!2452 = !DILocation(line: 134, column: 4, scope: !2445)
!2453 = !DILocation(line: 134, column: 45, scope: !2445)
!2454 = !DILocation(line: 135, column: 1, scope: !2445)
!2455 = distinct !DISubprogram(name: "set_char_quoting", scope: !683, file: !683, line: 143, type: !2456, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !2458)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!57, !2421, !4, !57}
!2458 = !{!2459, !2460, !2461, !2462, !2463, !2465, !2466}
!2459 = !DILocalVariable(name: "o", arg: 1, scope: !2455, file: !683, line: 143, type: !2421)
!2460 = !DILocalVariable(name: "c", arg: 2, scope: !2455, file: !683, line: 143, type: !4)
!2461 = !DILocalVariable(name: "i", arg: 3, scope: !2455, file: !683, line: 143, type: !57)
!2462 = !DILocalVariable(name: "uc", scope: !2455, file: !683, line: 145, type: !107)
!2463 = !DILocalVariable(name: "p", scope: !2455, file: !683, line: 146, type: !2464)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2465 = !DILocalVariable(name: "shift", scope: !2455, file: !683, line: 148, type: !57)
!2466 = !DILocalVariable(name: "r", scope: !2455, file: !683, line: 149, type: !69)
!2467 = !DILocation(line: 0, scope: !2455)
!2468 = !DILocation(line: 147, column: 6, scope: !2455)
!2469 = !DILocation(line: 147, column: 41, scope: !2455)
!2470 = !DILocation(line: 147, column: 62, scope: !2455)
!2471 = !DILocation(line: 147, column: 57, scope: !2455)
!2472 = !DILocation(line: 148, column: 15, scope: !2455)
!2473 = !DILocation(line: 149, column: 21, scope: !2455)
!2474 = !DILocation(line: 149, column: 24, scope: !2455)
!2475 = !DILocation(line: 149, column: 34, scope: !2455)
!2476 = !DILocation(line: 150, column: 19, scope: !2455)
!2477 = !DILocation(line: 150, column: 24, scope: !2455)
!2478 = !DILocation(line: 150, column: 6, scope: !2455)
!2479 = !DILocation(line: 151, column: 3, scope: !2455)
!2480 = distinct !DISubprogram(name: "set_quoting_flags", scope: !683, file: !683, line: 159, type: !2481, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!57, !2421, !57}
!2483 = !{!2484, !2485, !2486}
!2484 = !DILocalVariable(name: "o", arg: 1, scope: !2480, file: !683, line: 159, type: !2421)
!2485 = !DILocalVariable(name: "i", arg: 2, scope: !2480, file: !683, line: 159, type: !57)
!2486 = !DILocalVariable(name: "r", scope: !2480, file: !683, line: 163, type: !57)
!2487 = !DILocation(line: 0, scope: !2480)
!2488 = !DILocation(line: 161, column: 8, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2480, file: !683, line: 161, column: 7)
!2490 = !DILocation(line: 161, column: 7, scope: !2480)
!2491 = !DILocation(line: 163, column: 14, scope: !2480)
!2492 = !{!2443, !1108, i64 4}
!2493 = !DILocation(line: 164, column: 12, scope: !2480)
!2494 = !DILocation(line: 165, column: 3, scope: !2480)
!2495 = distinct !DISubprogram(name: "set_custom_quoting", scope: !683, file: !683, line: 169, type: !2496, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{null, !2421, !101, !101}
!2498 = !{!2499, !2500, !2501}
!2499 = !DILocalVariable(name: "o", arg: 1, scope: !2495, file: !683, line: 169, type: !2421)
!2500 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2495, file: !683, line: 170, type: !101)
!2501 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2495, file: !683, line: 170, type: !101)
!2502 = !DILocation(line: 0, scope: !2495)
!2503 = !DILocation(line: 172, column: 8, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2495, file: !683, line: 172, column: 7)
!2505 = !DILocation(line: 172, column: 7, scope: !2495)
!2506 = !DILocation(line: 174, column: 12, scope: !2495)
!2507 = !DILocation(line: 175, column: 8, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2495, file: !683, line: 175, column: 7)
!2509 = !DILocation(line: 175, column: 19, scope: !2508)
!2510 = !DILocation(line: 176, column: 5, scope: !2508)
!2511 = !DILocation(line: 177, column: 6, scope: !2495)
!2512 = !DILocation(line: 177, column: 17, scope: !2495)
!2513 = !{!2443, !1038, i64 40}
!2514 = !DILocation(line: 178, column: 6, scope: !2495)
!2515 = !DILocation(line: 178, column: 18, scope: !2495)
!2516 = !{!2443, !1038, i64 48}
!2517 = !DILocation(line: 179, column: 1, scope: !2495)
!2518 = !DISubprogram(name: "abort", scope: !1228, file: !1228, line: 598, type: !638, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!2519 = distinct !DISubprogram(name: "quotearg_buffer", scope: !683, file: !683, line: 774, type: !2520, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !2522)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!104, !59, !104, !101, !104, !2435}
!2522 = !{!2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530}
!2523 = !DILocalVariable(name: "buffer", arg: 1, scope: !2519, file: !683, line: 774, type: !59)
!2524 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2519, file: !683, line: 774, type: !104)
!2525 = !DILocalVariable(name: "arg", arg: 3, scope: !2519, file: !683, line: 775, type: !101)
!2526 = !DILocalVariable(name: "argsize", arg: 4, scope: !2519, file: !683, line: 775, type: !104)
!2527 = !DILocalVariable(name: "o", arg: 5, scope: !2519, file: !683, line: 776, type: !2435)
!2528 = !DILocalVariable(name: "p", scope: !2519, file: !683, line: 778, type: !2435)
!2529 = !DILocalVariable(name: "saved_errno", scope: !2519, file: !683, line: 779, type: !57)
!2530 = !DILocalVariable(name: "r", scope: !2519, file: !683, line: 780, type: !104)
!2531 = !DILocation(line: 0, scope: !2519)
!2532 = !DILocation(line: 778, column: 37, scope: !2519)
!2533 = !DILocation(line: 779, column: 21, scope: !2519)
!2534 = !DILocation(line: 781, column: 43, scope: !2519)
!2535 = !DILocation(line: 781, column: 53, scope: !2519)
!2536 = !DILocation(line: 781, column: 63, scope: !2519)
!2537 = !DILocation(line: 782, column: 43, scope: !2519)
!2538 = !DILocation(line: 782, column: 58, scope: !2519)
!2539 = !DILocation(line: 780, column: 14, scope: !2519)
!2540 = !DILocation(line: 783, column: 9, scope: !2519)
!2541 = !DILocation(line: 784, column: 3, scope: !2519)
!2542 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !683, file: !683, line: 251, type: !2543, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !2547)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!104, !59, !104, !101, !104, !83, !57, !2545, !101, !101}
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!2547 = !{!2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2572, !2574, !2577, !2578, !2579, !2580, !2583, !2584, !2587, !2591, !2592, !2600, !2603, !2604, !2606, !2607, !2608, !2609}
!2548 = !DILocalVariable(name: "buffer", arg: 1, scope: !2542, file: !683, line: 251, type: !59)
!2549 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2542, file: !683, line: 251, type: !104)
!2550 = !DILocalVariable(name: "arg", arg: 3, scope: !2542, file: !683, line: 252, type: !101)
!2551 = !DILocalVariable(name: "argsize", arg: 4, scope: !2542, file: !683, line: 252, type: !104)
!2552 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2542, file: !683, line: 253, type: !83)
!2553 = !DILocalVariable(name: "flags", arg: 6, scope: !2542, file: !683, line: 253, type: !57)
!2554 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2542, file: !683, line: 254, type: !2545)
!2555 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2542, file: !683, line: 255, type: !101)
!2556 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2542, file: !683, line: 256, type: !101)
!2557 = !DILocalVariable(name: "unibyte_locale", scope: !2542, file: !683, line: 258, type: !215)
!2558 = !DILocalVariable(name: "len", scope: !2542, file: !683, line: 260, type: !104)
!2559 = !DILocalVariable(name: "orig_buffersize", scope: !2542, file: !683, line: 261, type: !104)
!2560 = !DILocalVariable(name: "quote_string", scope: !2542, file: !683, line: 262, type: !101)
!2561 = !DILocalVariable(name: "quote_string_len", scope: !2542, file: !683, line: 263, type: !104)
!2562 = !DILocalVariable(name: "backslash_escapes", scope: !2542, file: !683, line: 264, type: !215)
!2563 = !DILocalVariable(name: "elide_outer_quotes", scope: !2542, file: !683, line: 265, type: !215)
!2564 = !DILocalVariable(name: "encountered_single_quote", scope: !2542, file: !683, line: 266, type: !215)
!2565 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2542, file: !683, line: 267, type: !215)
!2566 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2542, file: !683, line: 309, type: !215)
!2567 = !DILocalVariable(name: "lq", scope: !2568, file: !683, line: 361, type: !101)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !683, line: 361, column: 11)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !683, line: 360, column: 13)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !683, line: 333, column: 7)
!2571 = distinct !DILexicalBlock(scope: !2542, file: !683, line: 312, column: 5)
!2572 = !DILocalVariable(name: "i", scope: !2573, file: !683, line: 395, type: !104)
!2573 = distinct !DILexicalBlock(scope: !2542, file: !683, line: 395, column: 3)
!2574 = !DILocalVariable(name: "is_right_quote", scope: !2575, file: !683, line: 397, type: !215)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !683, line: 396, column: 5)
!2576 = distinct !DILexicalBlock(scope: !2573, file: !683, line: 395, column: 3)
!2577 = !DILocalVariable(name: "escaping", scope: !2575, file: !683, line: 398, type: !215)
!2578 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2575, file: !683, line: 399, type: !215)
!2579 = !DILocalVariable(name: "c", scope: !2575, file: !683, line: 417, type: !107)
!2580 = !DILocalVariable(name: "m", scope: !2581, file: !683, line: 598, type: !104)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !683, line: 596, column: 11)
!2582 = distinct !DILexicalBlock(scope: !2575, file: !683, line: 419, column: 9)
!2583 = !DILocalVariable(name: "printable", scope: !2581, file: !683, line: 600, type: !215)
!2584 = !DILocalVariable(name: "mbs", scope: !2585, file: !683, line: 609, type: !753)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !683, line: 608, column: 15)
!2586 = distinct !DILexicalBlock(scope: !2581, file: !683, line: 602, column: 17)
!2587 = !DILocalVariable(name: "w", scope: !2588, file: !683, line: 618, type: !663)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !683, line: 617, column: 19)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !683, line: 616, column: 17)
!2590 = distinct !DILexicalBlock(scope: !2585, file: !683, line: 616, column: 17)
!2591 = !DILocalVariable(name: "bytes", scope: !2588, file: !683, line: 619, type: !104)
!2592 = !DILocalVariable(name: "j", scope: !2593, file: !683, line: 648, type: !104)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !683, line: 648, column: 29)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !683, line: 647, column: 27)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !683, line: 645, column: 29)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !683, line: 636, column: 23)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !683, line: 628, column: 30)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !683, line: 623, column: 30)
!2599 = distinct !DILexicalBlock(scope: !2588, file: !683, line: 621, column: 25)
!2600 = !DILocalVariable(name: "ilim", scope: !2601, file: !683, line: 674, type: !104)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !683, line: 671, column: 15)
!2602 = distinct !DILexicalBlock(scope: !2581, file: !683, line: 670, column: 17)
!2603 = !DILabel(scope: !2542, name: "process_input", file: !683, line: 308)
!2604 = !DILabel(scope: !2605, name: "c_and_shell_escape", file: !683, line: 502)
!2605 = distinct !DILexicalBlock(scope: !2582, file: !683, line: 478, column: 9)
!2606 = !DILabel(scope: !2605, name: "c_escape", file: !683, line: 507)
!2607 = !DILabel(scope: !2575, name: "store_escape", file: !683, line: 709)
!2608 = !DILabel(scope: !2575, name: "store_c", file: !683, line: 712)
!2609 = !DILabel(scope: !2542, name: "force_outer_quoting_style", file: !683, line: 753)
!2610 = !DILocation(line: 0, scope: !2542)
!2611 = !DILocation(line: 258, column: 25, scope: !2542)
!2612 = !DILocation(line: 258, column: 36, scope: !2542)
!2613 = !DILocation(line: 267, column: 3, scope: !2542)
!2614 = !DILocation(line: 261, column: 10, scope: !2542)
!2615 = !DILocation(line: 262, column: 15, scope: !2542)
!2616 = !DILocation(line: 263, column: 10, scope: !2542)
!2617 = !DILocation(line: 308, column: 2, scope: !2542)
!2618 = !DILocation(line: 311, column: 3, scope: !2542)
!2619 = !DILocation(line: 318, column: 11, scope: !2571)
!2620 = !DILocation(line: 319, column: 9, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !683, line: 319, column: 9)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !683, line: 319, column: 9)
!2623 = distinct !DILexicalBlock(scope: !2571, file: !683, line: 318, column: 11)
!2624 = !DILocation(line: 319, column: 9, scope: !2622)
!2625 = !DILocation(line: 0, scope: !744, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 357, column: 26, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !683, line: 335, column: 11)
!2628 = distinct !DILexicalBlock(scope: !2570, file: !683, line: 334, column: 13)
!2629 = !DILocation(line: 199, column: 29, scope: !744, inlinedAt: !2626)
!2630 = !DILocation(line: 201, column: 19, scope: !2631, inlinedAt: !2626)
!2631 = distinct !DILexicalBlock(scope: !744, file: !683, line: 201, column: 7)
!2632 = !DILocation(line: 201, column: 7, scope: !744, inlinedAt: !2626)
!2633 = !DILocation(line: 229, column: 3, scope: !744, inlinedAt: !2626)
!2634 = !DILocation(line: 230, column: 3, scope: !744, inlinedAt: !2626)
!2635 = !DILocation(line: 230, column: 13, scope: !744, inlinedAt: !2626)
!2636 = !DILocalVariable(name: "ps", arg: 1, scope: !2637, file: !1911, line: 1135, type: !2640)
!2637 = distinct !DISubprogram(name: "mbszero", scope: !1911, file: !1911, line: 1135, type: !2638, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !2641)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{null, !2640}
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!2641 = !{!2636}
!2642 = !DILocation(line: 0, scope: !2637, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 230, column: 18, scope: !744, inlinedAt: !2626)
!2644 = !DILocalVariable(name: "__dest", arg: 1, scope: !2645, file: !1333, line: 57, type: !98)
!2645 = distinct !DISubprogram(name: "memset", scope: !1333, file: !1333, line: 57, type: !2399, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !2646)
!2646 = !{!2644, !2647, !2648}
!2647 = !DILocalVariable(name: "__ch", arg: 2, scope: !2645, file: !1333, line: 57, type: !57)
!2648 = !DILocalVariable(name: "__len", arg: 3, scope: !2645, file: !1333, line: 57, type: !104)
!2649 = !DILocation(line: 0, scope: !2645, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 1137, column: 3, scope: !2637, inlinedAt: !2643)
!2651 = !DILocation(line: 59, column: 10, scope: !2645, inlinedAt: !2650)
!2652 = !DILocation(line: 231, column: 7, scope: !2653, inlinedAt: !2626)
!2653 = distinct !DILexicalBlock(scope: !744, file: !683, line: 231, column: 7)
!2654 = !DILocation(line: 231, column: 40, scope: !2653, inlinedAt: !2626)
!2655 = !DILocation(line: 231, column: 45, scope: !2653, inlinedAt: !2626)
!2656 = !DILocation(line: 235, column: 1, scope: !744, inlinedAt: !2626)
!2657 = !DILocation(line: 0, scope: !744, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 358, column: 27, scope: !2627)
!2659 = !DILocation(line: 199, column: 29, scope: !744, inlinedAt: !2658)
!2660 = !DILocation(line: 201, column: 19, scope: !2631, inlinedAt: !2658)
!2661 = !DILocation(line: 201, column: 7, scope: !744, inlinedAt: !2658)
!2662 = !DILocation(line: 229, column: 3, scope: !744, inlinedAt: !2658)
!2663 = !DILocation(line: 230, column: 3, scope: !744, inlinedAt: !2658)
!2664 = !DILocation(line: 230, column: 13, scope: !744, inlinedAt: !2658)
!2665 = !DILocation(line: 0, scope: !2637, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 230, column: 18, scope: !744, inlinedAt: !2658)
!2667 = !DILocation(line: 0, scope: !2645, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 1137, column: 3, scope: !2637, inlinedAt: !2666)
!2669 = !DILocation(line: 59, column: 10, scope: !2645, inlinedAt: !2668)
!2670 = !DILocation(line: 231, column: 7, scope: !2653, inlinedAt: !2658)
!2671 = !DILocation(line: 231, column: 40, scope: !2653, inlinedAt: !2658)
!2672 = !DILocation(line: 231, column: 45, scope: !2653, inlinedAt: !2658)
!2673 = !DILocation(line: 235, column: 1, scope: !744, inlinedAt: !2658)
!2674 = !DILocation(line: 360, column: 13, scope: !2570)
!2675 = !DILocation(line: 0, scope: !2568)
!2676 = !DILocation(line: 361, column: 45, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2568, file: !683, line: 361, column: 11)
!2678 = !DILocation(line: 361, column: 11, scope: !2568)
!2679 = !DILocation(line: 362, column: 13, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !683, line: 362, column: 13)
!2681 = distinct !DILexicalBlock(scope: !2677, file: !683, line: 362, column: 13)
!2682 = !DILocation(line: 362, column: 13, scope: !2681)
!2683 = !DILocation(line: 361, column: 52, scope: !2677)
!2684 = distinct !{!2684, !2678, !2685, !1154}
!2685 = !DILocation(line: 362, column: 13, scope: !2568)
!2686 = !DILocation(line: 260, column: 10, scope: !2542)
!2687 = !DILocation(line: 365, column: 28, scope: !2570)
!2688 = !DILocation(line: 367, column: 7, scope: !2571)
!2689 = !DILocation(line: 370, column: 7, scope: !2571)
!2690 = !DILocation(line: 376, column: 11, scope: !2571)
!2691 = !DILocation(line: 381, column: 11, scope: !2571)
!2692 = !DILocation(line: 382, column: 9, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !683, line: 382, column: 9)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !683, line: 382, column: 9)
!2695 = distinct !DILexicalBlock(scope: !2571, file: !683, line: 381, column: 11)
!2696 = !DILocation(line: 382, column: 9, scope: !2694)
!2697 = !DILocation(line: 389, column: 7, scope: !2571)
!2698 = !DILocation(line: 392, column: 7, scope: !2571)
!2699 = !DILocation(line: 0, scope: !2573)
!2700 = !DILocation(line: 395, column: 8, scope: !2573)
!2701 = !DILocation(line: 395, scope: !2573)
!2702 = !DILocation(line: 395, column: 34, scope: !2576)
!2703 = !DILocation(line: 395, column: 26, scope: !2576)
!2704 = !DILocation(line: 395, column: 48, scope: !2576)
!2705 = !DILocation(line: 395, column: 55, scope: !2576)
!2706 = !DILocation(line: 395, column: 3, scope: !2573)
!2707 = !DILocation(line: 395, column: 67, scope: !2576)
!2708 = !DILocation(line: 0, scope: !2575)
!2709 = !DILocation(line: 402, column: 11, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2575, file: !683, line: 401, column: 11)
!2711 = !DILocation(line: 404, column: 17, scope: !2710)
!2712 = !DILocation(line: 405, column: 39, scope: !2710)
!2713 = !DILocation(line: 409, column: 32, scope: !2710)
!2714 = !DILocation(line: 405, column: 19, scope: !2710)
!2715 = !DILocation(line: 405, column: 15, scope: !2710)
!2716 = !DILocation(line: 410, column: 11, scope: !2710)
!2717 = !DILocation(line: 410, column: 25, scope: !2710)
!2718 = !DILocalVariable(name: "__s1", arg: 1, scope: !2719, file: !1120, line: 974, type: !1252)
!2719 = distinct !DISubprogram(name: "memeq", scope: !1120, file: !1120, line: 974, type: !2361, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !2720)
!2720 = !{!2718, !2721, !2722}
!2721 = !DILocalVariable(name: "__s2", arg: 2, scope: !2719, file: !1120, line: 974, type: !1252)
!2722 = !DILocalVariable(name: "__n", arg: 3, scope: !2719, file: !1120, line: 974, type: !104)
!2723 = !DILocation(line: 0, scope: !2719, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 410, column: 14, scope: !2710)
!2725 = !DILocation(line: 976, column: 11, scope: !2719, inlinedAt: !2724)
!2726 = !DILocation(line: 976, column: 10, scope: !2719, inlinedAt: !2724)
!2727 = !DILocation(line: 401, column: 11, scope: !2575)
!2728 = !DILocation(line: 417, column: 25, scope: !2575)
!2729 = !DILocation(line: 418, column: 7, scope: !2575)
!2730 = !DILocation(line: 421, column: 15, scope: !2582)
!2731 = !DILocation(line: 423, column: 15, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !683, line: 423, column: 15)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !683, line: 422, column: 13)
!2734 = distinct !DILexicalBlock(scope: !2582, file: !683, line: 421, column: 15)
!2735 = !DILocation(line: 423, column: 15, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2732, file: !683, line: 423, column: 15)
!2737 = !DILocation(line: 423, column: 15, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !683, line: 423, column: 15)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !683, line: 423, column: 15)
!2740 = distinct !DILexicalBlock(scope: !2736, file: !683, line: 423, column: 15)
!2741 = !DILocation(line: 423, column: 15, scope: !2739)
!2742 = !DILocation(line: 423, column: 15, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !683, line: 423, column: 15)
!2744 = distinct !DILexicalBlock(scope: !2740, file: !683, line: 423, column: 15)
!2745 = !DILocation(line: 423, column: 15, scope: !2744)
!2746 = !DILocation(line: 423, column: 15, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !683, line: 423, column: 15)
!2748 = distinct !DILexicalBlock(scope: !2740, file: !683, line: 423, column: 15)
!2749 = !DILocation(line: 423, column: 15, scope: !2748)
!2750 = !DILocation(line: 423, column: 15, scope: !2740)
!2751 = !DILocation(line: 423, column: 15, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !683, line: 423, column: 15)
!2753 = distinct !DILexicalBlock(scope: !2732, file: !683, line: 423, column: 15)
!2754 = !DILocation(line: 423, column: 15, scope: !2753)
!2755 = !DILocation(line: 431, column: 19, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2733, file: !683, line: 430, column: 19)
!2757 = !DILocation(line: 431, column: 24, scope: !2756)
!2758 = !DILocation(line: 431, column: 28, scope: !2756)
!2759 = !DILocation(line: 431, column: 38, scope: !2756)
!2760 = !DILocation(line: 431, column: 48, scope: !2756)
!2761 = !DILocation(line: 431, column: 59, scope: !2756)
!2762 = !DILocation(line: 433, column: 19, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !683, line: 433, column: 19)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !683, line: 433, column: 19)
!2765 = distinct !DILexicalBlock(scope: !2756, file: !683, line: 432, column: 17)
!2766 = !DILocation(line: 433, column: 19, scope: !2764)
!2767 = !DILocation(line: 434, column: 19, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !683, line: 434, column: 19)
!2769 = distinct !DILexicalBlock(scope: !2765, file: !683, line: 434, column: 19)
!2770 = !DILocation(line: 434, column: 19, scope: !2769)
!2771 = !DILocation(line: 435, column: 17, scope: !2765)
!2772 = !DILocation(line: 442, column: 20, scope: !2734)
!2773 = !DILocation(line: 447, column: 11, scope: !2582)
!2774 = !DILocation(line: 450, column: 19, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2582, file: !683, line: 448, column: 13)
!2776 = !DILocation(line: 456, column: 19, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2775, file: !683, line: 455, column: 19)
!2778 = !DILocation(line: 456, column: 24, scope: !2777)
!2779 = !DILocation(line: 456, column: 28, scope: !2777)
!2780 = !DILocation(line: 456, column: 38, scope: !2777)
!2781 = !DILocation(line: 456, column: 47, scope: !2777)
!2782 = !DILocation(line: 456, column: 41, scope: !2777)
!2783 = !DILocation(line: 456, column: 52, scope: !2777)
!2784 = !DILocation(line: 455, column: 19, scope: !2775)
!2785 = !DILocation(line: 457, column: 25, scope: !2777)
!2786 = !DILocation(line: 457, column: 17, scope: !2777)
!2787 = !DILocation(line: 464, column: 25, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2777, file: !683, line: 458, column: 19)
!2789 = !DILocation(line: 468, column: 21, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !683, line: 468, column: 21)
!2791 = distinct !DILexicalBlock(scope: !2788, file: !683, line: 468, column: 21)
!2792 = !DILocation(line: 468, column: 21, scope: !2791)
!2793 = !DILocation(line: 469, column: 21, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !683, line: 469, column: 21)
!2795 = distinct !DILexicalBlock(scope: !2788, file: !683, line: 469, column: 21)
!2796 = !DILocation(line: 469, column: 21, scope: !2795)
!2797 = !DILocation(line: 470, column: 21, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !683, line: 470, column: 21)
!2799 = distinct !DILexicalBlock(scope: !2788, file: !683, line: 470, column: 21)
!2800 = !DILocation(line: 470, column: 21, scope: !2799)
!2801 = !DILocation(line: 471, column: 21, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !683, line: 471, column: 21)
!2803 = distinct !DILexicalBlock(scope: !2788, file: !683, line: 471, column: 21)
!2804 = !DILocation(line: 471, column: 21, scope: !2803)
!2805 = !DILocation(line: 472, column: 21, scope: !2788)
!2806 = !DILocation(line: 482, column: 33, scope: !2605)
!2807 = !DILocation(line: 483, column: 33, scope: !2605)
!2808 = !DILocation(line: 485, column: 33, scope: !2605)
!2809 = !DILocation(line: 486, column: 33, scope: !2605)
!2810 = !DILocation(line: 487, column: 33, scope: !2605)
!2811 = !DILocation(line: 490, column: 17, scope: !2605)
!2812 = !DILocation(line: 492, column: 21, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !683, line: 491, column: 15)
!2814 = distinct !DILexicalBlock(scope: !2605, file: !683, line: 490, column: 17)
!2815 = !DILocation(line: 499, column: 35, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2605, file: !683, line: 499, column: 17)
!2817 = !DILocation(line: 0, scope: !2605)
!2818 = !DILocation(line: 502, column: 11, scope: !2605)
!2819 = !DILocation(line: 504, column: 17, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2605, file: !683, line: 503, column: 17)
!2821 = !DILocation(line: 507, column: 11, scope: !2605)
!2822 = !DILocation(line: 508, column: 17, scope: !2605)
!2823 = !DILocation(line: 517, column: 15, scope: !2582)
!2824 = !DILocation(line: 517, column: 40, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2582, file: !683, line: 517, column: 15)
!2826 = !DILocation(line: 517, column: 47, scope: !2825)
!2827 = !DILocation(line: 517, column: 18, scope: !2825)
!2828 = !DILocation(line: 521, column: 17, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2582, file: !683, line: 521, column: 15)
!2830 = !DILocation(line: 521, column: 15, scope: !2582)
!2831 = !DILocation(line: 525, column: 11, scope: !2582)
!2832 = !DILocation(line: 537, column: 15, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2582, file: !683, line: 536, column: 15)
!2834 = !DILocation(line: 536, column: 15, scope: !2582)
!2835 = !DILocation(line: 544, column: 15, scope: !2582)
!2836 = !DILocation(line: 546, column: 19, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !683, line: 545, column: 13)
!2838 = distinct !DILexicalBlock(scope: !2582, file: !683, line: 544, column: 15)
!2839 = !DILocation(line: 549, column: 19, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2837, file: !683, line: 549, column: 19)
!2841 = !DILocation(line: 549, column: 30, scope: !2840)
!2842 = !DILocation(line: 558, column: 15, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !683, line: 558, column: 15)
!2844 = distinct !DILexicalBlock(scope: !2837, file: !683, line: 558, column: 15)
!2845 = !DILocation(line: 558, column: 15, scope: !2844)
!2846 = !DILocation(line: 559, column: 15, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !683, line: 559, column: 15)
!2848 = distinct !DILexicalBlock(scope: !2837, file: !683, line: 559, column: 15)
!2849 = !DILocation(line: 559, column: 15, scope: !2848)
!2850 = !DILocation(line: 560, column: 15, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !683, line: 560, column: 15)
!2852 = distinct !DILexicalBlock(scope: !2837, file: !683, line: 560, column: 15)
!2853 = !DILocation(line: 560, column: 15, scope: !2852)
!2854 = !DILocation(line: 562, column: 13, scope: !2837)
!2855 = !DILocation(line: 602, column: 17, scope: !2581)
!2856 = !DILocation(line: 0, scope: !2581)
!2857 = !DILocation(line: 605, column: 29, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2586, file: !683, line: 603, column: 15)
!2859 = !DILocation(line: 605, column: 41, scope: !2858)
!2860 = !DILocation(line: 606, column: 15, scope: !2858)
!2861 = !DILocation(line: 609, column: 17, scope: !2585)
!2862 = !DILocation(line: 609, column: 27, scope: !2585)
!2863 = !DILocation(line: 0, scope: !2637, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 609, column: 32, scope: !2585)
!2865 = !DILocation(line: 0, scope: !2645, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 1137, column: 3, scope: !2637, inlinedAt: !2864)
!2867 = !DILocation(line: 59, column: 10, scope: !2645, inlinedAt: !2866)
!2868 = !DILocation(line: 613, column: 29, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2585, file: !683, line: 613, column: 21)
!2870 = !DILocation(line: 613, column: 21, scope: !2585)
!2871 = !DILocation(line: 614, column: 29, scope: !2869)
!2872 = !DILocation(line: 614, column: 19, scope: !2869)
!2873 = !DILocation(line: 618, column: 21, scope: !2588)
!2874 = !DILocation(line: 620, column: 54, scope: !2588)
!2875 = !DILocation(line: 0, scope: !2588)
!2876 = !DILocation(line: 619, column: 36, scope: !2588)
!2877 = !DILocation(line: 621, column: 25, scope: !2588)
!2878 = !DILocation(line: 631, column: 38, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2597, file: !683, line: 629, column: 23)
!2880 = !DILocation(line: 631, column: 48, scope: !2879)
!2881 = !DILocation(line: 626, column: 25, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2598, file: !683, line: 624, column: 23)
!2883 = !DILocation(line: 631, column: 51, scope: !2879)
!2884 = !DILocation(line: 631, column: 25, scope: !2879)
!2885 = !DILocation(line: 632, column: 28, scope: !2879)
!2886 = !DILocation(line: 631, column: 34, scope: !2879)
!2887 = distinct !{!2887, !2884, !2885, !1154}
!2888 = !DILocation(line: 646, column: 29, scope: !2595)
!2889 = !DILocation(line: 0, scope: !2593)
!2890 = !DILocation(line: 649, column: 49, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2593, file: !683, line: 648, column: 29)
!2892 = !DILocation(line: 649, column: 39, scope: !2891)
!2893 = !DILocation(line: 649, column: 31, scope: !2891)
!2894 = !DILocation(line: 648, column: 60, scope: !2891)
!2895 = !DILocation(line: 648, column: 50, scope: !2891)
!2896 = !DILocation(line: 648, column: 29, scope: !2593)
!2897 = distinct !{!2897, !2896, !2898, !1154}
!2898 = !DILocation(line: 654, column: 33, scope: !2593)
!2899 = !DILocation(line: 657, column: 43, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2596, file: !683, line: 657, column: 29)
!2901 = !DILocalVariable(name: "wc", arg: 1, scope: !2902, file: !2903, line: 865, type: !2906)
!2902 = distinct !DISubprogram(name: "c32isprint", scope: !2903, file: !2903, line: 865, type: !2904, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !2908)
!2903 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!57, !2906}
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2907, line: 20, baseType: !69)
!2907 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2908 = !{!2901}
!2909 = !DILocation(line: 0, scope: !2902, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 657, column: 31, scope: !2900)
!2911 = !DILocation(line: 871, column: 10, scope: !2902, inlinedAt: !2910)
!2912 = !DILocation(line: 657, column: 31, scope: !2900)
!2913 = !DILocation(line: 664, column: 23, scope: !2588)
!2914 = !DILocation(line: 665, column: 19, scope: !2589)
!2915 = !DILocation(line: 666, column: 15, scope: !2586)
!2916 = !DILocation(line: 753, column: 2, scope: !2542)
!2917 = !DILocation(line: 756, column: 51, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2542, file: !683, line: 756, column: 7)
!2919 = !DILocation(line: 0, scope: !2586)
!2920 = !DILocation(line: 670, column: 19, scope: !2602)
!2921 = !DILocation(line: 670, column: 23, scope: !2602)
!2922 = !DILocation(line: 674, column: 33, scope: !2601)
!2923 = !DILocation(line: 0, scope: !2601)
!2924 = !DILocation(line: 676, column: 17, scope: !2601)
!2925 = !DILocation(line: 398, column: 12, scope: !2575)
!2926 = !DILocation(line: 678, column: 43, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !683, line: 678, column: 25)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !683, line: 677, column: 19)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !683, line: 676, column: 17)
!2930 = distinct !DILexicalBlock(scope: !2601, file: !683, line: 676, column: 17)
!2931 = !DILocation(line: 680, column: 25, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !683, line: 680, column: 25)
!2933 = distinct !DILexicalBlock(scope: !2927, file: !683, line: 679, column: 23)
!2934 = !DILocation(line: 680, column: 25, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2932, file: !683, line: 680, column: 25)
!2936 = !DILocation(line: 680, column: 25, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !683, line: 680, column: 25)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !683, line: 680, column: 25)
!2939 = distinct !DILexicalBlock(scope: !2935, file: !683, line: 680, column: 25)
!2940 = !DILocation(line: 680, column: 25, scope: !2938)
!2941 = !DILocation(line: 680, column: 25, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !683, line: 680, column: 25)
!2943 = distinct !DILexicalBlock(scope: !2939, file: !683, line: 680, column: 25)
!2944 = !DILocation(line: 680, column: 25, scope: !2943)
!2945 = !DILocation(line: 680, column: 25, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !683, line: 680, column: 25)
!2947 = distinct !DILexicalBlock(scope: !2939, file: !683, line: 680, column: 25)
!2948 = !DILocation(line: 680, column: 25, scope: !2947)
!2949 = !DILocation(line: 680, column: 25, scope: !2939)
!2950 = !DILocation(line: 680, column: 25, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !683, line: 680, column: 25)
!2952 = distinct !DILexicalBlock(scope: !2932, file: !683, line: 680, column: 25)
!2953 = !DILocation(line: 680, column: 25, scope: !2952)
!2954 = !DILocation(line: 681, column: 25, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !683, line: 681, column: 25)
!2956 = distinct !DILexicalBlock(scope: !2933, file: !683, line: 681, column: 25)
!2957 = !DILocation(line: 681, column: 25, scope: !2956)
!2958 = !DILocation(line: 682, column: 25, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !683, line: 682, column: 25)
!2960 = distinct !DILexicalBlock(scope: !2933, file: !683, line: 682, column: 25)
!2961 = !DILocation(line: 682, column: 25, scope: !2960)
!2962 = !DILocation(line: 683, column: 38, scope: !2933)
!2963 = !DILocation(line: 683, column: 33, scope: !2933)
!2964 = !DILocation(line: 684, column: 23, scope: !2933)
!2965 = !DILocation(line: 685, column: 30, scope: !2927)
!2966 = !DILocation(line: 687, column: 25, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !683, line: 687, column: 25)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !683, line: 687, column: 25)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !683, line: 686, column: 23)
!2970 = distinct !DILexicalBlock(scope: !2927, file: !683, line: 685, column: 30)
!2971 = !DILocation(line: 687, column: 25, scope: !2968)
!2972 = !DILocation(line: 689, column: 23, scope: !2969)
!2973 = !DILocation(line: 690, column: 35, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2928, file: !683, line: 690, column: 25)
!2975 = !DILocation(line: 690, column: 30, scope: !2974)
!2976 = !DILocation(line: 690, column: 25, scope: !2928)
!2977 = !DILocation(line: 692, column: 21, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !683, line: 692, column: 21)
!2979 = distinct !DILexicalBlock(scope: !2928, file: !683, line: 692, column: 21)
!2980 = !DILocation(line: 692, column: 21, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !683, line: 692, column: 21)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !683, line: 692, column: 21)
!2983 = distinct !DILexicalBlock(scope: !2978, file: !683, line: 692, column: 21)
!2984 = !DILocation(line: 692, column: 21, scope: !2982)
!2985 = !DILocation(line: 692, column: 21, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !683, line: 692, column: 21)
!2987 = distinct !DILexicalBlock(scope: !2983, file: !683, line: 692, column: 21)
!2988 = !DILocation(line: 692, column: 21, scope: !2987)
!2989 = !DILocation(line: 692, column: 21, scope: !2983)
!2990 = !DILocation(line: 0, scope: !2928)
!2991 = !DILocation(line: 693, column: 21, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !683, line: 693, column: 21)
!2993 = distinct !DILexicalBlock(scope: !2928, file: !683, line: 693, column: 21)
!2994 = !DILocation(line: 693, column: 21, scope: !2993)
!2995 = !DILocation(line: 694, column: 25, scope: !2928)
!2996 = !DILocation(line: 676, column: 17, scope: !2929)
!2997 = distinct !{!2997, !2998, !2999}
!2998 = !DILocation(line: 676, column: 17, scope: !2930)
!2999 = !DILocation(line: 695, column: 19, scope: !2930)
!3000 = !DILocation(line: 409, column: 30, scope: !2710)
!3001 = !DILocation(line: 702, column: 34, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2575, file: !683, line: 702, column: 11)
!3003 = !DILocation(line: 704, column: 14, scope: !3002)
!3004 = !DILocation(line: 705, column: 14, scope: !3002)
!3005 = !DILocation(line: 705, column: 35, scope: !3002)
!3006 = !DILocation(line: 705, column: 17, scope: !3002)
!3007 = !DILocation(line: 705, column: 47, scope: !3002)
!3008 = !DILocation(line: 705, column: 65, scope: !3002)
!3009 = !DILocation(line: 706, column: 11, scope: !3002)
!3010 = !DILocation(line: 702, column: 11, scope: !2575)
!3011 = !DILocation(line: 395, column: 15, scope: !2573)
!3012 = !DILocation(line: 709, column: 5, scope: !2575)
!3013 = !DILocation(line: 710, column: 7, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !2575, file: !683, line: 710, column: 7)
!3015 = !DILocation(line: 710, column: 7, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3014, file: !683, line: 710, column: 7)
!3017 = !DILocation(line: 710, column: 7, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !683, line: 710, column: 7)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !683, line: 710, column: 7)
!3020 = distinct !DILexicalBlock(scope: !3016, file: !683, line: 710, column: 7)
!3021 = !DILocation(line: 710, column: 7, scope: !3019)
!3022 = !DILocation(line: 710, column: 7, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !683, line: 710, column: 7)
!3024 = distinct !DILexicalBlock(scope: !3020, file: !683, line: 710, column: 7)
!3025 = !DILocation(line: 710, column: 7, scope: !3024)
!3026 = !DILocation(line: 710, column: 7, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !683, line: 710, column: 7)
!3028 = distinct !DILexicalBlock(scope: !3020, file: !683, line: 710, column: 7)
!3029 = !DILocation(line: 710, column: 7, scope: !3028)
!3030 = !DILocation(line: 710, column: 7, scope: !3020)
!3031 = !DILocation(line: 710, column: 7, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !683, line: 710, column: 7)
!3033 = distinct !DILexicalBlock(scope: !3014, file: !683, line: 710, column: 7)
!3034 = !DILocation(line: 710, column: 7, scope: !3033)
!3035 = !DILocation(line: 712, column: 5, scope: !2575)
!3036 = !DILocation(line: 713, column: 7, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !683, line: 713, column: 7)
!3038 = distinct !DILexicalBlock(scope: !2575, file: !683, line: 713, column: 7)
!3039 = !DILocation(line: 417, column: 21, scope: !2575)
!3040 = !DILocation(line: 713, column: 7, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !683, line: 713, column: 7)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !683, line: 713, column: 7)
!3043 = distinct !DILexicalBlock(scope: !3037, file: !683, line: 713, column: 7)
!3044 = !DILocation(line: 713, column: 7, scope: !3042)
!3045 = !DILocation(line: 713, column: 7, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !683, line: 713, column: 7)
!3047 = distinct !DILexicalBlock(scope: !3043, file: !683, line: 713, column: 7)
!3048 = !DILocation(line: 713, column: 7, scope: !3047)
!3049 = !DILocation(line: 713, column: 7, scope: !3043)
!3050 = !DILocation(line: 714, column: 7, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !683, line: 714, column: 7)
!3052 = distinct !DILexicalBlock(scope: !2575, file: !683, line: 714, column: 7)
!3053 = !DILocation(line: 714, column: 7, scope: !3052)
!3054 = !DILocation(line: 716, column: 11, scope: !2575)
!3055 = !DILocation(line: 718, column: 5, scope: !2576)
!3056 = !DILocation(line: 395, column: 82, scope: !2576)
!3057 = !DILocation(line: 395, column: 3, scope: !2576)
!3058 = distinct !{!3058, !2706, !3059, !1154}
!3059 = !DILocation(line: 718, column: 5, scope: !2573)
!3060 = !DILocation(line: 720, column: 11, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !2542, file: !683, line: 720, column: 7)
!3062 = !DILocation(line: 720, column: 16, scope: !3061)
!3063 = !DILocation(line: 728, column: 51, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !2542, file: !683, line: 728, column: 7)
!3065 = !DILocation(line: 731, column: 11, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3064, file: !683, line: 730, column: 5)
!3067 = !DILocation(line: 732, column: 16, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3066, file: !683, line: 731, column: 11)
!3069 = !DILocation(line: 732, column: 9, scope: !3068)
!3070 = !DILocation(line: 736, column: 18, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3068, file: !683, line: 736, column: 16)
!3072 = !DILocation(line: 736, column: 29, scope: !3071)
!3073 = !DILocation(line: 745, column: 7, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !2542, file: !683, line: 745, column: 7)
!3075 = !DILocation(line: 745, column: 20, scope: !3074)
!3076 = !DILocation(line: 746, column: 12, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !683, line: 746, column: 5)
!3078 = distinct !DILexicalBlock(scope: !3074, file: !683, line: 746, column: 5)
!3079 = !DILocation(line: 746, column: 5, scope: !3078)
!3080 = !DILocation(line: 747, column: 7, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !683, line: 747, column: 7)
!3082 = distinct !DILexicalBlock(scope: !3077, file: !683, line: 747, column: 7)
!3083 = !DILocation(line: 747, column: 7, scope: !3082)
!3084 = !DILocation(line: 746, column: 39, scope: !3077)
!3085 = distinct !{!3085, !3079, !3086, !1154}
!3086 = !DILocation(line: 747, column: 7, scope: !3078)
!3087 = !DILocation(line: 749, column: 11, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !2542, file: !683, line: 749, column: 7)
!3089 = !DILocation(line: 749, column: 7, scope: !2542)
!3090 = !DILocation(line: 750, column: 5, scope: !3088)
!3091 = !DILocation(line: 750, column: 17, scope: !3088)
!3092 = !DILocation(line: 756, column: 21, scope: !2918)
!3093 = !DILocation(line: 760, column: 42, scope: !2542)
!3094 = !DILocation(line: 758, column: 10, scope: !2542)
!3095 = !DILocation(line: 758, column: 3, scope: !2542)
!3096 = !DILocation(line: 762, column: 1, scope: !2542)
!3097 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1228, file: !1228, line: 98, type: !3098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!3098 = !DISubroutineType(types: !947)
!3099 = !DISubprogram(name: "iswprint", scope: !3100, file: !3100, line: 120, type: !2904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!3100 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3101 = distinct !DISubprogram(name: "quotearg_alloc", scope: !683, file: !683, line: 788, type: !3102, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!59, !101, !104, !2435}
!3104 = !{!3105, !3106, !3107}
!3105 = !DILocalVariable(name: "arg", arg: 1, scope: !3101, file: !683, line: 788, type: !101)
!3106 = !DILocalVariable(name: "argsize", arg: 2, scope: !3101, file: !683, line: 788, type: !104)
!3107 = !DILocalVariable(name: "o", arg: 3, scope: !3101, file: !683, line: 789, type: !2435)
!3108 = !DILocation(line: 0, scope: !3101)
!3109 = !DILocalVariable(name: "arg", arg: 1, scope: !3110, file: !683, line: 801, type: !101)
!3110 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !683, file: !683, line: 801, type: !3111, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3113)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!59, !101, !104, !968, !2435}
!3113 = !{!3109, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121}
!3114 = !DILocalVariable(name: "argsize", arg: 2, scope: !3110, file: !683, line: 801, type: !104)
!3115 = !DILocalVariable(name: "size", arg: 3, scope: !3110, file: !683, line: 801, type: !968)
!3116 = !DILocalVariable(name: "o", arg: 4, scope: !3110, file: !683, line: 802, type: !2435)
!3117 = !DILocalVariable(name: "p", scope: !3110, file: !683, line: 804, type: !2435)
!3118 = !DILocalVariable(name: "saved_errno", scope: !3110, file: !683, line: 805, type: !57)
!3119 = !DILocalVariable(name: "flags", scope: !3110, file: !683, line: 807, type: !57)
!3120 = !DILocalVariable(name: "bufsize", scope: !3110, file: !683, line: 808, type: !104)
!3121 = !DILocalVariable(name: "buf", scope: !3110, file: !683, line: 812, type: !59)
!3122 = !DILocation(line: 0, scope: !3110, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 791, column: 10, scope: !3101)
!3124 = !DILocation(line: 804, column: 37, scope: !3110, inlinedAt: !3123)
!3125 = !DILocation(line: 805, column: 21, scope: !3110, inlinedAt: !3123)
!3126 = !DILocation(line: 807, column: 18, scope: !3110, inlinedAt: !3123)
!3127 = !DILocation(line: 807, column: 24, scope: !3110, inlinedAt: !3123)
!3128 = !DILocation(line: 808, column: 72, scope: !3110, inlinedAt: !3123)
!3129 = !DILocation(line: 809, column: 56, scope: !3110, inlinedAt: !3123)
!3130 = !DILocation(line: 810, column: 49, scope: !3110, inlinedAt: !3123)
!3131 = !DILocation(line: 811, column: 49, scope: !3110, inlinedAt: !3123)
!3132 = !DILocation(line: 808, column: 20, scope: !3110, inlinedAt: !3123)
!3133 = !DILocation(line: 811, column: 62, scope: !3110, inlinedAt: !3123)
!3134 = !DILocation(line: 812, column: 15, scope: !3110, inlinedAt: !3123)
!3135 = !DILocation(line: 813, column: 60, scope: !3110, inlinedAt: !3123)
!3136 = !DILocation(line: 815, column: 32, scope: !3110, inlinedAt: !3123)
!3137 = !DILocation(line: 815, column: 47, scope: !3110, inlinedAt: !3123)
!3138 = !DILocation(line: 813, column: 3, scope: !3110, inlinedAt: !3123)
!3139 = !DILocation(line: 816, column: 9, scope: !3110, inlinedAt: !3123)
!3140 = !DILocation(line: 791, column: 3, scope: !3101)
!3141 = !DILocation(line: 0, scope: !3110)
!3142 = !DILocation(line: 804, column: 37, scope: !3110)
!3143 = !DILocation(line: 805, column: 21, scope: !3110)
!3144 = !DILocation(line: 807, column: 18, scope: !3110)
!3145 = !DILocation(line: 807, column: 27, scope: !3110)
!3146 = !DILocation(line: 807, column: 24, scope: !3110)
!3147 = !DILocation(line: 808, column: 72, scope: !3110)
!3148 = !DILocation(line: 809, column: 56, scope: !3110)
!3149 = !DILocation(line: 810, column: 49, scope: !3110)
!3150 = !DILocation(line: 811, column: 49, scope: !3110)
!3151 = !DILocation(line: 808, column: 20, scope: !3110)
!3152 = !DILocation(line: 811, column: 62, scope: !3110)
!3153 = !DILocation(line: 812, column: 15, scope: !3110)
!3154 = !DILocation(line: 813, column: 60, scope: !3110)
!3155 = !DILocation(line: 815, column: 32, scope: !3110)
!3156 = !DILocation(line: 815, column: 47, scope: !3110)
!3157 = !DILocation(line: 813, column: 3, scope: !3110)
!3158 = !DILocation(line: 816, column: 9, scope: !3110)
!3159 = !DILocation(line: 817, column: 7, scope: !3110)
!3160 = !DILocation(line: 818, column: 11, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3110, file: !683, line: 817, column: 7)
!3162 = !DILocation(line: 818, column: 5, scope: !3161)
!3163 = !DILocation(line: 819, column: 3, scope: !3110)
!3164 = distinct !DISubprogram(name: "quotearg_free", scope: !683, file: !683, line: 837, type: !638, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3165)
!3165 = !{!3166, !3167}
!3166 = !DILocalVariable(name: "sv", scope: !3164, file: !683, line: 839, type: !767)
!3167 = !DILocalVariable(name: "i", scope: !3168, file: !683, line: 840, type: !57)
!3168 = distinct !DILexicalBlock(scope: !3164, file: !683, line: 840, column: 3)
!3169 = !DILocation(line: 839, column: 24, scope: !3164)
!3170 = !DILocation(line: 0, scope: !3164)
!3171 = !DILocation(line: 0, scope: !3168)
!3172 = !DILocation(line: 840, column: 21, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3168, file: !683, line: 840, column: 3)
!3174 = !DILocation(line: 840, column: 3, scope: !3168)
!3175 = !DILocation(line: 842, column: 13, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3164, file: !683, line: 842, column: 7)
!3177 = !{!3178, !1038, i64 8}
!3178 = !{!"slotvec", !1269, i64 0, !1038, i64 8}
!3179 = !DILocation(line: 842, column: 17, scope: !3176)
!3180 = !DILocation(line: 842, column: 7, scope: !3164)
!3181 = !DILocation(line: 841, column: 17, scope: !3173)
!3182 = !DILocation(line: 841, column: 5, scope: !3173)
!3183 = !DILocation(line: 840, column: 32, scope: !3173)
!3184 = distinct !{!3184, !3174, !3185, !1154}
!3185 = !DILocation(line: 841, column: 20, scope: !3168)
!3186 = !DILocation(line: 844, column: 7, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3176, file: !683, line: 843, column: 5)
!3188 = !DILocation(line: 845, column: 21, scope: !3187)
!3189 = !{!3178, !1269, i64 0}
!3190 = !DILocation(line: 846, column: 20, scope: !3187)
!3191 = !DILocation(line: 847, column: 5, scope: !3187)
!3192 = !DILocation(line: 848, column: 10, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3164, file: !683, line: 848, column: 7)
!3194 = !DILocation(line: 848, column: 7, scope: !3164)
!3195 = !DILocation(line: 850, column: 7, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3193, file: !683, line: 849, column: 5)
!3197 = !DILocation(line: 851, column: 15, scope: !3196)
!3198 = !DILocation(line: 852, column: 5, scope: !3196)
!3199 = !DILocation(line: 853, column: 10, scope: !3164)
!3200 = !DILocation(line: 854, column: 1, scope: !3164)
!3201 = distinct !DISubprogram(name: "quotearg_n", scope: !683, file: !683, line: 919, type: !1221, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3202)
!3202 = !{!3203, !3204}
!3203 = !DILocalVariable(name: "n", arg: 1, scope: !3201, file: !683, line: 919, type: !57)
!3204 = !DILocalVariable(name: "arg", arg: 2, scope: !3201, file: !683, line: 919, type: !101)
!3205 = !DILocation(line: 0, scope: !3201)
!3206 = !DILocation(line: 921, column: 10, scope: !3201)
!3207 = !DILocation(line: 921, column: 3, scope: !3201)
!3208 = distinct !DISubprogram(name: "quotearg_n_options", scope: !683, file: !683, line: 866, type: !3209, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3211)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!59, !57, !101, !104, !2435}
!3211 = !{!3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3222, !3223, !3225, !3226, !3227}
!3212 = !DILocalVariable(name: "n", arg: 1, scope: !3208, file: !683, line: 866, type: !57)
!3213 = !DILocalVariable(name: "arg", arg: 2, scope: !3208, file: !683, line: 866, type: !101)
!3214 = !DILocalVariable(name: "argsize", arg: 3, scope: !3208, file: !683, line: 866, type: !104)
!3215 = !DILocalVariable(name: "options", arg: 4, scope: !3208, file: !683, line: 867, type: !2435)
!3216 = !DILocalVariable(name: "saved_errno", scope: !3208, file: !683, line: 869, type: !57)
!3217 = !DILocalVariable(name: "sv", scope: !3208, file: !683, line: 871, type: !767)
!3218 = !DILocalVariable(name: "nslots_max", scope: !3208, file: !683, line: 873, type: !57)
!3219 = !DILocalVariable(name: "preallocated", scope: !3220, file: !683, line: 879, type: !215)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !683, line: 878, column: 5)
!3221 = distinct !DILexicalBlock(scope: !3208, file: !683, line: 877, column: 7)
!3222 = !DILocalVariable(name: "new_nslots", scope: !3220, file: !683, line: 880, type: !981)
!3223 = !DILocalVariable(name: "size", scope: !3224, file: !683, line: 891, type: !104)
!3224 = distinct !DILexicalBlock(scope: !3208, file: !683, line: 890, column: 3)
!3225 = !DILocalVariable(name: "val", scope: !3224, file: !683, line: 892, type: !59)
!3226 = !DILocalVariable(name: "flags", scope: !3224, file: !683, line: 894, type: !57)
!3227 = !DILocalVariable(name: "qsize", scope: !3224, file: !683, line: 895, type: !104)
!3228 = !DILocation(line: 0, scope: !3208)
!3229 = !DILocation(line: 869, column: 21, scope: !3208)
!3230 = !DILocation(line: 871, column: 24, scope: !3208)
!3231 = !DILocation(line: 874, column: 17, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3208, file: !683, line: 874, column: 7)
!3233 = !DILocation(line: 875, column: 5, scope: !3232)
!3234 = !DILocation(line: 877, column: 7, scope: !3221)
!3235 = !DILocation(line: 877, column: 14, scope: !3221)
!3236 = !DILocation(line: 877, column: 7, scope: !3208)
!3237 = !DILocation(line: 879, column: 31, scope: !3220)
!3238 = !DILocation(line: 0, scope: !3220)
!3239 = !DILocation(line: 880, column: 7, scope: !3220)
!3240 = !DILocation(line: 880, column: 26, scope: !3220)
!3241 = !DILocation(line: 880, column: 13, scope: !3220)
!3242 = !DILocation(line: 882, column: 31, scope: !3220)
!3243 = !DILocation(line: 883, column: 33, scope: !3220)
!3244 = !DILocation(line: 883, column: 42, scope: !3220)
!3245 = !DILocation(line: 883, column: 31, scope: !3220)
!3246 = !DILocation(line: 882, column: 22, scope: !3220)
!3247 = !DILocation(line: 882, column: 15, scope: !3220)
!3248 = !DILocation(line: 884, column: 11, scope: !3220)
!3249 = !DILocation(line: 885, column: 15, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3220, file: !683, line: 884, column: 11)
!3251 = !{i64 0, i64 8, !1268, i64 8, i64 8, !1037}
!3252 = !DILocation(line: 885, column: 9, scope: !3250)
!3253 = !DILocation(line: 886, column: 20, scope: !3220)
!3254 = !DILocation(line: 886, column: 18, scope: !3220)
!3255 = !DILocation(line: 886, column: 32, scope: !3220)
!3256 = !DILocation(line: 886, column: 43, scope: !3220)
!3257 = !DILocation(line: 886, column: 53, scope: !3220)
!3258 = !DILocation(line: 0, scope: !2645, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 886, column: 7, scope: !3220)
!3260 = !DILocation(line: 59, column: 10, scope: !2645, inlinedAt: !3259)
!3261 = !DILocation(line: 887, column: 16, scope: !3220)
!3262 = !DILocation(line: 887, column: 14, scope: !3220)
!3263 = !DILocation(line: 888, column: 5, scope: !3221)
!3264 = !DILocation(line: 888, column: 5, scope: !3220)
!3265 = !DILocation(line: 891, column: 19, scope: !3224)
!3266 = !DILocation(line: 891, column: 25, scope: !3224)
!3267 = !DILocation(line: 0, scope: !3224)
!3268 = !DILocation(line: 892, column: 23, scope: !3224)
!3269 = !DILocation(line: 894, column: 26, scope: !3224)
!3270 = !DILocation(line: 894, column: 32, scope: !3224)
!3271 = !DILocation(line: 896, column: 55, scope: !3224)
!3272 = !DILocation(line: 897, column: 55, scope: !3224)
!3273 = !DILocation(line: 898, column: 55, scope: !3224)
!3274 = !DILocation(line: 899, column: 55, scope: !3224)
!3275 = !DILocation(line: 895, column: 20, scope: !3224)
!3276 = !DILocation(line: 901, column: 14, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3224, file: !683, line: 901, column: 9)
!3278 = !DILocation(line: 901, column: 9, scope: !3224)
!3279 = !DILocation(line: 903, column: 35, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3277, file: !683, line: 902, column: 7)
!3281 = !DILocation(line: 903, column: 20, scope: !3280)
!3282 = !DILocation(line: 904, column: 17, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3280, file: !683, line: 904, column: 13)
!3284 = !DILocation(line: 904, column: 13, scope: !3280)
!3285 = !DILocation(line: 905, column: 11, scope: !3283)
!3286 = !DILocation(line: 906, column: 27, scope: !3280)
!3287 = !DILocation(line: 906, column: 19, scope: !3280)
!3288 = !DILocation(line: 907, column: 69, scope: !3280)
!3289 = !DILocation(line: 909, column: 44, scope: !3280)
!3290 = !DILocation(line: 910, column: 44, scope: !3280)
!3291 = !DILocation(line: 907, column: 9, scope: !3280)
!3292 = !DILocation(line: 911, column: 7, scope: !3280)
!3293 = !DILocation(line: 913, column: 11, scope: !3224)
!3294 = !DILocation(line: 914, column: 5, scope: !3224)
!3295 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !683, file: !683, line: 925, type: !3296, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3298)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!59, !57, !101, !104}
!3298 = !{!3299, !3300, !3301}
!3299 = !DILocalVariable(name: "n", arg: 1, scope: !3295, file: !683, line: 925, type: !57)
!3300 = !DILocalVariable(name: "arg", arg: 2, scope: !3295, file: !683, line: 925, type: !101)
!3301 = !DILocalVariable(name: "argsize", arg: 3, scope: !3295, file: !683, line: 925, type: !104)
!3302 = !DILocation(line: 0, scope: !3295)
!3303 = !DILocation(line: 927, column: 10, scope: !3295)
!3304 = !DILocation(line: 927, column: 3, scope: !3295)
!3305 = distinct !DISubprogram(name: "quotearg", scope: !683, file: !683, line: 931, type: !1230, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3306)
!3306 = !{!3307}
!3307 = !DILocalVariable(name: "arg", arg: 1, scope: !3305, file: !683, line: 931, type: !101)
!3308 = !DILocation(line: 0, scope: !3305)
!3309 = !DILocation(line: 0, scope: !3201, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 933, column: 10, scope: !3305)
!3311 = !DILocation(line: 921, column: 10, scope: !3201, inlinedAt: !3310)
!3312 = !DILocation(line: 933, column: 3, scope: !3305)
!3313 = distinct !DISubprogram(name: "quotearg_mem", scope: !683, file: !683, line: 937, type: !3314, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3316)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!59, !101, !104}
!3316 = !{!3317, !3318}
!3317 = !DILocalVariable(name: "arg", arg: 1, scope: !3313, file: !683, line: 937, type: !101)
!3318 = !DILocalVariable(name: "argsize", arg: 2, scope: !3313, file: !683, line: 937, type: !104)
!3319 = !DILocation(line: 0, scope: !3313)
!3320 = !DILocation(line: 0, scope: !3295, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 939, column: 10, scope: !3313)
!3322 = !DILocation(line: 927, column: 10, scope: !3295, inlinedAt: !3321)
!3323 = !DILocation(line: 939, column: 3, scope: !3313)
!3324 = distinct !DISubprogram(name: "quotearg_n_style", scope: !683, file: !683, line: 943, type: !3325, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3327)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!59, !57, !83, !101}
!3327 = !{!3328, !3329, !3330, !3331}
!3328 = !DILocalVariable(name: "n", arg: 1, scope: !3324, file: !683, line: 943, type: !57)
!3329 = !DILocalVariable(name: "s", arg: 2, scope: !3324, file: !683, line: 943, type: !83)
!3330 = !DILocalVariable(name: "arg", arg: 3, scope: !3324, file: !683, line: 943, type: !101)
!3331 = !DILocalVariable(name: "o", scope: !3324, file: !683, line: 945, type: !2436)
!3332 = !DILocation(line: 0, scope: !3324)
!3333 = !DILocation(line: 945, column: 3, scope: !3324)
!3334 = !DILocation(line: 945, column: 32, scope: !3324)
!3335 = !{!3336}
!3336 = distinct !{!3336, !3337, !"quoting_options_from_style: argument 0"}
!3337 = distinct !{!3337, !"quoting_options_from_style"}
!3338 = !DILocation(line: 945, column: 36, scope: !3324)
!3339 = !DILocalVariable(name: "style", arg: 1, scope: !3340, file: !683, line: 183, type: !83)
!3340 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !683, file: !683, line: 183, type: !3341, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3343)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!722, !83}
!3343 = !{!3339, !3344}
!3344 = !DILocalVariable(name: "o", scope: !3340, file: !683, line: 185, type: !722)
!3345 = !DILocation(line: 0, scope: !3340, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 945, column: 36, scope: !3324)
!3347 = !DILocation(line: 185, column: 26, scope: !3340, inlinedAt: !3346)
!3348 = !DILocation(line: 186, column: 13, scope: !3349, inlinedAt: !3346)
!3349 = distinct !DILexicalBlock(scope: !3340, file: !683, line: 186, column: 7)
!3350 = !DILocation(line: 186, column: 7, scope: !3340, inlinedAt: !3346)
!3351 = !DILocation(line: 187, column: 5, scope: !3349, inlinedAt: !3346)
!3352 = !DILocation(line: 188, column: 11, scope: !3340, inlinedAt: !3346)
!3353 = !DILocation(line: 946, column: 10, scope: !3324)
!3354 = !DILocation(line: 947, column: 1, scope: !3324)
!3355 = !DILocation(line: 946, column: 3, scope: !3324)
!3356 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !683, file: !683, line: 950, type: !3357, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3359)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!59, !57, !83, !101, !104}
!3359 = !{!3360, !3361, !3362, !3363, !3364}
!3360 = !DILocalVariable(name: "n", arg: 1, scope: !3356, file: !683, line: 950, type: !57)
!3361 = !DILocalVariable(name: "s", arg: 2, scope: !3356, file: !683, line: 950, type: !83)
!3362 = !DILocalVariable(name: "arg", arg: 3, scope: !3356, file: !683, line: 951, type: !101)
!3363 = !DILocalVariable(name: "argsize", arg: 4, scope: !3356, file: !683, line: 951, type: !104)
!3364 = !DILocalVariable(name: "o", scope: !3356, file: !683, line: 953, type: !2436)
!3365 = !DILocation(line: 0, scope: !3356)
!3366 = !DILocation(line: 953, column: 3, scope: !3356)
!3367 = !DILocation(line: 953, column: 32, scope: !3356)
!3368 = !{!3369}
!3369 = distinct !{!3369, !3370, !"quoting_options_from_style: argument 0"}
!3370 = distinct !{!3370, !"quoting_options_from_style"}
!3371 = !DILocation(line: 953, column: 36, scope: !3356)
!3372 = !DILocation(line: 0, scope: !3340, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 953, column: 36, scope: !3356)
!3374 = !DILocation(line: 185, column: 26, scope: !3340, inlinedAt: !3373)
!3375 = !DILocation(line: 186, column: 13, scope: !3349, inlinedAt: !3373)
!3376 = !DILocation(line: 186, column: 7, scope: !3340, inlinedAt: !3373)
!3377 = !DILocation(line: 187, column: 5, scope: !3349, inlinedAt: !3373)
!3378 = !DILocation(line: 188, column: 11, scope: !3340, inlinedAt: !3373)
!3379 = !DILocation(line: 954, column: 10, scope: !3356)
!3380 = !DILocation(line: 955, column: 1, scope: !3356)
!3381 = !DILocation(line: 954, column: 3, scope: !3356)
!3382 = distinct !DISubprogram(name: "quotearg_style", scope: !683, file: !683, line: 958, type: !3383, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3385)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!59, !83, !101}
!3385 = !{!3386, !3387}
!3386 = !DILocalVariable(name: "s", arg: 1, scope: !3382, file: !683, line: 958, type: !83)
!3387 = !DILocalVariable(name: "arg", arg: 2, scope: !3382, file: !683, line: 958, type: !101)
!3388 = !DILocation(line: 0, scope: !3382)
!3389 = !DILocation(line: 0, scope: !3324, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 960, column: 10, scope: !3382)
!3391 = !DILocation(line: 945, column: 3, scope: !3324, inlinedAt: !3390)
!3392 = !DILocation(line: 945, column: 32, scope: !3324, inlinedAt: !3390)
!3393 = !{!3394}
!3394 = distinct !{!3394, !3395, !"quoting_options_from_style: argument 0"}
!3395 = distinct !{!3395, !"quoting_options_from_style"}
!3396 = !DILocation(line: 945, column: 36, scope: !3324, inlinedAt: !3390)
!3397 = !DILocation(line: 0, scope: !3340, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 945, column: 36, scope: !3324, inlinedAt: !3390)
!3399 = !DILocation(line: 185, column: 26, scope: !3340, inlinedAt: !3398)
!3400 = !DILocation(line: 186, column: 13, scope: !3349, inlinedAt: !3398)
!3401 = !DILocation(line: 186, column: 7, scope: !3340, inlinedAt: !3398)
!3402 = !DILocation(line: 187, column: 5, scope: !3349, inlinedAt: !3398)
!3403 = !DILocation(line: 188, column: 11, scope: !3340, inlinedAt: !3398)
!3404 = !DILocation(line: 946, column: 10, scope: !3324, inlinedAt: !3390)
!3405 = !DILocation(line: 947, column: 1, scope: !3324, inlinedAt: !3390)
!3406 = !DILocation(line: 960, column: 3, scope: !3382)
!3407 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !683, file: !683, line: 964, type: !3408, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3410)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!59, !83, !101, !104}
!3410 = !{!3411, !3412, !3413}
!3411 = !DILocalVariable(name: "s", arg: 1, scope: !3407, file: !683, line: 964, type: !83)
!3412 = !DILocalVariable(name: "arg", arg: 2, scope: !3407, file: !683, line: 964, type: !101)
!3413 = !DILocalVariable(name: "argsize", arg: 3, scope: !3407, file: !683, line: 964, type: !104)
!3414 = !DILocation(line: 0, scope: !3407)
!3415 = !DILocation(line: 0, scope: !3356, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 966, column: 10, scope: !3407)
!3417 = !DILocation(line: 953, column: 3, scope: !3356, inlinedAt: !3416)
!3418 = !DILocation(line: 953, column: 32, scope: !3356, inlinedAt: !3416)
!3419 = !{!3420}
!3420 = distinct !{!3420, !3421, !"quoting_options_from_style: argument 0"}
!3421 = distinct !{!3421, !"quoting_options_from_style"}
!3422 = !DILocation(line: 953, column: 36, scope: !3356, inlinedAt: !3416)
!3423 = !DILocation(line: 0, scope: !3340, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 953, column: 36, scope: !3356, inlinedAt: !3416)
!3425 = !DILocation(line: 185, column: 26, scope: !3340, inlinedAt: !3424)
!3426 = !DILocation(line: 186, column: 13, scope: !3349, inlinedAt: !3424)
!3427 = !DILocation(line: 186, column: 7, scope: !3340, inlinedAt: !3424)
!3428 = !DILocation(line: 187, column: 5, scope: !3349, inlinedAt: !3424)
!3429 = !DILocation(line: 188, column: 11, scope: !3340, inlinedAt: !3424)
!3430 = !DILocation(line: 954, column: 10, scope: !3356, inlinedAt: !3416)
!3431 = !DILocation(line: 955, column: 1, scope: !3356, inlinedAt: !3416)
!3432 = !DILocation(line: 966, column: 3, scope: !3407)
!3433 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !683, file: !683, line: 970, type: !3434, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3436)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!59, !101, !104, !4}
!3436 = !{!3437, !3438, !3439, !3440}
!3437 = !DILocalVariable(name: "arg", arg: 1, scope: !3433, file: !683, line: 970, type: !101)
!3438 = !DILocalVariable(name: "argsize", arg: 2, scope: !3433, file: !683, line: 970, type: !104)
!3439 = !DILocalVariable(name: "ch", arg: 3, scope: !3433, file: !683, line: 970, type: !4)
!3440 = !DILocalVariable(name: "options", scope: !3433, file: !683, line: 972, type: !722)
!3441 = !DILocation(line: 0, scope: !3433)
!3442 = !DILocation(line: 972, column: 3, scope: !3433)
!3443 = !DILocation(line: 972, column: 26, scope: !3433)
!3444 = !DILocation(line: 973, column: 13, scope: !3433)
!3445 = !{i64 0, i64 4, !1116, i64 4, i64 4, !1107, i64 8, i64 32, !1116, i64 40, i64 8, !1037, i64 48, i64 8, !1037}
!3446 = !DILocation(line: 0, scope: !2455, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 974, column: 3, scope: !3433)
!3448 = !DILocation(line: 147, column: 41, scope: !2455, inlinedAt: !3447)
!3449 = !DILocation(line: 147, column: 62, scope: !2455, inlinedAt: !3447)
!3450 = !DILocation(line: 147, column: 57, scope: !2455, inlinedAt: !3447)
!3451 = !DILocation(line: 148, column: 15, scope: !2455, inlinedAt: !3447)
!3452 = !DILocation(line: 149, column: 21, scope: !2455, inlinedAt: !3447)
!3453 = !DILocation(line: 149, column: 24, scope: !2455, inlinedAt: !3447)
!3454 = !DILocation(line: 150, column: 19, scope: !2455, inlinedAt: !3447)
!3455 = !DILocation(line: 150, column: 24, scope: !2455, inlinedAt: !3447)
!3456 = !DILocation(line: 150, column: 6, scope: !2455, inlinedAt: !3447)
!3457 = !DILocation(line: 975, column: 10, scope: !3433)
!3458 = !DILocation(line: 976, column: 1, scope: !3433)
!3459 = !DILocation(line: 975, column: 3, scope: !3433)
!3460 = distinct !DISubprogram(name: "quotearg_char", scope: !683, file: !683, line: 979, type: !3461, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3463)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!59, !101, !4}
!3463 = !{!3464, !3465}
!3464 = !DILocalVariable(name: "arg", arg: 1, scope: !3460, file: !683, line: 979, type: !101)
!3465 = !DILocalVariable(name: "ch", arg: 2, scope: !3460, file: !683, line: 979, type: !4)
!3466 = !DILocation(line: 0, scope: !3460)
!3467 = !DILocation(line: 0, scope: !3433, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 981, column: 10, scope: !3460)
!3469 = !DILocation(line: 972, column: 3, scope: !3433, inlinedAt: !3468)
!3470 = !DILocation(line: 972, column: 26, scope: !3433, inlinedAt: !3468)
!3471 = !DILocation(line: 973, column: 13, scope: !3433, inlinedAt: !3468)
!3472 = !DILocation(line: 0, scope: !2455, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 974, column: 3, scope: !3433, inlinedAt: !3468)
!3474 = !DILocation(line: 147, column: 41, scope: !2455, inlinedAt: !3473)
!3475 = !DILocation(line: 147, column: 62, scope: !2455, inlinedAt: !3473)
!3476 = !DILocation(line: 147, column: 57, scope: !2455, inlinedAt: !3473)
!3477 = !DILocation(line: 148, column: 15, scope: !2455, inlinedAt: !3473)
!3478 = !DILocation(line: 149, column: 21, scope: !2455, inlinedAt: !3473)
!3479 = !DILocation(line: 149, column: 24, scope: !2455, inlinedAt: !3473)
!3480 = !DILocation(line: 150, column: 19, scope: !2455, inlinedAt: !3473)
!3481 = !DILocation(line: 150, column: 24, scope: !2455, inlinedAt: !3473)
!3482 = !DILocation(line: 150, column: 6, scope: !2455, inlinedAt: !3473)
!3483 = !DILocation(line: 975, column: 10, scope: !3433, inlinedAt: !3468)
!3484 = !DILocation(line: 976, column: 1, scope: !3433, inlinedAt: !3468)
!3485 = !DILocation(line: 981, column: 3, scope: !3460)
!3486 = distinct !DISubprogram(name: "quotearg_colon", scope: !683, file: !683, line: 985, type: !1230, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3487)
!3487 = !{!3488}
!3488 = !DILocalVariable(name: "arg", arg: 1, scope: !3486, file: !683, line: 985, type: !101)
!3489 = !DILocation(line: 0, scope: !3486)
!3490 = !DILocation(line: 0, scope: !3460, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 987, column: 10, scope: !3486)
!3492 = !DILocation(line: 0, scope: !3433, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 981, column: 10, scope: !3460, inlinedAt: !3491)
!3494 = !DILocation(line: 972, column: 3, scope: !3433, inlinedAt: !3493)
!3495 = !DILocation(line: 972, column: 26, scope: !3433, inlinedAt: !3493)
!3496 = !DILocation(line: 973, column: 13, scope: !3433, inlinedAt: !3493)
!3497 = !DILocation(line: 0, scope: !2455, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 974, column: 3, scope: !3433, inlinedAt: !3493)
!3499 = !DILocation(line: 147, column: 57, scope: !2455, inlinedAt: !3498)
!3500 = !DILocation(line: 149, column: 21, scope: !2455, inlinedAt: !3498)
!3501 = !DILocation(line: 150, column: 6, scope: !2455, inlinedAt: !3498)
!3502 = !DILocation(line: 975, column: 10, scope: !3433, inlinedAt: !3493)
!3503 = !DILocation(line: 976, column: 1, scope: !3433, inlinedAt: !3493)
!3504 = !DILocation(line: 987, column: 3, scope: !3486)
!3505 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !683, file: !683, line: 991, type: !3314, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3506)
!3506 = !{!3507, !3508}
!3507 = !DILocalVariable(name: "arg", arg: 1, scope: !3505, file: !683, line: 991, type: !101)
!3508 = !DILocalVariable(name: "argsize", arg: 2, scope: !3505, file: !683, line: 991, type: !104)
!3509 = !DILocation(line: 0, scope: !3505)
!3510 = !DILocation(line: 0, scope: !3433, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 993, column: 10, scope: !3505)
!3512 = !DILocation(line: 972, column: 3, scope: !3433, inlinedAt: !3511)
!3513 = !DILocation(line: 972, column: 26, scope: !3433, inlinedAt: !3511)
!3514 = !DILocation(line: 973, column: 13, scope: !3433, inlinedAt: !3511)
!3515 = !DILocation(line: 0, scope: !2455, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 974, column: 3, scope: !3433, inlinedAt: !3511)
!3517 = !DILocation(line: 147, column: 57, scope: !2455, inlinedAt: !3516)
!3518 = !DILocation(line: 149, column: 21, scope: !2455, inlinedAt: !3516)
!3519 = !DILocation(line: 150, column: 6, scope: !2455, inlinedAt: !3516)
!3520 = !DILocation(line: 975, column: 10, scope: !3433, inlinedAt: !3511)
!3521 = !DILocation(line: 976, column: 1, scope: !3433, inlinedAt: !3511)
!3522 = !DILocation(line: 993, column: 3, scope: !3505)
!3523 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !683, file: !683, line: 997, type: !3325, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3524)
!3524 = !{!3525, !3526, !3527, !3528}
!3525 = !DILocalVariable(name: "n", arg: 1, scope: !3523, file: !683, line: 997, type: !57)
!3526 = !DILocalVariable(name: "s", arg: 2, scope: !3523, file: !683, line: 997, type: !83)
!3527 = !DILocalVariable(name: "arg", arg: 3, scope: !3523, file: !683, line: 997, type: !101)
!3528 = !DILocalVariable(name: "options", scope: !3523, file: !683, line: 999, type: !722)
!3529 = !DILocation(line: 185, column: 26, scope: !3340, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 1000, column: 13, scope: !3523)
!3531 = !DILocation(line: 0, scope: !3523)
!3532 = !DILocation(line: 999, column: 3, scope: !3523)
!3533 = !DILocation(line: 999, column: 26, scope: !3523)
!3534 = !DILocation(line: 0, scope: !3340, inlinedAt: !3530)
!3535 = !DILocation(line: 186, column: 13, scope: !3349, inlinedAt: !3530)
!3536 = !DILocation(line: 186, column: 7, scope: !3340, inlinedAt: !3530)
!3537 = !DILocation(line: 187, column: 5, scope: !3349, inlinedAt: !3530)
!3538 = !{!3539}
!3539 = distinct !{!3539, !3540, !"quoting_options_from_style: argument 0"}
!3540 = distinct !{!3540, !"quoting_options_from_style"}
!3541 = !DILocation(line: 1000, column: 13, scope: !3523)
!3542 = !DILocation(line: 0, scope: !2455, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 1001, column: 3, scope: !3523)
!3544 = !DILocation(line: 147, column: 57, scope: !2455, inlinedAt: !3543)
!3545 = !DILocation(line: 149, column: 21, scope: !2455, inlinedAt: !3543)
!3546 = !DILocation(line: 150, column: 6, scope: !2455, inlinedAt: !3543)
!3547 = !DILocation(line: 1002, column: 10, scope: !3523)
!3548 = !DILocation(line: 1003, column: 1, scope: !3523)
!3549 = !DILocation(line: 1002, column: 3, scope: !3523)
!3550 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !683, file: !683, line: 1006, type: !3551, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3553)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!59, !57, !101, !101, !101}
!3553 = !{!3554, !3555, !3556, !3557}
!3554 = !DILocalVariable(name: "n", arg: 1, scope: !3550, file: !683, line: 1006, type: !57)
!3555 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3550, file: !683, line: 1006, type: !101)
!3556 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3550, file: !683, line: 1007, type: !101)
!3557 = !DILocalVariable(name: "arg", arg: 4, scope: !3550, file: !683, line: 1007, type: !101)
!3558 = !DILocation(line: 0, scope: !3550)
!3559 = !DILocalVariable(name: "n", arg: 1, scope: !3560, file: !683, line: 1014, type: !57)
!3560 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !683, file: !683, line: 1014, type: !3561, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3563)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!59, !57, !101, !101, !101, !104}
!3563 = !{!3559, !3564, !3565, !3566, !3567, !3568}
!3564 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3560, file: !683, line: 1014, type: !101)
!3565 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3560, file: !683, line: 1015, type: !101)
!3566 = !DILocalVariable(name: "arg", arg: 4, scope: !3560, file: !683, line: 1016, type: !101)
!3567 = !DILocalVariable(name: "argsize", arg: 5, scope: !3560, file: !683, line: 1016, type: !104)
!3568 = !DILocalVariable(name: "o", scope: !3560, file: !683, line: 1018, type: !722)
!3569 = !DILocation(line: 0, scope: !3560, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 1009, column: 10, scope: !3550)
!3571 = !DILocation(line: 1018, column: 3, scope: !3560, inlinedAt: !3570)
!3572 = !DILocation(line: 1018, column: 26, scope: !3560, inlinedAt: !3570)
!3573 = !DILocation(line: 1018, column: 30, scope: !3560, inlinedAt: !3570)
!3574 = !DILocation(line: 0, scope: !2495, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 1019, column: 3, scope: !3560, inlinedAt: !3570)
!3576 = !DILocation(line: 174, column: 12, scope: !2495, inlinedAt: !3575)
!3577 = !DILocation(line: 175, column: 8, scope: !2508, inlinedAt: !3575)
!3578 = !DILocation(line: 175, column: 19, scope: !2508, inlinedAt: !3575)
!3579 = !DILocation(line: 176, column: 5, scope: !2508, inlinedAt: !3575)
!3580 = !DILocation(line: 177, column: 6, scope: !2495, inlinedAt: !3575)
!3581 = !DILocation(line: 177, column: 17, scope: !2495, inlinedAt: !3575)
!3582 = !DILocation(line: 178, column: 6, scope: !2495, inlinedAt: !3575)
!3583 = !DILocation(line: 178, column: 18, scope: !2495, inlinedAt: !3575)
!3584 = !DILocation(line: 1020, column: 10, scope: !3560, inlinedAt: !3570)
!3585 = !DILocation(line: 1021, column: 1, scope: !3560, inlinedAt: !3570)
!3586 = !DILocation(line: 1009, column: 3, scope: !3550)
!3587 = !DILocation(line: 0, scope: !3560)
!3588 = !DILocation(line: 1018, column: 3, scope: !3560)
!3589 = !DILocation(line: 1018, column: 26, scope: !3560)
!3590 = !DILocation(line: 1018, column: 30, scope: !3560)
!3591 = !DILocation(line: 0, scope: !2495, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 1019, column: 3, scope: !3560)
!3593 = !DILocation(line: 174, column: 12, scope: !2495, inlinedAt: !3592)
!3594 = !DILocation(line: 175, column: 8, scope: !2508, inlinedAt: !3592)
!3595 = !DILocation(line: 175, column: 19, scope: !2508, inlinedAt: !3592)
!3596 = !DILocation(line: 176, column: 5, scope: !2508, inlinedAt: !3592)
!3597 = !DILocation(line: 177, column: 6, scope: !2495, inlinedAt: !3592)
!3598 = !DILocation(line: 177, column: 17, scope: !2495, inlinedAt: !3592)
!3599 = !DILocation(line: 178, column: 6, scope: !2495, inlinedAt: !3592)
!3600 = !DILocation(line: 178, column: 18, scope: !2495, inlinedAt: !3592)
!3601 = !DILocation(line: 1020, column: 10, scope: !3560)
!3602 = !DILocation(line: 1021, column: 1, scope: !3560)
!3603 = !DILocation(line: 1020, column: 3, scope: !3560)
!3604 = distinct !DISubprogram(name: "quotearg_custom", scope: !683, file: !683, line: 1024, type: !3605, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3607)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!59, !101, !101, !101}
!3607 = !{!3608, !3609, !3610}
!3608 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3604, file: !683, line: 1024, type: !101)
!3609 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3604, file: !683, line: 1024, type: !101)
!3610 = !DILocalVariable(name: "arg", arg: 3, scope: !3604, file: !683, line: 1025, type: !101)
!3611 = !DILocation(line: 0, scope: !3604)
!3612 = !DILocation(line: 0, scope: !3550, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 1027, column: 10, scope: !3604)
!3614 = !DILocation(line: 0, scope: !3560, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 1009, column: 10, scope: !3550, inlinedAt: !3613)
!3616 = !DILocation(line: 1018, column: 3, scope: !3560, inlinedAt: !3615)
!3617 = !DILocation(line: 1018, column: 26, scope: !3560, inlinedAt: !3615)
!3618 = !DILocation(line: 1018, column: 30, scope: !3560, inlinedAt: !3615)
!3619 = !DILocation(line: 0, scope: !2495, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 1019, column: 3, scope: !3560, inlinedAt: !3615)
!3621 = !DILocation(line: 174, column: 12, scope: !2495, inlinedAt: !3620)
!3622 = !DILocation(line: 175, column: 8, scope: !2508, inlinedAt: !3620)
!3623 = !DILocation(line: 175, column: 19, scope: !2508, inlinedAt: !3620)
!3624 = !DILocation(line: 176, column: 5, scope: !2508, inlinedAt: !3620)
!3625 = !DILocation(line: 177, column: 6, scope: !2495, inlinedAt: !3620)
!3626 = !DILocation(line: 177, column: 17, scope: !2495, inlinedAt: !3620)
!3627 = !DILocation(line: 178, column: 6, scope: !2495, inlinedAt: !3620)
!3628 = !DILocation(line: 178, column: 18, scope: !2495, inlinedAt: !3620)
!3629 = !DILocation(line: 1020, column: 10, scope: !3560, inlinedAt: !3615)
!3630 = !DILocation(line: 1021, column: 1, scope: !3560, inlinedAt: !3615)
!3631 = !DILocation(line: 1027, column: 3, scope: !3604)
!3632 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !683, file: !683, line: 1031, type: !3633, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3635)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!59, !101, !101, !101, !104}
!3635 = !{!3636, !3637, !3638, !3639}
!3636 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3632, file: !683, line: 1031, type: !101)
!3637 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3632, file: !683, line: 1031, type: !101)
!3638 = !DILocalVariable(name: "arg", arg: 3, scope: !3632, file: !683, line: 1032, type: !101)
!3639 = !DILocalVariable(name: "argsize", arg: 4, scope: !3632, file: !683, line: 1032, type: !104)
!3640 = !DILocation(line: 0, scope: !3632)
!3641 = !DILocation(line: 0, scope: !3560, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 1034, column: 10, scope: !3632)
!3643 = !DILocation(line: 1018, column: 3, scope: !3560, inlinedAt: !3642)
!3644 = !DILocation(line: 1018, column: 26, scope: !3560, inlinedAt: !3642)
!3645 = !DILocation(line: 1018, column: 30, scope: !3560, inlinedAt: !3642)
!3646 = !DILocation(line: 0, scope: !2495, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 1019, column: 3, scope: !3560, inlinedAt: !3642)
!3648 = !DILocation(line: 174, column: 12, scope: !2495, inlinedAt: !3647)
!3649 = !DILocation(line: 175, column: 8, scope: !2508, inlinedAt: !3647)
!3650 = !DILocation(line: 175, column: 19, scope: !2508, inlinedAt: !3647)
!3651 = !DILocation(line: 176, column: 5, scope: !2508, inlinedAt: !3647)
!3652 = !DILocation(line: 177, column: 6, scope: !2495, inlinedAt: !3647)
!3653 = !DILocation(line: 177, column: 17, scope: !2495, inlinedAt: !3647)
!3654 = !DILocation(line: 178, column: 6, scope: !2495, inlinedAt: !3647)
!3655 = !DILocation(line: 178, column: 18, scope: !2495, inlinedAt: !3647)
!3656 = !DILocation(line: 1020, column: 10, scope: !3560, inlinedAt: !3642)
!3657 = !DILocation(line: 1021, column: 1, scope: !3560, inlinedAt: !3642)
!3658 = !DILocation(line: 1034, column: 3, scope: !3632)
!3659 = distinct !DISubprogram(name: "quote_n_mem", scope: !683, file: !683, line: 1049, type: !3660, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3662)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!101, !57, !101, !104}
!3662 = !{!3663, !3664, !3665}
!3663 = !DILocalVariable(name: "n", arg: 1, scope: !3659, file: !683, line: 1049, type: !57)
!3664 = !DILocalVariable(name: "arg", arg: 2, scope: !3659, file: !683, line: 1049, type: !101)
!3665 = !DILocalVariable(name: "argsize", arg: 3, scope: !3659, file: !683, line: 1049, type: !104)
!3666 = !DILocation(line: 0, scope: !3659)
!3667 = !DILocation(line: 1051, column: 10, scope: !3659)
!3668 = !DILocation(line: 1051, column: 3, scope: !3659)
!3669 = distinct !DISubprogram(name: "quote_mem", scope: !683, file: !683, line: 1055, type: !3670, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3672)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!101, !101, !104}
!3672 = !{!3673, !3674}
!3673 = !DILocalVariable(name: "arg", arg: 1, scope: !3669, file: !683, line: 1055, type: !101)
!3674 = !DILocalVariable(name: "argsize", arg: 2, scope: !3669, file: !683, line: 1055, type: !104)
!3675 = !DILocation(line: 0, scope: !3669)
!3676 = !DILocation(line: 0, scope: !3659, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 1057, column: 10, scope: !3669)
!3678 = !DILocation(line: 1051, column: 10, scope: !3659, inlinedAt: !3677)
!3679 = !DILocation(line: 1057, column: 3, scope: !3669)
!3680 = distinct !DISubprogram(name: "quote_n", scope: !683, file: !683, line: 1061, type: !3681, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3683)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!101, !57, !101}
!3683 = !{!3684, !3685}
!3684 = !DILocalVariable(name: "n", arg: 1, scope: !3680, file: !683, line: 1061, type: !57)
!3685 = !DILocalVariable(name: "arg", arg: 2, scope: !3680, file: !683, line: 1061, type: !101)
!3686 = !DILocation(line: 0, scope: !3680)
!3687 = !DILocation(line: 0, scope: !3659, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 1063, column: 10, scope: !3680)
!3689 = !DILocation(line: 1051, column: 10, scope: !3659, inlinedAt: !3688)
!3690 = !DILocation(line: 1063, column: 3, scope: !3680)
!3691 = distinct !DISubprogram(name: "quote", scope: !683, file: !683, line: 1067, type: !3692, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !3694)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!101, !101}
!3694 = !{!3695}
!3695 = !DILocalVariable(name: "arg", arg: 1, scope: !3691, file: !683, line: 1067, type: !101)
!3696 = !DILocation(line: 0, scope: !3691)
!3697 = !DILocation(line: 0, scope: !3680, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 1069, column: 10, scope: !3691)
!3699 = !DILocation(line: 0, scope: !3659, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 1063, column: 10, scope: !3680, inlinedAt: !3698)
!3701 = !DILocation(line: 1051, column: 10, scope: !3659, inlinedAt: !3700)
!3702 = !DILocation(line: 1069, column: 3, scope: !3691)
!3703 = distinct !DISubprogram(name: "safe_read", scope: !941, file: !941, line: 56, type: !3704, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !940, retainedNodes: !3707)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!983, !57, !3706, !981}
!3706 = !DIDerivedType(tag: DW_TAG_typedef, name: "bufptr", file: !941, line: 49, baseType: !98)
!3707 = !{!3708, !3709, !3710, !3711}
!3708 = !DILocalVariable(name: "fd", arg: 1, scope: !3703, file: !941, line: 56, type: !57)
!3709 = !DILocalVariable(name: "buf", arg: 2, scope: !3703, file: !941, line: 56, type: !3706)
!3710 = !DILocalVariable(name: "count", arg: 3, scope: !3703, file: !941, line: 56, type: !981)
!3711 = !DILocalVariable(name: "result", scope: !3712, file: !941, line: 60, type: !3715)
!3712 = distinct !DILexicalBlock(scope: !3713, file: !941, line: 59, column: 5)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !941, line: 58, column: 3)
!3714 = distinct !DILexicalBlock(scope: !3703, file: !941, line: 58, column: 3)
!3715 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !3716, line: 108, baseType: !1421)
!3716 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!3717 = !DILocation(line: 0, scope: !3703)
!3718 = !DILocation(line: 58, column: 3, scope: !3703)
!3719 = !DILocation(line: 62, column: 11, scope: !3712)
!3720 = !DILocation(line: 60, column: 24, scope: !3712)
!3721 = !DILocation(line: 0, scope: !3712)
!3722 = !DILocation(line: 62, column: 13, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3712, file: !941, line: 62, column: 11)
!3724 = !DILocation(line: 64, column: 16, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3723, file: !941, line: 64, column: 16)
!3726 = !DILocation(line: 64, column: 16, scope: !3723)
!3727 = distinct !{!3727, !3728, !3729}
!3728 = !DILocation(line: 58, column: 3, scope: !3714)
!3729 = !DILocation(line: 70, column: 5, scope: !3714)
!3730 = !DILocation(line: 66, column: 22, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3725, file: !941, line: 66, column: 16)
!3732 = !DILocation(line: 0, scope: !3713)
!3733 = !DILocation(line: 71, column: 1, scope: !3703)
!3734 = distinct !DISubprogram(name: "mkstemp_safer", scope: !949, file: !949, line: 31, type: !3735, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !3737)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!57, !59}
!3737 = !{!3738}
!3738 = !DILocalVariable(name: "templ", arg: 1, scope: !3734, file: !949, line: 31, type: !59)
!3739 = !DILocation(line: 0, scope: !3734)
!3740 = !DILocation(line: 33, column: 20, scope: !3734)
!3741 = !DILocation(line: 33, column: 10, scope: !3734)
!3742 = !DILocation(line: 33, column: 3, scope: !3734)
!3743 = !DISubprogram(name: "mkstemp", scope: !1228, file: !1228, line: 695, type: !3735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!3744 = distinct !DISubprogram(name: "mkostemp_safer", scope: !949, file: !949, line: 40, type: !3745, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !3747)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!57, !59, !57}
!3747 = !{!3748, !3749}
!3748 = !DILocalVariable(name: "templ", arg: 1, scope: !3744, file: !949, line: 40, type: !59)
!3749 = !DILocalVariable(name: "flags", arg: 2, scope: !3744, file: !949, line: 40, type: !57)
!3750 = !DILocation(line: 0, scope: !3744)
!3751 = !DILocation(line: 42, column: 25, scope: !3744)
!3752 = !DILocation(line: 42, column: 10, scope: !3744)
!3753 = !DILocation(line: 42, column: 3, scope: !3744)
!3754 = !DISubprogram(name: "mkostemp", scope: !1228, file: !1228, line: 749, type: !3745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!3755 = distinct !DISubprogram(name: "path_search", scope: !781, file: !781, line: 92, type: !3756, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !950, retainedNodes: !3758)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!57, !59, !104, !101, !101, !215}
!3758 = !{!3759, !3760, !3761, !3762, !3763, !3764, !3765, !3768, !3769}
!3759 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3755, file: !781, line: 92, type: !59)
!3760 = !DILocalVariable(name: "tmpl_len", arg: 2, scope: !3755, file: !781, line: 92, type: !104)
!3761 = !DILocalVariable(name: "dir", arg: 3, scope: !3755, file: !781, line: 92, type: !101)
!3762 = !DILocalVariable(name: "pfx", arg: 4, scope: !3755, file: !781, line: 92, type: !101)
!3763 = !DILocalVariable(name: "try_tmpdir", arg: 5, scope: !3755, file: !781, line: 93, type: !215)
!3764 = !DILocalVariable(name: "plen", scope: !3755, file: !781, line: 95, type: !104)
!3765 = !DILocalVariable(name: "d", scope: !3766, file: !781, line: 110, type: !101)
!3766 = distinct !DILexicalBlock(scope: !3767, file: !781, line: 109, column: 5)
!3767 = distinct !DILexicalBlock(scope: !3755, file: !781, line: 108, column: 7)
!3768 = !DILocalVariable(name: "dlen", scope: !3755, file: !781, line: 143, type: !104)
!3769 = !DILocalVariable(name: "add_slash", scope: !3755, file: !781, line: 145, type: !215)
!3770 = !DILocation(line: 0, scope: !3755)
!3771 = !DILocation(line: 96, column: 8, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3755, file: !781, line: 96, column: 7)
!3773 = !DILocation(line: 96, column: 12, scope: !3772)
!3774 = !DILocation(line: 96, column: 16, scope: !3772)
!3775 = !DILocation(line: 96, column: 7, scope: !3755)
!3776 = !DILocation(line: 103, column: 14, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3772, file: !781, line: 102, column: 5)
!3778 = !DILocation(line: 104, column: 11, scope: !3777)
!3779 = !DILocation(line: 0, scope: !3772)
!3780 = !DILocation(line: 108, column: 7, scope: !3755)
!3781 = !DILocation(line: 110, column: 23, scope: !3766)
!3782 = !DILocation(line: 0, scope: !3766)
!3783 = !DILocation(line: 111, column: 13, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3766, file: !781, line: 111, column: 11)
!3785 = !DILocation(line: 111, column: 21, scope: !3784)
!3786 = !DILocalVariable(name: "dir", arg: 1, scope: !3787, file: !781, line: 79, type: !101)
!3787 = distinct !DISubprogram(name: "direxists", scope: !781, file: !781, line: 79, type: !1357, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !950, retainedNodes: !3788)
!3788 = !{!3786, !3789}
!3789 = !DILocalVariable(name: "buf", scope: !3787, file: !781, line: 81, type: !3790)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3791, line: 44, size: 1024, elements: !3792)
!3791 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!3792 = !{!3793, !3795, !3797, !3799, !3801, !3803, !3805, !3806, !3807, !3808, !3810, !3811, !3813, !3821, !3822, !3823}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3790, file: !3791, line: 46, baseType: !3794, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !255, line: 145, baseType: !106)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3790, file: !3791, line: 47, baseType: !3796, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !255, line: 148, baseType: !106)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3790, file: !3791, line: 48, baseType: !3798, size: 32, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !255, line: 150, baseType: !69)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3790, file: !3791, line: 49, baseType: !3800, size: 32, offset: 160)
!3800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !255, line: 151, baseType: !69)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3790, file: !3791, line: 50, baseType: !3802, size: 32, offset: 192)
!3802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !255, line: 146, baseType: !69)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3790, file: !3791, line: 51, baseType: !3804, size: 32, offset: 224)
!3804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !255, line: 147, baseType: !69)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3790, file: !3791, line: 52, baseType: !3794, size: 64, offset: 256)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3790, file: !3791, line: 53, baseType: !3794, size: 64, offset: 320)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3790, file: !3791, line: 54, baseType: !254, size: 64, offset: 384)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3790, file: !3791, line: 55, baseType: !3809, size: 32, offset: 448)
!3809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !255, line: 175, baseType: !57)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3790, file: !3791, line: 56, baseType: !57, size: 32, offset: 480)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3790, file: !3791, line: 57, baseType: !3812, size: 64, offset: 512)
!3812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !255, line: 180, baseType: !256)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3790, file: !3791, line: 65, baseType: !3814, size: 128, offset: 576)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3815, line: 11, size: 128, elements: !3816)
!3815 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!3816 = !{!3817, !3819}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3814, file: !3815, line: 16, baseType: !3818, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !255, line: 160, baseType: !256)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3814, file: !3815, line: 21, baseType: !3820, size: 64, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !255, line: 197, baseType: !256)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3790, file: !3791, line: 66, baseType: !3814, size: 128, offset: 704)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3790, file: !3791, line: 67, baseType: !3814, size: 128, offset: 832)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3790, file: !3791, line: 79, baseType: !3824, size: 64, offset: 960)
!3824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 64, elements: !112)
!3825 = !DILocation(line: 0, scope: !3787, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 111, column: 24, scope: !3784)
!3827 = !DILocation(line: 81, column: 3, scope: !3787, inlinedAt: !3826)
!3828 = !DILocation(line: 81, column: 17, scope: !3787, inlinedAt: !3826)
!3829 = !DILocation(line: 82, column: 10, scope: !3787, inlinedAt: !3826)
!3830 = !DILocation(line: 82, column: 43, scope: !3787, inlinedAt: !3826)
!3831 = !DILocation(line: 82, column: 48, scope: !3787, inlinedAt: !3826)
!3832 = !DILocation(line: 83, column: 1, scope: !3787, inlinedAt: !3826)
!3833 = !DILocation(line: 111, column: 11, scope: !3766)
!3834 = !DILocation(line: 113, column: 20, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3784, file: !781, line: 113, column: 16)
!3836 = !DILocation(line: 113, column: 28, scope: !3835)
!3837 = !DILocation(line: 0, scope: !3787, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 113, column: 31, scope: !3835)
!3839 = !DILocation(line: 81, column: 3, scope: !3787, inlinedAt: !3838)
!3840 = !DILocation(line: 81, column: 17, scope: !3787, inlinedAt: !3838)
!3841 = !DILocation(line: 82, column: 10, scope: !3787, inlinedAt: !3838)
!3842 = !DILocation(line: 82, column: 43, scope: !3787, inlinedAt: !3838)
!3843 = !DILocation(line: 82, column: 48, scope: !3787, inlinedAt: !3838)
!3844 = !DILocation(line: 83, column: 1, scope: !3787, inlinedAt: !3838)
!3845 = !DILocation(line: 113, column: 16, scope: !3784)
!3846 = !DILocation(line: 118, column: 11, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3755, file: !781, line: 118, column: 7)
!3848 = !DILocation(line: 118, column: 7, scope: !3755)
!3849 = !DILocation(line: 0, scope: !3787, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 132, column: 11, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3852, file: !781, line: 132, column: 11)
!3852 = distinct !DILexicalBlock(scope: !3847, file: !781, line: 119, column: 5)
!3853 = !DILocation(line: 81, column: 3, scope: !3787, inlinedAt: !3850)
!3854 = !DILocation(line: 81, column: 17, scope: !3787, inlinedAt: !3850)
!3855 = !DILocation(line: 82, column: 10, scope: !3787, inlinedAt: !3850)
!3856 = !DILocation(line: 82, column: 43, scope: !3787, inlinedAt: !3850)
!3857 = !DILocation(line: 82, column: 48, scope: !3787, inlinedAt: !3850)
!3858 = !DILocation(line: 83, column: 1, scope: !3787, inlinedAt: !3850)
!3859 = !DILocation(line: 132, column: 11, scope: !3852)
!3860 = !DILocation(line: 138, column: 11, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !781, line: 137, column: 9)
!3862 = distinct !DILexicalBlock(scope: !3851, file: !781, line: 134, column: 16)
!3863 = !DILocation(line: 139, column: 11, scope: !3861)
!3864 = !DILocation(line: 143, column: 17, scope: !3755)
!3865 = !DILocation(line: 149, column: 20, scope: !3755)
!3866 = !DILocation(line: 149, column: 25, scope: !3755)
!3867 = !DILocation(line: 149, column: 29, scope: !3755)
!3868 = !DILocation(line: 153, column: 25, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3755, file: !781, line: 153, column: 7)
!3870 = !DILocation(line: 153, column: 23, scope: !3869)
!3871 = !DILocation(line: 153, column: 35, scope: !3869)
!3872 = !DILocation(line: 153, column: 46, scope: !3869)
!3873 = !DILocation(line: 153, column: 16, scope: !3869)
!3874 = !DILocation(line: 153, column: 7, scope: !3755)
!3875 = !DILocation(line: 155, column: 7, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3869, file: !781, line: 154, column: 5)
!3877 = !DILocation(line: 156, column: 7, scope: !3876)
!3878 = !DILocalVariable(name: "__dest", arg: 1, scope: !3879, file: !1333, line: 26, type: !1336)
!3879 = distinct !DISubprogram(name: "memcpy", scope: !1333, file: !1333, line: 26, type: !1334, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !950, retainedNodes: !3880)
!3880 = !{!3878, !3881, !3882}
!3881 = !DILocalVariable(name: "__src", arg: 2, scope: !3879, file: !1333, line: 26, type: !1251)
!3882 = !DILocalVariable(name: "__len", arg: 3, scope: !3879, file: !1333, line: 26, type: !104)
!3883 = !DILocation(line: 0, scope: !3879, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 159, column: 3, scope: !3755)
!3885 = !DILocation(line: 29, column: 10, scope: !3879, inlinedAt: !3884)
!3886 = !DILocation(line: 160, column: 3, scope: !3755)
!3887 = !DILocation(line: 161, column: 3, scope: !3755)
!3888 = !DILocation(line: 162, column: 1, scope: !3755)
!3889 = !DISubprogram(name: "secure_getenv", scope: !1228, file: !1228, line: 646, type: !1230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!3890 = !DISubprogram(name: "stat", scope: !3891, file: !3891, line: 205, type: !3892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!3891 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!57, !1098, !3894}
!3894 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3895)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3896 = !DISubprogram(name: "__builtin___sprintf_chk", scope: !781, file: !781, line: 160, type: !3897, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!57, !59, !57, !106, !101, null}
!3899 = distinct !DISubprogram(name: "fd_safer", scope: !954, file: !954, line: 37, type: !1576, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !953, retainedNodes: !3900)
!3900 = !{!3901, !3902, !3905}
!3901 = !DILocalVariable(name: "fd", arg: 1, scope: !3899, file: !954, line: 37, type: !57)
!3902 = !DILocalVariable(name: "f", scope: !3903, file: !954, line: 41, type: !57)
!3903 = distinct !DILexicalBlock(scope: !3904, file: !954, line: 40, column: 5)
!3904 = distinct !DILexicalBlock(scope: !3899, file: !954, line: 39, column: 7)
!3905 = !DILocalVariable(name: "saved_errno", scope: !3903, file: !954, line: 42, type: !57)
!3906 = !DILocation(line: 0, scope: !3899)
!3907 = !DILocation(line: 39, column: 26, scope: !3904)
!3908 = !DILocation(line: 41, column: 15, scope: !3903)
!3909 = !DILocation(line: 0, scope: !3903)
!3910 = !DILocation(line: 42, column: 25, scope: !3903)
!3911 = !DILocation(line: 43, column: 7, scope: !3903)
!3912 = !DILocation(line: 44, column: 13, scope: !3903)
!3913 = !DILocation(line: 46, column: 5, scope: !3903)
!3914 = !DILocation(line: 48, column: 3, scope: !3899)
!3915 = distinct !DISubprogram(name: "version_etc_arn", scope: !790, file: !790, line: 61, type: !3916, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !3952)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{null, !3918, !101, !101, !101, !99, !104}
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !3920)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !3921)
!3921 = !{!3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3920, file: !232, line: 51, baseType: !57, size: 32)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3920, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3920, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3920, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3920, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3920, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3920, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3920, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3920, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3920, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3920, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3920, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3920, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3920, file: !232, line: 70, baseType: !3936, size: 64, offset: 832)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3920, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3920, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3920, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3920, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3920, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3920, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3920, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3920, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3920, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3920, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3920, file: !232, line: 93, baseType: !3936, size: 64, offset: 1344)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3920, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3920, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3920, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3920, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!3952 = !{!3953, !3954, !3955, !3956, !3957, !3958}
!3953 = !DILocalVariable(name: "stream", arg: 1, scope: !3915, file: !790, line: 61, type: !3918)
!3954 = !DILocalVariable(name: "command_name", arg: 2, scope: !3915, file: !790, line: 62, type: !101)
!3955 = !DILocalVariable(name: "package", arg: 3, scope: !3915, file: !790, line: 62, type: !101)
!3956 = !DILocalVariable(name: "version", arg: 4, scope: !3915, file: !790, line: 63, type: !101)
!3957 = !DILocalVariable(name: "authors", arg: 5, scope: !3915, file: !790, line: 64, type: !99)
!3958 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3915, file: !790, line: 64, type: !104)
!3959 = !DILocation(line: 0, scope: !3915)
!3960 = !DILocation(line: 66, column: 7, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3915, file: !790, line: 66, column: 7)
!3962 = !DILocation(line: 66, column: 7, scope: !3915)
!3963 = !DILocation(line: 67, column: 5, scope: !3961)
!3964 = !DILocation(line: 69, column: 5, scope: !3961)
!3965 = !DILocation(line: 83, column: 3, scope: !3915)
!3966 = !DILocation(line: 85, column: 3, scope: !3915)
!3967 = !DILocation(line: 88, column: 3, scope: !3915)
!3968 = !DILocation(line: 95, column: 3, scope: !3915)
!3969 = !DILocation(line: 97, column: 3, scope: !3915)
!3970 = !DILocation(line: 105, column: 7, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3915, file: !790, line: 98, column: 5)
!3972 = !DILocation(line: 106, column: 7, scope: !3971)
!3973 = !DILocation(line: 109, column: 7, scope: !3971)
!3974 = !DILocation(line: 110, column: 7, scope: !3971)
!3975 = !DILocation(line: 113, column: 7, scope: !3971)
!3976 = !DILocation(line: 115, column: 7, scope: !3971)
!3977 = !DILocation(line: 120, column: 7, scope: !3971)
!3978 = !DILocation(line: 122, column: 7, scope: !3971)
!3979 = !DILocation(line: 127, column: 7, scope: !3971)
!3980 = !DILocation(line: 129, column: 7, scope: !3971)
!3981 = !DILocation(line: 134, column: 7, scope: !3971)
!3982 = !DILocation(line: 137, column: 7, scope: !3971)
!3983 = !DILocation(line: 142, column: 7, scope: !3971)
!3984 = !DILocation(line: 145, column: 7, scope: !3971)
!3985 = !DILocation(line: 150, column: 7, scope: !3971)
!3986 = !DILocation(line: 154, column: 7, scope: !3971)
!3987 = !DILocation(line: 159, column: 7, scope: !3971)
!3988 = !DILocation(line: 163, column: 7, scope: !3971)
!3989 = !DILocation(line: 170, column: 7, scope: !3971)
!3990 = !DILocation(line: 174, column: 7, scope: !3971)
!3991 = !DILocation(line: 176, column: 1, scope: !3915)
!3992 = distinct !DISubprogram(name: "version_etc_ar", scope: !790, file: !790, line: 183, type: !3993, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !3995)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{null, !3918, !101, !101, !101, !99}
!3995 = !{!3996, !3997, !3998, !3999, !4000, !4001}
!3996 = !DILocalVariable(name: "stream", arg: 1, scope: !3992, file: !790, line: 183, type: !3918)
!3997 = !DILocalVariable(name: "command_name", arg: 2, scope: !3992, file: !790, line: 184, type: !101)
!3998 = !DILocalVariable(name: "package", arg: 3, scope: !3992, file: !790, line: 184, type: !101)
!3999 = !DILocalVariable(name: "version", arg: 4, scope: !3992, file: !790, line: 185, type: !101)
!4000 = !DILocalVariable(name: "authors", arg: 5, scope: !3992, file: !790, line: 185, type: !99)
!4001 = !DILocalVariable(name: "n_authors", scope: !3992, file: !790, line: 187, type: !104)
!4002 = !DILocation(line: 0, scope: !3992)
!4003 = !DILocation(line: 189, column: 8, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3992, file: !790, line: 189, column: 3)
!4005 = !DILocation(line: 189, scope: !4004)
!4006 = !DILocation(line: 189, column: 23, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !4004, file: !790, line: 189, column: 3)
!4008 = !DILocation(line: 189, column: 3, scope: !4004)
!4009 = !DILocation(line: 189, column: 52, scope: !4007)
!4010 = distinct !{!4010, !4008, !4011, !1154}
!4011 = !DILocation(line: 190, column: 5, scope: !4004)
!4012 = !DILocation(line: 191, column: 3, scope: !3992)
!4013 = !DILocation(line: 192, column: 1, scope: !3992)
!4014 = distinct !DISubprogram(name: "version_etc_va", scope: !790, file: !790, line: 199, type: !4015, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !4028)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{null, !3918, !101, !101, !101, !4017}
!4017 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !597, line: 52, baseType: !4018)
!4018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !599, line: 14, baseType: !4019)
!4019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4020, baseType: !4021)
!4020 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4022)
!4022 = !{!4023, !4024, !4025, !4026, !4027}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4021, file: !4020, line: 192, baseType: !98, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4021, file: !4020, line: 192, baseType: !98, size: 64, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4021, file: !4020, line: 192, baseType: !98, size: 64, offset: 128)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4021, file: !4020, line: 192, baseType: !57, size: 32, offset: 192)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4021, file: !4020, line: 192, baseType: !57, size: 32, offset: 224)
!4028 = !{!4029, !4030, !4031, !4032, !4033, !4034, !4035}
!4029 = !DILocalVariable(name: "stream", arg: 1, scope: !4014, file: !790, line: 199, type: !3918)
!4030 = !DILocalVariable(name: "command_name", arg: 2, scope: !4014, file: !790, line: 200, type: !101)
!4031 = !DILocalVariable(name: "package", arg: 3, scope: !4014, file: !790, line: 200, type: !101)
!4032 = !DILocalVariable(name: "version", arg: 4, scope: !4014, file: !790, line: 201, type: !101)
!4033 = !DILocalVariable(name: "authors", arg: 5, scope: !4014, file: !790, line: 201, type: !4017)
!4034 = !DILocalVariable(name: "n_authors", scope: !4014, file: !790, line: 203, type: !104)
!4035 = !DILocalVariable(name: "authtab", scope: !4014, file: !790, line: 204, type: !4036)
!4036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 640, elements: !122)
!4037 = !DILocation(line: 0, scope: !4014)
!4038 = !DILocation(line: 201, column: 46, scope: !4014)
!4039 = !DILocation(line: 204, column: 3, scope: !4014)
!4040 = !DILocation(line: 204, column: 15, scope: !4014)
!4041 = !DILocation(line: 208, column: 35, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4043, file: !790, line: 206, column: 3)
!4043 = distinct !DILexicalBlock(scope: !4014, file: !790, line: 206, column: 3)
!4044 = !DILocation(line: 208, column: 33, scope: !4042)
!4045 = !DILocation(line: 208, column: 67, scope: !4042)
!4046 = !DILocation(line: 206, column: 3, scope: !4043)
!4047 = !DILocation(line: 208, column: 14, scope: !4042)
!4048 = !DILocation(line: 0, scope: !4043)
!4049 = !DILocation(line: 211, column: 3, scope: !4014)
!4050 = !DILocation(line: 213, column: 1, scope: !4014)
!4051 = distinct !DISubprogram(name: "version_etc", scope: !790, file: !790, line: 230, type: !4052, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !4054)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{null, !3918, !101, !101, !101, null}
!4054 = !{!4055, !4056, !4057, !4058, !4059}
!4055 = !DILocalVariable(name: "stream", arg: 1, scope: !4051, file: !790, line: 230, type: !3918)
!4056 = !DILocalVariable(name: "command_name", arg: 2, scope: !4051, file: !790, line: 231, type: !101)
!4057 = !DILocalVariable(name: "package", arg: 3, scope: !4051, file: !790, line: 231, type: !101)
!4058 = !DILocalVariable(name: "version", arg: 4, scope: !4051, file: !790, line: 232, type: !101)
!4059 = !DILocalVariable(name: "authors", scope: !4051, file: !790, line: 234, type: !4017)
!4060 = !DILocation(line: 0, scope: !4051)
!4061 = !DILocation(line: 234, column: 3, scope: !4051)
!4062 = !DILocation(line: 234, column: 11, scope: !4051)
!4063 = !DILocation(line: 235, column: 3, scope: !4051)
!4064 = !DILocation(line: 236, column: 3, scope: !4051)
!4065 = !DILocation(line: 237, column: 3, scope: !4051)
!4066 = !DILocation(line: 238, column: 1, scope: !4051)
!4067 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !790, file: !790, line: 241, type: !638, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !1046)
!4068 = !DILocation(line: 243, column: 3, scope: !4067)
!4069 = !DILocation(line: 248, column: 3, scope: !4067)
!4070 = !DILocation(line: 254, column: 3, scope: !4067)
!4071 = !DILocation(line: 259, column: 3, scope: !4067)
!4072 = !DILocation(line: 261, column: 1, scope: !4067)
!4073 = distinct !DISubprogram(name: "xnrealloc", scope: !4074, file: !4074, line: 147, type: !4075, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4077)
!4074 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!98, !98, !104, !104}
!4077 = !{!4078, !4079, !4080}
!4078 = !DILocalVariable(name: "p", arg: 1, scope: !4073, file: !4074, line: 147, type: !98)
!4079 = !DILocalVariable(name: "n", arg: 2, scope: !4073, file: !4074, line: 147, type: !104)
!4080 = !DILocalVariable(name: "s", arg: 3, scope: !4073, file: !4074, line: 147, type: !104)
!4081 = !DILocation(line: 0, scope: !4073)
!4082 = !DILocalVariable(name: "p", arg: 1, scope: !4083, file: !962, line: 83, type: !98)
!4083 = distinct !DISubprogram(name: "xreallocarray", scope: !962, file: !962, line: 83, type: !4075, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4084)
!4084 = !{!4082, !4085, !4086}
!4085 = !DILocalVariable(name: "n", arg: 2, scope: !4083, file: !962, line: 83, type: !104)
!4086 = !DILocalVariable(name: "s", arg: 3, scope: !4083, file: !962, line: 83, type: !104)
!4087 = !DILocation(line: 0, scope: !4083, inlinedAt: !4088)
!4088 = distinct !DILocation(line: 149, column: 10, scope: !4073)
!4089 = !DILocation(line: 85, column: 25, scope: !4083, inlinedAt: !4088)
!4090 = !DILocalVariable(name: "p", arg: 1, scope: !4091, file: !962, line: 37, type: !98)
!4091 = distinct !DISubprogram(name: "check_nonnull", scope: !962, file: !962, line: 37, type: !4092, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4094)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!98, !98}
!4094 = !{!4090}
!4095 = !DILocation(line: 0, scope: !4091, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 85, column: 10, scope: !4083, inlinedAt: !4088)
!4097 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4096)
!4098 = distinct !DILexicalBlock(scope: !4091, file: !962, line: 39, column: 7)
!4099 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4096)
!4100 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4096)
!4101 = !DILocation(line: 149, column: 3, scope: !4073)
!4102 = !DILocation(line: 0, scope: !4083)
!4103 = !DILocation(line: 85, column: 25, scope: !4083)
!4104 = !DILocation(line: 0, scope: !4091, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 85, column: 10, scope: !4083)
!4106 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4105)
!4107 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4105)
!4108 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4105)
!4109 = !DILocation(line: 85, column: 3, scope: !4083)
!4110 = distinct !DISubprogram(name: "xmalloc", scope: !962, file: !962, line: 47, type: !4111, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4113)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!98, !104}
!4113 = !{!4114}
!4114 = !DILocalVariable(name: "s", arg: 1, scope: !4110, file: !962, line: 47, type: !104)
!4115 = !DILocation(line: 0, scope: !4110)
!4116 = !DILocation(line: 49, column: 25, scope: !4110)
!4117 = !DILocation(line: 0, scope: !4091, inlinedAt: !4118)
!4118 = distinct !DILocation(line: 49, column: 10, scope: !4110)
!4119 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4118)
!4120 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4118)
!4121 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4118)
!4122 = !DILocation(line: 49, column: 3, scope: !4110)
!4123 = distinct !DISubprogram(name: "ximalloc", scope: !962, file: !962, line: 53, type: !4124, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4126)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!98, !981}
!4126 = !{!4127}
!4127 = !DILocalVariable(name: "s", arg: 1, scope: !4123, file: !962, line: 53, type: !981)
!4128 = !DILocation(line: 0, scope: !4123)
!4129 = !DILocalVariable(name: "s", arg: 1, scope: !4130, file: !4131, line: 55, type: !981)
!4130 = distinct !DISubprogram(name: "imalloc", scope: !4131, file: !4131, line: 55, type: !4124, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4132)
!4131 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4132 = !{!4129}
!4133 = !DILocation(line: 0, scope: !4130, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 55, column: 25, scope: !4123)
!4135 = !DILocation(line: 57, column: 26, scope: !4130, inlinedAt: !4134)
!4136 = !DILocation(line: 0, scope: !4091, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 55, column: 10, scope: !4123)
!4138 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4137)
!4139 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4137)
!4140 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4137)
!4141 = !DILocation(line: 55, column: 3, scope: !4123)
!4142 = distinct !DISubprogram(name: "xcharalloc", scope: !962, file: !962, line: 59, type: !4143, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4145)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!59, !104}
!4145 = !{!4146}
!4146 = !DILocalVariable(name: "n", arg: 1, scope: !4142, file: !962, line: 59, type: !104)
!4147 = !DILocation(line: 0, scope: !4142)
!4148 = !DILocation(line: 0, scope: !4110, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 61, column: 10, scope: !4142)
!4150 = !DILocation(line: 49, column: 25, scope: !4110, inlinedAt: !4149)
!4151 = !DILocation(line: 0, scope: !4091, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 49, column: 10, scope: !4110, inlinedAt: !4149)
!4153 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4152)
!4154 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4152)
!4155 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4152)
!4156 = !DILocation(line: 61, column: 3, scope: !4142)
!4157 = distinct !DISubprogram(name: "xrealloc", scope: !962, file: !962, line: 68, type: !1821, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4158)
!4158 = !{!4159, !4160}
!4159 = !DILocalVariable(name: "p", arg: 1, scope: !4157, file: !962, line: 68, type: !98)
!4160 = !DILocalVariable(name: "s", arg: 2, scope: !4157, file: !962, line: 68, type: !104)
!4161 = !DILocation(line: 0, scope: !4157)
!4162 = !DILocalVariable(name: "ptr", arg: 1, scope: !4163, file: !1820, line: 2057, type: !98)
!4163 = distinct !DISubprogram(name: "rpl_realloc", scope: !1820, file: !1820, line: 2057, type: !1821, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4164)
!4164 = !{!4162, !4165}
!4165 = !DILocalVariable(name: "size", arg: 2, scope: !4163, file: !1820, line: 2057, type: !104)
!4166 = !DILocation(line: 0, scope: !4163, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 70, column: 25, scope: !4157)
!4168 = !DILocation(line: 2059, column: 24, scope: !4163, inlinedAt: !4167)
!4169 = !DILocation(line: 2059, column: 10, scope: !4163, inlinedAt: !4167)
!4170 = !DILocation(line: 0, scope: !4091, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 70, column: 10, scope: !4157)
!4172 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4171)
!4173 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4171)
!4174 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4171)
!4175 = !DILocation(line: 70, column: 3, scope: !4157)
!4176 = distinct !DISubprogram(name: "xirealloc", scope: !962, file: !962, line: 74, type: !4177, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4179)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!98, !98, !981}
!4179 = !{!4180, !4181}
!4180 = !DILocalVariable(name: "p", arg: 1, scope: !4176, file: !962, line: 74, type: !98)
!4181 = !DILocalVariable(name: "s", arg: 2, scope: !4176, file: !962, line: 74, type: !981)
!4182 = !DILocation(line: 0, scope: !4176)
!4183 = !DILocalVariable(name: "p", arg: 1, scope: !4184, file: !4131, line: 66, type: !98)
!4184 = distinct !DISubprogram(name: "irealloc", scope: !4131, file: !4131, line: 66, type: !4177, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4185)
!4185 = !{!4183, !4186}
!4186 = !DILocalVariable(name: "s", arg: 2, scope: !4184, file: !4131, line: 66, type: !981)
!4187 = !DILocation(line: 0, scope: !4184, inlinedAt: !4188)
!4188 = distinct !DILocation(line: 76, column: 25, scope: !4176)
!4189 = !DILocation(line: 0, scope: !4163, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 68, column: 26, scope: !4184, inlinedAt: !4188)
!4191 = !DILocation(line: 2059, column: 24, scope: !4163, inlinedAt: !4190)
!4192 = !DILocation(line: 2059, column: 10, scope: !4163, inlinedAt: !4190)
!4193 = !DILocation(line: 0, scope: !4091, inlinedAt: !4194)
!4194 = distinct !DILocation(line: 76, column: 10, scope: !4176)
!4195 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4194)
!4196 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4194)
!4197 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4194)
!4198 = !DILocation(line: 76, column: 3, scope: !4176)
!4199 = distinct !DISubprogram(name: "xireallocarray", scope: !962, file: !962, line: 89, type: !4200, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4202)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!98, !98, !981, !981}
!4202 = !{!4203, !4204, !4205}
!4203 = !DILocalVariable(name: "p", arg: 1, scope: !4199, file: !962, line: 89, type: !98)
!4204 = !DILocalVariable(name: "n", arg: 2, scope: !4199, file: !962, line: 89, type: !981)
!4205 = !DILocalVariable(name: "s", arg: 3, scope: !4199, file: !962, line: 89, type: !981)
!4206 = !DILocation(line: 0, scope: !4199)
!4207 = !DILocalVariable(name: "p", arg: 1, scope: !4208, file: !4131, line: 98, type: !98)
!4208 = distinct !DISubprogram(name: "ireallocarray", scope: !4131, file: !4131, line: 98, type: !4200, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4209)
!4209 = !{!4207, !4210, !4211}
!4210 = !DILocalVariable(name: "n", arg: 2, scope: !4208, file: !4131, line: 98, type: !981)
!4211 = !DILocalVariable(name: "s", arg: 3, scope: !4208, file: !4131, line: 98, type: !981)
!4212 = !DILocation(line: 0, scope: !4208, inlinedAt: !4213)
!4213 = distinct !DILocation(line: 91, column: 25, scope: !4199)
!4214 = !DILocation(line: 101, column: 13, scope: !4208, inlinedAt: !4213)
!4215 = !DILocation(line: 0, scope: !4091, inlinedAt: !4216)
!4216 = distinct !DILocation(line: 91, column: 10, scope: !4199)
!4217 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4216)
!4218 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4216)
!4219 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4216)
!4220 = !DILocation(line: 91, column: 3, scope: !4199)
!4221 = distinct !DISubprogram(name: "xnmalloc", scope: !962, file: !962, line: 98, type: !4222, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4224)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!98, !104, !104}
!4224 = !{!4225, !4226}
!4225 = !DILocalVariable(name: "n", arg: 1, scope: !4221, file: !962, line: 98, type: !104)
!4226 = !DILocalVariable(name: "s", arg: 2, scope: !4221, file: !962, line: 98, type: !104)
!4227 = !DILocation(line: 0, scope: !4221)
!4228 = !DILocation(line: 0, scope: !4083, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 100, column: 10, scope: !4221)
!4230 = !DILocation(line: 85, column: 25, scope: !4083, inlinedAt: !4229)
!4231 = !DILocation(line: 0, scope: !4091, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 85, column: 10, scope: !4083, inlinedAt: !4229)
!4233 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4232)
!4234 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4232)
!4235 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4232)
!4236 = !DILocation(line: 100, column: 3, scope: !4221)
!4237 = distinct !DISubprogram(name: "xinmalloc", scope: !962, file: !962, line: 104, type: !4238, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4240)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!98, !981, !981}
!4240 = !{!4241, !4242}
!4241 = !DILocalVariable(name: "n", arg: 1, scope: !4237, file: !962, line: 104, type: !981)
!4242 = !DILocalVariable(name: "s", arg: 2, scope: !4237, file: !962, line: 104, type: !981)
!4243 = !DILocation(line: 0, scope: !4237)
!4244 = !DILocation(line: 0, scope: !4199, inlinedAt: !4245)
!4245 = distinct !DILocation(line: 106, column: 10, scope: !4237)
!4246 = !DILocation(line: 0, scope: !4208, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 91, column: 25, scope: !4199, inlinedAt: !4245)
!4248 = !DILocation(line: 101, column: 13, scope: !4208, inlinedAt: !4247)
!4249 = !DILocation(line: 0, scope: !4091, inlinedAt: !4250)
!4250 = distinct !DILocation(line: 91, column: 10, scope: !4199, inlinedAt: !4245)
!4251 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4250)
!4252 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4250)
!4253 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4250)
!4254 = !DILocation(line: 106, column: 3, scope: !4237)
!4255 = distinct !DISubprogram(name: "x2realloc", scope: !962, file: !962, line: 116, type: !4256, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4258)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!98, !98, !968}
!4258 = !{!4259, !4260}
!4259 = !DILocalVariable(name: "p", arg: 1, scope: !4255, file: !962, line: 116, type: !98)
!4260 = !DILocalVariable(name: "ps", arg: 2, scope: !4255, file: !962, line: 116, type: !968)
!4261 = !DILocation(line: 0, scope: !4255)
!4262 = !DILocation(line: 0, scope: !965, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 118, column: 10, scope: !4255)
!4264 = !DILocation(line: 178, column: 14, scope: !965, inlinedAt: !4263)
!4265 = !DILocation(line: 180, column: 9, scope: !4266, inlinedAt: !4263)
!4266 = distinct !DILexicalBlock(scope: !965, file: !962, line: 180, column: 7)
!4267 = !DILocation(line: 180, column: 7, scope: !965, inlinedAt: !4263)
!4268 = !DILocation(line: 182, column: 13, scope: !4269, inlinedAt: !4263)
!4269 = distinct !DILexicalBlock(scope: !4270, file: !962, line: 182, column: 11)
!4270 = distinct !DILexicalBlock(scope: !4266, file: !962, line: 181, column: 5)
!4271 = !DILocation(line: 182, column: 11, scope: !4270, inlinedAt: !4263)
!4272 = !DILocation(line: 197, column: 11, scope: !4273, inlinedAt: !4263)
!4273 = distinct !DILexicalBlock(scope: !4274, file: !962, line: 197, column: 11)
!4274 = distinct !DILexicalBlock(scope: !4266, file: !962, line: 195, column: 5)
!4275 = !DILocation(line: 197, column: 11, scope: !4274, inlinedAt: !4263)
!4276 = !DILocation(line: 198, column: 9, scope: !4273, inlinedAt: !4263)
!4277 = !DILocation(line: 0, scope: !4083, inlinedAt: !4278)
!4278 = distinct !DILocation(line: 201, column: 7, scope: !965, inlinedAt: !4263)
!4279 = !DILocation(line: 85, column: 25, scope: !4083, inlinedAt: !4278)
!4280 = !DILocation(line: 0, scope: !4091, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 85, column: 10, scope: !4083, inlinedAt: !4278)
!4282 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4281)
!4283 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4281)
!4284 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4281)
!4285 = !DILocation(line: 202, column: 7, scope: !965, inlinedAt: !4263)
!4286 = !DILocation(line: 118, column: 3, scope: !4255)
!4287 = !DILocation(line: 0, scope: !965)
!4288 = !DILocation(line: 178, column: 14, scope: !965)
!4289 = !DILocation(line: 180, column: 9, scope: !4266)
!4290 = !DILocation(line: 180, column: 7, scope: !965)
!4291 = !DILocation(line: 182, column: 13, scope: !4269)
!4292 = !DILocation(line: 182, column: 11, scope: !4270)
!4293 = !DILocation(line: 190, column: 30, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4269, file: !962, line: 183, column: 9)
!4295 = !DILocation(line: 191, column: 16, scope: !4294)
!4296 = !DILocation(line: 191, column: 13, scope: !4294)
!4297 = !DILocation(line: 192, column: 9, scope: !4294)
!4298 = !DILocation(line: 197, column: 11, scope: !4273)
!4299 = !DILocation(line: 197, column: 11, scope: !4274)
!4300 = !DILocation(line: 198, column: 9, scope: !4273)
!4301 = !DILocation(line: 0, scope: !4083, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 201, column: 7, scope: !965)
!4303 = !DILocation(line: 85, column: 25, scope: !4083, inlinedAt: !4302)
!4304 = !DILocation(line: 0, scope: !4091, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 85, column: 10, scope: !4083, inlinedAt: !4302)
!4306 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4305)
!4307 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4305)
!4308 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4305)
!4309 = !DILocation(line: 202, column: 7, scope: !965)
!4310 = !DILocation(line: 203, column: 3, scope: !965)
!4311 = !DILocation(line: 0, scope: !977)
!4312 = !DILocation(line: 230, column: 14, scope: !977)
!4313 = !DILocation(line: 238, column: 7, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !977, file: !962, line: 238, column: 7)
!4315 = !DILocation(line: 238, column: 7, scope: !977)
!4316 = !DILocation(line: 240, column: 9, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !977, file: !962, line: 240, column: 7)
!4318 = !DILocation(line: 240, column: 18, scope: !4317)
!4319 = !DILocation(line: 253, column: 8, scope: !977)
!4320 = !DILocation(line: 258, column: 27, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4322, file: !962, line: 257, column: 5)
!4322 = distinct !DILexicalBlock(scope: !977, file: !962, line: 256, column: 7)
!4323 = !DILocation(line: 259, column: 32, scope: !4321)
!4324 = !DILocation(line: 260, column: 5, scope: !4321)
!4325 = !DILocation(line: 262, column: 9, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !977, file: !962, line: 262, column: 7)
!4327 = !DILocation(line: 262, column: 7, scope: !977)
!4328 = !DILocation(line: 263, column: 9, scope: !4326)
!4329 = !DILocation(line: 263, column: 5, scope: !4326)
!4330 = !DILocation(line: 264, column: 9, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !977, file: !962, line: 264, column: 7)
!4332 = !DILocation(line: 264, column: 14, scope: !4331)
!4333 = !DILocation(line: 265, column: 7, scope: !4331)
!4334 = !DILocation(line: 265, column: 11, scope: !4331)
!4335 = !DILocation(line: 266, column: 11, scope: !4331)
!4336 = !DILocation(line: 267, column: 14, scope: !4331)
!4337 = !DILocation(line: 264, column: 7, scope: !977)
!4338 = !DILocation(line: 268, column: 5, scope: !4331)
!4339 = !DILocation(line: 0, scope: !4157, inlinedAt: !4340)
!4340 = distinct !DILocation(line: 269, column: 8, scope: !977)
!4341 = !DILocation(line: 0, scope: !4163, inlinedAt: !4342)
!4342 = distinct !DILocation(line: 70, column: 25, scope: !4157, inlinedAt: !4340)
!4343 = !DILocation(line: 2059, column: 24, scope: !4163, inlinedAt: !4342)
!4344 = !DILocation(line: 2059, column: 10, scope: !4163, inlinedAt: !4342)
!4345 = !DILocation(line: 0, scope: !4091, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 70, column: 10, scope: !4157, inlinedAt: !4340)
!4347 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4346)
!4348 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4346)
!4349 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4346)
!4350 = !DILocation(line: 270, column: 7, scope: !977)
!4351 = !DILocation(line: 271, column: 3, scope: !977)
!4352 = distinct !DISubprogram(name: "xzalloc", scope: !962, file: !962, line: 279, type: !4111, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4353)
!4353 = !{!4354}
!4354 = !DILocalVariable(name: "s", arg: 1, scope: !4352, file: !962, line: 279, type: !104)
!4355 = !DILocation(line: 0, scope: !4352)
!4356 = !DILocalVariable(name: "n", arg: 1, scope: !4357, file: !962, line: 294, type: !104)
!4357 = distinct !DISubprogram(name: "xcalloc", scope: !962, file: !962, line: 294, type: !4222, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4358)
!4358 = !{!4356, !4359}
!4359 = !DILocalVariable(name: "s", arg: 2, scope: !4357, file: !962, line: 294, type: !104)
!4360 = !DILocation(line: 0, scope: !4357, inlinedAt: !4361)
!4361 = distinct !DILocation(line: 281, column: 10, scope: !4352)
!4362 = !DILocation(line: 296, column: 25, scope: !4357, inlinedAt: !4361)
!4363 = !DILocation(line: 0, scope: !4091, inlinedAt: !4364)
!4364 = distinct !DILocation(line: 296, column: 10, scope: !4357, inlinedAt: !4361)
!4365 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4364)
!4366 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4364)
!4367 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4364)
!4368 = !DILocation(line: 281, column: 3, scope: !4352)
!4369 = !DISubprogram(name: "calloc", scope: !1228, file: !1228, line: 543, type: !4222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!4370 = !DILocation(line: 0, scope: !4357)
!4371 = !DILocation(line: 296, column: 25, scope: !4357)
!4372 = !DILocation(line: 0, scope: !4091, inlinedAt: !4373)
!4373 = distinct !DILocation(line: 296, column: 10, scope: !4357)
!4374 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4373)
!4375 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4373)
!4376 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4373)
!4377 = !DILocation(line: 296, column: 3, scope: !4357)
!4378 = distinct !DISubprogram(name: "xizalloc", scope: !962, file: !962, line: 285, type: !4124, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4379)
!4379 = !{!4380}
!4380 = !DILocalVariable(name: "s", arg: 1, scope: !4378, file: !962, line: 285, type: !981)
!4381 = !DILocation(line: 0, scope: !4378)
!4382 = !DILocalVariable(name: "n", arg: 1, scope: !4383, file: !962, line: 300, type: !981)
!4383 = distinct !DISubprogram(name: "xicalloc", scope: !962, file: !962, line: 300, type: !4238, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4384)
!4384 = !{!4382, !4385}
!4385 = !DILocalVariable(name: "s", arg: 2, scope: !4383, file: !962, line: 300, type: !981)
!4386 = !DILocation(line: 0, scope: !4383, inlinedAt: !4387)
!4387 = distinct !DILocation(line: 287, column: 10, scope: !4378)
!4388 = !DILocalVariable(name: "n", arg: 1, scope: !4389, file: !4131, line: 77, type: !981)
!4389 = distinct !DISubprogram(name: "icalloc", scope: !4131, file: !4131, line: 77, type: !4238, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4390)
!4390 = !{!4388, !4391}
!4391 = !DILocalVariable(name: "s", arg: 2, scope: !4389, file: !4131, line: 77, type: !981)
!4392 = !DILocation(line: 0, scope: !4389, inlinedAt: !4393)
!4393 = distinct !DILocation(line: 302, column: 25, scope: !4383, inlinedAt: !4387)
!4394 = !DILocation(line: 91, column: 10, scope: !4389, inlinedAt: !4393)
!4395 = !DILocation(line: 0, scope: !4091, inlinedAt: !4396)
!4396 = distinct !DILocation(line: 302, column: 10, scope: !4383, inlinedAt: !4387)
!4397 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4396)
!4398 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4396)
!4399 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4396)
!4400 = !DILocation(line: 287, column: 3, scope: !4378)
!4401 = !DILocation(line: 0, scope: !4383)
!4402 = !DILocation(line: 0, scope: !4389, inlinedAt: !4403)
!4403 = distinct !DILocation(line: 302, column: 25, scope: !4383)
!4404 = !DILocation(line: 91, column: 10, scope: !4389, inlinedAt: !4403)
!4405 = !DILocation(line: 0, scope: !4091, inlinedAt: !4406)
!4406 = distinct !DILocation(line: 302, column: 10, scope: !4383)
!4407 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4406)
!4408 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4406)
!4409 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4406)
!4410 = !DILocation(line: 302, column: 3, scope: !4383)
!4411 = distinct !DISubprogram(name: "xmemdup", scope: !962, file: !962, line: 310, type: !4412, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4414)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!98, !1252, !104}
!4414 = !{!4415, !4416}
!4415 = !DILocalVariable(name: "p", arg: 1, scope: !4411, file: !962, line: 310, type: !1252)
!4416 = !DILocalVariable(name: "s", arg: 2, scope: !4411, file: !962, line: 310, type: !104)
!4417 = !DILocation(line: 0, scope: !4411)
!4418 = !DILocation(line: 0, scope: !4110, inlinedAt: !4419)
!4419 = distinct !DILocation(line: 312, column: 18, scope: !4411)
!4420 = !DILocation(line: 49, column: 25, scope: !4110, inlinedAt: !4419)
!4421 = !DILocation(line: 0, scope: !4091, inlinedAt: !4422)
!4422 = distinct !DILocation(line: 49, column: 10, scope: !4110, inlinedAt: !4419)
!4423 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4422)
!4424 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4422)
!4425 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4422)
!4426 = !DILocalVariable(name: "__dest", arg: 1, scope: !4427, file: !1333, line: 26, type: !1336)
!4427 = distinct !DISubprogram(name: "memcpy", scope: !1333, file: !1333, line: 26, type: !1334, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4428)
!4428 = !{!4426, !4429, !4430}
!4429 = !DILocalVariable(name: "__src", arg: 2, scope: !4427, file: !1333, line: 26, type: !1251)
!4430 = !DILocalVariable(name: "__len", arg: 3, scope: !4427, file: !1333, line: 26, type: !104)
!4431 = !DILocation(line: 0, scope: !4427, inlinedAt: !4432)
!4432 = distinct !DILocation(line: 312, column: 10, scope: !4411)
!4433 = !DILocation(line: 29, column: 10, scope: !4427, inlinedAt: !4432)
!4434 = !DILocation(line: 312, column: 3, scope: !4411)
!4435 = distinct !DISubprogram(name: "ximemdup", scope: !962, file: !962, line: 316, type: !4436, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4438)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{!98, !1252, !981}
!4438 = !{!4439, !4440}
!4439 = !DILocalVariable(name: "p", arg: 1, scope: !4435, file: !962, line: 316, type: !1252)
!4440 = !DILocalVariable(name: "s", arg: 2, scope: !4435, file: !962, line: 316, type: !981)
!4441 = !DILocation(line: 0, scope: !4435)
!4442 = !DILocation(line: 0, scope: !4123, inlinedAt: !4443)
!4443 = distinct !DILocation(line: 318, column: 18, scope: !4435)
!4444 = !DILocation(line: 0, scope: !4130, inlinedAt: !4445)
!4445 = distinct !DILocation(line: 55, column: 25, scope: !4123, inlinedAt: !4443)
!4446 = !DILocation(line: 57, column: 26, scope: !4130, inlinedAt: !4445)
!4447 = !DILocation(line: 0, scope: !4091, inlinedAt: !4448)
!4448 = distinct !DILocation(line: 55, column: 10, scope: !4123, inlinedAt: !4443)
!4449 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4448)
!4450 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4448)
!4451 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4448)
!4452 = !DILocation(line: 0, scope: !4427, inlinedAt: !4453)
!4453 = distinct !DILocation(line: 318, column: 10, scope: !4435)
!4454 = !DILocation(line: 29, column: 10, scope: !4427, inlinedAt: !4453)
!4455 = !DILocation(line: 318, column: 3, scope: !4435)
!4456 = distinct !DISubprogram(name: "ximemdup0", scope: !962, file: !962, line: 325, type: !4457, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4459)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!59, !1252, !981}
!4459 = !{!4460, !4461, !4462}
!4460 = !DILocalVariable(name: "p", arg: 1, scope: !4456, file: !962, line: 325, type: !1252)
!4461 = !DILocalVariable(name: "s", arg: 2, scope: !4456, file: !962, line: 325, type: !981)
!4462 = !DILocalVariable(name: "result", scope: !4456, file: !962, line: 327, type: !59)
!4463 = !DILocation(line: 0, scope: !4456)
!4464 = !DILocation(line: 327, column: 30, scope: !4456)
!4465 = !DILocation(line: 0, scope: !4123, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 327, column: 18, scope: !4456)
!4467 = !DILocation(line: 0, scope: !4130, inlinedAt: !4468)
!4468 = distinct !DILocation(line: 55, column: 25, scope: !4123, inlinedAt: !4466)
!4469 = !DILocation(line: 57, column: 26, scope: !4130, inlinedAt: !4468)
!4470 = !DILocation(line: 0, scope: !4091, inlinedAt: !4471)
!4471 = distinct !DILocation(line: 55, column: 10, scope: !4123, inlinedAt: !4466)
!4472 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4471)
!4473 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4471)
!4474 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4471)
!4475 = !DILocation(line: 328, column: 3, scope: !4456)
!4476 = !DILocation(line: 328, column: 13, scope: !4456)
!4477 = !DILocation(line: 0, scope: !4427, inlinedAt: !4478)
!4478 = distinct !DILocation(line: 329, column: 10, scope: !4456)
!4479 = !DILocation(line: 29, column: 10, scope: !4427, inlinedAt: !4478)
!4480 = !DILocation(line: 329, column: 3, scope: !4456)
!4481 = distinct !DISubprogram(name: "xstrdup", scope: !962, file: !962, line: 335, type: !1230, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4482)
!4482 = !{!4483}
!4483 = !DILocalVariable(name: "string", arg: 1, scope: !4481, file: !962, line: 335, type: !101)
!4484 = !DILocation(line: 0, scope: !4481)
!4485 = !DILocation(line: 337, column: 27, scope: !4481)
!4486 = !DILocation(line: 337, column: 43, scope: !4481)
!4487 = !DILocation(line: 0, scope: !4411, inlinedAt: !4488)
!4488 = distinct !DILocation(line: 337, column: 10, scope: !4481)
!4489 = !DILocation(line: 0, scope: !4110, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 312, column: 18, scope: !4411, inlinedAt: !4488)
!4491 = !DILocation(line: 49, column: 25, scope: !4110, inlinedAt: !4490)
!4492 = !DILocation(line: 0, scope: !4091, inlinedAt: !4493)
!4493 = distinct !DILocation(line: 49, column: 10, scope: !4110, inlinedAt: !4490)
!4494 = !DILocation(line: 39, column: 8, scope: !4098, inlinedAt: !4493)
!4495 = !DILocation(line: 39, column: 7, scope: !4091, inlinedAt: !4493)
!4496 = !DILocation(line: 40, column: 5, scope: !4098, inlinedAt: !4493)
!4497 = !DILocation(line: 0, scope: !4427, inlinedAt: !4498)
!4498 = distinct !DILocation(line: 312, column: 10, scope: !4411, inlinedAt: !4488)
!4499 = !DILocation(line: 29, column: 10, scope: !4427, inlinedAt: !4498)
!4500 = !DILocation(line: 337, column: 3, scope: !4481)
!4501 = distinct !DISubprogram(name: "xalloc_die", scope: !886, file: !886, line: 32, type: !638, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4502)
!4502 = !{!4503}
!4503 = !DILocalVariable(name: "__errstatus", scope: !4504, file: !886, line: 34, type: !4505)
!4504 = distinct !DILexicalBlock(scope: !4501, file: !886, line: 34, column: 3)
!4505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!4506 = !DILocation(line: 34, column: 3, scope: !4504)
!4507 = !DILocation(line: 0, scope: !4504)
!4508 = !DILocation(line: 40, column: 3, scope: !4501)
!4509 = distinct !DISubprogram(name: "close_stream", scope: !998, file: !998, line: 55, type: !4510, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4546)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{!57, !4512}
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !4514)
!4514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !4515)
!4515 = !{!4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4514, file: !232, line: 51, baseType: !57, size: 32)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4514, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4514, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4514, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4514, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4514, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4514, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4514, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4514, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4514, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4514, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4514, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4514, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4514, file: !232, line: 70, baseType: !4530, size: 64, offset: 832)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4514, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4514, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4514, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4514, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4514, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4514, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4514, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4514, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4514, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4514, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4514, file: !232, line: 93, baseType: !4530, size: 64, offset: 1344)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4514, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4514, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4514, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4514, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!4546 = !{!4547, !4548, !4550, !4551}
!4547 = !DILocalVariable(name: "stream", arg: 1, scope: !4509, file: !998, line: 55, type: !4512)
!4548 = !DILocalVariable(name: "some_pending", scope: !4509, file: !998, line: 57, type: !4549)
!4549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!4550 = !DILocalVariable(name: "prev_fail", scope: !4509, file: !998, line: 58, type: !4549)
!4551 = !DILocalVariable(name: "fclose_fail", scope: !4509, file: !998, line: 59, type: !4549)
!4552 = !DILocation(line: 0, scope: !4509)
!4553 = !DILocation(line: 57, column: 30, scope: !4509)
!4554 = !DILocalVariable(name: "__stream", arg: 1, scope: !4555, file: !2090, line: 135, type: !4512)
!4555 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2090, file: !2090, line: 135, type: !4510, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4556)
!4556 = !{!4554}
!4557 = !DILocation(line: 0, scope: !4555, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 58, column: 27, scope: !4509)
!4559 = !DILocation(line: 137, column: 10, scope: !4555, inlinedAt: !4558)
!4560 = !DILocation(line: 58, column: 43, scope: !4509)
!4561 = !DILocation(line: 59, column: 29, scope: !4509)
!4562 = !DILocation(line: 59, column: 45, scope: !4509)
!4563 = !DILocation(line: 69, column: 17, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4509, file: !998, line: 69, column: 7)
!4565 = !DILocation(line: 57, column: 50, scope: !4509)
!4566 = !DILocation(line: 69, column: 33, scope: !4564)
!4567 = !DILocation(line: 69, column: 53, scope: !4564)
!4568 = !DILocation(line: 69, column: 59, scope: !4564)
!4569 = !DILocation(line: 69, column: 7, scope: !4509)
!4570 = !DILocation(line: 71, column: 11, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4564, file: !998, line: 70, column: 5)
!4572 = !DILocation(line: 72, column: 9, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4571, file: !998, line: 71, column: 11)
!4574 = !DILocation(line: 72, column: 15, scope: !4573)
!4575 = !DILocation(line: 77, column: 1, scope: !4509)
!4576 = !DISubprogram(name: "__fpending", scope: !2226, file: !2226, line: 75, type: !4577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!104, !4512}
!4579 = distinct !DISubprogram(name: "rpl_fclose", scope: !1000, file: !1000, line: 58, type: !4580, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4616)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!57, !4582}
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !4584)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !4585)
!4585 = !{!4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4584, file: !232, line: 51, baseType: !57, size: 32)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4584, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4584, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4584, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4584, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4584, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4584, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4584, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4584, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4584, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4584, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4584, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4584, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4584, file: !232, line: 70, baseType: !4600, size: 64, offset: 832)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4584, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4584, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4584, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4584, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4584, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4584, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4584, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4584, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4584, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4584, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4584, file: !232, line: 93, baseType: !4600, size: 64, offset: 1344)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4584, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4584, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4584, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4584, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!4616 = !{!4617, !4618, !4619, !4620}
!4617 = !DILocalVariable(name: "fp", arg: 1, scope: !4579, file: !1000, line: 58, type: !4582)
!4618 = !DILocalVariable(name: "saved_errno", scope: !4579, file: !1000, line: 60, type: !57)
!4619 = !DILocalVariable(name: "fd", scope: !4579, file: !1000, line: 63, type: !57)
!4620 = !DILocalVariable(name: "result", scope: !4579, file: !1000, line: 74, type: !57)
!4621 = !DILocation(line: 0, scope: !4579)
!4622 = !DILocation(line: 63, column: 12, scope: !4579)
!4623 = !DILocation(line: 64, column: 10, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4579, file: !1000, line: 64, column: 7)
!4625 = !DILocation(line: 64, column: 7, scope: !4579)
!4626 = !DILocation(line: 65, column: 12, scope: !4624)
!4627 = !DILocation(line: 65, column: 5, scope: !4624)
!4628 = !DILocation(line: 70, column: 9, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4579, file: !1000, line: 70, column: 7)
!4630 = !DILocation(line: 70, column: 23, scope: !4629)
!4631 = !DILocation(line: 70, column: 33, scope: !4629)
!4632 = !DILocation(line: 70, column: 26, scope: !4629)
!4633 = !DILocation(line: 70, column: 59, scope: !4629)
!4634 = !DILocation(line: 71, column: 7, scope: !4629)
!4635 = !DILocation(line: 71, column: 10, scope: !4629)
!4636 = !DILocation(line: 70, column: 7, scope: !4579)
!4637 = !DILocation(line: 100, column: 12, scope: !4579)
!4638 = !DILocation(line: 105, column: 7, scope: !4579)
!4639 = !DILocation(line: 72, column: 19, scope: !4629)
!4640 = !DILocation(line: 105, column: 19, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4579, file: !1000, line: 105, column: 7)
!4642 = !DILocation(line: 107, column: 13, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4641, file: !1000, line: 106, column: 5)
!4644 = !DILocation(line: 109, column: 5, scope: !4643)
!4645 = !DILocation(line: 112, column: 1, scope: !4579)
!4646 = !DISubprogram(name: "fclose", scope: !597, file: !597, line: 178, type: !4580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!4647 = !DISubprogram(name: "__freading", scope: !2226, file: !2226, line: 51, type: !4580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!4648 = distinct !DISubprogram(name: "fd_safer_flag", scope: !1002, file: !1002, line: 40, type: !913, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1001, retainedNodes: !4649)
!4649 = !{!4650, !4651, !4652, !4655}
!4650 = !DILocalVariable(name: "fd", arg: 1, scope: !4648, file: !1002, line: 40, type: !57)
!4651 = !DILocalVariable(name: "flag", arg: 2, scope: !4648, file: !1002, line: 40, type: !57)
!4652 = !DILocalVariable(name: "f", scope: !4653, file: !1002, line: 44, type: !57)
!4653 = distinct !DILexicalBlock(scope: !4654, file: !1002, line: 43, column: 5)
!4654 = distinct !DILexicalBlock(scope: !4648, file: !1002, line: 42, column: 7)
!4655 = !DILocalVariable(name: "saved_errno", scope: !4653, file: !1002, line: 45, type: !57)
!4656 = !DILocation(line: 0, scope: !4648)
!4657 = !DILocation(line: 42, column: 26, scope: !4654)
!4658 = !DILocation(line: 44, column: 15, scope: !4653)
!4659 = !DILocation(line: 0, scope: !4653)
!4660 = !DILocation(line: 45, column: 25, scope: !4653)
!4661 = !DILocation(line: 46, column: 7, scope: !4653)
!4662 = !DILocation(line: 47, column: 13, scope: !4653)
!4663 = !DILocation(line: 49, column: 5, scope: !4653)
!4664 = !DILocation(line: 51, column: 3, scope: !4648)
!4665 = distinct !DISubprogram(name: "dup_safer_flag", scope: !1004, file: !1004, line: 34, type: !913, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1003, retainedNodes: !4666)
!4666 = !{!4667, !4668}
!4667 = !DILocalVariable(name: "fd", arg: 1, scope: !4665, file: !1004, line: 34, type: !57)
!4668 = !DILocalVariable(name: "flag", arg: 2, scope: !4665, file: !1004, line: 34, type: !57)
!4669 = !DILocation(line: 0, scope: !4665)
!4670 = !DILocation(line: 36, column: 27, scope: !4665)
!4671 = !DILocation(line: 36, column: 21, scope: !4665)
!4672 = !DILocation(line: 36, column: 10, scope: !4665)
!4673 = !DILocation(line: 36, column: 3, scope: !4665)
!4674 = distinct !DISubprogram(name: "rpl_fflush", scope: !1006, file: !1006, line: 130, type: !4675, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1005, retainedNodes: !4711)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!57, !4677}
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !4679)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !4680)
!4680 = !{!4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4679, file: !232, line: 51, baseType: !57, size: 32)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4679, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4679, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4679, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4679, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4679, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4679, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4679, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4679, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4679, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4679, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4679, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4679, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4679, file: !232, line: 70, baseType: !4695, size: 64, offset: 832)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4679, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4679, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4679, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4679, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4679, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4679, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4679, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4679, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4679, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4679, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4679, file: !232, line: 93, baseType: !4695, size: 64, offset: 1344)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4679, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4679, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4679, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4679, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!4711 = !{!4712}
!4712 = !DILocalVariable(name: "stream", arg: 1, scope: !4674, file: !1006, line: 130, type: !4677)
!4713 = !DILocation(line: 0, scope: !4674)
!4714 = !DILocation(line: 151, column: 14, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4674, file: !1006, line: 151, column: 7)
!4716 = !DILocation(line: 151, column: 22, scope: !4715)
!4717 = !DILocation(line: 151, column: 27, scope: !4715)
!4718 = !DILocation(line: 151, column: 7, scope: !4674)
!4719 = !DILocation(line: 152, column: 12, scope: !4715)
!4720 = !DILocation(line: 152, column: 5, scope: !4715)
!4721 = !DILocalVariable(name: "fp", arg: 1, scope: !4722, file: !1006, line: 42, type: !4677)
!4722 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1006, file: !1006, line: 42, type: !4723, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1005, retainedNodes: !4725)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{null, !4677}
!4725 = !{!4721}
!4726 = !DILocation(line: 0, scope: !4722, inlinedAt: !4727)
!4727 = distinct !DILocation(line: 157, column: 3, scope: !4674)
!4728 = !DILocation(line: 44, column: 12, scope: !4729, inlinedAt: !4727)
!4729 = distinct !DILexicalBlock(scope: !4722, file: !1006, line: 44, column: 7)
!4730 = !DILocation(line: 44, column: 19, scope: !4729, inlinedAt: !4727)
!4731 = !DILocation(line: 44, column: 7, scope: !4722, inlinedAt: !4727)
!4732 = !DILocation(line: 46, column: 5, scope: !4729, inlinedAt: !4727)
!4733 = !DILocation(line: 159, column: 10, scope: !4674)
!4734 = !DILocation(line: 159, column: 3, scope: !4674)
!4735 = !DILocation(line: 236, column: 1, scope: !4674)
!4736 = !DISubprogram(name: "fflush", scope: !597, file: !597, line: 230, type: !4675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!4737 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !893, file: !893, line: 100, type: !4738, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !896, retainedNodes: !4741)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!104, !2416, !101, !104, !4740}
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!4741 = !{!4742, !4743, !4744, !4745, !4746}
!4742 = !DILocalVariable(name: "pwc", arg: 1, scope: !4737, file: !893, line: 100, type: !2416)
!4743 = !DILocalVariable(name: "s", arg: 2, scope: !4737, file: !893, line: 100, type: !101)
!4744 = !DILocalVariable(name: "n", arg: 3, scope: !4737, file: !893, line: 100, type: !104)
!4745 = !DILocalVariable(name: "ps", arg: 4, scope: !4737, file: !893, line: 100, type: !4740)
!4746 = !DILocalVariable(name: "ret", scope: !4737, file: !893, line: 130, type: !104)
!4747 = !DILocation(line: 0, scope: !4737)
!4748 = !DILocation(line: 105, column: 9, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4737, file: !893, line: 105, column: 7)
!4750 = !DILocation(line: 105, column: 7, scope: !4737)
!4751 = !DILocation(line: 117, column: 10, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4737, file: !893, line: 117, column: 7)
!4753 = !DILocation(line: 117, column: 7, scope: !4737)
!4754 = !DILocation(line: 130, column: 16, scope: !4737)
!4755 = !DILocation(line: 135, column: 11, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4737, file: !893, line: 135, column: 7)
!4757 = !DILocation(line: 135, column: 25, scope: !4756)
!4758 = !DILocation(line: 135, column: 30, scope: !4756)
!4759 = !DILocation(line: 135, column: 7, scope: !4737)
!4760 = !DILocalVariable(name: "ps", arg: 1, scope: !4761, file: !1911, line: 1135, type: !4740)
!4761 = distinct !DISubprogram(name: "mbszero", scope: !1911, file: !1911, line: 1135, type: !4762, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !896, retainedNodes: !4764)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{null, !4740}
!4764 = !{!4760}
!4765 = !DILocation(line: 0, scope: !4761, inlinedAt: !4766)
!4766 = distinct !DILocation(line: 137, column: 5, scope: !4756)
!4767 = !DILocalVariable(name: "__dest", arg: 1, scope: !4768, file: !1333, line: 57, type: !98)
!4768 = distinct !DISubprogram(name: "memset", scope: !1333, file: !1333, line: 57, type: !2399, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !896, retainedNodes: !4769)
!4769 = !{!4767, !4770, !4771}
!4770 = !DILocalVariable(name: "__ch", arg: 2, scope: !4768, file: !1333, line: 57, type: !57)
!4771 = !DILocalVariable(name: "__len", arg: 3, scope: !4768, file: !1333, line: 57, type: !104)
!4772 = !DILocation(line: 0, scope: !4768, inlinedAt: !4773)
!4773 = distinct !DILocation(line: 1137, column: 3, scope: !4761, inlinedAt: !4766)
!4774 = !DILocation(line: 59, column: 10, scope: !4768, inlinedAt: !4773)
!4775 = !DILocation(line: 137, column: 5, scope: !4756)
!4776 = !DILocation(line: 138, column: 11, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4737, file: !893, line: 138, column: 7)
!4778 = !DILocation(line: 138, column: 7, scope: !4737)
!4779 = !DILocation(line: 139, column: 5, scope: !4777)
!4780 = !DILocation(line: 143, column: 26, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4737, file: !893, line: 143, column: 7)
!4782 = !DILocation(line: 143, column: 41, scope: !4781)
!4783 = !DILocation(line: 143, column: 7, scope: !4737)
!4784 = !DILocation(line: 145, column: 15, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4786, file: !893, line: 145, column: 11)
!4786 = distinct !DILexicalBlock(scope: !4781, file: !893, line: 144, column: 5)
!4787 = !DILocation(line: 145, column: 11, scope: !4786)
!4788 = !DILocation(line: 146, column: 32, scope: !4785)
!4789 = !DILocation(line: 146, column: 16, scope: !4785)
!4790 = !DILocation(line: 146, column: 14, scope: !4785)
!4791 = !DILocation(line: 146, column: 9, scope: !4785)
!4792 = !DILocation(line: 286, column: 1, scope: !4737)
!4793 = !DISubprogram(name: "mbsinit", scope: !4794, file: !4794, line: 293, type: !4795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1046)
!4794 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!57, !4797}
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !899)
!4799 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1008, file: !1008, line: 27, type: !4075, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1007, retainedNodes: !4800)
!4800 = !{!4801, !4802, !4803, !4804}
!4801 = !DILocalVariable(name: "ptr", arg: 1, scope: !4799, file: !1008, line: 27, type: !98)
!4802 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4799, file: !1008, line: 27, type: !104)
!4803 = !DILocalVariable(name: "size", arg: 3, scope: !4799, file: !1008, line: 27, type: !104)
!4804 = !DILocalVariable(name: "nbytes", scope: !4799, file: !1008, line: 29, type: !104)
!4805 = !DILocation(line: 0, scope: !4799)
!4806 = !DILocation(line: 30, column: 7, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4799, file: !1008, line: 30, column: 7)
!4808 = !DILocalVariable(name: "ptr", arg: 1, scope: !4809, file: !1820, line: 2057, type: !98)
!4809 = distinct !DISubprogram(name: "rpl_realloc", scope: !1820, file: !1820, line: 2057, type: !1821, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1007, retainedNodes: !4810)
!4810 = !{!4808, !4811}
!4811 = !DILocalVariable(name: "size", arg: 2, scope: !4809, file: !1820, line: 2057, type: !104)
!4812 = !DILocation(line: 0, scope: !4809, inlinedAt: !4813)
!4813 = distinct !DILocation(line: 37, column: 10, scope: !4799)
!4814 = !DILocation(line: 2059, column: 24, scope: !4809, inlinedAt: !4813)
!4815 = !DILocation(line: 2059, column: 10, scope: !4809, inlinedAt: !4813)
!4816 = !DILocation(line: 37, column: 3, scope: !4799)
!4817 = !DILocation(line: 32, column: 7, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4807, file: !1008, line: 31, column: 5)
!4819 = !DILocation(line: 32, column: 13, scope: !4818)
!4820 = !DILocation(line: 33, column: 7, scope: !4818)
!4821 = !DILocation(line: 38, column: 1, scope: !4799)
!4822 = distinct !DISubprogram(name: "dup_safer", scope: !1011, file: !1011, line: 31, type: !1576, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1010, retainedNodes: !4823)
!4823 = !{!4824}
!4824 = !DILocalVariable(name: "fd", arg: 1, scope: !4822, file: !1011, line: 31, type: !57)
!4825 = !DILocation(line: 0, scope: !4822)
!4826 = !DILocation(line: 33, column: 10, scope: !4822)
!4827 = !DILocation(line: 33, column: 3, scope: !4822)
!4828 = distinct !DISubprogram(name: "rpl_fcntl", scope: !912, file: !912, line: 202, type: !2118, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !4829)
!4829 = !{!4830, !4831, !4832, !4843, !4844, !4847, !4849, !4853}
!4830 = !DILocalVariable(name: "fd", arg: 1, scope: !4828, file: !912, line: 202, type: !57)
!4831 = !DILocalVariable(name: "action", arg: 2, scope: !4828, file: !912, line: 202, type: !57)
!4832 = !DILocalVariable(name: "arg", scope: !4828, file: !912, line: 208, type: !4833)
!4833 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !599, line: 22, baseType: !4834)
!4834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4835, baseType: !4836)
!4835 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!4836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4837)
!4837 = !{!4838, !4839, !4840, !4841, !4842}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4836, file: !4835, line: 208, baseType: !98, size: 64)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4836, file: !4835, line: 208, baseType: !98, size: 64, offset: 64)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4836, file: !4835, line: 208, baseType: !98, size: 64, offset: 128)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4836, file: !4835, line: 208, baseType: !57, size: 32, offset: 192)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4836, file: !4835, line: 208, baseType: !57, size: 32, offset: 224)
!4843 = !DILocalVariable(name: "result", scope: !4828, file: !912, line: 211, type: !57)
!4844 = !DILocalVariable(name: "target", scope: !4845, file: !912, line: 216, type: !57)
!4845 = distinct !DILexicalBlock(scope: !4846, file: !912, line: 215, column: 7)
!4846 = distinct !DILexicalBlock(scope: !4828, file: !912, line: 213, column: 5)
!4847 = !DILocalVariable(name: "target", scope: !4848, file: !912, line: 223, type: !57)
!4848 = distinct !DILexicalBlock(scope: !4846, file: !912, line: 222, column: 7)
!4849 = !DILocalVariable(name: "x", scope: !4850, file: !912, line: 418, type: !57)
!4850 = distinct !DILexicalBlock(scope: !4851, file: !912, line: 417, column: 13)
!4851 = distinct !DILexicalBlock(scope: !4852, file: !912, line: 261, column: 11)
!4852 = distinct !DILexicalBlock(scope: !4846, file: !912, line: 258, column: 7)
!4853 = !DILocalVariable(name: "p", scope: !4854, file: !912, line: 426, type: !98)
!4854 = distinct !DILexicalBlock(scope: !4851, file: !912, line: 425, column: 13)
!4855 = !DILocation(line: 0, scope: !4828)
!4856 = !DILocation(line: 208, column: 3, scope: !4828)
!4857 = !DILocation(line: 208, column: 11, scope: !4828)
!4858 = !DILocation(line: 209, column: 3, scope: !4828)
!4859 = !DILocation(line: 212, column: 3, scope: !4828)
!4860 = !DILocation(line: 216, column: 22, scope: !4845)
!4861 = !DILocation(line: 0, scope: !4845)
!4862 = !DILocalVariable(name: "fd", arg: 1, scope: !4863, file: !912, line: 444, type: !57)
!4863 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !912, file: !912, line: 444, type: !913, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !4864)
!4864 = !{!4862, !4865, !4866}
!4865 = !DILocalVariable(name: "target", arg: 2, scope: !4863, file: !912, line: 444, type: !57)
!4866 = !DILocalVariable(name: "result", scope: !4863, file: !912, line: 446, type: !57)
!4867 = !DILocation(line: 0, scope: !4863, inlinedAt: !4868)
!4868 = distinct !DILocation(line: 217, column: 18, scope: !4845)
!4869 = !DILocation(line: 479, column: 12, scope: !4863, inlinedAt: !4868)
!4870 = !DILocation(line: 223, column: 22, scope: !4848)
!4871 = !DILocation(line: 0, scope: !4848)
!4872 = !DILocation(line: 0, scope: !911, inlinedAt: !4873)
!4873 = distinct !DILocation(line: 224, column: 18, scope: !4848)
!4874 = !DILocation(line: 507, column: 12, scope: !4875, inlinedAt: !4873)
!4875 = distinct !DILexicalBlock(scope: !911, file: !912, line: 507, column: 7)
!4876 = !DILocation(line: 507, column: 9, scope: !4875, inlinedAt: !4873)
!4877 = !DILocation(line: 507, column: 7, scope: !911, inlinedAt: !4873)
!4878 = !DILocation(line: 509, column: 16, scope: !4879, inlinedAt: !4873)
!4879 = distinct !DILexicalBlock(scope: !4875, file: !912, line: 508, column: 5)
!4880 = !DILocation(line: 510, column: 13, scope: !4881, inlinedAt: !4873)
!4881 = distinct !DILexicalBlock(scope: !4879, file: !912, line: 510, column: 11)
!4882 = !DILocation(line: 510, column: 23, scope: !4881, inlinedAt: !4873)
!4883 = !DILocation(line: 510, column: 26, scope: !4881, inlinedAt: !4873)
!4884 = !DILocation(line: 510, column: 32, scope: !4881, inlinedAt: !4873)
!4885 = !DILocation(line: 510, column: 11, scope: !4879, inlinedAt: !4873)
!4886 = !DILocation(line: 512, column: 30, scope: !4887, inlinedAt: !4873)
!4887 = distinct !DILexicalBlock(scope: !4881, file: !912, line: 511, column: 9)
!4888 = !DILocation(line: 528, column: 19, scope: !923, inlinedAt: !4873)
!4889 = !DILocation(line: 0, scope: !4863, inlinedAt: !4890)
!4890 = distinct !DILocation(line: 520, column: 20, scope: !4891, inlinedAt: !4873)
!4891 = distinct !DILexicalBlock(scope: !4881, file: !912, line: 519, column: 9)
!4892 = !DILocation(line: 479, column: 12, scope: !4863, inlinedAt: !4890)
!4893 = !DILocation(line: 521, column: 22, scope: !4894, inlinedAt: !4873)
!4894 = distinct !DILexicalBlock(scope: !4891, file: !912, line: 521, column: 15)
!4895 = !DILocation(line: 521, column: 15, scope: !4891, inlinedAt: !4873)
!4896 = !DILocation(line: 522, column: 32, scope: !4894, inlinedAt: !4873)
!4897 = !DILocation(line: 522, column: 13, scope: !4894, inlinedAt: !4873)
!4898 = !DILocation(line: 0, scope: !4863, inlinedAt: !4899)
!4899 = distinct !DILocation(line: 527, column: 14, scope: !4875, inlinedAt: !4873)
!4900 = !DILocation(line: 479, column: 12, scope: !4863, inlinedAt: !4899)
!4901 = !DILocation(line: 0, scope: !4875, inlinedAt: !4873)
!4902 = !DILocation(line: 528, column: 9, scope: !923, inlinedAt: !4873)
!4903 = !DILocation(line: 530, column: 19, scope: !922, inlinedAt: !4873)
!4904 = !DILocation(line: 0, scope: !922, inlinedAt: !4873)
!4905 = !DILocation(line: 531, column: 17, scope: !926, inlinedAt: !4873)
!4906 = !DILocation(line: 531, column: 21, scope: !926, inlinedAt: !4873)
!4907 = !DILocation(line: 531, column: 54, scope: !926, inlinedAt: !4873)
!4908 = !DILocation(line: 531, column: 24, scope: !926, inlinedAt: !4873)
!4909 = !DILocation(line: 531, column: 68, scope: !926, inlinedAt: !4873)
!4910 = !DILocation(line: 531, column: 11, scope: !922, inlinedAt: !4873)
!4911 = !DILocation(line: 533, column: 29, scope: !925, inlinedAt: !4873)
!4912 = !DILocation(line: 0, scope: !925, inlinedAt: !4873)
!4913 = !DILocation(line: 534, column: 11, scope: !925, inlinedAt: !4873)
!4914 = !DILocation(line: 535, column: 17, scope: !925, inlinedAt: !4873)
!4915 = !DILocation(line: 537, column: 9, scope: !925, inlinedAt: !4873)
!4916 = !DILocation(line: 329, column: 22, scope: !4851)
!4917 = !DILocation(line: 330, column: 13, scope: !4851)
!4918 = !DILocation(line: 418, column: 23, scope: !4850)
!4919 = !DILocation(line: 0, scope: !4850)
!4920 = !DILocation(line: 419, column: 24, scope: !4850)
!4921 = !DILocation(line: 421, column: 13, scope: !4851)
!4922 = !DILocation(line: 426, column: 25, scope: !4854)
!4923 = !DILocation(line: 0, scope: !4854)
!4924 = !DILocation(line: 427, column: 24, scope: !4854)
!4925 = !DILocation(line: 429, column: 13, scope: !4851)
!4926 = !DILocation(line: 0, scope: !4846)
!4927 = !DILocation(line: 438, column: 3, scope: !4828)
!4928 = !DILocation(line: 441, column: 1, scope: !4828)
!4929 = !DILocation(line: 440, column: 3, scope: !4828)
!4930 = distinct !DISubprogram(name: "hard_locale", scope: !929, file: !929, line: 28, type: !4931, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1012, retainedNodes: !4933)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{!215, !57}
!4933 = !{!4934, !4935}
!4934 = !DILocalVariable(name: "category", arg: 1, scope: !4930, file: !929, line: 28, type: !57)
!4935 = !DILocalVariable(name: "locale", scope: !4930, file: !929, line: 30, type: !4936)
!4936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4937)
!4937 = !{!4938}
!4938 = !DISubrange(count: 257)
!4939 = !DILocation(line: 0, scope: !4930)
!4940 = !DILocation(line: 30, column: 3, scope: !4930)
!4941 = !DILocation(line: 30, column: 8, scope: !4930)
!4942 = !DILocation(line: 32, column: 7, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4930, file: !929, line: 32, column: 7)
!4944 = !DILocation(line: 32, column: 7, scope: !4930)
!4945 = !DILocalVariable(name: "__s1", arg: 1, scope: !4946, file: !1120, line: 1359, type: !101)
!4946 = distinct !DISubprogram(name: "streq", scope: !1120, file: !1120, line: 1359, type: !1121, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1012, retainedNodes: !4947)
!4947 = !{!4945, !4948}
!4948 = !DILocalVariable(name: "__s2", arg: 2, scope: !4946, file: !1120, line: 1359, type: !101)
!4949 = !DILocation(line: 0, scope: !4946, inlinedAt: !4950)
!4950 = distinct !DILocation(line: 35, column: 9, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4930, file: !929, line: 35, column: 7)
!4952 = !DILocation(line: 1361, column: 11, scope: !4946, inlinedAt: !4950)
!4953 = !DILocation(line: 1361, column: 10, scope: !4946, inlinedAt: !4950)
!4954 = !DILocation(line: 35, column: 29, scope: !4951)
!4955 = !DILocation(line: 0, scope: !4946, inlinedAt: !4956)
!4956 = distinct !DILocation(line: 35, column: 32, scope: !4951)
!4957 = !DILocation(line: 1361, column: 11, scope: !4946, inlinedAt: !4956)
!4958 = !DILocation(line: 1361, column: 10, scope: !4946, inlinedAt: !4956)
!4959 = !DILocation(line: 35, column: 7, scope: !4930)
!4960 = !DILocation(line: 46, column: 3, scope: !4930)
!4961 = !DILocation(line: 47, column: 1, scope: !4930)
!4962 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1015, file: !1015, line: 154, type: !4963, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1014, retainedNodes: !4965)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!57, !57, !59, !104}
!4965 = !{!4966, !4967, !4968}
!4966 = !DILocalVariable(name: "category", arg: 1, scope: !4962, file: !1015, line: 154, type: !57)
!4967 = !DILocalVariable(name: "buf", arg: 2, scope: !4962, file: !1015, line: 154, type: !59)
!4968 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4962, file: !1015, line: 154, type: !104)
!4969 = !DILocation(line: 0, scope: !4962)
!4970 = !DILocation(line: 159, column: 10, scope: !4962)
!4971 = !DILocation(line: 159, column: 3, scope: !4962)
!4972 = distinct !DISubprogram(name: "setlocale_null", scope: !1015, file: !1015, line: 186, type: !4973, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1014, retainedNodes: !4975)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!101, !57}
!4975 = !{!4976}
!4976 = !DILocalVariable(name: "category", arg: 1, scope: !4972, file: !1015, line: 186, type: !57)
!4977 = !DILocation(line: 0, scope: !4972)
!4978 = !DILocation(line: 189, column: 10, scope: !4972)
!4979 = !DILocation(line: 189, column: 3, scope: !4972)
!4980 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1017, file: !1017, line: 35, type: !4973, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1016, retainedNodes: !4981)
!4981 = !{!4982, !4983}
!4982 = !DILocalVariable(name: "category", arg: 1, scope: !4980, file: !1017, line: 35, type: !57)
!4983 = !DILocalVariable(name: "result", scope: !4980, file: !1017, line: 37, type: !101)
!4984 = !DILocation(line: 0, scope: !4980)
!4985 = !DILocation(line: 37, column: 24, scope: !4980)
!4986 = !DILocation(line: 62, column: 3, scope: !4980)
!4987 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1017, file: !1017, line: 66, type: !4963, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1016, retainedNodes: !4988)
!4988 = !{!4989, !4990, !4991, !4992, !4993}
!4989 = !DILocalVariable(name: "category", arg: 1, scope: !4987, file: !1017, line: 66, type: !57)
!4990 = !DILocalVariable(name: "buf", arg: 2, scope: !4987, file: !1017, line: 66, type: !59)
!4991 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4987, file: !1017, line: 66, type: !104)
!4992 = !DILocalVariable(name: "result", scope: !4987, file: !1017, line: 111, type: !101)
!4993 = !DILocalVariable(name: "length", scope: !4994, file: !1017, line: 125, type: !104)
!4994 = distinct !DILexicalBlock(scope: !4995, file: !1017, line: 124, column: 5)
!4995 = distinct !DILexicalBlock(scope: !4987, file: !1017, line: 113, column: 7)
!4996 = !DILocation(line: 0, scope: !4987)
!4997 = !DILocation(line: 0, scope: !4980, inlinedAt: !4998)
!4998 = distinct !DILocation(line: 111, column: 24, scope: !4987)
!4999 = !DILocation(line: 37, column: 24, scope: !4980, inlinedAt: !4998)
!5000 = !DILocation(line: 113, column: 14, scope: !4995)
!5001 = !DILocation(line: 113, column: 7, scope: !4987)
!5002 = !DILocation(line: 116, column: 19, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !5004, file: !1017, line: 116, column: 11)
!5004 = distinct !DILexicalBlock(scope: !4995, file: !1017, line: 114, column: 5)
!5005 = !DILocation(line: 116, column: 11, scope: !5004)
!5006 = !DILocation(line: 120, column: 16, scope: !5003)
!5007 = !DILocation(line: 120, column: 9, scope: !5003)
!5008 = !DILocation(line: 125, column: 23, scope: !4994)
!5009 = !DILocation(line: 0, scope: !4994)
!5010 = !DILocation(line: 126, column: 18, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !4994, file: !1017, line: 126, column: 11)
!5012 = !DILocation(line: 126, column: 11, scope: !4994)
!5013 = !DILocation(line: 128, column: 39, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5011, file: !1017, line: 127, column: 9)
!5015 = !DILocalVariable(name: "__dest", arg: 1, scope: !5016, file: !1333, line: 26, type: !1336)
!5016 = distinct !DISubprogram(name: "memcpy", scope: !1333, file: !1333, line: 26, type: !1334, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1016, retainedNodes: !5017)
!5017 = !{!5015, !5018, !5019}
!5018 = !DILocalVariable(name: "__src", arg: 2, scope: !5016, file: !1333, line: 26, type: !1251)
!5019 = !DILocalVariable(name: "__len", arg: 3, scope: !5016, file: !1333, line: 26, type: !104)
!5020 = !DILocation(line: 0, scope: !5016, inlinedAt: !5021)
!5021 = distinct !DILocation(line: 128, column: 11, scope: !5014)
!5022 = !DILocation(line: 29, column: 10, scope: !5016, inlinedAt: !5021)
!5023 = !DILocation(line: 129, column: 11, scope: !5014)
!5024 = !DILocation(line: 133, column: 23, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5026, file: !1017, line: 133, column: 15)
!5026 = distinct !DILexicalBlock(scope: !5011, file: !1017, line: 132, column: 9)
!5027 = !DILocation(line: 133, column: 15, scope: !5026)
!5028 = !DILocation(line: 138, column: 44, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5025, file: !1017, line: 134, column: 13)
!5030 = !DILocation(line: 0, scope: !5016, inlinedAt: !5031)
!5031 = distinct !DILocation(line: 138, column: 15, scope: !5029)
!5032 = !DILocation(line: 29, column: 10, scope: !5016, inlinedAt: !5031)
!5033 = !DILocation(line: 139, column: 15, scope: !5029)
!5034 = !DILocation(line: 139, column: 32, scope: !5029)
!5035 = !DILocation(line: 140, column: 13, scope: !5029)
!5036 = !DILocation(line: 0, scope: !4995)
!5037 = !DILocation(line: 145, column: 1, scope: !4987)
